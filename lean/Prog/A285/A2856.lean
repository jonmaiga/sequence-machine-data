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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A285600: Positions of 0 in A285599; complement of A285601.

The programs for A285600, there is no canonical definition to state claims against.
-/

/-! ## A285600.P4577991112943003661

`2*(A285598(n+1)+n)-1`
-/

namespace A285600.P4577991112943003661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A285598 (n + 1) + (n : ℤ)) - 1

end

end A285600.P4577991112943003661

/-! ## A285600.P13461725633373179587

`A004273(A285598(n+1))+2*n`
-/

namespace A285600.P13461725633373179587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A285598 (n + 1)).toNat + (2 * n : ℤ)

end

end A285600.P13461725633373179587

/-! ## A285600.P1829376015690642280

`A004273(A285598(n+1)+n)`
-/

namespace A285600.P1829376015690642280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A285598 (n + 1) + (n : ℤ)).toNat

end

end A285600.P1829376015690642280

/-! ## A285600.P3692610842154127626

`A004277(A285598(n+1)+n)-1`
-/

namespace A285600.P3692610842154127626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A285598 (n + 1) + (n : ℤ)).toNat - 1

end

end A285600.P3692610842154127626

/-! ## A285600.P12090634694570888182

`A004442(comp[A285601(n+1)-1])`
-/

namespace A285600.P12090634694570888182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285601 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A285600.P12090634694570888182

/-! ## A285600.P2957229339185502811

`eq[1, cosh(A285599(n+1))]+1`
-/

namespace A285600.P2957229339185502811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (A285599 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n + 1

end

end A285600.P2957229339185502811

/-! ## A285600.P1611926593727535823

`eq[1, A285599(n+2)+1]+2`
-/

namespace A285600.P1611926593727535823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285599 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A285600.P1611926593727535823

/-! ## A285600.P6360567934753924175

`lt[char[A285601(n+1)], A285596(n+1)]`
-/

namespace A285600.P6360567934753924175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285601 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285596 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A285600.P6360567934753924175

/-! ## A285600.P12420572863097171122

`lt[char[A285601(n+1)], n/A038835(n)]`
-/

namespace A285600.P12420572863097171122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285601 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A038835 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A285600.P12420572863097171122

/-! ## A285600.P2134338210071486515

`lt[char[A285601(n+1)]*A051867(n)+1, n]`
-/

namespace A285600.P2134338210071486515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285601 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A051867 n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A285600.P2134338210071486515

/-! ## A285600.P15998954038809829870

`A285597(n+1)+2*A285599(A285597(n+1))`
-/

namespace A285600.P15998954038809829870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285597 (n + 1) + 2 * A285599 (A285597 (n + 1)).toNat

end

end A285600.P15998954038809829870

/-! ## A285600.P3630997399449033756

`lt[char[A285601(n+1)], n/A270177(n)]`
-/

namespace A285600.P3630997399449033756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285601 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A270177 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A285600.P3630997399449033756

/-!
# A285601: Positions of 1 in A285599; complement of A285600.

The programs for A285601, there is no canonical definition to state claims against.
-/

/-! ## A285601.P11146862352867617632

`comp[A285600(n+1)-1]+1`
-/

namespace A285601.P11146862352867617632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285600 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285601.P11146862352867617632

/-! ## A285601.P4482818261507836916

`filter[n+1, A285599(#)]`
-/

namespace A285601.P4482818261507836916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285599 (f1 j) = 1) n)

end

end A285601.P4482818261507836916

/-! ## A285601.P14198803080204305215

`eq[1, A285599(n+1)]+1`
-/

namespace A285601.P14198803080204305215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285599 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285601.P14198803080204305215

/-! ## A285601.P3726571129636296849

`a(n-1)+2-A285599(a(n-1)+1)` with `a(0)=1`
-/

namespace A285601.P3726571129636296849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 - A285599 (a (n - 1) + 1).toNat

end

end A285601.P3726571129636296849

/-! ## A285601.P11942457407436490855

`∑[2-A285599(A285598(n+1)-1)]`
-/

namespace A285601.P11942457407436490855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A285599 (A285598 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285601.P11942457407436490855

/-! ## A285601.P6930190482402570647

`record[(n+1)*A285599(A022998(n+1))]`
-/

namespace A285601.P6930190482402570647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285599 (A022998 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285601.P6930190482402570647

/-! ## A285601.P11568165119302431109

`A004526(A285597(n+1)+1)-n`
-/

namespace A285601.P11568165119302431109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A285597 (n + 1) + 1).toNat - (n : ℤ)

end

end A285601.P11568165119302431109

/-! ## A285601.P16193100696764827216

`A285598(n+1)-A285599(A285597(n+1))`
-/

namespace A285601.P16193100696764827216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285598 (n + 1) - A285599 (A285597 (n + 1)).toNat

end

end A285601.P16193100696764827216

/-! ## A285601.P9254196584173193502

`A285598(n+1)-A285596(A285600(n+1))`
-/

namespace A285601.P9254196584173193502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285598 (n + 1) - A285596 (A285600 (n + 1)).toNat

end

end A285601.P9254196584173193502

/-!
# A285602: a(0) = 1; for n>1, a(n) is the numerator of b(n) = Product_{i=1..n} (prime(i)^2 + 1)/(prime(i)^2 - 1).

The programs for A285602, there is no canonical definition to state claims against.
-/

/-! ## A285602.P7232808420559532803

`record[A158274(∏[A173239(n)])]`
-/

namespace A285602.P7232808420559532803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173239 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285602.P7232808420559532803

/-! ## A285602.P12553987508769206935

`A158274(A002110(n)*A003105(n))`
-/

namespace A285602.P12553987508769206935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (A002110 n * A003105 n).toNat

end

end A285602.P12553987508769206935

/-!
# A285603: a(0) = 1; for n>1, a(n) is the denominator of b(n) = Product_{i=1..n} (prime(i)^2 + 1)/(prime(i)^2 - 1).

The programs for A285603, there is no canonical definition to state claims against.
-/

/-! ## A285603.P12182635434380698926

`A000203(A002110(n))*A228955(n)`
-/

namespace A285603.P12182635434380698926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002110 n).toNat * A228955 n

end

end A285603.P12182635434380698926

/-! ## A285603.P16412342196446677603

`A000203(A002110(n))*∏[A130534(n)]`
-/

namespace A285603.P16412342196446677603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002110 n).toNat * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A285603.P16412342196446677603

/-!
# A285604: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 57", based on the 5-celled von Neumann neighborhood.

The programs for A285604, there is no canonical definition to state claims against.
-/

/-! ## A285604.P8006428762157309159

`A007088(A285606(n))`
-/

namespace A285604.P8006428762157309159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285606 n).toNat

end

end A285604.P8006428762157309159

/-! ## A285604.P5216909595561021039

`A185544(2*A285606(n))`
-/

namespace A285604.P5216909595561021039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285606 n).toNat

end

end A285604.P5216909595561021039

/-!
# A285605: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 57", based on the 5-celled von Neumann neighborhood.

The programs for A285605, there is no canonical definition to state claims against.
-/

/-! ## A285605.P8151462925116441227

`A007088(A285607(n))`
-/

namespace A285605.P8151462925116441227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285607 n).toNat

end

end A285605.P8151462925116441227

/-! ## A285605.P9487087924181173399

`A185544(2*A285607(n))`
-/

namespace A285605.P9487087924181173399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285607 n).toNat

end

end A285605.P9487087924181173399

/-! ## A285605.P4083199311255266406

`A185544(A285607(n)+A285607(n))`
-/

namespace A285605.P4083199311255266406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A285607 n + A285607 n).toNat

end

end A285605.P4083199311255266406

/-!
# A285608: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 54", based on the 5-celled von Neumann neighborhood.

The programs for A285608, there is no canonical definition to state claims against.
-/

/-! ## A285608.P454914864691158070

`A007088(A285610(n))`
-/

namespace A285608.P454914864691158070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285610 n).toNat

end

end A285608.P454914864691158070

/-! ## A285608.P14089019052086764554

`A185544(2*A285610(n))`
-/

namespace A285608.P14089019052086764554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285610 n).toNat

end

end A285608.P14089019052086764554

/-! ## A285608.P17010328373354048418

`A185544(A285610(n)+A285610(n))`
-/

namespace A285608.P17010328373354048418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A285610 n + A285610 n).toNat

end

end A285608.P17010328373354048418

/-! ## A285608.P17000358050581375862

`10*or(a(n-2), A060236(A240533(n)))` with `a(0)=1, a(1)=1`
-/

namespace A285608.P17000358050581375862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  10 * Int.lor (a (n - 2)) (A060236 (A240533 n).toNat)

end

end A285608.P17000358050581375862

/-! ## A285608.P14550580092294857784

`A285612(n)-A010894(A202906(n+1))`
-/

namespace A285608.P14550580092294857784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285612 n - A010894 ((A202906 (n + 1)).toNat + 21)

end

end A285608.P14550580092294857784

/-!
# A285609: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 54", based on the 5-celled von Neumann neighborhood.

The programs for A285609, there is no canonical definition to state claims against.
-/

/-! ## A285609.P15071883226651379959

`lcm(A185544(2*A285610(n)), A286508(n))`
-/

namespace A285609.P15071883226651379959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A185544 (2 * A285610 n).toNat) (A286508 n)

end

end A285609.P15071883226651379959

/-! ## A285609.P11417834395007958932

`A007088(A285611(n))`
-/

namespace A285609.P11417834395007958932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285611 n).toNat

end

end A285609.P11417834395007958932

/-! ## A285609.P15672758253573977302

`A007088(lcm(A060546(n), A285610(n)))`
-/

namespace A285609.P15672758253573977302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lcm (A060546 n) (A285610 n))

end

end A285609.P15672758253573977302

/-! ## A285609.P11867631086543840381

`A185544(2*A285611(n))`
-/

namespace A285609.P11867631086543840381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285611 n).toNat

end

end A285609.P11867631086543840381

/-! ## A285609.P13336212353814376026

`A286508(n)*A305989(A285611(n))`
-/

namespace A285609.P13336212353814376026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 n * A305989 (A285611 n).toNat

end

end A285609.P13336212353814376026

/-!
# A285610: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 54", based on the 5-celled von Neumann neighborhood.

The programs for A285610, there is no canonical definition to state claims against.
-/

/-! ## A285610.P16694558602375815090

`A105360(A016116(n)-A080224(n+1))`
-/

namespace A285610.P16694558602375815090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105360 (A016116 n - A080224 (n + 1)).toNat

end

end A285610.P16694558602375815090

/-! ## A285610.P5307270760730621849

`A033676(A020707(n))-A060632(A216326(n+1))`
-/

namespace A285610.P5307270760730621849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A020707 n).toNat - A060632 (A216326 (n + 1)).toNat

end

end A285610.P5307270760730621849

/-! ## A285610.P17976353369693958625

`∏{p}[(2^n-2^ceil(n/2))², #]`
-/

namespace A285610.P17976353369693958625
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℚ) - (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A285610.P17976353369693958625

/-! ## A285610.P5052391160619168261

`∏{p}[A233411(n)², #]%(n+7)²`
-/

namespace A285610.P5052391160619168261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233411 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) % (n + 7) ^ 2

end

end A285610.P5052391160619168261

/-! ## A285610.P8675717056640111458

`A362248(A326151(2*n+5)-1)`
-/

namespace A285610.P8675717056640111458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362248 (A326151 (2 * n + 5) - 1).toNat

end

end A285610.P8675717056640111458

/-!
# A285611: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 54", based on the 5-celled von Neumann neighborhood.

The programs for A285611, there is no canonical definition to state claims against.
-/

/-! ## A285611.P16338299029585423442

`lcm(A028233(2^ceil(n/2)), A285610(n))`
-/

namespace A285611.P16338299029585423442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028233 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat) (A285610 n)

end

end A285611.P16338299029585423442

/-! ## A285611.P12777261840255188279

`lcm(A285610(n), A321802(A060546(n)))`
-/

namespace A285611.P12777261840255188279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A285610 n) (A321802 (A060546 n).toNat)

end

end A285611.P12777261840255188279

/-! ## A285611.P638003018824824064

`lcm(∏{p}[(2^n-2^ceil(n/2))², #], A016116(n+1))`
-/

namespace A285611.P638003018824824064
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℚ) - (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p : ℕ) : ℤ) (A016116 (n + 1))

end

end A285611.P638003018824824064

/-! ## A285611.P3794708575697782415

`A193903(A000982(char[1]+n))`
-/

namespace A285611.P3794708575697782415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193903 (A000982 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A285611.P3794708575697782415

/-! ## A285611.P1285975343304049477

`lcm(∏{p}[A233411(n)², #], A060546(n))`
-/

namespace A285611.P1285975343304049477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233411 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) (A060546 n)

end

end A285611.P1285975343304049477

/-!
# A285612: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 62", based on the 5-celled von Neumann neighborhood.

The programs for A285612, the canonical program `A285612.P18075393821238520314` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285612 has offset 0).

The definition of A285612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285612.P6321994651507717250

`lcm(10, a(n-2)+1)` with `a(0)=1, a(1)=1`
-/

namespace A285612.P6321994651507717250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lcm 10 (a (n - 2) + 1)

end

end A285612.P6321994651507717250

namespace A285612

/-- `lcm(10, a(n-2)+1)` -/
def P6321994651507717250.Spec : Prop :=
  ∀ n, (P6321994651507717250.a n : ℤ) = A285612 n

end A285612

/-! ## A285612.P9232657581694683404

`10*or(1, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A285612.P9232657581694683404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  10 * Nat.lor 1 (a (n - 2))

end

end A285612.P9232657581694683404

namespace A285612

/-- `10*or(1, a(n-2))` -/
def P9232657581694683404.Spec : Prop :=
  ∀ n, (P9232657581694683404.a n : ℤ) = A285612 n

end A285612

/-! ## A285612.P16017938659770915469

`5*(a(n-2)+1)*gcd(2, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A285612.P16017938659770915469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  5 * ((a (n - 2) + 1) * Nat.gcd 2 (a (n - 2)))

end

end A285612.P16017938659770915469

namespace A285612

/-- `5*(a(n-2)+1)*gcd(2, a(n-2))` -/
def P16017938659770915469.Spec : Prop :=
  ∀ n, (P16017938659770915469.a n : ℤ) = A285612 n

end A285612

/-! ## A285612.P18044861745894193988

`(a(n-2)+1)*(5%a(n-2)+5)` with `a(0)=1, a(1)=1`
-/

namespace A285612.P18044861745894193988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 2) + 1) * (5 % a (n - 2) + 5)

end

end A285612.P18044861745894193988

namespace A285612

/-- `(a(n-2)+1)*(5%a(n-2)+5)` -/
def P18044861745894193988.Spec : Prop :=
  ∀ n, (P18044861745894193988.a n : ℤ) = A285612 n

end A285612

/-! ## A285612.P18075393821238520314

`a(n-1)+10*a(n-2)-10*a(n-3)` with `a(0)=1, a(1)=1, a(2)=10, a(3)=10, a(4)=110`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285612

/-- `a(n-1)+10*a(n-2)-10*a(n-3)` -/
def P18075393821238520314.Spec : Prop :=
  ∀ n, P18075393821238520314.a n = A285612 n

theorem P18075393821238520314.correct : P18075393821238520314.Spec := by
  intro n
  simp only [A285612]

end A285612

/-! ## A285612.P6164433964792824256

`A328332(n-n%2)`
-/

namespace A285612.P6164433964792824256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328332 (n - n % 2)

end

end A285612.P6164433964792824256

namespace A285612

/-- `A328332(n-n%2)` -/
def P6164433964792824256.Spec : Prop :=
  ∀ n, P6164433964792824256.a n = A285612 n

end A285612

/-! ## A285612.P10175894089297050622

`A328332(n-and(1, n))`
-/

namespace A285612.P10175894089297050622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328332 (n - Nat.land 1 n)

end

end A285612.P10175894089297050622

namespace A285612

/-- `A328332(n-and(1, n))` -/
def P10175894089297050622.Spec : Prop :=
  ∀ n, P10175894089297050622.a n = A285612 n

end A285612

/-! ## A285612.P13503937382848806554

`A289404(n)-floor(atan(n))`
-/

namespace A285612.P13503937382848806554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 n - ⌊Real.arctan (n : ℝ)⌋

end

end A285612.P13503937382848806554

namespace A285612

/-- `A289404(n)-floor(atan(n))` -/
def P13503937382848806554.Spec : Prop :=
  ∀ n, P13503937382848806554.a n = A285612 n

end A285612

/-! ## A285612.P15633315312606283379

`A328332(and(n, ∑[7*8^floor(n/2)]))`
-/

namespace A285612.P15633315312606283379
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * (8 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328332 (Int.land (n : ℤ) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A285612.P15633315312606283379

namespace A285612

/-- `A328332(and(n, ∑[7*8^floor(n/2)]))` -/
def P15633315312606283379.Spec : Prop :=
  ∀ n, P15633315312606283379.a n = A285612 n

end A285612

/-! ## A285612.P11997790323923058625

`A328332(A052928(n))`
-/

namespace A285612.P11997790323923058625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328332 (A052928 n).toNat

end

end A285612.P11997790323923058625

namespace A285612

/-- `A328332(A052928(n))` -/
def P11997790323923058625.Spec : Prop :=
  ∀ n, P11997790323923058625.a n = A285612 n

end A285612

/-! ## A285612.P18204571017697977129

`A289404(n)-A157928(n)`
-/

namespace A285612.P18204571017697977129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 n - A157928 n

end

end A285612.P18204571017697977129

namespace A285612

/-- `A289404(n)-A157928(n)` -/
def P18204571017697977129.Spec : Prop :=
  ∀ n, P18204571017697977129.a n = A285612 n

end A285612

/-! ## A285612.P6033333452409076579

`A094026(xor(n, A266070(n)))`
-/

namespace A285612.P6033333452409076579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (Int.xor (n : ℤ) (A266070 n)).toNat

end

end A285612.P6033333452409076579

namespace A285612

/-- `A094026(xor(n, A266070(n)))` -/
def P6033333452409076579.Spec : Prop :=
  ∀ n, P6033333452409076579.a n = A285612 n

end A285612

/-! ## A285612.P1856741746685939474

`A289404(n)-A100073(A063905(n+1))`
-/

namespace A285612.P1856741746685939474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 n - A100073 (A063905 (n + 1)).toNat

end

end A285612.P1856741746685939474

namespace A285612

/-- `A289404(n)-A100073(A063905(n+1))` -/
def P1856741746685939474.Spec : Prop :=
  ∀ n, P1856741746685939474.a n = A285612 n

end A285612

/-!
# A285613: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 62", based on the 5-celled von Neumann neighborhood.

The programs for A285613, the canonical program `A285613.P3860841327362332497` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285613 has offset 0).

The definition of A285613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285613.P5098337717835432648

`10^ceil(n/2)*A289404(floor(n-atan(n)))`
-/

namespace A285613.P5098337717835432648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) * (A289404 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat : ℚ)

end

end A285613.P5098337717835432648

namespace A285613

/-- `10^ceil(n/2)*A289404(floor(n-atan(n)))` -/
def P5098337717835432648.Spec : Prop :=
  ∀ n, P5098337717835432648.a n = (A285613 n : ℚ)

end A285613

/-! ## A285613.P3860841327362332497

