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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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

/-!
# A096600: Numbers such that in decimal representation all permutations of digits are nonsquares.

The programs for A096600, there is no canonical definition to state claims against.
-/

/-! ## A096600.P818201768383204632

`eq[0, A062892(10*n)]`
-/

namespace A096600.P818201768383204632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096600.P818201768383204632

/-! ## A096600.P16206762631186975277

`lt[A014105(n*A062892(10*n)), n]`
-/

namespace A096600.P16206762631186975277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 ((n : ℤ) * A062892 (10 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A096600.P16206762631186975277

/-! ## A096600.P551811552542441680

`lt[n*A062892(10*n), A106616(n)]`
-/

namespace A096600.P551811552542441680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062892 (10 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096600.P551811552542441680

/-! ## A096600.P10660051695764629704

`lt[n*A062892(10*n), A130130(n)]`
-/

namespace A096600.P10660051695764629704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062892 (10 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096600.P10660051695764629704

/-! ## A096600.P13424388579232570798

`lt[A152743(n*A062892(10*n)), n]`
-/

namespace A096600.P13424388579232570798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152743 ((n : ℤ) * A062892 (10 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A096600.P13424388579232570798

/-! ## A096600.P7782499663097560149

`lt[n*A062892(10*n), A293229(n)]`
-/

namespace A096600.P7782499663097560149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062892 (10 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096600.P7782499663097560149

/-! ## A096600.P17238342717686927751

`lt[A008619(n*A062892(10*n))², n]`
-/

namespace A096600.P17238342717686927751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) * A062892 (10 * n)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A096600.P17238342717686927751

/-! ## A096600.P6761315120562966465

`lt[(A062892(10*n)*A333692(n))², n]`
-/

namespace A096600.P6761315120562966465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062892 (10 * n) * A333692 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A096600.P6761315120562966465

/-! ## A096600.P12122638055776879991

`lt[(A007373(n+1)*A062892(10*n))², n]`
-/

namespace A096600.P12122638055776879991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007373 (n + 1) * A062892 (10 * n)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A096600.P12122638055776879991

/-! ## A096600.P8155617749043883014

`lt[(A062892(10*n)*A064945(n+1))², n]`
-/

namespace A096600.P8155617749043883014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062892 (10 * n) * A064945 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A096600.P8155617749043883014

/-! ## A096600.P2056095717222474480

`eq[A062892(n), A175372(A045542(n+1))]`
-/

namespace A096600.P2056095717222474480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 (A045542 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096600.P2056095717222474480

/-!
# A096601: Triangle (read by rows) where the number of row entries increases by steps of 2 and the entries are stacked in a rectangular fashion. The end entries are set to 1. Rest of entries are set to the sum of the entry directly above in the previous row plus the entry (if present) in the previous row that is either to the left (if the current row number is even) or to the right (if odd).

The programs for A096601, there is no canonical definition to state claims against.
-/

/-! ## A096601.P10424641790326655646

`gcd(A103181(A329820(n)), A103183(n+1))`
-/

namespace A096601.P10424641790326655646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103181 (A329820 n).toNat) (A103183 (n + 1))

end

end A096601.P10424641790326655646

/-!
# A096603: Numbers occurring twice in A096607.

The programs for A096603, there is no canonical definition to state claims against.
-/

/-! ## A096603.P12897000256787136044

`record[abs(xor(n, n+1)-n)]`
-/

namespace A096603.P12897000256787136044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.xor n (n + 1) : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096603.P12897000256787136044

/-! ## A096603.P14546099789517980774

`abs(2*n-char[comp[2^n]])`
-/

namespace A096603.P14546099789517980774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)|

end

end A096603.P14546099789517980774

/-! ## A096603.P13332587391845685820

`sqrt(record[(xor(n, n+1)-n)²])`
-/

namespace A096603.P13332587391845685820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor n (n + 1) : ℤ) - (n : ℤ)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A096603.P13332587391845685820

/-! ## A096603.P3018374540020574158

`sqrt(record[(xor(n, n+1)-n)^2])`
-/

namespace A096603.P3018374540020574158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor n (n + 1) : ℤ) - (n : ℤ)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A096603.P3018374540020574158

/-! ## A096603.P5770263290988387277

`record[root((xor(n, n+1)-n)², 2)]`
-/

namespace A096603.P5770263290988387277
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((Nat.xor n (n + 1) : ℤ) - (n : ℤ)) ^ 2 : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096603.P5770263290988387277

/-! ## A096603.P11207749367103212449

`∏{p}[n, val(#, 2)]+comp[2*(n+1)]`
-/

namespace A096603.P11207749367103212449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 2 + SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

end

end A096603.P11207749367103212449

/-! ## A096603.P15765188754289628574

`floor((a(floor(n/2))+n)/2+n)` with `a(0)=1`
-/

namespace A096603.P15765188754289628574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ) : ℚ) / 2 + (n : ℚ)⌋

end

end A096603.P15765188754289628574

/-! ## A096603.P6166747911442865176

`2*n+1-gcd(2, C(a(n-1), n))` with `a(0)=1`
-/

namespace A096603.P6166747911442865176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1 : ℤ) - (Nat.gcd 2 (Nat.choose (a (n - 1)).toNat n) : ℤ)

end

end A096603.P6166747911442865176

/-! ## A096603.P936495917912305938

`floor(2*n-and(n, n-1)/a(n-1))` with `a(0)=1`
-/

namespace A096603.P936495917912305938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(2 * n : ℚ) - (Int.land (n : ℤ) ((n : ℤ) - 1) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A096603.P936495917912305938

/-! ## A096603.P17964049432923266274

`Δ[n²]-a(A006530(n)%2)` with `a(0)=1, a(1)=2`
-/

namespace A096603.P17964049432923266274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - a (Int.tmod (A006530 n) 2).toNat

end

end A096603.P17964049432923266274

/-!
# A096604: Numbers that appear at most once in A096607.

The programs for A096604, there is no canonical definition to state claims against.
-/

/-! ## A096604.P3773340581383149585

`2*(n+2)-Δ[ceil(log2(n+2))]`
-/

namespace A096604.P3773340581383149585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - (f1 (n + 1) - f1 n)

end

end A096604.P3773340581383149585

/-! ## A096604.P13348392364252633994

`comp[n*(n-a(floor(n/2)))%2+1]` with `a(0)=2`
-/

namespace A096604.P13348392364252633994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℤ) * Int.tmod ((n : ℤ) - f1 ⌊(n : ℚ) / 2⌋.toNat) 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A096604.P13348392364252633994

/-! ## A096604.P9170223083575773783

`ceil(log2(A325105(2*(n+2))))`
-/

namespace A096604.P9170223083575773783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A325105 (2 * (n + 2)) : ℝ)⌉

end

end A096604.P9170223083575773783

/-! ## A096604.P3984040635082536234

`abs(1-A115510(2*n+5))`
-/

namespace A096604.P3984040635082536234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A115510 (2 * n + 5)|

end

end A096604.P3984040635082536234

/-! ## A096604.P18008051536061295955

`record[A371263(3*(n+1))+1]`
-/

