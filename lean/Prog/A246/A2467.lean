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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A246701: First differences of A246520.

The programs for A246701, there is no canonical definition to state claims against.
-/

/-! ## A246701.P16469338049281726541

`Δ[A246520(n)]`
-/

namespace A246701.P16469338049281726541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A246701.P16469338049281726541

/-! ## A246701.P5639691111582292551

`A246520(n+1)-A246520(n)`
-/

namespace A246701.P5639691111582292551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246520 (n + 1) - A246520 n

end

end A246701.P5639691111582292551

/-!
# A246702: The number of positive k < (2n-1)^2 such that (2^k - 1)/(2n - 1)^2 is an integer.

The programs for A246702, there is no canonical definition to state claims against.
-/

/-! ## A246702.P1497221913731703787

`floor(4*(n+1)*n/A002326(2*(n+1)*n))`
-/

namespace A246702.P1497221913731703787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * (n + 1) * n : ℚ) / (A002326 (2 * (n + 1) * n) : ℚ)⌋

end

end A246702.P1497221913731703787

/-! ## A246702.P1764214661205964238

`floor((2*n+1)²/A204987((2*n+1)²))`
-/

namespace A246702.P1764214661205964238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1) ^ 2 : ℚ) / (A204987 ((2 * n + 1) ^ 2) : ℚ)⌋

end

end A246702.P1764214661205964238

/-! ## A246702.P11355107711228131182

`A193581(n)+A067029((n+1)*Δ[n^3])`
-/

namespace A246702.P11355107711228131182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n + A067029 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A246702.P11355107711228131182

/-! ## A246702.P14485539340911521147

`A051903(n+1)*A144790(A008862(n))`
-/

namespace A246702.P14485539340911521147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) * A144790 (A008862 n).toNat

end

end A246702.P14485539340911521147

/-! ## A246702.P8188128218777855120

`A067029(n+1)*A144790(A008862(n))`
-/

namespace A246702.P8188128218777855120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1) * A144790 (A008862 n).toNat

end

end A246702.P8188128218777855120

/-!
# A246704: Fixed points of permutations A113963, A246433.

The programs for A246704, there is no canonical definition to state claims against.
-/

/-! ## A246704.P7463751082747077364

`eq[n+1, A113963(n+1)]+1`
-/

namespace A246704.P7463751082747077364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246704.P7463751082747077364

/-! ## A246704.P8556822120285935437

`eq[n+1, A246433(n+1)]+1`
-/

namespace A246704.P8556822120285935437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246433 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246704.P8556822120285935437

/-! ## A246704.P18140758090593829220

`eq[n, A113963(A000007(n)+n)]`
-/

namespace A246704.P18140758090593829220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113963 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246704.P18140758090593829220

/-! ## A246704.P10297663825082734297

`eq[n, A246433(A000007(n)+n)]`
-/

namespace A246704.P10297663825082734297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246433 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246704.P10297663825082734297

/-! ## A246704.P5149141276539493548

`eq[n, A113963(A065033(2*n))]`
-/

namespace A246704.P5149141276539493548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113963 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246704.P5149141276539493548

/-! ## A246704.P12627444336823703659

`eq[n, A113963(A123108(2*n))]`
-/

namespace A246704.P12627444336823703659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113963 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246704.P12627444336823703659

/-!
# A246705: Position of first n in A246694 (read as sequence with offset changed to 1); complement of A246706.

The programs for A246705, there is no canonical definition to state claims against.
-/

/-! ## A246705.P478017491597275922

`∑[2-Δ[round(sqrt(n))]]`
-/

namespace A246705.P478017491597275922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246705.P478017491597275922

/-! ## A246705.P18149326032304214215

`abs(∑[char[2*C(n, 2)]-2])`
-/

namespace A246705.P18149326032304214215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A246705.P18149326032304214215

/-! ## A246705.P16337233942115237980

`-∑[char[2*C(n, 2)]-2]`
-/

namespace A246705.P16337233942115237980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246705.P16337233942115237980

/-! ## A246705.P1558145018401470211

`abs(∑[2-char[lcm(n, n+1)]])`
-/

namespace A246705.P1558145018401470211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A246705.P1558145018401470211

/-! ## A246705.P18313087404016635036

`record[xor(3, n)]-(comp[n²]+n)`
-/

namespace A246705.P18313087404016635036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n : ℤ)

end

end A246705.P18313087404016635036

/-! ## A246705.P6705933478150987399

`record[xor(3, n)]-n-comp[n²]`
-/

namespace A246705.P6705933478150987399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A246705.P6705933478150987399

/-! ## A246705.P5735821144589255001

`record[xor(3, n)]%(comp[n²]+n)`
-/

namespace A246705.P5735821144589255001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n)

end

end A246705.P5735821144589255001

/-! ## A246705.P9833669015474572564

`round(2*(n+1)-sqrt(or(1, n)))`
-/

namespace A246705.P9833669015474572564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * (n + 1) : ℝ) - Real.sqrt (Nat.lor 1 n : ℝ))

end

end A246705.P9833669015474572564

/-! ## A246705.P15998534354665103001

`comp[comp[2*C(n+2, 2)]+n]`
-/

namespace A246705.P15998534354665103001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n + 2) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A246705.P15998534354665103001

/-! ## A246705.P10646691760135828379

`(2*n+3)%comp[n²]+n`
-/

namespace A246705.P10646691760135828379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n

end

end A246705.P10646691760135828379

/-!
# A246706: Position of last n in A246694 (read as a sequence, with offset changed to 1); complement of A246705.

The programs for A246706, there is no canonical definition to state claims against.
-/

/-! ## A246706.P2081814800438210917

`∑[char[(n+1)²]+2]`
-/

namespace A246706.P2081814800438210917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246706.P2081814800438210917

/-! ## A246706.P9518858102809803380

`∑[or(2, char[n²])]-1`
-/

namespace A246706.P9518858102809803380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A246706.P9518858102809803380

/-! ## A246706.P1137158667784153131

`∑[xor(2, char[n²])]-1`
-/

namespace A246706.P1137158667784153131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A246706.P1137158667784153131

/-! ## A246706.P10377889774132752701

`comp[2*n-dr(round(sqrt(n)))]`
-/

namespace A246706.P10377889774132752701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246706.P10377889774132752701

/-! ## A246706.P10568925054304489072

`comp[2*C(n, 2)]+1+n`
-/

namespace A246706.P10568925054304489072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 + n

end

end A246706.P10568925054304489072

/-! ## A246706.P10268216442043736205

`comp[lcm(n, n+1)]+1+n`
-/

namespace A246706.P10268216442043736205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 + n

end

end A246706.P10268216442043736205

/-! ## A246706.P17404193496939958950

`comp[∑[2*dr(n)]]+n+1`
-/

namespace A246706.P17404193496939958950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.digitalRoot (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1)

end

end A246706.P17404193496939958950

/-! ## A246706.P7606115374293593459

`comp[dr(n)+n²]+n+1`
-/

namespace A246706.P7606115374293593459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ) + n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1)

end

end A246706.P7606115374293593459

/-!
# A246712: Expansion of chi(x^2) / phi(x) in powers of x where phi(), chi() are Ramanujan theta functions.

The programs for A246712, there is no canonical definition to state claims against.
-/

/-! ## A246712.P10544015680095322700

`A033999(A000129(n))*A279476(n)`
-/

namespace A246712.P10544015680095322700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000129 n).toNat * A279476 n

end

end A246712.P10544015680095322700

/-! ## A246712.P17426731822864070950

`A033999(A174191(n)+1)*A279476(n)`
-/

namespace A246712.P17426731822864070950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A174191 n + 1).toNat * A279476 n

end

end A246712.P17426731822864070950

/-! ## A246712.P4786513701931022305

`A033999(A002965(2*n))*A279476(n)`
-/

namespace A246712.P4786513701931022305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002965 (2 * n)).toNat * A279476 n

end

end A246712.P4786513701931022305

/-! ## A246712.P8424200360170727862

`A033999(A135153(2*n))*A279476(n)`
-/

namespace A246712.P8424200360170727862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A135153 (2 * n)).toNat * A279476 n

end

end A246712.P8424200360170727862

/-! ## A246712.P2218665234727768221

`A033999(A249576(3*n))*A279476(n)`
-/

namespace A246712.P2218665234727768221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A249576 (3 * n)).toNat * A279476 n

end

end A246712.P2218665234727768221

/-!
# A246714: Catalan(n) mod prime(n).

The programs for A246714, the canonical program `A246714.P13933629134445050731` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246714 has offset 1).

The definition of A246714 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n+1)%A000040(n+1)` (program `A246714.P13933629134445050731`, by `A246714.P13933629134445050731.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246714.P13933629134445050731

`A000108(n+1)%A000040(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A246714

/-- `A000108(n+1)%A000040(n+1)` -/
def P13933629134445050731.Spec : Prop :=
  ∀ n, P13933629134445050731.a n = A246714 (n + 1)

theorem P13933629134445050731.correct : P13933629134445050731.Spec := by
  intro n
  simp only [A246714, Nat.add_sub_cancel]

end A246714

/-! ## A246714.P14752145516247954975

`record[A126120(n)]%p?[A056847(n)]`
-/

namespace A246714.P14752145516247954975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A246714.P14752145516247954975

namespace A246714

/-- `record[A126120(n)]%p?[A056847(n)]` -/
def P14752145516247954975.Spec : Prop :=
  ∀ n, P14752145516247954975.a n = A246714 (n + 1)

end A246714

/-! ## A246714.P16338739907921837781

`∑[A071724(n)]%A000040(n+1)`
-/

namespace A246714.P16338739907921837781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1))

end

end A246714.P16338739907921837781

namespace A246714

/-- `∑[A071724(n)]%A000040(n+1)` -/
def P16338739907921837781.Spec : Prop :=
  ∀ n, P16338739907921837781.a n = A246714 (n + 1)

end A246714

/-! ## A246714.P8101034048380238045

`A000108(n+1)%Δ[A007504(n)]`
-/

namespace A246714.P8101034048380238045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (n + 1)) (f1 (n + 1) - f1 n)

end

end A246714.P8101034048380238045

namespace A246714

/-- `A000108(n+1)%Δ[A007504(n)]` -/
def P8101034048380238045.Spec : Prop :=
  ∀ n, P8101034048380238045.a n = A246714 (n + 1)

end A246714

/-! ## A246714.P1624077006060300686

`record[A097331(n)]%A000040(n+1)`
-/

namespace A246714.P1624077006060300686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000040 (n + 1))

end

end A246714.P1624077006060300686

namespace A246714

/-- `record[A097331(n)]%A000040(n+1)` -/
def P1624077006060300686.Spec : Prop :=
  ∀ n, P1624077006060300686.a n = A246714 (n + 1)

end A246714

/-! ## A246714.P5099641222821893913

`A120588(n+2)%record[A014963(n+2)]`
-/

namespace A246714.P5099641222821893913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120588 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A246714.P5099641222821893913

namespace A246714

/-- `A120588(n+2)%record[A014963(n+2)]` -/
def P5099641222821893913.Spec : Prop :=
  ∀ n, P5099641222821893913.a n = A246714 (n + 1)

end A246714

/-! ## A246714.P12050834455759437538

`A028304(2*(n+1))%(A006093(n+1)+1)`
-/

namespace A246714.P12050834455759437538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028304 (2 * (n + 1))) (A006093 (n + 1) + 1)

end

end A246714.P12050834455759437538

namespace A246714

/-- `A028304(2*(n+1))%(A006093(n+1)+1)` -/
def P12050834455759437538.Spec : Prop :=
  ∀ n, P12050834455759437538.a n = A246714 (n + 1)

end A246714

/-! ## A246714.P928222490332991433

`A208355(2*(n+1))%p?[A004396(2*n+1)]`
-/

namespace A246714.P928222490332991433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208355 (2 * (n + 1))) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A246714.P928222490332991433

namespace A246714

/-- `A208355(2*(n+1))%p?[A004396(2*n+1)]` -/
def P928222490332991433.Spec : Prop :=
  ∀ n, P928222490332991433.a n = A246714 (n + 1)

end A246714

/-! ## A246714.P15425290622204744583

`Δ[A014138(n)]%p?[A080412(n)]`
-/

namespace A246714.P15425290622204744583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A246714.P15425290622204744583

namespace A246714

/-- `Δ[A014138(n)]%p?[A080412(n)]` -/
def P15425290622204744583.Spec : Prop :=
  ∀ n, P15425290622204744583.a n = A246714 (n + 1)

end A246714

/-! ## A246714.P1993841667594909764

`record[A099364(n)]%A000040(n+1)`
-/

namespace A246714.P1993841667594909764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000040 (n + 1))

end

end A246714.P1993841667594909764

namespace A246714

/-- `record[A099364(n)]%A000040(n+1)` -/
def P1993841667594909764.Spec : Prop :=
  ∀ n, P1993841667594909764.a n = A246714 (n + 1)

end A246714

/-!
# A246715: n * Lucas(n) - (n - 1) * Lucas(n - 1).

The programs for A246715, the canonical program `A246715.P16388899273282703802` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246715 has offset 1).

The definition of A246715 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000032(n+1)-n*A000032(n)` (program `A246715.P16388899273282703802`, by `A246715.P16388899273282703802.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246715.P12341407730578996730

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=6, a(3)=16`
-/

namespace A246715.P12341407730578996730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 6, 16] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A246715.P12341407730578996730

namespace A246715

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P12341407730578996730.Spec : Prop :=
  ∀ n, P12341407730578996730.a n = A246715 (n + 1)

end A246715

/-! ## A246715.P16388899273282703802

`(n+1)*A000032(n+1)-n*A000032(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A246715

/-- `(n+1)*A000032(n+1)-n*A000032(n)` -/
def P16388899273282703802.Spec : Prop :=
  ∀ n, P16388899273282703802.a n = A246715 (n + 1)

theorem P16388899273282703802.correct : P16388899273282703802.Spec := by
  intro n
  simp only [A246715, Nat.add_sub_cancel]

end A246715

/-! ## A246715.P14403907518881364699

`ogf((1+3x-5x^2+x^3)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A246715.P14403907518881364699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -5, 1] [1, -2, -1, 2, 1] n

end

end A246715.P14403907518881364699

namespace A246715

/-- `ogf((1+3x-5x^2+x^3)/(1-2x-x^2+2x^3+x^4))` -/
def P14403907518881364699.Spec : Prop :=
  ∀ n, P14403907518881364699.a n = A246715 (n + 1)

end A246715

/-! ## A246715.P5620863679913433219

`A000204(n+1)+n*Δ[A000211(n)]`
-/