`lcm(A285612(n), A286508(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A285613

/-- `lcm(A285612(n), A286508(n))` -/
def P3860841327362332497.Spec : Prop :=
  ∀ n, (P3860841327362332497.a n : ℤ) = A285613 n

theorem P3860841327362332497.correct : P3860841327362332497.Spec := by
  intro n
  simp only [A285613]

end A285613

/-! ## A285613.P17382359833160923102

`A309761(gcd((n+1)!, A007590(n)))`
-/

namespace A285613.P17382359833160923102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (Int.gcd (Nat.factorial (n + 1) : ℤ) (A007590 n))

end

end A285613.P17382359833160923102

namespace A285613

/-- `A309761(gcd((n+1)!, A007590(n)))` -/
def P17382359833160923102.Spec : Prop :=
  ∀ n, P17382359833160923102.a n = A285613 n

end A285613

/-! ## A285613.P18428851075188658893

`lcm(A007088(A060546(n)), A328332(A052928(n)))`
-/

namespace A285613.P18428851075188658893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007088 (A060546 n).toNat) (A328332 (A052928 n).toNat)

end

end A285613.P18428851075188658893

namespace A285613

/-- `lcm(A007088(A060546(n)), A328332(A052928(n)))` -/
def P18428851075188658893.Spec : Prop :=
  ∀ n, (P18428851075188658893.a n : ℤ) = A285613 n

end A285613

/-! ## A285613.P9280826487665419197

`lcm(A289404(n)-A100073(A063905(n+1)), A007088(A016116(n+1)))`
-/

namespace A285613.P9280826487665419197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A289404 n - A100073 (A063905 (n + 1)).toNat) (A007088 (A016116 (n + 1)).toNat)

end

end A285613.P9280826487665419197

namespace A285613

/-- `lcm(A289404(n)-A100073(A063905(n+1)), A007088(A016116(n+1)))` -/
def P9280826487665419197.Spec : Prop :=
  ∀ n, (P9280826487665419197.a n : ℤ) = A285613 n

end A285613

/-!
# A285614: Unitary highly abundant numbers: numbers n such that usigma(n) > usigma(m) for all m < n, where usigma(n) = sum of unitary divisors of n (A034448).

The programs for A285614, there is no canonical definition to state claims against.
-/

/-! ## A285614.P1748462133815131424

`A063972(record[A034448(n+1)])`
-/

namespace A285614.P1748462133815131424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285614.P1748462133815131424

/-! ## A285614.P8942632207703397966

`A063972(record[A345451(n+1)+1])`
-/

namespace A285614.P8942632207703397966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285614.P8942632207703397966

/-! ## A285614.P7041814091385584614

`A063972(record[A129468(n+1)+2*(n+1)])`
-/

namespace A285614.P7041814091385584614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129468 (n + 1) + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285614.P7041814091385584614

/-! ## A285614.P14668355922010700364

`A063972(record[A098189(n+1)+A000010(n+1)])`
-/

namespace A285614.P14668355922010700364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098189 (n + 1) + A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285614.P14668355922010700364

/-! ## A285614.P7326739033670506266

`A063972(record[A087156(n+1)+A063919(n+1)])`
-/

namespace A285614.P7326739033670506266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A063919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285614.P7326739033670506266

/-! ## A285614.P9936696630790042636

`A063972(record[A000203(n+1)-A048146(n+1)])`
-/

namespace A285614.P9936696630790042636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A048146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285614.P9936696630790042636

/-! ## A285614.P14872385768165716426

`A063972(record[A003959(n+1)-A348732(n+1)])`
-/

namespace A285614.P14872385768165716426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - A348732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285614.P14872385768165716426

/-! ## A285614.P12811866868174509778

`A063972(record[A348733(n+1)*A348735(n+1)])`
-/

namespace A285614.P12811866868174509778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348733 (n + 1) * A348735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285614.P12811866868174509778

/-! ## A285614.P13199348470163870862

`A063972(record[A098189(n+1)+A109606(n+1)+1])`
-/

namespace A285614.P13199348470163870862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098189 (n + 1) + (A109606 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063972 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285614.P13199348470163870862

/-!
# A285615: Numbers k such that usigma(k) >= 3*k, where usigma(k) = sum of unitary divisors of k (A034448).

The programs for A285615, there is no canonical definition to state claims against.
-/

/-! ## A285615.P424125903002216306

`2*A129485(n+1)`
-/

namespace A285615.P424125903002216306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129485 (n + 1)

end

end A285615.P424125903002216306

/-! ## A285615.P11596526551447392868

`lcm(2, A129485(Δ[n²]-n))`
-/

namespace A285615.P11596526551447392868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A129485 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A285615.P11596526551447392868

/-! ## A285615.P17094535636243262812

`record[2*A129485(A152271(n))]`
-/

namespace A285615.P17094535636243262812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129485 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285615.P17094535636243262812

/-! ## A285615.P11476800481485198267

`lcm(A129485(n+1), A165734(n+1))`
-/

namespace A285615.P11476800481485198267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129485 (n + 1)) (A165734 (n + 1))

end

end A285615.P11476800481485198267

/-! ## A285615.P8983597000561273855

`lcm(6, A129485(n+1)%A094889(n+1))`
-/

namespace A285615.P8983597000561273855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (Int.tmod (A129485 (n + 1)) (A094889 (n + 1)))

end

end A285615.P8983597000561273855

/-! ## A285615.P4090965992637800111

`2*∩[A127666(n+1), A333950(n+1)]`
-/

namespace A285615.P4090965992637800111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285615.P4090965992637800111

/-! ## A285615.P14093087728023588332

`2*∩[A127666(n+1), A339938(n+1)]`
-/

namespace A285615.P14093087728023588332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285615.P14093087728023588332

/-! ## A285615.P16130545752624050032

`2*∩[A127666(n+1), A360526(n+1)]`
-/

namespace A285615.P16130545752624050032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285615.P16130545752624050032

/-! ## A285615.P965194382641899030

`2*∩[A293186(n+1), A333950(n+1)]`
-/

namespace A285615.P965194382641899030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285615.P965194382641899030

/-! ## A285615.P2783877879220855165

`2*∩[A293186(n+1), A339938(n+1)]`
-/

namespace A285615.P2783877879220855165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285615.P2783877879220855165

/-! ## A285615.P6155209197269320105

`A129485(n+1)+A129485(Δ[n²]-n)`
-/

namespace A285615.P6155209197269320105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129485 (n + 1) + A129485 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A285615.P6155209197269320105

/-! ## A285615.P4376254528107820752

`A129485(n+1)+record[A129485(A152271(n))]`
-/

namespace A285615.P4376254528107820752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129485 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129485 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285615.P4376254528107820752

/-!
# A285617: Fixed point of the morphism 0->11, 1->1000.

The programs for A285617, there is no canonical definition to state claims against.
-/

/-! ## A285617.P16185542298595910413

`char[A285619(n+1)-1]`
-/

namespace A285617.P16185542298595910413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285619 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285617.P16185542298595910413

/-! ## A285617.P12508949465629380480

`char[comp[A285618(n+1)-1]]`
-/

namespace A285617.P12508949465629380480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285618 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285617.P12508949465629380480

/-! ## A285617.P3241059187589225054

`char[A023443(A285619(n+1))]`
-/

namespace A285617.P3241059187589225054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A285619 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285617.P3241059187589225054

/-! ## A285617.P2528439593506814362

`char[A023443(comp[A285618(n+1)])]`
-/

namespace A285617.P2528439593506814362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285618 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285617.P2528439593506814362

/-!
# A285618: Positions of 0 in A285617; complement of A285619.

The programs for A285618, there is no canonical definition to state claims against.
-/

/-! ## A285618.P12007615146645695562

`A189818(A004396(n+1))+n+1-A004396(n+1)`
-/

namespace A285618.P12007615146645695562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189818 (A004396 (n + 1)).toNat + ((n + 1 : ℤ) - A004396 (n + 1))

end

end A285618.P12007615146645695562

/-! ## A285618.P18342532956351173496

`eq[0, A285617(n+1)]+1`
-/

namespace A285618.P18342532956351173496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285617 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285618.P18342532956351173496

/-! ## A285618.P1658088364329257005

`eq[0, A285617(A065033(2*n))]`
-/

namespace A285618.P1658088364329257005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285617 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285618.P1658088364329257005

/-! ## A285618.P4367445972054352480

`eq[0, A285617(A123108(2*n))]`
-/

namespace A285618.P4367445972054352480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285617 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285618.P4367445972054352480

/-!
# A285619: Positions of 1 in A285617; complement of A285618.

The programs for A285619, there is no canonical definition to state claims against.
-/

/-! ## A285619.P1010329433009772109

`filter[n+1, A285617(#)]`
-/

namespace A285619.P1010329433009772109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285617 (f1 j) = 1) n)

end

end A285619.P1010329433009772109

/-! ## A285619.P8946404590515267924

`eq[1, A285617(n+1)]+1`
-/

namespace A285619.P8946404590515267924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285617 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285619.P8946404590515267924

/-! ## A285619.P3196871503782456452

`record[A000027(n+1)*A285617(n+1)]`
-/

namespace A285619.P3196871503782456452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A285617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285619.P3196871503782456452

/-! ## A285619.P12431511222146771478

`A178915(record[A178915(n+1)*A285617(n+1)])`
-/

namespace A285619.P12431511222146771478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178915 (n + 1) * A285617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178915 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285619.P12431511222146771478

/-! ## A285619.P15753372906301472864

`(A189818(2*n+1)-n)/2`
-/

namespace A285619.P15753372906301472864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189818 (2 * n + 1) - (n : ℤ) : ℚ) / 2

end

end A285619.P15753372906301472864

/-! ## A285619.P1079897277034689179

`A004525(A189818(2*n+1)-n)`
-/

namespace A285619.P1079897277034689179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A189818 (2 * n + 1) - (n : ℤ)).toNat

end

end A285619.P1079897277034689179

/-! ## A285619.P6720021271662239580

`A004526(A189818(2*n+1)-n)`
-/

namespace A285619.P6720021271662239580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189818 (2 * n + 1) - (n : ℤ)).toNat

end

end A285619.P6720021271662239580

/-!
# A285620: Number of circulant graphs on n vertices up to Cayley isomorphism.

The programs for A285620, there is no canonical definition to state claims against.
-/

/-! ## A285620.P11172021570148446012

`A049287(n+1)+A014083(A281319(n+1))`
-/

namespace A285620.P11172021570148446012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049287 (n + 1) + A014083 (A281319 (n + 1)).toNat

end

end A285620.P11172021570148446012

/-! ## A285620.P16278378549665792866

`A014083(A281319(n+1))+∑{d}[n+1, A075545(#)]`
-/

namespace A285620.P16278378549665792866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014083 (A281319 (n + 1)).toNat + ∑ d ∈ Nat.divisors (f1 n), A075545 d

end

end A285620.P16278378549665792866

/-! ## A285620.P7159740921375822541

`A184955(gcd(n, ∑[n]))+A049287(n+1)`
-/

namespace A285620.P7159740921375822541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)) + A049287 (n + 1)

end

end A285620.P7159740921375822541

/-! ## A285620.P5733802180578994110

`A184955(A026741(n))+A049287(n+1)`
-/

namespace A285620.P5733802180578994110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A026741 n).toNat + A049287 (n + 1)

end

end A285620.P5733802180578994110

/-! ## A285620.P10401504171800417968

`A184955(A030101(n))+A049287(n+1)`
-/

namespace A285620.P10401504171800417968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A030101 n).toNat + A049287 (n + 1)

end

end A285620.P10401504171800417968

/-!
# A285621: Fixed point of the morphism 0->11, 1->1001.

The programs for A285621, there is no canonical definition to state claims against.
-/

/-! ## A285621.P3776477234254375836

`char[A285623(n+1)-1]`
-/

namespace A285621.P3776477234254375836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285623 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285621.P3776477234254375836

/-! ## A285621.P12255618439348792445

`1-char[A285622(n+1)-1]`
-/

namespace A285621.P12255618439348792445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285622 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285621.P12255618439348792445

/-! ## A285621.P4227191797618581528

`A001221(A285623(2*(n+1))-A285623(2*n+1))`
-/

namespace A285621.P4227191797618581528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A285623 (2 * (n + 1)) - A285623 (2 * n + 1)).toNat

end

end A285621.P4227191797618581528

/-! ## A285621.P678900346119385551

`A001222(A285623(2*(n+1))-A285623(2*n+1))`
-/

namespace A285621.P678900346119385551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A285623 (2 * (n + 1)) - A285623 (2 * n + 1)).toNat

end

end A285621.P678900346119385551

/-! ## A285621.P3279659257319027155

`A005614(A285623(2*(n+1))-A285623(2*n+1))`
-/

namespace A285621.P3279659257319027155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A285623 (2 * (n + 1)) - A285623 (2 * n + 1)).toNat

end

end A285621.P3279659257319027155

/-! ## A285621.P17836730971034034804

`A285501(A285623(2*(n+1))-A285623(2*n+1))`
-/

namespace A285621.P17836730971034034804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285501 (A285623 (2 * (n + 1)) - A285623 (2 * n + 1)).toNat

end

end A285621.P17836730971034034804

/-! ## A285621.P2605654082962687955

`C(Δ[A285623(2*n+1)], 4)`
-/

namespace A285621.P2605654082962687955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285623 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 4

end

end A285621.P2605654082962687955

/-! ## A285621.P3515290505934872421

`A039963(Δ[A285623(Δ[n²])])`
-/

namespace A285621.P3515290505934872421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285623 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (f1 (n + 1) - f1 n).toNat

end

end A285621.P3515290505934872421

/-! ## A285621.P9905970951193580949

`A005614(Δ[A285623(2*n+1)]²)`
-/

namespace A285621.P9905970951193580949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285623 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A285621.P9905970951193580949

/-! ## A285621.P15760869876832968292

`A001221(log2(Δ[A285623(2*n+1)]))`
-/

namespace A285621.P15760869876832968292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285623 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (Real.logb 2 (f1 (n + 1) - f1 n : ℝ))).toNat

end

end A285621.P15760869876832968292

/-! ## A285621.P2000448106771833078

`A001222(log2(Δ[A285623(2*n+1)]))`
-/

namespace A285621.P2000448106771833078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285623 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.logb 2 (f1 (n + 1) - f1 n : ℝ))).toNat

end

end A285621.P2000448106771833078

/-! ## A285621.P2023725549010749193

`A039963(Δ[A285623(2*n+1)]+1)`
-/

namespace A285621.P2023725549010749193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285623 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (f1 (n + 1) - f1 n + 1).toNat

end

end A285621.P2023725549010749193

/-! ## A285621.P12042562233749623899

`A001221(Δ[A285623(2*n+1)]-1)`
-/

namespace A285621.P12042562233749623899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285623 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n - 1).toNat

end

end A285621.P12042562233749623899

/-! ## A285621.P7450811770525049034

`A001222(Δ[A285623(2*n+1)]-1)`
-/

namespace A285621.P7450811770525049034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285623 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n - 1).toNat

end

end A285621.P7450811770525049034

/-! ## A285621.P15045854246736178215

`1-A005614(Δ[A285623(2*n+1)])`
-/

namespace A285621.P15045854246736178215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285623 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005614 (f1 (n + 1) - f1 n).toNat

end

end A285621.P15045854246736178215

/-! ## A285621.P9210755274491897649

`A005614(Δ[2*A285623(2*n+1)])`
-/

namespace A285621.P9210755274491897649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285623 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (f1 (n + 1) - f1 n).toNat

end

end A285621.P9210755274491897649

/-! ## A285621.P2831468383335196258

`A001221(Δ[A285623(2*n+1)/2])`
-/

namespace A285621.P2831468383335196258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285623 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A285621.P2831468383335196258

/-! ## A285621.P17208337199609853135

`A001222(Δ[A285623(2*n+1)/2])`
-/

namespace A285621.P17208337199609853135
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285623 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A285621.P17208337199609853135

/-! ## A285621.P4036155432235557811

`A065360(Δ[A285622(A008574(n))])`
-/

namespace A285621.P4036155432235557811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285622 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065360 (f1 (n + 1) - f1 n).toNat

end

end A285621.P4036155432235557811

/-!
# A285622: Positions of 0 in A285621; complement of A285623.

The programs for A285622, there is no canonical definition to state claims against.
-/

/-! ## A285622.P15697838437018649100

`eq[0, A285621(or(1, n))]`
-/

namespace A285622.P15697838437018649100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285621 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285622.P15697838437018649100

/-! ## A285622.P2173258483483709949

`eq[0, A285621(n+1)]+1`
-/

namespace A285622.P2173258483483709949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285622.P2173258483483709949

/-! ## A285622.P5885416610001541941

`lt[n*char[A285623(n+1)], n]`
-/

namespace A285622.P5885416610001541941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285623 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A285622.P5885416610001541941

/-! ## A285622.P16519368281170341059

`eq[0, A285621(A109613(n))]`
-/

namespace A285622.P16519368281170341059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285621 (A109613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285622.P16519368281170341059

/-! ## A285622.P4386813913252876225

`eq[char[A285623(n+1)], A072068(n+1)]`
-/

namespace A285622.P4386813913252876225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285623 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285622.P4386813913252876225

/-! ## A285622.P11966475891526677192

`eq[char[A285623(n+1)], A072069(n+1)]`
-/

namespace A285622.P11966475891526677192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285623 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072069 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285622.P11966475891526677192

/-! ## A285622.P12547061219704752738

`lt[char[A285623(n+1)], A285501(n+1)]`
-/

namespace A285622.P12547061219704752738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285623 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285501 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A285622.P12547061219704752738

/-! ## A285622.P12551675694607244400

`eq[char[A285623(n+1)], A285476(n)]`
-/

namespace A285622.P12551675694607244400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285623 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285622.P12551675694607244400

/-! ## A285622.P16871149962975286032

`eq[0, A285621(A065033(2*n))]`
-/

namespace A285622.P16871149962975286032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285621 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285622.P16871149962975286032

/-! ## A285622.P11423353674265091029

`eq[char[A285623(n+2)], A063890(n)]`
-/

namespace A285622.P11423353674265091029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285623 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063890 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285622.P11423353674265091029

/-!
# A285623: Positions of 1 in A285621; complement of A285622.

The programs for A285623, there is no canonical definition to state claims against.
-/

/-! ## A285623.P16235251677877747507

`filter[n+1, A285621(#)]`
-/

namespace A285623.P16235251677877747507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285621 (f1 j) = 1) n)

end

end A285623.P16235251677877747507

/-! ## A285623.P3253014959871177959

`lt[0, A285621(n+1)]+1`
-/

namespace A285623.P3253014959871177959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A285623.P3253014959871177959

/-! ## A285623.P14497362430875740616

`record[A000027(n+1)*A285621(n+1)]`
-/

namespace A285623.P14497362430875740616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A285621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285623.P14497362430875740616

/-! ## A285623.P13711270980045811864

`record[(C(2, n+2)+n)*A285621(or(1, n))]`
-/

namespace A285623.P13711270980045811864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) + n : ℤ) * A285621 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285623.P13711270980045811864

/-! ## A285623.P5943895881406345009

`eq[A057427(n), A285621(A109613(n))]`
-/

namespace A285623.P5943895881406345009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285621 (A109613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285623.P5943895881406345009

/-! ## A285623.P90504120598708035

`A285622(2*n+1)/2-n`
-/

namespace A285623.P90504120598708035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285622 (2 * n + 1) : ℚ) / 2 - (n : ℚ)

end

end A285623.P90504120598708035

/-! ## A285623.P6172295646032345309

`A014682(A285622(2*n+1))-n`
-/

namespace A285623.P6172295646032345309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A285622 (2 * n + 1)).toNat - (n : ℤ)

end

end A285623.P6172295646032345309

/-! ## A285623.P8734984688331040384

`record[A005378(n)*A285621(A005378(n))]`
-/

namespace A285623.P8734984688331040384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 n * A285621 (A005378 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285623.P8734984688331040384

/-! ## A285623.P8179587600308848600

`record[A008619(2*n)*A285621(n+1)]`
-/

namespace A285623.P8179587600308848600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A285621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285623.P8179587600308848600

/-! ## A285623.P6099106406381069712

`record[A080513(n)*A285621(A080513(n))]`
-/

namespace A285623.P6099106406381069712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n * A285621 (A080513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285623.P6099106406381069712

/-! ## A285623.P12516144479265549233

`record[A034888(n)*A285621(A034888(n))]`
-/

namespace A285623.P12516144479265549233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 n * A285621 (A034888 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285623.P12516144479265549233

/-! ## A285623.P10219210453883330457

`record[A008611(n)*A285621(A008620(n))]`
-/

namespace A285623.P10219210453883330457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A285621 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285623.P10219210453883330457

/-! ## A285623.P10380325996734025436

`A065033(A285622(2*(n+1)))-(n+1)`
-/

namespace A285623.P10380325996734025436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A285622 (2 * (n + 1))).toNat - (n + 1 : ℤ)

end

end A285623.P10380325996734025436

/-! ## A285623.P2790900240871734210

`A008619(A285622(2*n+1))-A008619(2*n)`
-/

namespace A285623.P2790900240871734210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A285622 (2 * n + 1)).toNat - A008619 (2 * n)

end

end A285623.P2790900240871734210

/-! ## A285623.P10195242519289676434

`A026741(A285622(2*n+1))-A026741(2*n)`
-/

namespace A285623.P10195242519289676434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A285622 (2 * n + 1)).toNat - A026741 (2 * n)

end

end A285623.P10195242519289676434

/-! ## A285623.P3197287499171561413

`A110654(A285622(2*n+1))-A110654(2*n)`
-/