namespace A096604.P18008051536061295955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371263 (3 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096604.P18008051536061295955

/-! ## A096604.P6587049223368786549

`Δ[A028387(n)-floor(log2(n+1))]`
-/

namespace A096604.P6587049223368786549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n - (Nat.log 2 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096604.P6587049223368786549

/-! ## A096604.P4149068306748477100

`∑[Δ[A006530(n+1)]%2+2]`
-/

namespace A096604.P4149068306748477100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096604.P4149068306748477100

/-! ## A096604.P16139070075917328038

`record[A043529(n+3)+xor(1, n)+1]`
-/

namespace A096604.P16139070075917328038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (n + 3) + (Nat.xor 1 n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096604.P16139070075917328038

/-! ## A096604.P10012117315219372377

`Δ[A002378(n+1)-floor(log2(n+1))]`
-/

namespace A096604.P10012117315219372377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) - (Nat.log 2 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096604.P10012117315219372377

/-! ## A096604.P6412100895035404496

`Δ[A002620(2*n+3)-floor(log2(n+1))]`
-/

namespace A096604.P6412100895035404496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * n + 3) - (Nat.log 2 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096604.P6412100895035404496

/-!
# A096605: a(n) = floor((floor(n/2) + a(floor(n/2)))/2), a(1) = 1.

The programs for A096605, the canonical program `A096605.P16508145253981041276` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096605 has offset 1).

The definition of A096605 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((floor((n+1)/2)+a(floor((n+1)/2)-1))/2)` (program `A096605.P16508145253981041276`, by `A096605.P16508145253981041276.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096605.P16508145253981041276

`floor((floor((n+1)/2)+a(floor((n+1)/2)-1))/2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096605

/-- `floor((floor((n+1)/2)+a(floor((n+1)/2)-1))/2)` -/
def P16508145253981041276.Spec : Prop :=
  ∀ n, P16508145253981041276.a n = A096605 (n + 1)

theorem P16508145253981041276.correct : P16508145253981041276.Spec := by
  intro n
  simp only [A096605, Nat.add_sub_cancel]

end A096605

/-! ## A096605.P6853506264240162189

`A096607(∑[(C(3, n)+n)%2])`
-/

namespace A096605.P6853506264240162189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose 3 n + n) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096607 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096605.P6853506264240162189

namespace A096605

/-- `A096607(∑[(C(3, n)+n)%2])` -/
def P6853506264240162189.Spec : Prop :=
  ∀ n, P6853506264240162189.a n = A096605 (n + 1)

end A096605

/-! ## A096605.P4040224312357446657

`A096607(ceil(n/2)+floor(acot(n)))`
-/

namespace A096605.P4040224312357446657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096607 (⌈(n : ℚ) / 2⌉ + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A096605.P4040224312357446657

namespace A096605

/-- `A096607(ceil(n/2)+floor(acot(n)))` -/
def P4040224312357446657.Spec : Prop :=
  ∀ n, P4040224312357446657.a n = A096605 (n + 1)

end A096605

/-! ## A096605.P15391371043433765067

`A096607(ceil(n/2)^floor(atan(n)))`
-/

namespace A096605.P15391371043433765067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096607 (SequenceMachineLib.roundAway ((⌈(n : ℚ) / 2⌉ : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A096605.P15391371043433765067

namespace A096605

/-- `A096607(ceil(n/2)^floor(atan(n)))` -/
def P15391371043433765067.Spec : Prop :=
  ∀ n, P15391371043433765067.a n = A096605 (n + 1)

end A096605

/-! ## A096605.P14134231235430293384

`A096607(or(floor(acot(n)), ceil(n/2)))`
-/

namespace A096605.P14134231235430293384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096607 (Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ ⌈(n : ℚ) / 2⌉).toNat

end

end A096605.P14134231235430293384

namespace A096605

/-- `A096607(or(floor(acot(n)), ceil(n/2)))` -/
def P14134231235430293384.Spec : Prop :=
  ∀ n, P14134231235430293384.a n = A096605 (n + 1)

end A096605

/-! ## A096605.P7120541874177188777

`A096607(ceil(n/2)^ceil(sin(n)²))`
-/

namespace A096605.P7120541874177188777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096607 (SequenceMachineLib.roundAway ((⌈(n : ℚ) / 2⌉ : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A096605.P7120541874177188777

namespace A096605

/-- `A096607(ceil(n/2)^ceil(sin(n)²))` -/
def P7120541874177188777.Spec : Prop :=
  ∀ n, P7120541874177188777.a n = A096605 (n + 1)

end A096605

/-! ## A096605.P9292276896533248455

`A096607(C(ceil(n/2), ceil(sin(n)²)))`
-/

namespace A096605.P9292276896533248455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096607 (Nat.choose ⌈(n : ℚ) / 2⌉.toNat ⌈Real.sin (n : ℝ) ^ 2⌉.toNat)

end

end A096605.P9292276896533248455

namespace A096605

/-- `A096607(C(ceil(n/2), ceil(sin(n)²)))` -/
def P9292276896533248455.Spec : Prop :=
  ∀ n, P9292276896533248455.a n = A096605 (n + 1)

end A096605

/-! ## A096605.P3433576379582541792

`A096607(lcm((-1)^n, round(cosh(log(acot(n))))))`
-/

namespace A096605.P3433576379582541792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096607 (Int.lcm ((-1) ^ n) (SequenceMachineLib.roundAway (Real.cosh (Real.log (SequenceMachineLib.acot (n : ℝ))))))

end

end A096605.P3433576379582541792

namespace A096605

/-- `A096607(lcm((-1)^n, round(cosh(log(acot(n))))))` -/
def P3433576379582541792.Spec : Prop :=
  ∀ n, P3433576379582541792.a n = A096605 (n + 1)

end A096605

/-! ## A096605.P1854436187526337734

`A096607(A065033(n))`
-/

namespace A096605.P1854436187526337734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096607 (A065033 n).toNat

end

end A096605.P1854436187526337734

namespace A096605

/-- `A096607(A065033(n))` -/
def P1854436187526337734.Spec : Prop :=
  ∀ n, P1854436187526337734.a n = A096605 (n + 1)

end A096605

/-! ## A096605.P9674660504742678617

`floor(n/3-A096606(n+1))`
-/

namespace A096605.P9674660504742678617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3 - (A096606 (n + 1) : ℚ)⌋

end

end A096605.P9674660504742678617

namespace A096605

/-- `floor(n/3-A096606(n+1))` -/
def P9674660504742678617.Spec : Prop :=
  ∀ n, P9674660504742678617.a n = A096605 (n + 1)

end A096605

/-!
# A096606: a(n) = A002264(n-1) - A096605(n).

The programs for A096606, the canonical program `A096606.P4049149349087092693` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096606 has offset 1).

The definition of A096606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096606.P4049149349087092693

`A002264(n)-A096605(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A096606

/-- `A002264(n)-A096605(n+1)` -/
def P4049149349087092693.Spec : Prop :=
  ∀ n, P4049149349087092693.a n = A096606 (n + 1)

theorem P4049149349087092693.correct : P4049149349087092693.Spec := by
  intro n
  simp only [A096606, Nat.add_sub_cancel]

end A096606

/-! ## A096606.P18342703786773382872

`floor(n/3)-A096607(∑[(C(3, n)+n)%2])`
-/

namespace A096606.P18342703786773382872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose 3 n + n) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ - A096607 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096606.P18342703786773382872

namespace A096606

/-- `floor(n/3)-A096607(∑[(C(3, n)+n)%2])` -/
def P18342703786773382872.Spec : Prop :=
  ∀ n, P18342703786773382872.a n = A096606 (n + 1)

end A096606

/-! ## A096606.P12897238702038221016

`floor(n/3)-A096607(ceil(n/2)+floor(acot(n)))`
-/

namespace A096606.P12897238702038221016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ - A096607 (⌈(n : ℚ) / 2⌉ + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A096606.P12897238702038221016

namespace A096606

/-- `floor(n/3)-A096607(ceil(n/2)+floor(acot(n)))` -/
def P12897238702038221016.Spec : Prop :=
  ∀ n, P12897238702038221016.a n = A096606 (n + 1)

end A096606

/-! ## A096606.P17226273033697670624

`floor(n/3)-A096607(or(floor(acot(n)), ceil(n/2)))`
-/

namespace A096606.P17226273033697670624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ - A096607 (Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ ⌈(n : ℚ) / 2⌉).toNat

end

end A096606.P17226273033697670624

namespace A096606

/-- `floor(n/3)-A096607(or(floor(acot(n)), ceil(n/2)))` -/
def P17226273033697670624.Spec : Prop :=
  ∀ n, P17226273033697670624.a n = A096606 (n + 1)

end A096606

/-! ## A096606.P2932842578667315907

`floor(n/3)-A096607(ceil(n/2)^ceil(sin(n)²))`
-/

namespace A096606.P2932842578667315907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ - A096607 (SequenceMachineLib.roundAway ((⌈(n : ℚ) / 2⌉ : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A096606.P2932842578667315907

namespace A096606

/-- `floor(n/3)-A096607(ceil(n/2)^ceil(sin(n)²))` -/
def P2932842578667315907.Spec : Prop :=
  ∀ n, P2932842578667315907.a n = A096606 (n + 1)

end A096606

/-! ## A096606.P8922047376773095439

`floor(n/3)-A096607(C(ceil(n/2), ceil(sin(n)²)))`
-/

namespace A096606.P8922047376773095439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ - A096607 (Nat.choose ⌈(n : ℚ) / 2⌉.toNat ⌈Real.sin (n : ℝ) ^ 2⌉.toNat)

end

end A096606.P8922047376773095439

namespace A096606

/-- `floor(n/3)-A096607(C(ceil(n/2), ceil(sin(n)²)))` -/
def P8922047376773095439.Spec : Prop :=
  ∀ n, P8922047376773095439.a n = A096606 (n + 1)

end A096606

/-! ## A096606.P10740984122073565481

`sqrt(A211547(n))-A096605(n+1)`
-/

namespace A096606.P10740984122073565481
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A211547 n : ℝ) - (A096605 (n + 1) : ℝ)

end

end A096606.P10740984122073565481

namespace A096606

/-- `sqrt(A211547(n))-A096605(n+1)` -/
def P10740984122073565481.Spec : Prop :=
  ∀ n, P10740984122073565481.a n = (A096606 (n + 1) : ℝ)

end A096606

/-! ## A096606.P13362829417273047145

`floor(n/3)-A096607(A065033(n))`
-/

namespace A096606.P13362829417273047145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ - A096607 (A065033 n).toNat

end

end A096606.P13362829417273047145

namespace A096606

/-- `floor(n/3)-A096607(A065033(n))` -/
def P13362829417273047145.Spec : Prop :=
  ∀ n, P13362829417273047145.a n = A096606 (n + 1)

end A096606

/-! ## A096606.P3419198914083367453

`A008620(n)-(A096607(A065033(n))+1)`
-/

namespace A096606.P3419198914083367453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n - (A096607 (A065033 n).toNat + 1)

end

end A096606.P3419198914083367453

namespace A096606

/-- `A008620(n)-(A096607(A065033(n))+1)` -/
def P3419198914083367453.Spec : Prop :=
  ∀ n, P3419198914083367453.a n = A096606 (n + 1)

end A096606

/-!
# A096607: a(n) = A096605(2*n).

The programs for A096607, the canonical program `A096607.P8662738705151568849` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096607 has offset 1).

The definition of A096607 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A096605(2*(n+1))` (program `A096607.P8662738705151568849`, by `A096607.P8662738705151568849.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096607.P8662738705151568849

`A096605(2*(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A096607

/-- `A096605(2*(n+1))` -/
def P8662738705151568849.Spec : Prop :=
  ∀ n, P8662738705151568849.a n = A096607 (n + 1)

theorem P8662738705151568849.correct : P8662738705151568849.Spec := by
  intro n
  simp only [A096607, Nat.add_sub_cancel]

end A096607

/-! ## A096607.P4453774626676686316

`ceil((a(floor((n-1)/2))+n)/2)` with `a(0)=1`
-/

namespace A096607.P4453774626676686316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + (n : ℤ) : ℚ) / 2⌉

end

end A096607.P4453774626676686316

namespace A096607

/-- `ceil((a(floor((n-1)/2))+n)/2)` -/
def P4453774626676686316.Spec : Prop :=
  ∀ n, P4453774626676686316.a n = A096607 (n + 1)

end A096607

/-! ## A096607.P8919642735484482160

`round((a(floor((n-1)/2))+n)/2)` with `a(0)=1`
-/

namespace A096607.P8919642735484482160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + (n : ℤ) : ℚ) / 2)

end

end A096607.P8919642735484482160

namespace A096607

/-- `round((a(floor((n-1)/2))+n)/2)` -/
def P8919642735484482160.Spec : Prop :=
  ∀ n, P8919642735484482160.a n = A096607 (n + 1)

end A096607

/-! ## A096607.P15417201217854834779

`floor((a(floor((n-1)/2))+1+n)/2)` with `a(0)=1`
-/

namespace A096607.P15417201217854834779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + 1 + (n : ℤ) : ℚ) / 2⌋

end

end A096607.P15417201217854834779

namespace A096607

/-- `floor((a(floor((n-1)/2))+1+n)/2)` -/
def P15417201217854834779.Spec : Prop :=
  ∀ n, P15417201217854834779.a n = A096607 (n + 1)

end A096607

/-! ## A096607.P2947780746771242431

`ceil(n/2+a(ceil(n/2)-1)/2)` with `a(0)=1`
-/

namespace A096607.P2947780746771242431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(n : ℚ) / 2 + (a (⌈(n : ℚ) / 2⌉ - 1).toNat : ℚ) / 2⌉

end

end A096607.P2947780746771242431

namespace A096607

/-- `ceil(n/2+a(ceil(n/2)-1)/2)` -/
def P2947780746771242431.Spec : Prop :=
  ∀ n, P2947780746771242431.a n = A096607 (n + 1)

end A096607

/-! ## A096607.P11988213441063118127

`char[floor(∑[3*2^(n-2)])]+round(2*n/3)`
-/

namespace A096607.P11988213441063118127
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

end

end A096607.P11988213441063118127

namespace A096607

/-- `char[floor(∑[3*2^(n-2)])]+round(2*n/3)` -/
def P11988213441063118127.Spec : Prop :=
  ∀ n, P11988213441063118127.a n = A096607 (n + 1)

end A096607

/-! ## A096607.P74907585915663790

`ceil((A096605(n+1)+n)/2)`
-/

namespace A096607.P74907585915663790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A096605 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A096607.P74907585915663790

namespace A096607

/-- `ceil((A096605(n+1)+n)/2)` -/
def P74907585915663790.Spec : Prop :=
  ∀ n, P74907585915663790.a n = A096607 (n + 1)

end A096607

/-! ## A096607.P5114353140265203783

`floor(A128806(n)/(3*n+1))`
-/

namespace A096607.P5114353140265203783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A128806 n : ℚ) / (3 * n + 1 : ℚ)⌋

end

end A096607.P5114353140265203783

namespace A096607

/-- `floor(A128806(n)/(3*n+1))` -/
def P5114353140265203783.Spec : Prop :=
  ∀ n, P5114353140265203783.a n = A096607 (n + 1)

end A096607

/-! ## A096607.P2308730268906559454

`A065033(A096605(n+1)+n)`
-/

namespace A096607.P2308730268906559454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A096605 (n + 1) + (n : ℤ)).toNat

end

end A096607.P2308730268906559454

namespace A096607

/-- `A065033(A096605(n+1)+n)` -/
def P2308730268906559454.Spec : Prop :=
  ∀ n, P2308730268906559454.a n = A096607 (n + 1)

end A096607

/-! ## A096607.P6496305634552907529

`A110654(A096605(n+1)+n)`
-/

namespace A096607.P6496305634552907529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A096605 (n + 1) + (n : ℤ)).toNat

end

end A096607.P6496305634552907529

namespace A096607

/-- `A110654(A096605(n+1)+n)` -/
def P6496305634552907529.Spec : Prop :=
  ∀ n, P6496305634552907529.a n = A096607 (n + 1)

end A096607

/-!
# A096608: Triangle read by rows: T(n,k)=number of Catalan knight paths in right half-plane from (0,0) to (n,k), for 0 <= k <= 2n, n >= 0. (See A096587 for the definition of a Catalan knight.)

The programs for A096608, there is no canonical definition to state claims against.
-/

/-! ## A096608.P17384117695435653667

`A355320(A161983(n))`
-/

namespace A096608.P17384117695435653667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355320 (A161983 n).toNat

end

end A096608.P17384117695435653667

/-! ## A096608.P7662810081146130931

`A355320(2*n-A196199(n))`
-/

namespace A096608.P7662810081146130931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355320 ((2 * n : ℤ) - A196199 n).toNat

end

end A096608.P7662810081146130931

/-! ## A096608.P5712075589807589883

`A355320(n-A196199(n)+n)`
-/

namespace A096608.P5712075589807589883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355320 ((n : ℤ) - A196199 n + (n : ℤ)).toNat

end

end A096608.P5712075589807589883

/-! ## A096608.P7867677389618677918

`A355320(n-(A196199(n)-n))`
-/

namespace A096608.P7867677389618677918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355320 ((n : ℤ) - (A196199 n - (n : ℤ))).toNat

end

end A096608.P7867677389618677918

/-! ## A096608.P4238244123809875698

`A355320(A116942(2*n))`
-/

namespace A096608.P4238244123809875698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355320 (A116942 (2 * n)).toNat

end

end A096608.P4238244123809875698

/-!
# A096609: a(n)=number of Catalan knight paths in right half-plane from (0,0) to (n,0).

The programs for A096609, there is no canonical definition to state claims against.
-/

/-! ## A096609.P10120594210542070633

`A096608(n²)`
-/

namespace A096609.P10120594210542070633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096608 (n ^ 2)

end

end A096609.P10120594210542070633

/-! ## A096609.P8535058303612042699

`and(-1, A096608(A000290(n)))`
-/

namespace A096609.P8535058303612042699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A096608 (A000290 n).toNat)

end

end A096609.P8535058303612042699

/-! ## A096609.P13454643053788581377

`or(A000007(n), A096608(A000290(n)))`
-/

namespace A096609.P13454643053788581377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A096608 (A000290 n).toNat)

end

end A096609.P13454643053788581377

/-! ## A096609.P3971233049735137354

`A096608(A000290(n))+A000007(3*n+3)`
-/

namespace A096609.P3971233049735137354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096608 (A000290 n).toNat + A000007 (3 * n + 3)

end

end A096609.P3971233049735137354

/-! ## A096609.P11643045645408609324

`A019430(2*n+4)*A096608(A000290(n))`
-/

namespace A096609.P11643045645408609324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (2 * n + 4) * A096608 (A000290 n).toNat

end

end A096609.P11643045645408609324

/-! ## A096609.P1640122208668485694

`A292945(A236104(n+1))+A096608(A000290(n))`
-/

namespace A096609.P1640122208668485694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292945 (A236104 (n + 1)).toNat + A096608 (A000290 n).toNat

end

end A096609.P1640122208668485694

/-! ## A096609.P12338636462027420672

`A355320(n*Δ[n²])`
-/

namespace A096609.P12338636462027420672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355320 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A096609.P12338636462027420672

/-!
# A096610: a(n)=number of Catalan knight paths in right half-plane from (0,0) to (n,1).

The programs for A096610, there is no canonical definition to state claims against.
-/

/-! ## A096610.P5966225277209131920

`A096608(n²+1)`
-/

namespace A096610.P5966225277209131920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096608 (n ^ 2 + 1)

end

end A096610.P5966225277209131920

/-! ## A096610.P16376630132069623977

`and(-1, A096608(A002522(n)))`
-/

namespace A096610.P16376630132069623977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A096608 (A002522 n).toNat)

end

end A096610.P16376630132069623977

/-! ## A096610.P2338769056654251225

`A096608(A002522(n))/(A143721(3*(n+1))+1)`
-/

namespace A096610.P2338769056654251225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096608 (A002522 n).toNat : ℚ) / (A143721 (3 * (n + 1)) + 1 : ℚ)

end

end A096610.P2338769056654251225

/-! ## A096610.P2683507496749578191

`A143721(A213064(n+4))+A096608(A002522(n))`
-/

namespace A096610.P2683507496749578191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 (A213064 (n + 4)).toNat + A096608 (A002522 n).toNat

end

end A096610.P2683507496749578191

/-! ## A096610.P8378046200670665465

`A096608(A002522(n))/A140211(A061142(n+4))`
-/

namespace A096610.P8378046200670665465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096608 (A002522 n).toNat : ℚ) / (A140211 (A061142 (n + 4)).toNat : ℚ)

end

end A096610.P8378046200670665465

/-! ## A096610.P7043130870472942617

`A096608(A002522(n))/A001065(A151800(3*n))`
-/

namespace A096610.P7043130870472942617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096608 (A002522 n).toNat : ℚ) / (A001065 (A151800 (3 * n)).toNat : ℚ)

end

end A096610.P7043130870472942617

/-! ## A096610.P14401544998269599212

`A096608(A002522(n))/A001065(A063639(3*(n+1)))`
-/

namespace A096610.P14401544998269599212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096608 (A002522 n).toNat : ℚ) / (A001065 (A063639 (3 * (n + 1))).toNat : ℚ)

end

end A096610.P14401544998269599212

/-!
# A096611: a(n)=number of Catalan knight paths in right half-plane from (0,0) to (n,2).

The programs for A096611, there is no canonical definition to state claims against.
-/

/-! ## A096611.P5287064070125520141

`A096608(n²+2)`
-/

namespace A096611.P5287064070125520141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096608 (n ^ 2 + 2)

end

end A096611.P5287064070125520141

/-! ## A096611.P8061801031751806761

`and(-1, A096608(A010000(n)))`
-/

namespace A096611.P8061801031751806761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A096608 (A010000 n).toNat)

end

end A096611.P8061801031751806761

/-! ## A096611.P7557557611631636057

`A057427(n)*A096608(A010000(n))`
-/

namespace A096611.P7557557611631636057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A096608 (A010000 n).toNat

end

end A096611.P7557557611631636057

/-! ## A096611.P1256242367758083764

`A355320(A096376(n))`
-/

namespace A096611.P1256242367758083764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355320 (A096376 n).toNat

end

end A096611.P1256242367758083764

/-! ## A096611.P6766296311857079887

`A355320(A116735(n+2))`
-/

namespace A096611.P6766296311857079887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355320 (A116735 (n + 2)).toNat

end

end A096611.P6766296311857079887

/-!
# A096612: a(n)=number of Catalan knight paths in right half-plane from (0,0) to (n,n).

The programs for A096612, there is no canonical definition to state claims against.
-/

/-! ## A096612.P1119289470476971353

`A096608(∑[2*n])`
-/

namespace A096612.P1119289470476971353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096608 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096612.P1119289470476971353

/-! ## A096612.P1587703191531839275

`A096608(A002378(n))%A041078(n)`
-/

namespace A096612.P1587703191531839275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096608 (A002378 n).toNat) (A041078 n)

end

end A096612.P1587703191531839275

/-! ## A096612.P501453241063921679

`A096608(A002378(n))+A000007(n+2)`
-/

namespace A096612.P501453241063921679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096608 (A002378 n).toNat + A000007 (n + 2)

end

end A096612.P501453241063921679

/-! ## A096612.P17701872136296325126

`A096608(A002378(n))+A007814(2*n+3)`
-/

namespace A096612.P17701872136296325126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096608 (A002378 n).toNat + A007814 (2 * n + 3)

end

end A096612.P17701872136296325126

/-! ## A096612.P11241533811313657179

`A355320(2*n²)`
-/

namespace A096612.P11241533811313657179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355320 (2 * n ^ 2)

end

end A096612.P11241533811313657179

/-! ## A096612.P13645583432473662098

`A355320(A001105(n))%A166915(n)`
-/

namespace A096612.P13645583432473662098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355320 (A001105 n).toNat) (A166915 n)

end

end A096612.P13645583432473662098

/-! ## A096612.P15748120537747469593

`A355320(A030978(2*n))%A024023(n+3)`
-/

namespace A096612.P15748120537747469593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355320 (A030978 (2 * n)).toNat) (A024023 (n + 3))

end

end A096612.P15748120537747469593

/-!
# A096617: Numerator of n*HarmonicNumber(n).

The programs for A096617, the canonical program `A096617.P17292615775465208619` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096617 has offset 1).

The definition of A096617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096617.P9994797272189160723

`A001008(n+1)*A120263(n+1)`
-/

namespace A096617.P9994797272189160723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) * A120263 (n + 1)

end

end A096617.P9994797272189160723

namespace A096617

/-- `A001008(n+1)*A120263(n+1)` -/
def P9994797272189160723.Spec : Prop :=
  ∀ n, P9994797272189160723.a n = A096617 (n + 1)

end A096617

/-! ## A096617.P11567926852398334443

`A368810(n+1)/A297382(n+1)`
-/

namespace A096617.P11567926852398334443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368810 (n + 1) : ℚ) / (A297382 (n + 1) : ℚ)

end

end A096617.P11567926852398334443

namespace A096617

/-- `A368810(n+1)/A297382(n+1)` -/
def P11567926852398334443.Spec : Prop :=
  ∀ n, P11567926852398334443.a n = (A096617 (n + 1) : ℚ)

end A096617

/-! ## A096617.P2433376413939834321

`gcd(A025529(n+1), A368810(n+1))`
-/

namespace A096617.P2433376413939834321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025529 (n + 1)) (A368810 (n + 1))

end

end A096617.P2433376413939834321

namespace A096617

/-- `gcd(A025529(n+1), A368810(n+1))` -/
def P2433376413939834321.Spec : Prop :=
  ∀ n, (P2433376413939834321.a n : ℤ) = A096617 (n + 1)

end A096617

/-! ## A096617.P17249659900022769399

`∑[1/(n+1)]*A002805(n+1)*A120263(n+1)`
-/

namespace A096617.P17249659900022769399
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A002805 (n + 1) : ℚ) * (A120263 (n + 1) : ℚ)

end

end A096617.P17249659900022769399

namespace A096617

/-- `∑[1/(n+1)]*A002805(n+1)*A120263(n+1)` -/
def P17249659900022769399.Spec : Prop :=
  ∀ n, P17249659900022769399.a n = (A096617 (n + 1) : ℚ)

end A096617

/-! ## A096617.P11548575755925869363

`(A064169(n+1)+A002805(n+1))*A120263(n+1)`
-/

namespace A096617.P11548575755925869363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064169 (n + 1) + A002805 (n + 1)) * A120263 (n + 1)

end

end A096617.P11548575755925869363

namespace A096617

/-- `(A064169(n+1)+A002805(n+1))*A120263(n+1)` -/
def P11548575755925869363.Spec : Prop :=
  ∀ n, P11548575755925869363.a n = A096617 (n + 1)

end A096617

/-! ## A096617.P12926305558174382662

`A060746(n+1)*A093818(n+1)*A120263(n+1)`
-/

namespace A096617.P12926305558174382662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060746 (n + 1) * A093818 (n + 1) * A120263 (n + 1)

end

end A096617.P12926305558174382662

namespace A096617

/-- `A060746(n+1)*A093818(n+1)*A120263(n+1)` -/
def P12926305558174382662.Spec : Prop :=
  ∀ n, P12926305558174382662.a n = A096617 (n + 1)

end A096617

/-! ## A096617.P17292615775465208619

`A025529(n+1)/A002944(n+1)*A027611(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A096617

/-- `A025529(n+1)/A002944(n+1)*A027611(n+1)` -/
def P17292615775465208619.Spec : Prop :=
  ∀ n, P17292615775465208619.a n = (A096617 (n + 1) : ℚ)

end A096617

/-! ## A096617.P5432164564926480820

`A025529(n+1)/A110566(n+1)*A120263(n+1)`
-/

namespace A096617.P5432164564926480820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ) * (A120263 (n + 1) : ℚ)

end

end A096617.P5432164564926480820

namespace A096617

/-- `A025529(n+1)/A110566(n+1)*A120263(n+1)` -/
def P5432164564926480820.Spec : Prop :=
  ∀ n, P5432164564926480820.a n = (A096617 (n + 1) : ℚ)

end A096617

/-! ## A096617.P9037365367580321857

`(A002805(n+1)+A027457(n+1)/A110566(n+1))*A120263(n+1)`
-/

namespace A096617.P9037365367580321857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002805 (n + 1) : ℚ) + (A027457 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ)) * (A120263 (n + 1) : ℚ)

end

end A096617.P9037365367580321857

namespace A096617

/-- `(A002805(n+1)+A027457(n+1)/A110566(n+1))*A120263(n+1)` -/
def P9037365367580321857.Spec : Prop :=
  ∀ n, P9037365367580321857.a n = (A096617 (n + 1) : ℚ)

end A096617

/-! ## A096617.P14789841806228970245

`gcd(n+1, A119786(n+1))*A001008(n+1)`
-/

namespace A096617.P14789841806228970245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A119786 (n + 1)) : ℤ) * A001008 (n + 1)

