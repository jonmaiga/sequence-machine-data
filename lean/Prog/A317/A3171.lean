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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A317100: Number of series-reduced planted achiral trees with n leaves spanning an initial interval of positive integers.

The programs for A317100, there is no canonical definition to state claims against.
-/

/-! ## A317100.P11801255762060529760

`∑{d}[n+1, A000740(#)*A067824((n+1)/#)]`
-/

namespace A317100.P11801255762060529760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A067824 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317100.P11801255762060529760

/-! ## A317100.P1938851279658731974

`∑{d}[n+1, A034729(#)*A174725((n+1)/#)]`
-/

namespace A317100.P1938851279658731974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034729 d * A174725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317100.P1938851279658731974

/-! ## A317100.P6580214105559275460

`∑{d}[n+1, A034738(#)*A323912((n+1)/#)]`
-/

namespace A317100.P6580214105559275460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034738 d * A323912 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317100.P6580214105559275460

/-! ## A317100.P7742549345598777106

`∑{d}[n+1, A011946(#)*A378223((n+1)/#)]`
-/

namespace A317100.P7742549345598777106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011946 d * A378223 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317100.P7742549345598777106

/-! ## A317100.P6290092298685188546

`∑{d}[n+1, A034737(#)*A378432((n+1)/#)]`
-/

namespace A317100.P6290092298685188546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034737 d * A378432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317100.P6290092298685188546

/-! ## A317100.P6403083489785531764

`∑{d}[n+1, A253249(#)*A296302((n+1)/#)]`
-/

namespace A317100.P6403083489785531764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A253249 d * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317100.P6403083489785531764

/-! ## A317100.P9771963870930816217

`∑{d}[n+1, A330575(#)*A349570((n+1)/#)]`
-/

namespace A317100.P9771963870930816217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A330575 d * A349570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317100.P9771963870930816217

/-! ## A317100.P1325868830141893598

`∑{d}[n+1, A127804(#-1)*A345182((n+1)/#)]`
-/

namespace A317100.P1325868830141893598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A127804 (d - 1) * A345182 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317100.P1325868830141893598

/-! ## A317100.P1592040238347637536

`∑{d}[n+1, A000079(#-1)*A002033((n+1)/#-1)]`
-/

namespace A317100.P1592040238347637536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (d - 1) * A002033 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A317100.P1592040238347637536

/-!
# A317101: Numbers whose prime multiplicities are pairwise indivisible.

The programs for A317101, there is no canonical definition to state claims against.
-/

/-! ## A317101.P8979980019801010186

`comp[A317616(n+1)-1]+1`
-/

namespace A317101.P8979980019801010186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317616 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A317101.P8979980019801010186

/-! ## A317101.P16117933979629906338

`sqrt(∩[A317102(n+1), n²])`
-/

namespace A317101.P16117933979629906338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317102 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A317101.P16117933979629906338

/-! ## A317101.P10910096477743645757

`sqrt(∩[A000290(n), A317102(n+1)])`
-/

namespace A317101.P10910096477743645757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317102 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A317101.P10910096477743645757

/-! ## A317101.P13168849304464199626

`A054977(A393918(n+1))*A393924(n+1)`
-/

namespace A317101.P13168849304464199626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A393918 (n + 1)).toNat * A393924 (n + 1)

end

end A317101.P13168849304464199626

/-! ## A317101.P16343484129818027884

`A393924(n+1)%A002476(A213587(n+1))`
-/

namespace A317101.P16343484129818027884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A393924 (n + 1)) (A002476 (A213587 (n + 1)).toNat)

end

end A317101.P16343484129818027884

/-! ## A317101.P13839833239424817045

`A009194(A369249(2*n+3))*A393924(n+1)`
-/

namespace A317101.P13839833239424817045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A369249 (2 * n + 3)).toNat * A393924 (n + 1)

end

end A317101.P13839833239424817045

/-! ## A317101.P15385141169225197169

`A393924(n+1)+A337802(A120327(n+1))`
-/

namespace A317101.P15385141169225197169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393924 (n + 1) + A337802 (A120327 (n + 1)).toNat

end

end A317101.P15385141169225197169

/-! ## A317101.P17670971966047447394

`A393924(n+1)%A104922(A007318(n))`
-/

namespace A317101.P17670971966047447394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A393924 (n + 1)) (A104922 (A007318 n).toNat)

end

end A317101.P17670971966047447394

/-! ## A317101.P4037962468811161101

`A393924(n+1)+A010815(A087762(2*n+3))`
-/

namespace A317101.P4037962468811161101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393924 (n + 1) + A010815 (A087762 (2 * n + 3)).toNat

end

end A317101.P4037962468811161101

/-! ## A317101.P16884780345763887226

`A393924(n+1)+A034188(A389207(3*(n+1)))`
-/

namespace A317101.P16884780345763887226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393924 (n + 1) + A034188 (A389207 (3 * (n + 1))).toNat

end

end A317101.P16884780345763887226

/-!
# A317102: Powerful numbers whose distinct prime multiplicities are pairwise indivisible.

The programs for A317102, there is no canonical definition to state claims against.
-/

/-! ## A317102.P6918832675081754059

`∩[A001694(n+1), A317101(n+1)]`
-/

namespace A317102.P6918832675081754059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317102.P6918832675081754059

/-! ## A317102.P9456939601434216655

`∩[A162966(n+1), A317101(n+1)]`
-/

namespace A317102.P9456939601434216655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317102.P9456939601434216655

/-! ## A317102.P6752816622970377864

`∩[A317101(n+1), A325661(n+1)]`
-/

namespace A317102.P6752816622970377864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317102.P6752816622970377864

/-! ## A317102.P5880610015173378306

`∩[A317101(n+1), A339497(n+1)]`
-/

namespace A317102.P5880610015173378306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317102.P5880610015173378306

/-! ## A317102.P17458821703943171789

`∩[A317101(n+1), A341645(n+1)]`
-/

namespace A317102.P17458821703943171789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317102.P17458821703943171789

/-! ## A317102.P5556130840583499539

`∩[A317101(n+1), A361204(n+1)]`
-/

namespace A317102.P5556130840583499539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317102.P5556130840583499539

/-! ## A317102.P11740740380394891955

`∩[A317101(n+1), A388985(n+1)]`
-/

namespace A317102.P11740740380394891955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317102.P11740740380394891955

/-!
# A317103: Expansion of e.g.f. -LambertW(-x) * Product_{k>=1} 1/(1-x^k).

The programs for A317103, there is no canonical definition to state claims against.
-/

/-! ## A317103.P17664132470966648721

`n*A005599(A131407(n))`
-/

namespace A317103.P17664132470966648721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005599 (A131407 n).toNat

end

end A317103.P17664132470966648721

/-! ## A317103.P2986053817855728686

`n*A194990(A012249(n+1))`
-/

namespace A317103.P2986053817855728686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A194990 (A012249 (n + 1)).toNat

end

end A317103.P2986053817855728686

/-!
# A317104: Expansion of e.g.f. -LambertW(-x) * Product_{k>=1} (1+x^k).

The programs for A317104, there is no canonical definition to state claims against.
-/

/-! ## A317104.P10455540071044793518

`n*A137285(A148316(n))`
-/

namespace A317104.P10455540071044793518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A137285 (A148316 n).toNat

end

end A317104.P10455540071044793518

/-! ## A317104.P14028369254318497730

`A172274(A133041(n)+A005568(n))`
-/

namespace A317104.P14028369254318497730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172274 (A133041 n + A005568 n).toNat

end

end A317104.P14028369254318497730

/-!
# A317105: Squares visited by a (1,3)-leaper on a spirally numbered board and moving to the lowest available unvisited square at each step, squares labelled >=0.

The programs for A317105, there is no canonical definition to state claims against.
-/

/-! ## A317105.P3475234066007188846

`A317106(n+1)-1`
-/

namespace A317105.P3475234066007188846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317106 (n + 1) - 1

end

end A317105.P3475234066007188846

/-! ## A317105.P3966489939530067885

`2*A397183(n)`
-/

namespace A317105.P3966489939530067885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A397183 n

end

end A317105.P3966489939530067885

/-! ## A317105.P15808533426762168418

`2*(A329022(n+1)-1)`
-/

namespace A317105.P15808533426762168418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A329022 (n + 1) - 1)

end

end A317105.P15808533426762168418

/-! ## A317105.P12773065861301575630

`A005843(A397183(n))`
-/

namespace A317105.P12773065861301575630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A397183 n).toNat

end

end A317105.P12773065861301575630

/-! ## A317105.P6583084855318529010

`A004442(A317106(n+1))`
-/

namespace A317105.P6583084855318529010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A317106 (n + 1)).toNat

end

end A317105.P6583084855318529010

/-! ## A317105.P5682600115596637785

`A004273(A329022(n+1))-1`
-/

namespace A317105.P5682600115596637785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A329022 (n + 1)).toNat - 1

end

end A317105.P5682600115596637785

/-! ## A317105.P14065923310284964794

`xor(char[A317415(n)], A317106(n+1))`
-/

namespace A317105.P14065923310284964794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317415 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A317106 (n + 1))

end

end A317105.P14065923310284964794

/-! ## A317105.P3773645361635763470

`A046092(A397183(n))/A329022(n+1)`
-/

namespace A317105.P3773645361635763470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046092 (A397183 n).toNat : ℚ) / (A329022 (n + 1) : ℚ)

end

end A317105.P3773645361635763470

/-!
# A317106: Squares visited by a (1,3)-leaper on a spirally numbered board and moving to the lowest available unvisited square at each step, squares labelled >=1.

The programs for A317106, there is no canonical definition to state claims against.
-/

/-! ## A317106.P14501907370930204782

`A317105(n)+1`
-/

namespace A317106.P14501907370930204782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317105 n + 1

end

end A317106.P14501907370930204782

/-! ## A317106.P18120068756465279584

`2*A397183(n)+1`
-/

namespace A317106.P18120068756465279584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A397183 n + 1

end

end A317106.P18120068756465279584

/-! ## A317106.P6705323922848564203

`2*A329022(n+1)-1`
-/

namespace A317106.P6705323922848564203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329022 (n + 1) - 1

end

end A317106.P6705323922848564203

/-! ## A317106.P17518222583671787424

`A004442(A317105(n))`
-/

namespace A317106.P17518222583671787424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A317105 n).toNat

end

end A317106.P17518222583671787424

/-! ## A317106.P14441692554659807833

`A004273(A329022(n+1))`
-/

namespace A317106.P14441692554659807833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A329022 (n + 1)).toNat

end

end A317106.P14441692554659807833

/-! ## A317106.P14960107538046317292

`A005408(A317105(n)/2)`
-/

namespace A317106.P14960107538046317292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway ((A317105 n : ℚ) / 2)).toNat

end

end A317106.P14960107538046317292

/-! ## A317106.P17067856498897092728

`or(char[A317415(n)], A317105(n))`
-/

namespace A317106.P17067856498897092728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317415 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A317105 n)

end

end A317106.P17067856498897092728

/-! ## A317106.P1704370962549703611

`A397183(n)+A329022(n+1)`
-/

namespace A317106.P1704370962549703611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397183 n + A329022 (n + 1)

end

end A317106.P1704370962549703611

/-! ## A317106.P9458011138309035611

`A008619(2*A317105(n))`
-/

namespace A317106.P9458011138309035611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A317105 n).toNat

end

end A317106.P9458011138309035611

/-!
# A317109: a(n) is the total number of edges after n-th stage in the diagram of the symmetries of sigma described in A236104, with a(0) = 0.

The programs for A317109, there is no canonical definition to state claims against.
-/

/-! ## A317109.P438957887283693003

`2*(A294723(n)-A294848(n))`
-/

namespace A317109.P438957887283693003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A294723 n - A294848 n)

end

end A317109.P438957887283693003

/-! ## A317109.P18230979716669833297

`2*A294723(n)-A294847(n)`
-/

namespace A317109.P18230979716669833297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294723 n - A294847 n

end

end A317109.P18230979716669833297

/-! ## A317109.P6109185926417235565

`A005843(A294723(n)-A294848(n))`
-/

namespace A317109.P6109185926417235565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A294723 n - A294848 n).toNat

end

end A317109.P6109185926417235565

/-! ## A317109.P7141856678333868439

`A005843(A294723(n))-A294847(n)`
-/

namespace A317109.P7141856678333868439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A294723 n).toNat - A294847 n

end

end A317109.P7141856678333868439

/-! ## A317109.P17741939626740895252

`A005843(A294723(n)-(A294849(n)+1))`
-/

namespace A317109.P17741939626740895252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A294723 n - (A294849 n + 1)).toNat

end

end A317109.P17741939626740895252

/-!
# A317110: Numbers k such that the smallest digit of k is equal to the additive digital root of k (in base 10).

The programs for A317110, there is no canonical definition to state claims against.
-/

/-! ## A317110.P4003133746054584768

`eq[dr(n), A054054(n)]`
-/

namespace A317110.P4003133746054584768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317110.P4003133746054584768

/-! ## A317110.P11852405269424553380

`eq[A010888(n), A054054(n)]`
-/

namespace A317110.P11852405269424553380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317110.P11852405269424553380

/-! ## A317110.P5289377229515926155

`eq[A054054(n), A076314(A076314(n))]`
-/

namespace A317110.P5289377229515926155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (A076314 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317110.P5289377229515926155

/-! ## A317110.P12375668602663427502

`eq[A000055(A085021(n+1)), A098378(n+1)]`
-/

namespace A317110.P12375668602663427502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (A085021 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317110.P12375668602663427502

/-!
# A317111: Number of permutations of [n] in which the length of every increasing run is 0 or 1 (mod 4).

The programs for A317111, there is no canonical definition to state claims against.
-/

/-! ## A317111.P2676793300870834860

`A179418(A290893(n))`
-/

namespace A317111.P2676793300870834860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179418 (A290893 n).toNat

end

end A317111.P2676793300870834860

/-! ## A317111.P15741553837901443247

`A187564(A351707(n+1))`
-/

namespace A317111.P15741553837901443247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187564 (A351707 (n + 1)).toNat

end

end A317111.P15741553837901443247

/-! ## A317111.P10276247704619640049

`A179418(C(A061910(n+1), 9))`
-/

namespace A317111.P10276247704619640049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179418 (Nat.choose (A061910 (n + 1)).toNat 9)

end

end A317111.P10276247704619640049

/-! ## A317111.P9505811780959180076

`A322354(2*n+3)*A322354(A001710(n))`
-/

namespace A317111.P9505811780959180076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322354 (2 * n + 3) * A322354 (A001710 n).toNat

end

end A317111.P9505811780959180076

/-!
# A317112: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317112, there is no canonical definition to state claims against.
-/

/-! ## A317112.P6353962709543943418

`A317118(∑[4*n]+1)`
-/

namespace A317112.P6353962709543943418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317112.P6353962709543943418

/-! ## A317112.P12416162320469021745

`record[A003982(n)*A317118(n+1)]`
-/

namespace A317112.P12416162320469021745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A317118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317112.P12416162320469021745

/-! ## A317112.P11423572374290536160

`A317118(A001844(n))+A011731(n)`
-/

namespace A317112.P11423572374290536160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (A001844 n).toNat + A011731 n

end

end A317112.P11423572374290536160

/-! ## A317112.P17669812928763852587

`A317118(A001844(n))+A025462(n)`
-/

namespace A317112.P17669812928763852587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (A001844 n).toNat + A025462 n

end

end A317112.P17669812928763852587

/-! ## A317112.P13509684889803518338

`A317118(A001844(n))+A025465(n)`
-/

namespace A317112.P13509684889803518338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (A001844 n).toNat + A025465 n

end

end A317112.P13509684889803518338

/-!
# A317113: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317113, there is no canonical definition to state claims against.
-/

/-! ## A317113.P15286422763043109036

`A317118(∑[n+2]+4)`
-/

namespace A317113.P15286422763043109036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317113.P15286422763043109036

/-! ## A317113.P12254727221442540580

`record[A317118(A008795(n)+3)]`
-/

namespace A317113.P12254727221442540580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317113.P12254727221442540580

/-! ## A317113.P5278346108679746443

`A317118(A167614(n+1))+A011731(n)`
-/

namespace A317113.P5278346108679746443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (A167614 (n + 1)).toNat + A011731 n

end

end A317113.P5278346108679746443

/-! ## A317113.P2605585001966884045

`A317118(A167614(n+1))%A016797(n)`
-/

namespace A317113.P2605585001966884045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317118 (A167614 (n + 1)).toNat) (A016797 n)

end

end A317113.P2605585001966884045

/-! ## A317113.P408778317268880415

`lcm(A033999(n), A317118(A167614(n+1)))`
-/

namespace A317113.P408778317268880415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A317118 (A167614 (n + 1)).toNat)

end

end A317113.P408778317268880415

/-!
# A317114: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317114, there is no canonical definition to state claims against.
-/

/-! ## A317114.P4328483886779160113

`A317118(∑[n+3]+7)`
-/

namespace A317114.P4328483886779160113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A317114.P4328483886779160113

/-! ## A317114.P16386649412427413818

`record[A317118(A141214(val(n+1, 2)+1))]`
-/

namespace A317114.P16386649412427413818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (A141214 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317114.P16386649412427413818

/-! ## A317114.P4789799484541978915

`A317118(A141214(n+1))+A011731(n)`
-/

namespace A317114.P4789799484541978915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (A141214 (n + 1)).toNat + A011731 n

end

end A317114.P4789799484541978915

/-! ## A317114.P5130752191286326931

`A317118(A055998(n+2))+A011731(n)`
-/

namespace A317114.P5130752191286326931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (A055998 (n + 2)).toNat + A011731 n

end

end A317114.P5130752191286326931

/-! ## A317114.P6906830694153932858

`or(A025465(n), A317118(A141214(n+1)))`
-/

namespace A317114.P6906830694153932858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025465 n) (A317118 (A141214 (n + 1)).toNat)

end

end A317114.P6906830694153932858

/-!
# A317115: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317115, there is no canonical definition to state claims against.
-/