namespace A246715.P5620863679913433219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) + (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A246715.P5620863679913433219

namespace A246715

/-- `A000204(n+1)+n*Δ[A000211(n)]` -/
def P5620863679913433219.Spec : Prop :=
  ∀ n, P5620863679913433219.a n = A246715 (n + 1)

end A246715

/-! ## A246715.P13931916929635387723

`A000204(n+1)+n*Δ[A001612(n)]`
-/

namespace A246715.P13931916929635387723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) + (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A246715.P13931916929635387723

namespace A246715

/-- `A000204(n+1)+n*Δ[A001612(n)]` -/
def P13931916929635387723.Spec : Prop :=
  ∀ n, P13931916929635387723.a n = A246715 (n + 1)

end A246715

/-! ## A246715.P3844592013161895263

`A000032(n+1)+n*A329723(n+1)`
-/

namespace A246715.P3844592013161895263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + (n : ℤ) * A329723 (n + 1)

end

end A246715.P3844592013161895263

namespace A246715

/-- `A000032(n+1)+n*A329723(n+1)` -/
def P3844592013161895263.Spec : Prop :=
  ∀ n, P3844592013161895263.a n = A246715 (n + 1)

end A246715

/-! ## A246715.P169401940482609151

`A000032(n+1)+n*A000032(abs(1-n))`
-/

namespace A246715.P169401940482609151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + (n : ℤ) * A000032 |1 - (n : ℤ)|.toNat

end

end A246715.P169401940482609151

namespace A246715

/-- `A000032(n+1)+n*A000032(abs(1-n))` -/
def P169401940482609151.Spec : Prop :=
  ∀ n, P169401940482609151.a n = A246715 (n + 1)

end A246715

/-! ## A246715.P14521477634096001735

`A007502(n+1)+A099920(n)-A264147(n)`
-/

namespace A246715.P14521477634096001735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007502 (n + 1) + (A099920 n - A264147 n)

end

end A246715.P14521477634096001735

namespace A246715

/-- `A007502(n+1)+A099920(n)-A264147(n)` -/
def P14521477634096001735.Spec : Prop :=
  ∀ n, P14521477634096001735.a n = A246715 (n + 1)

end A246715

/-! ## A246715.P4553345321060028690

`A094588(n+1)+A045925(n)-A264147(n)`
-/

namespace A246715.P4553345321060028690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 (n + 1) + (A045925 n - A264147 n)

end

end A246715.P4553345321060028690

namespace A246715

/-- `A094588(n+1)+A045925(n)-A264147(n)` -/
def P4553345321060028690.Spec : Prop :=
  ∀ n, P4553345321060028690.a n = A246715 (n + 1)

end A246715

/-! ## A246715.P2028538605021819716

`A094588(n+1)+A094588(n+1)-A136391(n+1)`
-/

namespace A246715.P2028538605021819716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 (n + 1) + (A094588 (n + 1) - A136391 (n + 1))

end

end A246715.P2028538605021819716

namespace A246715

/-- `A094588(n+1)+A094588(n+1)-A136391(n+1)` -/
def P2028538605021819716.Spec : Prop :=
  ∀ n, P2028538605021819716.a n = A246715 (n + 1)

end A246715

/-! ## A246715.P802636296089889940

`A136376(n+1)-2*A264147(n)`
-/

namespace A246715.P802636296089889940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136376 (n + 1) - 2 * A264147 n

end

end A246715.P802636296089889940

namespace A246715

/-- `A136376(n+1)-2*A264147(n)` -/
def P802636296089889940.Spec : Prop :=
  ∀ n, P802636296089889940.a n = A246715 (n + 1)

end A246715

/-! ## A246715.P11700056615077193902

`A354044(n+1)-(A264147(n)+A136391(n+1))`
-/

namespace A246715.P11700056615077193902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354044 (n + 1) - (A264147 n + A136391 (n + 1))

end

end A246715.P11700056615077193902

namespace A246715

/-- `A354044(n+1)-(A264147(n)+A136391(n+1))` -/
def P11700056615077193902.Spec : Prop :=
  ∀ n, P11700056615077193902.a n = A246715 (n + 1)

end A246715

/-! ## A246715.P3052005387687124000

`A088209(n+1)-(A136391(n+1)+A136391(n+1))`
-/

namespace A246715.P3052005387687124000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088209 (n + 1) - (A136391 (n + 1) + A136391 (n + 1))

end

end A246715.P3052005387687124000

namespace A246715

/-- `A088209(n+1)-(A136391(n+1)+A136391(n+1))` -/
def P3052005387687124000.Spec : Prop :=
  ∀ n, P3052005387687124000.a n = A246715 (n + 1)

end A246715

/-! ## A246715.P7696904334378168713

`Δ[n*Δ[round(ϕ^(n+1))]]`
-/

namespace A246715.P7696904334378168713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A246715.P7696904334378168713

namespace A246715

/-- `Δ[n*Δ[round(ϕ^(n+1))]]` -/
def P7696904334378168713.Spec : Prop :=
  ∀ n, P7696904334378168713.a n = A246715 (n + 1)

end A246715

/-! ## A246715.P15821809321092437337

`2*Δ[A146005(n)/2]`
-/

namespace A246715.P15821809321092437337
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146005 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A246715.P15821809321092437337

namespace A246715

/-- `2*Δ[A146005(n)/2]` -/
def P15821809321092437337.Spec : Prop :=
  ∀ n, P15821809321092437337.a n = (A246715 (n + 1) : ℚ)

theorem P15821809321092437337.correct : P15821809321092437337.Spec := by
  intro n
  simp only [A246715, Nat.add_sub_cancel, A246715.P15821809321092437337.f1, A246715.P15821809321092437337.a, A246715.P16388899273282703802.a, A000032, A000032.P8352177345629330861.a, A146005, A146005.P6209391916366834839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246715

/-! ## A246715.P10693234944599875933

`A146005(n+1)-A146005(n)`
-/

namespace A246715.P10693234944599875933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146005 (n + 1) - A146005 n

end

end A246715.P10693234944599875933

namespace A246715

/-- `A146005(n+1)-A146005(n)` -/
def P10693234944599875933.Spec : Prop :=
  ∀ n, P10693234944599875933.a n = A246715 (n + 1)

theorem P10693234944599875933.correct : P10693234944599875933.Spec := by
  intro n
  simp only [A246715, Nat.add_sub_cancel, A246715.P10693234944599875933.a, A246715.P16388899273282703802.a, A000032, A000032.P8352177345629330861.a, A146005, A146005.P6209391916366834839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246715

/-!
# A246716: Positive numbers that are not the product of (exactly) two distinct primes.

The programs for A246716, the canonical program `A246716.P11198527028303689584` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246716 has offset 1).

The definition of A246716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246716.P12625158905615040070

`lt[A280710(n+1), 1]+1`
-/

namespace A246716.P12625158905615040070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246716.P12625158905615040070

namespace A246716

/-- `lt[A280710(n+1), 1]+1` -/
def P12625158905615040070.Spec : Prop :=
  ∀ n, (P12625158905615040070.a n : ℤ) = A246716 (n + 1)

end A246716

/-! ## A246716.P2356514589301487925

`comp[A006881(n+1)-1]+1`
-/

namespace A246716.P2356514589301487925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A246716.P2356514589301487925

namespace A246716

/-- `comp[A006881(n+1)-1]+1` -/
def P2356514589301487925.Spec : Prop :=
  ∀ n, (P2356514589301487925.a n : ℤ) = A246716 (n + 1)

end A246716

/-! ## A246716.P11054789228152863359

`comp[eq[1, A281116(n+1)]]+1`
-/

namespace A246716.P11054789228152863359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A246716.P11054789228152863359

namespace A246716

/-- `comp[eq[1, A281116(n+1)]]+1` -/
def P11054789228152863359.Spec : Prop :=
  ∀ n, (P11054789228152863359.a n : ℤ) = A246716 (n + 1)

end A246716

/-! ## A246716.P11198527028303689584

`comp[eq[2, A349620(n+1)]]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A246716

/-- `comp[eq[2, A349620(n+1)]]+1` -/
def P11198527028303689584.Spec : Prop :=
  ∀ n, (P11198527028303689584.a n : ℤ) = A246716 (n + 1)

theorem P11198527028303689584.correct : P11198527028303689584.Spec := by
  intro n
  simp only [A246716, Nat.add_sub_cancel]

end A246716

/-! ## A246716.P17990694235404129686

`∪[(n+1)², A100959(n+1)]`
-/

namespace A246716.P17990694235404129686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246716.P17990694235404129686

namespace A246716

/-- `∪[(n+1)², A100959(n+1)]` -/
def P17990694235404129686.Spec : Prop :=
  ∀ n, (P17990694235404129686.a n : ℤ) = A246716 (n + 1)

end A246716

/-! ## A246716.P2496450910891544350

`lt[val((C(4, A101296(n+1))+1)², 2), 2]+1`
-/

namespace A246716.P2496450910891544350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((Nat.choose 4 (A101296 (n + 1)).toNat + 1) ^ 2) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A246716.P2496450910891544350

namespace A246716

/-- `lt[val((C(4, A101296(n+1))+1)², 2), 2]+1` -/
def P2496450910891544350.Spec : Prop :=
  ∀ n, (P2496450910891544350.a n : ℤ) = A246716 (n + 1)

end A246716

/-! ## A246716.P14598997640889177197

`lt[1, A308180(A077462(n))]`
-/

namespace A246716.P14598997640889177197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308180 (A077462 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A246716.P14598997640889177197

namespace A246716

/-- `lt[1, A308180(A077462(n))]` -/
def P14598997640889177197.Spec : Prop :=
  ∀ n, (P14598997640889177197.a n : ℤ) = A246716 (n + 1)

end A246716

/-! ## A246716.P18381650571370628148

`∪[A100959(n+1), A034023(n)]`
-/

namespace A246716.P18381650571370628148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246716.P18381650571370628148

namespace A246716

/-- `∪[A100959(n+1), A034023(n)]` -/
def P18381650571370628148.Spec : Prop :=
  ∀ n, (P18381650571370628148.a n : ℤ) = A246716 (n + 1)

end A246716

/-! ## A246716.P18047232963353664936

`∪[A100959(n+1), A034038(n)]`
-/

namespace A246716.P18047232963353664936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034038 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246716.P18047232963353664936

namespace A246716

/-- `∪[A100959(n+1), A034038(n)]` -/
def P18047232963353664936.Spec : Prop :=
  ∀ n, (P18047232963353664936.a n : ℤ) = A246716 (n + 1)

end A246716

/-! ## A246716.P4268336535578568177

`∪[A210994(n+1), A006501(n)]`
-/

namespace A246716.P4268336535578568177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006501 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246716.P4268336535578568177

namespace A246716

/-- `∪[A210994(n+1), A006501(n)]` -/
def P4268336535578568177.Spec : Prop :=
  ∀ n, (P4268336535578568177.a n : ℤ) = A246716 (n + 1)

end A246716

/-! ## A246716.P12552025701908568385

`∪[A210994(n+1), A033477(n)]`
-/

namespace A246716.P12552025701908568385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033477 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246716.P12552025701908568385

namespace A246716

/-- `∪[A210994(n+1), A033477(n)]` -/
def P12552025701908568385.Spec : Prop :=
  ∀ n, (P12552025701908568385.a n : ℤ) = A246716 (n + 1)

end A246716

/-! ## A246716.P906511448516858586

`∪[A033942(n+1), A000961(n+1)]`
-/

namespace A246716.P906511448516858586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246716.P906511448516858586

namespace A246716

/-- `∪[A033942(n+1), A000961(n+1)]` -/
def P906511448516858586.Spec : Prop :=
  ∀ n, (P906511448516858586.a n : ℤ) = A246716 (n + 1)

end A246716

/-! ## A246716.P13588338265599235834

`∪[A026477(n+1), A033942(n+1)]`
-/

namespace A246716.P13588338265599235834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246716.P13588338265599235834

namespace A246716

/-- `∪[A026477(n+1), A033942(n+1)]` -/
def P13588338265599235834.Spec : Prop :=
  ∀ n, (P13588338265599235834.a n : ℤ) = A246716 (n + 1)

end A246716

/-! ## A246716.P18054995395421877438

`record[n+1-A001316(n)*A280710(n+1)]`
-/

namespace A246716.P18054995395421877438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001316 n * A280710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246716.P18054995395421877438

namespace A246716

/-- `record[n+1-A001316(n)*A280710(n+1)]` -/
def P18054995395421877438.Spec : Prop :=
  ∀ n, P18054995395421877438.a n = A246716 (n + 1)

end A246716

/-! ## A246716.P9714898468365860136

`comp[eq[A325974(n+1)+2, A001222(n+1)]]+1`
-/

namespace A246716.P9714898468365860136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325974 (n + 1) + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A246716.P9714898468365860136

namespace A246716

/-- `comp[eq[A325974(n+1)+2, A001222(n+1)]]+1` -/
def P9714898468365860136.Spec : Prop :=
  ∀ n, (P9714898468365860136.a n : ℤ) = A246716 (n + 1)

end A246716

/-! ## A246716.P9241018756588040381

`record[n+1-A022998(n*A280710(n+1))]`
-/

namespace A246716.P9241018756588040381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A022998 ((n : ℤ) * A280710 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246716.P9241018756588040381

namespace A246716

/-- `record[n+1-A022998(n*A280710(n+1))]` -/
def P9241018756588040381.Spec : Prop :=
  ∀ n, P9241018756588040381.a n = A246716 (n + 1)

end A246716

/-! ## A246716.P14778740194989181980

`lt[A230595(n+1), 2]+1`
-/

namespace A246716.P14778740194989181980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230595 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246716.P14778740194989181980

namespace A246716

/-- `lt[A230595(n+1), 2]+1` -/
def P14778740194989181980.Spec : Prop :=
  ∀ n, (P14778740194989181980.a n : ℤ) = A246716 (n + 1)

end A246716

/-! ## A246716.P1842830022658438143

`lt[A014673(n+1)², n+2]+1`
-/

namespace A246716.P1842830022658438143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A246716.P1842830022658438143

namespace A246716

/-- `lt[A014673(n+1)², n+2]+1` -/
def P1842830022658438143.Spec : Prop :=
  ∀ n, (P1842830022658438143.a n : ℤ) = A246716 (n + 1)

end A246716

/-! ## A246716.P14486510800001505537

`record[(n+1)%(A094435(A008480(n+1)+1)+n)]`
-/

namespace A246716.P14486510800001505537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A094435 (A008480 (n + 1) + 1).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246716.P14486510800001505537

namespace A246716

/-- `record[(n+1)%(A094435(A008480(n+1)+1)+n)]` -/
def P14486510800001505537.Spec : Prop :=
  ∀ n, P14486510800001505537.a n = A246716 (n + 1)

end A246716

/-! ## A246716.P7110126157599727146

`lt[A064680(A001222(n+1))%2, A162510(n+1)]+1`
-/

namespace A246716.P7110126157599727146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064680 (A001222 (n + 1)).toNat) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A246716.P7110126157599727146

namespace A246716

/-- `lt[A064680(A001222(n+1))%2, A162510(n+1)]+1` -/
def P7110126157599727146.Spec : Prop :=
  ∀ n, (P7110126157599727146.a n : ℤ) = A246716 (n + 1)

end A246716

/-!
# A246717: Numbers of the form 2n - 1 such that A246702(n) = 2.

The programs for A246717, there is no canonical definition to state claims against.
-/

/-! ## A246717.P15709399084105134662

`2*eq[2, A246702(n+1)]+1`
-/

namespace A246717.P15709399084105134662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246717.P15709399084105134662

/-! ## A246717.P18121328112616378480

`A005408(eq[2, A246702(n+1)])`
-/

namespace A246717.P18121328112616378480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246717.P18121328112616378480

/-! ## A246717.P13485980428346915959

`A130773(eq[2, A246702(n+1)])`
-/

namespace A246717.P13485980428346915959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246717.P13485980428346915959

/-! ## A246717.P17504354856337545108

`A144396(eq[2, A246702(n+1)])`
-/

namespace A246717.P17504354856337545108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246717.P17504354856337545108

/-! ## A246717.P4617179745719798874

`A160144(eq[2, A246702(n+1)])`
-/

namespace A246717.P4617179745719798874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246717.P4617179745719798874

/-! ## A246717.P4562895073638707814

`A237292(eq[2, A246702(n+1)])`
-/

namespace A246717.P4562895073638707814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246717.P4562895073638707814

/-! ## A246717.P13548945514748482556

`A267872(eq[2, A246702(n+1)])`
-/

namespace A246717.P13548945514748482556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246717.P13548945514748482556

/-! ## A246717.P17848873325540290529

`A267873(eq[2, A246702(n+1)])`
-/

namespace A246717.P17848873325540290529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246717.P17848873325540290529

/-! ## A246717.P10176251505500073605

`A004273(eq[2, A246702(n+1)]+1)`
-/

namespace A246717.P10176251505500073605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A246717.P10176251505500073605

/-! ## A246717.P12288002639034731189

`A004277(eq[2, A246702(n+1)])+1`
-/

namespace A246717.P12288002639034731189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A246717.P12288002639034731189

/-! ## A246717.P12500270299993978234

`A005843(eq[2, A246702(n+1)])+1`
-/

namespace A246717.P12500270299993978234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A246717.P12500270299993978234

/-! ## A246717.P5688372637988820020

`A004274(eq[2, A246702(n+1)]+2)`
-/

namespace A246717.P5688372637988820020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A246717.P5688372637988820020

/-! ## A246717.P205789636260034159

`A004275(eq[2, A246702(n+1)])+3`
-/

namespace A246717.P205789636260034159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 3

end

end A246717.P205789636260034159

/-! ## A246717.P5833064853331541051

`A109613(2*eq[2, A246702(n+1)])`
-/

namespace A246717.P5833064853331541051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246717.P5833064853331541051

/-! ## A246717.P8238913099344998871

`A141310(2*eq[2, A246702(n+1)])`
-/

namespace A246717.P8238913099344998871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246717.P8238913099344998871

/-! ## A246717.P14681910802057689393

`A016825(eq[2, A246702(n+1)])/2`
-/

namespace A246717.P14681910802057689393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A246717.P14681910802057689393

/-! ## A246717.P9655377801354927671

`A008619(4*eq[2, A246702(n+1)])`
-/

namespace A246717.P9655377801354927671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246717.P9655377801354927671

/-! ## A246717.P788619644794605530

`A008611(6*eq[2, A246702(n+1)])`
-/

namespace A246717.P788619644794605530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (6 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246717.P788619644794605530

/-! ## A246717.P3519452313437429214

`eq[A141310(n), A246702(A008619(n))]`
-/

namespace A246717.P3519452313437429214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (A008619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246717.P3519452313437429214

/-! ## A246717.P5794709181567033122

`∪[A115591(n+1), A249819(n+1)]`
-/

namespace A246717.P5794709181567033122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246717.P5794709181567033122

/-!
# A246718: a(n) is the number of different ways of concatenating the numbers {3^k, k=0,...,n} so as to produce a prime number.

The programs for A246718, there is no canonical definition to state claims against.
-/

/-! ## A246718.P7510208834734264222

`A113143(a(n-1))` with `a(0)=2, a(1)=2, a(2)=3, a(3)=44`
-/

namespace A246718.P7510208834734264222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3, 44] fun n a =>
  A113143 (a (n - 1)).toNat

end

end A246718.P7510208834734264222

/-!
# A246719: Smallest natural number m for which there are exactly n distinct values k such that 0 < k < m^2 and 2^k - 1 is divisible by m^2.

The programs for A246719, there is no canonical definition to state claims against.
-/

/-! ## A246719.P11771805650437174399

`A119766(2^n+1)-1`
-/

namespace A246719.P11771805650437174399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119766 (2 ^ n + 1) - 1

end

end A246719.P11771805650437174399

/-!
# A246720: Number A(n,k) of partitions of n into parts of the k-th list of distinct parts in the order given by A246688; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A246720, there is no canonical definition to state claims against.
-/

/-! ## A246720.P1547732943735310368

`A287272(4*A246690(n))`
-/

namespace A246720.P1547732943735310368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (4 * A246690 n).toNat

end

end A246720.P1547732943735310368

/-! ## A246720.P783698910864875976

`A000523(A046693(A246690(n)²))`
-/

namespace A246720.P783698910864875976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A046693 (A246690 n ^ 2).toNat).toNat

end

end A246720.P783698910864875976

/-! ## A246720.P10403500058398183972

`A185283(A246690(n))^A280688(n+2)`
-/

namespace A246720.P10403500058398183972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185283 (A246690 n).toNat : ℚ) ^ (A280688 (n + 2) : ℤ)

end

end A246720.P10403500058398183972

/-! ## A246720.P7358347950520111777

`A185283(A246690(n)%A236105(n+1))`
-/

namespace A246720.P7358347950520111777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (Int.tmod (A246690 n) (A236105 (n + 1))).toNat

end

end A246720.P7358347950520111777

/-! ## A246720.P3296801280158985087

`A185283(A246690(n))%(A241826(n)+1)`
-/

namespace A246720.P3296801280158985087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185283 (A246690 n).toNat) (A241826 n + 1)

end

end A246720.P3296801280158985087

/-! ## A246720.P9107832087574102855

`A151935(n+1)!*A185283(A246690(n))`
-/

namespace A246720.P9107832087574102855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151935 (n + 1)).toNat : ℤ) * A185283 (A246690 n).toNat

end

end A246720.P9107832087574102855

/-! ## A246720.P4011712427304979751

`A185283(A246690(n))^Δ[A004883(n+1)]`
-/

namespace A246720.P4011712427304979751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185283 (A246690 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A246720.P4011712427304979751

/-! ## A246720.P18121041304412226450

`A185283(A246690(n))^Δ[A004905(n+1)]`
-/

namespace A246720.P18121041304412226450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004905 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185283 (A246690 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A246720.P18121041304412226450

/-! ## A246720.P3200550405033386741

`A185283(A246690(n))^A014963(37*n+15)`
-/

namespace A246720.P3200550405033386741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185283 (A246690 n).toNat : ℚ) ^ (A014963 (37 * n + 15) : ℤ)

end

end A246720.P3200550405033386741

/-! ## A246720.P6903477899668086230

`A185283(A246690(n))+A000007(A008080(n))`
-/

namespace A246720.P6903477899668086230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A246690 n).toNat + A000007 (A008080 n).toNat

end

end A246720.P6903477899668086230

/-!
# A246721: Number of partitions of n into parts of the n-th list of distinct parts in the order given by A246688.

The programs for A246721, there is no canonical definition to state claims against.
-/

/-! ## A246721.P9587214391278847242

`A246720(∑[4*n])`
-/

namespace A246721.P9587214391278847242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246720 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246721.P9587214391278847242

/-! ## A246721.P7609929117376369213

`and(-1, A246720(A106232(n+1)))`
-/

namespace A246721.P7609929117376369213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A246720 (A106232 (n + 1)).toNat)

end

end A246721.P7609929117376369213

/-! ## A246721.P16776757100879389053

`A246720(A046092(n))+C(n, 4*n+1)`
-/

namespace A246721.P16776757100879389053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246720 (A046092 n).toNat + (Nat.choose n (4 * n + 1) : ℤ)

end

end A246721.P16776757100879389053

/-! ## A246721.P4412504510700144358

`A246720(A046092(n))%∑[A000032(n)]`
-/

namespace A246721.P4412504510700144358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246720 (A046092 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246721.P4412504510700144358

/-! ## A246721.P11294748030536368103

`A246720(A046092(n))+A000035(2*n)`
-/

namespace A246721.P11294748030536368103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246720 (A046092 n).toNat + A000035 (2 * n)

end

end A246721.P11294748030536368103

/-! ## A246721.P17181436334134935975

`A246720(A106232(n+1))%∑[A000032(n)]`
-/

namespace A246721.P17181436334134935975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246720 (A106232 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246721.P17181436334134935975

/-! ## A246721.P8155806917738068881

`A246720(A106232(n+1))+A000007(n+1)`
-/

namespace A246721.P8155806917738068881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246720 (A106232 (n + 1)).toNat + A000007 (n + 1)

end

end A246721.P8155806917738068881

/-! ## A246721.P14407330248752758774

`A007318(C(2, n))*A246720(A106232(n+1))`
-/

namespace A246721.P14407330248752758774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A246720 (A106232 (n + 1)).toNat

end

end A246721.P14407330248752758774

/-! ## A246721.P14392078502143234472

`A246720(A106232(n+1))^A014963(∑[n+1])`
-/

namespace A246721.P14392078502143234472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246720 (A106232 (n + 1)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A246721.P14392078502143234472

/-!
# A246723: Decimal expansion of r_1, the smallest radius for which a compact packing of the plane exists, with disks of radius 1 and r_1.

The programs for A246723, there is no canonical definition to state claims against.
-/

/-! ## A246723.P16731763588291815737

`9-A010480(n+1)`
-/

namespace A246723.P16731763588291815737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A010480 (n + 1 + 1)

end

end A246723.P16731763588291815737

/-! ## A246723.P10643077510765124378

`9-A090654(n+1)`
-/

namespace A246723.P10643077510765124378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A090654 (n + 1 + 1)

end

end A246723.P10643077510765124378

/-!
# A246724: Decimal expansion of r_2, the second smallest radius for which a compact packing of the plane exists, with disks of radius 1 and r_2.

The programs for A246724, there is no canonical definition to state claims against.
-/

/-! ## A246724.P2727870835327712430

`9-A093821(n)`
-/

namespace A246724.P2727870835327712430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A093821 n

end

end A246724.P2727870835327712430

/-! ## A246724.P2016403539337445394

`A020832(n+1)`
-/

namespace A246724.P2016403539337445394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020832 (n + 1)

end

end A246724.P2016403539337445394

/-! ## A246724.P127687310147627895

`A176053(n+1)`
-/

namespace A246724.P127687310147627895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176053 (n + 1 + 1)

end

end A246724.P127687310147627895

/-! ## A246724.P8444889064206837268

`A020832(n)-Δ[-A020832(n)]`
-/

namespace A246724.P8444889064206837268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A020832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020832 n - (f1 (n + 1) - f1 n)

end

end A246724.P8444889064206837268

/-! ## A246724.P7012415218305878973

`A176053(n)-Δ[-A176053(n)]`
-/

namespace A246724.P7012415218305878973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A176053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176053 (n + 1) - (f1 (n + 1) - f1 n)

end

end A246724.P7012415218305878973

/-!
# A246725: Decimal expansion of r_3, the third smallest radius for which a compact packing of the plane exists, with disks of radius 1 and r_3.

The programs for A246725, there is no canonical definition to state claims against.
-/

/-! ## A246725.P6432678368418730100

`A188934(n+1)`
-/

namespace A246725.P6432678368418730100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188934 (n + 1 + 1)

end

end A246725.P6432678368418730100

/-! ## A246725.P14900236756134660317

`A188934(Δ[n²]-n)%14`
-/

namespace A246725.P14900236756134660317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188934 (((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + 1)) 14

end

end A246725.P14900236756134660317

/-! ## A246725.P16698422260362280018

`A188485(n+1)-xor(A223134(n+1), A267872(n+1))`
-/

namespace A246725.P16698422260362280018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188485 (n + 1 + 1) - Int.xor (A223134 (n + 1)) (A267872 (n + 1))

end

end A246725.P16698422260362280018

/-!
# A246731: Number of standard Young tableaux with 2n cells and largest value in row n.

The programs for A246731, there is no canonical definition to state claims against.
-/

/-! ## A246731.P15133694711754785518

`A238750(∑[4*n])`
-/

namespace A246731.P15133694711754785518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238750 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246731.P15133694711754785518

/-! ## A246731.P7428344821314600532

`A238750(A046092(n))%(n+2)!`
-/

namespace A246731.P7428344821314600532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238750 (A046092 n).toNat) (Nat.factorial (n + 2) : ℤ)

end

end A246731.P7428344821314600532

/-! ## A246731.P14587206650679971680

`abs(A020985(n)*A238750(A046092(n)))`
-/

namespace A246731.P14587206650679971680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020985 n * A238750 (A046092 n).toNat|

end

end A246731.P14587206650679971680

/-! ## A246731.P17761581375606204168

`A017909(n)!*A238750(A046092(n))`
-/

namespace A246731.P17761581375606204168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A017909 n).toNat : ℤ) * A238750 (A046092 n).toNat

end

end A246731.P17761581375606204168

/-! ## A246731.P10782336564688311545

`A238750(A046092(n))/A007318(∑[n+1])`
-/

namespace A246731.P10782336564688311545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238750 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A246731.P10782336564688311545

/-!
# A246732: Number of length n+4 0..3 arrays with no pair in any consecutive five terms totalling exactly 3.

The programs for A246732, there is no canonical definition to state claims against.
-/

/-! ## A246732.P7284771608248356706

`A246737(∑[n+3]+1)`
-/

namespace A246732.P7284771608248356706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A246732.P7284771608248356706

/-! ## A246732.P8594438366696088551

`lcm(2, A246737(Δ[A008778(n)]))`
-/

namespace A246732.P8594438366696088551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A246737 (f1 (n + 1) - f1 n).toNat)

end

end A246732.P8594438366696088551

/-! ## A246732.P18375460524122753175

`lcm(4, A246737(A034856(n+2)))`
-/

namespace A246732.P18375460524122753175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A246737 (A034856 (n + 2)).toNat)

end

end A246732.P18375460524122753175

/-! ## A246732.P12032118907384702098

`A246737(Δ[A008778(n)])+A000038(n+1)`
-/

namespace A246732.P12032118907384702098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (f1 (n + 1) - f1 n).toNat + A000038 (n + 1)

end

end A246732.P12032118907384702098

/-! ## A246732.P3575071345303849129

`A087960(2*n)²*A246737(Δ[A008778(n)])`
-/

namespace A246732.P3575071345303849129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) ^ 2 * A246737 (f1 (n + 1) - f1 n).toNat

end

end A246732.P3575071345303849129

/-!
# A246733: Number of length n+4 0..4 arrays with no pair in any consecutive five terms totalling exactly 4.

The programs for A246733, there is no canonical definition to state claims against.
-/

/-! ## A246733.P10569602048150087099

`A246737(A027379(n+2))`
-/

namespace A246733.P10569602048150087099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A027379 (n + 2)).toNat

end

end A246733.P10569602048150087099

/-! ## A246733.P2959191612246964608

`A246737(A055998(n+2))`
-/

namespace A246733.P2959191612246964608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A055998 (n + 2)).toNat

end

end A246733.P2959191612246964608

/-! ## A246733.P5217582604789885366

`A246737(A155212(n)+5)`
-/

namespace A246733.P5217582604789885366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A155212 n + 5).toNat

end

end A246733.P5217582604789885366

/-! ## A246733.P12698117719553526112

`A246737(A056000(n)+7)`
-/

namespace A246733.P12698117719553526112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A056000 n + 7).toNat

end

end A246733.P12698117719553526112

/-! ## A246733.P3609575033327797348

`A246737(Δ[A034857(n+1)])`
-/

namespace A246733.P3609575033327797348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (f1 (n + 1) - f1 n).toNat

end

end A246733.P3609575033327797348

/-! ## A246733.P6731467719779860064

`A246737(Δ[A006416(n+2)])`
-/

namespace A246733.P6731467719779860064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (f1 (n + 1) - f1 n).toNat

end

end A246733.P6731467719779860064

/-! ## A246733.P8177182169448366308

`A246737(A052905(n+1)+2)`
-/

namespace A246733.P8177182169448366308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A052905 (n + 1) + 2).toNat

end

end A246733.P8177182169448366308

/-! ## A246733.P17187609947068279804

`A246737(Δ[A008778(n+1)]-1)`
-/

namespace A246733.P17187609947068279804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (f1 (n + 1) - f1 n - 1).toNat

end

end A246733.P17187609947068279804

/-! ## A246733.P5939946522306227788

`A246737(A167499(n)+A016777(n))`
-/

namespace A246733.P5939946522306227788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A167499 n + A016777 n).toNat

end

end A246733.P5939946522306227788

/-! ## A246733.P11226736255617615859

`A246737(A167614(n+1)+A005408(n))`
-/

namespace A246733.P11226736255617615859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A167614 (n + 1) + A005408 n).toNat

end

end A246733.P11226736255617615859

/-!
# A246734: Number of length n+4 0..5 arrays with no pair in any consecutive five terms totalling exactly 5.

The programs for A246734, there is no canonical definition to state claims against.
-/

/-! ## A246734.P2563413266621940959

`lcm(2, A246737(∑[n+5]+6))`
-/

namespace A246734.P2563413266621940959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A246737 (∑ j ∈ Finset.range (n + 1), f1 j + 6))

end

end A246734.P2563413266621940959

/-! ## A246734.P1103122886718411773

`A246737(A046691(n+3))`
-/

namespace A246734.P1103122886718411773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A046691 (n + 3)).toNat

end

end A246734.P1103122886718411773

/-! ## A246734.P665483388024570257

`A246737(Δ[A023545(n+1)])`
-/

namespace A246734.P665483388024570257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (f1 (n + 1) - f1 n).toNat

end

end A246734.P665483388024570257

/-! ## A246734.P8901826874000221786

`A246737(A155212(n+1)+4)`
-/

namespace A246734.P8901826874000221786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A155212 (n + 1) + 4).toNat

end

end A246734.P8901826874000221786

/-! ## A246734.P6920250639864241913

`A246737(Δ[A034857(n+2)]-1)`
-/

namespace A246734.P6920250639864241913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (f1 (n + 1) - f1 n - 1).toNat

end

end A246734.P6920250639864241913

/-! ## A246734.P1671153505046841557

`A246737(Δ[A006416(n+3)]-1)`
-/

namespace A246734.P1671153505046841557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (f1 (n + 1) - f1 n - 1).toNat

end

end A246734.P1671153505046841557

/-! ## A246734.P6133454372561023153

`A246737(A000096(n+6)-A004275(n+9))`
-/

namespace A246734.P6133454372561023153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A000096 (n + 6) - A004275 (n + 9)).toNat

end

end A246734.P6133454372561023153

/-! ## A246734.P15755649197775794408

`A246737(A167499(n+10)-A008458(n+10))`
-/

namespace A246734.P15755649197775794408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A167499 (n + 10) - A008458 (n + 10)).toNat

end

end A246734.P15755649197775794408

/-!
# A246735: Number of length n+4 0..6 arrays with no pair in any consecutive five terms totalling exactly 6.

The programs for A246735, there is no canonical definition to state claims against.
-/

/-! ## A246735.P664699822893075749

`A246737(A052905(n+3))`
-/

namespace A246735.P664699822893075749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A052905 (n + 3)).toNat

end

end A246735.P664699822893075749

/-! ## A246735.P11982880447822048162

`A246737(eq[3, A219347(n)])`
-/

namespace A246735.P11982880447822048162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246735.P11982880447822048162

/-! ## A246735.P9828785219551378508

`A246737(Δ[Δ[A006504(n+1)]])`
-/

namespace A246735.P9828785219551378508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (f1 (n + 1) - f1 n).toNat

end

end A246735.P9828785219551378508

/-! ## A246735.P10408741787080520350

`A246737(Δ[A023545(n+2)]-1)`
-/

namespace A246735.P10408741787080520350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (f1 (n + 1) - f1 n - 1).toNat

end

end A246735.P10408741787080520350

/-! ## A246735.P6533692880608487278

`A246737(A000124(n+8)-A005408(n+10))`
-/

namespace A246735.P6533692880608487278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A000124 (n + 8) - A005408 (n + 10)).toNat

end

end A246735.P6533692880608487278

/-! ## A246735.P18090283582672359263

`A246737(A000217(n+8)-A005843(n+10))`
-/

namespace A246735.P18090283582672359263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A000217 (n + 8) - A005843 (n + 10)).toNat

end

end A246735.P18090283582672359263

/-! ## A246735.P6909542707710393660

`A246737(A167614(n+7)-A005408(n+11))`
-/

namespace A246735.P6909542707710393660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A167614 (n + 7) - A005408 (n + 11)).toNat

end

end A246735.P6909542707710393660

/-! ## A246735.P4940262977539697701

`A246737(A167499(n+9)-A008574(n+11))`
-/

namespace A246735.P4940262977539697701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A167499 (n + 9) - A008574 (n + 11)).toNat

end

end A246735.P4940262977539697701

/-!
# A246736: Number of length n+4 0..7 arrays with no pair in any consecutive five terms totalling exactly 7.

The programs for A246736, there is no canonical definition to state claims against.
-/

/-! ## A246736.P3256240219613198813

`A246737(A055999(n+4))`
-/

namespace A246736.P3256240219613198813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A055999 (n + 4)).toNat

end

end A246736.P3256240219613198813

/-! ## A246736.P13105055889596127263

`A246737(eq[4, A219347(n)])`
-/

namespace A246736.P13105055889596127263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246736.P13105055889596127263

/-! ## A246736.P7370295544701374350

`A246737(A046691(n+5)-2)`
-/

namespace A246736.P7370295544701374350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A046691 (n + 5) - 2).toNat

end

end A246736.P7370295544701374350

/-! ## A246736.P13053726372331956613

`A246737(A000096(n+6)-5)`
-/

namespace A246736.P13053726372331956613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A000096 (n + 6) - 5).toNat

end

end A246736.P13053726372331956613

/-! ## A246736.P10126821415795016952

`A246737(A000124(n+7)-7)`
-/

namespace A246736.P10126821415795016952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A000124 (n + 7) - 7).toNat

end

end A246736.P10126821415795016952

/-! ## A246736.P1156629001552231702

`A246737(A000217(n+6)+n+1)`
-/

namespace A246736.P1156629001552231702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A246736.P1156629001552231702

/-! ## A246736.P14444417819122637924

`A246737(A167614(n+4)+2*(n+2))`
-/

namespace A246736.P14444417819122637924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A167614 (n + 4) + (2 * (n + 2) : ℤ)).toNat

end

end A246736.P14444417819122637924

/-! ## A246736.P2822259895750793892

`A246737(A161680(n+10)-A005408(n+11))`
-/

namespace A246736.P2822259895750793892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A161680 (n + 10) - A005408 (n + 11)).toNat

end

end A246736.P2822259895750793892

/-! ## A246736.P10421222779175033889

`A246737(A005408(n)+eq[4, A025581(n)]+11)`
-/

namespace A246736.P10421222779175033889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A005408 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 11 : ℤ)).toNat

end

end A246736.P10421222779175033889

/-!
# A246738: Number of length 1+4 0..n arrays with no pair in any consecutive five terms totalling exactly n.

The programs for A246738, there is no canonical definition to state claims against.
-/

/-! ## A246738.P12893626511770950714

`A000584(n+2)-A246893(n+1)`
-/

namespace A246738.P12893626511770950714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (n + 2) - A246893 (n + 1)

end

end A246738.P12893626511770950714

/-! ## A246738.P17312715137894137383

`A246737(∑[n]+1)`
-/

namespace A246738.P17312715137894137383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A246738.P17312715137894137383

/-! ## A246738.P1805930463234433750

`record[A246737(A055802(n+2))]`
-/

namespace A246738.P1805930463234433750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A055802 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246738.P1805930463234433750

/-! ## A246738.P12444464282535985532

`record[A010054(n)*A246737(n+1)]`
-/

namespace A246738.P12444464282535985532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A246737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246738.P12444464282535985532

/-! ## A246738.P14755150075456896240

`record[A246737(n+1)/A009999(n)]`
-/

namespace A246738.P14755150075456896240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246737 (n + 1) : ℚ) / (A009999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246738.P14755150075456896240

/-! ## A246738.P8581455925828655304

`record[gcd(A002262(n), A246737(n+1))]`
-/

namespace A246738.P8581455925828655304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A246737 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246738.P8581455925828655304

/-!
# A246739: Number of length 2+4 0..n arrays with no pair in any consecutive five terms totalling exactly n.

The programs for A246739, there is no canonical definition to state claims against.
-/

/-! ## A246739.P5176002477517686427

`A246737(∑[n+1]+2)`
-/

namespace A246739.P5176002477517686427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A246739.P5176002477517686427

/-! ## A246739.P2016851194541682173

`and(-2, A246737(C(n+2, 2)+2))`
-/

namespace A246739.P2016851194541682173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A246737 (Nat.choose (n + 2) 2 + 2))

end

end A246739.P2016851194541682173

/-! ## A246739.P8232629227838573273

`A004070(C(2, n))*A246737(C(n+2, 2)+2)`
-/

namespace A246739.P8232629227838573273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (Nat.choose 2 n) * A246737 (Nat.choose (n + 2) 2 + 2)

end

end A246739.P8232629227838573273

/-! ## A246739.P5250705527803247655

`A246737(A167499(n)-3)%A246733(n+1)`
-/

namespace A246739.P5250705527803247655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246737 (A167499 n - 3).toNat) (A246733 (n + 1))

end

end A246739.P5250705527803247655

/-! ## A246739.P10702644433662485273

`A246737(A167499(n)-3)+8%A003643(n+1)`
-/

namespace A246739.P10702644433662485273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A167499 n - 3).toNat + Int.tmod 8 (A003643 (n + 1))

end

end A246739.P10702644433662485273

/-!
# A246740: Number of length 3+4 0..n arrays with no pair in any consecutive five terms totalling exactly n.

The programs for A246740, there is no canonical definition to state claims against.
-/

/-! ## A246740.P10032529723478677577

`A246737(∑[n+2]+4)`
-/

namespace A246740.P10032529723478677577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A246740.P10032529723478677577

/-! ## A246740.P18302141894469395444

`lcm(2, A246737(A167614(n+1)))`
-/

namespace A246740.P18302141894469395444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A246737 (A167614 (n + 1)).toNat)

end

end A246740.P18302141894469395444

/-! ## A246740.P16348867098264494846

`record[gcd(2-A002262(n), A246737(n+1))]`
-/

namespace A246740.P16348867098264494846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A002262 n) (A246737 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246740.P16348867098264494846

/-! ## A246740.P9245874835246032058

`A246737(A167614(n+1))%A017357(n)`
-/

namespace A246740.P9245874835246032058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246737 (A167614 (n + 1)).toNat) (A017357 n)

end

end A246740.P9245874835246032058

/-! ## A246740.P13524509858995825956

`gcd(A000038(n), A246737(A167614(n+1)))`
-/

namespace A246740.P13524509858995825956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A246737 (A167614 (n + 1)).toNat)

end

end A246740.P13524509858995825956

/-! ## A246740.P7407674515535191013

`A007318(C(2, n))*A246737(A167614(n+1))`
-/

namespace A246740.P7407674515535191013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A246737 (A167614 (n + 1)).toNat

end

end A246740.P7407674515535191013

/-! ## A246740.P12428102254029644821

`A246737(A167614(n+1))+A008683(8*n+4)`
-/

namespace A246740.P12428102254029644821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A167614 (n + 1)).toNat + A008683 (8 * n + 4)

end

end A246740.P12428102254029644821

/-! ## A246740.P1612132872527088776

`A246737(A167614(n+1))+A198954(A253936(n+1))`
-/

namespace A246740.P1612132872527088776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A167614 (n + 1)).toNat + A198954 (A253936 (n + 1)).toNat

end

end A246740.P1612132872527088776

/-! ## A246740.P8785797886119224627

`A246737(A167614(n+1))+A006379(A329900(n²+10)²)`
-/

namespace A246740.P8785797886119224627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A167614 (n + 1)).toNat + A006379 (A329900 (n ^ 2 + 10) ^ 2).toNat

end

end A246740.P8785797886119224627

/-!
# A246741: Number of length 4+4 0..n arrays with no pair in any consecutive five terms totalling exactly n.

The programs for A246741, there is no canonical definition to state claims against.
-/

/-! ## A246741.P4421812922112766260

`A246737(A052905(n)+9)`
-/

namespace A246741.P4421812922112766260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A052905 n + 9).toNat

end

end A246741.P4421812922112766260

/-! ## A246741.P3906373352290565345

`A246737(A055999(n)+10)`
-/

namespace A246741.P3906373352290565345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A055999 n + 10).toNat

end

end A246741.P3906373352290565345

/-! ## A246741.P10127121611673508362

`A246737(A167614(n+2)+1)`
-/

namespace A246741.P10127121611673508362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A167614 (n + 2) + 1).toNat

end

end A246741.P10127121611673508362

/-! ## A246741.P15914169642844053033

`A246737(Δ[A023545(n+1)-n²])`
-/

namespace A246741.P15914169642844053033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (f1 (n + 1) - f1 n).toNat

end

end A246741.P15914169642844053033

/-! ## A246741.P11467863521347145531

`A246737(A080036(A167614(n+1)))`
-/

namespace A246741.P11467863521347145531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A246741.P11467863521347145531

/-! ## A246741.P10839440666433177442

`A246737(A038722(Δ[A006416(n+2)]))`
-/

namespace A246741.P10839440666433177442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A246741.P10839440666433177442

/-!
# A246742: Number of length 5+4 0..n arrays with no pair in any consecutive five terms totalling exactly n.

The programs for A246742, there is no canonical definition to state claims against.
-/

/-! ## A246742.P4173827879620694331

`A246737(A167499(n+3))`
-/

namespace A246742.P4173827879620694331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A167499 (n + 3)).toNat

end

end A246742.P4173827879620694331

/-! ## A246742.P12746978080799610370

`A246737(A167614(n+3)+2)`
-/

namespace A246742.P12746978080799610370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A167614 (n + 3) + 2).toNat

end

end A246742.P12746978080799610370

/-! ## A246742.P4951665538380070726

`A246737(A000124(n+4)+4)`
-/

namespace A246742.P4951665538380070726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A000124 (n + 4) + 4).toNat

end

end A246742.P4951665538380070726

/-! ## A246742.P16873730279798150649

`A246737(A000217(n+4)+5)`
-/

namespace A246742.P16873730279798150649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A000217 (n + 4) + 5).toNat

end

end A246742.P16873730279798150649

/-! ## A246742.P3598299608876606775

`A246737(A161680(n+5)+5)`
-/

namespace A246742.P3598299608876606775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A161680 (n + 5) + 5).toNat

end

end A246742.P3598299608876606775

/-!
# A246743: Number of length 6+4 0..n arrays with no pair in any consecutive five terms totalling exactly n.

The programs for A246743, there is no canonical definition to state claims against.
-/

/-! ## A246743.P3355742761601367897

`A246737(A167499(n+4)+1)`
-/

namespace A246743.P3355742761601367897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A167499 (n + 4) + 1).toNat

end

end A246743.P3355742761601367897

/-! ## A246743.P1249218677913663567

`A246737(A000217(n+5)+6)`
-/

namespace A246743.P1249218677913663567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A000217 (n + 5) + 6).toNat

end

end A246743.P1249218677913663567

/-! ## A246743.P12740617817173379884

`A246737(A161680(n+6)+6)`
-/

namespace A246743.P12740617817173379884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A161680 (n + 6) + 6).toNat

end

end A246743.P12740617817173379884

/-! ## A246743.P9889614241422986697

`A246737(A167614(n+5)-(n+3))`
-/

namespace A246743.P9889614241422986697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A167614 (n + 5) - (n + 3 : ℤ)).toNat

end

end A246743.P9889614241422986697

/-! ## A246743.P2967851630118358194

`A246737(A027379(n+5)-A004277(n+2))`
-/

namespace A246743.P2967851630118358194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A027379 (n + 5) - A004277 (n + 2)).toNat

end

end A246743.P2967851630118358194

/-! ## A246743.P3550497608837448130

`A246737(A002620(n+2)+A002620(n+9))`
-/

namespace A246743.P3550497608837448130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A246743.P3550497608837448130

/-!
# A246744: Number of length 7+4 0..n arrays with no pair in any consecutive five terms totalling exactly n.

The programs for A246744, there is no canonical definition to state claims against.
-/

/-! ## A246744.P6609525429807169690

`A246737(A167499(n+5)+2)`
-/

namespace A246744.P6609525429807169690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A167499 (n + 5) + 2).toNat

end

end A246744.P6609525429807169690

/-! ## A246744.P14326206538167209219

`A246737(A000217(n+6)+7)`
-/

namespace A246744.P14326206538167209219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A000217 (n + 6) + 7).toNat

end

end A246744.P14326206538167209219

/-! ## A246744.P18143571024605695721

`A246737(A161680(n+7)+7)`
-/

namespace A246744.P18143571024605695721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A161680 (n + 7) + 7).toNat

end

end A246744.P18143571024605695721

/-! ## A246744.P16966596232684358284

`A246737(A167614(n+6)-(n+3))`
-/

namespace A246744.P16966596232684358284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A167614 (n + 6) - (n + 3 : ℤ)).toNat

end

end A246744.P16966596232684358284

/-! ## A246744.P13868828088064702994

`A246737(A087475(n+5)-A052905(n))`
-/

namespace A246744.P13868828088064702994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A087475 (n + 5) - A052905 n).toNat

end

end A246744.P13868828088064702994

/-! ## A246744.P1735085992958675600

`A246737(A055999(n+5)-A004277(n+1))`
-/

namespace A246744.P1735085992958675600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (A055999 (n + 5) - A004277 (n + 1)).toNat

end

end A246744.P1735085992958675600

/-! ## A246744.P4144501799225023130

`A246737(A087475(n+8)%A052905(n+6))`
-/

namespace A246744.P4144501799225023130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246737 (Int.tmod (A087475 (n + 8)) (A052905 (n + 6))).toNat

end

end A246744.P4144501799225023130

/-!
# A246747: The number of binary heaps on n elements whose breadth-first search reading word avoids 231.

The programs for A246747, there is no canonical definition to state claims against.
-/

/-! ## A246747.P7628663483367053654

`A245899(floor(acot(n)+n))`
-/

namespace A246747.P7628663483367053654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245899 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A246747.P7628663483367053654

/-! ## A246747.P8433465013167851414

`A245899(or(n, floor(acot(n))))`
-/

namespace A246747.P8433465013167851414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245899 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A246747.P8433465013167851414

/-! ## A246747.P4797730918470820889

`A245899(xor(n, floor(acot(n))))`
-/

namespace A246747.P4797730918470820889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245899 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A246747.P4797730918470820889

/-! ## A246747.P13592836508899352543

`A245899(round(sqrt(n²+1)))`
-/

namespace A246747.P13592836508899352543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245899 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A246747.P13592836508899352543

/-! ## A246747.P4562098526973400725

`A265535(A005316(n))`
-/

namespace A246747.P4562098526973400725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265535 (A005316 n).toNat

end

end A246747.P4562098526973400725

/-!
# A246748: Numbers n such that A242719(n) = (prime(n))^2+1 and A242720(n) - A242719(n) = 2*(prime(n)+1).

The programs for A246748, there is no canonical definition to state claims against.
-/

/-! ## A246748.P302892610553911333

`∩[A137291(n+1), A246824(n+1)]`
-/

namespace A246748.P302892610553911333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246748.P302892610553911333

/-! ## A246748.P16417974524607968019

`∩[A173472(n+1), A246824(n+1)]`
-/

namespace A246748.P16417974524607968019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246748.P16417974524607968019

/-! ## A246748.P11363204652074245281

`∩[A003963(A062326(n+1)), A246824(n+1)]`
-/

namespace A246748.P11363204652074245281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A062326 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246748.P11363204652074245281

/-!
# A246752: Expansion of phi(-x) * chi(x) * psi(-x^3) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A246752, there is no canonical definition to state claims against.
-/

/-! ## A246752.P18111148861136278808

`(-1)^n*A246650(n)`
-/

namespace A246752.P18111148861136278808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A246650 n

end

end A246752.P18111148861136278808

/-! ## A246752.P17062128771045550904

`A246650(n)*A309873(n+1)`
-/

namespace A246752.P17062128771045550904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246650 n * A309873 (n + 1)

end

end A246752.P17062128771045550904

/-! ## A246752.P16970477881130671509

`A246650(n)/A057077(A057077(n)+n)`
-/

namespace A246752.P16970477881130671509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246650 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A246752.P16970477881130671509

/-! ## A246752.P1139489662733913500

`A246650(n)/A057077(2*n)`
-/

namespace A246752.P1139489662733913500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246650 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A246752.P1139489662733913500

/-! ## A246752.P13159077306806719588

`A164272(3*n+1)/2`
-/

namespace A246752.P13159077306806719588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164272 (3 * n + 1) : ℚ) / 2

end

end A246752.P13159077306806719588

/-! ## A246752.P1867184631925445698

`-A262709(4*n+1)`
-/

namespace A246752.P1867184631925445698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A262709 (4 * n + 1)

end

end A246752.P1867184631925445698

/-!
# A246753: Triangular numbers with strictly increasing product of digits.

The programs for A246753, there is no canonical definition to state claims against.
-/

/-! ## A246753.P3518172502307037313

`∩[C(comp[7*n], n), ∑[n]]`
-/

namespace A246753.P3518172502307037313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = x) n

end

end A246753.P3518172502307037313

/-! ## A246753.P2051300070329276210

`∩[∑[A167404(n+2)], ∑[n]]`
-/

namespace A246753.P2051300070329276210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167404 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = x) n

end

end A246753.P2051300070329276210

/-! ## A246753.P2613363928412960164

`∩[A087597(n+1), A102827(n)]`
-/

namespace A246753.P2613363928412960164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102827 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246753.P2613363928412960164

/-! ## A246753.P17587035237005027992

`∩[A087597(n+1), A130399(n+1)]`
-/

namespace A246753.P17587035237005027992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246753.P17587035237005027992

/-! ## A246753.P7063557083690333844

`∩[A087597(n+1), A190221(n+1)]`
-/

namespace A246753.P7063557083690333844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246753.P7063557083690333844

/-!
# A246754: Least positive number k such that k^k is at least 10^n digits long.

The programs for A246754, there is no canonical definition to state claims against.
-/

/-! ## A246754.P8755519078806773320

`A095703(A002283(n))+∑{p}[n+1, gcd(n, #)]`
-/

namespace A246754.P8755519078806773320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095703 (A002283 n).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)

end

end A246754.P8755519078806773320

/-!
# A246755: Numbers of the form 2k - 1 such that A246702(k) = 3.

The programs for A246755, there is no canonical definition to state claims against.
-/

/-! ## A246755.P15731295049465590325

`A005408(eq[3, A246702(n+1)])`
-/

namespace A246755.P15731295049465590325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246755.P15731295049465590325

/-! ## A246755.P11348980415160890829

`A144396(eq[3, A246702(n+1)])`
-/

namespace A246755.P11348980415160890829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246755.P11348980415160890829

/-! ## A246755.P15544450438146940797

`A160144(eq[3, A246702(n+1)])`
-/

namespace A246755.P15544450438146940797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246755.P15544450438146940797

/-! ## A246755.P5665319478145515848

`A267872(eq[3, A246702(n+1)])`
-/

namespace A246755.P5665319478145515848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246755.P5665319478145515848

/-! ## A246755.P5027611961838691617

`A267873(eq[3, A246702(n+1)])`
-/

namespace A246755.P5027611961838691617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246755.P5027611961838691617

/-! ## A246755.P3613471777416099833

`A267881(eq[3, A246702(n+1)])`
-/

namespace A246755.P3613471777416099833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246755.P3613471777416099833

/-! ## A246755.P2968347452633219124

`A130773(eq[1, A246702(n+1)-2])`
-/

namespace A246755.P2968347452633219124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246755.P2968347452633219124

/-! ## A246755.P5384015261406624651

`A237292(eq[1, A246702(n+1)-2])`
-/

namespace A246755.P5384015261406624651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246755.P5384015261406624651

/-! ## A246755.P7106364863345548311

`eq[A141310(n)+1, A246702(A008619(n))]`
-/

namespace A246755.P7106364863345548311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246702 (A008619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246755.P7106364863345548311

/-!
# A246756: Number of noncrossing acyclic digraphs on n labeled nodes.

The programs for A246756, there is no canonical definition to state claims against.
-/

/-! ## A246756.P6360298413464724632

`A145349(n)-∑[A008620(A120971(n))-1]`
-/

namespace A246756.P6360298413464724632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A120971 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145349 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246756.P6360298413464724632

/-!
# A246757: Largest n-digit number divisible by the product of its decimal digits.

The programs for A246757, there is no canonical definition to state claims against.
-/

/-! ## A246757.P13072185345187252057

`A007602(lt[A360075(n+1), A130130(n)])`
-/

namespace A246757.P13072185345187252057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A246757.P13072185345187252057

/-! ## A246757.P17352793572761667103

`A007602(eq[A168046(n), A360075(n+1)])`
-/

namespace A246757.P17352793572761667103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A246757.P17352793572761667103

/-! ## A246757.P4730443947411969205

`A007602(eq[A230093(2*n+1), A360075(n+1)])`
-/

namespace A246757.P4730443947411969205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A246757.P4730443947411969205

/-!
# A246758: Prime numbers of the form (2^(m*n)-1)/((2^m-1)*(2^n-1)).

The programs for A246758, there is no canonical definition to state claims against.
-/

/-! ## A246758.P4269997958049085562

`∩[A140803(n+1), A144755(n+1)]`
-/

namespace A246758.P4269997958049085562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246758.P4269997958049085562

/-! ## A246758.P8499795842414250251

`∩[A140803(n+1), A153602(n+1)]`
-/

namespace A246758.P8499795842414250251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246758.P8499795842414250251

/-! ## A246758.P2310667578469617331

`∩[A140803(n+1), A206864(n+1)]`
-/

namespace A246758.P2310667578469617331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246758.P2310667578469617331

/-! ## A246758.P1669215231600518019

`A140803(lt[A283875(n), A325034(n+1)])`
-/

namespace A246758.P1669215231600518019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140803 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A246758.P1669215231600518019

/-! ## A246758.P17827357789777616896

`∩[A112674(n+1), A144755(n+1)]`
-/

namespace A246758.P17827357789777616896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246758.P17827357789777616896

/-!
# A246759: Nonnegative numbers k such that x^5 - x^4 + k is reducible.

The programs for A246759, there is no canonical definition to state claims against.
-/

/-! ## A246759.P6592759998363379710

`A006128(n)*A330060(A091410(n+1))`
-/

namespace A246759.P6592759998363379710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n * A330060 (A091410 (n + 1)).toNat

end

end A246759.P6592759998363379710

/-!
# A246760: a(1) = 5; a(n) for n > 1 is the smallest prime > a(n-1) that differs from a(n-1) by a square.

The programs for A246760, there is no canonical definition to state claims against.
-/

/-! ## A246760.P11711773814275147371

`A081447(n)+a(n-1)` with `a(0)=5`
-/

namespace A246760.P11711773814275147371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A081447 n + a (n - 1)

end

end A246760.P11711773814275147371

/-! ## A246760.P1777563479238123996

`∑[A081447(n+1)]+5-A081447(n+1)`
-/

namespace A246760.P1777563479238123996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (5 - A081447 (n + 1))

end

end A246760.P1777563479238123996

/-! ## A246760.P3700833558619912332

`A081447(n)-((n*A005206(n))%n-a(n-1))` with `a(0)=5`
-/

namespace A246760.P3700833558619912332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A081447 n - (Int.tmod ((n : ℤ) * A005206 n) (n : ℤ) - a (n - 1))

end

end A246760.P3700833558619912332

/-! ## A246760.P8684435989046520030

`A059843(a(n-1))` with `a(0)=5`
-/

namespace A246760.P8684435989046520030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A059843 (a (n - 1)).toNat

end

end A246760.P8684435989046520030

/-! ## A246760.P16754817743072211921

`A059843(floor(a(A023443(n))))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A246760.P16754817743072211921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A059843 (a (A023443 n).toNat).toNat

end

end A246760.P16754817743072211921

/-!
# A246762: Expansion of 1 / (chi(x) * chi(x^7)) in powers of x where chi() is a Ramanujan theta function.

The programs for A246762, there is no canonical definition to state claims against.
-/

/-! ## A246762.P11850581697089199445

`(-1)^n*A093950(n)`
-/

namespace A246762.P11850581697089199445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A093950 n

end

end A246762.P11850581697089199445

/-! ## A246762.P7562094633297018362

`A033999(n)*A112212(2*n+1)`
-/

namespace A246762.P7562094633297018362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112212 (2 * n + 1)

end

end A246762.P7562094633297018362

/-! ## A246762.P13099339106468713783

`A093950(n)*A164677(2*n+1)`
-/

namespace A246762.P13099339106468713783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093950 n * A164677 (2 * n + 1)

end

end A246762.P13099339106468713783

/-! ## A246762.P2627410051004233978

`A033999(n+1)*A102314(2*n+1)`
-/

namespace A246762.P2627410051004233978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A102314 (2 * n + 1)

end

end A246762.P2627410051004233978

/-! ## A246762.P1016077627337343319

`A009001(2*n)*A112212(2*n+1)`
-/

namespace A246762.P1016077627337343319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A112212 (2 * n + 1)

end

end A246762.P1016077627337343319

/-! ## A246762.P7658444675302095706

`A056594(2*n)*A112212(2*n+1)`
-/

namespace A246762.P7658444675302095706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A112212 (2 * n + 1)

end

end A246762.P7658444675302095706

/-! ## A246762.P6029422330415008256

`A034947(2*n+1)*A112212(2*n+1)`
-/

namespace A246762.P6029422330415008256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A112212 (2 * n + 1)

end

end A246762.P6029422330415008256

/-! ## A246762.P17924270006281544617

`A093950(n)/A164677(record[A000265(n+1)])`
-/

namespace A246762.P17924270006281544617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093950 n : ℚ) / (A164677 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A246762.P17924270006281544617

/-!
# A246763: Catalan(n)^2 mod prime(n).

The programs for A246763, the canonical program `A246763.P14187858636843701448` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246763 has offset 1).

The definition of A246763 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n+1)²%A000040(n+1)` (program `A246763.P14187858636843701448`, by `A246763.P14187858636843701448.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246763.P14187858636843701448

`A000108(n+1)²%A000040(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A246763

/-- `A000108(n+1)²%A000040(n+1)` -/
def P14187858636843701448.Spec : Prop :=
  ∀ n, P14187858636843701448.a n = A246763 (n + 1)

theorem P14187858636843701448.correct : P14187858636843701448.Spec := by
  intro n
  simp only [A246763, Nat.add_sub_cancel]

end A246763

/-! ## A246763.P9034617049166049105

`A246714(n+1)²%Δ[A007504(n)]`
-/

namespace A246763.P9034617049166049105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246714 (n + 1) ^ 2) (f1 (n + 1) - f1 n)

end

end A246763.P9034617049166049105

namespace A246763

/-- `A246714(n+1)²%Δ[A007504(n)]` -/
def P9034617049166049105.Spec : Prop :=
  ∀ n, P9034617049166049105.a n = A246763 (n + 1)

end A246763

/-! ## A246763.P15036355671876446679

`A000290(A246714(n+1))%A000040(n+1)`
-/

namespace A246763.P15036355671876446679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A246714 (n + 1)).toNat) (A000040 (n + 1))

end

end A246763.P15036355671876446679

namespace A246763

/-- `A000290(A246714(n+1))%A000040(n+1)` -/
def P15036355671876446679.Spec : Prop :=
  ∀ n, P15036355671876446679.a n = A246763 (n + 1)

end A246763

/-! ## A246763.P14828510353424622407

`(∑[A071724(n)]%A000040(n+1))²%A000040(n+1)`
-/

namespace A246763.P14828510353424622407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1)) ^ 2) (A000040 (n + 1))