namespace A285623.P3197287499171561413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A285622 (2 * n + 1)).toNat - A110654 (2 * n)

end

end A285623.P3197287499171561413

/-! ## A285623.P14050205670023823223

`eq[char[A285622(n+1)], A285476(2*n)]`
-/

namespace A285623.P14050205670023823223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285622 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285623.P14050205670023823223

/-!
# A285624: Triangle read by rows: T(n,k) is the number of vertices with degree k counted over all hypergraphs on n labeled nodes, n>=1,0<=k<=2^(n-1).

The programs for A285624, there is no canonical definition to state claims against.
-/

/-! ## A285624.P6279178948105064993

`A000010(A019278(A010554((n+2)²)))`
-/

namespace A285624.P6279178948105064993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A019278 (A010554 ((n + 2) ^ 2)).toNat).toNat

end

end A285624.P6279178948105064993

/-! ## A285624.P9608585540306640596

`A000005(A145632(n+1))*A246466(n)`
-/

namespace A285624.P9608585540306640596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A145632 (n + 1)).toNat * A246466 n

end

end A285624.P9608585540306640596

/-! ## A285624.P5942792957322410793

`A009223(A265909(n+1)-A333410(n+1))`
-/

namespace A285624.P5942792957322410793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (A265909 (n + 1) - A333410 (n + 1)).toNat

end

end A285624.P5942792957322410793

/-! ## A285624.P8610041997329545793

`A169784(A049425(n)-A049099(3*n+2))`
-/

namespace A285624.P8610041997329545793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169784 (A049425 n - A049099 (3 * n + 2)).toNat

end

end A285624.P8610041997329545793

/-!
# A285625: Fixed point of the morphism 0->11, 1->1010.

The programs for A285625, there is no canonical definition to state claims against.
-/

/-! ## A285625.P4517069927373271546

`char[A285627(n+1)-1]`
-/

namespace A285625.P4517069927373271546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285627 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285625.P4517069927373271546

/-! ## A285625.P12462256834450403467

`char[comp[A285663(n+1)+n]]`
-/

namespace A285625.P12462256834450403467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285663 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285625.P12462256834450403467

/-! ## A285625.P7960830139207008046

`char[comp[A285627(A285663(n+1))]]`
-/

namespace A285625.P7960830139207008046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285627 (A285663 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285625.P7960830139207008046

/-! ## A285625.P5531266469733065294

`A285661(Δ[n²])`
-/

namespace A285625.P5531266469733065294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285661 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285625.P5531266469733065294

/-! ## A285625.P17331390033059721506

`A285627(2*(n+1))%2`
-/

namespace A285625.P17331390033059721506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285627 (2 * (n + 1))) 2

end

end A285625.P17331390033059721506

/-! ## A285625.P6332497240933109419

`log2(A285661(2*(n+1))+1)`
-/

namespace A285625.P6332497240933109419
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A285661 (2 * (n + 1)) + 1 : ℝ)

end

end A285625.P6332497240933109419

/-! ## A285625.P12775117400544964948

`and(2*n+1, A285661(2*n+1))`
-/

namespace A285625.P12775117400544964948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (A285661 (2 * n + 1))

end

end A285625.P12775117400544964948

/-! ## A285625.P7911586160496271202

`log2(A285627(2*(n+1))-A285627(2*n+1))`
-/

namespace A285625.P7911586160496271202
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A285627 (2 * (n + 1)) - A285627 (2 * n + 1) : ℝ)

end

end A285625.P7911586160496271202

/-! ## A285625.P11036050214435621629

`A046838(A285627(2*(n+1))-A285627(2*n+1))`
-/

namespace A285625.P11036050214435621629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046838 (A285627 (2 * (n + 1)) - A285627 (2 * n + 1)).toNat

end

end A285625.P11036050214435621629

/-! ## A285625.P6634733500597407616

`log2(log2(Δ[A285627(2*n+1)]))`
-/

namespace A285625.P6634733500597407616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285627 (2 * n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.logb 2 (f1 (n + 1) - f1 n : ℝ))

end

end A285625.P6634733500597407616

/-!
# A285626: Positions of 0 in A285625; complement of A285627.

The programs for A285626, there is no canonical definition to state claims against.
-/

/-! ## A285626.P10617280826110112281

`A285663(n+1)+1+n`
-/

namespace A285626.P10617280826110112281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285663 (n + 1) + 1 + (n : ℤ)

end

end A285626.P10617280826110112281

/-! ## A285626.P15012929673621373965

`A285627(A285663(n+1))+1`
-/

namespace A285626.P15012929673621373965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285627 (A285663 (n + 1)).toNat + 1

end

end A285626.P15012929673621373965

/-! ## A285626.P16888718724177885998

`A285662(2*(n+1))/2`
-/

namespace A285626.P16888718724177885998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285662 (2 * (n + 1)) : ℚ) / 2

end

end A285626.P16888718724177885998

/-! ## A285626.P14176782872171115291

`eq[0, A285625(n+1)]+1`
-/

namespace A285626.P14176782872171115291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285625 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285626.P14176782872171115291

/-! ## A285626.P5853207836968779457

`eq[0, A285625(A028310(n))]`
-/

namespace A285626.P5853207836968779457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285625 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285626.P5853207836968779457

/-! ## A285626.P17745124431086737636

`eq[char[A285627(n+1)], A285649(n+2)]`
-/

namespace A285626.P17745124431086737636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285627 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285649 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285626.P17745124431086737636

/-!
# A285627: Positions of 1 in A285625; complement of A285626.

The programs for A285627, there is no canonical definition to state claims against.
-/

/-! ## A285627.P18080025108221966656

`∑[char[A285663(n+1)]+1]`
-/

namespace A285627.P18080025108221966656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285663 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285627.P18080025108221966656

/-! ## A285627.P1769352942288151613

`a(n-1)+A285661(n)+1` with `a(0)=1`
-/

namespace A285627.P1769352942288151613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A285661 n + 1)

end

end A285627.P1769352942288151613

/-! ## A285627.P5354996012429910372

`∑[char[A285626(n+1)-(n+1)]+1]`
-/

namespace A285627.P5354996012429910372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285626 (n + 1) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285627.P5354996012429910372

/-! ## A285627.P14461430211580792590

`∑[A285661(n+1)+1]-A285661(n+1)`
-/

namespace A285627.P14461430211580792590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285661 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A285661 (n + 1)

end

end A285627.P14461430211580792590

/-! ## A285627.P16725618188429510811

`eq[1, A285625(C(n, a(n-1)))]` with `a(0)=0`
-/

namespace A285627.P16725618188429510811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A285625 (Nat.choose n (f2 (n - 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285627.P16725618188429510811

/-! ## A285627.P13790196127327557593

`filter[n+1, A285625(#)]`
-/

namespace A285627.P13790196127327557593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285625 (f1 j) = 1) n)

end

end A285627.P13790196127327557593

/-! ## A285627.P16304523703724135264

`lt[0, A285625(n+1)]+1`
-/

namespace A285627.P16304523703724135264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285625 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A285627.P16304523703724135264

/-! ## A285627.P2933417562570051689

`eq[n, A028310(n)*A285625(A028310(n))]`
-/

namespace A285627.P2933417562570051689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A285625 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285627.P2933417562570051689

/-! ## A285627.P7511936815232317142

`A285663(2*(n+1))/2`
-/

namespace A285627.P7511936815232317142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285663 (2 * (n + 1)) : ℚ) / 2

end

end A285627.P7511936815232317142

/-! ## A285627.P4937928346600634774

`A285626(2*n+1)/2-n`
-/

namespace A285627.P4937928346600634774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285626 (2 * n + 1) : ℚ) / 2 - (n : ℚ)

end

end A285627.P4937928346600634774

/-! ## A285627.P6929918657326793214

`(A285663(A005408(n))+1)/2`
-/

namespace A285627.P6929918657326793214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285663 (A005408 n).toNat + 1 : ℚ) / 2

end

end A285627.P6929918657326793214

/-! ## A285627.P2107167233568002542

`(A285626(2*(n+1))+A001478(2*(n+1)))/2`
-/

namespace A285627.P2107167233568002542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285626 (2 * (n + 1)) + A001478 (2 * (n + 1)) : ℚ) / 2

end

end A285627.P2107167233568002542

/-! ## A285627.P4012435929767613585

`A008619(A285663(2*n+1)-1)`
-/

namespace A285627.P4012435929767613585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A285663 (2 * n + 1) - 1).toNat

end

end A285627.P4012435929767613585

/-! ## A285627.P15028744872280238573

`A008619(A285663(2*n+1))`
-/

namespace A285627.P15028744872280238573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A285663 (2 * n + 1)).toNat

end

end A285627.P15028744872280238573

/-! ## A285627.P4266960338465785056

`record[A285661(n+1)+A142150(n)]`
-/

namespace A285627.P4266960338465785056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285661 (n + 1) + A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285627.P4266960338465785056

/-! ## A285627.P1544869835176251638

`A052938(A285626(2*n+1))-A052938(2*n)`
-/

namespace A285627.P1544869835176251638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A285626 (2 * n + 1)).toNat - A052938 (2 * n)

end

end A285627.P1544869835176251638

/-!
# A285632: Numbers k such that 6*10^k + 17 is prime.

The programs for A285632, there is no canonical definition to state claims against.
-/

/-! ## A285632.P10327664903459816024

`and(A000010(A001315(n)), 126)`
-/

namespace A285632.P10327664903459816024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000010 (A001315 n).toNat) 126

end

end A285632.P10327664903459816024

/-! ## A285632.P7692170963503370391

`A366579(n)-A035171(A236704(n+1))`
-/

namespace A285632.P7692170963503370391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366579 n - A035171 (A236704 (n + 1)).toNat

end

end A285632.P7692170963503370391

/-!
# A285634: 

The programs for A285634, there is no canonical definition to state claims against.
-/

/-! ## A285634.P12678345519312127233

`2^A007501(n)`
-/

namespace A285634.P12678345519312127233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007501 n : ℤ)

end

end A285634.P12678345519312127233

/-!
# A285636: G.f.: (1 + x/(1 + x^2/(1 + x^3/(1 + x^4/(1 + ...))))) / (1 - x/(1 - x^2/(1 - x^3/(1 - x^4/(1 - ...))))), a continued fraction.

The programs for A285636, there is no canonical definition to state claims against.
-/

/-! ## A285636.P12989952683284069334

`A336735(A005251(n)+1)`
-/

namespace A285636.P12989952683284069334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336735 (A005251 n + 1).toNat

end

end A285636.P12989952683284069334

/-! ## A285636.P10939836095990815378

`A098575(n)+A057427(n^4)`
-/

namespace A285636.P10939836095990815378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098575 n + A057427 (n ^ 4)

end

end A285636.P10939836095990815378

/-! ## A285636.P616865461949833114

`A098575(n)%A173610(3*n)+1`
-/

namespace A285636.P616865461949833114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098575 n) (A173610 (3 * n)) + 1

end

end A285636.P616865461949833114

/-! ## A285636.P17791593922771475608

`A098575(n)+A007814(A026597(n))`
-/

namespace A285636.P17791593922771475608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098575 n + A007814 (A026597 n).toNat

end

end A285636.P17791593922771475608

/-! ## A285636.P8424498376039629656

`A098575(n)-A057078(A007051(n))`
-/

namespace A285636.P8424498376039629656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098575 n - A057078 (A007051 n).toNat

end

end A285636.P8424498376039629656

/-!
# A285639: a(n) = n*A117366(n)/spf(n), where A117366(n) is the smallest prime larger than all prime factors of n, and spf is the smallest prime factor of n (or 1 if n = 1).

The programs for A285639, there is no canonical definition to state claims against.
-/

/-! ## A285639.P1095081462090432965

`A032742(n+1)*A117366(n+1)`
-/

namespace A285639.P1095081462090432965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A117366 (n + 1)

end

end A285639.P1095081462090432965

/-! ## A285639.P16760463819367422574

`A119416(n+1)/A020639(n+1)`
-/

namespace A285639.P16760463819367422574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119416 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A285639.P16760463819367422574

/-! ## A285639.P12688907257886134290

`A032742(n+1)*A151800(A006530(n+1))`
-/

namespace A285639.P12688907257886134290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A151800 (A006530 (n + 1)).toNat

end

end A285639.P12688907257886134290

/-! ## A285639.P10600031229138303786

`A000040(A061395(n+1)+1)*A032742(n+1)`
-/

namespace A285639.P10600031229138303786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (n + 1) + 1).toNat * A032742 (n + 1)

end

end A285639.P10600031229138303786

/-! ## A285639.P7647464595207528927

`A032742(n+1)*A151800(A053585(∏{p}[n+1, #]))`
-/

namespace A285639.P7647464595207528927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A151800 (A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A285639.P7647464595207528927

/-! ## A285639.P585043083345040621

`A032742(n+1)*A151800((n+1)/A052126(n+1))`
-/

namespace A285639.P585043083345040621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A151800 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A285639.P585043083345040621

/-! ## A285639.P3757224660093233602

`(n+1)/A020639(n+1)*A000040(A061395(n+1)+1)`
-/

namespace A285639.P3757224660093233602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (n + 1) : ℚ) * (A000040 (A061395 (n + 1) + 1).toNat : ℚ)

end

end A285639.P3757224660093233602

/-! ## A285639.P15708328579803796805

`A032742(n+1)*A151800(A318884(n+1)-A318886(n+1))`
-/

namespace A285639.P15708328579803796805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A151800 (A318884 (n + 1) - A318886 (n + 1)).toNat

end

end A285639.P15708328579803796805

/-! ## A285639.P701454848302090725

`A032742(n+1)*A151800(A051664(n+1)-A070536(n+1))`
-/

namespace A285639.P701454848302090725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A151800 (A051664 (n + 1) - A070536 (n + 1)).toNat

end

end A285639.P701454848302090725

/-! ## A285639.P18076981947173060517

`A032742(n+1)*A324886(n+1)/A324896(n+1)`
-/

namespace A285639.P18076981947173060517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) * A324886 (n + 1) : ℚ) / (A324896 (n + 1) : ℚ)

end

end A285639.P18076981947173060517

/-! ## A285639.P13726901938917286015

`A117818(A119416(n+1))`
-/

namespace A285639.P13726901938917286015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (A119416 (n + 1)).toNat

end

end A285639.P13726901938917286015

/-!
# A285641: Triangle read by rows: T(n,k) is the number of hypergraphs on n labeled nodes that have exactly k isolated points, n>=0, 0<=k<=n.

The programs for A285641, there is no canonical definition to state claims against.
-/

/-! ## A285641.P7490365903795548217

`A003465(A025581(n))*A007318(n)`
-/

namespace A285641.P7490365903795548217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003465 (A025581 n).toNat * A007318 n

end

end A285641.P7490365903795548217

/-! ## A285641.P10746603831112906490

`A101489(lcm(6, (n+1)²/∏{p}[n+1, #]))`
-/

namespace A285641.P10746603831112906490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101489 (Int.lcm 6 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))))

end

end A285641.P10746603831112906490

/-! ## A285641.P10208259355002554210

`A303929(floor(∑[(2^n-1)/2])^((n+1)/∏{p}[n+1, #]))`
-/

namespace A285641.P10208259355002554210
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1 : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303929 (SequenceMachineLib.roundAway ((⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) : ℝ))).toNat

end

end A285641.P10208259355002554210

/-!
# A285643: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 65", based on the 5-celled von Neumann neighborhood.

The programs for A285643, there is no canonical definition to state claims against.
-/

/-! ## A285643.P15828378126282199306

`A007088(A285645(n))`
-/

namespace A285643.P15828378126282199306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285645 n).toNat

end

end A285643.P15828378126282199306

/-! ## A285643.P14898355469903769046

`A007088(and(-(A288762(n+1)+1), A288762(n)))`
-/

namespace A285643.P14898355469903769046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (-(A288762 (n + 1) + 1)) (A288762 n)).toNat

end

end A285643.P14898355469903769046

/-! ## A285643.P14393673123071453053

`A185544(2*A285645(n))`
-/

namespace A285643.P14393673123071453053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285645 n).toNat

end

end A285643.P14393673123071453053

/-! ## A285643.P12512379135263462045

`A185544(A285645(n)+A285645(n))`
-/

namespace A285643.P12512379135263462045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A285645 n + A285645 n).toNat

end

end A285643.P12512379135263462045

/-!
# A285644: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 65", based on the 5-celled von Neumann neighborhood.

The programs for A285644, there is no canonical definition to state claims against.
-/

/-! ## A285644.P6000087694355205834

`A007088(A285646(n))`
-/

namespace A285644.P6000087694355205834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285646 n).toNat

end

end A285644.P6000087694355205834

/-! ## A285644.P11767998610178874513

`A185544(2*A285646(n))`
-/

namespace A285644.P11767998610178874513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285646 n).toNat

end

end A285644.P11767998610178874513

/-! ## A285644.P12782289916204670994

`A286699(n)%A288337(A083851(n+1))`
-/

namespace A285644.P12782289916204670994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286699 n) (A288337 (A083851 (n + 1)).toNat)

end

end A285644.P12782289916204670994

/-!
# A285645: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 65", based on the 5-celled von Neumann neighborhood.

The programs for A285645, the canonical program `A285645.P12701888709344944393` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285645 has offset 0).

The definition of A285645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285645.P5860208360844893438

`abs(or(A137206(n), A290073(n)))`
-/

namespace A285645.P5860208360844893438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (A137206 n) (A290073 n)|

end

end A285645.P5860208360844893438

namespace A285645

/-- `abs(or(A137206(n), A290073(n)))` -/
def P5860208360844893438.Spec : Prop :=
  ∀ n, P5860208360844893438.a n = A285645 n

end A285645

/-! ## A285645.P3312118049996170991

`and(-(A288762(n+1)+1), A288762(n))`
-/

namespace A285645.P3312118049996170991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(A288762 (n + 1) + 1)) (A288762 n)

end

end A285645.P3312118049996170991

namespace A285645

/-- `and(-(A288762(n+1)+1), A288762(n))` -/
def P3312118049996170991.Spec : Prop :=
  ∀ n, P3312118049996170991.a n = A285645 n

end A285645

/-! ## A285645.P15041254531270057075

`A288762(n)-and(2, A288762(A007918(n)))`
-/

namespace A285645.P15041254531270057075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288762 n - Int.land 2 (A288762 (A007918 n).toNat)

end

end A285645.P15041254531270057075

namespace A285645

/-- `A288762(n)-and(2, A288762(A007918(n)))` -/
def P15041254531270057075.Spec : Prop :=
  ∀ n, P15041254531270057075.a n = A285645 n

end A285645

/-! ## A285645.P14396649709594549858

`gcd(or(A137206(n), A290073(n)), A000038(n))`
-/

namespace A285645.P14396649709594549858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.lor (A137206 n) (A290073 n)) (A000038 n)

end

end A285645.P14396649709594549858

namespace A285645

/-- `gcd(or(A137206(n), A290073(n)), A000038(n))` -/
def P14396649709594549858.Spec : Prop :=
  ∀ n, (P14396649709594549858.a n : ℤ) = A285645 n

end A285645

/-! ## A285645.P2383725082523327219

`(1-2%A141459(n))*or(A137206(n), A290073(n))`
-/

namespace A285645.P2383725082523327219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - Int.tmod 2 (A141459 n)) * Int.lor (A137206 n) (A290073 n)

end

end A285645.P2383725082523327219

namespace A285645

/-- `(1-2%A141459(n))*or(A137206(n), A290073(n))` -/
def P2383725082523327219.Spec : Prop :=
  ∀ n, P2383725082523327219.a n = A285645 n

end A285645

/-! ## A285645.P12701888709344944393

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=12, a(4)=1, a(5)=60, a(6)=3, a(7)=252, a(8)=3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285645

/-- `5*a(n-2)-4*a(n-4)` -/
def P12701888709344944393.Spec : Prop :=
  ∀ n, P12701888709344944393.a n = A285645 n

theorem P12701888709344944393.correct : P12701888709344944393.Spec := by
  intro n
  simp only [A285645]

end A285645

/-! ## A285645.P4928640331389098551

`and(A288763(n+3)-A288762(n+1), A288762(n))`
-/

namespace A285645.P4928640331389098551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A288763 (n + 3) - A288762 (n + 1)) (A288762 n)

end

end A285645.P4928640331389098551

namespace A285645

/-- `and(A288763(n+3)-A288762(n+1), A288762(n))` -/
def P4928640331389098551.Spec : Prop :=
  ∀ n, P4928640331389098551.a n = A285645 n