/-! ## A317115.P7209096238787357285

`A317118(A374005(n+1))`
-/

namespace A317115.P7209096238787357285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (A374005 (n + 1)).toNat

end

end A317115.P7209096238787357285

/-! ## A317115.P14612665041242758728

`A317118(A155212(n)+13)`
-/

namespace A317115.P14612665041242758728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (A155212 n + 13).toNat

end

end A317115.P14612665041242758728

/-! ## A317115.P6139614045980811733

`A317118(eq[7, A066657(n)])`
-/

namespace A317115.P6139614045980811733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317115.P6139614045980811733

/-! ## A317115.P13052154660996336093

`A317118(A051936(n+4)+14)`
-/

namespace A317115.P13052154660996336093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (A051936 (n + 4) + 14).toNat

end

end A317115.P13052154660996336093

/-! ## A317115.P349343244350842005

`A317118(eq[6, A131818(n+1)])`
-/

namespace A317115.P349343244350842005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317115.P349343244350842005

/-!
# A317116: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317116, there is no canonical definition to state claims against.
-/

/-! ## A317116.P3993685522006876505

`A317118(A374007(n+1))`
-/

namespace A317116.P3993685522006876505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (A374007 (n + 1)).toNat

end

end A317116.P3993685522006876505

/-! ## A317116.P17286014112541852125

`A317118(eq[7, A131818(n+1)])`
-/

namespace A317116.P17286014112541852125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317116.P17286014112541852125

/-! ## A317116.P4749643713409256698

`A317118(A052905(n+3))`
-/

namespace A317116.P4749643713409256698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (A052905 (n + 3)).toNat

end

end A317116.P4749643713409256698

/-! ## A317116.P1479062065065301728

`A317118(eq[3, A219347(n)])`
-/

namespace A317116.P1479062065065301728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317116.P1479062065065301728

/-! ## A317116.P4683198434327446685

`A317118(eq[5, A193592(n)])`
-/

namespace A317116.P4683198434327446685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317116.P4683198434327446685

/-!
# A317117: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317117, there is no canonical definition to state claims against.
-/

/-! ## A317117.P12915057799519363805

`A317118(A374008(n+1))`
-/

namespace A317117.P12915057799519363805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (A374008 (n + 1)).toNat

end

end A317117.P12915057799519363805

/-! ## A317117.P13893230442591025234

`A317118(eq[8, A131818(n+1)])`
-/

namespace A317117.P13893230442591025234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317117.P13893230442591025234

/-! ## A317117.P8070635404954709111

`A317118(A055999(n+4))`
-/

namespace A317117.P8070635404954709111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (A055999 (n + 4)).toNat

end

end A317117.P8070635404954709111

/-! ## A317117.P231744177501121311

`A317118(eq[4, A219347(n)])`
-/

namespace A317117.P231744177501121311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317117.P231744177501121311

/-! ## A317117.P3478136817936978663

`A317118(eq[6, A193592(n)])`
-/

namespace A317117.P3478136817936978663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317117.P3478136817936978663

/-!
# A317118: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 4, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317118, there is no canonical definition to state claims against.
-/

/-! ## A317118.P2314867611796303172

`A305769(n+1)+A060862(or(1, 2^n-1))`
-/

namespace A317118.P2314867611796303172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (n + 1) + A060862 (Int.lor 1 ((2 ^ n : ℤ) - 1)).toNat

end

end A317118.P2314867611796303172

/-! ## A317118.P606489571145820826

`A305769(n+1)+A011731(A022171(n))`
-/

namespace A317118.P606489571145820826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (n + 1) + A011731 (A022171 n).toNat

end

end A317118.P606489571145820826

/-! ## A317118.P603693458802108259

`A305769(n+1)+A025465(A023105(n))`
-/

namespace A317118.P603693458802108259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (n + 1) + A025465 (A023105 n).toNat

end

end A317118.P603693458802108259

/-! ## A317118.P6807458882224384122

`A305769(n+1)+A055641(A022112(n))`
-/

namespace A317118.P6807458882224384122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (n + 1) + A055641 (A022112 n).toNat

end

end A317118.P6807458882224384122

/-! ## A317118.P15404145033452629911

`A305769(n+1)+A016389(A086645(n))`
-/

namespace A317118.P15404145033452629911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305769 (n + 1) + A016389 (A086645 n).toNat

end

end A317118.P15404145033452629911

/-!
# A317119: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317119, there is no canonical definition to state claims against.
-/

/-! ## A317119.P8566971234403485957

`A317125(∑[4*n]+1)`
-/

namespace A317119.P8566971234403485957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317119.P8566971234403485957

/-! ## A317119.P10807698000873690716

`record[A317125(Δ[A235355(n)])]`
-/

namespace A317119.P10807698000873690716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317119.P10807698000873690716

/-! ## A317119.P4176867611364025332

`and(-1, A317125(A001844(n)))`
-/

namespace A317119.P4176867611364025332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A317125 (A001844 n).toNat)

end

end A317119.P4176867611364025332

/-! ## A317119.P18349636540473232980

`record[A317125(A330613(n+1))]`
-/

namespace A317119.P18349636540473232980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317119.P18349636540473232980

/-! ## A317119.P7943547340153934140

`record[A317125(Δ[A079824(n+1)])]`
-/

namespace A317119.P7943547340153934140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317119.P7943547340153934140

/-!
# A317120: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317120, there is no canonical definition to state claims against.
-/

/-! ## A317120.P5575356421719493971

`A317125(∑[n+2]+4)`
-/

namespace A317120.P5575356421719493971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317120.P5575356421719493971

/-! ## A317120.P13219037170323623260

`A317125(A167614(n+1))+A025439(n)`
-/

namespace A317120.P13219037170323623260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (A167614 (n + 1)).toNat + A025439 n

end

end A317120.P13219037170323623260

/-! ## A317120.P10131824407996768806

`A317125(A167614(n+1))+A178798(n)`
-/

namespace A317120.P10131824407996768806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (A167614 (n + 1)).toNat + A178798 n

end

end A317120.P10131824407996768806

/-! ## A317120.P5687613835294898203

`A317125(A167614(n+1))+A185238(n)`
-/

namespace A317120.P5687613835294898203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (A167614 (n + 1)).toNat + A185238 n

end

end A317120.P5687613835294898203

/-! ## A317120.P11020810020864539227

`A036225(n)*A317125(A167614(n+1))`
-/

namespace A317120.P11020810020864539227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A317125 (A167614 (n + 1)).toNat

end

end A317120.P11020810020864539227

/-!
# A317121: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317121, there is no canonical definition to state claims against.
-/

/-! ## A317121.P4996051652454765203

`A317125(A374004(n+1))`
-/

namespace A317121.P4996051652454765203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (A374004 (n + 1)).toNat

end

end A317121.P4996051652454765203

/-! ## A317121.P7543437397688934649

`A317125(A141214(n)+7)`
-/

namespace A317121.P7543437397688934649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (A141214 n + 7).toNat

end

end A317121.P7543437397688934649

/-! ## A317121.P14657423660203974424

`A317125(A052905(n)+9)`
-/

namespace A317121.P14657423660203974424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (A052905 n + 9).toNat

end

end A317121.P14657423660203974424

/-! ## A317121.P9249058091456375198

`A317125(A055999(n)+10)`
-/

namespace A317121.P9249058091456375198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (A055999 n + 10).toNat

end

end A317121.P9249058091456375198

/-! ## A317121.P3691465203183013428

`A317125(A167614(n+2)+1)`
-/

namespace A317121.P3691465203183013428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (A167614 (n + 2) + 1).toNat

end

end A317121.P3691465203183013428

/-!
# A317122: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317122, there is no canonical definition to state claims against.
-/

/-! ## A317122.P16196259919823629986

`A317125(A374005(n+1))`
-/

namespace A317122.P16196259919823629986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (A374005 (n + 1)).toNat

end

end A317122.P16196259919823629986

/-! ## A317122.P16151963770512248113

`A317125(A167499(n+3))`
-/

namespace A317122.P16151963770512248113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (A167499 (n + 3)).toNat

end

end A317122.P16151963770512248113

/-! ## A317122.P9732176364302298452

`A317125(A155212(n)+13)`
-/

namespace A317122.P9732176364302298452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (A155212 n + 13).toNat

end

end A317122.P9732176364302298452

/-! ## A317122.P10532430253575405400

`A317125(A056000(n)+15)`
-/

namespace A317122.P10532430253575405400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (A056000 n + 15).toNat

end

end A317122.P10532430253575405400

/-! ## A317122.P2816054670721907168

`A317125(Δ[A111396(n+1)]-A005408(n+1))`
-/

namespace A317122.P2816054670721907168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (f1 (n + 1) - f1 n - A005408 (n + 1)).toNat

end

end A317122.P2816054670721907168

/-!
# A317123: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317123, there is no canonical definition to state claims against.
-/

/-! ## A317123.P4589098263759807694

`A317125(A374007(n+1))`
-/

namespace A317123.P4589098263759807694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (A374007 (n + 1)).toNat

end

end A317123.P4589098263759807694

/-! ## A317123.P7757694157146232784

`A317125(A166136(n+4))`
-/

namespace A317123.P7757694157146232784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (A166136 (n + 4)).toNat

end

end A317123.P7757694157146232784

/-! ## A317123.P3192339762528432972

`A317125(A056115(n)+21)`
-/

namespace A317123.P3192339762528432972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (A056115 n + 21).toNat

end

end A317123.P3192339762528432972

/-! ## A317123.P2979289463321571107

`A317125(eq[7, A131818(n+1)])`
-/

namespace A317123.P2979289463321571107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317123.P2979289463321571107

/-! ## A317123.P5085672933092502841

`A317125(A052905(n+3))`
-/

namespace A317123.P5085672933092502841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (A052905 (n + 3)).toNat

end

end A317123.P5085672933092502841

/-!
# A317124: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317124, there is no canonical definition to state claims against.
-/

/-! ## A317124.P8982738236062011055

`A317125(A374008(n+1))`
-/

namespace A317124.P8982738236062011055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (A374008 (n + 1)).toNat

end

end A317124.P8982738236062011055

/-! ## A317124.P14418307169462734812

`A317125(A167487(n+5))`
-/

namespace A317124.P14418307169462734812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (A167487 (n + 5)).toNat

end

end A317124.P14418307169462734812

/-! ## A317124.P16705752229316802055

`A317125(A056119(n)+28)`
-/

namespace A317124.P16705752229316802055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (A056119 n + 28).toNat

end

end A317124.P16705752229316802055

/-! ## A317124.P13739225436001271611

`A317125(eq[11, A066657(n)])`
-/

namespace A317124.P13739225436001271611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317124.P13739225436001271611

/-! ## A317124.P7973019496849230909

`A317125(eq[8, A131818(n+1)])`
-/

namespace A317124.P7973019496849230909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317124.P7973019496849230909

/-!
# A317125: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317125, there is no canonical definition to state claims against.
-/

/-! ## A317125.P6410340079859229111

`A305776(n+1)+A010894(A003401(n+1))`
-/

namespace A317125.P6410340079859229111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (n + 1) + A010894 ((A003401 (n + 1)).toNat + 21)

end

end A317125.P6410340079859229111

/-! ## A317125.P15298947757801715710

`A305776(n+1)+A011731(A022171(n))`
-/

namespace A317125.P15298947757801715710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (n + 1) + A011731 (A022171 n).toNat

end

end A317125.P15298947757801715710

/-! ## A317125.P10019924216666412719

`A305776(n+1)+A025465(A022345(n))`
-/

namespace A317125.P10019924216666412719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (n + 1) + A025465 (A022345 n).toNat

end

end A317125.P10019924216666412719

/-! ## A317125.P12599182256098309936

`A305776(n+1)+A025465(A023105(n))`
-/

namespace A317125.P12599182256098309936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (n + 1) + A025465 (A023105 n).toNat

end

end A317125.P12599182256098309936

/-! ## A317125.P3408980312524244821

`A305776(n+1)+A055641(A002843(n))`
-/

namespace A317125.P3408980312524244821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (n + 1) + A055641 (A002843 n).toNat

end

end A317125.P3408980312524244821

/-!
# A317126: Numbers of the form: (6*m + 1) * (12*m + 1) * Product_{i=1..k-2} (9 * 2^i * m + 1), where k >= 3, with the condition that each of the factors is prime and that m is divisible by 2^(k-4).

The programs for A317126, there is no canonical definition to state claims against.
-/

/-! ## A317126.P7224264738485210503

`∪[A033502(n+1), A317136(n+1)]`
-/

namespace A317126.P7224264738485210503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317126.P7224264738485210503

/-!
# A317128: Number of permutations of [n] whose lengths of increasing runs are Fibonacci numbers.

The programs for A317128, there is no canonical definition to state claims against.
-/

/-! ## A317128.P3671822199039597336

`A225819(A056272(n))`
-/

namespace A317128.P3671822199039597336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225819 (A056272 n).toNat

end

end A317128.P3671822199039597336

/-! ## A317128.P13056119640982603428

`A266193(A213208(2^n)+1)`
-/

namespace A317128.P13056119640982603428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (A213208 (2 ^ n) + 1).toNat

end

end A317128.P13056119640982603428

/-! ## A317128.P10485004909101281080

`A330216(A056971(n))+A117158(n)`
-/

namespace A317128.P10485004909101281080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330216 (A056971 n).toNat + A117158 n

end

end A317128.P10485004909101281080

/-!
# A317129: Number of permutations of [n] whose lengths of increasing runs are squares.

The programs for A317129, there is no canonical definition to state claims against.
-/

/-! ## A317129.P262684534252331059

`A282318(A296675(n))+1`
-/

namespace A317129.P262684534252331059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282318 (A296675 n).toNat + 1

end

end A317129.P262684534252331059

/-! ## A317129.P11261149993273994624

`A177849(A149604(n)+A047659(n))`
-/

namespace A317129.P11261149993273994624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A149604 n + A047659 n).toNat

end

end A317129.P11261149993273994624

/-! ## A317129.P1798820393007884667

`A265527(A319779(n))+A063019(n)`
-/

namespace A317129.P1798820393007884667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265527 (A319779 n).toNat + A063019 n

end

end A317129.P1798820393007884667

/-! ## A317129.P3960646324048289956

`A002635(or(A038155(n), A148065(n)))`
-/

namespace A317129.P3960646324048289956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (Int.lor (A038155 n) (A148065 n)).toNat

end

end A317129.P3960646324048289956

/-!
# A317132: Number of permutations of [n] whose lengths of increasing runs are factorials.

The programs for A317132, there is no canonical definition to state claims against.
-/

/-! ## A317132.P7758888928051217427

`A122180(A109085(n))+A049774(n)`
-/

namespace A317132.P7758888928051217427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122180 (A109085 n).toNat + A049774 n

end

end A317132.P7758888928051217427

/-! ## A317132.P5715074582304721705

`A255407(A255376(n)+A049774(n))`
-/

namespace A317132.P5715074582304721705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A255376 n + A049774 n).toNat

end

end A317132.P5715074582304721705

/-! ## A317132.P14794304428129633804

`A235358(Δ[A079429(n)])+A049774(n)`
-/

namespace A317132.P14794304428129633804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235358 (f1 (n + 1) - f1 n).toNat + A049774 n

end

end A317132.P14794304428129633804

/-! ## A317132.P1879901184843574502

`A255407(A255376(n)+A177483(n+1)/(n+1))`
-/