end

end A096617.P14789841806228970245

namespace A096617

/-- `gcd(n+1, A119786(n+1))*A001008(n+1)` -/
def P14789841806228970245.Spec : Prop :=
  ∀ n, P14789841806228970245.a n = A096617 (n + 1)

end A096617

/-! ## A096617.P9989327504425781288

`gcd(A000217(n)*A001008(n+1), A119786(n+1))`
-/

namespace A096617.P9989327504425781288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 n * A001008 (n + 1)) (A119786 (n + 1))

end

end A096617.P9989327504425781288

namespace A096617

/-- `gcd(A000217(n)*A001008(n+1), A119786(n+1))` -/
def P9989327504425781288.Spec : Prop :=
  ∀ n, (P9989327504425781288.a n : ℤ) = A096617 (n + 1)

end A096617

/-! ## A096617.P13176828718119569555

`lcm(A002547(n+1)*A120263(n+1), A175441(n+1))`
-/

namespace A096617.P13176828718119569555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002547 (n + 1) * A120263 (n + 1)) (A175441 (n + 1))

end

end A096617.P13176828718119569555

namespace A096617

/-- `lcm(A002547(n+1)*A120263(n+1), A175441(n+1))` -/
def P13176828718119569555.Spec : Prop :=
  ∀ n, (P13176828718119569555.a n : ℤ) = A096617 (n + 1)

end A096617

/-! ## A096617.P15904203575778841495

`A120263(n+1)*A213998(A034856(n+1))`
-/

namespace A096617.P15904203575778841495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120263 (n + 1) * A213998 (A034856 (n + 1)).toNat

end

end A096617.P15904203575778841495

namespace A096617

/-- `A120263(n+1)*A213998(A034856(n+1))` -/
def P15904203575778841495.Spec : Prop :=
  ∀ n, P15904203575778841495.a n = A096617 (n + 1)

end A096617

/-!
# A096619: Number of partitions of a 2*n-element set with exactly two odd blocks.

The programs for A096619, there is no canonical definition to state claims against.
-/

/-! ## A096619.P1197869262494556497

`A124321(A096376(n+1))`
-/

namespace A096619.P1197869262494556497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124321 (A096376 (n + 1)).toNat

end

end A096619.P1197869262494556497

/-! ## A096619.P2742473728590084042

`record[Δ[A124321(A133263(n))]]`
-/

namespace A096619.P2742473728590084042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124321 (A133263 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096619.P2742473728590084042

/-! ## A096619.P8520866564092302069

`record[A124321(A000124(n)+1)]`
-/

namespace A096619.P8520866564092302069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124321 (A000124 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096619.P8520866564092302069

/-! ## A096619.P8714681106838258607

`record[A124321(A133263(n+1))]`
-/

namespace A096619.P8714681106838258607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124321 (A133263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096619.P8714681106838258607

/-! ## A096619.P11017055434035153821

`A124321(A134869(2*(n+1))+1)`
-/

namespace A096619.P11017055434035153821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124321 (A134869 (2 * (n + 1)) + 1).toNat

end

end A096619.P11017055434035153821

/-!
# A096620: Denominator of -3*n + 2*(1+n)*HarmonicNumber(n).

The programs for A096620, the canonical program `A096620.P12757446567571572911` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096620 has offset 0).

The definition of A096620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096620.P7830222986741927914

`lcm(2, A027611(n+1))/2`
-/

namespace A096620.P7830222986741927914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A027611 (n + 1)) : ℚ) / 2

end

end A096620.P7830222986741927914

namespace A096620

/-- `lcm(2, A027611(n+1))/2` -/
def P7830222986741927914.Spec : Prop :=
  ∀ n, P7830222986741927914.a n = (A096620 n : ℚ)

end A096620

/-! ## A096620.P12757446567571572911