end A285645

/-!
# A285646: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 65", based on the 5-celled von Neumann neighborhood.

The programs for A285646, the canonical program `A285646.P11422496779113045990` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285646 has offset 0).

The definition of A285646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285646.P11422496779113045990

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=3, a(4)=16, a(5)=15, a(6)=96, a(7)=63, a(8)=384`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285646

/-- `5*a(n-2)-4*a(n-4)` -/
def P11422496779113045990.Spec : Prop :=
  ∀ n, P11422496779113045990.a n = A285646 n

theorem P11422496779113045990.correct : P11422496779113045990.Spec := by
  intro n
  simp only [A285646]

end A285646

/-! ## A285646.P3720936980420394590

`or(A282005(n)%A288804(n), A277800(n))`
-/

namespace A285646.P3720936980420394590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A282005 n) (A288804 n)) (A277800 n)

end

end A285646.P3720936980420394590

namespace A285646

/-- `or(A282005(n)%A288804(n), A277800(n))` -/
def P3720936980420394590.Spec : Prop :=
  ∀ n, P3720936980420394590.a n = A285646 n

end A285646

/-! ## A285646.P3878065818236684703

`and(A077847(A135276(n)), A288763(n))`
-/

namespace A285646.P3878065818236684703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077847 (A135276 n).toNat) (A288763 n)

end

end A285646.P3878065818236684703

namespace A285646

/-- `and(A077847(A135276(n)), A288763(n))` -/
def P3878065818236684703.Spec : Prop :=
  ∀ n, P3878065818236684703.a n = A285646 n

end A285646

/-! ## A285646.P11209261037344620091

`and(A269401(A059398(n)), A282005(n))`
-/

namespace A285646.P11209261037344620091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A269401 (A059398 n).toNat) (A282005 n)

end

end A285646.P11209261037344620091

namespace A285646

/-- `and(A269401(A059398(n)), A282005(n))` -/
def P11209261037344620091.Spec : Prop :=
  ∀ n, P11209261037344620091.a n = A285646 n

end A285646

/-! ## A285646.P16955641451459039302

`and(A269401(A059398(n)), A286701(n))`
-/

namespace A285646.P16955641451459039302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A269401 (A059398 n).toNat) (A286701 n)

end

end A285646.P16955641451459039302

namespace A285646

/-- `and(A269401(A059398(n)), A286701(n))` -/
def P16955641451459039302.Spec : Prop :=
  ∀ n, P16955641451459039302.a n = A285646 n

end A285646

/-!
# A285647: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 73", based on the 5-celled von Neumann neighborhood.

The programs for A285647, there is no canonical definition to state claims against.
-/

/-! ## A285647.P5343984707363077974

`A007088(A285649(n))`
-/

namespace A285647.P5343984707363077974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285649 n).toNat

end

end A285647.P5343984707363077974

/-! ## A285647.P11995024475067716431

`A007088(A285777(n)-2*char[3])`
-/

namespace A285647.P11995024475067716431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285777 n - ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)).toNat

end

end A285647.P11995024475067716431

/-! ## A285647.P7308575570573377211

`A007088(A277929(n)+A285778(n)-A278759(n))`
-/

namespace A285647.P7308575570573377211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A277929 n + (A285778 n - A278759 n)).toNat

end

end A285647.P7308575570573377211

/-! ## A285647.P7446158820685601357

`A007088(A277929(n)-(A278759(n)-A285778(n)))`
-/

namespace A285647.P7446158820685601357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A277929 n - (A278759 n - A285778 n)).toNat

end

end A285647.P7446158820685601357

/-! ## A285647.P4625238283935768067

`A185544(2*A285649(n))`
-/

namespace A285647.P4625238283935768067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285649 n).toNat

end

end A285647.P4625238283935768067

/-!
# A285648: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 73", based on the 5-celled von Neumann neighborhood.

The programs for A285648, there is no canonical definition to state claims against.
-/

/-! ## A285648.P6872325809615544858

`A007088(A285650(n))`
-/

namespace A285648.P6872325809615544858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285650 n).toNat

end

end A285648.P6872325809615544858

/-! ## A285648.P11258099236202955770

`A007088(gcd(4*A285649(n), A277936(n)))`
-/

namespace A285648.P11258099236202955770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.gcd (4 * A285649 n) (A277936 n))

end

end A285648.P11258099236202955770

/-! ## A285648.P3577171319661048991

`A007088(A285778(n)-and(4, A072345(n)))`
-/

namespace A285648.P3577171319661048991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285778 n - Int.land 4 (A072345 n)).toNat

end

end A285648.P3577171319661048991

/-! ## A285648.P4884501011866291765

`A185544(2*A285650(n))`
-/

namespace A285648.P4884501011866291765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285650 n).toNat

end

end A285648.P4884501011866291765

/-! ## A285648.P1529277714525234343

`A185544(2*(A285778(n)-and(4, A072345(n))))`
-/

namespace A285648.P1529277714525234343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (A285778 n - Int.land 4 (A072345 n))).toNat

end

end A285648.P1529277714525234343

/-!
# A285649: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 73", based on the 5-celled von Neumann neighborhood.

The programs for A285649, the canonical program `A285649.P11724942651845347091` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285649 has offset 0).

The definition of A285649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285649.P7146790333635517001

`a(n%2)^(n+1)-1` with `a(0)=1, a(1)=2, a(2)=1, a(3)=12`
-/

namespace A285649.P7146790333635517001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 12] fun n a =>
  a (n % 2) ^ (n + 1) - 1

end

end A285649.P7146790333635517001

namespace A285649

/-- `a(n%2)^(n+1)-1` -/
def P7146790333635517001.Spec : Prop :=
  ∀ n, P7146790333635517001.a n = A285649 n

end A285649

/-! ## A285649.P4337442155756811219

`A285777(n)-2*char[3]`
-/

namespace A285649.P4337442155756811219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285777 n - ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A285649.P4337442155756811219

namespace A285649

/-- `A285777(n)-2*char[3]` -/
def P4337442155756811219.Spec : Prop :=
  ∀ n, P4337442155756811219.a n = A285649 n

end A285649

/-! ## A285649.P3789805276523697891

`A277929(n)+A285778(n)-A278759(n)`
-/

namespace A285649.P3789805276523697891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277929 n + (A285778 n - A278759 n)

end

end A285649.P3789805276523697891

namespace A285649

/-- `A277929(n)+A285778(n)-A278759(n)` -/
def P3789805276523697891.Spec : Prop :=
  ∀ n, P3789805276523697891.a n = A285649 n

end A285649

/-! ## A285649.P2200238880132655968

`and(-A100994(A185358(n+1)+n), A285777(n))`
-/

namespace A285649.P2200238880132655968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A100994 (A185358 (n + 1) + (n : ℤ)).toNat) (A285777 n)

end

end A285649.P2200238880132655968

namespace A285649

/-- `and(-A100994(A185358(n+1)+n), A285777(n))` -/
def P2200238880132655968.Spec : Prop :=
  ∀ n, P2200238880132655968.a n = A285649 n

end A285649

/-! ## A285649.P11724942651845347091

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=12, a(4)=0, a(5)=63, a(6)=0, a(7)=255`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285649

/-- `5*a(n-2)-4*a(n-4)` -/
def P11724942651845347091.Spec : Prop :=
  ∀ n, P11724942651845347091.a n = A285649 n

theorem P11724942651845347091.correct : P11724942651845347091.Spec := by
  intro n
  simp only [A285649]

end A285649

/-! ## A285649.P14675655462088032950

`and(9*A285647(n), A285777(n))`
-/

namespace A285649.P14675655462088032950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (9 * A285647 n) (A285777 n)

end

end A285649.P14675655462088032950

namespace A285649

/-- `and(9*A285647(n), A285777(n))` -/
def P14675655462088032950.Spec : Prop :=
  ∀ n, P14675655462088032950.a n = A285649 n

end A285649

/-!
# A285650: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 73", based on the 5-celled von Neumann neighborhood.

The programs for A285650, the canonical program `A285650.P8977722724922811096` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285650 has offset 0).

The definition of A285650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285650.P13009629270949625887

`gcd(A182687(n+1), A277929(n))`
-/

namespace A285650.P13009629270949625887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182687 (n + 1)) (A277929 n)

end

end A285650.P13009629270949625887

namespace A285650

/-- `gcd(A182687(n+1), A277929(n))` -/
def P13009629270949625887.Spec : Prop :=
  ∀ n, (P13009629270949625887.a n : ℤ) = A285650 n

end A285650

/-! ## A285650.P9174353109093056277

`A285778(n)-and(4, A072345(n))`
-/

namespace A285650.P9174353109093056277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285778 n - Int.land 4 (A072345 n)

end

end A285650.P9174353109093056277

namespace A285650

/-- `A285778(n)-and(4, A072345(n))` -/
def P9174353109093056277.Spec : Prop :=
  ∀ n, P9174353109093056277.a n = A285650 n

end A285650

/-! ## A285650.P15825065478539761152

`gcd(2^(n+1), a(n-1))-1` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A285650.P15825065478539761152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  (Int.gcd (2 ^ (n + 1) : ℤ) (a (n - 1)) : ℤ) - 1

end

end A285650.P15825065478539761152

namespace A285650

/-- `gcd(2^(n+1), a(n-1))-1` -/
def P15825065478539761152.Spec : Prop :=
  ∀ n, P15825065478539761152.a n = A285650 n

end A285650

/-! ## A285650.P8977722724922811096

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=3, a(4)=0, a(5)=63, a(6)=0, a(7)=255`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285650

/-- `5*a(n-2)-4*a(n-4)` -/
def P8977722724922811096.Spec : Prop :=
  ∀ n, P8977722724922811096.a n = A285650 n

theorem P8977722724922811096.correct : P8977722724922811096.Spec := by
  intro n
  simp only [A285650]

end A285650

/-! ## A285650.P491164181439079939

`gcd(4*A285649(n), A277936(n))`
-/

namespace A285650.P491164181439079939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * A285649 n) (A277936 n)

end

end A285650.P491164181439079939

namespace A285650

/-- `gcd(4*A285649(n), A277936(n))` -/
def P491164181439079939.Spec : Prop :=
  ∀ n, (P491164181439079939.a n : ℤ) = A285650 n

end A285650

/-! ## A285650.P2856508798978572138

`and(record[A290415(n)], A285778(n))`
-/

namespace A285650.P2856508798978572138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A285778 n)

end

end A285650.P2856508798978572138

namespace A285650

/-- `and(record[A290415(n)], A285778(n))` -/
def P2856508798978572138.Spec : Prop :=
  ∀ n, P2856508798978572138.a n = A285650 n

end A285650

/-!
# A285651: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 81", based on the 5-celled von Neumann neighborhood.

The programs for A285651, there is no canonical definition to state claims against.
-/

/-! ## A285651.P8312046318124300334

`A286730(n)+A010051(A025617(n+1))`
-/

namespace A285651.P8312046318124300334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286730 n + A010051 (A025617 (n + 1)).toNat

end

end A285651.P8312046318124300334

/-! ## A285651.P9131458104512885492

`A286730(n)+A003982(A058278(n))`
-/

namespace A285651.P9131458104512885492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286730 n + A003982 (A058278 n).toNat

end

end A285651.P9131458104512885492

/-! ## A285651.P6282413134840362868

`gcd(A008683(A143095(n)), A286730(n))`
-/

namespace A285651.P6282413134840362868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A143095 n).toNat) (A286730 n)

end

end A285651.P6282413134840362868

/-! ## A285651.P9849331056782722629

`A286730(n)+A209229(A017510(n))`
-/

namespace A285651.P9849331056782722629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286730 n + A209229 (A017510 n).toNat

end

end A285651.P9849331056782722629

/-! ## A285651.P14535228762114603316

`or(A286730(n), A286746(A000032(n)))`
-/

namespace A285651.P14535228762114603316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286730 n) (A286746 (A000032 n).toNat)

end

end A285651.P14535228762114603316

/-!
# A285652: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 81", based on the 5-celled von Neumann neighborhood.

The programs for A285652, there is no canonical definition to state claims against.
-/

/-! ## A285652.P16790403817458816846

`A007088(A285654(n))`
-/

namespace A285652.P16790403817458816846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A285654 n).toNat

end

end A285652.P16790403817458816846

/-! ## A285652.P1437896157007516428

`A007088(A286733(n)+4*A185012(n))`
-/

namespace A285652.P1437896157007516428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286733 n + 4 * A185012 n).toNat

end

end A285652.P1437896157007516428

/-! ## A285652.P15700309886032043231

`A185544(2*A285654(n))`
-/

namespace A285652.P15700309886032043231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A285654 n).toNat

end

end A285652.P15700309886032043231

/-! ## A285652.P16834512087860323469

`A185544(2*(A286733(n)+4*A185012(n)))`
-/

namespace A285652.P16834512087860323469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (A286733 n + 4 * A185012 n)).toNat

end

end A285652.P16834512087860323469

/-!
# A285653: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 81", based on the 5-celled von Neumann neighborhood.

The programs for A285653, there is no canonical definition to state claims against.
-/

/-! ## A285653.P10525411248124594452

`A286732(n)+A003982(A073150(n))`
-/

namespace A285653.P10525411248124594452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286732 n + A003982 (A073150 n).toNat

end

end A285653.P10525411248124594452

/-! ## A285653.P741645058579683352

`A286732(n)+A209229(∑[A022264(n)])`
-/

namespace A285653.P741645058579683352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286732 n + A209229 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285653.P741645058579683352

/-! ## A285653.P1886022940705114778

`A286732(n)+A010051(A025617(n+1))`
-/

namespace A285653.P1886022940705114778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286732 n + A010051 (A025617 (n + 1)).toNat

end

end A285653.P1886022940705114778

/-! ## A285653.P2958894042696340792

`A286732(n)+A045840(A139826(n+1))`
-/

namespace A285653.P2958894042696340792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286732 n + A045840 (A139826 (n + 1)).toNat

end

end A285653.P2958894042696340792

/-! ## A285653.P4603449514358400266

`A286732(n)+A240467(A266101(n+2))`
-/

namespace A285653.P4603449514358400266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286732 n + A240467 (A266101 (n + 2)).toNat

end

end A285653.P4603449514358400266

/-!
# A285654: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 81", based on the 5-celled von Neumann neighborhood.

The programs for A285654, there is no canonical definition to state claims against.
-/

/-! ## A285654.P17666486161720423673

`gcd(A048298(A331761(n+1)), A286733(n))`
-/

namespace A285654.P17666486161720423673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048298 (A331761 (n + 1)).toNat) (A286733 n)

end

end A285654.P17666486161720423673

/-! ## A285654.P7136567326917395855

`or(A245092(A059222(n+1)), A286733(n))`
-/

namespace A285654.P7136567326917395855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A245092 (A059222 (n + 1)).toNat) (A286733 n)

end

end A285654.P7136567326917395855

/-! ## A285654.P58096159880760615

`gcd(A048298(A026010(n)), A286733(n))`
-/

namespace A285654.P58096159880760615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048298 (A026010 n).toNat) (A286733 n)

end

end A285654.P58096159880760615

/-! ## A285654.P7124055297487824901

`or(A285778(A143095(n)), A286733(n))`
-/

namespace A285654.P7124055297487824901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285778 (A143095 n).toNat) (A286733 n)

end

end A285654.P7124055297487824901

/-! ## A285654.P1876526537448057791

`or(A048298(A285778(n)), A286733(n))`
-/

namespace A285654.P1876526537448057791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048298 (A285778 n).toNat) (A286733 n)

end

end A285654.P1876526537448057791

/-!
# A285658: Positions of 0 in A285657; complement of A285659.

The programs for A285658, there is no canonical definition to state claims against.
-/

/-! ## A285658.P3787979508926417451

`2*A286043(n+1)`
-/

namespace A285658.P3787979508926417451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286043 (n + 1)

end

end A285658.P3787979508926417451

/-! ## A285658.P1640444735025074675

`2*(A285659(n+1)+n)`
-/

namespace A285658.P1640444735025074675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A285659 (n + 1) + (n : ℤ))

end

end A285658.P1640444735025074675

/-! ## A285658.P12985595044527044057

`A286043(n+1)+A286043(n+1)+A005926(A005926(n))`
-/

namespace A285658.P12985595044527044057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286043 (n + 1) + (A286043 (n + 1) + A005926 (A005926 n).toNat)

end

end A285658.P12985595044527044057

/-! ## A285658.P7553070273977593750

`A005408(A285659(n+1)-1)+A005408(n)`
-/

namespace A285658.P7553070273977593750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A285659 (n + 1) - 1).toNat + A005408 n

end

end A285658.P7553070273977593750

/-! ## A285658.P8536076883280357600

`A005843(A285659(n+1))+A005843(n)`
-/

namespace A285658.P8536076883280357600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A285659 (n + 1)).toNat + A005843 n

end

end A285658.P8536076883280357600

/-! ## A285658.P3371619746066012678

`A004277(A286043(n+1))`
-/

namespace A285658.P3371619746066012678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A286043 (n + 1)).toNat

end

end A285658.P3371619746066012678

/-! ## A285658.P3289031215207763258

`A005843(A285659(n+1)+n)`
-/

namespace A285658.P3289031215207763258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A285659 (n + 1) + (n : ℤ)).toNat

end

end A285658.P3289031215207763258

/-! ## A285658.P3928063184991044254

`A005408(A285659(n+1)+n)-1`
-/

namespace A285658.P3928063184991044254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A285659 (n + 1) + (n : ℤ)).toNat - 1

end

end A285658.P3928063184991044254

/-!
# A285659: Positions of 1 in A285657; complement of A285658.

The programs for A285659, there is no canonical definition to state claims against.
-/

/-! ## A285659.P9430364836340014788

`A286043(n+1)-n`
-/

namespace A285659.P9430364836340014788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286043 (n + 1) - (n : ℤ)

end

end A285659.P9430364836340014788

/-! ## A285659.P16239685680162139027

`A285658(n+1)/2-n`
-/

namespace A285659.P16239685680162139027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285658 (n + 1) : ℚ) / 2 - (n : ℚ)

end

end A285659.P16239685680162139027

/-! ## A285659.P17313618467724943702

`filter[n+1, A285657(#)]`
-/

namespace A285659.P17313618467724943702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285657 (f1 j) = 1) n)

end

end A285659.P17313618467724943702

/-! ## A285659.P1236173716204152290

`record[(n+1)*A285657(n+1)]`
-/

namespace A285659.P1236173716204152290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285659.P1236173716204152290

/-! ## A285659.P8991564416255754256

`A001281(A285658(n+1)-2*n)`
-/

namespace A285659.P8991564416255754256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A285658 (n + 1) - (2 * n : ℤ)).toNat

end

end A285659.P8991564416255754256

/-! ## A285659.P1815352280739930597

`A001281(A285658(n+1)-n-n)`
-/

namespace A285659.P1815352280739930597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A285658 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A285659.P1815352280739930597

/-! ## A285659.P2213463035965379036

`A001281(A285658(n+1))-n`
-/

namespace A285659.P2213463035965379036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A285658 (n + 1)).toNat - (n : ℤ)

end

end A285659.P2213463035965379036

/-! ## A285659.P2546028264815426555

`A003602(A285658(n+1)-1)-n`
-/

namespace A285659.P2546028264815426555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A285658 (n + 1) - 1).toNat - (n : ℤ)

end

end A285659.P2546028264815426555

/-!
# A285661: Fixed point of the morphism 0->11, 1->1100.

The programs for A285661, there is no canonical definition to state claims against.
-/

/-! ## A285661.P9638606706305195746

`A285625(∑[char[2*n]])`
-/

namespace A285661.P9638606706305195746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285625 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285661.P9638606706305195746

/-! ## A285661.P6925334731956601569

`char[A285663(n+1)-1]`
-/

namespace A285661.P6925334731956601569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285663 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285661.P6925334731956601569

/-! ## A285661.P9668224710815637260

`log2(Δ[A285627(n+1)])`
-/

namespace A285661.P9668224710815637260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285627 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A285661.P9668224710815637260

/-! ## A285661.P11467329009394403716

`A143380(Δ[A285663(2*n+1)])`
-/

namespace A285661.P11467329009394403716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285663 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143380 (f1 (n + 1) - f1 n).toNat

end

end A285661.P11467329009394403716

/-!
# A285662: Positions of 0 in A285661; complement of A285663.

The programs for A285662, there is no canonical definition to state claims against.
-/