end

end A246763.P14828510353424622407

namespace A246763

/-- `(∑[A071724(n)]%A000040(n+1))²%A000040(n+1)` -/
def P14828510353424622407.Spec : Prop :=
  ∀ n, P14828510353424622407.a n = A246763 (n + 1)

end A246763

/-! ## A246763.P6891026138120212107

`∑[A071724(n)]²%A000040(n+1)`
-/

namespace A246763.P6891026138120212107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) (A000040 (n + 1))

end

end A246763.P6891026138120212107

namespace A246763

/-- `∑[A071724(n)]²%A000040(n+1)` -/
def P6891026138120212107.Spec : Prop :=
  ∀ n, P6891026138120212107.a n = A246763 (n + 1)

end A246763

/-! ## A246763.P12232133505004462482

`Δ[A014137(n)]²%A000040(n+1)`
-/

namespace A246763.P12232133505004462482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) (A000040 (n + 1))

end

end A246763.P12232133505004462482

namespace A246763

/-- `Δ[A014137(n)]²%A000040(n+1)` -/
def P12232133505004462482.Spec : Prop :=
  ∀ n, P12232133505004462482.a n = A246763 (n + 1)

end A246763

/-! ## A246763.P6977259258628940390

`Δ[A014138(n)]²%A000040(n+1)`
-/