`A093419(A028310(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A096620

/-- `A093419(A028310(n))` -/
def P12757446567571572911.Spec : Prop :=
  ∀ n, P12757446567571572911.a n = A096620 n

theorem P12757446567571572911.correct : P12757446567571572911.Spec := by
  intro n
  simp only [A096620]

end A096620

/-! ## A096620.P3781591633622756797

`A093419(A233583(n+1))`
-/

namespace A096620.P3781591633622756797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093419 (A233583 (n + 1)).toNat

end

end A096620.P3781591633622756797

namespace A096620

/-- `A093419(A233583(n+1))` -/
def P3781591633622756797.Spec : Prop :=
  ∀ n, P3781591633622756797.a n = A096620 n

end A096620

/-! ## A096620.P15935816063588419328

`A027611(n+1)/A043529(n)`
-/

namespace A096620.P15935816063588419328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027611 (n + 1) : ℚ) / (A043529 n : ℚ)

end

end A096620.P15935816063588419328

namespace A096620

/-- `A027611(n+1)/A043529(n)` -/
def P15935816063588419328.Spec : Prop :=
  ∀ n, P15935816063588419328.a n = (A096620 n : ℚ)

end A096620

/-! ## A096620.P6269307343609909746

`A027611(n+1)/gcd(2, A001405(n))`
-/

namespace A096620.P6269307343609909746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027611 (n + 1) : ℚ) / (Int.gcd 2 (A001405 n) : ℚ)

end

end A096620.P6269307343609909746

namespace A096620

/-- `A027611(n+1)/gcd(2, A001405(n))` -/
def P6269307343609909746.Spec : Prop :=
  ∀ n, P6269307343609909746.a n = (A096620 n : ℚ)

end A096620

/-! ## A096620.P15440398283443816381

`A027611(n+1)/A014963(A048896(n))`
-/

namespace A096620.P15440398283443816381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027611 (n + 1) : ℚ) / (A014963 (A048896 n).toNat : ℚ)

end

end A096620.P15440398283443816381

namespace A096620

/-- `A027611(n+1)/A014963(A048896(n))` -/
def P15440398283443816381.Spec : Prop :=
  ∀ n, P15440398283443816381.a n = (A096620 n : ℚ)

end A096620

/-! ## A096620.P16055939120435165388

`A027611(n+1)/A092505(A006530(n+1))`
-/

namespace A096620.P16055939120435165388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027611 (n + 1) : ℚ) / (A092505 (A006530 (n + 1)).toNat : ℚ)

end

end A096620.P16055939120435165388

namespace A096620

/-- `A027611(n+1)/A092505(A006530(n+1))` -/
def P16055939120435165388.Spec : Prop :=
  ∀ n, P16055939120435165388.a n = (A096620 n : ℚ)

end A096620

/-! ## A096620.P303280523019695382

`A027611(n+1)/A014963(A092505(n+1))`
-/

namespace A096620.P303280523019695382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027611 (n + 1) : ℚ) / (A014963 (A092505 (n + 1)).toNat : ℚ)

end

end A096620.P303280523019695382

namespace A096620

/-- `A027611(n+1)/A014963(A092505(n+1))` -/
def P303280523019695382.Spec : Prop :=
  ∀ n, P303280523019695382.a n = (A096620 n : ℚ)

end A096620

/-! ## A096620.P585866459977082068

`A027611(n+1)/A034444(A147610(n+2))`
-/

namespace A096620.P585866459977082068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027611 (n + 1) : ℚ) / (A034444 (A147610 (n + 2)).toNat : ℚ)

end

end A096620.P585866459977082068

namespace A096620

/-- `A027611(n+1)/A034444(A147610(n+2))` -/
def P585866459977082068.Spec : Prop :=
  ∀ n, P585866459977082068.a n = (A096620 n : ℚ)

end A096620

/-! ## A096620.P10484442698937056168

`A027611(n+1)/A092505(A092505(n+1)+1)`
-/

namespace A096620.P10484442698937056168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027611 (n + 1) : ℚ) / (A092505 (A092505 (n + 1) + 1).toNat : ℚ)

end

end A096620.P10484442698937056168

namespace A096620

/-- `A027611(n+1)/A092505(A092505(n+1)+1)` -/
def P10484442698937056168.Spec : Prop :=
  ∀ n, P10484442698937056168.a n = (A096620 n : ℚ)

end A096620

/-!
# A096622: Harmonic expansion (or factorial expansion) of the Euler-Mascheroni constant.

The programs for A096622, there is no canonical definition to state claims against.
-/

/-! ## A096622.P3137723277738298953

`A062756(A188427(n)+A033484(n))`
-/

namespace A096622.P3137723277738298953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A188427 n + A033484 n).toNat

end

end A096622.P3137723277738298953

/-! ## A096622.P12507844032771325661

`A002452(n)%A061395(A000580(n+9))`
-/

namespace A096622.P12507844032771325661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002452 n) (A061395 (A000580 (n + 9)).toNat)

end

end A096622.P12507844032771325661

/-! ## A096622.P14943459265226302124

`A065001(A181809(n+1))%A153651(3*n+1)`
-/

namespace A096622.P14943459265226302124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065001 (A181809 (n + 1)).toNat) (A153651 (3 * n + 1))

end

end A096622.P14943459265226302124

/-!
# A096625: Denominators of the Riemann prime counting function.

The programs for A096625, there is no canonical definition to state claims against.
-/

/-! ## A096625.P16060476900863236860

`A138902(A276156(2*(n+1)))/A282622(n+2)`
-/

namespace A096625.P16060476900863236860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138902 (A276156 (2 * (n + 1))).toNat : ℚ) / (A282622 (n + 2) : ℚ)

end

end A096625.P16060476900863236860

/-!
# A096628: Integers k for which {prime(1), prime(2), ..., prime(k)} (mod 4) is biased towards 1.

The programs for A096628, there is no canonical definition to state claims against.
-/

/-! ## A096628.P17480386179881310197

`record[A051024(n+1)-A092651(n+1)]`
-/

namespace A096628.P17480386179881310197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051024 (n + 1) - A092651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096628.P17480386179881310197

/-!
# A096629: Values of n for which {p_3, p_4, ..., p_n} (mod 3) contains equal numbers of 1's and 2's.

The programs for A096629, there is no canonical definition to state claims against.
-/

/-! ## A096629.P1199765422858828970

`A000720(A098044(n+2))`
-/

namespace A096629.P1199765422858828970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A098044 (n + 2)).toNat

end

end A096629.P1199765422858828970

/-! ## A096629.P16348754675532385504

`lt[A174695(n+4), 1]+4`
-/

namespace A096629.P16348754675532385504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174695 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 4

end

end A096629.P16348754675532385504

/-! ## A096629.P8471291627382281294

`record[root(n+4, A112632(n+4))]`
-/

namespace A096629.P8471291627382281294
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℝ) ^ (1 / (A112632 (n + 4) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096629.P8471291627382281294

/-! ## A096629.P12898364398495511665

`lt[A112632(n+1), atan(n)]+1`
-/

namespace A096629.P12898364398495511665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A096629.P12898364398495511665

/-!
# A096630: Numbers n for which the set of first n primes (mod 3) is biased towards 1.

The programs for A096630, there is no canonical definition to state claims against.
-/

/-! ## A096630.P3658552008675718808

`A297005(n+1)-A297032(A291091(n))`
-/

namespace A096630.P3658552008675718808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297005 (n + 1) - A297032 (A291091 n).toNat

end

end A096630.P3658552008675718808

/-! ## A096630.P4603730267812357203

`A297005(n+1)-A297034(A055997(n+1))`
-/

namespace A096630.P4603730267812357203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297005 (n + 1) - A297034 (A055997 (n + 1)).toNat

end

end A096630.P4603730267812357203

/-!
# A096632: Denominators of the leading coefficient of the Airy zeta functions expressed as polynomials of X = 3^(5/6)Gamma(2/3)^2/(2Pi).

The programs for A096632, there is no canonical definition to state claims against.
-/

/-! ## A096632.P1933737292596896481

`A096631(lt[A207488(3*n+4), A007623(n)])`
-/

namespace A096632.P1933737292596896481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096631 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A096632.P1933737292596896481

/-! ## A096632.P9785706892622493083

`A096631(lt[A207488(3*n+4), A320886(n+2)])`
-/

namespace A096632.P9785706892622493083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320886 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096631 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A096632.P9785706892622493083

/-! ## A096632.P7819019196699880089

`∏[n+1]/A048272(A352300(n))`
-/

namespace A096632.P7819019196699880089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A048272 (A352300 n).toNat : ℚ)

end

end A096632.P7819019196699880089

/-!
# A096634: Let p = n-th prime == 5 (mod 8) (A007521); a(n) = smallest prime q such that p is not a square mod q.

The programs for A096634, there is no canonical definition to state claims against.
-/

/-! ## A096634.P9954898165150102787

`A139401(4*p?[8*n-3])`
-/

namespace A096634.P9954898165150102787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096634.P9954898165150102787

/-! ## A096634.P17369832865715335498

`A139401(4*(2*floor(p?[8*n+5]/2)+1))`
-/

namespace A096634.P17369832865715335498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (4 * (2 * ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋ + 1)).toNat

end

end A096634.P17369832865715335498

/-! ## A096634.P13940961737086469976

`A139401(4*A007521(n+1))`
-/

namespace A096634.P13940961737086469976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (4 * A007521 (n + 1)).toNat

end

end A096634.P13940961737086469976

/-! ## A096634.P14219448015695955537

`A139401(4*A045366(n+2))`
-/

namespace A096634.P14219448015695955537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (4 * A045366 (n + 2)).toNat

end

end A096634.P14219448015695955537

/-! ## A096634.P1109598101492425165

`A139401(lcm(4, A007521(n+1)))`
-/

namespace A096634.P1109598101492425165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (Int.lcm 4 (A007521 (n + 1)))

end

end A096634.P1109598101492425165

/-! ## A096634.P394988273852144270

`A139401(4*(A186301(n+1)+2))`
-/

namespace A096634.P394988273852144270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (4 * (A186301 (n + 1) + 2)).toNat

end

end A096634.P394988273852144270

/-! ## A096634.P15637441766296534279

`A139401(4*record[A006530(8*n+5)])`
-/

namespace A096634.P15637441766296534279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096634.P15637441766296534279

/-! ## A096634.P2914660664706092646

`A139401(4*record[A014963(8*n+5)])`
-/

namespace A096634.P2914660664706092646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096634.P2914660664706092646

/-! ## A096634.P12915340698111807792

`A139401(4*record[A020639(8*n+5)])`
-/

namespace A096634.P12915340698111807792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096634.P12915340698111807792

/-! ## A096634.P12145825493318669604

`A139401(4*∩[8*n-3, A000040(n+1)])`
-/

namespace A096634.P12145825493318669604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (4 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A096634.P12145825493318669604

/-!
# A096635: Let p = n-th prime == 7 mod 8 (A007522); a(n) = smallest prime q such that p is not a square mod q.

The programs for A096635, there is no canonical definition to state claims against.
-/

/-! ## A096635.P11832532738240135680

`A139401(16*p?[8*n-1])`
-/

namespace A096635.P11832532738240135680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (16 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096635.P11832532738240135680

/-! ## A096635.P6448013495004667772

`A139401(16*eq[n, A006530(or(6, n))])`
-/

namespace A096635.P6448013495004667772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor 6 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (16 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096635.P6448013495004667772

/-! ## A096635.P15146782950219919856

`A139401(16*eq[n, A020639(or(7, n))])`
-/

namespace A096635.P15146782950219919856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 7 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (16 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096635.P15146782950219919856

/-! ## A096635.P18104295229821506419

`A139401(16*record[A006530(8*n+7)])`
-/

namespace A096635.P18104295229821506419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (16 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096635.P18104295229821506419

/-! ## A096635.P7267589823871248397

`A139401(16*record[A020639(8*n+7)])`
-/

namespace A096635.P7267589823871248397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (16 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096635.P7267589823871248397

/-!
# A096636: Smallest prime p > prime(n+2) such that p is a quadratic residue mod the first n odd primes 3, 5, 7, 11, ..., prime(n+1), and p is a quadratic non-residue mod prime(n+2).

The programs for A096636, there is no canonical definition to state claims against.
-/

/-! ## A096636.P1172694994654737578

`2*A331267(n^(n+1)+1)+3`
-/

namespace A096636.P1172694994654737578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331267 (n ^ (n + 1) + 1) + 3

end

end A096636.P1172694994654737578

/-!
# A096638: Smallest prime p == 3 mod 8 (A007520) and p > prime(n+2) such that p is a quadratic residue mod the first n odd primes 3, 5, 7, 11, ..., prime(n+1), and p is a quadratic non-residue mod prime(n+2).

The programs for A096638, there is no canonical definition to state claims against.
-/

/-! ## A096638.P2015477405373633873

`A260793(A280331(n)+A000122(n))`
-/

namespace A096638.P2015477405373633873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260793 (A280331 n + A000122 n).toNat

end

end A096638.P2015477405373633873

/-!
# A096639: Smallest prime p == 5 mod 8 (A007521) and p > prime(n+2) such that p is a quadratic residue mod the first n odd primes 3, 5, 7, 11, ..., prime(n+1), and p is a quadratic non-residue mod prime(n+2).

The programs for A096639, there is no canonical definition to state claims against.
-/

/-! ## A096639.P4790571332475976233

`record[p?[A016813(A292783(n))]]`
-/

namespace A096639.P4790571332475976233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A292783 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096639.P4790571332475976233

/-! ## A096639.P6227351936729923616

`A001097(A068371(n+1)%A068373(n+1))`
-/

namespace A096639.P6227351936729923616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (Int.tmod (A068371 (n + 1)) (A068373 (n + 1))).toNat

end

end A096639.P6227351936729923616

/-!
# A096640: Smallest prime p == 7 mod 8 (A007521) and p > prime(n+2) such that p is a quadratic residue mod the first n odd primes 3, 5, 7, 11, ..., prime(n+1), and p is a quadratic non-residue mod prime(n+2).

The programs for A096640, there is no canonical definition to state claims against.
-/

/-! ## A096640.P14314265348555122525

`p?[or(A040562(2*n+1), A086990(n))]`
-/

namespace A096640.P14314265348555122525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040562 (2 * n + 1)) (A086990 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096640.P14314265348555122525

/-!
# A096641: Decimal expansion of number with continued fraction expansion 0, 2, 4, 8, 16, ... (0 and positive powers of 2).

The programs for A096641, there is no canonical definition to state claims against.
-/

/-! ## A096641.P11233509314230268759

`A214070(n+1)`
-/

namespace A096641.P11233509314230268759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214070 (n + 1 + 1)

end

end A096641.P11233509314230268759

/-!
# A096642: Column with index 2 of triangle A096651: a(n) = A096651(n+2,2).

The programs for A096642, there is no canonical definition to state claims against.
-/

/-! ## A096642.P3823001168767377442

`A096651(∑[n+2]+3)`
-/

namespace A096642.P3823001168767377442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096651 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A096642.P3823001168767377442

/-! ## A096642.P6500849901104182887

`A096651(A340266(n+1))^ceil(acot(n))`
-/

namespace A096642.P6500849901104182887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096651 (A340266 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A096642.P6500849901104182887

/-! ## A096642.P8369191420585723419

`A096651(A340266(n+1))*A139551(n)`
-/

namespace A096642.P8369191420585723419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096651 (A340266 (n + 1)).toNat * A139551 n

end

end A096642.P8369191420585723419

/-! ## A096642.P9380409074792331828

`A096651(A340266(n+1))%A072197(n)`
-/

namespace A096642.P9380409074792331828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096651 (A340266 (n + 1)).toNat) (A072197 n)

end

end A096642.P9380409074792331828

/-! ## A096642.P9137795364902803526

`or(A015868(n), A096651(A340266(n+1)))`
-/

namespace A096642.P9137795364902803526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A015868 n) (A096651 (A340266 (n + 1)).toNat)

end

end A096642.P9137795364902803526

/-!
# A096643: Column with index 3 of triangle A096651: a(n) = A096651(n+3,3).

The programs for A096643, there is no canonical definition to state claims against.
-/

/-! ## A096643.P4419425986177417582

`A096651(∑[n+3]+6)`
-/

namespace A096643.P4419425986177417582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096651 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A096643.P4419425986177417582

/-! ## A096643.P3820648882282399033

`A096651(A152949(n+5))%A292124(n)`
-/

namespace A096643.P3820648882282399033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096651 (A152949 (n + 5)).toNat) (A292124 n)

end

end A096643.P3820648882282399033

/-! ## A096643.P6897014874697673918

`or(A014041(n), A096651(A167614(n+2)))`
-/

namespace A096643.P6897014874697673918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014041 n) (A096651 (A167614 (n + 2)).toNat)

end

end A096643.P6897014874697673918

/-! ## A096643.P11418564685275159882

`A096651(A167614(n+2))+val(A174477(n), 13)`
-/

namespace A096643.P11418564685275159882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096651 (A167614 (n + 2)).toNat + (SequenceMachineLib.valuation (A174477 n).toNat 13 : ℤ)

end

end A096643.P11418564685275159882

/-! ## A096643.P14690116609607771885

`A096651(A167614(n+2))+val(A123011(n), 31)`
-/

namespace A096643.P14690116609607771885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096651 (A167614 (n + 2)).toNat + (SequenceMachineLib.valuation (A123011 n).toNat 31 : ℤ)

end

end A096643.P14690116609607771885

/-!
# A096644: Column with index 4 of triangle A096651: a(n) = A096651(n+4,4).

The programs for A096644, there is no canonical definition to state claims against.
-/

/-! ## A096644.P7072411448823135426

`A096651(∑[n+4]+10)`
-/

namespace A096644.P7072411448823135426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096651 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A096644.P7072411448823135426

/-!
# A096645: Column with index 5 of triangle A096651: a(n) = A096651(n+5,5).

The programs for A096645, there is no canonical definition to state claims against.
-/

/-! ## A096645.P11298894972357397537

`A096651(A167499(n+4))`
-/

namespace A096645.P11298894972357397537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096651 (A167499 (n + 4)).toNat

end

end A096645.P11298894972357397537

/-! ## A096645.P18049216519701630783

`A096651(eq[5, A002262(n)])`
-/

namespace A096645.P18049216519701630783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096645.P18049216519701630783

/-! ## A096645.P6697062159697452884

`A096651(eq[5, A141169(n)])`
-/

namespace A096645.P6697062159697452884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096645.P6697062159697452884

/-! ## A096645.P12710413044141013375

`A096651(eq[5, A191532(n)])`
-/

namespace A096645.P12710413044141013375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096645.P12710413044141013375

/-! ## A096645.P2171885425060030907

`A096651(eq[6, A193738(n)])`
-/

namespace A096645.P2171885425060030907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096645.P2171885425060030907

/-!
# A096646: Triangle (read by rows) where the number of row entries increases by steps of 2 and the entries are stacked in a rectangular fashion. The end entries = 1. Rest of entries in the n-th row are the sum of the entries directly above and to the left and right in all previous rows (total of 3*(n-1) entries).

The programs for A096646, there is no canonical definition to state claims against.
-/

/-! ## A096646.P13097933866643469710

`A072405(comp[round(sqrt(n+1))²+n])`
-/

namespace A096646.P13097933866643469710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A096646.P13097933866643469710

/-! ## A096646.P10448123199222364380

`A072405(A161983(n))%A017008(n)`
-/

namespace A096646.P10448123199222364380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072405 (A161983 n).toNat) (A017008 n)

end

end A096646.P10448123199222364380

/-! ## A096646.P10575512878486313969

`A130716(n+2)+A122218(A161983(n))`
-/

namespace A096646.P10575512878486313969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130716 (n + 2) + A122218 (A161983 n).toNat

end

end A096646.P10575512878486313969

/-! ## A096646.P16413406771119684863

`or(A019590(n+1), A072405(A161983(n)))`
-/

namespace A096646.P16413406771119684863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A019590 (n + 1)) (A072405 (A161983 n).toNat)

end

end A096646.P16413406771119684863

/-! ## A096646.P5000069667915624453

`or(A072405(A007606(n+1)-1), A130716(n))`
-/

namespace A096646.P5000069667915624453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072405 (A007606 (n + 1) - 1).toNat) (A130716 n)

end

end A096646.P5000069667915624453

/-!
# A096647: Number of partitions of an n-set with even number of even blocks.

The programs for A096647, there is no canonical definition to state claims against.
-/

/-! ## A096647.P2648494481206255869

`abs((A292935(n)+A000587(n))/2)`
-/

namespace A096647.P2648494481206255869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A292935 n + A000587 n : ℚ) / 2|

end

end A096647.P2648494481206255869

/-! ## A096647.P15975119321899088594

`A293037(A124625(n))+A024430(n)`
-/

namespace A096647.P15975119321899088594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293037 (A124625 n).toNat + A024430 n

end

end A096647.P15975119321899088594

/-! ## A096647.P13329142630520963109

`A000110(n)-A096648(A028310(n))`
-/

namespace A096647.P13329142630520963109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A096648 (A028310 n).toNat

end

end A096647.P13329142630520963109

/-! ## A096647.P17006027525214469174

`A011971(∑[n])-A096648(A028310(n))`
-/

namespace A096647.P17006027525214469174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) - A096648 (A028310 n).toNat

end

end A096647.P17006027525214469174

/-! ## A096647.P7312253928480067406

`A108087(∑[n])-A096648(A028310(n))`
-/

namespace A096647.P7312253928480067406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (∑ j ∈ Finset.range (n + 1), f1 j) - A096648 (A028310 n).toNat

end

end A096647.P7312253928480067406

/-! ## A096647.P5972122835974835136

`A123081(∑[n])-A096648(A028310(n))`
-/

namespace A096647.P5972122835974835136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (∑ j ∈ Finset.range (n + 1), f1 j) - A096648 (A028310 n).toNat

end

end A096647.P5972122835974835136

/-! ## A096647.P5029205495091225552

`A327884(∑[n])-A096648(A028310(n))`
-/

namespace A096647.P5029205495091225552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327884 (∑ j ∈ Finset.range (n + 1), f1 j) - A096648 (A028310 n).toNat

end

end A096647.P5029205495091225552

/-!
# A096648: Number of partitions of an n-set with odd number of even blocks.

The programs for A096648, there is no canonical definition to state claims against.
-/

/-! ## A096648.P940799018848429171

`A096647(n+1)-A014182(n)`
-/

namespace A096648.P940799018848429171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096647 (n + 1) - A014182 n

end

end A096648.P940799018848429171

/-! ## A096648.P3453655192797755937

`record[A095149(n)]-A096647(n+1)`
-/

namespace A096648.P3453655192797755937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A096647 (n + 1)

end

end A096648.P3453655192797755937

/-! ## A096648.P4298105149075265473

`record[A123346(n)]-A096647(n+1)`
-/

namespace A096648.P4298105149075265473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A096647 (n + 1)

end

end A096648.P4298105149075265473

/-! ## A096648.P3351065357339406702

`A011971(A000096(n))-A096647(n+1)`
-/

namespace A096648.P3351065357339406702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A000096 n).toNat - A096647 (n + 1)

end

end A096648.P3351065357339406702

/-! ## A096648.P8338804730501959693

`A011972(A000217(n))-A096647(n+1)`
-/

namespace A096648.P8338804730501959693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A000217 n).toNat - A096647 (n + 1)

end

end A096648.P8338804730501959693

/-! ## A096648.P2034673225968893580

`A011971(A253145(n))-A096647(n+1)`
-/

namespace A096648.P2034673225968893580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A253145 n).toNat - A096647 (n + 1)

end

end A096648.P2034673225968893580

/-! ## A096648.P15526835469592045878

`A024429(n+1)+A024430(n+1)-A096647(n+1)`
-/

namespace A096648.P15526835469592045878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024429 (n + 1) + (A024430 (n + 1) - A096647 (n + 1))

end

end A096648.P15526835469592045878

/-!
# A096649: First occurrence where n# - p is a prime for primes p = 3,5,...

The programs for A096649, there is no canonical definition to state claims against.
-/

/-! ## A096649.P1120748355487049856

`A019565(A000225(n+2))-A055211(n+2)`
-/

namespace A096649.P1120748355487049856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A000225 (n + 2)).toNat - A055211 (n + 2)

end

end A096649.P1120748355487049856

/-! ## A096649.P5447547243388419997

`record[p?[A247451(n+1)-A305025(n+1)]]`
-/

namespace A096649.P5447547243388419997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247451 (n + 1) - A305025 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096649.P5447547243388419997

/-!
# A096650: Indices of prime Pell numbers.

The programs for A096650, there is no canonical definition to state claims against.
-/

/-! ## A096650.P7332798315039662171

`eq[1, A363833(n+1)]+1`
-/

namespace A096650.P7332798315039662171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096650.P7332798315039662171

/-! ## A096650.P14968524778194590434

`eq[2, A363831(n+1)]+1`
-/

namespace A096650.P14968524778194590434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096650.P14968524778194590434

/-! ## A096650.P14245285355142832510

`record[A006530(A247250(n+7))]`
-/

namespace A096650.P14245285355142832510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A247250 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096650.P14245285355142832510

/-! ## A096650.P12720751162928923180

`∩[A140558(n+1), A247250(n+1)]`
-/

namespace A096650.P12720751162928923180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096650.P12720751162928923180

/-! ## A096650.P8178512492754841503

`∩[A221717(n+1), A247250(n+1)]`
-/

namespace A096650.P8178512492754841503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096650.P8178512492754841503

/-!
# A096651: Lower triangular matrix T, read by rows, such that the row sums of T^n form the n-dimensional partitions.

The programs for A096651, there is no canonical definition to state claims against.
-/

/-! ## A096651.P11584710604764300721

`gcd(A011854(A135814(n)), A077042(n))`
-/

namespace A096651.P11584710604764300721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011854 (A135814 n).toNat) (A077042 n)

end

end A096651.P11584710604764300721

/-! ## A096651.P6717637265317663292

`A256268(A111106(n))%A029635(n)`
-/

namespace A096651.P6717637265317663292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256268 (A111106 n).toNat) (A029635 n)

end

end A096651.P6717637265317663292

/-! ## A096651.P11000493611290421209

`gcd(A127322(A120060(n)), A288108(n))`
-/

namespace A096651.P11000493611290421209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127322 (A120060 n).toNat) (A288108 n)

end

end A096651.P11000493611290421209

/-! ## A096651.P18288998786723654059

`gcd(A087051(A288108(n)), A341279(n))`
-/

namespace A096651.P18288998786723654059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087051 (A288108 n).toNat) (A341279 n)

end

end A096651.P18288998786723654059

/-! ## A096651.P12615138680984499526

`A119803(A097805(n)^A333351(n))`
-/

namespace A096651.P12615138680984499526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119803 (SequenceMachineLib.roundAway ((A097805 n : ℚ) ^ (A333351 n : ℤ))).toNat

end

end A096651.P12615138680984499526

/-!
# A096652: Lower triangular matrix T, read by rows, such that the row sums of T^n form the (2n)-dimensional partition numbers.

The programs for A096652, there is no canonical definition to state claims against.
-/

/-! ## A096652.P8183315641000216736

`∑{e}[A018212(A292506(n)), #]`
-/

namespace A096652.P8183315641000216736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018212 (A292506 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A096652.P8183315641000216736

/-! ## A096652.P14854839489746741711

`A333939(A008277(n+1))-char[∑[n+1]]`
-/

namespace A096652.P14854839489746741711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333939 (A008277 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A096652.P14854839489746741711

/-! ## A096652.P7705173075510570919

`A000720(A000005(2^A292506(n)))`
-/

namespace A096652.P7705173075510570919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A292506 n : ℤ))).toNat).toNat