/-! ## A285662.P11892377876494489223

`A005408(A285663(A008619(n)))+n`
-/

namespace A285662.P11892377876494489223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A285663 (A008619 n).toNat).toNat + (n : ℤ)

end

end A285662.P11892377876494489223

/-! ## A285662.P6392998914213005520

`eq[0, A285625(A065033(n))]`
-/

namespace A285662.P6392998914213005520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285625 (A065033 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285662.P6392998914213005520

/-! ## A285662.P16440797641383513527

`eq[1, A285625(A285627(n+1)+1)]+1`
-/

namespace A285662.P16440797641383513527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285625 (A285627 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285662.P16440797641383513527

/-! ## A285662.P11445076207581862058

`eq[0, A285661(A065033(2*n))]`
-/

namespace A285662.P11445076207581862058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285661 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285662.P11445076207581862058

/-! ## A285662.P800347306239473038

`eq[0, A285661(A233583(n+1))]`
-/

namespace A285662.P800347306239473038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285661 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285662.P800347306239473038

/-!
# A285663: Positions of 1 in A285661; complement of A285662.

The programs for A285663, there is no canonical definition to state claims against.
-/

/-! ## A285663.P863770559829373717

`A285626(n+1)-(n+1)`
-/

namespace A285663.P863770559829373717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285626 (n + 1) - (n + 1 : ℤ)

end

end A285663.P863770559829373717

/-! ## A285663.P7148934616130056693

`filter[n+1, A285661(#)]`
-/

namespace A285663.P7148934616130056693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285661 (f1 j) = 1) n)

end

end A285663.P7148934616130056693

/-! ## A285663.P6399978186646143552

`eq[n, n*A285661(n+1)]+1`
-/

namespace A285663.P6399978186646143552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A285661 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285663.P6399978186646143552

/-! ## A285663.P7158059744694780397

`A285662(2*(n+1))/2-(n+1)`
-/

namespace A285663.P7158059744694780397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285662 (2 * (n + 1)) : ℚ) / 2 - (n + 1 : ℚ)

end

end A285663.P7158059744694780397

/-! ## A285663.P15249797983044868585

`eq[0, A285625(n+1)]-n`
-/

namespace A285663.P15249797983044868585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A285663.P15249797983044868585

/-! ## A285663.P3187879855342657451

`record[A142150(n+1+A285661(n+1)+n)]`
-/

namespace A285663.P3187879855342657451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 ((n + 1 : ℤ) + (A285661 (n + 1) + (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285663.P3187879855342657451

/-! ## A285663.P14683117940183181766

`eq[char[A285662(n+1)], A285476(2*n)]`
-/

namespace A285663.P14683117940183181766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285662 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285663.P14683117940183181766

/-!
# A285665: a(n) = a(n-1) + 2*a(n-2) - a(n-3) - a(n-4) + 2*a(n-5) - 2*a(n-7) for n>7 and where a(0)=2, a(1)=3, a(2)=6, a(3)=10, a(4)=17, a(5)=29, a(6)=51.

The programs for A285665, there is no canonical definition to state claims against.
-/

/-! ## A285665.P397015076369435149

`A001462(or(A001462(n+1)+2, A191605(n)))`
-/

namespace A285665.P397015076369435149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.lor (A001462 (n + 1) + 2) (A191605 n)).toNat

end

end A285665.P397015076369435149

/-! ## A285665.P154757892108688987

`A390945(A085839(n))`
-/

namespace A285665.P154757892108688987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390945 (A085839 n).toNat

end

end A285665.P154757892108688987

/-! ## A285665.P13131944275734345781

`A390945(A134915(n))`
-/

namespace A285665.P13131944275734345781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390945 (A134915 n).toNat

end

end A285665.P13131944275734345781

/-! ## A285665.P17847127600323047464

`A202306(A052870(n+1))`
-/

namespace A285665.P17847127600323047464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202306 (A052870 (n + 1)).toNat

end

end A285665.P17847127600323047464

/-! ## A285665.P404112371533414752

`A354535(A046721(n+2))`
-/

namespace A285665.P404112371533414752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354535 (A046721 (n + 2)).toNat

end

end A285665.P404112371533414752

/-!
# A285666: Fixed point of the mapping 00->001, 1->010, starting with 00.

The programs for A285666, there is no canonical definition to state claims against.
-/

/-! ## A285666.P351715348857430886

`char[A286058(n+1)-1]`
-/

namespace A285666.P351715348857430886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286058 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285666.P351715348857430886

/-! ## A285666.P7222819786668371313

`1-char[A285667(n+1)-1]`
-/

namespace A285666.P7222819786668371313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285667 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285666.P7222819786668371313

/-! ## A285666.P17020773024696967116

`Δ[A286058(n+2)]%2`
-/

namespace A285666.P17020773024696967116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286058 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A285666.P17020773024696967116

/-! ## A285666.P6187439691351576946

`A000035(Δ[A286058(n+2)])`
-/

namespace A285666.P6187439691351576946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286058 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (f1 (n + 1) - f1 n).toNat

end

end A285666.P6187439691351576946

/-! ## A285666.P11142058857790045360

`A004197(Δ[A286058(n+2)]+1)`
-/

namespace A285666.P11142058857790045360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286058 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (f1 (n + 1) - f1 n + 1).toNat

end

end A285666.P11142058857790045360

/-! ## A285666.P17120345052780947169

`and(1, A232561(n+3)%3)`
-/

namespace A285666.P17120345052780947169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.tmod (A232561 (n + 3)) 3)

end

end A285666.P17120345052780947169

/-!
# A285667: Positions of 0 in A285666; complement of A286058.

The programs for A285667, there is no canonical definition to state claims against.
-/

/-! ## A285667.P15318554667540302398

`a(n-1)+A285666(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A285667.P15318554667540302398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A285666 (a (n - 1) + 1).toNat + 1)

end

end A285667.P15318554667540302398

/-! ## A285667.P10483418989029582394

`eq[0, A285666(n+1)]+1`
-/

namespace A285667.P10483418989029582394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285667.P10483418989029582394

/-! ## A285667.P16739791396375717704

`lt[n*A285666(A028310(n)), n]`
-/

namespace A285667.P16739791396375717704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A285666 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285667.P16739791396375717704

/-! ## A285667.P13398022642772951769

`record[or(-A285666(n+1), A000027(n+1))]`
-/

namespace A285667.P13398022642772951769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A285666 (n + 1)) (A000027 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285667.P13398022642772951769

/-! ## A285667.P12234039870066003616

`record[gcd(n+1, A285666(n+1)+A008588(n+1))]`
-/

namespace A285667.P12234039870066003616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A285666 (n + 1) + A008588 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285667.P12234039870066003616

/-! ## A285667.P10773278559820901110

`record[A052938(n)-A285666(A052938(n))]`
-/

namespace A285667.P10773278559820901110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n - A285666 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285667.P10773278559820901110

/-!
# A285668: Fixed point of the morphism 0->11, 1->1101.

The programs for A285668, there is no canonical definition to state claims against.
-/

/-! ## A285668.P16998673852130197016

`char[A285670(n+1)-1]`
-/

namespace A285668.P16998673852130197016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285670 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285668.P16998673852130197016

/-! ## A285668.P15811627168693238183

`char[comp[A285669(n+1)-1]]`
-/

namespace A285668.P15811627168693238183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285669 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285668.P15811627168693238183

/-! ## A285668.P10101349536638186515

`A003056(Δ[char[A285670(n+1)]]+1)`
-/

namespace A285668.P10101349536638186515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285670 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A285668.P10101349536638186515

/-! ## A285668.P17609518195328893311

`char[comp[A165754(A285669(n+1))]]`
-/

namespace A285668.P17609518195328893311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 (A285669 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285668.P17609518195328893311

/-! ## A285668.P3649502379789966229

`char[xor(n, char[A285670(n+2)])]`
-/

namespace A285668.P3649502379789966229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285670 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285668.P3649502379789966229

/-! ## A285668.P15156730361432477371

`char[A165754(n)-char[A285669(n+1)]]`
-/

namespace A285668.P15156730361432477371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285669 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 n - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285668.P15156730361432477371

/-! ## A285668.P597624215983770769

`A285671(A118759(n)+20)`
-/

namespace A285668.P597624215983770769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285671 (A118759 n + 20).toNat

end

end A285668.P597624215983770769

/-!
# A285669: Positions of 0 in A285668; complement of A285670.

The programs for A285669, there is no canonical definition to state claims against.
-/

/-! ## A285669.P7467203948022185092

`A005408(n)+2*A285670(n+1)`
-/

namespace A285669.P7467203948022185092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + 2 * A285670 (n + 1)

end

end A285669.P7467203948022185092

/-! ## A285669.P7606270622156752917

`A004273(n+1)+2*A285670(n+1)`
-/

namespace A285669.P7606270622156752917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) + 2 * A285670 (n + 1)

end

end A285669.P7606270622156752917

/-! ## A285669.P16774380800891557876

`A005843(A285670(n+1))+A005843(n)+1`
-/

namespace A285669.P16774380800891557876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A285670 (n + 1)).toNat + (A005843 n + 1)

end

end A285669.P16774380800891557876

/-! ## A285669.P9548190180808097847

`A005408(A285670(n+1)+n)`
-/

namespace A285669.P9548190180808097847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A285670 (n + 1) + (n : ℤ)).toNat

end

end A285669.P9548190180808097847

/-! ## A285669.P10437626770235492640

`A005843(A285670(n+1)+n)+1`
-/

namespace A285669.P10437626770235492640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A285670 (n + 1) + (n : ℤ)).toNat + 1

end

end A285669.P10437626770235492640

/-! ## A285669.P11464847517698295365

`A004273(A285670(n+1)+1+n)`
-/

namespace A285669.P11464847517698295365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A285670 (n + 1) + 1 + (n : ℤ)).toNat

end

end A285669.P11464847517698295365

/-! ## A285669.P14829321753561966463

`lt[A285668(n+1), 1]+1`
-/

namespace A285669.P14829321753561966463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285668 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285669.P14829321753561966463

/-! ## A285669.P4746304679515514292

`eq[0, A285668(A028310(n))]`
-/

namespace A285669.P4746304679515514292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285668 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285669.P4746304679515514292

/-! ## A285669.P10216384918307656046

`A057174(eq[0, A285668(n+1)])`
-/

namespace A285669.P10216384918307656046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285669.P10216384918307656046

/-! ## A285669.P9142969067921782688

`eq[1, A285668(A103889(n+1))+1]`
-/

namespace A285669.P9142969067921782688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285668 (A103889 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285669.P9142969067921782688

/-!
# A285670: Positions of 1 in A285668; complement of A285669.

The programs for A285670, there is no canonical definition to state claims against.
-/

/-! ## A285670.P12318645228199044958

`comp[A285669(n+1)-1]+1`
-/

namespace A285670.P12318645228199044958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285669 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285670.P12318645228199044958

/-! ## A285670.P5560368380608423767

`filter[n+1, A285668(#)]`
-/

namespace A285670.P5560368380608423767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285668 (f1 j) = 1) n)

end

end A285670.P5560368380608423767

/-! ## A285670.P9356157795585124467

`lt[0, A285668(n+1)]+1`
-/

namespace A285670.P9356157795585124467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A285670.P9356157795585124467

/-! ## A285670.P1036533631864133911

`record[A028310(n+1)*A285668(n+1)]`
-/

namespace A285670.P1036533631864133911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1) * A285668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285670.P1036533631864133911

/-! ## A285670.P14133733626561189862

`record[(n+1)*A285668((n+1)%A006261(n+1))]`
-/

namespace A285670.P14133733626561189862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285668 (Int.tmod (n + 1 : ℤ) (A006261 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285670.P14133733626561189862

/-! ## A285670.P3894275057518298670

`record[(n+1)*A285668(n+1)]%A255997(n+1)`
-/

namespace A285670.P3894275057518298670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A255997 (n + 1))

end

end A285670.P3894275057518298670

/-! ## A285670.P14921303366745018615

`eq[A057427(n), A285668(A028310(n))]`
-/

namespace A285670.P14921303366745018615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285668 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285670.P14921303366745018615

/-! ## A285670.P4790888251380510629

`eq[A057427(n), A285668(A103889(n+1))]`
-/

namespace A285670.P4790888251380510629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285668 (A103889 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285670.P4790888251380510629

/-! ## A285670.P589781933150206798

`record[A020915(n)*A285668(A020915(n))]`
-/

namespace A285670.P589781933150206798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n * A285668 (A020915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285670.P589781933150206798

/-! ## A285670.P3269038710086634114

`A110654(A285669(n+1)-1)-n`
-/

namespace A285670.P3269038710086634114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A285669 (n + 1) - 1).toNat - (n : ℤ)

end

end A285670.P3269038710086634114

/-! ## A285670.P10162727861787629942

`lt[A285476(2*n), A285668(A028310(n))]`
-/

namespace A285670.P10162727861787629942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285668 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285670.P10162727861787629942

/-! ## A285670.P131100675544223456

`record[A004736(A285668(n+1)+∑[n])]`
-/

namespace A285670.P131100675544223456
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A285668 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285670.P131100675544223456

/-! ## A285670.P17164134060198787175

`record[A004736(n+1)*A285668(A004736(n+1))]`
-/

namespace A285670.P17164134060198787175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A285668 (A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285670.P17164134060198787175

/-!
# A285671: Fixed point of the morphism 0->11, 1->1110.

The programs for A285671, there is no canonical definition to state claims against.
-/

/-! ## A285671.P1902524595827291475

`char[A045671(n)-1]`
-/

namespace A285671.P1902524595827291475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045671 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285671.P1902524595827291475

/-! ## A285671.P16983869681817227334

`char[comp[A045672(n)-1]]`
-/

namespace A285671.P16983869681817227334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045672 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285671.P16983869681817227334

/-! ## A285671.P11633420642174180865

`char[A057428(n)+A045671(n)]`
-/

namespace A285671.P11633420642174180865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A045671 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285671.P11633420642174180865

/-! ## A285671.P5428399470102350798

`char[A001478(n+1)+A045671(n)+n]`
-/

namespace A285671.P5428399470102350798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A045671 n + (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285671.P5428399470102350798

/-! ## A285671.P1683511859082451158

`char[A014681(A045671(n))]`
-/

namespace A285671.P1683511859082451158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A045671 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285671.P1683511859082451158

/-! ## A285671.P3247271722726888612

`A285599(A000196((n+22)²))`
-/

namespace A285671.P3247271722726888612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285599 (A000196 ((n + 22) ^ 2)).toNat

end

end A285671.P3247271722726888612

/-! ## A285671.P15351546976166195213

`A000035(or(A056107(n), A314096(n)))`
-/

namespace A285671.P15351546976166195213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.lor (A056107 n) (A314096 n)).toNat

end

end A285671.P15351546976166195213

/-! ## A285671.P2654503561233388656

`or(A010193(n), A086959(n+1))%2`
-/

namespace A285671.P2654503561233388656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A010193 n) (A086959 (n + 1))) 2

end

end A285671.P2654503561233388656

/-!
# A285672: Number of permutations p of [n] avoiding consecutive odd sums i+p(i), (i+1)+p(i+1) for all i in [n-1].

The programs for A285672, there is no canonical definition to state claims against.
-/

/-! ## A285672.P4961752910981093065

`A007614(A003510(n))`
-/

namespace A285672.P4961752910981093065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007614 (A003510 n).toNat

end

end A285672.P4961752910981093065

/-! ## A285672.P5908113251915370514

`A093006(A309299(n)+A000009(n))`
-/

namespace A285672.P5908113251915370514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093006 (A309299 n + A000009 n).toNat

end

end A285672.P5908113251915370514

/-! ## A285672.P4478895557003562924

`A003963(A000246(n))*A028304(n)`
-/

namespace A285672.P4478895557003562924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A000246 n).toNat * A028304 n

end

end A285672.P4478895557003562924

/-! ## A285672.P12379608947042130826

`A065033(A000065(n)*A010551(n))`
-/

namespace A285672.P12379608947042130826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000065 n * A010551 n).toNat

end

end A285672.P12379608947042130826

/-!
# A285674: Expansion of Product_{k>=1} 1/(1 - k^2*x^k)^k.

The programs for A285674, there is no canonical definition to state claims against.
-/

/-! ## A285674.P13189250908836894936

`A294582(∑[n+3])`
-/

namespace A285674.P13189250908836894936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294582 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285674.P13189250908836894936

/-! ## A285674.P15499492903239125007

`or(A000007(n), A294582(A027379(n+1)))`
-/

namespace A285674.P15499492903239125007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A294582 (A027379 (n + 1)).toNat)

end

end A285674.P15499492903239125007

/-! ## A285674.P1571586954073490554

`A294582(A027379(n+1))+A000007(n+1)`
-/

namespace A285674.P1571586954073490554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294582 (A027379 (n + 1)).toNat + A000007 (n + 1)

end

end A285674.P1571586954073490554

/-! ## A285674.P7932569611557502188

`A000034(2*n)*A294582(A027379(n+1))`
-/

namespace A285674.P7932569611557502188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A294582 (A027379 (n + 1)).toNat

end

end A285674.P7932569611557502188

/-! ## A285674.P12923671054315865480

`A025453(A001227(n+1))*A294582(A027379(n+1))`
-/

namespace A285674.P12923671054315865480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 (A001227 (n + 1)).toNat * A294582 (A027379 (n + 1)).toNat

end

end A285674.P12923671054315865480

/-!
# A285676: Beatty sequence of (7 + sqrt(7))/6; complement of A022841.

The programs for A285676, the canonical program `A285676.P10897390409812711873` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285676 has offset 1).

The definition of A285676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285676.P10897390409812711873

`comp[floor(n*sqrt(7))]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285676

/-- `comp[floor(n*sqrt(7))]` -/
def P10897390409812711873.Spec : Prop :=
  ∀ n, (P10897390409812711873.a n : ℤ) = A285676 (n + 1)

theorem P10897390409812711873.correct : P10897390409812711873.Spec := by
  intro n
  simp only [A285676, Nat.add_sub_cancel]

end A285676

/-! ## A285676.P15881482360706525440

`comp[A198084(n)-2]+1`
-/

namespace A285676.P15881482360706525440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198084 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285676.P15881482360706525440

namespace A285676

/-- `comp[A198084(n)-2]+1` -/
def P15881482360706525440.Spec : Prop :=
  ∀ n, (P15881482360706525440.a n : ℤ) = A285676 (n + 1)

end A285676

/-! ## A285676.P3015411647364532483

`comp[A022841(n+1)-1]+1`
-/

namespace A285676.P3015411647364532483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022841 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285676.P3015411647364532483

namespace A285676

/-- `comp[A022841(n+1)-1]+1` -/
def P3015411647364532483.Spec : Prop :=
  ∀ n, (P3015411647364532483.a n : ℤ) = A285676 (n + 1)

end A285676

/-! ## A285676.P9234413634106990050

`∪[A198084(n+1)-2, A198084(n+1)]`
-/

namespace A285676.P9234413634106990050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198084 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285676.P9234413634106990050

namespace A285676

/-- `∪[A198084(n+1)-2, A198084(n+1)]` -/
def P9234413634106990050.Spec : Prop :=
  ∀ n, (P9234413634106990050.a n : ℤ) = A285676 (n + 1)

end A285676

/-! ## A285676.P6783121086506755820

`a(n-1)+A286654(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A285676.P6783121086506755820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A286654 (a (n - 1) + 1).toNat + 1)

end

end A285676.P6783121086506755820

namespace A285676

/-- `a(n-1)+A286654(a(n-1)+1)+1` -/
def P6783121086506755820.Spec : Prop :=
  ∀ n, P6783121086506755820.a n = A285676 (n + 1)

end A285676

/-! ## A285676.P3870337009323102211

`eq[A022841(n+1)*A286654(n+1), A286654(n+1)]+1`
-/

namespace A285676.P3870337009323102211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022841 (n + 1) * A286654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286654 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285676.P3870337009323102211

namespace A285676

/-- `eq[A022841(n+1)*A286654(n+1), A286654(n+1)]+1` -/
def P3870337009323102211.Spec : Prop :=
  ∀ n, (P3870337009323102211.a n : ℤ) = A285676 (n + 1)

end A285676

/-! ## A285676.P2373761813157232805

`record[A028242(A005843(n)-A286654(n+1))]`
-/

namespace A285676.P2373761813157232805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A005843 n - A286654 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285676.P2373761813157232805

namespace A285676