namespace A246763.P6977259258628940390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) (A000040 (n + 1))

end

end A246763.P6977259258628940390

namespace A246763

/-- `Δ[A014138(n)]²%A000040(n+1)` -/
def P6977259258628940390.Spec : Prop :=
  ∀ n, P6977259258628940390.a n = A246763 (n + 1)

end A246763

/-! ## A246763.P14101652494709405071

`A115141(n+2)²%Δ[A007504(n)]`
-/

namespace A246763.P14101652494709405071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115141 (n + 2) ^ 2) (f1 (n + 1) - f1 n)

end

end A246763.P14101652494709405071

namespace A246763

/-- `A115141(n+2)²%Δ[A007504(n)]` -/
def P14101652494709405071.Spec : Prop :=
  ∀ n, P14101652494709405071.a n = A246763 (n + 1)

end A246763

/-! ## A246763.P10877429354280133418

`record[A126120(n)²]%A000040(n+1)`
-/

namespace A246763.P10877429354280133418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000040 (n + 1))

end

end A246763.P10877429354280133418

namespace A246763

/-- `record[A126120(n)²]%A000040(n+1)` -/
def P10877429354280133418.Spec : Prop :=
  ∀ n, P10877429354280133418.a n = A246763 (n + 1)

end A246763

/-!
# A246764: Number of tilings of a 5 X n rectangle using n pentominoes of shapes P, I, N, T.