end

end A096652.P7705173075510570919

/-! ## A096652.P13536193703380212502

`A052313(n)%A017765(A064045(n))`
-/

namespace A096652.P13536193703380212502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052313 n) (A017765 (A064045 n).toNat)

end

end A096652.P13536193703380212502

/-! ## A096652.P8970500683962712551

`or(A001221(A347811(n)), A259100(n))`
-/

namespace A096652.P8970500683962712551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A347811 n).toNat) (A259100 n)

end

end A096652.P8970500683962712551

/-!
# A096653: Lower triangular matrix T, read by rows, such that the row sums of T^n form the (3n)-dimensional partition numbers.

The programs for A096653, there is no canonical definition to state claims against.
-/

/-! ## A096653.P13969514212792804354

`A127321(A005843(A293808(n)^3))`
-/

namespace A096653.P13969514212792804354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A005843 (A293808 n ^ 3).toNat).toNat

end

end A096653.P13969514212792804354

/-! ## A096653.P7297585970356185721

`A293808(n)+A001221(A111820(n))`
-/

namespace A096653.P7297585970356185721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 n + A001221 (A111820 n).toNat

end

end A096653.P7297585970356185721

/-! ## A096653.P2640893383048772790

`A293808(n)+A102673(A256893(n)²)`
-/

namespace A096653.P2640893383048772790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 n + A102673 (A256893 n ^ 2).toNat

end

end A096653.P2640893383048772790

/-! ## A096653.P16023772079299862001

`A235608(A276974(n))-A307428(A094507(n))`
-/

namespace A096653.P16023772079299862001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235608 (A276974 n).toNat - A307428 (A094507 n).toNat

end

end A096653.P16023772079299862001

/-!
# A096654: Denominators of self-convergents to 1/(e-2).

The programs for A096654, the canonical program `A096654.P10628343316310849227` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096654 has offset 0).

The definition of A096654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096654.P10628343316310849227

`(n+1)*a(n-1)+n*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096654

/-- `(n+1)*a(n-1)+n*a(n-2)` -/
def P10628343316310849227.Spec : Prop :=
  ∀ n, (P10628343316310849227.a n : ℤ) = A096654 n

theorem P10628343316310849227.correct : P10628343316310849227.Spec := by
  intro n
  simp only [A096654]

end A096654

/-! ## A096654.P10190748563743609199

`A055596(n+1)+A055596(n+2)`
-/

namespace A096654.P10190748563743609199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055596 (n + 1) + A055596 (n + 2)

end

end A096654.P10190748563743609199

namespace A096654

/-- `A055596(n+1)+A055596(n+2)` -/
def P10190748563743609199.Spec : Prop :=
  ∀ n, P10190748563743609199.a n = A096654 n

end A096654

/-! ## A096654.P525187875873077240

`∏[n/a(n-1)+n+1]` with `a(0)=1, a(1)=2`
-/

namespace A096654.P525187875873077240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n : ℚ) / f1 (n - 1) + (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A096654.P525187875873077240

namespace A096654

/-- `∏[n/a(n-1)+n+1]` -/
def P525187875873077240.Spec : Prop :=
  ∀ n, P525187875873077240.a n = (A096654 n : ℚ)

end A096654

/-! ## A096654.P715696003654814981

`abs(Δ[(n+1)*(2-a(n-1))])` with `a(0)=1`
-/

namespace A096654.P715696003654814981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℤ) * (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A096654.P715696003654814981

namespace A096654

/-- `abs(Δ[(n+1)*(2-a(n-1))])` -/
def P715696003654814981.Spec : Prop :=
  ∀ n, P715696003654814981.a n = A096654 n

end A096654

/-! ## A096654.P13325031647722987129

`A155521(n+1)+A155521(n)`
-/

namespace A096654.P13325031647722987129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155521 (n + 1) + A155521 n

end

end A096654.P13325031647722987129

namespace A096654

/-- `A155521(n+1)+A155521(n)` -/
def P13325031647722987129.Spec : Prop :=
  ∀ n, P13325031647722987129.a n = A096654 n

end A096654

/-! ## A096654.P1995354235834152813

`A000255(n+1)-A316666(n+1)`
-/

namespace A096654.P1995354235834152813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 (n + 1) - A316666 (n + 1)

end

end A096654.P1995354235834152813

namespace A096654

/-- `A000255(n+1)-A316666(n+1)` -/
def P1995354235834152813.Spec : Prop :=
  ∀ n, P1995354235834152813.a n = A096654 n

end A096654

/-! ## A096654.P17890267732032535512

`A000142(n+1)+A180191(n+2)-A000255(n+1)`
-/

namespace A096654.P17890267732032535512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) + (A180191 (n + 2) - A000255 (n + 1))

end

end A096654.P17890267732032535512

namespace A096654

/-- `A000142(n+1)+A180191(n+2)-A000255(n+1)` -/
def P17890267732032535512.Spec : Prop :=
  ∀ n, P17890267732032535512.a n = A096654 n

end A096654

/-! ## A096654.P8258138520936896523

`A000240(n+1)+A000240(n+2)-A316666(n+1)`
-/

namespace A096654.P8258138520936896523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000240 (n + 1) + (A000240 (n + 2) - A316666 (n + 1))

end

end A096654.P8258138520936896523

namespace A096654

/-- `A000240(n+1)+A000240(n+2)-A316666(n+1)` -/
def P8258138520936896523.Spec : Prop :=
  ∀ n, P8258138520936896523.a n = A096654 n

end A096654

/-! ## A096654.P7629037208302609700

`A055596(n+3)/(n+2)`
-/

namespace A096654.P7629037208302609700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055596 (n + 3) : ℚ) / (n + 2 : ℚ)

end

end A096654.P7629037208302609700

namespace A096654

/-- `A055596(n+3)/(n+2)` -/
def P7629037208302609700.Spec : Prop :=
  ∀ n, P7629037208302609700.a n = (A096654 n : ℚ)

end A096654

/-! ## A096654.P2681422798667211754

`A001048(n+2)-2*A000255(n+1)`
-/

namespace A096654.P2681422798667211754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001048 (n + 2) - 2 * A000255 (n + 1)

end

end A096654.P2681422798667211754

namespace A096654

/-- `A001048(n+2)-2*A000255(n+1)` -/
def P2681422798667211754.Spec : Prop :=
  ∀ n, P2681422798667211754.a n = A096654 n

end A096654

/-!
# A096655: a(n) = F(n+1)*a(n-1) + F(n)*a(n-2), where F = A000045 (Fibonacci numbers), a(0)=1, a(1)=1.

The programs for A096655, there is no canonical definition to state claims against.
-/

/-! ## A096655.P5754912858192612237

`A101402(n*n*a(n-1))-(-1)^∑{e}[n+1, #-val(#!, 2)]` with `a(0)=1, a(1)=1`
-/

namespace A096655.P5754912858192612237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A101402 (SequenceMachineLib.roundAway ((n : ℚ) * ((n : ℚ) * a (n - 1)))).toNat : ℚ) - (-1 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ)) : ℤ)

end

end A096655.P5754912858192612237

/-! ## A096655.P12279211810284368925

`A033095(A102687(n))`
-/

namespace A096655.P12279211810284368925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033095 (A102687 n).toNat

end

end A096655.P12279211810284368925

/-!
# A096656: a(n) = F(n+2)*a(n-1) + F(n+1)*a(n-2), where F = A000045 (Fibonacci numbers), a(0)=1, a(1)=2.

The programs for A096656, there is no canonical definition to state claims against.
-/

/-! ## A096656.P5942931425769051065

`A089126(n+3)-A096655(n+1)`
-/

namespace A096656.P5942931425769051065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089126 (n + 3) - A096655 (n + 1)

end

end A096656.P5942931425769051065

/-!
# A096657: a(n) = (2^n)*a(n-1) + (2^(n-1))*a(n-2), a(0)=1, a(1)=3.

The programs for A096657, the canonical program `A096657.P5686627945347897954` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096657 has offset 0).

The definition of A096657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096657.P5686627945347897954

`2^n*a(n-1)+2^(n-1)*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096657

/-- `2^n*a(n-1)+2^(n-1)*a(n-2)` -/
def P5686627945347897954.Spec : Prop :=
  ∀ n, P5686627945347897954.a n = (A096657 n : ℚ)

end A096657

/-! ## A096657.P7864479604423687768

`(a(n-2)+2*a(n-1))*2^(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A096657.P7864479604423687768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (a (n - 2) + 2 * a (n - 1)) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A096657.P7864479604423687768

namespace A096657

/-- `(a(n-2)+2*a(n-1))*2^(n-1)` -/
def P7864479604423687768.Spec : Prop :=
  ∀ n, P7864479604423687768.a n = (A096657 n : ℚ)

end A096657

/-!
# A096658: a(n) = (2^n)*a(n-1) + (2^(n-1))*a(n-2), a(0)=1, a(1)=2.

The programs for A096658, the canonical program `A096658.P11003480574871840885` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096658 has offset 0).

The definition of A096658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096658.P11003480574871840885

`2^n*a(n-1)+2^(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096658

/-- `2^n*a(n-1)+2^(n-1)*a(n-2)` -/
def P11003480574871840885.Spec : Prop :=
  ∀ n, P11003480574871840885.a n = (A096658 n : ℚ)

end A096658

/-! ## A096658.P16923716565860178912

`(a(n-2)+2*a(n-1))*2^(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A096658.P16923716565860178912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 2) + 2 * a (n - 1)) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A096658.P16923716565860178912

namespace A096658

/-- `(a(n-2)+2*a(n-1))*2^(n-1)` -/
def P16923716565860178912.Spec : Prop :=
  ∀ n, P16923716565860178912.a n = (A096658 n : ℚ)

end A096658

/-! ## A096658.P13638886845074575821

`(a(n-1)+a(n-1)+a(n-2))*A011782(n)` with `a(0)=1, a(1)=2`
-/

namespace A096658.P13638886845074575821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) + (a (n - 1) + a (n - 2))) * A011782 n

end

end A096658.P13638886845074575821

namespace A096658

/-- `(a(n-1)+a(n-1)+a(n-2))*A011782(n)` -/
def P13638886845074575821.Spec : Prop :=
  ∀ n, P13638886845074575821.a n = A096658 n

end A096658

/-!
# A096661: Fine's numbers J(n).

The programs for A096661, there is no canonical definition to state claims against.
-/

/-! ## A096661.P8752610284317149581

`floor(A064053(n)/4)`
-/

namespace A096661.P8752610284317149581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A064053 n : ℚ) / 4⌋

end

end A096661.P8752610284317149581

/-! ## A096661.P14591223954798267555

`A064053(A028310(n))/4`
-/

namespace A096661.P14591223954798267555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064053 (A028310 n).toNat : ℚ) / 4

end

end A096661.P14591223954798267555

/-! ## A096661.P3282199859569813478

`A064053(A000007(n)+n)/4`
-/

namespace A096661.P3282199859569813478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064053 (A000007 n + (n : ℤ)).toNat : ℚ) / 4

end

end A096661.P3282199859569813478

/-! ## A096661.P12450505026259100510

`(A064053(n)-A000007(n))/4`
-/

namespace A096661.P12450505026259100510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064053 n - A000007 n : ℚ) / 4

end

end A096661.P12450505026259100510

/-! ## A096661.P15122070133327989972

`A057427(n)/4*A064053(n)`
-/

namespace A096661.P15122070133327989972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 n : ℚ) / 4 * (A064053 n : ℚ)

end

end A096661.P15122070133327989972

/-! ## A096661.P6270711640141823757

`A064053(A123108(2*n))/4`
-/

namespace A096661.P6270711640141823757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064053 (A123108 (2 * n)).toNat : ℚ) / 4

end

end A096661.P6270711640141823757

/-!
# A096662: Least nontrivial n-tuply triangular number.

The programs for A096662, the canonical program `A096662.P12573431005364411900` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096662 has offset 1).

The definition of A096662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096662.P12573431005364411900