namespace A317132.P1879901184843574502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (SequenceMachineLib.roundAway ((A255376 n : ℚ) + (A177483 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A317132.P1879901184843574502

/-!
# A317133: G.f.: Sum_{n>=0} binomial(4*(n+1), n)/(n+1) * x^n / (1+x)^(n+1).

The programs for A317133, there is no canonical definition to state claims against.
-/

/-! ## A317133.P1847722226214754870

`A371543(n)-a(n-1)` with `a(0)=1`
-/

namespace A317133.P1847722226214754870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A371543 n - a (n - 1)

end

end A317133.P1847722226214754870

/-! ## A317133.P11191434202532585547

`A346664(n+1)+A346664(n)`
-/

namespace A317133.P11191434202532585547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346664 (n + 1) + A346664 n

end

end A317133.P11191434202532585547

/-!
# A317134: G.f.: Sum_{n>=0} binomial(4*(n+1), n)/(n+1) * x^n / (1+x)^(2*(n+1)).

The programs for A317134, there is no canonical definition to state claims against.
-/

/-! ## A317134.P12424521240811468297

`A324701(A000110(n))+A001109(n)`
-/

namespace A317134.P12424521240811468297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324701 (A000110 n).toNat + A001109 n

end

end A317134.P12424521240811468297

/-! ## A317134.P14861044586331640358

`A324701(A056273(n))+A001109(n)`
-/

namespace A317134.P14861044586331640358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324701 (A056273 n).toNat + A001109 n

end

end A317134.P14861044586331640358

/-!
# A317135: G.f.: Sum_{n>=0} binomial(4*n+2, n)/(2*n+1) * x^(n+1)/(1+x)^(2*n+1).

The programs for A317135, there is no canonical definition to state claims against.
-/

/-! ## A317135.P16243252763672744440

`A038567(A364984(n))-1`
-/

namespace A317135.P16243252763672744440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A364984 n).toNat - 1

end

end A317135.P16243252763672744440

/-! ## A317135.P11157046155326613393

`A296020(A349531(n))-1`
-/

namespace A317135.P11157046155326613393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296020 (A349531 n).toNat - 1

end

end A317135.P11157046155326613393

/-!
# A317137: a(n) is the number of nonzero triangular numbers <= n-th prime.

The programs for A317137, the canonical program `A317137.P5699483153929860134` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317137 has offset 1).

The definition of A317137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317137.P5699483153929860134

`A123387(n+1)-1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A317137

/-- `A123387(n+1)-1` -/
def P5699483153929860134.Spec : Prop :=
  ∀ n, P5699483153929860134.a n = A317137 (n + 1)

theorem P5699483153929860134.correct : P5699483153929860134.Spec := by
  intro n
  simp only [A317137, Nat.add_sub_cancel]

end A317137

/-! ## A317137.P14907304128874378466

`A003056(A000040(n+1))`
-/

namespace A317137.P14907304128874378466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000040 (n + 1)).toNat

end

end A317137.P14907304128874378466

namespace A317137

/-- `A003056(A000040(n+1))` -/
def P14907304128874378466.Spec : Prop :=
  ∀ n, P14907304128874378466.a n = A317137 (n + 1)

end A317137

/-! ## A317137.P5422617511178449813

`round(sqrt(A072055(n+1)))-1`
-/

namespace A317137.P5422617511178449813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A072055 (n + 1) : ℝ)) - 1

end

end A317137.P5422617511178449813

namespace A317137

/-- `round(sqrt(A072055(n+1)))-1` -/
def P5422617511178449813.Spec : Prop :=
  ∀ n, P5422617511178449813.a n = A317137 (n + 1)

end A317137

/-! ## A317137.P15356443125503575702

`round(sqrt(A073582(n+1)))-1`
-/

namespace A317137.P15356443125503575702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A073582 (n + 1) : ℝ)) - 1

end

end A317137.P15356443125503575702

namespace A317137

/-- `round(sqrt(A073582(n+1)))-1` -/
def P15356443125503575702.Spec : Prop :=
  ∀ n, P15356443125503575702.a n = A317137 (n + 1)

end A317137

/-! ## A317137.P5312794157749106949

`round(sqrt(A089241(n+1)))-1`
-/

namespace A317137.P5312794157749106949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A089241 (n + 1) : ℝ)) - 1

end

end A317137.P5312794157749106949

namespace A317137

/-- `round(sqrt(A089241(n+1)))-1` -/
def P5312794157749106949.Spec : Prop :=
  ∀ n, P5312794157749106949.a n = A317137 (n + 1)

end A317137

/-! ## A317137.P18368023799133307695

`A057062(A348776(n+1))-1`
-/

namespace A317137.P18368023799133307695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057062 (A348776 (n + 1)).toNat - 1

end

end A317137.P18368023799133307695

namespace A317137

/-- `A057062(A348776(n+1))-1` -/
def P18368023799133307695.Spec : Prop :=
  ∀ n, P18368023799133307695.a n = A317137 (n + 1)

end A317137

/-! ## A317137.P4845623828697044436

`A057062(n+1)-A060576(n)`
-/

namespace A317137.P4845623828697044436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057062 (n + 1) - A060576 n

end

end A317137.P4845623828697044436

namespace A317137

/-- `A057062(n+1)-A060576(n)` -/
def P4845623828697044436.Spec : Prop :=
  ∀ n, P4845623828697044436.a n = A317137 (n + 1)

end A317137

/-! ## A317137.P7839082943556473580

`A057062(n+1)+A063524(n)-1`
-/

namespace A317137.P7839082943556473580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057062 (n + 1) + (A063524 n - 1)

end

end A317137.P7839082943556473580

namespace A317137

/-- `A057062(n+1)+A063524(n)-1` -/
def P7839082943556473580.Spec : Prop :=
  ∀ n, P7839082943556473580.a n = A317137 (n + 1)

end A317137

/-! ## A317137.P16388049348213801469

`round(sqrt(A161344(n+2)))-1`
-/

namespace A317137.P16388049348213801469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A161344 (n + 2) : ℝ)) - 1

end

end A317137.P16388049348213801469

namespace A317137

/-- `round(sqrt(A161344(n+2)))-1` -/
def P16388049348213801469.Spec : Prop :=
  ∀ n, P16388049348213801469.a n = A317137 (n + 1)

end A317137

/-! ## A317137.P7658328273238315178

`A002024(C(A123387(n+1), 2))`
-/

namespace A317137.P7658328273238315178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Nat.choose (A123387 (n + 1)).toNat 2)

end

end A317137.P7658328273238315178

namespace A317137

/-- `A002024(C(A123387(n+1), 2))` -/
def P7658328273238315178.Spec : Prop :=
  ∀ n, P7658328273238315178.a n = A317137 (n + 1)

end A317137

/-! ## A317137.P10758512005740270714

`A003056(Δ[A007504(n)])`
-/

namespace A317137.P10758512005740270714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (f1 (n + 1) - f1 n).toNat

end

end A317137.P10758512005740270714

namespace A317137

/-- `A003056(Δ[A007504(n)])` -/
def P10758512005740270714.Spec : Prop :=
  ∀ n, P10758512005740270714.a n = A317137 (n + 1)

end A317137

/-! ## A317137.P8170015771581205794

`A003056(A006005(n+1))`
-/

namespace A317137.P8170015771581205794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A006005 (n + 1)).toNat

end

end A317137.P8170015771581205794

namespace A317137

/-- `A003056(A006005(n+1))` -/
def P8170015771581205794.Spec : Prop :=
  ∀ n, P8170015771581205794.a n = A317137 (n + 1)

end A317137

/-! ## A317137.P9029619457446705276

`A003056(A076342(n+1))`
-/

namespace A317137.P9029619457446705276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A076342 (n + 1)).toNat

end

end A317137.P9029619457446705276

namespace A317137

/-- `A003056(A076342(n+1))` -/
def P9029619457446705276.Spec : Prop :=
  ∀ n, P9029619457446705276.a n = A317137 (n + 1)

end A317137

/-! ## A317137.P9365264504921903903

`A003056(A163976(n+1))`
-/

namespace A317137.P9365264504921903903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A163976 (n + 1)).toNat

end

end A317137.P9365264504921903903

namespace A317137

/-- `A003056(A163976(n+1))` -/
def P9365264504921903903.Spec : Prop :=
  ∀ n, P9365264504921903903.a n = A317137 (n + 1)

end A317137

/-! ## A317137.P8887892888027001670

`A003056(A172022(n+1))`
-/

namespace A317137.P8887892888027001670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A172022 (n + 1)).toNat

end

end A317137.P8887892888027001670

namespace A317137

/-- `A003056(A172022(n+1))` -/
def P8887892888027001670.Spec : Prop :=
  ∀ n, P8887892888027001670.a n = A317137 (n + 1)

end A317137

/-! ## A317137.P6941730772238461253

`A003056(A008578(n+2))`
-/

namespace A317137.P6941730772238461253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A008578 (n + 2)).toNat

end

end A317137.P6941730772238461253

namespace A317137

/-- `A003056(A008578(n+2))` -/
def P6941730772238461253.Spec : Prop :=
  ∀ n, P6941730772238461253.a n = A317137 (n + 1)

end A317137

/-! ## A317137.P8669993042412219041

`A003056(eq[1, A018783(n)])`
-/

namespace A317137.P8669993042412219041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317137.P8669993042412219041

namespace A317137

/-- `A003056(eq[1, A018783(n)])` -/
def P8669993042412219041.Spec : Prop :=
  ∀ n, P8669993042412219041.a n = A317137 (n + 1)

end A317137

/-! ## A317137.P1195220346758895386

`A003056(eq[1, A032741(n)])`
-/

namespace A317137.P1195220346758895386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317137.P1195220346758895386

namespace A317137

/-- `A003056(eq[1, A032741(n)])` -/
def P1195220346758895386.Spec : Prop :=
  ∀ n, P1195220346758895386.a n = A317137 (n + 1)

end A317137

/-! ## A317137.P13667734021885878773

`A003056(eq[1, A302055(n)])`
-/

namespace A317137.P13667734021885878773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317137.P13667734021885878773

namespace A317137

/-- `A003056(eq[1, A302055(n)])` -/
def P13667734021885878773.Spec : Prop :=
  ∀ n, P13667734021885878773.a n = A317137 (n + 1)

end A317137

/-! ## A317137.P9390796221002264790

`A259361(A072055(n+1))`
-/

namespace A317137.P9390796221002264790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A072055 (n + 1)).toNat

end

end A317137.P9390796221002264790

namespace A317137

/-- `A259361(A072055(n+1))` -/
def P9390796221002264790.Spec : Prop :=
  ∀ n, P9390796221002264790.a n = A317137 (n + 1)

end A317137

/-!
# A317138: Numbers k such that (2k)^3 - 1 is a semiprime.

The programs for A317138, there is no canonical definition to state claims against.
-/

/-! ## A317138.P8260465088982321439

`A096175(n+1)/2`
-/

namespace A317138.P8260465088982321439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096175 (n + 1) : ℚ) / 2

end

end A317138.P8260465088982321439

/-! ## A317138.P7042066429333088339

`A273943(A096175(n+1))`
-/

namespace A317138.P7042066429333088339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A096175 (n + 1)).toNat

end

end A317138.P7042066429333088339

/-! ## A317138.P16375747479377945302

`∩[A061344(n+1), A309544(n+1)]/2`
-/

namespace A317138.P16375747479377945302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309544 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A317138.P16375747479377945302

/-! ## A317138.P15555904990634565884

`A014682(A096175(n+1)+2)-1`
-/

namespace A317138.P15555904990634565884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A096175 (n + 1) + 2).toNat - 1

end

end A317138.P15555904990634565884

/-! ## A317138.P17725038312025957137

`∩[A182253(n+1), A028815(n)]/2`
-/

namespace A317138.P17725038312025957137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A317138.P17725038312025957137

/-! ## A317138.P9620581402974447357

`∩[A008864(n+1), A182253(n+1)]/2`
-/

namespace A317138.P9620581402974447357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182253 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A317138.P9620581402974447357

/-! ## A317138.P10147672199112888059

`∩[A135731(n+1), A182253(n+1)]/2`
-/

namespace A317138.P10147672199112888059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182253 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A317138.P10147672199112888059

/-! ## A317138.P4870594770932436585

`∩[A093515(2*n+1), A182253(n+2)]/2`
-/

namespace A317138.P4870594770932436585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182253 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A317138.P4870594770932436585

/-! ## A317138.P15248705328044860250

`∩[A055670(n+1), A096176(n+1)]/2`
-/

namespace A317138.P15248705328044860250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A317138.P15248705328044860250

/-! ## A317138.P5660457877927684084

`∩[A309544(n+1), A370745(n+1)]/2`
-/

namespace A317138.P5660457877927684084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370745 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A317138.P5660457877927684084

/-! ## A317138.P15485874283422657961

`∩[A039767(n+1), A309544(n+1)]/2`
-/

namespace A317138.P15485874283422657961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309544 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A317138.P15485874283422657961

/-! ## A317138.P3562777839630648094

`∩[A242058(n+1), A309544(n+1)]/2`
-/

namespace A317138.P3562777839630648094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309544 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A317138.P3562777839630648094

/-! ## A317138.P1277101446738618153

`∩[A243937(n+1), A309544(n+1)]/2`
-/

namespace A317138.P1277101446738618153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309544 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A317138.P1277101446738618153

/-! ## A317138.P7981923763955425691

`∩[A047238(n+1), A309544(n+1)]/2`
-/

namespace A317138.P7981923763955425691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309544 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A317138.P7981923763955425691

/-! ## A317138.P15456884844660824619

`A246425(A096175(n+1)-1)`
-/

namespace A317138.P15456884844660824619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A096175 (n + 1) - 1).toNat

end

end A317138.P15456884844660824619

/-! ## A317138.P4894507126663115649

`A117358(4*A096175(n+1))`
-/

namespace A317138.P4894507126663115649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (4 * A096175 (n + 1)).toNat

end

end A317138.P4894507126663115649

/-! ## A317138.P10269544587125010237

`∩[A047511(n+1), A309544(n+1)]/2`
-/

namespace A317138.P10269544587125010237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309544 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A317138.P10269544587125010237

/-! ## A317138.P16335936190497167007

`A000463(A096175(n+1)-1)`
-/

namespace A317138.P16335936190497167007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A096175 (n + 1) - 1).toNat

end

end A317138.P16335936190497167007

/-! ## A317138.P18248712522568531498

`A003602(A096175(n+1)-1)`
-/

namespace A317138.P18248712522568531498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A096175 (n + 1) - 1).toNat

end

end A317138.P18248712522568531498

/-! ## A317138.P920939607903967932

`A008619(A096175(n+1)-1)`
-/

namespace A317138.P920939607903967932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A096175 (n + 1) - 1).toNat

end

end A317138.P920939607903967932

/-!
# A317139: Number of permutations of [n] with exactly floor(n/2) increasing runs of length two.

The programs for A317139, there is no canonical definition to state claims against.
-/

/-! ## A317139.P14777617065608480596

`A097592(A024206(n+1))`
-/

namespace A317139.P14777617065608480596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (A024206 (n + 1)).toNat

end

end A317139.P14777617065608480596

/-! ## A317139.P9241353439811965592

`A097592(A002620(n)+n)`
-/

namespace A317139.P9241353439811965592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (A002620 n + (n : ℤ)).toNat

end

end A317139.P9241353439811965592

/-! ## A317139.P13606432466134815733

`A097592(∑[A004526(n)]+n)`
-/

namespace A317139.P13606432466134815733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A317139.P13606432466134815733

/-! ## A317139.P9682345321799189428

`A097592(A076921(n+2)-1)`
-/

namespace A317139.P9682345321799189428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (A076921 (n + 2) - 1).toNat

end

end A317139.P9682345321799189428

/-! ## A317139.P10051322309010484194

`A097592(A182531(n+2)-1)`
-/

namespace A317139.P10051322309010484194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (A182531 (n + 2) - 1).toNat

end

end A317139.P10051322309010484194

/-! ## A317139.P12143271513369352865

`A097592(A033638(n+2)-2)`
-/

namespace A317139.P12143271513369352865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (A033638 (n + 2) - 2).toNat

end

end A317139.P12143271513369352865

/-! ## A317139.P3527084952383697720

`A097592(n-(1-A033638(n)))`
-/

namespace A317139.P3527084952383697720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 ((n : ℤ) - (1 - A033638 n)).toNat

end

end A317139.P3527084952383697720

/-!
# A317140: Number of permutations of [2n+1] with exactly n increasing runs of length two.

The programs for A317140, there is no canonical definition to state claims against.
-/

/-! ## A317140.P9638236076551897494

`A317139(2*n+1)`
-/

namespace A317140.P9638236076551897494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317139 (2 * n + 1)

end

end A317140.P9638236076551897494

/-! ## A317140.P14381214781670904457

`record[A317139(n*n%2)]`
-/

namespace A317140.P14381214781670904457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317139 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317140.P14381214781670904457

/-! ## A317140.P2869215666555841456

`record[A317139(A026741(n))]`
-/

namespace A317140.P2869215666555841456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317139 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317140.P2869215666555841456

/-! ## A317140.P15997479413726991295

`record[A317139(A093178(n))]`
-/

namespace A317140.P15997479413726991295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317139 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317140.P15997479413726991295

/-! ## A317140.P18193326671743316310

`record[A317139(A141310(n))]`
-/

namespace A317140.P18193326671743316310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317139 (A141310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317140.P18193326671743316310

/-!
# A317141: In the ranked poset of integer partitions ordered by refinement, number of integer partitions coarser (greater) than or equal to the integer partition with Heinz number n.

The programs for A317141, there is no canonical definition to state claims against.
-/

/-! ## A317141.P17274485820056078522

`A072643(or(1, A289079(n+1)))`
-/

namespace A317141.P17274485820056078522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (Int.lor 1 (A289079 (n + 1))).toNat

end

end A317141.P17274485820056078522

/-! ## A317141.P12151619355054499098

`xor(A001055(n+1), A186741(A363493(n)))`
-/

namespace A317141.P12151619355054499098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001055 (n + 1)) (A186741 (A363493 n).toNat)

end

end A317141.P12151619355054499098

/-! ## A317141.P9563612260008390314

`A001055(n+1)-A133010(A347458(n+1))`
-/

namespace A317141.P9563612260008390314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A133010 (A347458 (n + 1)).toNat

end

end A317141.P9563612260008390314

/-! ## A317141.P10692154194234112258

`A252665(n+1)-A133010(A347458(n+1))`
-/

namespace A317141.P10692154194234112258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252665 (n + 1) - A133010 (A347458 (n + 1)).toNat

end

end A317141.P10692154194234112258

/-! ## A317141.P16207638393785246038

`∑{d}[n+1, A050370(#)]-A133010(A347458(n+1))`
-/

namespace A317141.P16207638393785246038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050370 d - A133010 (A347458 (n + 1)).toNat

end

end A317141.P16207638393785246038

/-!
# A317142: Number of refinement-ordered pairs of strict integer partitions of n.

The programs for A317142, there is no canonical definition to state claims against.
-/

/-! ## A317142.P17508659702717600908

`A294786(A000079(n))-A308855(n)`
-/

namespace A317142.P17508659702717600908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294786 (A000079 n).toNat - A308855 n

end

end A317142.P17508659702717600908

/-! ## A317142.P18324940826680146771

`A279375(n)-A024155(A114464(n))`
-/

namespace A317142.P18324940826680146771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279375 n - A024155 (A114464 n).toNat

end

end A317142.P18324940826680146771

/-! ## A317142.P15985498374708150144

`A279375(n)-A010894(A294617(n))`
-/

namespace A317142.P15985498374708150144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279375 n - A010894 ((A294617 n).toNat + 21)

end

end A317142.P15985498374708150144

/-!
# A317144: Number of refinement-ordered pairs of factorizations of n into factors > 1.

The programs for A317144, there is no canonical definition to state claims against.
-/

/-! ## A317144.P14243980153323419923

`A050336(n+1)-A007326(A073093(n+1))`
-/

namespace A317144.P14243980153323419923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050336 (n + 1) - A007326 (A073093 (n + 1)).toNat

end

end A317144.P14243980153323419923

/-! ## A317144.P3173709957623492840

`A050336(n+1)-A026815(A255201(n+1))`
-/

namespace A317144.P3173709957623492840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050336 (n + 1) - A026815 (A255201 (n + 1)).toNat

end

end A317144.P3173709957623492840

/-! ## A317144.P1685622765344349616

`A050336(n+1)-A037901(A319786(n+1))`
-/

namespace A317144.P1685622765344349616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050336 (n + 1) - A037901 (A319786 (n + 1)).toNat

end

end A317144.P1685622765344349616

/-! ## A317144.P12900993543129379963

`A050336(n+1)-A332286(A105560(n+1))`
-/

namespace A317144.P12900993543129379963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050336 (n + 1) - A332286 (A105560 (n + 1)).toNat

end

end A317144.P12900993543129379963

/-! ## A317144.P11138800066968636525

`A050337(A101296(n+1))-A007326(A073093(n+1))`
-/

namespace A317144.P11138800066968636525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050337 (A101296 (n + 1)).toNat - A007326 (A073093 (n + 1)).toNat

end

end A317144.P11138800066968636525

/-! ## A317144.P1501481220853139682

`A050336(n+1)-A185238(A061142(n+1))`
-/

namespace A317144.P1501481220853139682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050336 (n + 1) - A185238 (A061142 (n + 1)).toNat

end

end A317144.P1501481220853139682

/-!
# A317145: Number of maximal chains of factorizations of n into factors > 1, ordered by refinement.

The programs for A317145, there is no canonical definition to state claims against.
-/

/-! ## A317145.P2784748202275515573

`A320105(A064988(n+1))`
-/

namespace A317145.P2784748202275515573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320105 (A064988 (n + 1)).toNat

end

end A317145.P2784748202275515573

/-! ## A317145.P1909626406559730578

`A320105(A354091(n+1))`
-/

namespace A317145.P1909626406559730578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320105 (A354091 (n + 1)).toNat

end

end A317145.P1909626406559730578

/-! ## A317145.P12154134605808479264

`A320105(A354202(n+1))`
-/

namespace A317145.P12154134605808479264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320105 (A354202 (n + 1)).toNat

end

end A317145.P12154134605808479264

/-! ## A317145.P3359760192362373714

`A320105(A357852(n+1))`
-/

namespace A317145.P3359760192362373714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320105 (A357852 (n + 1)).toNat

end

end A317145.P3359760192362373714

/-! ## A317145.P11450352789289243281

`A320105(A003961(A003961(n+1)))`
-/

namespace A317145.P11450352789289243281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320105 (A003961 (A003961 (n + 1)).toNat).toNat

end

end A317145.P11450352789289243281

/-!
# A317146: Moebius function in the ranked poset of factorizations of n into factors > 1, evaluated at the minimum (the prime factorization of n).

The programs for A317146, there is no canonical definition to state claims against.
-/

/-! ## A317146.P191754102591332820

`A011639(A016003(n+1)+3)`
-/

namespace A317146.P191754102591332820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011639 (A016003 (n + 1) + 3).toNat

end

end A317146.P191754102591332820

/-! ## A317146.P4454775468908461750

`A075553(A328892(n+1))^A203531(A060923(n))`
-/

namespace A317146.P4454775468908461750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075553 (A328892 (n + 1)).toNat : ℚ) ^ (A203531 (A060923 n).toNat : ℤ)

end

end A317146.P4454775468908461750

/-! ## A317146.P2797087630669383502

`A075553(A328892(n+1))%A016589(A203551(n))`
-/

namespace A317146.P2797087630669383502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075553 (A328892 (n + 1)).toNat) (A016589 ((A203551 n).toNat + 1))

end

end A317146.P2797087630669383502

/-! ## A317146.P5500460289034716277

`A000007(A000045(n))-A307420(n+1)`
-/

namespace A317146.P5500460289034716277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000045 n).toNat - A307420 (n + 1)