The programs for A246764, there is no canonical definition to state claims against.
-/

/-! ## A246764.P10548687838185187839

`or(A216634(A001973(n)), A247196(n))`
-/

namespace A246764.P10548687838185187839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A216634 (A001973 n).toNat) (A247196 n)

end

end A246764.P10548687838185187839

/-! ## A246764.P8536992348244861041

`or(A247196(n), A306489(A000079(n)))`
-/

namespace A246764.P8536992348244861041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A247196 n) (A306489 (A000079 n).toNat)

end

end A246764.P8536992348244861041

/-! ## A246764.P3023526235647605156

`or(A264765(n), A306489(A000079(n)))`
-/

namespace A246764.P3023526235647605156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A264765 n) (A306489 (A000079 n).toNat)

end

end A246764.P3023526235647605156

/-!
# A246767: a(n) = n^4 - 2n.

The programs for A246767, the canonical program `A246767.P4788069445635632835` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246767 has offset 1).

The definition of A246767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4-2*n` (program `A246767.P4788069445635632835`, by `A246767.P4788069445635632835.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A246767.P4788069445635632835

`n^4-2*n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A246767

/-- `n^4-2*n` -/
def P4788069445635632835.Spec : Prop :=
  ∀ n, P4788069445635632835.a n = A246767 (n + 1)

theorem P4788069445635632835.correct : P4788069445635632835.Spec := by
  intro n
  simp only [A246767, Nat.add_sub_cancel]

end A246767

/-! ## A246767.P5643058431222441358

`n*(A000578(n)-2)`
-/

namespace A246767.P5643058431222441358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000578 n - 2)

end

end A246767.P5643058431222441358

namespace A246767

/-- `n*(A000578(n)-2)` -/
def P5643058431222441358.Spec : Prop :=
  ∀ n, P5643058431222441358.a n = A246767 (n + 1)

theorem P5643058431222441358.correct : P5643058431222441358.Spec := by
  intro n
  simp only [A246767, Nat.add_sub_cancel, A246767.P5643058431222441358.a, A246767.P4788069445635632835.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246767

/-! ## A246767.P9896285142796069619

`n*(A084380(n)-4)`
-/

namespace A246767.P9896285142796069619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A084380 n - 4)

end

end A246767.P9896285142796069619

namespace A246767

/-- `n*(A084380(n)-4)` -/
def P9896285142796069619.Spec : Prop :=
  ∀ n, P9896285142796069619.a n = A246767 (n + 1)

theorem P9896285142796069619.correct : P9896285142796069619.Spec := by
  intro n
  simp only [A246767, Nat.add_sub_cancel, A246767.P9896285142796069619.a, A246767.P4788069445635632835.a, A084380, A084380.P6829574100812521440.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246767

/-! ## A246767.P3167858172515683795

`n*(A084378(n)-5)`
-/

namespace A246767.P3167858172515683795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A084378 n - 5)

end

end A246767.P3167858172515683795

namespace A246767

/-- `n*(A084378(n)-5)` -/
def P3167858172515683795.Spec : Prop :=
  ∀ n, P3167858172515683795.a n = A246767 (n + 1)

theorem P3167858172515683795.correct : P3167858172515683795.Spec := by
  intro n
  simp only [A246767, Nat.add_sub_cancel, A246767.P3167858172515683795.a, A246767.P4788069445635632835.a, A084378, A084378.P12410888067211315786.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246767

/-! ## A246767.P3265329299510007290

`Δ[∑[(n-1)²²]-lcm(n, n-1)]`
-/

namespace A246767.P3265329299510007290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A246767.P3265329299510007290

namespace A246767

/-- `Δ[∑[(n-1)²²]-lcm(n, n-1)]` -/
def P3265329299510007290.Spec : Prop :=
  ∀ n, P3265329299510007290.a n = A246767 (n + 1)

end A246767

/-!
# A246773: Decimal expansion of 'v', an auxiliary constant associated with the asymptotic number of row-convex polyominoes.

The programs for A246773, there is no canonical definition to state claims against.
-/

/-! ## A246773.P10080415600250996233

`2*A356035(n)-A137421(n)`
-/

namespace A246773.P10080415600250996233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A356035 (n + 1) - A137421 (n + 1)

end

end A246773.P10080415600250996233

/-!
# A246776: a(n) = floor(prime(n)^(1+1/n)) - prime(n+1).

The programs for A246776, the canonical program `A246776.P2517314765722432230` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246776 has offset 1).

The definition of A246776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246776.P2517314765722432230

`A249669(n+1)-A000040(n+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A246776

/-- `A249669(n+1)-A000040(n+2)` -/
def P2517314765722432230.Spec : Prop :=
  ∀ n, P2517314765722432230.a n = A246776 (n + 1)

theorem P2517314765722432230.correct : P2517314765722432230.Spec := by
  intro n
  simp only [A246776, Nat.add_sub_cancel]

end A246776

/-! ## A246776.P15112178489390802708

`floor(A000040(n+1)^(1+1/(n+1)))-A000040(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246776.P15112178489390802708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℝ) ^ (1 + 1 / (n + 1 : ℚ) : ℝ)⌋ - A000040 (n + 2)

end

end A246776.P15112178489390802708

namespace A246776

/-- `floor(A000040(n+1)^(1+1/(n+1)))-A000040(n+2)` -/
def P15112178489390802708.Spec : Prop :=
  ∀ n, P15112178489390802708.a n = A246776 (n + 1)

end A246776

/-! ## A246776.P1305388066952021108

`A246778(n+1)-A001223(n+1)`
-/

namespace A246776.P1305388066952021108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246778 (n + 1) - A001223 (n + 1)

end

end A246776.P1305388066952021108

namespace A246776

/-- `A246778(n+1)-A001223(n+1)` -/
def P1305388066952021108.Spec : Prop :=
  ∀ n, P1305388066952021108.a n = A246776 (n + 1)

theorem P1305388066952021108.correct : P1305388066952021108.Spec := by
  intro n
  simp only [A246776, Nat.add_sub_cancel, A246776.P1305388066952021108.a, A246776.P2517314765722432230.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A246778, A246778.P4705111850102885447.a, A249669, A249669.P1996961454374342907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246776

/-! ## A246776.P5495648896394616836

`A249669(n+1)-A065091(n+1)`
-/

namespace A246776.P5495648896394616836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - A065091 (n + 1)

end

end A246776.P5495648896394616836

namespace A246776

/-- `A249669(n+1)-A065091(n+1)` -/
def P5495648896394616836.Spec : Prop :=
  ∀ n, P5495648896394616836.a n = A246776 (n + 1)

end A246776

/-! ## A246776.P2955461224544144590

`A246778(n+1)-Δ[A000040(n+1)]`
-/

namespace A246776.P2955461224544144590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246778 (n + 1) - (f1 (n + 1) - f1 n)

end

end A246776.P2955461224544144590

namespace A246776

/-- `A246778(n+1)-Δ[A000040(n+1)]` -/
def P2955461224544144590.Spec : Prop :=
  ∀ n, P2955461224544144590.a n = A246776 (n + 1)

theorem P2955461224544144590.correct : P2955461224544144590.Spec := by
  intro n
  simp only [A246776, Nat.add_sub_cancel, A246776.P2955461224544144590.f1, A246776.P2955461224544144590.a, A246776.P2517314765722432230.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A246778, A246778.P4705111850102885447.a, A249669, A249669.P1996961454374342907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246776

/-! ## A246776.P10278356546210843461

`A000040(n+1)+A246778(n+1)-A000040(n+2)`
-/

namespace A246776.P10278356546210843461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A246778 (n + 1) - A000040 (n + 2))

end

end A246776.P10278356546210843461

namespace A246776

/-- `A000040(n+1)+A246778(n+1)-A000040(n+2)` -/
def P10278356546210843461.Spec : Prop :=
  ∀ n, P10278356546210843461.a n = A246776 (n + 1)

theorem P10278356546210843461.correct : P10278356546210843461.Spec := by
  intro n
  simp only [A246776, Nat.add_sub_cancel, A246776.P10278356546210843461.a, A246776.P2517314765722432230.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A246778, A246778.P4705111850102885447.a, A249669, A249669.P1996961454374342907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246776

/-! ## A246776.P7926991734466111154

`A249669(n+1)+A246778(n+2)-A249669(n+2)`
-/

namespace A246776.P7926991734466111154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) + (A246778 (n + 2) - A249669 (n + 2))

end

end A246776.P7926991734466111154

namespace A246776

/-- `A249669(n+1)+A246778(n+2)-A249669(n+2)` -/
def P7926991734466111154.Spec : Prop :=
  ∀ n, P7926991734466111154.a n = A246776 (n + 1)

theorem P7926991734466111154.correct : P7926991734466111154.Spec := by
  intro n
  simp only [A246776, Nat.add_sub_cancel, A246776.P7926991734466111154.a, A246776.P2517314765722432230.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A246778, A246778.P4705111850102885447.a, A249669, A249669.P1996961454374342907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246776

/-! ## A246776.P4185452044833747415

`A249669(n+1)-record[A006530(n+3)]`
-/

namespace A246776.P4185452044833747415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246776.P4185452044833747415

namespace A246776

/-- `A249669(n+1)-record[A006530(n+3)]` -/
def P4185452044833747415.Spec : Prop :=
  ∀ n, P4185452044833747415.a n = A246776 (n + 1)

end A246776

/-! ## A246776.P17556626021927932151

`A249669(n+1)-record[A020639(n+3)]`
-/

namespace A246776.P17556626021927932151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246776.P17556626021927932151

namespace A246776

/-- `A249669(n+1)-record[A020639(n+3)]` -/
def P17556626021927932151.Spec : Prop :=
  ∀ n, P17556626021927932151.a n = A246776 (n + 1)

end A246776

/-! ## A246776.P802713781824674749

`A249669(n+1)%record[A006530(n^and(1, n)+2)]`
-/

namespace A246776.P802713781824674749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n ^ Nat.land 1 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249669 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A246776.P802713781824674749

namespace A246776

/-- `A249669(n+1)%record[A006530(n^and(1, n)+2)]` -/
def P802713781824674749.Spec : Prop :=
  ∀ n, P802713781824674749.a n = A246776 (n + 1)

end A246776

/-! ## A246776.P1035937538641714685

`A249669(n+1)-p?[A004273(n)]`
-/

namespace A246776.P1035937538641714685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246776.P1035937538641714685

namespace A246776

/-- `A249669(n+1)-p?[A004273(n)]` -/
def P1035937538641714685.Spec : Prop :=
  ∀ n, P1035937538641714685.a n = A246776 (n + 1)

end A246776

/-! ## A246776.P135773511491055895

`A249669(n+1)-p?[A005408(n)]`
-/

namespace A246776.P135773511491055895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246776.P135773511491055895

namespace A246776

/-- `A249669(n+1)-p?[A005408(n)]` -/
def P135773511491055895.Spec : Prop :=
  ∀ n, P135773511491055895.a n = A246776 (n + 1)

end A246776

/-! ## A246776.P17748209111381086978

`A249669(n+1)-p?[A093178(n)]`
-/

namespace A246776.P17748209111381086978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246776.P17748209111381086978

namespace A246776

/-- `A249669(n+1)-p?[A093178(n)]` -/
def P17748209111381086978.Spec : Prop :=
  ∀ n, P17748209111381086978.a n = A246776 (n + 1)

end A246776

/-! ## A246776.P3951109551928327838

`A249669(n+1)-p?[A022998(n)]`
-/

namespace A246776.P3951109551928327838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246776.P3951109551928327838

namespace A246776

/-- `A249669(n+1)-p?[A022998(n)]` -/
def P3951109551928327838.Spec : Prop :=
  ∀ n, P3951109551928327838.a n = A246776 (n + 1)

end A246776

/-! ## A246776.P14529711297663075678

`A249669(n+1)-p?[A195161(n)]`
-/

namespace A246776.P14529711297663075678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246776.P14529711297663075678

namespace A246776

/-- `A249669(n+1)-p?[A195161(n)]` -/
def P14529711297663075678.Spec : Prop :=
  ∀ n, P14529711297663075678.a n = A246776 (n + 1)

end A246776

/-!
# A246777: a(n) = A246776(A005669(n)): using the indices of maximal primes in A002386 in order to verify the Firoozbakht conjecture for 0 <= floor(prime(n)^(1+1/n)) - prime(n+1).

The programs for A246777, there is no canonical definition to state claims against.
-/

/-! ## A246777.P4805131805040744959

`A246776(A005669(n+1))`
-/

namespace A246777.P4805131805040744959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246776 (A005669 (n + 1)).toNat

end

end A246777.P4805131805040744959

/-! ## A246777.P5703938450150172624

`A246789(n+1)-A005250(n+1)`
-/

namespace A246777.P5703938450150172624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246789 (n + 1) - A005250 (n + 1)

end

end A246777.P5703938450150172624

/-! ## A246777.P12775339062627133220

`A246789(n+1)-record[A014320(n+1)]`
-/

namespace A246777.P12775339062627133220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246789 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246777.P12775339062627133220

/-! ## A246777.P15569215858765975066

`A246789(n+1)-∑[A053695(C(2, n+2)+n)]`
-/

namespace A246777.P15569215858765975066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246789 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246777.P15569215858765975066

/-! ## A246777.P10721614447727565516

`A246789(n+1)-(∑[A053695(abs(1-n)+1)]-1)`
-/

namespace A246777.P10721614447727565516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246789 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A246777.P10721614447727565516

/-! ## A246777.P5817906432342233117

`A246789(n+1)-∑[A053695(A028310(n))]`
-/

namespace A246777.P5817906432342233117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246789 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246777.P5817906432342233117

/-! ## A246777.P16213681366550482028

`A246789(n+1)-∑[A053695(sqrt(A253909(n)))]`
-/

namespace A246777.P16213681366550482028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (SequenceMachineLib.roundAway (Real.sqrt (A253909 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246789 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246777.P16213681366550482028

/-! ## A246777.P8549903223295922630

`A246789(n+1)-∑[A053695(A065033(2*n))]`
-/

namespace A246777.P8549903223295922630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246789 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246777.P8549903223295922630

/-! ## A246777.P4099037791130744892

`A246789(n+1)-∑[A053695(A000196(n²+1))]`
-/

namespace A246777.P4099037791130744892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (A000196 (n ^ 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246789 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246777.P4099037791130744892

/-! ## A246777.P10957726513687187315

`A246789(n+1)-∑[A053695(A004273(n)+1-n)]`
-/

namespace A246777.P10957726513687187315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (A004273 n + (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246789 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246777.P10957726513687187315

/-!
# A246778: a(n) = floor(prime(n)^(1+1/n)) - prime(n).

The programs for A246778, the canonical program `A246778.P4705111850102885447` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246778 has offset 1).

The definition of A246778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246778.P4705111850102885447

`A249669(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A246778

/-- `A249669(n+1)-A000040(n+1)` -/
def P4705111850102885447.Spec : Prop :=
  ∀ n, P4705111850102885447.a n = A246778 (n + 1)

theorem P4705111850102885447.correct : P4705111850102885447.Spec := by
  intro n
  simp only [A246778, Nat.add_sub_cancel]

end A246778

/-! ## A246778.P16364777621138464008

`floor(A000040(n+1)^(1+1/(n+1)))-A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246778.P16364777621138464008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℝ) ^ (1 + 1 / (n + 1 : ℚ) : ℝ)⌋ - A000040 (n + 1)

end

end A246778.P16364777621138464008

namespace A246778

/-- `floor(A000040(n+1)^(1+1/(n+1)))-A000040(n+1)` -/
def P16364777621138464008.Spec : Prop :=
  ∀ n, P16364777621138464008.a n = A246778 (n + 1)

end A246778

/-! ## A246778.P14454790152238365673

`A246776(n+1)+A001223(n+1)`
-/

namespace A246778.P14454790152238365673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246776 (n + 1) + A001223 (n + 1)

end

end A246778.P14454790152238365673

namespace A246778

/-- `A246776(n+1)+A001223(n+1)` -/
def P14454790152238365673.Spec : Prop :=
  ∀ n, P14454790152238365673.a n = A246778 (n + 1)

theorem P14454790152238365673.correct : P14454790152238365673.Spec := by
  intro n
  simp only [A246778, Nat.add_sub_cancel, A246778.P14454790152238365673.a, A246778.P4705111850102885447.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A246776, A246776.P2517314765722432230.a, A249669, A249669.P1996961454374342907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246778

/-! ## A246778.P18030943081751332164

`A249669(n+1)-(A006093(n+1)+1)`
-/

namespace A246778.P18030943081751332164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - (A006093 (n + 1) + 1)

end

end A246778.P18030943081751332164

namespace A246778

/-- `A249669(n+1)-(A006093(n+1)+1)` -/
def P18030943081751332164.Spec : Prop :=
  ∀ n, P18030943081751332164.a n = A246778 (n + 1)

theorem P18030943081751332164.correct : P18030943081751332164.Spec := by
  intro n
  simp only [A246778, Nat.add_sub_cancel, A246778.P18030943081751332164.a, A246778.P4705111850102885447.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A249669, A249669.P1996961454374342907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246778

/-! ## A246778.P3440987001517164967

`A249669(n+1)+1-A008864(n+1)`
-/

namespace A246778.P3440987001517164967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) + (1 - A008864 (n + 1))

end

end A246778.P3440987001517164967

namespace A246778

/-- `A249669(n+1)+1-A008864(n+1)` -/
def P3440987001517164967.Spec : Prop :=
  ∀ n, P3440987001517164967.a n = A246778 (n + 1)

theorem P3440987001517164967.correct : P3440987001517164967.Spec := by
  intro n
  simp only [A246778, Nat.add_sub_cancel, A246778.P3440987001517164967.a, A246778.P4705111850102885447.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A249669, A249669.P1996961454374342907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246778

/-! ## A246778.P3773557386882599257

`floor(A000040(n+1)^ratio[n+1])-(A008864(n+1)-1)`
-/

namespace A246778.P3773557386882599257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)⌋ - (A008864 (n + 1) - 1)

end

end A246778.P3773557386882599257

namespace A246778

/-- `floor(A000040(n+1)^ratio[n+1])-(A008864(n+1)-1)` -/
def P3773557386882599257.Spec : Prop :=
  ∀ n, P3773557386882599257.a n = A246778 (n + 1)

theorem P3773557386882599257.correct : P3773557386882599257.Spec := by
  intro n
  simp only [A246778, Nat.add_sub_cancel, A246778.P3773557386882599257.f1, A246778.P3773557386882599257.a, A246778.P4705111850102885447.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A249669, A249669.P1996961454374342907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246778

/-! ## A246778.P4996907410968273910

`floor(A000040(n+1)^ratio[n+1])-(A113935(n+1)-3)`
-/

namespace A246778.P4996907410968273910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)⌋ - (A113935 (n + 1) - 3)

end

end A246778.P4996907410968273910

namespace A246778

/-- `floor(A000040(n+1)^ratio[n+1])-(A113935(n+1)-3)` -/
def P4996907410968273910.Spec : Prop :=
  ∀ n, P4996907410968273910.a n = A246778 (n + 1)

theorem P4996907410968273910.correct : P4996907410968273910.Spec := by
  intro n
  simp only [A246778, Nat.add_sub_cancel, A246778.P4996907410968273910.f1, A246778.P4996907410968273910.a, A246778.P4705111850102885447.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A113935, A113935.P8490065931569907193.a, A249669, A249669.P1996961454374342907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246778

/-! ## A246778.P12729231573034312316

`A249669(n+1)-A008578(n+2)`
-/

namespace A246778.P12729231573034312316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - A008578 (n + 2)

end

end A246778.P12729231573034312316

namespace A246778

/-- `A249669(n+1)-A008578(n+2)` -/
def P12729231573034312316.Spec : Prop :=
  ∀ n, P12729231573034312316.a n = A246778 (n + 1)

end A246778

/-! ## A246778.P10714415534576460991

`A246776(n+1)+A000040(n+2)-A000040(n+1)`
-/

namespace A246778.P10714415534576460991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246776 (n + 1) + (A000040 (n + 2) - A000040 (n + 1))

end

end A246778.P10714415534576460991

namespace A246778

/-- `A246776(n+1)+A000040(n+2)-A000040(n+1)` -/
def P10714415534576460991.Spec : Prop :=
  ∀ n, P10714415534576460991.a n = A246778 (n + 1)

theorem P10714415534576460991.correct : P10714415534576460991.Spec := by
  intro n
  simp only [A246778, Nat.add_sub_cancel, A246778.P10714415534576460991.a, A246778.P4705111850102885447.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A246776, A246776.P2517314765722432230.a, A249669, A249669.P1996961454374342907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A246778

/-! ## A246778.P8284797274541580682

`A249669(n+1)-p?[A000961(n+1)]`
-/

namespace A246778.P8284797274541580682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246778.P8284797274541580682

namespace A246778

/-- `A249669(n+1)-p?[A000961(n+1)]` -/
def P8284797274541580682.Spec : Prop :=
  ∀ n, P8284797274541580682.a n = A246778 (n + 1)

end A246778

/-! ## A246778.P15687445492684537920

`A249669(n+1)-p?[A119257(n+1)+1]`
-/

namespace A246778.P15687445492684537920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246778.P15687445492684537920

namespace A246778

/-- `A249669(n+1)-p?[A119257(n+1)+1]` -/
def P15687445492684537920.Spec : Prop :=
  ∀ n, P15687445492684537920.a n = A246778 (n + 1)

end A246778

/-! ## A246778.P15464457047596940532

`A249669(n+1)-p?[A119257(n+1)]`
-/

namespace A246778.P15464457047596940532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246778.P15464457047596940532

namespace A246778

/-- `A249669(n+1)-p?[A119257(n+1)]` -/
def P15464457047596940532.Spec : Prop :=
  ∀ n, P15464457047596940532.a n = A246778 (n + 1)

end A246778

/-! ## A246778.P3547430051954245356

`A249669(n+1)-p?[A004273(n)+2]`
-/

namespace A246778.P3547430051954245356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246778.P3547430051954245356

namespace A246778

/-- `A249669(n+1)-p?[A004273(n)+2]` -/
def P3547430051954245356.Spec : Prop :=
  ∀ n, P3547430051954245356.a n = A246778 (n + 1)

end A246778

/-! ## A246778.P3386766034292997610

`A249669(n+1)-p?[A093178(n)+n]`
-/

namespace A246778.P3386766034292997610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246778.P3386766034292997610

namespace A246778

/-- `A249669(n+1)-p?[A093178(n)+n]` -/
def P3386766034292997610.Spec : Prop :=
  ∀ n, P3386766034292997610.a n = A246778 (n + 1)

end A246778

/-! ## A246778.P14098164104434509934

`A249669(n+1)-p?[comp[A006881(n+1)]]`
-/

namespace A246778.P14098164104434509934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A246778.P14098164104434509934

namespace A246778

/-- `A249669(n+1)-p?[comp[A006881(n+1)]]` -/
def P14098164104434509934.Spec : Prop :=
  ∀ n, P14098164104434509934.a n = A246778 (n + 1)

end A246778

/-! ## A246778.P3599797238563369192

`A249669(n+1)-p?[A007916(n+1)]`
-/

namespace A246778.P3599797238563369192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246778.P3599797238563369192

namespace A246778

/-- `A249669(n+1)-p?[A007916(n+1)]` -/
def P3599797238563369192.Spec : Prop :=
  ∀ n, P3599797238563369192.a n = A246778 (n + 1)

end A246778

/-! ## A246778.P3450921326054621873

`A249669(n+1)-p?[A014681(n)]`
-/

namespace A246778.P3450921326054621873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246778.P3450921326054621873

namespace A246778

/-- `A249669(n+1)-p?[A014681(n)]` -/
def P3450921326054621873.Spec : Prop :=
  ∀ n, P3450921326054621873.a n = A246778 (n + 1)

end A246778

/-! ## A246778.P650610805493929049

`A249669(n+1)-record[A014963(n+2)]`
-/

namespace A246778.P650610805493929049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246778.P650610805493929049

namespace A246778

/-- `A249669(n+1)-record[A014963(n+2)]` -/
def P650610805493929049.Spec : Prop :=
  ∀ n, P650610805493929049.a n = A246778 (n + 1)

end A246778

/-! ## A246778.P18394552484435713838

`A249669(n+1)-p?[A060000(n+1)]`
-/

namespace A246778.P18394552484435713838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246778.P18394552484435713838

namespace A246778

/-- `A249669(n+1)-p?[A060000(n+1)]` -/
def P18394552484435713838.Spec : Prop :=
  ∀ n, P18394552484435713838.a n = A246778 (n + 1)

end A246778

/-! ## A246778.P6451926054739656809

`A249669(n+1)-p?[A138153(n+1)]`
-/

namespace A246778.P6451926054739656809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246778.P6451926054739656809

namespace A246778

/-- `A249669(n+1)-p?[A138153(n+1)]` -/
def P6451926054739656809.Spec : Prop :=
  ∀ n, P6451926054739656809.a n = A246778 (n + 1)

end A246778

/-!
# A246779: Strictly increasing terms of the sequence A246776: a(1)= A246776(1) and for n>0 a(n+1) is the next term greater than a(n) after that a(n) appears in A246776 for the first time.

The programs for A246779, there is no canonical definition to state claims against.
-/

/-! ## A246779.P361512713006650291

`record[A246776(n+2)]`
-/

namespace A246779.P361512713006650291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246776 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246779.P361512713006650291

/-! ## A246779.P3922835581229468736

`record[A246778(n+2)-A001223(n+2)]`
-/

namespace A246779.P3922835581229468736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246778 (n + 2) - A001223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246779.P3922835581229468736

/-! ## A246779.P11084452230321843864

`record[A249669(n+2)-A045344(n+2)]`
-/

namespace A246779.P11084452230321843864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 2) - A045344 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246779.P11084452230321843864

/-! ## A246779.P5862573520243251094

`record[A249669(n+2)-A008578(n+4)]`
-/

namespace A246779.P5862573520243251094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249669 (n + 2) - A008578 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246779.P5862573520243251094

/-! ## A246779.P6052347317587657854

`record[A249669(n+1)%A045344(n+1)]`
-/

namespace A246779.P6052347317587657854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249669 (n + 1)) (A045344 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246779.P6052347317587657854

/-! ## A246779.P28864905101898840

`record[A246778(n+1)-A134735(A103517(n))]`
-/

namespace A246779.P28864905101898840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246778 (n + 1) - A134735 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246779.P28864905101898840

/-!
# A246780: Strictly increasing terms of the sequence A246778: a(1)= A246778(1) and for n>0 a(n+1) is next term greater than a(n) after that a(n) appears in A246778 for the first time.

The programs for A246780, there is no canonical definition to state claims against.
-/

/-! ## A246780.P9158595931836700557

`comp[5*xor(1, a(n-1))]` with `a(0)=7, a(1)=10, a(2)=1`
-/

namespace A246780.P9158595931836700557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 10, 1] fun n f1 =>
  5 * Nat.xor 1 (f1 (n - 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A246780.P9158595931836700557

/-! ## A246780.P6528954056374720538

`∑[char[C(a(n-1), 2)]+1]` with `a(0)=0, a(1)=3, a(2)=4`
-/

namespace A246780.P6528954056374720538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4] fun n f2 =>
  Nat.choose (f2 (n - 1)) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246780.P6528954056374720538

/-! ## A246780.P15463308520095194123

`comp[a(n-1)*∑[n]]+2` with `a(0)=5, a(1)=8, a(2)=3`
-/

namespace A246780.P15463308520095194123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 8, 3] fun n f1 =>
  f1 (n - 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A246780.P15463308520095194123

/-! ## A246780.P16474627220190528574

`comp[floor(n/4)!-n*gcd(5, n%2)]`
-/

namespace A246780.P16474627220190528574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℚ) / 4⌋.toNat : ℤ) - (n * Nat.gcd 5 (n % 2) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246780.P16474627220190528574

/-! ## A246780.P16457575882728080579

`comp[and(2^n-1, Δ[7*n²-∑[n]])]`
-/

namespace A246780.P16457575882728080579
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 ^ n : ℤ) - 1) (f2 (n + 1) - f2 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246780.P16457575882728080579

/-! ## A246780.P1252347694229751806

`comp[5*(a(n-1)-a(n-2))]` with `a(0)=7, a(1)=10, a(2)=0, a(3)=1`
-/

namespace A246780.P1252347694229751806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 10, 0, 1] fun n f1 =>
  5 * (f1 (n - 1) - f1 (n - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246780.P1252347694229751806

/-! ## A246780.P6748348449922901642

`sqrt(record[A246778(n+1)²])`
-/

namespace A246780.P6748348449922901642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246778 (n + 1) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A246780.P6748348449922901642

/-! ## A246780.P8627357847868571147

`comp[∑[A006126(n)+1]]+2`
-/

namespace A246780.P8627357847868571147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006126 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A246780.P8627357847868571147

/-! ## A246780.P17905181481443497803

`comp[∑[ceil(n²/(4-A020639(n+1)))]]`
-/

namespace A246780.P17905181481443497803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / (4 - A020639 (n + 1) : ℚ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246780.P17905181481443497803

/-!
# A246781: Numbers n such that A182134(n) = 3, i.e., there exist only three primes p with prime(n) < p < prime(n)^(1 + 1/n).

The programs for A246781, there is no canonical definition to state claims against.
-/

/-! ## A246781.P1255842623669968432

`eq[3, A182134(n+1)]+1`
-/

namespace A246781.P1255842623669968432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246781.P1255842623669968432

/-! ## A246781.P7148945342669676748

`eq[3, A182134(A028310(n))]`
-/

namespace A246781.P7148945342669676748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246781.P7148945342669676748

/-! ## A246781.P4635727044404861972

`A065475(eq[3, A182134(n+1)])`
-/

namespace A246781.P4635727044404861972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246781.P4635727044404861972

/-! ## A246781.P13341647962750576746

`eq[3, A182134(A065033(2*n))]`
-/

namespace A246781.P13341647962750576746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246781.P13341647962750576746

/-! ## A246781.P14113949020164369998

`eq[3, A182134(A008619(A004273(n)))]`
-/

namespace A246781.P14113949020164369998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246781.P14113949020164369998

/-!
# A246782: Numbers k such that A182134(k)=2, i.e., there exist only two primes p with prime(k) < p < prime(k)^(1+1/k).

The programs for A246782, there is no canonical definition to state claims against.
-/

/-! ## A246782.P4414680614331610774

`eq[2, A182134(n+1)]+1`
-/

namespace A246782.P4414680614331610774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A246782.P4414680614331610774

/-! ## A246782.P8869667383350114789

`eq[2, A182134(A028310(n))]`
-/

namespace A246782.P8869667383350114789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246782.P8869667383350114789

/-! ## A246782.P13290254271819089785

`A020725(eq[2, A182134(n+1)])`
-/

namespace A246782.P13290254271819089785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246782.P13290254271819089785

/-! ## A246782.P2285944623457973100

`A065475(eq[2, A182134(n+1)])`
-/

namespace A246782.P2285944623457973100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246782.P2285944623457973100

/-! ## A246782.P5810859318616189899

`eq[2, A182134(A065033(2*n))]`
-/

namespace A246782.P5810859318616189899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246782.P5810859318616189899

/-!
# A246784: Numbers n such that both n and n+1 are in the sequence A246782.

The programs for A246784, there is no canonical definition to state claims against.
-/

/-! ## A246784.P8555266744577293949

`∩[A246782(n+1)-1, A246782(n+1)]`
-/

namespace A246784.P8555266744577293949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246782 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A246784.P8555266744577293949

/-! ## A246784.P12736097390261206536

`eq[4, A182134(n+1)*A246785(n+2)]`
-/

namespace A246784.P12736097390261206536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (n + 1) * A246785 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246784.P12736097390261206536

/-! ## A246784.P271210480787307023

`eq[2, lcm(A246785(n+2), A246785(n+3))]`
-/

namespace A246784.P271210480787307023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A246785 (n + 2)) (A246785 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246784.P271210480787307023

/-! ## A246784.P16174640556947337129

`∩[eq[2, A182134(n+1)], A246782(n+1)]`
-/

namespace A246784.P16174640556947337129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A246784.P16174640556947337129

/-! ## A246784.P2746113657850811069

`eq[A182134(n+1), A246062(A246785(n+2))]`
-/

namespace A246784.P2746113657850811069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246062 (A246785 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246784.P2746113657850811069

/-!
# A246786: Record values of A182134.

The programs for A246786, there is no canonical definition to state claims against.
-/

/-! ## A246786.P2332462467035366758

`lt[2, Δ[A246810(n+1)²]]+1`
-/

namespace A246786.P2332462467035366758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246810 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A246786.P2332462467035366758

/-! ## A246786.P15202360405632500883

`lt[0, Δ[A246810(A028310(n))²]]`
-/

namespace A246786.P15202360405632500883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246810 (A028310 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A246786.P15202360405632500883

/-! ## A246786.P11236508033877181841

`lt[A246810(n+1), A246810(n+2)]+1`
-/

namespace A246786.P11236508033877181841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246810 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A246786.P11236508033877181841

/-! ## A246786.P10121186558309429814

`lt[0, Δ[A246810(A008458(n)-5*n)²]]`
-/

namespace A246786.P10121186558309429814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246810 (A008458 n - (5 * n : ℤ)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A246786.P10121186558309429814

/-! ## A246786.P8208135568439947706

`lt[A246810(A028310(n)), A246810(n+1)]`
-/

namespace A246786.P8208135568439947706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246810 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246810 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A246786.P8208135568439947706

/-! ## A246786.P11577577413078988513

`A252475(n+1)-A246787(n+1)`
-/

namespace A246786.P11577577413078988513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252475 (n + 1) - A246787 (n + 1)

end

end A246786.P11577577413078988513

/-! ## A246786.P10531810128414115510

`A028310(A252475(n+1)%A246787(n+1))`
-/

namespace A246786.P10531810128414115510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A252475 (n + 1)) (A246787 (n + 1))).toNat

end

end A246786.P10531810128414115510

/-! ## A246786.P2049984445286597649

`A252475(n+1)-record[A246810(n+1)%A246810(n+2)]`
-/

namespace A246786.P2049984445286597649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246810 (n + 1)) (A246810 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252475 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246786.P2049984445286597649

/-!
# A246787: Indices of records in A182134.

The programs for A246787, there is no canonical definition to state claims against.
-/

/-! ## A246787.P13029019793677477642

`A246810(A246786(n+1))`
-/

namespace A246787.P13029019793677477642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246810 (A246786 (n + 1)).toNat

end

end A246787.P13029019793677477642

/-! ## A246787.P5252722786238904104

`record[A246810(n+1)%A246810(n+2)]`
-/

namespace A246787.P5252722786238904104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246810 (n + 1)) (A246810 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246787.P5252722786238904104

/-! ## A246787.P17007613706840286530

`A246810(lt[2, Δ[A246810(n+1)²]]+1)`
-/

namespace A246787.P17007613706840286530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246810 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246810 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A246787.P17007613706840286530

/-! ## A246787.P17956827017799854227

`A246810(lt[A246810(n+1), A246810(n+2)]+1)`
-/

namespace A246787.P17956827017799854227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246810 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246810 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A246787.P17956827017799854227

/-! ## A246787.P14423414217910405743

`A252475(n+1)-A246786(n+1)`
-/

namespace A246787.P14423414217910405743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252475 (n + 1) - A246786 (n + 1)

end

end A246787.P14423414217910405743

/-!
# A246788: Triangle read by rows: T(n,k) is the coefficient A_k in the transformation Sum_{k=0..n} (k+1)*x^k = Sum_{k=0..n} A_k*(x+2)^k.

The programs for A246788, the canonical program `A246788.P913895177884739949` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246788 has offset 0).

The definition of A246788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246788.P913895177884739949

`A002260(n+1)*A248810(A014132(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A246788

/-- `A002260(n+1)*A248810(A014132(n+1))` -/
def P913895177884739949.Spec : Prop :=
  ∀ n, P913895177884739949.a n = A246788 n

theorem P913895177884739949.correct : P913895177884739949.Spec := by
  intro n
  simp only [A246788]

end A246788

/-! ## A246788.P2732483731544448330

`A002260(n+1)*A248810(lt[1, A074909(n)])`
-/

namespace A246788.P2732483731544448330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A248810 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A246788.P2732483731544448330

namespace A246788

/-- `A002260(n+1)*A248810(lt[1, A074909(n)])` -/
def P2732483731544448330.Spec : Prop :=
  ∀ n, P2732483731544448330.a n = A246788 n

end A246788

/-! ## A246788.P5475970999097818212

`(A002262(n)+1)*A248810(lt[1, A074909(n)])`
-/

namespace A246788.P5475970999097818212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A248810 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A246788.P5475970999097818212

namespace A246788

/-- `(A002262(n)+1)*A248810(lt[1, A074909(n)])` -/
def P5475970999097818212.Spec : Prop :=
  ∀ n, P5475970999097818212.a n = A246788 n

end A246788

/-! ## A246788.P15676867054090599315

`A002260(n+1)*A248810(lt[1, A002260(n+1)])`
-/

namespace A246788.P15676867054090599315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A248810 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A246788.P15676867054090599315

namespace A246788

/-- `A002260(n+1)*A248810(lt[1, A002260(n+1)])` -/
def P15676867054090599315.Spec : Prop :=
  ∀ n, P15676867054090599315.a n = A246788 n

end A246788

/-! ## A246788.P1423979877949384999

`(1-A057944(n)+n)*A248810(A014132(n+1))`
-/

namespace A246788.P1423979877949384999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057944 n + (n : ℤ)) * A248810 (A014132 (n + 1)).toNat

end

end A246788.P1423979877949384999

namespace A246788

/-- `(1-A057944(n)+n)*A248810(A014132(n+1))` -/
def P1423979877949384999.Spec : Prop :=
  ∀ n, P1423979877949384999.a n = A246788 n

end A246788

/-! ## A246788.P16572751589232501899

`A004736(A038722(n+1))*A248810(A014132(n+1))`
-/

namespace A246788.P16572751589232501899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A248810 (A014132 (n + 1)).toNat

end

end A246788.P16572751589232501899

namespace A246788

/-- `A004736(A038722(n+1))*A248810(A014132(n+1))` -/
def P16572751589232501899.Spec : Prop :=
  ∀ n, P16572751589232501899.a n = A246788 n

end A246788

/-! ## A246788.P1839527537138870184

`A003602(A054582(n))*A248810(A014132(n+1))`
-/

namespace A246788.P1839527537138870184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A054582 n).toNat * A248810 (A014132 (n + 1)).toNat

end

end A246788.P1839527537138870184

namespace A246788

/-- `A003602(A054582(n))*A248810(A014132(n+1))` -/
def P1839527537138870184.Spec : Prop :=
  ∀ n, P1839527537138870184.a n = A246788 n

end A246788

/-!
# A246789: a(n) = A246778(A005669(n)).

The programs for A246789, there is no canonical definition to state claims against.
-/

/-! ## A246789.P10161337409734205897

`A246778(A005669(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246789.P10161337409734205897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246778 (A005669 (n + 1)).toNat

end

end A246789.P10161337409734205897

/-! ## A246789.P14189619953709103301

`A246777(n+1)+A005250(n+1)`
-/

namespace A246789.P14189619953709103301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246777 (n + 1) + A005250 (n + 1)

end

end A246789.P14189619953709103301

/-! ## A246789.P4356459049368561921

`A246777(n+1)+record[A014320(n+1)]`
-/

namespace A246789.P4356459049368561921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246777 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246789.P4356459049368561921

/-! ## A246789.P12529695125690577628

`A246777(n+1)+∑[A053695(C(2, n+2)+n)]`
-/

namespace A246789.P12529695125690577628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246777 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246789.P12529695125690577628

/-! ## A246789.P10673344503601683307

`A246777(n+1)+∑[A053695(abs(1-n)+1)]-1`
-/

namespace A246789.P10673344503601683307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246777 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A246789.P10673344503601683307

/-! ## A246789.P17763598245217280226

`A246777(n+1)+∑[A053695(A028310(n))]`
-/

namespace A246789.P17763598245217280226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246777 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246789.P17763598245217280226

/-! ## A246789.P17378557890768488824

`A246777(n+1)+∑[A053695(sqrt(A253909(n)))]`
-/

namespace A246789.P17378557890768488824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (SequenceMachineLib.roundAway (Real.sqrt (A253909 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246777 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246789.P17378557890768488824

/-! ## A246789.P8109397350912183530

`A246777(n+1)+∑[A053695(A065033(2*n))]`
-/

namespace A246789.P8109397350912183530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246777 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246789.P8109397350912183530

/-! ## A246789.P12610490154748666964

`A246777(n+1)+∑[A053695(A000196(n²+1))]`
-/

namespace A246789.P12610490154748666964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (A000196 (n ^ 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246777 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246789.P12610490154748666964

/-! ## A246789.P17513813449511688963

`A246777(n+1)+∑[A053695(A004273(n)+1-n)]`
-/

namespace A246789.P17513813449511688963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (A004273 n + (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246777 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246789.P17513813449511688963

/-!
# A246791: Smallest number m such that for 0 <= k < n, np(m+k) = np(m)+k, where np(t) is number of primes p with prime(t) < p < prime(t)^(1 + 1/t).

The programs for A246791, there is no canonical definition to state claims against.
-/

/-! ## A246791.P5507373968268779575

`A026351(A297485(n)-A297495(n))`
-/

namespace A246791.P5507373968268779575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A297485 n - A297495 n).toNat

end

end A246791.P5507373968268779575

/-!
# A246792: Smallest number m such that for 0 < k < n+1, np(m+k-1) = np(m)-k+1, where np(t) is number of primes p with prime(t) < p < prime(t)^(1 + 1/t).

The programs for A246792, there is no canonical definition to state claims against.
-/

/-! ## A246792.P12406420877459464715

`A088009(A053833(∑[xor(3, n)^n]))`
-/

namespace A246792.P12406420877459464715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088009 (A053833 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A246792.P12406420877459464715

/-!
# A246793: a(n) is the largest m such that A182134(n - k) = k for A246785(n) <= k <= m, or zero if there is no such m.

The programs for A246793, there is no canonical definition to state claims against.
-/

/-! ## A246793.P17032732791050199118

`A193347(A035214(n)+A030439(n))`
-/

namespace A246793.P17032732791050199118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193347 (A035214 n + A030439 n).toNat

end

end A246793.P17032732791050199118

/-!
# A246794: a(n) = A246785(A005669(n)).

The programs for A246794, there is no canonical definition to state claims against.
-/

/-! ## A246794.P12224359665180998163

`A246795(n+2)+1-A246796(n+2)`
-/

namespace A246794.P12224359665180998163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246795 (n + 2) + (1 - A246796 (n + 2))

end

end A246794.P12224359665180998163

/-! ## A246794.P5337743461210937905

`A246795(n+2)-A002837(A246796(n+2))`
-/

namespace A246794.P5337743461210937905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246795 (n + 2) - A002837 (A246796 (n + 2)).toNat

end

end A246794.P5337743461210937905

/-! ## A246794.P377571695948762927

`A291766(A246795(n+2)-A246796(n+2))`
-/

namespace A246794.P377571695948762927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291766 (A246795 (n + 2) - A246796 (n + 2)).toNat

end

end A246794.P377571695948762927

/-! ## A246794.P16646006192740533742

`A348553(A246795(n+2)-A246796(n+2))`
-/

namespace A246794.P16646006192740533742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A246795 (n + 2) - A246796 (n + 2)).toNat

end

end A246794.P16646006192740533742

/-!
# A246795: a(n) = A246793(A005669(n)).

The programs for A246795, there is no canonical definition to state claims against.
-/

/-! ## A246795.P18309218465208218277

`A246794(n+2)+A246796(n+2)-1`
-/

namespace A246795.P18309218465208218277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246794 (n + 2) + (A246796 (n + 2) - 1)

end

end A246795.P18309218465208218277

/-! ## A246795.P17137798764297383878

`A246796(n+2)+A000401(A246794(n+2))`
-/

namespace A246795.P17137798764297383878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246796 (n + 2) + A000401 (A246794 (n + 2)).toNat

end

end A246795.P17137798764297383878

/-! ## A246795.P5209185459708365333

`A023443(A246796(n+2)+A246794(n+2))`
-/

namespace A246795.P5209185459708365333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A246796 (n + 2) + A246794 (n + 2)).toNat

end

end A246795.P5209185459708365333

/-! ## A246795.P212984995451004547

`A246793(A005669(n+2)-1)`
-/

namespace A246795.P212984995451004547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246793 (A005669 (n + 2) - 1).toNat

end

end A246795.P212984995451004547

/-!
# A246796: a(n) = A246795(n) - A246794(n) + 1.

The programs for A246796, there is no canonical definition to state claims against.
-/

/-! ## A246796.P2503748354804964015

`A246795(n+2)-A246794(n+2)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A246796.P2503748354804964015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246795 (n + 2) - A246794 (n + 2) + 1

end

end A246796.P2503748354804964015

/-! ## A246796.P7295590562725435575

`A246795(n+2)-A000401(A246794(n+2))`
-/

namespace A246796.P7295590562725435575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246795 (n + 2) - A000401 (A246794 (n + 2)).toNat

end

end A246796.P7295590562725435575

/-! ## A246796.P2297112813543277821

`A374996(A165572(n+1)+A049347(n))`
-/

namespace A246796.P2297112813543277821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374996 (A165572 (n + 1) + A049347 n).toNat

end

end A246796.P2297112813543277821

/-! ## A246796.P1977404139829473690

`A086597(n+1)+A000120(A065844(n+1))`
-/

namespace A246796.P1977404139829473690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (n + 1) + A000120 (A065844 (n + 1)).toNat

end

end A246796.P1977404139829473690

/-! ## A246796.P4597885164979643659

`xor(A039616(A089759(n+3)), A137588(3*(n+1)))`
-/

namespace A246796.P4597885164979643659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039616 (A089759 (n + 3)).toNat) (A137588 (3 * (n + 1)))

end

end A246796.P4597885164979643659

/-!
# A246797: Triangle read by rows: T(n,k) is the coefficient A_k in the transformation Sum_{k=0..n} (k+1)*x^k = Sum_{k=0..n} A_k*(x-2)^k.

The programs for A246797, the canonical program `A246797.P11946154430892531368` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246797 has offset 0).