`A007501(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096662

/-- `A007501(n+1)` -/
def P12573431005364411900.Spec : Prop :=
  ∀ n, P12573431005364411900.a n = A096662 (n + 1)

theorem P12573431005364411900.correct : P12573431005364411900.Spec := by
  intro n
  simp only [A096662, Nat.add_sub_cancel]

end A096662

/-! ## A096662.P11779140400560852058

`C(a(n-1)+1, 2)` with `a(0)=3`
-/

namespace A096662.P11779140400560852058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.choose (a (n - 1) + 1) 2

end

end A096662.P11779140400560852058

namespace A096662

/-- `C(a(n-1)+1, 2)` -/
def P11779140400560852058.Spec : Prop :=
  ∀ n, (P11779140400560852058.a n : ℤ) = A096662 (n + 1)

end A096662

/-! ## A096662.P1167782065030269411

`floor((a(n-1)+1/2)²/2)` with `a(0)=3`
-/

namespace A096662.P1167782065030269411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊((a (n - 1) : ℚ) + (1 : ℚ) / 2) ^ 2 / 2⌋

end

end A096662.P1167782065030269411

namespace A096662

/-- `floor((a(n-1)+1/2)²/2)` -/
def P1167782065030269411.Spec : Prop :=
  ∀ n, P1167782065030269411.a n = A096662 (n + 1)

end A096662

/-! ## A096662.P12009525576496561909

`(a(n-1)+a(n-1)²)/2` with `a(0)=3`
-/

namespace A096662.P12009525576496561909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (a (n - 1) + a (n - 1) ^ 2) / 2

end

end A096662.P12009525576496561909

namespace A096662

/-- `(a(n-1)+a(n-1)²)/2` -/
def P12009525576496561909.Spec : Prop :=
  ∀ n, P12009525576496561909.a n = (A096662 (n + 1) : ℚ)

end A096662

/-! ## A096662.P14891460921925625581

`a(n-1)²-C(a(n-1), 2)` with `a(0)=3`
-/

namespace A096662.P14891460921925625581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) ^ 2 - (Nat.choose (a (n - 1)).toNat 2 : ℤ)

end

end A096662.P14891460921925625581

namespace A096662

/-- `a(n-1)²-C(a(n-1), 2)` -/
def P14891460921925625581.Spec : Prop :=
  ∀ n, P14891460921925625581.a n = A096662 (n + 1)

end A096662

/-!
# A096663: Numerator of b(n), where Sum_{k>=1} b(k)/k^r = 1/(Sum_{k>=1} H(k)/k^r). H(k) = Sum_{j=1..k} 1/j, the k-th harmonic number.

The programs for A096663, there is no canonical definition to state claims against.
-/

/-! ## A096663.P13129622604907642899

`A215065(xor(9, A000245(n)))`
-/

namespace A096663.P13129622604907642899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215065 (Int.xor 9 (A000245 n)).toNat

end

end A096663.P13129622604907642899

/-!
# A096664: Numerators of terms in series expansion of sin(tan(x)).

The programs for A096664, there is no canonical definition to state claims against.
-/

/-! ## A096664.P1567244751482003351

`A013559(2*n+1)*A033999(n+1)`
-/

namespace A096664.P1567244751482003351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013559 (2 * n + 1) * A033999 (n + 1)

end

end A096664.P1567244751482003351

/-! ## A096664.P5692995485841516446

`-A013559(A005408(n))*A033999(n)`
-/

namespace A096664.P5692995485841516446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A013559 (A005408 n).toNat * A033999 n)

end

end A096664.P5692995485841516446

/-! ## A096664.P1719978764727315766

`A013559(A005408(n))/A033999(n+1)`
-/

namespace A096664.P1719978764727315766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013559 (A005408 n).toNat : ℚ) / (A033999 (n + 1) : ℚ)

end

end A096664.P1719978764727315766

/-! ## A096664.P11180938145820721814

`A003706(n)/gcd(A001147(n), A003706(n))`
-/

namespace A096664.P11180938145820721814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003706 n : ℚ) / (Int.gcd (A001147 n) (A003706 n) : ℚ)

end

end A096664.P11180938145820721814

/-!
# A096665: a(n) = smallest number m, not occurring earlier, such that at least one prime factor of m divides at least one of the omega(m) last terms (where omega=A001221); a(1)=1, a(2)=2.

The programs for A096665, there is no canonical definition to state claims against.
-/

/-! ## A096665.P13782366480929405573

`A096666(A096667(n+1))`
-/

namespace A096665.P13782366480929405573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096666 (A096667 (n + 1)).toNat

end

end A096665.P13782366480929405573

/-! ## A096665.P2651454328030720852

`A096667(A096666(Δ[n²]-n))`
-/

namespace A096665.P2651454328030720852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096667 (A096666 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A096665.P2651454328030720852

/-! ## A096665.P1807408117154396174

`A336946(lt[A336958(n), A336906(n)])`
-/

namespace A096665.P1807408117154396174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336958 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336946 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A096665.P1807408117154396174

/-! ## A096665.P16682821610614677314

`A336946(record[A355270(n+1)])`
-/

namespace A096665.P16682821610614677314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336946 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096665.P16682821610614677314

/-! ## A096665.P15267040851588227987

`Δ[A065057(n)]-A023443(A309864(n))`
-/

namespace A096665.P15267040851588227987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A023443 (A309864 n).toNat

end

end A096665.P15267040851588227987

/-!
# A096666: Inverse integer permutation of A096665.

The programs for A096666, there is no canonical definition to state claims against.
-/

/-! ## A096666.P6240199344767765695

`A096668(A096665(n+1))`
-/

namespace A096666.P6240199344767765695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096668 (A096665 (n + 1)).toNat

end

end A096666.P6240199344767765695

/-! ## A096666.P13184830107906007141

`A096665(A096668(Δ[n²]-n))`
-/

namespace A096666.P13184830107906007141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096665 (A096668 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A096666.P13184830107906007141

/-! ## A096666.P14030509180499819121

`A319716(A352188(n+1))%A320270(3*(n+1))`
-/

namespace A096666.P14030509180499819121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319716 (A352188 (n + 1)).toNat) (A320270 (3 * (n + 1)))

end

end A096666.P14030509180499819121

/-! ## A096666.P6673305881113085779

`A064664(n+1)-A024155(A201361(n+4))`
-/

namespace A096666.P6673305881113085779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (n + 1) - A024155 (A201361 (n + 4)).toNat

end

end A096666.P6673305881113085779

/-! ## A096666.P834496337516143509

`A096667(A064413(A045779(A096668(A096668(n+1)))))`
-/

namespace A096666.P834496337516143509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096667 (A064413 (A045779 (A096668 (A096668 (n + 1)).toNat).toNat).toNat).toNat

end

end A096666.P834496337516143509

/-!
# A096667: A096665(A096665(n)).

The programs for A096667, there is no canonical definition to state claims against.
-/

/-! ## A096667.P14804387851581473263

`A096665(A096665(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096667.P14804387851581473263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096665 (A096665 (n + 1)).toNat

end

end A096667.P14804387851581473263

/-!
# A096668: A096666(A096666(n)).

The programs for A096668, there is no canonical definition to state claims against.
-/

/-! ## A096668.P9075754593485891276

`A096666(A096666(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096668.P9075754593485891276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096666 (A096666 (n + 1)).toNat

end

end A096668.P9075754593485891276

/-!
# A096669: Rectangular array T(n,k) read by antidiagonals; generating function of row n is 1/F(n,x), where F(n,x) is the polynomial 1 - x - x^2 - 2*x^3 -...- F(n+1)*x^n and F(n+1) is the (n+1)st Fibonacci number, for n=0,1,2,...

The programs for A096669, there is no canonical definition to state claims against.
-/

/-! ## A096669.P3833506349021940644

`A096670(∑[char[∑[n]]]²-n)`
-/

namespace A096669.P3833506349021940644
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096670 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A096669.P3833506349021940644

/-! ## A096669.P1361542404335266955

`A087845(A278984(n+1))`
-/

namespace A096669.P1361542404335266955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (A278984 (n + 1)).toNat

end

end A096669.P1361542404335266955

/-! ## A096669.P5878291733068621054

`A204553(A140998(n)^A204553(n+1))`
-/

namespace A096669.P5878291733068621054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (SequenceMachineLib.roundAway ((A140998 n : ℚ) ^ (A204553 (n + 1) : ℤ))).toNat

end

end A096669.P5878291733068621054

/-! ## A096669.P17207677789518573591

`A096591(n)-A276791(A096591(3*n))`
-/

namespace A096669.P17207677789518573591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096591 n - A276791 (A096591 (3 * n)).toNat

end

end A096669.P17207677789518573591

/-! ## A096669.P245219174240252225

`A160755(A096591(n)%A161336(2*(n+2)))`
-/

namespace A096669.P245219174240252225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (Int.tmod (A096591 n) (A161336 (2 * (n + 2)))).toNat

end

end A096669.P245219174240252225

/-!
# A096670: Rectangular array T(n,k) read by antidiagonals; generating function of column n is 1/F(n,x), where F(n,x) is the polynomial 1 - x - x^2 - 2*x^3 -...- F(n+1)*x^n and F(n+1) is the (n+1)st Fibonacci number, for n=0,1,2,...

The programs for A096670, there is no canonical definition to state claims against.
-/

/-! ## A096670.P1849218057877749410

`A096669(A048760(2*(n+2))-n)`
-/

namespace A096670.P1849218057877749410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096669 (A048760 (2 * (n + 2)) - (n : ℤ)).toNat

end

end A096670.P1849218057877749410

/-! ## A096670.P5863300108682193317

`A096669(∑[char[∑[n]]]²-n)`
-/

namespace A096670.P5863300108682193317
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096669 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A096670.P5863300108682193317

/-! ## A096670.P2311088377810021505

`A259567(A259567(3*(n+1)))+A238888(n)`
-/

namespace A096670.P2311088377810021505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259567 (A259567 (3 * (n + 1))).toNat + A238888 n

end

end A096670.P2311088377810021505

/-! ## A096670.P3208443566433327245

`A000006(A320750(n+1)%A184402(2*n+3))`
-/

namespace A096670.P3208443566433327245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (Int.tmod (A320750 (n + 1)) (A184402 (2 * n + 3))).toNat

end

end A096670.P3208443566433327245

/-! ## A096670.P16777318969761242816

`A045778(A005384(n+1)*A267383(n))`
-/

namespace A096670.P16777318969761242816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A005384 (n + 1) * A267383 n).toNat

end

end A096670.P16777318969761242816

/-!
# A096671: Denominators of terms in series expansion of sin(tan(x)), odd powers only.

The programs for A096671, there is no canonical definition to state claims against.
-/

/-! ## A096671.P9990216743061766807

`A009445(n)/A003706(n)*A096664(n)`
-/

namespace A096671.P9990216743061766807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009445 n : ℚ) / (A003706 n : ℚ) * (A096664 n : ℚ)

end

end A096671.P9990216743061766807

/-! ## A096671.P8738805667327904517

`A009445(n)/gcd(A001147(n), A003706(n))`
-/

namespace A096671.P8738805667327904517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009445 n : ℚ) / (Int.gcd (A001147 n) (A003706 n) : ℚ)

end

end A096671.P8738805667327904517

/-! ## A096671.P15743179899153486176

`A009445(n)/((-1)^n*A003723(Δ[n²]))*A096664(n)`
-/

namespace A096671.P15743179899153486176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009445 n : ℚ) / ((-1) ^ n * A003723 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) * (A096664 n : ℚ)

end

end A096671.P15743179899153486176

/-! ## A096671.P7171876829213808606

`A009445(n)/(A003723(2*n+1)*A033999(n))*A096664(n)`
-/

namespace A096671.P7171876829213808606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009445 n : ℚ) / (A003723 (2 * n + 1) * A033999 n : ℚ) * (A096664 n : ℚ)

end

end A096671.P7171876829213808606

/-! ## A096671.P1624817847857796374

`gcd(A009445(n), A013517(n))`
-/

namespace A096671.P1624817847857796374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009445 n) (A013517 n)

end

end A096671.P1624817847857796374

/-!
# A096672: Smallest side of the first primitive d-arithmetic triangle, where d=A072330(n).

The programs for A096672, there is no canonical definition to state claims against.
-/

/-! ## A096672.P2701973744051829069

`A086909(n+1)-A072330(n+1)`
-/

namespace A096672.P2701973744051829069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086909 (n + 1) - A072330 (n + 1)

end

end A096672.P2701973744051829069

/-! ## A096672.P2550600662561514425

`2*A089019(n+1)-A072330(n+1)`
-/

namespace A096672.P2550600662561514425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089019 (n + 1) - A072330 (n + 1)

end

end A096672.P2550600662561514425

/-! ## A096672.P5187659100710131154

`A004277(A089019(n+1))-A072330(n+1)`
-/

namespace A096672.P5187659100710131154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A089019 (n + 1)).toNat - A072330 (n + 1)

end

end A096672.P5187659100710131154

/-! ## A096672.P12273512199350121720

`A086909(n+1)-record[A051724(A057125(n+1))]`
-/

namespace A096672.P12273512199350121720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A057125 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086909 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096672.P12273512199350121720

/-! ## A096672.P12328975213901279663

`A086909(n+1)-∩[A007310(n+1), A057125(n+1)]`
-/

namespace A096672.P12328975213901279663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086909 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A096672.P12328975213901279663

/-! ## A096672.P15938411102539960452

`A086909(n+1)-∩[A057125(n+1), A084087(n+1)]`
-/

namespace A096672.P15938411102539960452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084087 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086909 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A096672.P15938411102539960452

/-! ## A096672.P12717741548006139338

`2*A089019(n+1)-record[A284372(n+1)-A001065(n+1)]`
-/

namespace A096672.P12717741548006139338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284372 (n + 1) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089019 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096672.P12717741548006139338

/-! ## A096672.P11258768793918780253

`A086909(n+1)-record[A284372(n+1)+n+1-A000203(n+1)]`
-/

namespace A096672.P11258768793918780253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284372 (n + 1) + ((n + 1 : ℤ) - A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086909 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096672.P11258768793918780253

/-! ## A096672.P14304517510691399

`2*A089019(n+1)-record[A284372(n+1)+n+1-A000203(n+1)]`
-/

namespace A096672.P14304517510691399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284372 (n + 1) + ((n + 1 : ℤ) - A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089019 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096672.P14304517510691399

/-! ## A096672.P4237542293165964223

`A096673(n+1)-2*A072330(n+1)`
-/

namespace A096672.P4237542293165964223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096673 (n + 1) - 2 * A072330 (n + 1)

end

end A096672.P4237542293165964223

/-!
# A096673: Largest side of the first primitive d-arithmetic triangle, where d=A072330(n).

The programs for A096673, there is no canonical definition to state claims against.
-/

/-! ## A096673.P8378424549758509819

`A086909(n+1)+A072330(n+1)`
-/

namespace A096673.P8378424549758509819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086909 (n + 1) + A072330 (n + 1)

end

end A096673.P8378424549758509819

/-! ## A096673.P13046411274968678812

`A072330(n+1)+2*A089019(n+1)`
-/

namespace A096673.P13046411274968678812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072330 (n + 1) + 2 * A089019 (n + 1)

end

end A096673.P13046411274968678812

/-! ## A096673.P1868481566580388084

`A096672(n+1)+2*A072330(n+1)`
-/

namespace A096673.P1868481566580388084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096672 (n + 1) + 2 * A072330 (n + 1)

end

end A096673.P1868481566580388084

/-! ## A096673.P18426285281367521489

`2*A086909(n+1)-A096672(n+1)`
-/

namespace A096673.P18426285281367521489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086909 (n + 1) - A096672 (n + 1)

end

end A096673.P18426285281367521489

/-! ## A096673.P15107274914806686504

`4*A089019(n+1)-A096672(n+1)`
-/

namespace A096673.P15107274914806686504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A089019 (n + 1) - A096672 (n + 1)

end

end A096673.P15107274914806686504

/-! ## A096673.P544451078154847195

`A072330(n+1)+A004277(A089019(n+1))`
-/

namespace A096673.P544451078154847195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072330 (n + 1) + A004277 (A089019 (n + 1)).toNat

end

end A096673.P544451078154847195

/-! ## A096673.P5152303230214402355

`A096672(n+1)+A005843(A072330(n+1))`
-/

namespace A096673.P5152303230214402355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096672 (n + 1) + A005843 (A072330 (n + 1)).toNat

end

end A096673.P5152303230214402355

/-! ## A096673.P2239277420130148825

`A005843(A086909(n+1))-A096672(n+1)`
-/

namespace A096673.P2239277420130148825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A086909 (n + 1)).toNat - A096672 (n + 1)

end

end A096673.P2239277420130148825

/-! ## A096673.P15319751373043746531

`A008574(A089019(n+1))-A096672(n+1)`
-/

namespace A096673.P15319751373043746531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A089019 (n + 1)).toNat - A096672 (n + 1)

end

end A096673.P15319751373043746531

/-! ## A096673.P13412586711952155835

`A086909(n+1)+record[A051724(A057125(n+1))]`
-/

namespace A096673.P13412586711952155835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A057125 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086909 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096673.P13412586711952155835

/-!
# A096674: Semiperimeter of the first primitive d-arithmetic triangle, where d=A072330(n).

The programs for A096674, there is no canonical definition to state claims against.
-/

/-! ## A096674.P8811190617892880234

`3*A089019(n+1)`
-/

namespace A096674.P8811190617892880234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A089019 (n + 1)

end

end A096674.P8811190617892880234

/-! ## A096674.P8128817723844407456

`3/2*A086909(n+1)`
-/

namespace A096674.P8128817723844407456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A086909 (n + 1) : ℚ)

end

end A096674.P8128817723844407456

/-! ## A096674.P2736610572722239614

`lcm(3, A089019(C(n+1, n)))`
-/

namespace A096674.P2736610572722239614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A089019 (Nat.choose (n + 1) n))

end

end A096674.P2736610572722239614

/-! ## A096674.P2676074272727241773

`A006368(A086909(n+1))`
-/

namespace A096674.P2676074272727241773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A086909 (n + 1)).toNat

end

end A096674.P2676074272727241773

/-! ## A096674.P708159680718988494

`A008486(A089019(n+1))`
-/

namespace A096674.P708159680718988494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A089019 (n + 1)).toNat

end

end A096674.P708159680718988494

/-! ## A096674.P5333641156416069950

`A001281(3*A086909(n+1))`
-/

namespace A096674.P5333641156416069950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (3 * A086909 (n + 1)).toNat

end

end A096674.P5333641156416069950

/-! ## A096674.P5164357130991856659

`A004525(3*A086909(n+1))`
-/

namespace A096674.P5164357130991856659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (3 * A086909 (n + 1)).toNat

end

end A096674.P5164357130991856659

/-! ## A096674.P17416687187315089166

`A004526(3*A086909(n+1))`
-/

namespace A096674.P17416687187315089166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A086909 (n + 1)).toNat

end

end A096674.P17416687187315089166

/-! ## A096674.P17994694890285596778

`A001281(lcm(6, A086909(n+1)))`
-/

namespace A096674.P17994694890285596778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm 6 (A086909 (n + 1)))

end

end A096674.P17994694890285596778

/-! ## A096674.P16287855403793506433

`lcm(A089019(n+1), A174971(n))`
-/

namespace A096674.P16287855403793506433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A089019 (n + 1)) (A174971 n)

end

end A096674.P16287855403793506433

/-!
# A096675: a(n) = A096786(n)/2.

The programs for A096675, there is no canonical definition to state claims against.
-/

/-! ## A096675.P2205776231892969103

`A096786(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096675.P2205776231892969103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096786 (n + 1) : ℚ) / 2

end

end A096675.P2205776231892969103

/-! ## A096675.P9184676132911949867

`floor(A096785(n+1)/4)`
-/

namespace A096675.P9184676132911949867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096785 (n + 1) : ℚ) / 4⌋

end

end A096675.P9184676132911949867

/-! ## A096675.P18095897218873118575

`eq[2, A016014(n+1)]+1`
-/

namespace A096675.P18095897218873118575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096675.P18095897218873118575

/-! ## A096675.P17784103317366943146

`eq[2, A078680(n+1)]+1`
-/

namespace A096675.P17784103317366943146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096675.P17784103317366943146

/-! ## A096675.P12949790617062097422

`eq[1, A225721(2*n+1)]`
-/

namespace A096675.P12949790617062097422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225721 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096675.P12949790617062097422

/-! ## A096675.P12412030417821772964

`eq[2, A251717(2*n+1)]`
-/

namespace A096675.P12412030417821772964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251717 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096675.P12412030417821772964

/-! ## A096675.P582248853618729226

`eq[2, A034693(2*(n+1))]+1`
-/

namespace A096675.P582248853618729226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096675.P582248853618729226

/-! ## A096675.P6977196648846745732

`A001281(A096786(n+1))`
-/

namespace A096675.P6977196648846745732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A096786 (n + 1)).toNat