end

end A317146.P5500460289034716277

/-! ## A317146.P8251308603800663246

`A351619(A358820(n+1))`
-/

namespace A317146.P8251308603800663246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351619 (A358820 (n + 1)).toNat

end

end A317146.P8251308603800663246

/-!
# A317147: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317147, there is no canonical definition to state claims against.
-/

/-! ## A317147.P16546118214863327479

`A317153(∑[4*n]+1)`
-/

namespace A317147.P16546118214863327479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317147.P16546118214863327479

/-! ## A317147.P18296520967830113225

`record[A317153(Δ[A235355(n)])]`
-/

namespace A317147.P18296520967830113225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317147.P18296520967830113225

/-! ## A317147.P3957379835048160188

`and(-1, A317153(A001844(n)))`
-/

namespace A317147.P3957379835048160188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A317153 (A001844 n).toNat)

end

end A317147.P3957379835048160188

/-! ## A317147.P18230344023844235688

`record[A317153(A330613(n+1))]`
-/

namespace A317147.P18230344023844235688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317147.P18230344023844235688

/-! ## A317147.P2080508206407006310

`record[A317153(Δ[A079824(n+1)])]`
-/

namespace A317147.P2080508206407006310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317147.P2080508206407006310

/-!
# A317148: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317148, there is no canonical definition to state claims against.
-/

/-! ## A317148.P17631525605260183303

`A317153(∑[n+2]+4)`
-/

namespace A317148.P17631525605260183303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317148.P17631525605260183303

/-! ## A317148.P13051932389068588837

`A317153(A167614(n+1))+char[17]`
-/

namespace A317148.P13051932389068588837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317148.P13051932389068588837

/-! ## A317148.P8137179871685848947

`A317153(A046691(n)+7)+char[19]`
-/

namespace A317148.P8137179871685848947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317148.P8137179871685848947

/-! ## A317148.P6896285512346810801

`record[A317153(n+4)/A038207(n)]`
-/

namespace A317148.P6896285512346810801
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317153 (n + 4) : ℚ) / (A038207 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317148.P6896285512346810801

/-! ## A317148.P79246379867314518

`or(A083928(n), A317153(A167614(n+1)))`
-/

namespace A317148.P79246379867314518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083928 n) (A317153 (A167614 (n + 1)).toNat)

end

end A317148.P79246379867314518

/-!
# A317149: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317149, there is no canonical definition to state claims against.
-/

/-! ## A317149.P10076657376841615500

`A317153(∑[n+3]+7)`
-/

namespace A317149.P10076657376841615500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A317149.P10076657376841615500

/-! ## A317149.P8740303637195695091

`A317153(A000124(n+3)+3)+char[29]`
-/

namespace A317149.P8740303637195695091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (A000124 (n + 3) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317149.P8740303637195695091

/-! ## A317149.P12056715840988050854

`A007318(C(2, n))*A317153(A167614(n+2)+1)`
-/

namespace A317149.P12056715840988050854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A317153 (A167614 (n + 2) + 1).toNat

end

end A317149.P12056715840988050854

/-! ## A317149.P6665963373932746382

`A007318(C(2, n))*A317153(A000124(n+3)+3)`
-/

namespace A317149.P6665963373932746382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A317153 (A000124 (n + 3) + 3).toNat

end

end A317149.P6665963373932746382

/-! ## A317149.P2921723218449153000

`A317153(A000124(n+3)+3)/A007318(C(n, 2))`
-/

namespace A317149.P2921723218449153000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317153 (A000124 (n + 3) + 3).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A317149.P2921723218449153000

/-!
# A317150: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317150, there is no canonical definition to state claims against.
-/

/-! ## A317150.P15644331358856478227

`A317153(A374005(n+1))`
-/

namespace A317150.P15644331358856478227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (A374005 (n + 1)).toNat

end

end A317150.P15644331358856478227

/-! ## A317150.P18123851895150445922

`A317153(A167499(n+3))`
-/

namespace A317150.P18123851895150445922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (A167499 (n + 3)).toNat

end

end A317150.P18123851895150445922

/-! ## A317150.P991272642478788942

`A317153(A155212(n)+13)`
-/

namespace A317150.P991272642478788942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (A155212 n + 13).toNat

end

end A317150.P991272642478788942

/-! ## A317150.P5900131793983458713

`A317153(A056000(n)+15)`
-/

namespace A317150.P5900131793983458713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (A056000 n + 15).toNat

end

end A317150.P5900131793983458713

/-! ## A317150.P10038055358743710293

`A317153(eq[7, A066657(n)])`
-/

namespace A317150.P10038055358743710293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317150.P10038055358743710293

/-!
# A317151: Number of n X 6 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317151, there is no canonical definition to state claims against.
-/

/-! ## A317151.P13732713607635718863

`A317153(A374007(n+1))`
-/

namespace A317151.P13732713607635718863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (A374007 (n + 1)).toNat

end

end A317151.P13732713607635718863

/-! ## A317151.P16863331580129746049

`A317153(A166136(n+4))`
-/

namespace A317151.P16863331580129746049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (A166136 (n + 4)).toNat

end

end A317151.P16863331580129746049

/-! ## A317151.P5434950070932142512

`A317153(A056115(n)+21)`
-/

namespace A317151.P5434950070932142512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (A056115 n + 21).toNat

end

end A317151.P5434950070932142512

/-! ## A317151.P10384314717158364228

`A317153(A167499(n+4)+1)`
-/

namespace A317151.P10384314717158364228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (A167499 (n + 4) + 1).toNat

end

end A317151.P10384314717158364228

/-! ## A317151.P6658463848369751086

`A317153(A167614(n+4)+3)`
-/

namespace A317151.P6658463848369751086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (A167614 (n + 4) + 3).toNat

end

end A317151.P6658463848369751086

/-!
# A317152: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317152, there is no canonical definition to state claims against.
-/

/-! ## A317152.P3309150075130503290

`A317153(A374008(n+1))`
-/

namespace A317152.P3309150075130503290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (A374008 (n + 1)).toNat

end

end A317152.P3309150075130503290

/-! ## A317152.P12888859117912959868

`A317153(A167487(n+5))`
-/

namespace A317152.P12888859117912959868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (A167487 (n + 5)).toNat

end

end A317152.P12888859117912959868

/-! ## A317152.P14679137758624548240

`A317153(A056119(n)+28)`
-/

namespace A317152.P14679137758624548240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (A056119 n + 28).toNat

end

end A317152.P14679137758624548240

/-! ## A317152.P5371879476311113808

`A317153(eq[11, A066657(n)])`
-/

namespace A317152.P5371879476311113808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317152.P5371879476311113808

/-! ## A317152.P2889050243315534412

`A317153(A166136(n+5)+1)`
-/

namespace A317152.P2889050243315534412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (A166136 (n + 5) + 1).toNat

end

end A317152.P2889050243315534412

/-!
# A317153: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317153, there is no canonical definition to state claims against.
-/

/-! ## A317153.P6507529395352921287

`A305911(n+1)+A173636(A174545(n))`
-/

namespace A317153.P6507529395352921287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (n + 1) + A173636 (A174545 n).toNat

end

end A317153.P6507529395352921287

/-! ## A317153.P16427597356890301235

`A316883(n+1)-A081603(A022167(n))`
-/

namespace A317153.P16427597356890301235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (n + 1) - A081603 (A022167 n).toNat

end

end A317153.P16427597356890301235

/-! ## A317153.P9674626034689018824

`A316883(n+1)-A054911(A299905(n))`
-/

namespace A317153.P9674626034689018824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (n + 1) - A054911 (A299905 n).toNat

end

end A317153.P9674626034689018824

/-! ## A317153.P1275092224864362104

`A317611(n+1)-A157685(A260340(n))`
-/

namespace A317153.P1275092224864362104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (n + 1) - A157685 (A260340 n).toNat

end

end A317153.P1275092224864362104

/-! ## A317153.P15642797479739590020

`A316883(n+1)-A184159(A260340(n))`
-/

namespace A317153.P15642797479739590020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (n + 1) - A184159 (A260340 n).toNat

end

end A317153.P15642797479739590020

/-!
# A317154: Number of nXn 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317154, there is no canonical definition to state claims against.
-/

/-! ## A317154.P3935516140612268936

`A317160(∑[4*n]+1)`
-/

namespace A317154.P3935516140612268936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317154.P3935516140612268936

/-! ## A317154.P1614851082563713053

`A317160(n²+(n+1)²)+∑{d}[n+1, C(gcd(10, #), 10)]`
-/

namespace A317154.P1614851082563713053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (n ^ 2 + (n + 1) ^ 2) + ((∑ d ∈ Nat.divisors (f1 n), Nat.choose (Nat.gcd 10 d) 10 : ℕ) : ℤ)

end

end A317154.P1614851082563713053

/-! ## A317154.P6274752995317541170

`record[A317160(A330613(n+1))]`
-/

namespace A317154.P6274752995317541170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317154.P6274752995317541170

/-! ## A317154.P9736041509156064635

`record[A003982(n)*A317160(n+1)]`
-/

namespace A317154.P9736041509156064635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A317160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317154.P9736041509156064635

/-! ## A317154.P9774736020639278952

`record[gcd(A003987(n), A317160(n+1))]`
-/

namespace A317154.P9774736020639278952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A317160 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317154.P9774736020639278952

/-!
# A317155: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317155, there is no canonical definition to state claims against.
-/

/-! ## A317155.P2268477541991440202

`A317160(∑[n+2]+4)`
-/

namespace A317155.P2268477541991440202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317155.P2268477541991440202

/-! ## A317155.P1087642581630355484

`A317160(A167614(n+1))+char[17]`
-/

namespace A317155.P1087642581630355484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317155.P1087642581630355484

/-! ## A317155.P5356824362474722263

`A317160(A055998(n)+6)+char[17]`
-/

namespace A317155.P5356824362474722263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317155.P5356824362474722263

/-! ## A317155.P13956073482841576657

`record[A317160(n+4)^A055137(n)]`
-/

namespace A317155.P13956073482841576657
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317160 (n + 4) : ℚ) ^ (A055137 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317155.P13956073482841576657

/-! ## A317155.P18068668944522802580

`or(A003982(n), A317160(A167614(n+1)))`
-/

namespace A317155.P18068668944522802580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A317160 (A167614 (n + 1)).toNat)

end

end A317155.P18068668944522802580

/-!
# A317156: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317156, there is no canonical definition to state claims against.
-/

/-! ## A317156.P978447684709827013

`A317160(∑[n+3]+7)`
-/

namespace A317156.P978447684709827013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A317156.P978447684709827013

/-! ## A317156.P6830463854464741322

`A317160(Δ[A008778(n)]+6)+char[20]`
-/

namespace A317156.P6830463854464741322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (f1 (n + 1) - f1 n + 6).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317156.P6830463854464741322

/-! ## A317156.P12838160870751366362

`A020985(n)²*A317160(Δ[A008778(n)]+6)`
-/

namespace A317156.P12838160870751366362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A317160 (f1 (n + 1) - f1 n + 6).toNat

end

end A317156.P12838160870751366362

/-! ## A317156.P16038117387061825997

`A014963(6*(n+1))*A317160(Δ[A008778(n)]+6)`
-/

namespace A317156.P16038117387061825997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A317160 (f1 (n + 1) - f1 n + 6).toNat

end

end A317156.P16038117387061825997

/-! ## A317156.P3513367042696843251

`A317160(Δ[A008778(n)]+6)%A000041(3*(n+1))²`
-/

namespace A317156.P3513367042696843251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317160 (f1 (n + 1) - f1 n + 6).toNat) (A000041 (3 * (n + 1)) ^ 2)

end

end A317156.P3513367042696843251

/-!
# A317157: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317157, there is no canonical definition to state claims against.
-/

/-! ## A317157.P3050064805878876797

`A317160(A374005(n+1))`
-/

namespace A317157.P3050064805878876797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (A374005 (n + 1)).toNat

end

end A317157.P3050064805878876797

/-! ## A317157.P6147663560272437885

`A317160(A167499(n+3))`
-/

namespace A317157.P6147663560272437885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (A167499 (n + 3)).toNat

end

end A317157.P6147663560272437885

/-! ## A317157.P2858641076006890453

`A317160(A155212(n)+13)`
-/

namespace A317157.P2858641076006890453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (A155212 n + 13).toNat

end

end A317157.P2858641076006890453

/-! ## A317157.P4245618079367197715

`A317160(A056000(n)+15)`
-/

namespace A317157.P4245618079367197715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (A056000 n + 15).toNat

end

end A317157.P4245618079367197715

/-! ## A317157.P15879680759754814266

`A317160(eq[7, A066657(n)])`
-/

namespace A317157.P15879680759754814266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317157.P15879680759754814266

/-!
# A317158: Number of n X 6 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317158, there is no canonical definition to state claims against.
-/

/-! ## A317158.P18118654336711109369

`A317160(A374007(n+1))`
-/

namespace A317158.P18118654336711109369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (A374007 (n + 1)).toNat

end

end A317158.P18118654336711109369

/-! ## A317158.P2514007095324120028

`A317160(A166136(n+4))`
-/

namespace A317158.P2514007095324120028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (A166136 (n + 4)).toNat

end

end A317158.P2514007095324120028

/-! ## A317158.P7637675590262722294

`A317160(A056115(n)+21)`
-/

namespace A317158.P7637675590262722294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (A056115 n + 21).toNat

end

end A317158.P7637675590262722294

/-! ## A317158.P7122524446684091831

`A317160(A167614(n+4)+3)`
-/

namespace A317158.P7122524446684091831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (A167614 (n + 4) + 3).toNat

end

end A317158.P7122524446684091831

/-! ## A317158.P7812154176179235703

`A317160(A133263(n+5)+4)`
-/

namespace A317158.P7812154176179235703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (A133263 (n + 5) + 4).toNat

end

end A317158.P7812154176179235703

/-!
# A317159: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317159, there is no canonical definition to state claims against.
-/

/-! ## A317159.P12523471845952996114

`A317160(A374008(n+1))`
-/

namespace A317159.P12523471845952996114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (A374008 (n + 1)).toNat

end

end A317159.P12523471845952996114

/-! ## A317159.P11745761092575307308

`A317160(eq[11, A066657(n)])`
-/

namespace A317159.P11745761092575307308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317159.P11745761092575307308

/-! ## A317159.P6458885767866099045

`A317160(A166136(n+5)+1)`
-/

namespace A317159.P6458885767866099045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (A166136 (n + 5) + 1).toNat

end

end A317159.P6458885767866099045

/-! ## A317159.P17710878987122434718

`A317160(A167614(n+5)+4)`
-/

namespace A317159.P17710878987122434718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (A167614 (n + 5) + 4).toNat

end

end A317159.P17710878987122434718