The definition of A246797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246797.P11946154430892531368

`A002260(n+1)*A193845(A014132(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A246797

/-- `A002260(n+1)*A193845(A014132(n+1))` -/
def P11946154430892531368.Spec : Prop :=
  ∀ n, P11946154430892531368.a n = A246797 n

theorem P11946154430892531368.correct : P11946154430892531368.Spec := by
  intro n
  simp only [A246797]

end A246797

/-! ## A246797.P9827620040218264305

`(A002262(n)+1)*A193845(A014132(n+1))`
-/

namespace A246797.P9827620040218264305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A193845 (A014132 (n + 1)).toNat

end

end A246797.P9827620040218264305

namespace A246797

/-- `(A002262(n)+1)*A193845(A014132(n+1))` -/
def P9827620040218264305.Spec : Prop :=
  ∀ n, P9827620040218264305.a n = A246797 n

theorem P9827620040218264305.correct : P9827620040218264305.Spec := by
  intro n
  simp only [A246797, Nat.add_sub_cancel, A246797.P9827620040218264305.a, A246797.P11946154430892531368.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A014132, A014132.P14290115325126423420.a, A193845, A193845.P798653671674501806.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A246797

/-! ## A246797.P6571125202872149922

`A193845(A014132(n+1))*A194874(A194875(n+1))`
-/

namespace A246797.P6571125202872149922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193845 (A014132 (n + 1)).toNat * A194874 (A194875 (n + 1)).toNat

end

end A246797.P6571125202872149922

namespace A246797

/-- `A193845(A014132(n+1))*A194874(A194875(n+1))` -/
def P6571125202872149922.Spec : Prop :=
  ∀ n, P6571125202872149922.a n = A246797 n

end A246797

/-! ## A246797.P16156542510202228265

`A002260(n+1)*A193817(comp[∑[n]])`
-/

namespace A246797.P16156542510202228265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A193817 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A246797.P16156542510202228265

namespace A246797

/-- `A002260(n+1)*A193817(comp[∑[n]])` -/
def P16156542510202228265.Spec : Prop :=
  ∀ n, P16156542510202228265.a n = A246797 n

end A246797

/-! ## A246797.P469936100838752772

`(A002262(n)+1)*A193817(comp[∑[n]])`
-/

namespace A246797.P469936100838752772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A193817 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A246797.P469936100838752772

namespace A246797

/-- `(A002262(n)+1)*A193817(comp[∑[n]])` -/
def P469936100838752772.Spec : Prop :=
  ∀ n, P469936100838752772.a n = A246797 n

end A246797

/-!
# A246798: Triangle read by rows: T(n,k) is the coefficient A_k in the transformation Sum_{k=0..n} (k+1)*x^k = Sum_{k=0..n} A_k*(x+3)^k.

The programs for A246798, there is no canonical definition to state claims against.
-/

/-! ## A246798.P15623442197947823624

`A002260(n+1)*A248811(A014132(n+1))`
-/

namespace A246798.P15623442197947823624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A248811 (A014132 (n + 1)).toNat

end

end A246798.P15623442197947823624

/-! ## A246798.P10244111248577271745

`(A002262(n)+1)*A248811(A014132(n+1))`
-/

namespace A246798.P10244111248577271745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A248811 (A014132 (n + 1)).toNat

end

end A246798.P10244111248577271745

/-! ## A246798.P13457850600792567974

`sqrt(A133819(n+1))*A248811(A014132(n+1))`
-/

namespace A246798.P13457850600792567974
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A248811 (A014132 (n + 1)).toNat : ℝ)

end

end A246798.P13457850600792567974

/-! ## A246798.P8859087574400406113

`A004736(A038722(n+1))*A248811(A014132(n+1))`
-/

namespace A246798.P8859087574400406113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A248811 (A014132 (n + 1)).toNat

end

end A246798.P8859087574400406113

/-! ## A246798.P18357635603576807485

`(A001222(A059268(n))+1)*A248811(A014132(n+1))`
-/

namespace A246798.P18357635603576807485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (A059268 n).toNat + 1) * A248811 (A014132 (n + 1)).toNat

end

end A246798.P18357635603576807485

/-!
# A246799: Triangle read by rows: T(n,k) is the coefficient A_k in the transformation Sum_{k=0..n} (k+1)*x^k = Sum_{k=0..n} A_k*(x-3)^k.

The programs for A246799, the canonical program `A246799.P13089119887411003661` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246799 has offset 0).

The definition of A246799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246799.P13089119887411003661

`A002260(n+1)*A193843(A014132(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A246799

/-- `A002260(n+1)*A193843(A014132(n+1))` -/
def P13089119887411003661.Spec : Prop :=
  ∀ n, P13089119887411003661.a n = A246799 n

theorem P13089119887411003661.correct : P13089119887411003661.Spec := by
  intro n
  simp only [A246799]

end A246799

/-! ## A246799.P5356081889619316339

`(A002262(n)+1)*A193843(A014132(n+1))`
-/

namespace A246799.P5356081889619316339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A193843 (A014132 (n + 1)).toNat

end

end A246799.P5356081889619316339

namespace A246799

/-- `(A002262(n)+1)*A193843(A014132(n+1))` -/
def P5356081889619316339.Spec : Prop :=
  ∀ n, P5356081889619316339.a n = A246799 n

theorem P5356081889619316339.correct : P5356081889619316339.Spec := by
  intro n
  simp only [A246799, Nat.add_sub_cancel, A246799.P5356081889619316339.a, A246799.P13089119887411003661.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A014132, A014132.P14290115325126423420.a, A193843, A193843.P2448007329976056557.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A246799

/-! ## A246799.P1194805512637854966

`A004736(A038722(n+1))*A193843(A014132(n+1))`
-/

namespace A246799.P1194805512637854966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A193843 (A014132 (n + 1)).toNat

end

end A246799.P1194805512637854966

namespace A246799

/-- `A004736(A038722(n+1))*A193843(A014132(n+1))` -/
def P1194805512637854966.Spec : Prop :=
  ∀ n, P1194805512637854966.a n = A246799 n

end A246799

/-! ## A246799.P10483163249667810377

`A057555(2*n+1)*A193843(A014132(n+1))`
-/

namespace A246799.P10483163249667810377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * n + 1) * A193843 (A014132 (n + 1)).toNat

end

end A246799.P10483163249667810377

namespace A246799

/-- `A057555(2*n+1)*A193843(A014132(n+1))` -/
def P10483163249667810377.Spec : Prop :=
  ∀ n, P10483163249667810377.a n = A246799 n

end A246799

/-! ## A246799.P11005943644963354592

`A000005(A059268(n))*A193843(A014132(n+1))`
-/

namespace A246799.P11005943644963354592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A193843 (A014132 (n + 1)).toNat

end

end A246799.P11005943644963354592

namespace A246799

/-- `A000005(A059268(n))*A193843(A014132(n+1))` -/
def P11005943644963354592.Spec : Prop :=
  ∀ n, P11005943644963354592.a n = A246799 n

end A246799