/-- `record[A028242(A005843(n)-A286654(n+1))]` -/
def P2373761813157232805.Spec : Prop :=
  ∀ n, P2373761813157232805.a n = A285676 (n + 1)

end A285676

/-! ## A285676.P14129411865625611144

`A256502(n+2)+n%A338610(n²+1)`
-/

namespace A285676.P14129411865625611144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (n + 2) + Int.tmod (n : ℤ) (A338610 (n ^ 2 + 1))

end

end A285676.P14129411865625611144

namespace A285676

/-- `A256502(n+2)+n%A338610(n²+1)` -/
def P14129411865625611144.Spec : Prop :=
  ∀ n, P14129411865625611144.a n = A285676 (n + 1)

end A285676

/-! ## A285676.P11904431066961891749

`(A256502(n+2)+n)%A338610(A000290(n)+1)`
-/

namespace A285676.P11904431066961891749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256502 (n + 2) + (n : ℤ)) (A338610 (A000290 n + 1).toNat)

end

end A285676.P11904431066961891749

namespace A285676

/-- `(A256502(n+2)+n)%A338610(A000290(n)+1)` -/
def P11904431066961891749.Spec : Prop :=
  ∀ n, P11904431066961891749.a n = A285676 (n + 1)

end A285676

/-! ## A285676.P2941996778019432046

`floor(A330115(n+1)/2)`
-/

namespace A285676.P2941996778019432046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A330115 (n + 1) : ℚ) / 2⌋

end

end A285676.P2941996778019432046

namespace A285676

/-- `floor(A330115(n+1)/2)` -/
def P2941996778019432046.Spec : Prop :=
  ∀ n, P2941996778019432046.a n = A285676 (n + 1)

end A285676

/-!
# A285677: {0010->2}-transform of the infinite Fibonacci word A003849.

The programs for A285677, there is no canonical definition to state claims against.
-/

/-! ## A285677.P1101486324105142025

`A007877(A140303(n)*A252867(n))`
-/

namespace A285677.P1101486324105142025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A140303 n * A252867 n).toNat

end

end A285677.P1101486324105142025

/-! ## A285677.P7161959083651839050

`A007877(A252867(n)%A022490(n+1))`
-/

namespace A285677.P7161959083651839050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (Int.tmod (A252867 n) (A022490 (n + 1))).toNat

end

end A285677.P7161959083651839050

/-! ## A285677.P18266648671447154563

`and(A126044(A175233(n+1)), A252867(n))`
-/

namespace A285677.P18266648671447154563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126044 (A175233 (n + 1)).toNat) (A252867 n)

end

end A285677.P18266648671447154563

/-! ## A285677.P12536146161746529081

`A001222(A338911(3*n+2))-A083054(n+5)`
-/

namespace A285677.P12536146161746529081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A338911 (3 * n + 2)).toNat - A083054 (n + 5)

end

end A285677.P12536146161746529081

/-! ## A285677.P13387490912564531892

`1-A175629(A000330(2*n+1))`
-/

namespace A285677.P13387490912564531892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A175629 (A000330 (2 * n + 1)).toNat

end

end A285677.P13387490912564531892

/-!
# A285678: Positions of 0 in A285677.

The programs for A285678, the canonical program `A285678.P5257345093601625963` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285678 has offset 1).

The definition of A285678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285678.P5257345093601625963

`A188016(n+1)+or(1, n-1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A285678

/-- `A188016(n+1)+or(1, n-1)` -/
def P5257345093601625963.Spec : Prop :=
  ∀ n, P5257345093601625963.a n = A285678 (n + 1)

theorem P5257345093601625963.correct : P5257345093601625963.Spec := by
  intro n
  simp only [A285678, Nat.add_sub_cancel]

end A285678

/-! ## A285678.P2169994272907888726

`A188016(n+1)+n+1-A000034(n+1)`
-/

namespace A285678.P2169994272907888726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 1) + ((n + 1 : ℤ) - A000034 (n + 1))

end

end A285678.P2169994272907888726

namespace A285678

/-- `A188016(n+1)+n+1-A000034(n+1)` -/
def P2169994272907888726.Spec : Prop :=
  ∀ n, P2169994272907888726.a n = A285678 (n + 1)

end A285678

/-! ## A285678.P14010242263988213622

`A189662(A188435(n+1))+n`
-/

namespace A285678.P14010242263988213622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189662 (A188435 (n + 1)).toNat + (n : ℤ)

end

end A285678.P14010242263988213622

namespace A285678

/-- `A189662(A188435(n+1))+n` -/
def P14010242263988213622.Spec : Prop :=
  ∀ n, P14010242263988213622.a n = A285678 (n + 1)

end A285678

/-! ## A285678.P15234433083830831855

`A005843(A188435(n+1))+A110654(n)-1`
-/

namespace A285678.P15234433083830831855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A188435 (n + 1)).toNat + (A110654 n - 1)

end

end A285678.P15234433083830831855

namespace A285678

/-- `A005843(A188435(n+1))+A110654(n)-1` -/
def P15234433083830831855.Spec : Prop :=
  ∀ n, P15234433083830831855.a n = A285678 (n + 1)

end A285678

/-! ## A285678.P12135362867982362036

`eq[1, A285677(n+1)+1]+1`
-/

namespace A285678.P12135362867982362036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285677 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285678.P12135362867982362036

namespace A285678

/-- `eq[1, A285677(n+1)+1]+1` -/
def P12135362867982362036.Spec : Prop :=
  ∀ n, (P12135362867982362036.a n : ℤ) = A285678 (n + 1)

end A285678

/-! ## A285678.P11875065672531091499

`record[n+1-A046109(n)*A285677(n+1)]`
-/

namespace A285678.P11875065672531091499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A046109 n * A285677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285678.P11875065672531091499

namespace A285678

/-- `record[n+1-A046109(n)*A285677(n+1)]` -/
def P11875065672531091499.Spec : Prop :=
  ∀ n, P11875065672531091499.a n = A285678 (n + 1)

end A285678

/-! ## A285678.P343019059306103415

`record[n+1-A055649(n)*A285677(n+1)]`
-/

namespace A285678.P343019059306103415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A055649 n * A285677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285678.P343019059306103415

namespace A285678

/-- `record[n+1-A055649(n)*A285677(n+1)]` -/
def P343019059306103415.Spec : Prop :=
  ∀ n, P343019059306103415.a n = A285678 (n + 1)

end A285678

/-! ## A285678.P1437036564358022381

`record[n+1-A044783(n+1)*A285677(n+1)]`
-/

namespace A285678.P1437036564358022381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A044783 (n + 1) * A285677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285678.P1437036564358022381

namespace A285678

/-- `record[n+1-A044783(n+1)*A285677(n+1)]` -/
def P1437036564358022381.Spec : Prop :=
  ∀ n, P1437036564358022381.a n = A285678 (n + 1)

end A285678

/-! ## A285678.P18238273687233002171

`record[n+1-A045965(n+1)*A285677(n+1)]`
-/

namespace A285678.P18238273687233002171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A045965 (n + 1) * A285677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285678.P18238273687233002171

namespace A285678

/-- `record[n+1-A045965(n+1)*A285677(n+1)]` -/
def P18238273687233002171.Spec : Prop :=
  ∀ n, P18238273687233002171.a n = A285678 (n + 1)

end A285678

/-! ## A285678.P14040201132446619690

`record[n+1-A102441(n+1)*A285677(n+1)]`
-/

namespace A285678.P14040201132446619690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A102441 (n + 1) * A285677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285678.P14040201132446619690

namespace A285678

/-- `record[n+1-A102441(n+1)*A285677(n+1)]` -/
def P14040201132446619690.Spec : Prop :=
  ∀ n, P14040201132446619690.a n = A285678 (n + 1)

end A285678

/-! ## A285678.P10584299922487630518

`∑[A095346(n+1)+A000034(n)]-A095346(n+1)`
-/

namespace A285678.P10584299922487630518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095346 (n + 1) + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A095346 (n + 1)

end

end A285678.P10584299922487630518

namespace A285678

/-- `∑[A095346(n+1)+A000034(n)]-A095346(n+1)` -/
def P10584299922487630518.Spec : Prop :=
  ∀ n, P10584299922487630518.a n = A285678 (n + 1)

end A285678

/-!
# A285679: Positions of 2 in A285677.

The programs for A285679, the canonical program `A285679.P13198403238930620714` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285679 has offset 1).

The definition of A285679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285679.P13198403238930620714

`3*floor(n*ϕ)-(n+1)+4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285679

/-- `3*floor(n*ϕ)-(n+1)+4` -/
def P13198403238930620714.Spec : Prop :=
  ∀ n, P13198403238930620714.a n = A285679 (n + 1)

theorem P13198403238930620714.correct : P13198403238930620714.Spec := by
  intro n
  simp only [A285679, Nat.add_sub_cancel]

end A285679

/-! ## A285679.P7008390562928459721

`abs(3*A026351(n)-n)`
-/

namespace A285679.P7008390562928459721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A026351 n - (n : ℤ)|

end

end A285679.P7008390562928459721

namespace A285679

/-- `abs(3*A026351(n)-n)` -/
def P7008390562928459721.Spec : Prop :=
  ∀ n, P7008390562928459721.a n = A285679 (n + 1)

end A285679

/-! ## A285679.P10494276804180830765

`A285683(n)%(a(n-1)+6)` with `a(0)=3`
-/

namespace A285679.P10494276804180830765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.tmod (A285683 n) (a (n - 1) + 6)

end

end A285679.P10494276804180830765

namespace A285679

/-- `A285683(n)%(a(n-1)+6)` -/
def P10494276804180830765.Spec : Prop :=
  ∀ n, P10494276804180830765.a n = A285679 (n + 1)

end A285679

/-! ## A285679.P3548727866376223370

`A195170(A026351(n))`
-/

namespace A285679.P3548727866376223370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195170 (A026351 n).toNat

end

end A285679.P3548727866376223370

namespace A285679

/-- `A195170(A026351(n))` -/
def P3548727866376223370.Spec : Prop :=
  ∀ n, P3548727866376223370.a n = A285679 (n + 1)

end A285679

/-! ## A285679.P13104840730268591807

`A195170(A066096(n)+1)`
-/

namespace A285679.P13104840730268591807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195170 (A066096 n + 1).toNat

end

end A285679.P13104840730268591807

namespace A285679

/-- `A195170(A066096(n)+1)` -/
def P13104840730268591807.Spec : Prop :=
  ∀ n, P13104840730268591807.a n = A285679 (n + 1)

end A285679

/-! ## A285679.P10242551034116137016

`A195170(A016813(n)-A195170(n))`
-/

namespace A285679.P10242551034116137016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195170 (A016813 n - A195170 n).toNat

end

end A285679.P10242551034116137016

namespace A285679

/-- `A195170(A016813(n)-A195170(n))` -/
def P10242551034116137016.Spec : Prop :=
  ∀ n, P10242551034116137016.a n = A285679 (n + 1)

end A285679

/-! ## A285679.P9391197026793170965

`A195170(A016825(n)-(A195170(n)+1))`
-/

namespace A285679.P9391197026793170965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195170 (A016825 n - (A195170 n + 1)).toNat

end

end A285679.P9391197026793170965

namespace A285679

/-- `A195170(A016825(n)-(A195170(n)+1))` -/
def P9391197026793170965.Spec : Prop :=
  ∀ n, P9391197026793170965.a n = A285679 (n + 1)

end A285679

/-! ## A285679.P13040140311961510226

`A195170(A016825(n)-1-A195170(n))`
-/

namespace A285679.P13040140311961510226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195170 (A016825 n - 1 - A195170 n).toNat

end

end A285679.P13040140311961510226

namespace A285679

/-- `A195170(A016825(n)-1-A195170(n))` -/
def P13040140311961510226.Spec : Prop :=
  ∀ n, P13040140311961510226.a n = A285679 (n + 1)

end A285679

/-! ## A285679.P14551881112782253344

`A195170(A157142(2*n)-A195170(n))`
-/

namespace A285679.P14551881112782253344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195170 (A157142 (2 * n) - A195170 n).toNat

end

end A285679.P14551881112782253344

namespace A285679

/-- `A195170(A157142(2*n)-A195170(n))` -/
def P14551881112782253344.Spec : Prop :=
  ∀ n, P14551881112782253344.a n = A285679 (n + 1)

end A285679

/-! ## A285679.P14324692240863637094

`A195170(A214971(n+1)-2*n)`
-/

namespace A285679.P14324692240863637094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195170 (A214971 (n + 1) - (2 * n : ℤ)).toNat

end

end A285679.P14324692240863637094

namespace A285679

/-- `A195170(A214971(n+1)-2*n)` -/
def P14324692240863637094.Spec : Prop :=
  ∀ n, P14324692240863637094.a n = A285679 (n + 1)

end A285679

/-! ## A285679.P15185592836044034185

`A195170(A214971(n+1)-n-n)`
-/

namespace A285679.P15185592836044034185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195170 (A214971 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A285679.P15185592836044034185

namespace A285679

/-- `A195170(A214971(n+1)-n-n)` -/
def P15185592836044034185.Spec : Prop :=
  ∀ n, P15185592836044034185.a n = A285679 (n + 1)

end A285679

/-!
# A285680: {1010->2}-transform of the infinite Fibonacci word A003849.

The programs for A285680, the canonical program `A285680.P812841276497210756` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285680 has offset 1).

The definition of A285680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7941 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285680.P812841276497210756

`A284394(comp[A284396(n+1)]+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A285680

/-- `A284394(comp[A284396(n+1)]+1)` -/
def P812841276497210756.Spec : Prop :=
  ∀ n, P812841276497210756.a n = A285680 (n + 1)

theorem P812841276497210756.correct : P812841276497210756.Spec := by
  intro n
  simp only [A285680, Nat.add_sub_cancel]

end A285680

/-! ## A285680.P14721350495578366658

`and(A032414(n+1), A214332(n))`
-/

namespace A285680.P14721350495578366658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032414 (n + 1)) (A214332 n)

end

end A285680.P14721350495578366658

namespace A285680

/-- `and(A032414(n+1), A214332(n))` -/
def P14721350495578366658.Spec : Prop :=
  ∀ n, P14721350495578366658.a n = A285680 (n + 1)

end A285680

/-! ## A285680.P16133983681109429803

`and(A214332(n), A331943(A276086(n)))`
-/

namespace A285680.P16133983681109429803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A214332 n) (A331943 (A276086 n).toNat)

end

end A285680.P16133983681109429803

namespace A285680

/-- `and(A214332(n), A331943(A276086(n)))` -/
def P16133983681109429803.Spec : Prop :=
  ∀ n, P16133983681109429803.a n = A285680 (n + 1)

end A285680

/-! ## A285680.P17574061986557609204

`and(A000027(A000204(n+1)), A214332(n))`
-/

namespace A285680.P17574061986557609204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000027 (A000204 (n + 1)).toNat) (A214332 n)

end

end A285680.P17574061986557609204

namespace A285680

/-- `and(A000027(A000204(n+1)), A214332(n))` -/
def P17574061986557609204.Spec : Prop :=
  ∀ n, P17574061986557609204.a n = A285680 (n + 1)

end A285680

/-! ## A285680.P10328889550899464817

`and(A294570(n+1), A352427(n+1))`
-/

namespace A285680.P10328889550899464817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A294570 (n + 1)) (A352427 (n + 1))

end

end A285680.P10328889550899464817

namespace A285680

/-- `and(A294570(n+1), A352427(n+1))` -/
def P10328889550899464817.Spec : Prop :=
  ∀ n, P10328889550899464817.a n = A285680 (n + 1)

end A285680

/-!
# A285681: Positions of 0 in A285680.

The programs for A285681, the canonical program `A285681.P2975785999399153542` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285681 has offset 1).

The definition of A285681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285681.P2975785999399153542

`floor((n-1)/(3-ϕ)+n+2)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285681

/-- `floor((n-1)/(3-ϕ)+n+2)` -/
def P2975785999399153542.Spec : Prop :=
  ∀ n, P2975785999399153542.a n = A285681 (n + 1)

theorem P2975785999399153542.correct : P2975785999399153542.Spec := by
  intro n
  simp only [A285681, Nat.add_sub_cancel]

end A285681

/-! ## A285681.P499017784400722209

`∑[char[A195121(n)+1]+1]`
-/

namespace A285681.P499017784400722209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195121 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285681.P499017784400722209

namespace A285681

/-- `∑[char[A195121(n)+1]+1]` -/
def P499017784400722209.Spec : Prop :=
  ∀ n, (P499017784400722209.a n : ℤ) = A285681 (n + 1)

end A285681

/-! ## A285681.P5945496899016377899

`comp[comp[A284624(n+1)]+n]`
-/

namespace A285681.P5945496899016377899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284624 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A285681.P5945496899016377899

namespace A285681

/-- `comp[comp[A284624(n+1)]+n]` -/
def P5945496899016377899.Spec : Prop :=
  ∀ n, (P5945496899016377899.a n : ℤ) = A285681 (n + 1)

end A285681

/-! ## A285681.P18164287713444582561

`comp[A004767(n)-2-floor(ϕ*n)]+1`
-/

namespace A285681.P18164287713444582561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - 2 - ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285681.P18164287713444582561

namespace A285681

/-- `comp[A004767(n)-2-floor(ϕ*n)]+1` -/
def P18164287713444582561.Spec : Prop :=
  ∀ n, (P18164287713444582561.a n : ℤ) = A285681 (n + 1)

end A285681

/-! ## A285681.P4979821738799398295

`comp[floor(ϕ*n+2*(n+1))-A288712(n+1)]`
-/

namespace A285681.P4979821738799398295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ) + (2 * (n + 1) : ℝ)⌋ - A288712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A285681.P4979821738799398295

namespace A285681

/-- `comp[floor(ϕ*n+2*(n+1))-A288712(n+1)]` -/
def P4979821738799398295.Spec : Prop :=
  ∀ n, (P4979821738799398295.a n : ℤ) = A285681 (n + 1)

end A285681

/-! ## A285681.P3718254143478487431

`∑[A001030(a(A284749(n)))]` with `a(0)=1`
-/

namespace A285681.P3718254143478487431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001030 (f1 (A284749 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285681.P3718254143478487431

namespace A285681

/-- `∑[A001030(a(A284749(n)))]` -/
def P3718254143478487431.Spec : Prop :=
  ∀ n, P3718254143478487431.a n = A285681 (n + 1)

end A285681

/-! ## A285681.P11795980311020448009

`A004956(A188437(n+1))-A188437(n+1)+n`
-/

namespace A285681.P11795980311020448009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A188437 (n + 1)).toNat - A188437 (n + 1) + (n : ℤ)

end

end A285681.P11795980311020448009

namespace A285681

/-- `A004956(A188437(n+1))-A188437(n+1)+n` -/
def P11795980311020448009.Spec : Prop :=
  ∀ n, P11795980311020448009.a n = A285681 (n + 1)

end A285681

/-! ## A285681.P10708461110428946462

`eq[2, a(A285680(n))+1]` with `a(0)=1`
-/

namespace A285681.P10708461110428946462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (A285680 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285681.P10708461110428946462

namespace A285681

/-- `eq[2, a(A285680(n))+1]` -/
def P10708461110428946462.Spec : Prop :=
  ∀ n, (P10708461110428946462.a n : ℤ) = A285681 (n + 1)

end A285681

/-! ## A285681.P7371593072140270470

`record[1-A285680(n+1)+n]`
-/

namespace A285681.P7371593072140270470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A285680 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285681.P7371593072140270470

namespace A285681

/-- `record[1-A285680(n+1)+n]` -/
def P7371593072140270470.Spec : Prop :=
  ∀ n, P7371593072140270470.a n = A285681 (n + 1)

end A285681

/-! ## A285681.P5213031039852722910

`A008619(A003056(3*n²)+n+1)`
-/

namespace A285681.P5213031039852722910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003056 (3 * n ^ 2) + (n + 1 : ℤ)).toNat

end

end A285681.P5213031039852722910

namespace A285681

/-- `A008619(A003056(3*n²)+n+1)` -/
def P5213031039852722910.Spec : Prop :=
  ∀ n, P5213031039852722910.a n = A285681 (n + 1)

end A285681

/-!
# A285682: Positions of 1 in A285680.

The programs for A285682, the canonical program `A285682.P14811825003316370073` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285682 has offset 1).

The definition of A285682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285682.P3554094744902756342

`2*comp[ceil(ϕ*n)]+n`
-/

namespace A285682.P3554094744902756342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A285682.P3554094744902756342

namespace A285682