/-! ## A317159.P13280973621388203033

`A317160(A000096(n+5)+8)`
-/

namespace A317159.P13280973621388203033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317160 (A000096 (n + 5) + 8).toNat

end

end A317159.P13280973621388203033

/-!
# A317160: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317160, there is no canonical definition to state claims against.
-/

/-! ## A317160.P11090927764019924202

`A316239(n+1)+A309785(A299321(n+1))`
-/

namespace A317160.P11090927764019924202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (n + 1) + A309785 (A299321 (n + 1)).toNat

end

end A317160.P11090927764019924202

/-! ## A317160.P3979214853065358075

`A316239(n+1)+A004198(A185044(n))`
-/

namespace A317160.P3979214853065358075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (n + 1) + A004198 (A185044 n).toNat

end

end A317160.P3979214853065358075

/-! ## A317160.P13955599461004365474

`A316239(n+1)+A230533(A159623(n))`
-/

namespace A317160.P13955599461004365474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (n + 1) + A230533 (A159623 n).toNat

end

end A317160.P13955599461004365474

/-! ## A317160.P10458972593081467175

`A316239(n+1)+A309785(A331562(n))`
-/

namespace A317160.P10458972593081467175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (n + 1) + A309785 (A331562 n).toNat

end

end A317160.P10458972593081467175

/-! ## A317160.P1449180070198152932

`A316239(n+1)+A079208(A230533(n+1))`
-/

namespace A317160.P1449180070198152932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316239 (n + 1) + A079208 (A230533 (n + 1)).toNat

end

end A317160.P1449180070198152932

/-!
# A317161: Let b(1) = b(2) = 1; for n >= 3, b(n) = n - b(t(n)) - b(n-t(n)) where t = A005185. a(n) = 2*b(n) - n.

The programs for A317161, there is no canonical definition to state claims against.
-/

/-! ## A317161.P8242566884416597681

`∑[(-1)^A195831(A057762(n+1))]`
-/

namespace A317161.P8242566884416597681
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A195831 (A057762 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317161.P8242566884416597681

/-! ## A317161.P10727268354886928955

`A034947(A211978(n+1))+n%2`
-/

namespace A317161.P10727268354886928955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A211978 (n + 1)).toNat + ((n % 2 : ℕ) : ℤ)

end

end A317161.P10727268354886928955

/-! ## A317161.P4607487243821725565

`∑[-A165586(A096231(2*(n+2))+1)]`
-/

namespace A317161.P4607487243821725565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A165586 (A096231 (2 * (n + 2)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317161.P4607487243821725565

/-! ## A317161.P13061283774553450526

`A034947(A211978(n+1))+A000035(n)`
-/

namespace A317161.P13061283774553450526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A211978 (n + 1)).toNat + A000035 n

end

end A317161.P13061283774553450526

/-! ## A317161.P4289209729664512562

`A125122(n)+A034947(A211978(n+1))`
-/

namespace A317161.P4289209729664512562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125122 n + A034947 (A211978 (n + 1)).toNat

end

end A317161.P4289209729664512562

/-!
# A317165: Number of permutations of [n*(n+1)/2] with distinct lengths of increasing runs.

The programs for A317165, there is no canonical definition to state claims against.
-/

/-! ## A317165.P17923060154488096445

`A317166(A000217(n))`
-/

namespace A317165.P17923060154488096445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317166 (A000217 n).toNat

end

end A317165.P17923060154488096445

/-! ## A317165.P10933150301938522682

`A317166(∑[n])`
-/

namespace A317165.P10933150301938522682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317166 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317165.P10933150301938522682

/-! ## A317165.P9713724894001226205

`or(1, A317166(C(n+1, 2)))`
-/

namespace A317165.P9713724894001226205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A317166 (Nat.choose (n + 1) 2))

end

end A317165.P9713724894001226205

/-! ## A317165.P2758926227755693174

`or(1, A317166(n²-C(n, 2)))`
-/

namespace A317165.P2758926227755693174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A317166 (n ^ 2 - Nat.choose n 2))

end

end A317165.P2758926227755693174

/-! ## A317165.P488745460754032412

`or(1, A317166(n-Δ[-C(n, 3)]))`
-/

namespace A317165.P488745460754032412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A317166 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat)

end

end A317165.P488745460754032412

/-!
# A317166: Number of permutations of [n] with distinct lengths of increasing runs.

The programs for A317166, there is no canonical definition to state claims against.
-/

/-! ## A317166.P435645610618772770

`or(1, A264734(floor(a(n-2)+n/2)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A317166.P435645610618772770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  Int.lor 1 (A264734 ⌊(a (n - 2) : ℚ) + (n : ℚ) / 2⌋.toNat)

end

end A317166.P435645610618772770

/-! ## A317166.P1332769599067912645

`or(1, A359898(A253968(n+1)))`
-/

namespace A317166.P1332769599067912645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A359898 (A253968 (n + 1)).toNat)

end

end A317166.P1332769599067912645

/-!
# A317167: Number of distinct critical exponents possible, over all binary strings of length n.

The programs for A317167, there is no canonical definition to state claims against.
-/

/-! ## A317167.P15135396282789289607

`A173382(n)+A118174(A114921(2*n+1))`
-/

namespace A317167.P15135396282789289607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n + A118174 (A114921 (2 * n + 1)).toNat

end

end A317167.P15135396282789289607

/-! ## A317167.P3411033672325327045

`A173382(n)+A051731(A208039(3*n+5))`
-/

namespace A317167.P3411033672325327045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n + A051731 (A208039 (3 * n + 5)).toNat

end

end A317167.P3411033672325327045

/-!
# A317169: Expansion of e.g.f. BesselI(1,2*log(1 - x))/((1 - x)*log(1 - x)).

The programs for A317169, there is no canonical definition to state claims against.
-/

/-! ## A317169.P17340988682926375860

`2*A201826(n)-A201952(n+1)`
-/

namespace A317169.P17340988682926375860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A201826 n - A201952 (n + 1)

end

end A317169.P17340988682926375860

/-! ## A317169.P209785679658773831

`or(A001222(A100518(n)), A235802(n))`
-/

namespace A317169.P209785679658773831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A100518 n).toNat) (A235802 n)

end

end A317169.P209785679658773831

/-! ## A317169.P2236562432822240924

`or(A001222(A239028(n+1)), A235802(n))`
-/

namespace A317169.P2236562432822240924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A239028 (n + 1)).toNat) (A235802 n)

end

end A317169.P2236562432822240924

/-!
# A317170: Expansion of e.g.f. exp(exp(x) - 1)*BesselI(1,2*(exp(x) - 1))/(exp(x) - 1).

The programs for A317170, there is no canonical definition to state claims against.
-/

/-! ## A317170.P5217832153108214405

`A136409((n+3)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A317170.P5217832153108214405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A136409 ((n + 3 : ℤ) * a (n - 1)).toNat

end

end A317170.P5217832153108214405

/-! ## A317170.P2080136679527733526

`A095413(n*a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A317170.P2080136679527733526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A095413 ((n : ℤ) * a (n - 1) + 1).toNat

end

end A317170.P2080136679527733526

/-!
# A317171: a(n) = n! * [x^n] 1/(1 + n*log(1 - x)).

The programs for A317171, there is no canonical definition to state claims against.
-/

/-! ## A317171.P16473026193549328415

`A320079(∑[4*n])`
-/

namespace A317171.P16473026193549328415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320079 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317171.P16473026193549328415

/-! ## A317171.P11930607108132689041

`A320079(A046092(n))+char[6]`
-/

namespace A317171.P11930607108132689041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320079 (A046092 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317171.P11930607108132689041

/-!
# A317172: a(n) = n! * [x^n] 1/(1 - n*log(1 + x)).

The programs for A317172, there is no canonical definition to state claims against.
-/

/-! ## A317172.P6572137417846046626

`A028310(n)*A335529(n)`
-/

namespace A317172.P6572137417846046626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A335529 n

end

end A317172.P6572137417846046626

/-! ## A317172.P14175704523234827611

`A000007(n)+n*A335529(n)`
-/

namespace A317172.P14175704523234827611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A335529 n

end

end A317172.P14175704523234827611

/-! ## A317172.P5831912418629908592

`(A004277(n)-n)*A335529(n)`
-/

namespace A317172.P5831912418629908592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n - (n : ℤ)) * A335529 n

end

end A317172.P5831912418629908592

/-! ## A317172.P11777949626997676836

`A007318(A000124(n))*A335529(n)`
-/

namespace A317172.P11777949626997676836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat * A335529 n

end

end A317172.P11777949626997676836

/-! ## A317172.P3626473883262702776

`A000005(A011782(n))*A335529(n)`
-/

namespace A317172.P3626473883262702776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011782 n).toNat * A335529 n

end

end A317172.P3626473883262702776

/-!
# A317173: a(n) is the least k > 0 such that k * n contains a digit 1 in its decimal representation.

The programs for A317173, there is no canonical definition to state claims against.
-/

/-! ## A317173.P13219975139298279818

`A317180(n+1)/(n+1)`
-/

namespace A317173.P13219975139298279818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317180 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A317173.P13219975139298279818

/-! ## A317173.P12609058074827180511

`A008574(A317180(n+1))%A004767(n)`
-/

namespace A317173.P12609058074827180511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (A317180 (n + 1)).toNat) (A004767 n)

end

end A317173.P12609058074827180511

/-! ## A317173.P10470962878016047231

`A008458(A317180(n+1))%A016969(n)`
-/

namespace A317173.P10470962878016047231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 (A317180 (n + 1)).toNat) (A016969 n)

end

end A317173.P10470962878016047231

/-! ## A317173.P5288527581951420139

`A008706(A317180(n+1))%A016897(n)`
-/

namespace A317173.P5288527581951420139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008706 (A317180 (n + 1)).toNat) (A016897 n)

end

end A317173.P5288527581951420139

/-! ## A317173.P16854857045850232839

`A317180(A008592(n+1))%A017377(n)`
-/

namespace A317173.P16854857045850232839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317180 (A008592 (n + 1)).toNat) (A017377 n)

end

end A317173.P16854857045850232839

/-! ## A317173.P6541558771718450215

`A022144(A317180(n+1))%A004771(n)`
-/

namespace A317173.P6541558771718450215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 (A317180 (n + 1)).toNat) (A004771 n)

end

end A317173.P6541558771718450215

/-! ## A317173.P17213670202283259972

`(n+1)^A008683(A020483(n))*A317180(n+1)`
-/

namespace A317173.P17213670202283259972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A317180 (n + 1) : ℚ)

end

end A317173.P17213670202283259972

/-! ## A317173.P15601636557900617818

`(A016993(n)*A317180(n+1))%A016993(n+1)`
-/

namespace A317173.P15601636557900617818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016993 n * A317180 (n + 1)) (A016993 (n + 1))

end

end A317173.P15601636557900617818

/-! ## A317173.P8154192357559284544

`(n+1)^A008683(A055211(n+2))*A317180(n+1)`
-/

namespace A317173.P8154192357559284544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A055211 (n + 2)).toNat : ℤ) * (A317180 (n + 1) : ℚ)

end

end A317173.P8154192357559284544

/-!
# A317175: Square array T(n, k) read by antidiagonals upwards, n > 0 and k > 0: T(n, k) is the least m > 0 such that m * n contains k as a substring in its decimal representation.

The programs for A317175, there is no canonical definition to state claims against.
-/

/-! ## A317175.P2911217203221057824

`A317387(n+1)/(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A317175.P2911217203221057824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317387 (n + 1) : ℚ) / ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ)

end

end A317175.P2911217203221057824

/-! ## A317175.P3306732535643643120

`A317387(n+1)/A004736(n+1)`
-/

namespace A317175.P3306732535643643120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317387 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A317175.P3306732535643643120

/-! ## A317175.P7342819075720182665

`A317387(n+1)/(A025581(n)+1)`
-/

namespace A317175.P7342819075720182665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317387 (n + 1) : ℚ) / (A025581 n + 1 : ℚ)

end

end A317175.P7342819075720182665

/-! ## A317175.P3856826704161126124

`A317387(n+1)/A373214(n+1)`
-/

namespace A317175.P3856826704161126124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317387 (n + 1) : ℚ) / (A373214 (n + 1) : ℚ)

end

end A317175.P3856826704161126124

/-! ## A317175.P15546302096691776591

`A317387(n+1)/sqrt(A055461(n+1))`
-/

namespace A317175.P15546302096691776591
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A317387 (n + 1) : ℝ) / Real.sqrt (A055461 (n + 1) : ℝ)

end

end A317175.P15546302096691776591

/-! ## A317175.P10132198235057009247

`A317387(n+1)/A057555(2*(n+1))`
-/

namespace A317175.P10132198235057009247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317387 (n + 1) : ℚ) / (A057555 (2 * (n + 1)) : ℚ)

end

end A317175.P10132198235057009247

/-! ## A317175.P15850294567463629824

`A317387(n+1)/A000005(A130321(n))`
-/

namespace A317175.P15850294567463629824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317387 (n + 1) : ℚ) / (A000005 (A130321 n).toNat : ℚ)

end

end A317175.P15850294567463629824

/-! ## A317175.P6103773659672497261

`A317387(n+1)/A348553(A025581(n))`
-/

namespace A317175.P6103773659672497261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317387 (n + 1) : ℚ) / (A348553 (A025581 n).toNat : ℚ)

end

end A317175.P6103773659672497261

/-! ## A317175.P12044197855025770980

`A317387(n+1)/A002260(A038722(n+1))`
-/

namespace A317175.P12044197855025770980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317387 (n + 1) : ℚ) / (A002260 (A038722 (n + 1)).toNat : ℚ)

end

end A317175.P12044197855025770980

/-! ## A317175.P1610737777780818990

`A317387(n+1)/A008619(A185782(n+1))`
-/

namespace A317175.P1610737777780818990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317387 (n + 1) : ℚ) / (A008619 (A185782 (n + 1)).toNat : ℚ)

end

end A317175.P1610737777780818990

/-!
# A317176: Number of chains of factorizations of n into factors > 1, ordered by refinement, starting with the prime factorization of n and ending with the maximum factorization (n).

The programs for A317176, there is no canonical definition to state claims against.
-/

/-! ## A317176.P388198459105669553

`A347578(A292504(n+1)+2)`
-/

namespace A317176.P388198459105669553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 (A292504 (n + 1) + 2).toNat

end

end A317176.P388198459105669553

/-! ## A317176.P5689226299736856608

`A318812(n+1)-A058343(A318812(n+1))`
-/

namespace A317176.P5689226299736856608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318812 (n + 1) - A058343 (A318812 (n + 1)).toNat

end

end A317176.P5689226299736856608

/-! ## A317176.P6616463674309270735

`A318812(n+1)-A000122(A333101(n+2))`
-/

namespace A317176.P6616463674309270735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318812 (n + 1) - A000122 (A333101 (n + 2)).toNat

end

end A317176.P6616463674309270735

/-! ## A317176.P6642851885012497604

`A085169(A318812(n+1)%A161190(n+1))`
-/

namespace A317176.P6642851885012497604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085169 (Int.tmod (A318812 (n + 1)) (A161190 (n + 1))).toNat

end

end A317176.P6642851885012497604

/-! ## A317176.P4397332445460343994

`A239218(gcd(A185255(n), A318812(n+1)))`
-/

namespace A317176.P4397332445460343994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239218 (Int.gcd (A185255 n) (A318812 (n + 1)))

end

end A317176.P4397332445460343994

/-!
# A317177: Number of distinct circular critical exponents possible, over all binary strings of length n.

The programs for A317177, there is no canonical definition to state claims against.
-/

/-! ## A317177.P2991868780368241929

`A029028(∑[A040001(A019300(n))])`
-/

namespace A317177.P2991868780368241929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A019300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029028 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A317177.P2991868780368241929

/-!
# A317178: Total number of colors summed over all collections of nonempty multisets with a total of n objects having color set {1,...,k} for some k <= n.

The programs for A317178, there is no canonical definition to state claims against.
-/

/-! ## A317178.P4138593806861938695

`A236561(A132961(n+1)+1)`
-/

namespace A317178.P4138593806861938695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236561 (A132961 (n + 1) + 1).toNat

end

end A317178.P4138593806861938695

/-! ## A317178.P9526718584210224605

`A289437(A300674(n+1)+A300668(n))`
-/

namespace A317178.P9526718584210224605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (A300674 (n + 1) + A300668 n).toNat

end

end A317178.P9526718584210224605

/-!
# A317179: Palindromic invertible primes.

The programs for A317179, there is no canonical definition to state claims against.
-/

/-! ## A317179.P2931350999038602168

`∩[A002385(n+1), A048890(n+1)]`
-/

namespace A317179.P2931350999038602168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317179.P2931350999038602168

/-!
# A317180: a(n) is the least positive multiple of n that contains at least one digit 1 in its decimal representation.

The programs for A317180, there is no canonical definition to state claims against.
-/

/-! ## A317180.P11746030732926725973

`(n+1)*A317173(n+1)`
-/

namespace A317180.P11746030732926725973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A317173 (n + 1)

end

end A317180.P11746030732926725973

/-! ## A317180.P3049592497887981069

`(n+1)/A317173(n+1)^A008683(A007304(n+1))`
-/

namespace A317180.P3049592497887981069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A317173 (n + 1) : ℚ) ^ (A008683 (A007304 (n + 1)).toNat : ℤ)

end

end A317180.P3049592497887981069

/-!
# A317181: Consider primitive integer triangles as listed in rows of table A316842. Sequence gives 16*area^2 for these triangles in the same order.

The programs for A317181, there is no canonical definition to state claims against.
-/

/-! ## A317181.P13344153941154791924

`A316853(A157685(n+1)+A032559(n+1))`
-/

namespace A317181.P13344153941154791924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316853 (A157685 (n + 1) + A032559 (n + 1)).toNat

end

end A317181.P13344153941154791924

/-! ## A317181.P52681484350105967

`A316853(record[A316843(3*n+2)-A331254(n+1)])`
-/