end

end A096675.P6977196648846745732

/-! ## A096675.P6974299413918174751

`A002265(A096785(n+1))`
-/

namespace A096675.P6974299413918174751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A096785 (n + 1)).toNat

end

end A096675.P6974299413918174751

/-! ## A096675.P7415109974489833391

`A075518(A096678(n+1))`
-/

namespace A096675.P7415109974489833391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075518 (A096678 (n + 1)).toNat

end

end A096675.P7415109974489833391

/-!
# A096676: a(n) = (A096788(n)-1)/2.

The programs for A096676, there is no canonical definition to state claims against.
-/

/-! ## A096676.P1313688679120236587

`(A096788(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096676.P1313688679120236587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096788 (n + 1) - 1 : ℚ) / 2

end

end A096676.P1313688679120236587

/-! ## A096676.P16229216575990035568

`floor(A096787(n+1)/4)`
-/

namespace A096676.P16229216575990035568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096787 (n + 1) : ℚ) / 4⌋

end

end A096676.P16229216575990035568

/-! ## A096676.P17538154475542539888

`eq[2, A050412(n+1)]+1`
-/

namespace A096676.P17538154475542539888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096676.P17538154475542539888

/-! ## A096676.P1797579891933742365

`eq[2, A103961(n+2)]+1`
-/

namespace A096676.P1797579891933742365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096676.P1797579891933742365

/-! ## A096676.P9142590539654438570

`eq[2, A050412(gcd(n, C(2, n)))]`
-/

namespace A096676.P9142590539654438570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096676.P9142590539654438570

/-! ## A096676.P11958778703702649428

`eq[1, A040081(2*(n+2))]+1`
-/

namespace A096676.P11958778703702649428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096676.P11958778703702649428

/-! ## A096676.P11834519470567106951

`A002265(A096787(n+1))`
-/

namespace A096676.P11834519470567106951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A096787 (n + 1)).toNat

end

end A096676.P11834519470567106951

/-! ## A096676.P17297061337539473538

`A075518(A096679(n+1))`
-/

namespace A096676.P17297061337539473538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075518 (A096679 (n + 1)).toNat

end

end A096676.P17297061337539473538

/-! ## A096676.P6782345690610055439

`A008621(A096787(n+1)-7)`
-/

namespace A096676.P6782345690610055439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A096787 (n + 1) - 7).toNat

end

end A096676.P6782345690610055439

/-! ## A096676.P14932728011101667801

`eq[A010133(n), A103961(n+1)]`
-/

namespace A096676.P14932728011101667801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010133 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096676.P14932728011101667801

/-!
# A096677: A060254 indexed by A000040.

The programs for A096677, the canonical program `A096677.P7170319488795108881` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096677 has offset 1).

The definition of A096677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096677.P11742757926499600151

`lt[1, A115766(n+2)]+2`
-/

namespace A096677.P11742757926499600151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115766 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A096677.P11742757926499600151

namespace A096677

/-- `lt[1, A115766(n+2)]+2` -/
def P11742757926499600151.Spec : Prop :=
  ∀ n, (P11742757926499600151.a n : ℤ) = A096677 (n + 1)

end A096677

/-! ## A096677.P12996007803708511969

`A000720(A060254(n+1))`
-/

namespace A096677.P12996007803708511969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A060254 (n + 1)).toNat

end

end A096677.P12996007803708511969

namespace A096677

/-- `A000720(A060254(n+1))` -/
def P12996007803708511969.Spec : Prop :=
  ∀ n, P12996007803708511969.a n = A096677 (n + 1)

end A096677

/-! ## A096677.P7170319488795108881

`A099801(A096784(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A096677

/-- `A099801(A096784(n+1))` -/
def P7170319488795108881.Spec : Prop :=
  ∀ n, P7170319488795108881.a n = A096677 (n + 1)

theorem P7170319488795108881.correct : P7170319488795108881.Spec := by
  intro n
  simp only [A096677, Nat.add_sub_cancel]

end A096677

/-! ## A096677.P14074571184882387021

`A000720(A167915(n+2))`
-/

namespace A096677.P14074571184882387021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A167915 (n + 2)).toNat

end

end A096677.P14074571184882387021

namespace A096677

/-- `A000720(A167915(n+2))` -/
def P14074571184882387021.Spec : Prop :=
  ∀ n, P14074571184882387021.a n = A096677 (n + 1)

end A096677

/-! ## A096677.P15946674678542599399

`A000720(A176902(n+2))`
-/

namespace A096677.P15946674678542599399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A176902 (n + 2)).toNat

end

end A096677.P15946674678542599399

namespace A096677

/-- `A000720(A176902(n+2))` -/
def P15946674678542599399.Spec : Prop :=
  ∀ n, P15946674678542599399.a n = A096677 (n + 1)

end A096677

/-! ## A096677.P4515465542026030326

`A061395(p?[Δ[A018252(n+1)²]])`
-/

namespace A096677.P4515465542026030326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096677.P4515465542026030326

namespace A096677

/-- `A061395(p?[Δ[A018252(n+1)²]])` -/
def P4515465542026030326.Spec : Prop :=
  ∀ n, P4515465542026030326.a n = A096677 (n + 1)

end A096677

/-! ## A096677.P8932895241671437452

`A003963(p?[A060254(n+1)])`
-/

namespace A096677.P8932895241671437452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096677.P8932895241671437452

namespace A096677

/-- `A003963(p?[A060254(n+1)])` -/
def P8932895241671437452.Spec : Prop :=
  ∀ n, P8932895241671437452.a n = A096677 (n + 1)

end A096677

/-! ## A096677.P13820625106320741633

`A026099(p?[A060254(n+1)])`
-/

namespace A096677.P13820625106320741633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026099 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096677.P13820625106320741633

namespace A096677

/-- `A026099(p?[A060254(n+1)])` -/
def P13820625106320741633.Spec : Prop :=
  ∀ n, P13820625106320741633.a n = A096677 (n + 1)

end A096677

/-! ## A096677.P12447570036866889750

`eq[0, A174950(round(acot(n)+n))]`
-/

namespace A096677.P12447570036866889750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174950 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096677.P12447570036866889750

namespace A096677

/-- `eq[0, A174950(round(acot(n)+n))]` -/
def P12447570036866889750.Spec : Prop :=
  ∀ n, (P12447570036866889750.a n : ℤ) = A096677 (n + 1)

end A096677

/-!
# A096678: A096785 indexed by A000040.

The programs for A096678, there is no canonical definition to state claims against.
-/

/-! ## A096678.P10317266370186314644

`A000720(A096785(n+1))`
-/

namespace A096678.P10317266370186314644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A096785 (n + 1)).toNat

end

end A096678.P10317266370186314644

/-! ## A096678.P9134964133107859627

`A099801(A096786(n+1))`
-/

namespace A096678.P9134964133107859627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A096786 (n + 1)).toNat

end

end A096678.P9134964133107859627

/-! ## A096678.P1039414551204802880

`A000720(p?[A130319(n+2)])`
-/

namespace A096678.P1039414551204802880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130319 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096678.P1039414551204802880

/-! ## A096678.P12694191709895603345

`A003963(p?[A130319(n+2)])`
-/

namespace A096678.P12694191709895603345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130319 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096678.P12694191709895603345

/-! ## A096678.P14792957694804448256

`A026099(p?[A130319(n+2)])`
-/

namespace A096678.P14792957694804448256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130319 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026099 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096678.P14792957694804448256

/-! ## A096678.P9783395325304717717

`A026238(p?[A130319(n+2)])`
-/

namespace A096678.P9783395325304717717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130319 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096678.P9783395325304717717

/-! ## A096678.P9884524852799141260

`A049084(p?[A130319(n+2)])`
-/

namespace A096678.P9884524852799141260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130319 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096678.P9884524852799141260

/-! ## A096678.P14498807536049822824

`A055396(p?[A130319(n+2)])`
-/

namespace A096678.P14498807536049822824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130319 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096678.P14498807536049822824

/-! ## A096678.P11542739106877667683

`A056239(p?[A130319(n+2)])`
-/

namespace A096678.P11542739106877667683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130319 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096678.P11542739106877667683

/-! ## A096678.P9895785436700097959

`A061395(p?[A130319(n+2)])`
-/

namespace A096678.P9895785436700097959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130319 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096678.P9895785436700097959

/-!
# A096679: A096787 indexed by A000040.

The programs for A096679, there is no canonical definition to state claims against.
-/

/-! ## A096679.P997370795782638092

`A000720(A096787(n+1))`
-/

namespace A096679.P997370795782638092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A096787 (n + 1)).toNat

end

end A096679.P997370795782638092

/-! ## A096679.P408206428114305793

`A003963(p?[A096787(n+1)])`
-/

namespace A096679.P408206428114305793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096679.P408206428114305793

/-! ## A096679.P9976865442615732886

`A026099(p?[A096787(n+1)])`
-/

namespace A096679.P9976865442615732886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026099 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096679.P9976865442615732886

/-! ## A096679.P17882210531451416040

`A026233(p?[A096787(n+1)])`
-/

namespace A096679.P17882210531451416040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096679.P17882210531451416040

/-! ## A096679.P12268573054409762626

`A049084(p?[A096787(n+1)])`
-/

namespace A096679.P12268573054409762626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096679.P12268573054409762626

/-! ## A096679.P2277762181082302294

`A055396(p?[A096787(n+1)])`
-/

namespace A096679.P2277762181082302294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096679.P2277762181082302294

/-! ## A096679.P16084460505784698597

`A056239(p?[A096787(n+1)])`
-/

namespace A096679.P16084460505784698597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096679.P16084460505784698597

/-! ## A096679.P7808328252854357698

`A065770(p?[A096787(n+1)])`
-/

namespace A096679.P7808328252854357698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096679.P7808328252854357698

/-! ## A096679.P5280565959655531889

`A289508(p?[A096787(n+1)])`
-/

namespace A096679.P5280565959655531889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096679.P5280565959655531889

/-! ## A096679.P10180900065236143151

`A003963(2*A096787(n+1))`
-/

namespace A096679.P10180900065236143151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A096787 (n + 1)).toNat

end

end A096679.P10180900065236143151

/-!
# A096680: A card-arranging problem: values of n such that there exists more than one permutation p_1, ..., p_n of 1, ..., n such that i + p_i is a cube for every i.

The programs for A096680, there is no canonical definition to state claims against.
-/

/-! ## A096680.P7646999633005631726

`lt[1, A096904(n+1)]+1`
-/

namespace A096680.P7646999633005631726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A096680.P7646999633005631726

/-! ## A096680.P11405683893092811600

`lt[1, A096904(A028310(n))]`
-/

namespace A096680.P11405683893092811600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096904 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A096680.P11405683893092811600

/-! ## A096680.P13925507152482465838

`lt[1, A096904(A010054(n)+n)]`
-/

namespace A096680.P13925507152482465838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096904 (A010054 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A096680.P13925507152482465838

/-! ## A096680.P16384624667752349269

`A135603(lt[A135613(3*n+2), A135646(n+1)])`
-/

namespace A096680.P16384624667752349269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135613 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A096680.P16384624667752349269

/-!
# A096681: Least k such that decimal representation of k*n contains only digits 0 and 2.

The programs for A096681, there is no canonical definition to state claims against.
-/

/-! ## A096681.P8691675091673957143

`A078241(n+1)/(n+1)`
-/

namespace A096681.P8691675091673957143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078241 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A096681.P8691675091673957143

/-! ## A096681.P5607768636980296783

`A078245(n+1)/A078242(n+1)*A079339(n+1)`
-/

namespace A096681.P5607768636980296783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078245 (n + 1) : ℚ) / (A078242 (n + 1) : ℚ) * (A079339 (n + 1) : ℚ)

end

end A096681.P5607768636980296783

/-! ## A096681.P17162197813152013510

`A096683(2*(n+1))`
-/

namespace A096681.P17162197813152013510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096683 (2 * (n + 1))

end

end A096681.P17162197813152013510

/-! ## A096681.P15988451450570874329

`A096687(4*(n+1))`
-/

namespace A096681.P15988451450570874329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096687 (4 * (n + 1))

end

end A096681.P15988451450570874329

/-! ## A096681.P14223588184639449632

`A079339(5*(n+1))`
-/

namespace A096681.P14223588184639449632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079339 (5 * (n + 1))

end

end A096681.P14223588184639449632

/-! ## A096681.P6357821577378017412

`A096682(15*(n+1))`
-/

namespace A096681.P6357821577378017412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096682 (15 * (n + 1))

end

end A096681.P6357821577378017412

/-!
# A096682: Least k such that decimal representation of k*n contains only digits 0 and 3.

The programs for A096682, there is no canonical definition to state claims against.
-/

/-! ## A096682.P17816360265465659099

`A078242(n+1)/(n+1)`
-/

namespace A096682.P17816360265465659099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078242 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A096682.P17816360265465659099

/-! ## A096682.P10500591112014727791

`A078245(n+1)/A096681(n+1)*A079339(n+1)/(n+1)`
-/

namespace A096682.P10500591112014727791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078245 (n + 1) : ℚ) / (A096681 (n + 1) : ℚ) * (A079339 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A096682.P10500591112014727791

/-! ## A096682.P7986408476871476283

`A078245(n+1)/A078241(n+1)*A079339(n+1)`
-/

namespace A096682.P7986408476871476283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078245 (n + 1) : ℚ) / (A078241 (n + 1) : ℚ) * (A079339 (n + 1) : ℚ)

end

end A096682.P7986408476871476283

/-! ## A096682.P16921802776652863745

`A078245(2*(n+1))/(2*(n+1))`
-/

namespace A096682.P16921802776652863745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078245 (2 * (n + 1)) : ℚ) / (2 * (n + 1) : ℚ)

end

end A096682.P16921802776652863745

/-! ## A096682.P4243377815819841387

`A078248(3*(n+1))/(3*(n+1))`
-/

namespace A096682.P4243377815819841387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078248 (3 * (n + 1)) : ℚ) / (3 * (n + 1) : ℚ)

end

end A096682.P4243377815819841387

/-! ## A096682.P5729340462121032855

`A079339(n+1)/A096681(n+1)*A096685(n+1)`
-/

namespace A096682.P5729340462121032855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079339 (n + 1) : ℚ) / (A096681 (n + 1) : ℚ) * (A096685 (n + 1) : ℚ)

end

end A096682.P5729340462121032855

/-!
# A096683: Least k such that decimal representation of k*n contains only digits 0 and 4.

The programs for A096683, there is no canonical definition to state claims against.
-/

/-! ## A096683.P13949728481199426551

`A078243(n+1)/(n+1)`
-/

namespace A096683.P13949728481199426551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078243 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A096683.P13949728481199426551

/-! ## A096683.P15281271724171925914

`A096687(2*(n+1))`
-/

namespace A096683.P15281271724171925914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096687 (2 * (n + 1))

end

end A096683.P15281271724171925914

/-! ## A096683.P2726264252439334523

`A096681(5*(n+1))`
-/

namespace A096683.P2726264252439334523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096681 (5 * (n + 1))

end

end A096683.P2726264252439334523

/-! ## A096683.P14504637552662325531

`A078247(2*(n+1))/(2*(n+1))`
-/

namespace A096683.P14504637552662325531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078247 (2 * (n + 1)) : ℚ) / (2 * (n + 1) : ℚ)

end

end A096683.P14504637552662325531

/-! ## A096683.P14775776735458815541

`A079339(25*(n+1))`
-/

namespace A096683.P14775776735458815541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079339 (25 * (n + 1))

end

end A096683.P14775776735458815541

/-! ## A096683.P17105269531801447870

`A096682(75*(n+1))`
-/

namespace A096683.P17105269531801447870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096682 (75 * (n + 1))

end

end A096683.P17105269531801447870

/-!
# A096684: Least k such that decimal representation of k*n contains only digits 0 and 5.

The programs for A096684, there is no canonical definition to state claims against.
-/

/-! ## A096684.P1640087025506771970

`A078244(n+1)/(n+1)`
-/

namespace A096684.P1640087025506771970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078244 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A096684.P1640087025506771970