/-- `2*comp[ceil(ϕ*n)]+n` -/
def P3554094744902756342.Spec : Prop :=
  ∀ n, (P3554094744902756342.a n : ℤ) = A285682 (n + 1)

end A285682

/-! ## A285682.P14811825003316370073

`abs(2*A284624(n+1)-2-n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A285682

/-- `abs(2*A284624(n+1)-2-n)` -/
def P14811825003316370073.Spec : Prop :=
  ∀ n, P14811825003316370073.a n = A285682 (n + 1)

theorem P14811825003316370073.correct : P14811825003316370073.Spec := by
  intro n
  simp only [A285682, Nat.add_sub_cancel]

end A285682

/-! ## A285682.P5363724183136055147

`abs(A060747(n)+A047924(n))`
-/

namespace A285682.P5363724183136055147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060747 n + A047924 n|

end

end A285682.P5363724183136055147

namespace A285682

/-- `abs(A060747(n)+A047924(n))` -/
def P5363724183136055147.Spec : Prop :=
  ∀ n, P5363724183136055147.a n = A285682 (n + 1)

end A285682

/-! ## A285682.P13018085708497051641

`A000027(A284621(n+1)+n+1)`
-/

namespace A285682.P13018085708497051641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A284621 (n + 1) + (n + 1 : ℤ)).toNat

end

end A285682.P13018085708497051641

namespace A285682

/-- `A000027(A284621(n+1)+n+1)` -/
def P13018085708497051641.Spec : Prop :=
  ∀ n, P13018085708497051641.a n = A285682 (n + 1)

end A285682

/-! ## A285682.P3129943169542191397

`(5*A026352(n))%A188012(n+1)`
-/

namespace A285682.P3129943169542191397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A026352 n) (A188012 (n + 1))

end

end A285682.P3129943169542191397

namespace A285682

/-- `(5*A026352(n))%A188012(n+1)` -/
def P3129943169542191397.Spec : Prop :=
  ∀ n, P3129943169542191397.a n = A285682 (n + 1)

end A285682

/-! ## A285682.P10984843260816953030

`(2*n+2*A026351(n)+n)*A000041(floor(1/(n+1)))`
-/

namespace A285682.P10984843260816953030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) + (2 * A026351 n + (n : ℤ))) * A000041 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A285682.P10984843260816953030

namespace A285682

/-- `(2*n+2*A026351(n)+n)*A000041(floor(1/(n+1)))` -/
def P10984843260816953030.Spec : Prop :=
  ∀ n, P10984843260816953030.a n = A285682 (n + 1)

end A285682

/-! ## A285682.P7594816645536632402

`record[A050140(n+1)+A002251(n)+1]`
-/

namespace A285682.P7594816645536632402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (n + 1) + (A002251 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285682.P7594816645536632402

namespace A285682

/-- `record[A050140(n+1)+A002251(n)+1]` -/
def P7594816645536632402.Spec : Prop :=
  ∀ n, P7594816645536632402.a n = A285682 (n + 1)

end A285682

/-! ## A285682.P15299423749016255942

`record[A188016(n+1)-A131738(n)]`
-/

namespace A285682.P15299423749016255942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 1) - A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285682.P15299423749016255942

namespace A285682

/-- `record[A188016(n+1)-A131738(n)]` -/
def P15299423749016255942.Spec : Prop :=
  ∀ n, P15299423749016255942.a n = A285682 (n + 1)

end A285682

/-! ## A285682.P2744139533235580779

`record[A016789(A002251(n))-n]`
-/

namespace A285682.P2744139533235580779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A002251 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285682.P2744139533235580779

namespace A285682

/-- `record[A016789(A002251(n))-n]` -/
def P2744139533235580779.Spec : Prop :=
  ∀ n, P2744139533235580779.a n = A285682 (n + 1)

end A285682

/-! ## A285682.P14294532382778275377

`A182761(A026352(n))`
-/

namespace A285682.P14294532382778275377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182761 (A026352 n).toNat

end

end A285682.P14294532382778275377

namespace A285682

/-- `A182761(A026352(n))` -/
def P14294532382778275377.Spec : Prop :=
  ∀ n, P14294532382778275377.a n = A285682 (n + 1)

end A285682

/-! ## A285682.P15644803507488710282

`abs(2*A214971(n+1)-n)`
-/

namespace A285682.P15644803507488710282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A214971 (n + 1) - (n : ℤ)|

end

end A285682.P15644803507488710282

namespace A285682

/-- `abs(2*A214971(n+1)-n)` -/
def P15644803507488710282.Spec : Prop :=
  ∀ n, P15644803507488710282.a n = A285682 (n + 1)

theorem P15644803507488710282.correct : P15644803507488710282.Spec := by
  intro n
  simp only [A285682, Nat.add_sub_cancel, A285682.P15644803507488710282.a, A285682.P14811825003316370073.a, A214971, A214971.P11920621393360693990.a, A284624, A284624.P10333445182018701270.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285682

/-! ## A285682.P6428929938747686608

`A020725(A284621(n+1)+n)`
-/

namespace A285682.P6428929938747686608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A284621 (n + 1) + (n : ℤ)).toNat

end

end A285682.P6428929938747686608

namespace A285682

/-- `A020725(A284621(n+1)+n)` -/
def P6428929938747686608.Spec : Prop :=
  ∀ n, P6428929938747686608.a n = A285682 (n + 1)

end A285682

/-! ## A285682.P7828995003516095709

`A023443(A047924(n)+2*n)`
-/

namespace A285682.P7828995003516095709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A047924 n + (2 * n : ℤ)).toNat

end

end A285682.P7828995003516095709

namespace A285682

/-- `A023443(A047924(n)+2*n)` -/
def P7828995003516095709.Spec : Prop :=
  ∀ n, P7828995003516095709.a n = A285682 (n + 1)

end A285682

/-! ## A285682.P13247854689685917955

`eq[A285680(n+1), A285680(n+2)]`
-/

namespace A285682.P13247854689685917955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285680 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285682.P13247854689685917955

namespace A285682

/-- `eq[A285680(n+1), A285680(n+2)]` -/
def P13247854689685917955.Spec : Prop :=
  ∀ n, (P13247854689685917955.a n : ℤ) = A285682 (n + 1)

end A285682

/-! ## A285682.P12377556209019762334

`A028310(A060747(n)+A047924(n))`
-/

namespace A285682.P12377556209019762334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A060747 n + A047924 n).toNat

end

end A285682.P12377556209019762334

namespace A285682

/-- `A028310(A060747(n)+A047924(n))` -/
def P12377556209019762334.Spec : Prop :=
  ∀ n, P12377556209019762334.a n = A285682 (n + 1)

end A285682

/-! ## A285682.P8291717986708328951

`A028310(A214971(n+1)+A026352(n))`
-/

namespace A285682.P8291717986708328951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A214971 (n + 1) + A026352 n).toNat

end

end A285682.P8291717986708328951

namespace A285682

/-- `A028310(A214971(n+1)+A026352(n))` -/
def P8291717986708328951.Spec : Prop :=
  ∀ n, P8291717986708328951.a n = A285682 (n + 1)

end A285682

/-! ## A285682.P1216367390621842179

`A023443(A284624(n+1)+A026352(n))`
-/

namespace A285682.P1216367390621842179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A284624 (n + 1) + A026352 n).toNat

end

end A285682.P1216367390621842179

namespace A285682

/-- `A023443(A284624(n+1)+A026352(n))` -/
def P1216367390621842179.Spec : Prop :=
  ∀ n, P1216367390621842179.a n = A285682 (n + 1)

end A285682

/-! ## A285682.P3603795732048186853

`A028310(A276855(n)+A099267(n+1))`
-/

namespace A285682.P3603795732048186853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A276855 n + A099267 (n + 1)).toNat

end

end A285682.P3603795732048186853

namespace A285682

/-- `A028310(A276855(n)+A099267(n+1))` -/
def P3603795732048186853.Spec : Prop :=
  ∀ n, P3603795732048186853.a n = A285682 (n + 1)

end A285682

/-!
# A285683: Positions of 2 in A285680.

The programs for A285683, the canonical program `A285683.P17113377719585639889` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285683 has offset 1).

The definition of A285683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285683.P17113377719585639889

`3*floor((n+1)*ϕ)-(n+1)+3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285683

/-- `3*floor((n+1)*ϕ)-(n+1)+3` -/
def P17113377719585639889.Spec : Prop :=
  ∀ n, P17113377719585639889.a n = A285683 (n + 1)

theorem P17113377719585639889.correct : P17113377719585639889.Spec := by
  intro n
  simp only [A285683, Nat.add_sub_cancel]

end A285683

/-! ## A285683.P1264458753841717320

`∑[C(4, Δ[ceil(n/ϕ)])+1]`
-/

namespace A285683.P1264458753841717320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (f2 (n + 1) - f2 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285683.P1264458753841717320

namespace A285683

/-- `∑[C(4, Δ[ceil(n/ϕ)])+1]` -/
def P1264458753841717320.Spec : Prop :=
  ∀ n, (P1264458753841717320.a n : ℤ) = A285683 (n + 1)

end A285683

/-! ## A285683.P10168285042540394135

`A285679(n+2)`
-/

namespace A285683.P10168285042540394135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285679 (n + 2)

end

end A285683.P10168285042540394135

namespace A285683

/-- `A285679(n+2)` -/
def P10168285042540394135.Spec : Prop :=
  ∀ n, P10168285042540394135.a n = A285683 (n + 1)

theorem P10168285042540394135.correct : P10168285042540394135.Spec := by
  intro n
  simp only [A285683, Nat.add_sub_cancel, A285683.P10168285042540394135.a, A285683.P17113377719585639889.a, A285679, A285679.P13198403238930620714.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285683

/-! ## A285683.P4452739139313805040

`A195170(A004956(n+1))`
-/

namespace A285683.P4452739139313805040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195170 (A004956 (n + 1)).toNat

end

end A285683.P4452739139313805040

namespace A285683

/-- `A195170(A004956(n+1))` -/
def P4452739139313805040.Spec : Prop :=
  ∀ n, P4452739139313805040.a n = A285683 (n + 1)

end A285683

/-! ## A285683.P11694991113457364997

`A195170(A026351(n+1))`
-/

namespace A285683.P11694991113457364997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195170 (A026351 (n + 1)).toNat

end

end A285683.P11694991113457364997

namespace A285683

/-- `A195170(A026351(n+1))` -/
def P11694991113457364997.Spec : Prop :=
  ∀ n, P11694991113457364997.a n = A285683 (n + 1)

end A285683

/-! ## A285683.P6476526194291799099

`A195170(A000201(n+1)+1)`
-/

namespace A285683.P6476526194291799099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195170 (A000201 (n + 1) + 1).toNat

end

end A285683.P6476526194291799099

namespace A285683

/-- `A195170(A000201(n+1)+1)` -/
def P6476526194291799099.Spec : Prop :=
  ∀ n, P6476526194291799099.a n = A285683 (n + 1)

end A285683

/-! ## A285683.P16258717302987218681

`A195170(A007066(n+2)-(n+2))`
-/

namespace A285683.P16258717302987218681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195170 (A007066 (n + 2) - (n + 2 : ℤ)).toNat

end

end A285683.P16258717302987218681

namespace A285683

/-- `A195170(A007066(n+2)-(n+2))` -/
def P16258717302987218681.Spec : Prop :=
  ∀ n, P16258717302987218681.a n = A285683 (n + 1)

end A285683

/-! ## A285683.P14141733633122997216

`A182760(A284625(n+1))`
-/

namespace A285683.P14141733633122997216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182760 (A284625 (n + 1)).toNat

end

end A285683.P14141733633122997216

namespace A285683

/-- `A182760(A284625(n+1))` -/
def P14141733633122997216.Spec : Prop :=
  ∀ n, P14141733633122997216.a n = A285683 (n + 1)

end A285683

/-!
# A285684: Characteristic sequence of the Beatty sequence, A022838, of sqrt(3).

The programs for A285684, the canonical program `A285684.P16948429234941225394` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285684 has offset 1).

The definition of A285684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285684.P13558213097593713615

`char[comp[floor(n*sqrt(3))-1]]`
-/

namespace A285684.P13558213097593713615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋ - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285684.P13558213097593713615

namespace A285684

/-- `char[comp[floor(n*sqrt(3))-1]]` -/
def P13558213097593713615.Spec : Prop :=
  ∀ n, (P13558213097593713615.a n : ℤ) = A285684 (n + 1)

end A285684

/-! ## A285684.P18304644101930679014

`xor(1, Δ[floor((n+1)/sqrt(3))])`
-/

namespace A285684.P18304644101930679014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A285684.P18304644101930679014

namespace A285684

/-- `xor(1, Δ[floor((n+1)/sqrt(3))])` -/
def P18304644101930679014.Spec : Prop :=
  ∀ n, P18304644101930679014.a n = A285684 (n + 1)

end A285684

/-! ## A285684.P17139797905214503090

`and(1, Δ[ceil((n+1)/sqrt(3))]-1)`
-/

namespace A285684.P17139797905214503090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sqrt (3 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n - 1)

end

end A285684.P17139797905214503090

namespace A285684

/-- `and(1, Δ[ceil((n+1)/sqrt(3))]-1)` -/
def P17139797905214503090.Spec : Prop :=
  ∀ n, P17139797905214503090.a n = A285684 (n + 1)

end A285684

/-! ## A285684.P11284232698052885540

`1-char[A198081(n)-2]`
-/

namespace A285684.P11284232698052885540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 n - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285684.P11284232698052885540

namespace A285684

/-- `1-char[A198081(n)-2]` -/
def P11284232698052885540.Spec : Prop :=
  ∀ n, P11284232698052885540.a n = A285684 (n + 1)

end A285684

/-! ## A285684.P6926412684168920848

`floor(n/A026255(n+1))`
-/

namespace A285684.P6926412684168920848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A026255 (n + 1) : ℚ)⌋

end

end A285684.P6926412684168920848

namespace A285684

/-- `floor(n/A026255(n+1))` -/
def P6926412684168920848.Spec : Prop :=
  ∀ n, P6926412684168920848.a n = A285684 (n + 1)

end A285684

/-! ## A285684.P5949506069493033182

`1-char[A022838(n+1)-1]`
-/

namespace A285684.P5949506069493033182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285684.P5949506069493033182

namespace A285684

/-- `1-char[A022838(n+1)-1]` -/
def P5949506069493033182.Spec : Prop :=
  ∀ n, P5949506069493033182.a n = A285684 (n + 1)

end A285684

/-! ## A285684.P8313689356141338943

`A000007(A022881(n+1))`
-/

namespace A285684.P8313689356141338943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A022881 (n + 1)).toNat

end

end A285684.P8313689356141338943

namespace A285684

/-- `A000007(A022881(n+1))` -/
def P8313689356141338943.Spec : Prop :=
  ∀ n, P8313689356141338943.a n = A285684 (n + 1)

end A285684

/-! ## A285684.P16948429234941225394

`A022838(A194979(n+1))-(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A285684

/-- `A022838(A194979(n+1))-(n+1)` -/
def P16948429234941225394.Spec : Prop :=
  ∀ n, P16948429234941225394.a n = A285684 (n + 1)

theorem P16948429234941225394.correct : P16948429234941225394.Spec := by
  intro n
  simp only [A285684, Nat.add_sub_cancel]

end A285684

/-! ## A285684.P15394565669070847744

`A038128(A022838(A194979(n+1))-n)`
-/

namespace A285684.P15394565669070847744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038128 (A022838 (A194979 (n + 1)).toNat - (n : ℤ)).toNat

end

end A285684.P15394565669070847744

namespace A285684

/-- `A038128(A022838(A194979(n+1))-n)` -/
def P15394565669070847744.Spec : Prop :=
  ∀ n, P15394565669070847744.a n = A285684 (n + 1)

end A285684

/-! ## A285684.P16452297695322626745

`A097337(A022838(A194979(n+1))-n)`
-/

namespace A285684.P16452297695322626745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A022838 (A194979 (n + 1)).toNat - (n : ℤ)).toNat

end

end A285684.P16452297695322626745

namespace A285684

/-- `A097337(A022838(A194979(n+1))-n)` -/
def P16452297695322626745.Spec : Prop :=
  ∀ n, P16452297695322626745.a n = A285684 (n + 1)

end A285684

/-! ## A285684.P3344867025637325828

`A171970(A022838(A194979(n+1))-n)`
-/

namespace A285684.P3344867025637325828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (A022838 (A194979 (n + 1)).toNat - (n : ℤ)).toNat

end

end A285684.P3344867025637325828

namespace A285684

/-- `A171970(A022838(A194979(n+1))-n)` -/
def P3344867025637325828.Spec : Prop :=
  ∀ n, P3344867025637325828.a n = A285684 (n + 1)

end A285684

/-! ## A285684.P2918668572344069169

`A182787(A022838(A194979(n+1))-n)`
-/

namespace A285684.P2918668572344069169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182787 (A022838 (A194979 (n + 1)).toNat - (n : ℤ)).toNat

end

end A285684.P2918668572344069169

namespace A285684

/-- `A182787(A022838(A194979(n+1))-n)` -/
def P2918668572344069169.Spec : Prop :=
  ∀ n, P2918668572344069169.a n = A285684 (n + 1)

end A285684

/-! ## A285684.P7755393055076687355

`A258212(A022838(A194979(n+1))-n)`
-/

namespace A285684.P7755393055076687355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258212 (A022838 (A194979 (n + 1)).toNat - (n : ℤ)).toNat

end

end A285684.P7755393055076687355

namespace A285684

/-- `A258212(A022838(A194979(n+1))-n)` -/
def P7755393055076687355.Spec : Prop :=
  ∀ n, P7755393055076687355.a n = A285684 (n + 1)

end A285684

/-! ## A285684.P17870774301933198764

`A258241(A022838(A194979(n+1))-n)`
-/

namespace A285684.P17870774301933198764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258241 (A022838 (A194979 (n + 1)).toNat - (n : ℤ)).toNat

end

end A285684.P17870774301933198764

namespace A285684

/-- `A258241(A022838(A194979(n+1))-n)` -/
def P17870774301933198764.Spec : Prop :=
  ∀ n, P17870774301933198764.a n = A285684 (n + 1)

end A285684

/-! ## A285684.P16762407633555448422

`Δ[A183142(n+1)]`
-/

namespace A285684.P16762407633555448422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285684.P16762407633555448422

namespace A285684

/-- `Δ[A183142(n+1)]` -/
def P16762407633555448422.Spec : Prop :=
  ∀ n, P16762407633555448422.a n = A285684 (n + 1)

end A285684

/-! ## A285684.P5656994113871806020

`Δ[A195072(n+1)]`
-/

namespace A285684.P5656994113871806020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285684.P5656994113871806020

namespace A285684

/-- `Δ[A195072(n+1)]` -/
def P5656994113871806020.Spec : Prop :=
  ∀ n, P5656994113871806020.a n = A285684 (n + 1)

end A285684

/-! ## A285684.P9726614864246956944

`log2(Δ[A195129(n+1)])`
-/

namespace A285684.P9726614864246956944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A285684.P9726614864246956944

namespace A285684

/-- `log2(Δ[A195129(n+1)])` -/
def P9726614864246956944.Spec : Prop :=
  ∀ n, P9726614864246956944.a n = (A285684 (n + 1) : ℝ)

end A285684

/-! ## A285684.P7584294044308212744

`1-Δ[A097337(n+1)]`
-/

namespace A285684.P7584294044308212744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A285684.P7584294044308212744

namespace A285684

/-- `1-Δ[A097337(n+1)]` -/
def P7584294044308212744.Spec : Prop :=
  ∀ n, P7584294044308212744.a n = A285684 (n + 1)

end A285684

/-! ## A285684.P1546976198615267161

`1-Δ[A194979(n+1)]`
-/

namespace A285684.P1546976198615267161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A285684.P1546976198615267161

namespace A285684

/-- `1-Δ[A194979(n+1)]` -/
def P1546976198615267161.Spec : Prop :=
  ∀ n, P1546976198615267161.a n = A285684 (n + 1)

end A285684

/-!
# A285685: Characteristic sequence of the Beatty sequence, A022839, of sqrt(5).

The programs for A285685, the canonical program `A285685.P3846572479936880170` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285685 has offset 1).

The definition of A285685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285685.P3846572479936880170

`Δ[floor((n+1)/sqrt(5))]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285685

/-- `Δ[floor((n+1)/sqrt(5))]` -/
def P3846572479936880170.Spec : Prop :=
  ∀ n, P3846572479936880170.a n = A285685 (n + 1)