namespace A317181.P52681484350105967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (3 * n + 2) - A331254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316853 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A317181.P52681484350105967

/-!
# A317183: Numbers k such that k = 16*area(T)^2 for a primitive integer triangle, T.

The programs for A317183, there is no canonical definition to state claims against.
-/

/-! ## A317183.P10568191149680382572

`∩[A254311(n+1), A317182(n+1)]`
-/

namespace A317183.P10568191149680382572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317183.P10568191149680382572

/-! ## A317183.P17599942541083217447

`A317182(A095861(n+2)+A032559(n+1))`
-/

namespace A317183.P17599942541083217447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317182 (A095861 (n + 2) + A032559 (n + 1)).toNat

end

end A317183.P17599942541083217447

/-! ## A317183.P4526897274801660214

`A317182(∩[A032559(n+1), A355547(n+1)])`
-/

namespace A317183.P4526897274801660214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355547 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317182 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A317183.P4526897274801660214

/-!
# A317184: Number of "non-connected" chord diagrams of degree n.

The programs for A317184, there is no canonical definition to state claims against.
-/

/-! ## A317184.P6134054280886981918

`A007769(n+1)-A018225(n+1)`
-/

namespace A317184.P6134054280886981918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007769 (n + 1) - A018225 (n + 1)

end

end A317184.P6134054280886981918

/-! ## A317184.P9505229093139154308

`A121930(A001147(n)+n)`
-/

namespace A317184.P9505229093139154308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121930 (A001147 n + (n : ℤ)).toNat

end

end A317184.P9505229093139154308

/-!
# A317186: One of many square spiral sequences: a(n) = n^2 + n - floor((n-1)/2).

The programs for A317186, the canonical program `A317186.P10402809583662158079` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317186 has offset 0).

The definition of A317186 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+n-floor((n-1)/2)` (program `A317186.P10402809583662158079`, by `A317186.P10402809583662158079.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A317186.P10402809583662158079

`n²+n-floor((n-1)/2)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A317186

/-- `n²+n-floor((n-1)/2)` -/
def P10402809583662158079.Spec : Prop :=
  ∀ n, P10402809583662158079.a n = A317186 n

theorem P10402809583662158079.correct : P10402809583662158079.Spec := by
  intro n
  simp only [A317186]

end A317186

/-! ## A317186.P14247938046462778769

`∑[a(n-2)+4]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A317186.P14247938046462778769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317186.P14247938046462778769

namespace A317186

/-- `∑[a(n-2)+4]` -/
def P14247938046462778769.Spec : Prop :=
  ∀ n, (P14247938046462778769.a n : ℤ) = A317186 n

end A317186

/-! ## A317186.P13952999784598005282

`round(record[(1-n)²+n/2])`
-/

namespace A317186.P13952999784598005282
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 : ℚ) + (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A317186.P13952999784598005282

namespace A317186

/-- `round(record[(1-n)²+n/2])` -/
def P13952999784598005282.Spec : Prop :=
  ∀ n, P13952999784598005282.a n = A317186 n

end A317186

/-! ## A317186.P3778082512620453061

`∑[∑[4-a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A317186.P3778082512620453061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317186.P3778082512620453061

namespace A317186

/-- `∑[∑[4-a(n-1)]]` -/
def P3778082512620453061.Spec : Prop :=
  ∀ n, P3778082512620453061.a n = A317186 n

end A317186

/-! ## A317186.P12965695715439500902

`floor((gcd(2, n)+n)/2+n²)`
-/

namespace A317186.P12965695715439500902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 2 n + n : ℚ) / 2 + (n ^ 2 : ℚ)⌋

end

end A317186.P12965695715439500902

namespace A317186

/-- `floor((gcd(2, n)+n)/2+n²)` -/
def P12965695715439500902.Spec : Prop :=
  ∀ n, P12965695715439500902.a n = A317186 n

end A317186

/-! ## A317186.P12278132625929832950

`ogf((1+2x^2+x^3)/(1-2x+2x^3-x^4))`
-/

namespace A317186.P12278132625929832950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, 1] [1, -2, 0, 2, -1] n

end

end A317186.P12278132625929832950

namespace A317186

/-- `ogf((1+2x^2+x^3)/(1-2x+2x^3-x^4))` -/
def P12278132625929832950.Spec : Prop :=
  ∀ n, P12278132625929832950.a n = A317186 n

end A317186

/-! ## A317186.P16689376600709641645

`round((C(2*n+1, 2)+1)/2)`
-/

namespace A317186.P16689376600709641645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n + 1) 2 + 1 : ℚ) / 2)

end

end A317186.P16689376600709641645

namespace A317186

/-- `round((C(2*n+1, 2)+1)/2)` -/
def P16689376600709641645.Spec : Prop :=
  ∀ n, P16689376600709641645.a n = A317186 n

end A317186

/-! ## A317186.P2048638970158354043

`round(or(1, n*(2*n+1))/2)`
-/

namespace A317186.P2048638970158354043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (n * (2 * n + 1)) : ℚ) / 2)

end

end A317186.P2048638970158354043

namespace A317186

/-- `round(or(1, n*(2*n+1))/2)` -/
def P2048638970158354043.Spec : Prop :=
  ∀ n, P2048638970158354043.a n = A317186 n

end A317186

/-! ## A317186.P2480246907138066170

`floor(4*n+a(n-2)-3)` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A317186.P2480246907138066170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (4 * n : ℤ) + (a (n - 2) - 3)

end

end A317186.P2480246907138066170

namespace A317186

/-- `floor(4*n+a(n-2)-3)` -/
def P2480246907138066170.Spec : Prop :=
  ∀ n, P2480246907138066170.a n = A317186 n

end A317186

/-! ## A317186.P10814622844179246883

`floor(4*n-(3-a(n-2)))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A317186.P10814622844179246883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (4 * n : ℤ) - (3 - a (n - 2))

end

end A317186.P10814622844179246883

namespace A317186

/-- `floor(4*n-(3-a(n-2)))` -/
def P10814622844179246883.Spec : Prop :=
  ∀ n, P10814622844179246883.a n = A317186 n

end A317186

/-! ## A317186.P15725760097513605911

`4*((a(n-2)-3)/4+n)` with `a(0)=1, a(1)=2`
-/

namespace A317186.P15725760097513605911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * ((a (n - 2) - 3) / 4 + (n : ℚ))

end

end A317186.P15725760097513605911

namespace A317186

/-- `4*((a(n-2)-3)/4+n)` -/
def P15725760097513605911.Spec : Prop :=
  ∀ n, P15725760097513605911.a n = (A317186 n : ℚ)

end A317186

/-! ## A317186.P17472061310991621846

`4*(n-(3-a(n-2))/4)` with `a(0)=1, a(1)=2`
-/

namespace A317186.P17472061310991621846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * ((n : ℚ) - (3 - a (n - 2)) / 4)

end

end A317186.P17472061310991621846

namespace A317186

/-- `4*(n-(3-a(n-2))/4)` -/
def P17472061310991621846.Spec : Prop :=
  ∀ n, P17472061310991621846.a n = (A317186 n : ℚ)

end A317186

/-! ## A317186.P2140022182410908878

`floor(a(n-1)-n%2+n+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A317186.P2140022182410908878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((n % 2 : ℕ) : ℤ) + (n : ℤ) + (n : ℤ)

end

end A317186.P2140022182410908878

namespace A317186

/-- `floor(a(n-1)-n%2+n+n)` -/
def P2140022182410908878.Spec : Prop :=
  ∀ n, P2140022182410908878.a n = A317186 n

end A317186

/-! ## A317186.P7028896589991467492

`ceil(A084849(n)/2)`
-/

namespace A317186.P7028896589991467492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A084849 n : ℚ) / 2⌉

end

end A317186.P7028896589991467492

namespace A317186

/-- `ceil(A084849(n)/2)` -/
def P7028896589991467492.Spec : Prop :=
  ∀ n, P7028896589991467492.a n = A317186 n

end A317186

/-! ## A317186.P2464629822210304250

`(A317298(n)+1)/2`
-/

namespace A317186.P2464629822210304250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317298 n + 1 : ℚ) / 2

end

end A317186.P2464629822210304250

namespace A317186

/-- `(A317298(n)+1)/2` -/
def P2464629822210304250.Spec : Prop :=
  ∀ n, P2464629822210304250.a n = (A317186 n : ℚ)

end A317186

/-! ## A317186.P14230134360929951380

`floor(sqrt(A304160(n+1)))`
-/

namespace A317186.P14230134360929951380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A304160 (n + 1))

end

end A317186.P14230134360929951380

namespace A317186

/-- `floor(sqrt(A304160(n+1)))` -/
def P14230134360929951380.Spec : Prop :=
  ∀ n, P14230134360929951380.a n = A317186 n

end A317186

/-! ## A317186.P492704414850332204

`ceil((A001105(n)+1+n)/2)`
-/

namespace A317186.P492704414850332204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001105 n + 1 + (n : ℤ) : ℚ) / 2⌉

end

end A317186.P492704414850332204

namespace A317186

/-- `ceil((A001105(n)+1+n)/2)` -/
def P492704414850332204.Spec : Prop :=
  ∀ n, P492704414850332204.a n = A317186 n

end A317186

/-! ## A317186.P12346338347889266625

`A160749(n)%A173102(n+1)`
-/

namespace A317186.P12346338347889266625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160749 n) (A173102 (n + 1))

end

end A317186.P12346338347889266625

namespace A317186

/-- `A160749(n)%A173102(n+1)` -/
def P12346338347889266625.Spec : Prop :=
  ∀ n, P12346338347889266625.a n = A317186 n

end A317186

/-! ## A317186.P310846516585576604

`∪[A054567(n+1), A054552(n)]`
-/

namespace A317186.P310846516585576604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317186.P310846516585576604

namespace A317186

/-- `∪[A054567(n+1), A054552(n)]` -/
def P310846516585576604.Spec : Prop :=
  ∀ n, (P310846516585576604.a n : ℤ) = A317186 n

end A317186

/-! ## A317186.P17841700133381271098

`A039823(A004277(n))`
-/

namespace A317186.P17841700133381271098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (A004277 n).toNat

end

end A317186.P17841700133381271098

namespace A317186

/-- `A039823(A004277(n))` -/
def P17841700133381271098.Spec : Prop :=
  ∀ n, P17841700133381271098.a n = A317186 n

end A317186

/-!
# A317187: Arrange primes along the square spiral; sequence lists primes on the X-axis.

The programs for A317187, the canonical program `A317187.P12719454024546088027` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317187 has offset 1).

The definition of A317187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2910 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317187.P12719454024546088027

`∪[A054551(n), A054566(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A317187

/-- `∪[A054551(n), A054566(n)]` -/
def P12719454024546088027.Spec : Prop :=
  ∀ n, (P12719454024546088027.a n : ℤ) = A317187 (n + 1)

theorem P12719454024546088027.correct : P12719454024546088027.Spec := by
  intro n
  simp only [A317187, Nat.add_sub_cancel]

end A317187

/-! ## A317187.P17168718624368000939

`A001748(A099392(n+1)+A000217(n))/3`
-/

namespace A317187.P17168718624368000939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A099392 (n + 1) + A000217 n).toNat : ℚ) / 3

end

end A317187.P17168718624368000939

namespace A317187

/-- `A001748(A099392(n+1)+A000217(n))/3` -/
def P17168718624368000939.Spec : Prop :=
  ∀ n, P17168718624368000939.a n = (A317187 (n + 1) : ℚ)

end A317187

/-! ## A317187.P14048153303607655182

`A000040(ceil((1/4+n)²))`
-/

namespace A317187.P14048153303607655182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌈((1 : ℚ) / 4 + (n : ℚ)) ^ 2⌉.toNat

end

end A317187.P14048153303607655182

namespace A317187

/-- `A000040(ceil((1/4+n)²))` -/
def P14048153303607655182.Spec : Prop :=
  ∀ n, P14048153303607655182.a n = A317187 (n + 1)

end A317187

/-! ## A317187.P7209643714705564017

`A008578(∑[comp[or(2, n)]]+2)`
-/

namespace A317187.P7209643714705564017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A317187.P7209643714705564017

namespace A317187

/-- `A008578(∑[comp[or(2, n)]]+2)` -/
def P7209643714705564017.Spec : Prop :=
  ∀ n, P7209643714705564017.a n = A317187 (n + 1)

end A317187

/-! ## A317187.P10778918021667641479

`A158611(∑[comp[or(2, n)]]+3)`
-/

namespace A317187.P10778918021667641479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A317187.P10778918021667641479

namespace A317187

/-- `A158611(∑[comp[or(2, n)]]+3)` -/
def P10778918021667641479.Spec : Prop :=
  ∀ n, P10778918021667641479.a n = A317187 (n + 1)

end A317187

/-! ## A317187.P7042094117891387759

`A182986(∑[record[and(n, -3)]]+2)`
-/

namespace A317187.P7042094117891387759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A317187.P7042094117891387759

namespace A317187

/-- `A182986(∑[record[and(n, -3)]]+2)` -/
def P7042094117891387759.Spec : Prop :=
  ∀ n, P7042094117891387759.a n = A317187 (n + 1)

end A317187

/-! ## A317187.P18257240863984460277

`∪[A000040(A054552(n)), A054566(n)]`
-/

namespace A317187.P18257240863984460277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A054552 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054566 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317187.P18257240863984460277

namespace A317187

/-- `∪[A000040(A054552(n)), A054566(n)]` -/
def P18257240863984460277.Spec : Prop :=
  ∀ n, (P18257240863984460277.a n : ℤ) = A317187 (n + 1)

end A317187

/-! ## A317187.P10233140491380564290

`A109763(2*n²+n+1)`
-/

namespace A317187.P10233140491380564290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (2 * n ^ 2 + n + 1)

end

end A317187.P10233140491380564290

namespace A317187

/-- `A109763(2*n²+n+1)` -/
def P10233140491380564290.Spec : Prop :=
  ∀ n, P10233140491380564290.a n = A317187 (n + 1)

end A317187

/-! ## A317187.P7981910952106536079

`A067747(A317298(n))`
-/

namespace A317187.P7981910952106536079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A317298 n).toNat

end

end A317187.P7981910952106536079

namespace A317187

/-- `A067747(A317298(n))` -/
def P7981910952106536079.Spec : Prop :=
  ∀ n, P7981910952106536079.a n = A317187 (n + 1)

end A317187

/-!
# A317188: a(n) = 1 + 2 * (a(n-1) + a(n-4) + a(n-6)) + a(n-7) for n>3, with initial values 0 if n

The programs for A317188, the canonical program `A317188.P10174428341642169334` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317188 has offset 0).

The definition of A317188 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+2*(a(n-1)+a(n-4)+a(n-6))+a(n-7)` (program `A317188.P10174428341642169334`, by `A317188.P10174428341642169334.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A317188.P10174428341642169334

`1+2*(a(n-1)+a(n-4)+a(n-6))+a(n-7)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=18, a(4)=39, a(5)=85, a(6)=189`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A317188

/-- `1+2*(a(n-1)+a(n-4)+a(n-6))+a(n-7)` -/
def P10174428341642169334.Spec : Prop :=
  ∀ n, (P10174428341642169334.a n : ℤ) = A317188 n

theorem P10174428341642169334.correct : P10174428341642169334.Spec := by
  intro n
  simp only [A317188]

end A317188

/-! ## A317188.P16463440101232124928

`floor(∑[sqrt(A280768(n+2))])`
-/

namespace A317188.P16463440101232124928
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280768 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A317188.P16463440101232124928

namespace A317188

/-- `floor(∑[sqrt(A280768(n+2))])` -/
def P16463440101232124928.Spec : Prop :=
  ∀ n, P16463440101232124928.a n = A317188 n

end A317188

/-! ## A317188.P8501833118005688560

`A342516((n+1)²)+n`
-/

namespace A317188.P8501833118005688560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342516 ((n + 1) ^ 2) + (n : ℤ)

end

end A317188.P8501833118005688560

namespace A317188

/-- `A342516((n+1)²)+n` -/
def P8501833118005688560.Spec : Prop :=
  ∀ n, P8501833118005688560.a n = A317188 n

end A317188

/-!
# A317189: A morphic sequence related to the ternary Thue-Morse sequence.

The programs for A317189, the canonical program `A317189.P4789240492486274008` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317189 has offset 0).

The definition of A317189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317189.P4789240492486274008