/-! ## A096684.P13803299101782854765

`A079339(2*(n+1))`
-/

namespace A096684.P13803299101782854765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079339 (2 * (n + 1))

end

end A096684.P13803299101782854765

/-! ## A096684.P12514443617074094908

`A096681(4*(n+1))`
-/

namespace A096684.P12514443617074094908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096681 (4 * (n + 1))

end

end A096684.P12514443617074094908

/-! ## A096684.P15435241761566162350

`A096682(6*(n+1))`
-/

namespace A096684.P15435241761566162350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096682 (6 * (n + 1))

end

end A096684.P15435241761566162350

/-! ## A096684.P15317661500505648503

`A096683(8*(n+1))`
-/

namespace A096684.P15317661500505648503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096683 (8 * (n + 1))

end

end A096684.P15317661500505648503

/-!
# A096685: Least k such that decimal representation of k*n contains only digits 0 and 6.

The programs for A096685, there is no canonical definition to state claims against.
-/

/-! ## A096685.P15845499971871249456

`A078245(n+1)/(n+1)`
-/

namespace A096685.P15845499971871249456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078245 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A096685.P15845499971871249456

/-! ## A096685.P5999631738887707181

`A096682(5*(n+1))`
-/

namespace A096685.P5999631738887707181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096682 (5 * (n + 1))

end

end A096685.P5999631738887707181

/-! ## A096685.P9515132120061127165

`and(-1, A096682(A008587(n+1)))`
-/

namespace A096685.P9515132120061127165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A096682 (A008587 (n + 1)).toNat)

end

end A096685.P9515132120061127165

/-! ## A096685.P3977090278967430610

`A096682(A008587(n+1))/A033999(n)²`
-/

namespace A096685.P3977090278967430610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096682 (A008587 (n + 1)).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A096685.P3977090278967430610

/-! ## A096685.P14695877262977320589

`A096682(A008587(n+1))/A087960(n)²`
-/

namespace A096685.P14695877262977320589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096682 (A008587 (n + 1)).toNat : ℚ) / (A087960 n ^ 2 : ℚ)

end

end A096685.P14695877262977320589

/-! ## A096685.P6946921621136326307

`A096682(A008587(n+1))+A000007(n+1)`
-/

namespace A096685.P6946921621136326307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096682 (A008587 (n + 1)).toNat + A000007 (n + 1)

end

end A096685.P6946921621136326307

/-! ## A096685.P6454184190491241379

`A096682(A008587(n+1))+A000038(n+1)`
-/

namespace A096685.P6454184190491241379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096682 (A008587 (n + 1)).toNat + A000038 (n + 1)

end

end A096685.P6454184190491241379

/-! ## A096685.P8499207785522655574

`A096682(A008587(n+1))%A000539(n+2)`
-/

namespace A096685.P8499207785522655574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096682 (A008587 (n + 1)).toNat) (A000539 (n + 2))

end

end A096685.P8499207785522655574

/-! ## A096685.P4496874027491907565

`A096682(A008587(n+1))/A007318(C(2, n))`
-/

namespace A096685.P4496874027491907565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096682 (A008587 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A096685.P4496874027491907565

/-! ## A096685.P605614749212103320

`A096682(A008587(n+1))^(A000040(n+2)%2)`
-/

namespace A096685.P605614749212103320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096682 (A008587 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 2)) 2 : ℤ)

end

end A096685.P605614749212103320

/-!
# A096686: Least k such that decimal representation of k*n contains only digits 0 and 7.

The programs for A096686, there is no canonical definition to state claims against.
-/

/-! ## A096686.P13946066432451677336

`A078246(n+1)/(n+1)`
-/

namespace A096686.P13946066432451677336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078246 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A096686.P13946066432451677336

/-! ## A096686.P1734517305025016134

`A050985(7*A244927(n+1))`
-/

namespace A096686.P1734517305025016134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (7 * A244927 (n + 1)).toNat

end

end A096686.P1734517305025016134

/-!
# A096687: Least k such that decimal representation of k*n contains only digits 0 and 8.

The programs for A096687, there is no canonical definition to state claims against.
-/

/-! ## A096687.P5948548850391310708

`A078247(n+1)/(n+1)`
-/

namespace A096687.P5948548850391310708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078247 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A096687.P5948548850391310708

/-! ## A096687.P9339520701072127326

`A096683(5*(n+1))`
-/

namespace A096687.P9339520701072127326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096683 (5 * (n + 1))

end

end A096687.P9339520701072127326

/-! ## A096687.P17607964372210405755

`abs(A096683(A008587(n+1))/(-1)^n)`
-/

namespace A096687.P17607964372210405755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A096683 (A008587 (n + 1)).toNat : ℚ) / ((-1) ^ n : ℚ)|

end

end A096687.P17607964372210405755

/-! ## A096687.P4402079679287254430

`A096683(A008587(n+1))+A000035(and(n, n-1))`
-/

namespace A096687.P4402079679287254430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096683 (A008587 (n + 1)).toNat + A000035 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A096687.P4402079679287254430

/-! ## A096687.P2420680035517069148

`A096683(A008587(n+1))/A001222(A059456(n+1))`
-/

namespace A096687.P2420680035517069148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096683 (A008587 (n + 1)).toNat : ℚ) / (A001222 (A059456 (n + 1)).toNat : ℚ)

end

end A096687.P2420680035517069148

/-! ## A096687.P17483340039878072571

`A096683(A008587(n+1))/A008683(A014963(n+1))²`
-/

namespace A096687.P17483340039878072571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096683 (A008587 (n + 1)).toNat : ℚ) / (A008683 (A014963 (n + 1)).toNat ^ 2 : ℚ)

end

end A096687.P17483340039878072571

/-! ## A096687.P15567631852312710459

`A096683(A008587(n+1))/A001222(A001359(n+1))`
-/

namespace A096687.P15567631852312710459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096683 (A008587 (n + 1)).toNat : ℚ) / (A001222 (A001359 (n + 1)).toNat : ℚ)

end

end A096687.P15567631852312710459

/-! ## A096687.P17814502913786688796

`2*A078243(gcd(n+1, ∑[n]))/(n+1)`
-/

namespace A096687.P17814502913786688796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A078243 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)) : ℚ) / (n + 1 : ℚ))

end

end A096687.P17814502913786688796

/-! ## A096687.P8141482021833360350

`A096681(25*(n+1))`
-/

namespace A096687.P8141482021833360350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096681 (25 * (n + 1))

end

end A096687.P8141482021833360350

/-!
# A096688: Least k such that decimal representation of k*n contains only digits 0 and 9.

The programs for A096688, there is no canonical definition to state claims against.
-/

/-! ## A096688.P4439685237818388283

`A078248(n+1)/(n+1)`
-/

namespace A096688.P4439685237818388283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078248 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A096688.P4439685237818388283

/-! ## A096688.P12013562654376214235

`A088599(lcm(9, A088599(n+1)))/(n+1)`
-/

namespace A096688.P12013562654376214235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088599 (Int.lcm 9 (A088599 (n + 1))) : ℚ) / (n + 1 : ℚ)

end

end A096688.P12013562654376214235

/-! ## A096688.P16216445910569225311

`3*A096682(A001222(5^n)+1)`
-/

namespace A096688.P16216445910569225311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A096682 (A001222 (5 ^ n) + 1).toNat

end

end A096688.P16216445910569225311

/-! ## A096688.P4132762732051780226

`A096682(A004290(n+1))*A096682(n+1)`
-/

namespace A096688.P4132762732051780226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096682 (A004290 (n + 1)).toNat * A096682 (n + 1)

end

end A096688.P4132762732051780226

/-!
# A096689: Numbers n such that 2n^2 + 3n + 3 is prime.

The programs for A096689, there is no canonical definition to state claims against.
-/

/-! ## A096689.P12668544245321087426

`A096691(n+1)*2`
-/

namespace A096689.P12668544245321087426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096691 (n + 1) * 2

end

end A096689.P12668544245321087426

/-! ## A096689.P960018408583532407

`A096691(Δ[n²]-n)+A096691(n+1)`
-/

namespace A096689.P960018408583532407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096691 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + A096691 (n + 1)

end

end A096689.P960018408583532407

/-! ## A096689.P4508405768669553266

`A005843(A096691(n+1))`
-/

namespace A096689.P4508405768669553266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A096691 (n + 1)).toNat

end

end A096689.P4508405768669553266

/-! ## A096689.P17017873334889670304

`eq[2, A174960(2*n+1)]`
-/

namespace A096689.P17017873334889670304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174960 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096689.P17017873334889670304

/-! ## A096689.P9238499993637189860

`record[n*A174960(4*n+1)]`
-/

namespace A096689.P9238499993637189860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A174960 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096689.P9238499993637189860

/-! ## A096689.P17620742859613856042

`record[4*n/A075402(4*n+1)]`
-/

namespace A096689.P17620742859613856042
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n : ℚ) / (A075402 (4 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096689.P17620742859613856042

/-! ## A096689.P17576600743056706835

`eq[A014963(A001316(n)), A075402(2*n+1)]`
-/

namespace A096689.P17576600743056706835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075402 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096689.P17576600743056706835

/-!
# A096690: k such that k-th prime is of the form 2n^2 + 3n + 3.

The programs for A096690, there is no canonical definition to state claims against.
-/

/-! ## A096690.P6358382047820903977

`A000720(p?[ceil(2/acot(n)²)-n])`
-/

namespace A096690.P6358382047820903977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉ - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096690.P6358382047820903977

/-! ## A096690.P10211625129869118943

`A061395(p?[ceil(2/acot(n)²)-n])`
-/

namespace A096690.P10211625129869118943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉ - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096690.P10211625129869118943

/-! ## A096690.P11041341283376137956

`A000720(p?[C(2*(n+1), 2)+2])`
-/

namespace A096690.P11041341283376137956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A096690.P11041341283376137956

/-! ## A096690.P2141254640140074848

`A061395(p?[C(2*(n+1), 2)+2])`
-/

namespace A096690.P2141254640140074848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A096690.P2141254640140074848

/-! ## A096690.P7476423115683613872

`A000720(p?[n*(2*n+3)+3])`
-/

namespace A096690.P7476423115683613872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n + 3) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A096690.P7476423115683613872

/-!
# A096691: Numbers n such that 8n^2 + 6n + 3 is prime.

The programs for A096691, there is no canonical definition to state claims against.
-/

/-! ## A096691.P1637450084912077468

`A096689(n+1)/2`
-/

namespace A096691.P1637450084912077468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096689 (n + 1) : ℚ) / 2

end

end A096691.P1637450084912077468

/-! ## A096691.P9821522723902252107

`A001281(A096689(n+1))`
-/

namespace A096691.P9821522723902252107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A096689 (n + 1)).toNat

end

end A096691.P9821522723902252107

/-! ## A096691.P229638669801066759

`A004526(A096689(n+1)+1)`
-/

namespace A096691.P229638669801066759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A096689 (n + 1) + 1).toNat

end

end A096691.P229638669801066759

/-! ## A096691.P12027100815380289786

`A078898(lcm(2, A096689(n+1)))`
-/

namespace A096691.P12027100815380289786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.lcm 2 (A096689 (n + 1)))

end

end A096691.P12027100815380289786

/-! ## A096691.P5575947248180643167

`A126951(A096689(n+1)+1)-1`
-/

namespace A096691.P5575947248180643167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126951 (A096689 (n + 1) + 1).toNat - 1

end

end A096691.P5575947248180643167

/-! ## A096691.P2236678300927202346

`A078898(A096689(n+1)+2)-1`
-/

namespace A096691.P2236678300927202346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A096689 (n + 1) + 2).toNat - 1

end

end A096691.P2236678300927202346

/-! ## A096691.P6384176150338277124

`A078898(A096689(n+1)%(n+1)²)`
-/

namespace A096691.P6384176150338277124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.tmod (A096689 (n + 1)) ((n + 1) ^ 2 : ℤ)).toNat

end

end A096691.P6384176150338277124

/-! ## A096691.P11542742077539088191

`eq[2, A174960(4*n+1)]`
-/

namespace A096691.P11542742077539088191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174960 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096691.P11542742077539088191

/-! ## A096691.P1067892515331539551

`eq[1, A000045(A075402(4*n+1))]`
-/

namespace A096691.P1067892515331539551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A075402 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096691.P1067892515331539551

/-! ## A096691.P13079426189295437499

`record[A005843(n)/A075402(4*n+1)]`
-/

namespace A096691.P13079426189295437499
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (A075402 (4 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096691.P13079426189295437499

/-!
# A096692: "Orders" where balanced prime number records (A082080) occur.

The programs for A096692, there is no canonical definition to state claims against.
-/

/-! ## A096692.P2939767156250270416

`eq[A086742(n), A329340(n)]`
-/

namespace A096692.P2939767156250270416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329340 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096692.P2939767156250270416

/-! ## A096692.P7292906243224359074

`eq[A086742(n), A204551(n+1)]`
-/

namespace A096692.P7292906243224359074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096692.P7292906243224359074

/-! ## A096692.P12269518044074083533

`eq[A086742(n), A119646(n+3)]`
-/

namespace A096692.P12269518044074083533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119646 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096692.P12269518044074083533

/-! ## A096692.P6256887460837373402

`A001222(A150583(n))*A028364(n)`
-/

namespace A096692.P6256887460837373402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A150583 n).toNat * A028364 n

end

end A096692.P6256887460837373402

/-! ## A096692.P8833618714424595242

`eq[A049456(n+1), A318512(A347713(n))]`
-/

namespace A096692.P8833618714424595242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318512 (A347713 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096692.P8833618714424595242

/-!
# A096693: Balance index of each prime.

The programs for A096693, there is no canonical definition to state claims against.
-/

/-! ## A096693.P9327270861604991189

`A060373(gcd(A014486(n), A201779(n+1)))`
-/

namespace A096693.P9327270861604991189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 (Int.gcd (A014486 n) (A201779 (n + 1)))

end

end A096693.P9327270861604991189

/-! ## A096693.P17776614104891016639

`A111700(A344910(n+1))`
-/

namespace A096693.P17776614104891016639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111700 (A344910 (n + 1)).toNat

end

end A096693.P17776614104891016639

/-! ## A096693.P5199332825057960595

`A070098(gcd(A000217(n), A068744(n)))`
-/

namespace A096693.P5199332825057960595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (Int.gcd (A000217 n) (A068744 n))

end

end A096693.P5199332825057960595

/-! ## A096693.P14789105077762112831

`A025441(A000040(n+1)*A060322(n+1))`
-/

namespace A096693.P14789105077762112831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (A000040 (n + 1) * A060322 (n + 1)).toNat

end

end A096693.P14789105077762112831

/-! ## A096693.P534919949836252778

`A331416(A318382(n+3)+A000009(n+3))`
-/

namespace A096693.P534919949836252778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331416 (A318382 (n + 3) + A000009 (n + 3)).toNat

end

end A096693.P534919949836252778

/-!
# A096694: Lesser of twin balanced primes (A090403).

The programs for A096694, there is no canonical definition to state claims against.
-/

/-! ## A096694.P12137093625313627366

`∩[A090403(n+1)-2, A090403(n+1)]`
-/

namespace A096694.P12137093625313627366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090403 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096694.P12137093625313627366

/-! ## A096694.P5594631880057687970

`∩[A090403(n+1), A049820(A090403(n+1))]`
-/

namespace A096694.P5594631880057687970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A090403 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096694.P5594631880057687970

/-! ## A096694.P7514429837281141659

`∩[A090403(n+1), A247015(A090403(n+4))]`
-/

namespace A096694.P7514429837281141659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247015 (A090403 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096694.P7514429837281141659

/-!
# A096695: Least balanced prime (A090403) of index n (A096693).

The programs for A096695, there is no canonical definition to state claims against.
-/

/-! ## A096695.P5691660480998771045

`A006530(ceil(2/acot(n)²)+n*10^n+1)`
-/

namespace A096695.P5691660480998771045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉ + (n * 10 ^ n + 1 : ℤ)).toNat

end

end A096695.P5691660480998771045

/-!
# A096697: Balanced primes of order five.

The programs for A096697, the canonical program `A096697.P6578855956827479310` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096697 has offset 1).

The definition of A096697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096697.P6578855956827479310

`p?[gcd(A127338(n+1), A157996(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A096697

/-- `p?[gcd(A127338(n+1), A157996(n+1))]` -/
def P6578855956827479310.Spec : Prop :=
  ∀ n, (P6578855956827479310.a n : ℤ) = A096697 (n + 1)

theorem P6578855956827479310.correct : P6578855956827479310.Spec := by
  intro n
  simp only [A096697, Nat.add_sub_cancel]

end A096697