theorem P3846572479936880170.correct : P3846572479936880170.Spec := by
  intro n
  simp only [A285685, Nat.add_sub_cancel]

end A285685

/-! ## A285685.P5857195022368300516

`dr(Δ[ceil((n+1)/sqrt(5))])`
-/

namespace A285685.P5857195022368300516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sqrt (5 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A285685.P5857195022368300516

namespace A285685

/-- `dr(Δ[ceil((n+1)/sqrt(5))])` -/
def P5857195022368300516.Spec : Prop :=
  ∀ n, (P5857195022368300516.a n : ℤ) = A285685 (n + 1)

end A285685

/-! ## A285685.P14514631268694344068

`char[A190511(n+1)]`
-/

namespace A285685.P14514631268694344068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285685.P14514631268694344068

namespace A285685

/-- `char[A190511(n+1)]` -/
def P14514631268694344068.Spec : Prop :=
  ∀ n, (P14514631268694344068.a n : ℤ) = A285685 (n + 1)

end A285685

/-! ## A285685.P3519944286783596474

`char[A198082(n)-2]`
-/

namespace A285685.P3519944286783596474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285685.P3519944286783596474

namespace A285685

/-- `char[A198082(n)-2]` -/
def P3519944286783596474.Spec : Prop :=
  ∀ n, (P3519944286783596474.a n : ℤ) = A285685 (n + 1)

end A285685

/-! ## A285685.P17920655501199674419

`char[A022839(n+1)-1]`
-/

namespace A285685.P17920655501199674419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285685.P17920655501199674419

namespace A285685

/-- `char[A022839(n+1)-1]` -/
def P17920655501199674419.Spec : Prop :=
  ∀ n, (P17920655501199674419.a n : ℤ) = A285685 (n + 1)

end A285685

/-! ## A285685.P14274088831709377081

`floor(n/A026262(n+1))`
-/

namespace A285685.P14274088831709377081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A026262 (n + 1) : ℚ)⌋

end

end A285685.P14274088831709377081

namespace A285685

/-- `floor(n/A026262(n+1))` -/
def P14274088831709377081.Spec : Prop :=
  ∀ n, P14274088831709377081.a n = A285685 (n + 1)

end A285685

/-! ## A285685.P5253665730907326261

`char[A001961(n+1)+n]`
-/

namespace A285685.P5253665730907326261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285685.P5253665730907326261

namespace A285685

/-- `char[A001961(n+1)+n]` -/
def P5253665730907326261.Spec : Prop :=
  ∀ n, (P5253665730907326261.a n : ℤ) = A285685 (n + 1)

end A285685

/-! ## A285685.P4831231854658238106

`char[A005206(2*n+1)+n]`
-/

namespace A285685.P4831231854658238106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 * n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285685.P4831231854658238106

namespace A285685

/-- `char[A005206(2*n+1)+n]` -/
def P4831231854658238106.Spec : Prop :=
  ∀ n, (P4831231854658238106.a n : ℤ) = A285685 (n + 1)

end A285685

/-! ## A285685.P18168123469887480155

`char[A026273(2*n+1)-n]`
-/

namespace A285685.P18168123469887480155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026273 (2 * n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285685.P18168123469887480155

namespace A285685

/-- `char[A026273(2*n+1)-n]` -/
def P18168123469887480155.Spec : Prop :=
  ∀ n, (P18168123469887480155.a n : ℤ) = A285685 (n + 1)

end A285685

/-! ## A285685.P1628393176367670281

`char[A003622(2*(n+1))-A008486(n+1)]`
-/

namespace A285685.P1628393176367670281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (2 * (n + 1)) - A008486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285685.P1628393176367670281

namespace A285685

/-- `char[A003622(2*(n+1))-A008486(n+1)]` -/
def P1628393176367670281.Spec : Prop :=
  ∀ n, (P1628393176367670281.a n : ℤ) = A285685 (n + 1)

end A285685

/-! ## A285685.P14973275108426623337

`Δ[A190506(n+1)]-3`
-/

namespace A285685.P14973275108426623337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A285685.P14973275108426623337

namespace A285685

/-- `Δ[A190506(n+1)]-3` -/
def P14973275108426623337.Spec : Prop :=
  ∀ n, P14973275108426623337.a n = A285685 (n + 1)

end A285685

/-! ## A285685.P18031229313335088694

`A194964(n+2)-A194964(n+1)`
-/

namespace A285685.P18031229313335088694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (n + 2) - A194964 (n + 1)

end

end A285685.P18031229313335088694

namespace A285685

/-- `A194964(n+2)-A194964(n+1)` -/
def P18031229313335088694.Spec : Prop :=
  ∀ n, P18031229313335088694.a n = A285685 (n + 1)

theorem P18031229313335088694.correct : P18031229313335088694.Spec := by
  intro n
  simp only [A285685, Nat.add_sub_cancel, A285685.P18031229313335088694.a, A285685.P3846572479936880170.f1, A285685.P3846572479936880170.a, A194964, A194964.P10846368277780127856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A285685

/-! ## A285685.P10193344921354822389

`floor(log(A309198(2*n)))`
-/

namespace A285685.P10193344921354822389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A309198 (2 * n) : ℝ)⌋

end

end A285685.P10193344921354822389

namespace A285685

/-- `floor(log(A309198(2*n)))` -/
def P10193344921354822389.Spec : Prop :=
  ∀ n, P10193344921354822389.a n = A285685 (n + 1)

end A285685

/-! ## A285685.P9411054013629253366

`A188257(A187951(n+1))`
-/

namespace A285685.P9411054013629253366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188257 (A187951 (n + 1)).toNat

end

end A285685.P9411054013629253366

namespace A285685

/-- `A188257(A187951(n+1))` -/
def P9411054013629253366.Spec : Prop :=
  ∀ n, P9411054013629253366.a n = A285685 (n + 1)

end A285685

/-! ## A285685.P1872720807855538990

`A188260(A188258(n+1))`
-/

namespace A285685.P1872720807855538990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188260 (A188258 (n + 1)).toNat

end

end A285685.P1872720807855538990

namespace A285685

/-- `A188260(A188258(n+1))` -/
def P1872720807855538990.Spec : Prop :=
  ∀ n, P1872720807855538990.a n = A285685 (n + 1)

end A285685

/-! ## A285685.P17640803956041903453

`A188257(A188258(n+1)+1)`
-/

namespace A285685.P17640803956041903453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188257 (A188258 (n + 1) + 1).toNat

end

end A285685.P17640803956041903453

namespace A285685

/-- `A188257(A188258(n+1)+1)` -/
def P17640803956041903453.Spec : Prop :=
  ∀ n, P17640803956041903453.a n = A285685 (n + 1)

end A285685

/-! ## A285685.P12356356510376655075

`A188189(A188190(n+2)+1)`
-/

namespace A285685.P12356356510376655075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188189 (A188190 (n + 2) + 1).toNat

end

end A285685.P12356356510376655075

namespace A285685

/-- `A188189(A188190(n+2)+1)` -/
def P12356356510376655075.Spec : Prop :=
  ∀ n, P12356356510376655075.a n = A285685 (n + 1)

end A285685

/-! ## A285685.P4049698372650940397

`A287772(2*(n+1))`
-/

namespace A285685.P4049698372650940397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287772 (2 * (n + 1))

end

end A285685.P4049698372650940397

namespace A285685

/-- `A287772(2*(n+1))` -/
def P4049698372650940397.Spec : Prop :=
  ∀ n, P4049698372650940397.a n = A285685 (n + 1)

end A285685

/-! ## A285685.P14818072642185811297

`1-A383422(Δ[n²])`
-/

namespace A285685.P14818072642185811297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A383422 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285685.P14818072642185811297

namespace A285685

/-- `1-A383422(Δ[n²])` -/
def P14818072642185811297.Spec : Prop :=
  ∀ n, P14818072642185811297.a n = A285685 (n + 1)

end A285685

/-!
# A285686: Characteristic sequence of the Beatty sequence, A022840, of sqrt(6).

The programs for A285686, the canonical program `A285686.P9059628961328013073` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285686 has offset 1).

The definition of A285686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285686.P9059628961328013073

`Δ[floor((n+1)/sqrt(6))]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285686

/-- `Δ[floor((n+1)/sqrt(6))]` -/
def P9059628961328013073.Spec : Prop :=
  ∀ n, P9059628961328013073.a n = A285686 (n + 1)

theorem P9059628961328013073.correct : P9059628961328013073.Spec := by
  intro n
  simp only [A285686, Nat.add_sub_cancel]

end A285686

/-! ## A285686.P4059558722784128478

`dr(Δ[ceil((n+1)/sqrt(6))])`
-/

namespace A285686.P4059558722784128478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sqrt (6 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A285686.P4059558722784128478

namespace A285686

/-- `dr(Δ[ceil((n+1)/sqrt(6))])` -/
def P4059558722784128478.Spec : Prop :=
  ∀ n, (P4059558722784128478.a n : ℤ) = A285686 (n + 1)

end A285686

/-! ## A285686.P3816301926998758205

`char[A198083(n)-2]`
-/

namespace A285686.P3816301926998758205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198083 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285686.P3816301926998758205

namespace A285686

/-- `char[A198083(n)-2]` -/
def P3816301926998758205.Spec : Prop :=
  ∀ n, (P3816301926998758205.a n : ℤ) = A285686 (n + 1)

end A285686

/-! ## A285686.P5244223406985009732

`char[A022840(n+1)-1]`
-/

namespace A285686.P5244223406985009732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285686.P5244223406985009732

namespace A285686

/-- `char[A022840(n+1)-1]` -/
def P5244223406985009732.Spec : Prop :=
  ∀ n, (P5244223406985009732.a n : ℤ) = A285686 (n + 1)

end A285686

/-! ## A285686.P14603312072262819307

`char[A194145(n+1)+n]`
-/

namespace A285686.P14603312072262819307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194145 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285686.P14603312072262819307

namespace A285686

/-- `char[A194145(n+1)+n]` -/
def P14603312072262819307.Spec : Prop :=
  ∀ n, (P14603312072262819307.a n : ℤ) = A285686 (n + 1)

end A285686

/-! ## A285686.P14967684657722625054

`char[comp[A138235(n+1)-1]]`
-/

namespace A285686.P14967684657722625054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138235 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285686.P14967684657722625054

namespace A285686

/-- `char[comp[A138235(n+1)-1]]` -/
def P14967684657722625054.Spec : Prop :=
  ∀ n, (P14967684657722625054.a n : ℤ) = A285686 (n + 1)

end A285686

/-! ## A285686.P4172853632358737909

`char[A277644(2*(n+1))-1]`
-/

namespace A285686.P4172853632358737909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (2 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285686.P4172853632358737909

namespace A285686

/-- `char[A277644(2*(n+1))-1]` -/
def P4172853632358737909.Spec : Prop :=
  ∀ n, (P4172853632358737909.a n : ℤ) = A285686 (n + 1)

end A285686

/-! ## A285686.P7384695147383681561

`A194986(n+2)-A194986(n+1)`
-/

namespace A285686.P7384695147383681561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194986 (n + 2) - A194986 (n + 1)

end

end A285686.P7384695147383681561

namespace A285686

/-- `A194986(n+2)-A194986(n+1)` -/
def P7384695147383681561.Spec : Prop :=
  ∀ n, P7384695147383681561.a n = A285686 (n + 1)

theorem P7384695147383681561.correct : P7384695147383681561.Spec := by
  intro n
  simp only [A285686, Nat.add_sub_cancel, A285686.P7384695147383681561.a, A285686.P9059628961328013073.f1, A285686.P9059628961328013073.a, A194986, A194986.P2155819097948204991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A285686

/-! ## A285686.P14106084072339688965

`A172476(n+2)-A172476(n+1)`
-/

namespace A285686.P14106084072339688965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (n + 2) - A172476 (n + 1)

end

end A285686.P14106084072339688965

namespace A285686

/-- `A172476(n+2)-A172476(n+1)` -/
def P14106084072339688965.Spec : Prop :=
  ∀ n, P14106084072339688965.a n = A285686 (n + 1)

theorem P14106084072339688965.correct : P14106084072339688965.Spec := by
  intro n
  simp only [A285686, Nat.add_sub_cancel, A285686.P14106084072339688965.a, A285686.P9059628961328013073.f1, A285686.P9059628961328013073.a, A172476, A172476.P6456394534622672845.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A285686

/-! ## A285686.P8476245877122933261

`A303591(A370132(n+1))`
-/

namespace A285686.P8476245877122933261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303591 (A370132 (n + 1)).toNat

end

end A285686.P8476245877122933261

namespace A285686

/-- `A303591(A370132(n+1))` -/
def P8476245877122933261.Spec : Prop :=
  ∀ n, P8476245877122933261.a n = A285686 (n + 1)

end A285686

/-!
# A285689: a(1) = 2; a(n + 1) = smallest prime > a(n) such that a(n + 1) - a(n) is the product of four primes.

The programs for A285689, there is no canonical definition to state claims against.
-/

/-! ## A285689.P11061179593281191824

`p?[A112063(n+1)%A050565(n+1)]`
-/

namespace A285689.P11061179593281191824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112063 (n + 1)) (A050565 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285689.P11061179593281191824

/-! ## A285689.P4788267755894907916

`A047267(A188158(2*(n+2)))%A353584(3*n+4)`
-/

namespace A285689.P4788267755894907916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047267 (A188158 (2 * (n + 2))).toNat) (A353584 (3 * n + 4))

end

end A285689.P4788267755894907916

/-! ## A285689.P9575272255313482309

`p?[A112063(n+1)%A112834(n)]`
-/

namespace A285689.P9575272255313482309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112063 (n + 1)) (A112834 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285689.P9575272255313482309

/-!
# A285697: Positions of 1 in A288741; complement of A288742.

The programs for A285697, there is no canonical definition to state claims against.
-/

/-! ## A285697.P13581454094681183426

`filter[n+1, A288741(#)]`
-/

namespace A285697.P13581454094681183426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288741 (f1 j) = 1) n)

end

end A285697.P13581454094681183426

/-! ## A285697.P8106219188888907581

`eq[1, A288741(n+1)]+1`
-/

namespace A285697.P8106219188888907581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288741 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285697.P8106219188888907581

/-! ## A285697.P11797241137346440621

`eq[1, A288741(n^floor(atan(n)))]`
-/

namespace A285697.P11797241137346440621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288741 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285697.P11797241137346440621

/-! ## A285697.P8900526006719776717

`record[(n+2)*A288741(n+2)]`
-/

namespace A285697.P8900526006719776717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A288741 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285697.P8900526006719776717

/-! ## A285697.P14212351349038312011

`A020725(eq[1, A288741(n+1)])`
-/

namespace A285697.P14212351349038312011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285697.P14212351349038312011

/-! ## A285697.P9538524975011584133

`eq[char[A288742(n+1)], A000038(n)]`
-/

namespace A285697.P9538524975011584133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288742 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285697.P9538524975011584133

/-! ## A285697.P8491256341028510058

`eq[1, A288741(A065033(2*n))]`
-/

namespace A285697.P8491256341028510058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288741 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285697.P8491256341028510058

/-!
# A285698: Number of super perfect rhythmic tilings of [0,4n-1] with quadruples.

The programs for A285698, there is no canonical definition to state claims against.
-/

/-! ## A285698.P6871048740202391788

`A130483(A284757(n+1))`
-/

namespace A285698.P6871048740202391788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130483 (A284757 (n + 1)).toNat

end

end A285698.P6871048740202391788

/-! ## A285698.P3138466663417870405

`A000174(n)*A284757(n+1)`
-/

namespace A285698.P3138466663417870405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n * A284757 (n + 1)

end

end A285698.P3138466663417870405

/-! ## A285698.P16299263815748613910

`A002636(n)*A284757(n+1)`
-/

namespace A285698.P16299263815748613910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n * A284757 (n + 1)

end

end A285698.P16299263815748613910

/-! ## A285698.P17028369275242409880

`A008617(n)*A284757(n+1)`
-/

namespace A285698.P17028369275242409880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 n * A284757 (n + 1)

end

end A285698.P17028369275242409880

/-! ## A285698.P9797152241334602138

`A008676(n)*A284757(n+1)`
-/

namespace A285698.P9797152241334602138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 n * A284757 (n + 1)

end

end A285698.P9797152241334602138

/-!
# A285699: a(1) = 1; for n > 1, a(n) = n - A079277(n).

The programs for A285699, there is no canonical definition to state claims against.
-/

/-! ## A285699.P7187498140868015884

`Δ[A002088(n)]-A285709(n+1)`
-/

namespace A285699.P7187498140868015884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A285709 (n + 1)

end

end A285699.P7187498140868015884

/-! ## A285699.P1015126758347168667

`Δ[A005728(n)]-A285709(n+1)`
-/

namespace A285699.P1015126758347168667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A285709 (n + 1)

end

end A285699.P1015126758347168667

/-! ## A285699.P17084630499231148983

`A000010(n+1)-A285709(n+1)`
-/

namespace A285699.P17084630499231148983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A285709 (n + 1)

end

end A285699.P17084630499231148983

/-! ## A285699.P4450215589654928737

`sqrt(A127473(n+1))-A285709(n+1)`
-/

namespace A285699.P4450215589654928737
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) - (A285709 (n + 1) : ℝ)

end

end A285699.P4450215589654928737

/-! ## A285699.P14703594400486990871

`A039649(n+1)-(A285709(n+1)+1)`
-/

namespace A285699.P14703594400486990871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A285709 (n + 1) + 1)

end

end A285699.P14703594400486990871

/-! ## A285699.P4218768888847923084

`A109606(n+1)+1-A285709(n+1)`
-/

namespace A285699.P4218768888847923084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A285709 (n + 1))

end

end A285699.P4218768888847923084

/-! ## A285699.P7481584641930074397

`n+1-(A285709(n+1)+A051953(n+1))`
-/

namespace A285699.P7481584641930074397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A285709 (n + 1) + A051953 (n + 1))

end

end A285699.P7481584641930074397

/-! ## A285699.P2192638363622958100

`A002088(n+1)-(A285709(n+1)+A002088(n))`
-/

namespace A285699.P2192638363622958100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) - (A285709 (n + 1) + A002088 n)

end

end A285699.P2192638363622958100

/-! ## A285699.P11517620883766049357

`A300821(n+1)+A300822(n+1)-A285709(n+1)`
-/

namespace A285699.P11517620883766049357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300821 (n + 1) + (A300822 (n + 1) - A285709 (n + 1))

end

end A285699.P11517620883766049357

/-! ## A285699.P7875851151279161423

`A046073(n+1)*A060594(n+1)-A285709(n+1)`
-/

namespace A285699.P7875851151279161423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (n + 1) * A060594 (n + 1) - A285709 (n + 1)

end

end A285699.P7875851151279161423

/-! ## A285699.P675105067159471688

`A140434(n+1)/A020639(A140434(n+1))-A285709(n+1)`
-/

namespace A285699.P675105067159471688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140434 (n + 1) : ℚ) / (A020639 (A140434 (n + 1)).toNat : ℚ) - (A285709 (n + 1) : ℚ)

end

end A285699.P675105067159471688

/-! ## A285699.P8545526574354933985

`Δ[A049632(n)-A049643(n)]-A285709(n+1)`
-/

namespace A285699.P8545526574354933985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n - A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A285709 (n + 1)

end

end A285699.P8545526574354933985

/-! ## A285699.P13566346322291076396

`A049633(n)-(A285709(n+1)+A049632(n))`
-/

namespace A285699.P13566346322291076396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049633 n - (A285709 (n + 1) + A049632 n)

end

end A285699.P13566346322291076396

/-! ## A285699.P4337214604066695999

`A164296(n+1)+A164297(n+1)-A285709(n+1)`
-/

namespace A285699.P4337214604066695999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164296 (n + 1) + (A164297 (n + 1) - A285709 (n + 1))

end

end A285699.P4337214604066695999

/-! ## A285699.P11820909755141733920

`A054522(A000124(n)+n)-A285709(n+1)`
-/

namespace A285699.P11820909755141733920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (A000124 n + (n : ℤ)).toNat - A285709 (n + 1)

end

end A285699.P11820909755141733920

/-! ## A285699.P7484707034322001673

`A054522(A007401(A000124(n)))-A285709(n+1)`
-/

namespace A285699.P7484707034322001673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (A007401 (A000124 n).toNat).toNat - A285709 (n + 1)

end

end A285699.P7484707034322001673