`5%(A316826(n)+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A317189

/-- `5%(A316826(n)+1)` -/
def P4789240492486274008.Spec : Prop :=
  ∀ n, P4789240492486274008.a n = A317189 n

theorem P4789240492486274008.correct : P4789240492486274008.Spec := by
  intro n
  simp only [A317189]

end A317189

/-! ## A317189.P10557283970267177702

`(A000123(n)%8)%3`
-/

namespace A317189.P10557283970267177702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000123 n) 8) 3

end

end A317189.P10557283970267177702

namespace A317189

/-- `(A000123(n)%8)%3` -/
def P10557283970267177702.Spec : Prop :=
  ∀ n, P10557283970267177702.a n = A317189 n

end A317189

/-! ## A317189.P1969419295866407228

`A036577(abs(1-n)+1)`
-/

namespace A317189.P1969419295866407228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (|1 - (n : ℤ)| + 1).toNat

end

end A317189.P1969419295866407228

namespace A317189

/-- `A036577(abs(1-n)+1)` -/
def P1969419295866407228.Spec : Prop :=
  ∀ n, P1969419295866407228.a n = A317189 n

end A317189

/-! ## A317189.P16284551948091617863

`A316826(abs(1-n)+1)`
-/

namespace A317189.P16284551948091617863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (|1 - (n : ℤ)| + 1).toNat

end

end A317189.P16284551948091617863

namespace A317189

/-- `A316826(abs(1-n)+1)` -/
def P16284551948091617863.Spec : Prop :=
  ∀ n, P16284551948091617863.a n = A317189 n

end A317189

/-! ## A317189.P9025805299819408755

`2-A036580(abs(1-n))`
-/

namespace A317189.P9025805299819408755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A036580 |1 - (n : ℤ)|.toNat

end

end A317189.P9025805299819408755

namespace A317189

/-- `2-A036580(abs(1-n))` -/
def P9025805299819408755.Spec : Prop :=
  ∀ n, P9025805299819408755.a n = A317189 n

end A317189

/-! ## A317189.P7138226312121063428

`A029883(abs(1-n)+1)+1`
-/

namespace A317189.P7138226312121063428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (|1 - (n : ℤ)| + 1).toNat + 1

end

end A317189.P7138226312121063428

namespace A317189

/-- `A029883(abs(1-n)+1)+1` -/
def P7138226312121063428.Spec : Prop :=
  ∀ n, P7138226312121063428.a n = A317189 n

end A317189

/-! ## A317189.P10299294492307896974

`A001285(n)-char[comp[xor(n, 2*n)]+1]`
-/

namespace A317189.P10299294492307896974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317189.P10299294492307896974

namespace A317189

/-- `A001285(n)-char[comp[xor(n, 2*n)]+1]` -/
def P10299294492307896974.Spec : Prop :=
  ∀ n, P10299294492307896974.a n = A317189 n

end A317189

/-! ## A317189.P4742271327814802030

`A316826(n)-A000038(n)`
-/

namespace A317189.P4742271327814802030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n - A000038 n

end

end A317189.P4742271327814802030

namespace A317189

/-- `A316826(n)-A000038(n)` -/
def P4742271327814802030.Spec : Prop :=
  ∀ n, P4742271327814802030.a n = A317189 n

end A317189

/-! ## A317189.P1609559560811760728

`A316826(n)%A023989(n)`
-/

namespace A317189.P1609559560811760728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316826 n) (A023989 n)

end

end A317189.P1609559560811760728

namespace A317189

/-- `A316826(n)%A023989(n)` -/
def P1609559560811760728.Spec : Prop :=
  ∀ n, P1609559560811760728.a n = A317189 n

end A317189

/-! ## A317189.P11920723949043833344

`and(A048883(n), A316826(n))`
-/

namespace A317189.P11920723949043833344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048883 n) (A316826 n)

end

end A317189.P11920723949043833344

namespace A317189

/-- `and(A048883(n), A316826(n))` -/
def P11920723949043833344.Spec : Prop :=
  ∀ n, P11920723949043833344.a n = A317189 n

end A317189

/-! ## A317189.P16290437039509264521

`and(A049454(n), A316826(n))`
-/

namespace A317189.P16290437039509264521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049454 n) (A316826 n)

end

end A317189.P16290437039509264521

namespace A317189

/-- `and(A049454(n), A316826(n))` -/
def P16290437039509264521.Spec : Prop :=
  ∀ n, P16290437039509264521.a n = A317189 n

end A317189

/-! ## A317189.P8022699685801038104

`and(A053438(n), A316826(n))`
-/

namespace A317189.P8022699685801038104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053438 n) (A316826 n)

end

end A317189.P8022699685801038104

namespace A317189

/-- `and(A053438(n), A316826(n))` -/
def P8022699685801038104.Spec : Prop :=
  ∀ n, P8022699685801038104.a n = A317189 n

end A317189

/-! ## A317189.P17214988671352897510

`and(A071053(n), A316826(n))`
-/

namespace A317189.P17214988671352897510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071053 n) (A316826 n)

end

end A317189.P17214988671352897510

namespace A317189

/-- `and(A071053(n), A316826(n))` -/
def P17214988671352897510.Spec : Prop :=
  ∀ n, P17214988671352897510.a n = A317189 n

end A317189

/-! ## A317189.P11480811766424010172

`and(A080978(n), A316826(n))`
-/

namespace A317189.P11480811766424010172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080978 n) (A316826 n)

end

end A317189.P11480811766424010172

namespace A317189

/-- `and(A080978(n), A316826(n))` -/
def P11480811766424010172.Spec : Prop :=
  ∀ n, P11480811766424010172.a n = A317189 n

end A317189

/-! ## A317189.P2682261570707839384

`and(A125711(n+1), A316826(n))`
-/

namespace A317189.P2682261570707839384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A125711 (n + 1)) (A316826 n)

end

end A317189.P2682261570707839384

namespace A317189

/-- `and(A125711(n+1), A316826(n))` -/
def P2682261570707839384.Spec : Prop :=
  ∀ n, P2682261570707839384.a n = A317189 n

end A317189

/-! ## A317189.P4595905041909507146

`A316826(n)-A316825(n+1)*A316825(n)`
-/

namespace A317189.P4595905041909507146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n - A316825 (n + 1) * A316825 n

end

end A317189.P4595905041909507146

namespace A317189

/-- `A316826(n)-A316825(n+1)*A316825(n)` -/
def P4595905041909507146.Spec : Prop :=
  ∀ n, P4595905041909507146.a n = A317189 n

end A317189

/-! ## A317189.P13731363973215796590

`A277744(2*n+1)%5`
-/

namespace A317189.P13731363973215796590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277744 (2 * n + 1)) 5

end

end A317189.P13731363973215796590

namespace A317189

/-- `A277744(2*n+1)%5` -/
def P13731363973215796590.Spec : Prop :=
  ∀ n, P13731363973215796590.a n = A317189 n

end A317189

/-! ## A317189.P5275171312902271492

`and(A078033(n), A316826(n))`
-/

namespace A317189.P5275171312902271492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078033 n) (A316826 n)

end

end A317189.P5275171312902271492

namespace A317189

/-- `and(A078033(n), A316826(n))` -/
def P5275171312902271492.Spec : Prop :=
  ∀ n, P5275171312902271492.a n = A317189 n

end A317189

/-!
# A317190: Main diagonal of infinite Sudoku-type array A274528.

The programs for A317190, there is no canonical definition to state claims against.
-/

/-! ## A317190.P16523286814711319243

`A274528(∑[4*n])`
-/

namespace A317190.P16523286814711319243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317190.P16523286814711319243

/-! ## A317190.P16381720089829284173

`A274318(n+1)-1`
-/

namespace A317190.P16381720089829284173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274318 (n + 1) - 1

end

end A317190.P16381720089829284173

/-! ## A317190.P5347794736224241729

`A269526(∑[4*n]+1)-1`
-/

namespace A317190.P5347794736224241729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A317190.P5347794736224241729

/-! ## A317190.P4536406233252306901

`A023443(A274318(n+1))`
-/

namespace A317190.P4536406233252306901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274318 (n + 1)).toNat

end

end A317190.P4536406233252306901

/-! ## A317190.P2700695557308735918

`A023444(A274318(n+1)+1)`
-/

namespace A317190.P2700695557308735918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A274318 (n + 1) + 1).toNat

end

end A317190.P2700695557308735918

/-! ## A317190.P9015373032135922549

`A023446(A274318(n+1)+3)`
-/

namespace A317190.P9015373032135922549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A274318 (n + 1) + 3).toNat

end

end A317190.P9015373032135922549

/-! ## A317190.P7794226375204113050

`A140106(2*A274318(n+1))`
-/

namespace A317190.P7794226375204113050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A274318 (n + 1)).toNat

end

end A317190.P7794226375204113050

/-! ## A317190.P18029546641134497301

`A003056(C(A274318(n+1), 2))`
-/

namespace A317190.P18029546641134497301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A274318 (n + 1)).toNat 2)

end

end A317190.P18029546641134497301

/-! ## A317190.P2909561813523688662

`or(char[3], A269526(A001844(n)))-1`
-/

namespace A317190.P2909561813523688662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A269526 (A001844 n).toNat) - 1

end

end A317190.P2909561813523688662

/-! ## A317190.P5385269651737011391

`A274528(A046092(n))%record[or(5, n)-2]`
-/

namespace A317190.P5385269651737011391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274528 (A046092 n).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A317190.P5385269651737011391

/-!
# A317191: Fill an n X n square array T(j,k), 1<=j<=n, 1=k<=n, by antidiagonals upwards in which each term is the least nonnegative integer satisfying the condition that no row, column, diagonal, or antidiagonal contains a repeated term; a(n) = T(n,n).

The programs for A317191, there is no canonical definition to state claims against.
-/

/-! ## A317191.P2729757199645758751

`A308880(∑[(n+1)²])`
-/

namespace A317191.P2729757199645758751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308880 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317191.P2729757199645758751

/-! ## A317191.P13520917462225701641

`A308881(∑[(n+1)²])`
-/

namespace A317191.P13520917462225701641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308881 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317191.P13520917462225701641

/-! ## A317191.P17983361949495806514

`A341210(n+1)%2*A308881(∑[∑[2*n+1]])`
-/

namespace A317191.P17983361949495806514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341210 (n + 1)) 2 * A308881 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317191.P17983361949495806514

/-!
# A317192: A140100(n) - A140102(n).

The programs for A317192, the canonical program `A317192.P13018773747405505076` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317192 has offset 1).

The definition of A317192 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140100, A140102, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A317192.P13018773747405505076

`A140100(n+1)-A140102(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A317192

/-- `A140100(n+1)-A140102(n+1)` -/
def P13018773747405505076.Spec : Prop :=
  ∀ n, P13018773747405505076.a n = A317192 (n + 1)

theorem P13018773747405505076.correct : P13018773747405505076.Spec := by
  intro n
  simp only [A317192, Nat.add_sub_cancel]

end A317192

/-! ## A317192.P6011938822451770942

`A317193(n)+a(n-1)` with `a(0)=0`
-/

namespace A317192.P6011938822451770942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A317193 n + a (n - 1)

end

end A317192.P6011938822451770942

namespace A317192

/-- `A317193(n)+a(n-1)` -/
def P6011938822451770942.Spec : Prop :=
  ∀ n, P6011938822451770942.a n = A317192 (n + 1)

end A317192

/-! ## A317192.P17402599735593786465

`∑[A317193(abs(2-n)+2)]`
-/

namespace A317192.P17402599735593786465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317193 (|2 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317192.P17402599735593786465

namespace A317192

/-- `∑[A317193(abs(2-n)+2)]` -/
def P17402599735593786465.Spec : Prop :=
  ∀ n, P17402599735593786465.a n = A317192 (n + 1)

end A317192

/-! ## A317192.P2839088981547626947

`∑[A277745(n+1)%3-1]`
-/

namespace A317192.P2839088981547626947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277745 (n + 1)) 3 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317192.P2839088981547626947

namespace A317192

/-- `∑[A277745(n+1)%3-1]` -/
def P2839088981547626947.Spec : Prop :=
  ∀ n, P2839088981547626947.a n = A317192 (n + 1)

end A317192

/-! ## A317192.P1124140099819478441

`A276796(n)-A276797(n)`
-/

namespace A317192.P1124140099819478441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 n - A276797 n

end

end A317192.P1124140099819478441

namespace A317192

/-- `A276796(n)-A276797(n)` -/
def P1124140099819478441.Spec : Prop :=
  ∀ n, P1124140099819478441.a n = A317192 (n + 1)

end A317192

/-! ## A317192.P5878059681093318913

`A276796(n)-∑[A276794(n)]`
-/

namespace A317192.P5878059681093318913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317192.P5878059681093318913

namespace A317192

/-- `A276796(n)-∑[A276794(n)]` -/
def P5878059681093318913.Spec : Prop :=
  ∀ n, P5878059681093318913.a n = A317192 (n + 1)

end A317192

/-! ## A317192.P15692750056127085368

`A140101(n+1)%A140102(n+1)`
-/

namespace A317192.P15692750056127085368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140101 (n + 1)) (A140102 (n + 1))

end

end A317192.P15692750056127085368

namespace A317192

/-- `A140101(n+1)%A140102(n+1)` -/
def P15692750056127085368.Spec : Prop :=
  ∀ n, P15692750056127085368.a n = A317192 (n + 1)

end A317192

/-! ## A317192.P8801910460551551687

`A140100(n+1)-∑[A276794(n)+1]`
-/

namespace A317192.P8801910460551551687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276794 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317192.P8801910460551551687

namespace A317192

/-- `A140100(n+1)-∑[A276794(n)+1]` -/
def P8801910460551551687.Spec : Prop :=
  ∀ n, P8801910460551551687.a n = A317192 (n + 1)

end A317192

/-! ## A317192.P9077266178371836419

`∑[A317193(n+1)]-A317193(n+1)`
-/

namespace A317192.P9077266178371836419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A317193 (n + 1)

end

end A317192.P9077266178371836419

namespace A317192

/-- `∑[A317193(n+1)]-A317193(n+1)` -/
def P9077266178371836419.Spec : Prop :=
  ∀ n, P9077266178371836419.a n = A317192 (n + 1)

end A317192

/-! ## A317192.P10848328504340760784

`A140100(n+1)-(n+1)-A276797(n)`
-/

namespace A317192.P10848328504340760784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1) - (n + 1 : ℤ) - A276797 n

end

end A317192.P10848328504340760784

namespace A317192

/-- `A140100(n+1)-(n+1)-A276797(n)` -/
def P10848328504340760784.Spec : Prop :=
  ∀ n, P10848328504340760784.a n = A317192 (n + 1)

end A317192

/-! ## A317192.P955861174610106790

`A140100(n+1)+A276796(n)-A003144(n+1)`
-/

namespace A317192.P955861174610106790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1) + (A276796 n - A003144 (n + 1))

end

end A317192.P955861174610106790

namespace A317192

/-- `A140100(n+1)+A276796(n)-A003144(n+1)` -/
def P955861174610106790.Spec : Prop :=
  ∀ n, P955861174610106790.a n = A317192 (n + 1)

end A317192

/-! ## A317192.P16066171711301844513

`A140100(n+1)+A140100(n+1)-A140101(n+1)`
-/

namespace A317192.P16066171711301844513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1) + (A140100 (n + 1) - A140101 (n + 1))

end

end A317192.P16066171711301844513

namespace A317192

/-- `A140100(n+1)+A140100(n+1)-A140101(n+1)` -/
def P16066171711301844513.Spec : Prop :=
  ∀ n, P16066171711301844513.a n = A317192 (n + 1)

end A317192

/-! ## A317192.P14307943782012415874

`A140103(n+1)-(A140102(n+1)+A140101(n+1))`
-/

namespace A317192.P14307943782012415874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1) - (A140102 (n + 1) + A140101 (n + 1))

end

end A317192.P14307943782012415874

namespace A317192

/-- `A140103(n+1)-(A140102(n+1)+A140101(n+1))` -/
def P14307943782012415874.Spec : Prop :=
  ∀ n, P14307943782012415874.a n = A317192 (n + 1)

theorem P14307943782012415874.correct : P14307943782012415874.Spec := by
  intro n
  simp only [A317192, Nat.add_sub_cancel, A317192.P14307943782012415874.a, A317192.P13018773747405505076.a, A140100, A140100.P9463033727352148210.a, A140101, A140101.P15800623837645593610.f1, A140101.P15800623837645593610.a, A140102, A140102.P7920234187316710791.f1, A140102.P7920234187316710791.a, A140103, A140103.P10507657659334909874.a, A276793, A276793.P6692856727762475709.a, A080843, A080843.P14729485223719297457.a, A092782, A092782.P12994304615251165252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A317192

/-! ## A317192.P3570665790006761952

`A140098(n+1)+A276404(n+1)-A140102(n+1)`
-/

namespace A317192.P3570665790006761952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140098 (n + 1) + (A276404 (n + 1) - A140102 (n + 1))

end

end A317192.P3570665790006761952

namespace A317192

/-- `A140098(n+1)+A276404(n+1)-A140102(n+1)` -/
def P3570665790006761952.Spec : Prop :=
  ∀ n, P3570665790006761952.a n = A317192 (n + 1)

theorem P3570665790006761952.correct : P3570665790006761952.Spec := by
  intro n
  simp only [A317192, Nat.add_sub_cancel, A317192.P3570665790006761952.a, A317192.P13018773747405505076.a, A140098, A140098.P3927488538195493875.a, A140100, A140100.P9463033727352148210.a, A140102, A140102.P7920234187316710791.f1, A140102.P7920234187316710791.a, A276404, A276404.P12576647508726385043.a, A140103, A140103.P10507657659334909874.a, A158919, A158919.P1966360015333059393.a, A184821, A184821.P12244193815727515257.f1, A184821.P12244193815727515257.a, A276793, A276793.P6692856727762475709.a, A080843, A080843.P14729485223719297457.a, A140101, A140101.P15800623837645593610.f1, A140101.P15800623837645593610.a, A092782, A092782.P12994304615251165252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A317192

/-! ## A317192.P154083571497527484

`A276797(A278039(n))-A276797(n)`
-/

namespace A317192.P154083571497527484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A278039 n).toNat - A276797 n

end

end A317192.P154083571497527484

namespace A317192

/-- `A276797(A278039(n))-A276797(n)` -/
def P154083571497527484.Spec : Prop :=
  ∀ n, P154083571497527484.a n = A317192 (n + 1)

end A317192

/-! ## A317192.P1876228914699367589

`A276797(A003144(n+1)-1)-A276797(n)`
-/

namespace A317192.P1876228914699367589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A003144 (n + 1) - 1).toNat - A276797 n

end

end A317192.P1876228914699367589

namespace A317192

/-- `A276797(A003144(n+1)-1)-A276797(n)` -/
def P1876228914699367589.Spec : Prop :=
  ∀ n, P1876228914699367589.a n = A317192 (n + 1)

end A317192

/-! ## A317192.P16680130278265575896

`A276797(A003144(n+1))-A276797(n)`
-/

namespace A317192.P16680130278265575896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A003144 (n + 1)).toNat - A276797 n

end

end A317192.P16680130278265575896

namespace A317192

/-- `A276797(A003144(n+1))-A276797(n)` -/
def P16680130278265575896.Spec : Prop :=
  ∀ n, P16680130278265575896.a n = A317192 (n + 1)

end A317192

/-! ## A317192.P5731109422355248797

`A319198(A003145(n+1))-A003144(n+1)`
-/

namespace A317192.P5731109422355248797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319198 (A003145 (n + 1)).toNat - A003144 (n + 1)

end

end A317192.P5731109422355248797

namespace A317192

/-- `A319198(A003145(n+1))-A003144(n+1)` -/
def P5731109422355248797.Spec : Prop :=
  ∀ n, P5731109422355248797.a n = A317192 (n + 1)

end A317192

/-! ## A317192.P11046037845863217028

`A319198(A003145(n+1))-(A278039(n)+1)`
-/

namespace A317192.P11046037845863217028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319198 (A003145 (n + 1)).toNat - (A278039 n + 1)

end

end A317192.P11046037845863217028

namespace A317192

/-- `A319198(A003145(n+1))-(A278039(n)+1)` -/
def P11046037845863217028.Spec : Prop :=
  ∀ n, P11046037845863217028.a n = A317192 (n + 1)

end A317192

/-!
# A317193: First differences of A317192.

The programs for A317193, the canonical program `A317193.P13677178970524234186` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317193 has offset 1).

The definition of A317193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317193.P12203997944519314484

`Δ[A317192(n+1)]`
-/

namespace A317193.P12203997944519314484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317193.P12203997944519314484

namespace A317193

/-- `Δ[A317192(n+1)]` -/
def P12203997944519314484.Spec : Prop :=
  ∀ n, P12203997944519314484.a n = A317193 (n + 1)

end A317193

/-! ## A317193.P5553458024282296833

`val(Δ[A278040(n)], 2)-1`
-/

namespace A317193.P5553458024282296833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2 : ℤ) - 1

end

end A317193.P5553458024282296833

namespace A317193

/-- `val(Δ[A278040(n)], 2)-1` -/
def P5553458024282296833.Spec : Prop :=
  ∀ n, P5553458024282296833.a n = A317193 (n + 1)

end A317193

/-! ## A317193.P14337468444461329622

`round(sin(A092782(n+1)²))`
-/

namespace A317193.P14337468444461329622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A092782 (n + 1) ^ 2 : ℝ))

end

end A317193.P14337468444461329622

namespace A317193

/-- `round(sin(A092782(n+1)²))` -/
def P14337468444461329622.Spec : Prop :=
  ∀ n, P14337468444461329622.a n = A317193 (n + 1)

end A317193

/-! ## A317193.P12290227081151367416

`(A080843(n)+2)%3-1`
-/

namespace A317193.P12290227081151367416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080843 n + 2) 3 - 1

end

end A317193.P12290227081151367416

namespace A317193

/-- `(A080843(n)+2)%3-1` -/
def P12290227081151367416.Spec : Prop :=
  ∀ n, P12290227081151367416.a n = A317193 (n + 1)

end A317193

/-! ## A317193.P16104321054352878363

`val(A276789(n+1), 2)-1`
-/

namespace A317193.P16104321054352878363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A276789 (n + 1)).toNat 2 : ℤ) - 1

end

end A317193.P16104321054352878363

namespace A317193

/-- `val(A276789(n+1), 2)-1` -/
def P16104321054352878363.Spec : Prop :=
  ∀ n, P16104321054352878363.a n = A317193 (n + 1)

end A317193

/-! ## A317193.P2337219091760614361

`A011646(A356898(n))`
-/

namespace A317193.P2337219091760614361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011646 (A356898 n).toNat

end

end A317193.P2337219091760614361

namespace A317193

/-- `A011646(A356898(n))` -/
def P2337219091760614361.Spec : Prop :=
  ∀ n, P2337219091760614361.a n = A317193 (n + 1)

end A317193

/-! ## A317193.P7161230015257274006

`A062160(Δ[A278040(n)])`
-/

namespace A317193.P7161230015257274006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062160 (f1 (n + 1) - f1 n).toNat

end

end A317193.P7161230015257274006

namespace A317193

/-- `A062160(Δ[A278040(n)])` -/
def P7161230015257274006.Spec : Prop :=
  ∀ n, P7161230015257274006.a n = A317193 (n + 1)

end A317193

/-! ## A317193.P15080222386064667699

`A011646(A278045(n+1))`
-/

namespace A317193.P15080222386064667699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011646 (A278045 (n + 1)).toNat

end

end A317193.P15080222386064667699

namespace A317193

/-- `A011646(A278045(n+1))` -/
def P15080222386064667699.Spec : Prop :=
  ∀ n, P15080222386064667699.a n = A317193 (n + 1)

end A317193

/-! ## A317193.P18004838650772544633

`A057078(2*A356898(n))`
-/

namespace A317193.P18004838650772544633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (2 * A356898 n).toNat

end

end A317193.P18004838650772544633

namespace A317193

/-- `A057078(2*A356898(n))` -/
def P18004838650772544633.Spec : Prop :=
  ∀ n, P18004838650772544633.a n = A317193 (n + 1)

end A317193

/-! ## A317193.P2501169329775679726

`-A008683(Δ[A278041(n)])`
-/

namespace A317193.P2501169329775679726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (f1 (n + 1) - f1 n).toNat

end

end A317193.P2501169329775679726

namespace A317193

/-- `-A008683(Δ[A278041(n)])` -/
def P2501169329775679726.Spec : Prop :=
  ∀ n, P2501169329775679726.a n = A317193 (n + 1)

end A317193

/-! ## A317193.P1941926809602149095

`-A074290(Δ[A278040(n)])`
-/

namespace A317193.P1941926809602149095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A074290 (f1 (n + 1) - f1 n).toNat

end

end A317193.P1941926809602149095

namespace A317193

/-- `-A074290(Δ[A278040(n)])` -/
def P1941926809602149095.Spec : Prop :=
  ∀ n, P1941926809602149095.a n = A317193 (n + 1)

end A317193

/-! ## A317193.P6754575288820835034

`A103226(Δ[A278040(n)]²)`
-/

namespace A317193.P6754575288820835034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103226 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A317193.P6754575288820835034

namespace A317193

/-- `A103226(Δ[A278040(n)]²)` -/
def P6754575288820835034.Spec : Prop :=
  ∀ n, P6754575288820835034.a n = A317193 (n + 1)

end A317193

/-! ## A317193.P10011155094149239944

`A007318(Δ[A278041(n)])-2`
-/

namespace A317193.P10011155094149239944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (n + 1) - f1 n).toNat - 2

end

end A317193.P10011155094149239944

namespace A317193

/-- `A007318(Δ[A278041(n)])-2` -/
def P10011155094149239944.Spec : Prop :=
  ∀ n, P10011155094149239944.a n = A317193 (n + 1)

end A317193

/-! ## A317193.P10647125039636302457

`A214180(Δ[A278040(n)])-2`
-/

namespace A317193.P10647125039636302457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214180 (f1 (n + 1) - f1 n).toNat - 2

end

end A317193.P10647125039636302457

namespace A317193

/-- `A214180(Δ[A278040(n)])-2` -/
def P10647125039636302457.Spec : Prop :=
  ∀ n, P10647125039636302457.a n = A317193 (n + 1)

end A317193

/-! ## A317193.P14322039751784407735

`3-A000005(Δ[A278041(n)])`
-/

namespace A317193.P14322039751784407735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000005 (f1 (n + 1) - f1 n).toNat

end

end A317193.P14322039751784407735

namespace A317193

/-- `3-A000005(Δ[A278041(n)])` -/
def P14322039751784407735.Spec : Prop :=
  ∀ n, P14322039751784407735.a n = A317193 (n + 1)

end A317193

/-! ## A317193.P14876327996687431301

`Δ[A276796(n)-A276797(n)]`
-/

namespace A317193.P14876327996687431301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 n - A276797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317193.P14876327996687431301

namespace A317193

/-- `Δ[A276796(n)-A276797(n)]` -/
def P14876327996687431301.Spec : Prop :=
  ∀ n, P14876327996687431301.a n = A317193 (n + 1)

end A317193

/-! ## A317193.P13677178970524234186

`A057078(2*A278045(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A317193

/-- `A057078(2*A278045(n+1))` -/
def P13677178970524234186.Spec : Prop :=
  ∀ n, P13677178970524234186.a n = A317193 (n + 1)

theorem P13677178970524234186.correct : P13677178970524234186.Spec := by
  intro n
  simp only [A317193, Nat.add_sub_cancel]

end A317193

/-! ## A317193.P11573834258303786214

`-A008683(Δ[A003146(n+1)])`
-/

namespace A317193.P11573834258303786214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (f1 (n + 1) - f1 n).toNat

end

end A317193.P11573834258303786214

namespace A317193

/-- `-A008683(Δ[A003146(n+1)])` -/
def P11573834258303786214.Spec : Prop :=
  ∀ n, P11573834258303786214.a n = A317193 (n + 1)

end A317193

/-! ## A317193.P9086174292302897515

`A008683(Δ[A003145(n+1)]+2)`
-/

namespace A317193.P9086174292302897515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n + 2).toNat

end

end A317193.P9086174292302897515

namespace A317193

/-- `A008683(Δ[A003145(n+1)]+2)` -/
def P9086174292302897515.Spec : Prop :=
  ∀ n, P9086174292302897515.a n = A317193 (n + 1)

end A317193

/-! ## A317193.P1307979280709661597

`A007318(Δ[A003146(n+1)])-2`
-/

namespace A317193.P1307979280709661597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (n + 1) - f1 n).toNat - 2

end

end A317193.P1307979280709661597

namespace A317193

/-- `A007318(Δ[A003146(n+1)])-2` -/
def P1307979280709661597.Spec : Prop :=
  ∀ n, P1307979280709661597.a n = A317193 (n + 1)

end A317193

/-!
# A317198: Yet another version of the ternary tribonacci word: fixed point of the morphism 1 -> 1,0; 0 -> 1,-1; -1 -> 1; starting from a(0) = 1.

The programs for A317198, the canonical program `A317198.P16178072195932306559` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317198 has offset 0).

The definition of A317198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317198.P9835094345703522988

`1-A080843(n)`
-/

namespace A317198.P9835094345703522988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080843 n

end

end A317198.P9835094345703522988

namespace A317198

/-- `1-A080843(n)` -/
def P9835094345703522988.Spec : Prop :=
  ∀ n, P9835094345703522988.a n = A317198 n

theorem P9835094345703522988.correct : P9835094345703522988.Spec := by
  intro n
  simp only [A317198, Nat.add_sub_cancel, A317198.P9835094345703522988.a, A317198.P16178072195932306559.a, A080843, A080843.P14729485223719297457.a, A317193, A317193.P13677178970524234186.a, A057078, A057078.P1741063947389819901.a, A092782, A092782.P12994304615251165252.a, A278045, A278045.P7038591754817271268.a, A000038, A000038.P13734959004655594922.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A317198

/-! ## A317198.P14534898644867787249

`Δ[A278040(n)]-3`
-/

namespace A317198.P14534898644867787249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A317198.P14534898644867787249

namespace A317198

/-- `Δ[A278040(n)]-3` -/
def P14534898644867787249.Spec : Prop :=
  ∀ n, P14534898644867787249.a n = A317198 n

end A317198

/-! ## A317198.P16317479198019208105

`round(sin(Δ[A278041(n)]))`
-/

namespace A317198.P16317479198019208105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (f1 (n + 1) - f1 n : ℝ))

end

end A317198.P16317479198019208105

namespace A317198

/-- `round(sin(Δ[A278041(n)]))` -/
def P16317479198019208105.Spec : Prop :=
  ∀ n, P16317479198019208105.a n = A317198 n

end A317198

/-! ## A317198.P3125869823075162510

`2-A092782(n+1)`
-/

namespace A317198.P3125869823075162510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A092782 (n + 1)

end

end A317198.P3125869823075162510

namespace A317198

/-- `2-A092782(n+1)` -/
def P3125869823075162510.Spec : Prop :=
  ∀ n, P3125869823075162510.a n = A317198 n

theorem P3125869823075162510.correct : P3125869823075162510.Spec := by
  intro n
  simp only [A317198, Nat.add_sub_cancel, A317198.P3125869823075162510.a, A317198.P16178072195932306559.a, A092782, A092782.P12994304615251165252.a, A317193, A317193.P13677178970524234186.a, A057078, A057078.P1741063947389819901.a, A278045, A278045.P7038591754817271268.a, A000038, A000038.P13734959004655594922.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A317198

/-! ## A317198.P7740207521132049003

`A276789(n+1)-3`
-/

namespace A317198.P7740207521132049003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276789 (n + 1) - 3

end

end A317198.P7740207521132049003

namespace A317198

/-- `A276789(n+1)-3` -/
def P7740207521132049003.Spec : Prop :=
  ∀ n, P7740207521132049003.a n = A317198 n

end A317198

/-! ## A317198.P17626236273289647121

`A305394(n+1)-4`
-/

namespace A317198.P17626236273289647121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305394 (n + 1) - 4

end

end A317198.P17626236273289647121

namespace A317198

/-- `A305394(n+1)-4` -/
def P17626236273289647121.Spec : Prop :=
  ∀ n, P17626236273289647121.a n = A317198 n

end A317198

/-! ## A317198.P18084443051353891287

`Δ[A003145(n+1)]-3`
-/

namespace A317198.P18084443051353891287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A317198.P18084443051353891287

namespace A317198

/-- `Δ[A003145(n+1)]-3` -/
def P18084443051353891287.Spec : Prop :=
  ∀ n, P18084443051353891287.a n = A317198 n

end A317198

/-! ## A317198.P17394872241377568347

`Δ[A140103(n+1)]-4`
-/

namespace A317198.P17394872241377568347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4

end

end A317198.P17394872241377568347

namespace A317198

/-- `Δ[A140103(n+1)]-4` -/
def P17394872241377568347.Spec : Prop :=
  ∀ n, P17394872241377568347.a n = A317198 n

end A317198

/-! ## A317198.P16992721273522384568

`round(sin(Δ[A003146(n+1)]))`
-/

namespace A317198.P16992721273522384568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (f1 (n + 1) - f1 n : ℝ))

end

end A317198.P16992721273522384568

namespace A317198

/-- `round(sin(Δ[A003146(n+1)]))` -/
def P16992721273522384568.Spec : Prop :=
  ∀ n, P16992721273522384568.a n = A317198 n

end A317198

/-! ## A317198.P17688797725714109882

`1-val(A276792(n+1), 2)`
-/

namespace A317198.P17688797725714109882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (A276792 (n + 1)).toNat 2 : ℤ)

end

end A317198.P17688797725714109882

namespace A317198

/-- `1-val(A276792(n+1), 2)` -/
def P17688797725714109882.Spec : Prop :=
  ∀ n, P17688797725714109882.a n = A317198 n

end A317198

/-! ## A317198.P16178072195932306559

`1-(A317193(n+1)+17)%3`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A317198

/-- `1-(A317193(n+1)+17)%3` -/
def P16178072195932306559.Spec : Prop :=
  ∀ n, P16178072195932306559.a n = A317198 n

theorem P16178072195932306559.correct : P16178072195932306559.Spec := by
  intro n
  simp only [A317198]

end A317198

/-! ## A317198.P8248539602407605561

`A057078(A356898(n))`
-/

namespace A317198.P8248539602407605561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A356898 n).toNat

end

end A317198.P8248539602407605561

namespace A317198

/-- `A057078(A356898(n))` -/
def P8248539602407605561.Spec : Prop :=
  ∀ n, P8248539602407605561.a n = A317198 n

end A317198

/-! ## A317198.P8014268793837131187

`A000494(Δ[A278041(n)])`
-/

namespace A317198.P8014268793837131187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000494 (f1 (n + 1) - f1 n).toNat

end

end A317198.P8014268793837131187

namespace A317198

/-- `A000494(Δ[A278041(n)])` -/
def P8014268793837131187.Spec : Prop :=
  ∀ n, P8014268793837131187.a n = A317198 n

end A317198

/-! ## A317198.P10211351914431785756

`A004173(Δ[A278040(n)])`
-/

namespace A317198.P10211351914431785756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004173 (f1 (n + 1) - f1 n).toNat

end

end A317198.P10211351914431785756

namespace A317198

/-- `A004173(Δ[A278040(n)])` -/
def P10211351914431785756.Spec : Prop :=
  ∀ n, P10211351914431785756.a n = A317198 n

end A317198

/-! ## A317198.P12757385005003790662

`A007432(Δ[A278040(n)])`
-/

namespace A317198.P12757385005003790662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007432 (f1 (n + 1) - f1 n).toNat

end

end A317198.P12757385005003790662

namespace A317198

/-- `A007432(Δ[A278040(n)])` -/
def P12757385005003790662.Spec : Prop :=
  ∀ n, P12757385005003790662.a n = A317198 n

end A317198

/-! ## A317198.P7424950897853799304

`A014141(Δ[A278040(n)])`
-/

namespace A317198.P7424950897853799304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014141 (f1 (n + 1) - f1 n).toNat

end

end A317198.P7424950897853799304

namespace A317198

/-- `A014141(Δ[A278040(n)])` -/
def P7424950897853799304.Spec : Prop :=
  ∀ n, P7424950897853799304.a n = A317198 n

end A317198

/-! ## A317198.P13862950319596803515

`A057078(A278045(n+1))`
-/

namespace A317198.P13862950319596803515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A278045 (n + 1)).toNat

end

end A317198.P13862950319596803515

namespace A317198

/-- `A057078(A278045(n+1))` -/
def P13862950319596803515.Spec : Prop :=
  ∀ n, P13862950319596803515.a n = A317198 n

end A317198

/-! ## A317198.P12077421696284405336

`A011646(2*A356898(n))`
-/

namespace A317198.P12077421696284405336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011646 (2 * A356898 n).toNat

end

end A317198.P12077421696284405336

namespace A317198

/-- `A011646(2*A356898(n))` -/
def P12077421696284405336.Spec : Prop :=
  ∀ n, P12077421696284405336.a n = A317198 n

end A317198

/-! ## A317198.P7627013811317941141

`A011646(2*A278045(n+1))`
-/

namespace A317198.P7627013811317941141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011646 (2 * A278045 (n + 1)).toNat

end

end A317198.P7627013811317941141

namespace A317198

/-- `A011646(2*A278045(n+1))` -/
def P7627013811317941141.Spec : Prop :=
  ∀ n, P7627013811317941141.a n = A317198 n

end A317198

