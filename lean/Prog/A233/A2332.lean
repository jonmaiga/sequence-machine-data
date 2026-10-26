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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A233200: Number of n X 6 0..7 arrays with no element x(i,j) adjacent to itself or value 7-x(i,j) horizontally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 4 5 and 6, 2 appearing before 3 4 and 5, and 3 appearing before 4 in row major order (unlabelled 8-colorings with no clashing color pairs).

The programs for A233200, there is no canonical definition to state claims against.
-/

/-! ## A233200.P8302299146439859276

`A233202(A374007(n+1))`
-/

namespace A233200.P8302299146439859276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (A374007 (n + 1)).toNat

end

end A233200.P8302299146439859276

/-! ## A233200.P10492721276989051740

`A233202(A133263(n+5)+4)`
-/

namespace A233200.P10492721276989051740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (A133263 (n + 5) + 4).toNat

end

end A233200.P10492721276989051740

/-! ## A233200.P7713190512125344596

`A233202(A052905(n+3))`
-/

namespace A233200.P7713190512125344596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (A052905 (n + 3)).toNat

end

end A233200.P7713190512125344596

/-! ## A233200.P7668451546546053623

`A233202(A056119(n)+16)`
-/

namespace A233200.P7668451546546053623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (A056119 n + 16).toNat

end

end A233200.P7668451546546053623

/-! ## A233200.P12962017832020122957

`A233202(eq[8, A243070(n+1)])`
-/

namespace A233200.P12962017832020122957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233200.P12962017832020122957

/-!
# A233201: 

The programs for A233201, there is no canonical definition to state claims against.
-/

/-! ## A233201.P17937902941410241900

`A233202(eq[6, A002262(n)]+1)`
-/

namespace A233201.P17937902941410241900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A233201.P17937902941410241900

/-! ## A233201.P2799145228285037652

`A233202(A055999(n+4))`
-/

namespace A233201.P2799145228285037652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233202 (A055999 (n + 4)).toNat

end

end A233201.P2799145228285037652

/-!
# A233202: T(n,k)=Number of nXk 0..7 arrays with no element x(i,j) adjacent to itself or value 7-x(i,j) horizontally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 4 5 and 6, 2 appearing before 3 4 and 5, and 3 appearing before 4 in row major order (unlabelled 8-colorings with no clashing color pairs).

The programs for A233202, there is no canonical definition to state claims against.
-/

/-! ## A233202.P15326141569633408279

`A117384(A029053(n)^3)`
-/

namespace A233202.P15326141569633408279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117384 (A029053 n ^ 3).toNat

end

end A233202.P15326141569633408279

/-! ## A233202.P3779212929780058642

`A117384(A325358(n)^3)`
-/

namespace A233202.P3779212929780058642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117384 (A325358 n ^ 3).toNat

end

end A233202.P3779212929780058642

/-! ## A233202.P4657313616847507929

`A347829(∑{e}[A350252(n), #])`
-/

namespace A233202.P4657313616847507929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347829 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A233202.P4657313616847507929

/-! ## A233202.P2820617134572759974

`A000194(11^∑[A260728(n)])`
-/

namespace A233202.P2820617134572759974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway ((11 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A233202.P2820617134572759974

/-! ## A233202.P93676899496758910

`A295084(A345760(n+1)+3)`
-/

namespace A233202.P93676899496758910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295084 (A345760 (n + 1) + 3).toNat

end

end A233202.P93676899496758910

/-!
# A233203: a(n) = floor(n^n / 2^n).

The programs for A233203, the canonical program `A233203.P2840432097546137450` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233203 has offset 0).

The definition of A233203 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^n/2^n)` (program `A233203.P2840432097546137450`, by `A233203.P2840432097546137450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233203.P2840432097546137450

`floor(n^n/2^n)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233203

/-- `floor(n^n/2^n)` -/
def P2840432097546137450.Spec : Prop :=
  ∀ n, P2840432097546137450.a n = A233203 n

theorem P2840432097546137450.correct : P2840432097546137450.Spec := by
  intro n
  simp only [A233203]

end A233203

/-! ## A233203.P16479959351771328778

`ceil((n/2)^n-n%2)`
-/

namespace A233203.P16479959351771328778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ n - ((n % 2 : ℕ) : ℚ)⌉

end

end A233203.P16479959351771328778

namespace A233203

/-- `ceil((n/2)^n-n%2)` -/
def P16479959351771328778.Spec : Prop :=
  ∀ n, P16479959351771328778.a n = A233203 n

end A233203

/-! ## A233203.P7811735367092555385

`ceil((n/2)^n-and(1, n))`
-/

namespace A233203.P7811735367092555385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ n - (Nat.land 1 n : ℚ)⌉

end

end A233203.P7811735367092555385

namespace A233203

/-- `ceil((n/2)^n-and(1, n))` -/
def P7811735367092555385.Spec : Prop :=
  ∀ n, P7811735367092555385.a n = A233203 n

end A233203

/-! ## A233203.P15403526872386688911

`ceil((n/2)^n)-A000035(n)`
-/

namespace A233203.P15403526872386688911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ n⌉ - A000035 n

end

end A233203.P15403526872386688911

namespace A233203

/-- `ceil((n/2)^n)-A000035(n)` -/
def P15403526872386688911.Spec : Prop :=
  ∀ n, P15403526872386688911.a n = A233203 n

end A233203

/-! ## A233203.P12141880320125633185

`A062283(A117625(n))`
-/

namespace A233203.P12141880320125633185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062283 (A117625 n).toNat

end

end A233203.P12141880320125633185

namespace A233203

/-- `A062283(A117625(n))` -/
def P12141880320125633185.Spec : Prop :=
  ∀ n, P12141880320125633185.a n = A233203 n

end A233203

/-!
# A233204: Number of ways to write n = k + m with 0 < k < m such that 2^k * prime(m) + 3 is prime.

The programs for A233204, there is no canonical definition to state claims against.
-/

/-! ## A233204.P12516688641721691888

`A002828(A287141(n)-A083890(n+1))`
-/

namespace A233204.P12516688641721691888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A287141 n - A083890 (n + 1)).toNat

end

end A233204.P12516688641721691888

/-!
# A233205: List of automorphism group orders of five-dimensional tilings of space by cubes.

The programs for A233205, there is no canonical definition to state claims against.
-/

/-! ## A233205.P17316430683826253479

`A029747(lt[A228717(3*n+5), ∑{digits}[n, #]+n])`
-/

namespace A233205.P17316430683826253479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228717 (3 * n + 5)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A233205.P17316430683826253479

/-! ## A233205.P11909286172538527395

`∑[∏[A003842(A202421(n+1))]]`
-/

namespace A233205.P11909286172538527395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A202421 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233205.P11909286172538527395

/-! ## A233205.P9761166412093424166

`∩[A175326(n+1), A358521(n+1)]`
-/

namespace A233205.P9761166412093424166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233205.P9761166412093424166

/-! ## A233205.P7895596030084676134

`∩[A175326(n+1), A390091(n+1)]`
-/

namespace A233205.P7895596030084676134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233205.P7895596030084676134

/-! ## A233205.P16078528906989650747

`∩[A246077(n+1), A347831(n+1)]`
-/

namespace A233205.P16078528906989650747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233205.P16078528906989650747

/-!
# A233206: Number of ways to write n = k + m (0 < k <= m) with k! + prime(m) prime.

The programs for A233206, there is no canonical definition to state claims against.
-/

/-! ## A233206.P7345035995888134809

`A321004(eq[A240021(n), A350847(n+1)])`
-/

namespace A233206.P7345035995888134809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240021 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321004 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A233206.P7345035995888134809

/-! ## A233206.P7353741156351296644

`A319443(xor(n, A003473(n+1)))`
-/

namespace A233206.P7353741156351296644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319443 (Int.xor (n : ℤ) (A003473 (n + 1))).toNat

end

end A233206.P7353741156351296644

/-! ## A233206.P17243951240394388258

`A096860(A273972(n)+A096863(n+1))`
-/

namespace A233206.P17243951240394388258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096860 (A273972 n + A096863 (n + 1)).toNat

end

end A233206.P17243951240394388258

/-! ## A233206.P17822374965906783132

`A257089(A268729(n+1)+A005169(n))`
-/

namespace A233206.P17822374965906783132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257089 (A268729 (n + 1) + A005169 n).toNat

end

end A233206.P17822374965906783132

/-!
# A233207: Triangle T(n,k), read by rows, given by T(n+k,k)=2*k*(2*n+1).

The programs for A233207, there is no canonical definition to state claims against.
-/

/-! ## A233207.P7057465495776653676

`(4*(row(n)-col(n))+2)*col(n)`
-/

namespace A233207.P7057465495776653676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + 2) * (SequenceMachineLib.triCol n : ℤ)

end

end A233207.P7057465495776653676

/-! ## A233207.P16027599200004478375

`comp[comp[∑[n]]+n]-(∑[2*n]%comp[∑[n]]-n)²`
-/

namespace A233207.P16027599200004478375
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((((∑ j ∈ Finset.range (n + 1), f4 j) % SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n : ℕ) : ℤ) - (n : ℤ)) ^ 2

end

end A233207.P16027599200004478375

/-! ## A233207.P7814718503990967685

`comp[comp[∑[n]]+n]-abs(round(sqrt(2*(n+1)))²-(2*n+1))²`
-/

namespace A233207.P7814718503990967685
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| ^ 2

end

end A233207.P7814718503990967685

/-! ## A233207.P5579201030587994933

`A004247(∑[char[∑[n]]]²+2*n)`
-/

namespace A233207.P5579201030587994933
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2 * n)

end

end A233207.P5579201030587994933

/-! ## A233207.P912020474277452092

`2*(2*(C(comp[∑[n]]-n, 2)-n)-1)*A002262(n)`
-/

namespace A233207.P912020474277452092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1) * A002262 n)

end

end A233207.P912020474277452092

/-! ## A233207.P7739325395214250250

`(n-C(∑[char[∑[n]]], 2))*A016825(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A233207.P7739325395214250250
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * A016825 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A233207.P7739325395214250250

/-! ## A233207.P5947389936629065885

`A002262(n)*A143370(n+1)`
-/

namespace A233207.P5947389936629065885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A143370 (n + 1)

end

end A233207.P5947389936629065885

/-! ## A233207.P16626020447455774985

`2*(A141387(n)-A025581(n))`
-/

namespace A233207.P16626020447455774985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A141387 n - A025581 n)

end

end A233207.P16626020447455774985

/-! ## A233207.P9549085805007279792

`2*A002262(n)*A099375(n)`
-/

namespace A233207.P9549085805007279792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002262 n * A099375 n)

end

end A233207.P9549085805007279792

/-! ## A233207.P6144649783931643338

`log2(A059268(n)²)*A099375(n)`
-/

namespace A233207.P6144649783931643338
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n ^ 2 : ℝ) * (A099375 n : ℝ)

end

end A233207.P6144649783931643338

/-!
# A233208: A measure of quality (the higher the better) for the approximation to e by rationals A022852(n)/n.

The programs for A233208, the canonical program `A233208.P7410561698926400389` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233208 has offset 1).

The definition of A233208 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233208.P7410561698926400389

`floor(1/abs((n+1)*e-A022852(n+1)))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A233208

/-- `floor(1/abs((n+1)*e-A022852(n+1)))` -/
def P7410561698926400389.Spec : Prop :=
  ∀ n, P7410561698926400389.a n = A233208 (n + 1)

theorem P7410561698926400389.correct : P7410561698926400389.Spec := by
  intro n
  simp only [A233208, Nat.add_sub_cancel]

end A233208

/-!
# A233209: Records in A233208.

The programs for A233209, there is no canonical definition to state claims against.
-/

/-! ## A233209.P11451151403226010305

`record[A233208(n+1)]`
-/

namespace A233209.P11451151403226010305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233209.P11451151403226010305

/-! ## A233209.P6058394851660243312

`A233208(record[A113874(n)])`
-/

namespace A233209.P6058394851660243312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233208 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A233209.P6058394851660243312

/-! ## A233209.P15484456451813775893

`A233208(A007677(n+1))`
-/

namespace A233209.P15484456451813775893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233208 (A007677 (n + 1)).toNat

end

end A233209.P15484456451813775893

/-!
# A233210: Number of n X n 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233210, there is no canonical definition to state claims against.
-/

/-! ## A233210.P2279099421715555867

`A233217((n+1)²+n²)`
-/

namespace A233210.P2279099421715555867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 ((n + 1) ^ 2 + n ^ 2)

end

end A233210.P2279099421715555867

/-!
# A233211: Number of n X 2 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233211, there is no canonical definition to state claims against.
-/

/-! ## A233211.P4756006176293305544

`35*a(n-1)-259*a(n-2)+225*a(n-3)` with `a(0)=2, a(1)=23, a(2)=452`
-/

namespace A233211.P4756006176293305544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 23, 452] fun n a =>
  35 * a (n - 1) - 259 * a (n - 2) + 225 * a (n - 3)

end

end A233211.P4756006176293305544

/-! ## A233211.P3395430325525919770

`A087439(2*n)+1`
-/

namespace A233211.P3395430325525919770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087439 (2 * n) + 1

end

end A233211.P3395430325525919770

/-! ## A233211.P13840868811342513765

`A233106(2*(n+1))`
-/

namespace A233211.P13840868811342513765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233106 (2 * (n + 1))

end

end A233211.P13840868811342513765

/-! ## A233211.P15045923126213112591

`record[A233106(xor(1, n)+1)]`
-/

namespace A233211.P15045923126213112591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233106 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233211.P15045923126213112591

/-! ## A233211.P5996708530252428861

`ceil(A146086(2*n+1)/2)`
-/

namespace A233211.P5996708530252428861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A146086 (2 * n + 1) : ℚ) / 2⌉

end

end A233211.P5996708530252428861

/-! ## A233211.P4424057411272999815

`A185055(2*n+1)+A164039(2*n+1)`
-/

namespace A233211.P4424057411272999815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185055 (2 * n + 1) + A164039 (2 * n + 1)

end

end A233211.P4424057411272999815

/-! ## A233211.P12449089663411023585

`A047850(2*n+1)-A007798(2*n+1)/2`
-/

namespace A233211.P12449089663411023585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047850 (2 * n + 1) : ℚ) - (A007798 (2 * n + 1) : ℚ) / 2

end

end A233211.P12449089663411023585

/-! ## A233211.P2465943727151280859

`(75+10*9^(n+1)+3*25^(n+1))/120`
-/

namespace A233211.P2465943727151280859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (75 + 10 * 9 ^ (n + 1) + 3 * 25 ^ (n + 1) : ℚ) / 120

end

end A233211.P2465943727151280859

/-!
# A233212: Number of n X 3 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233212, there is no canonical definition to state claims against.
-/

/-! ## A233212.P9357141150213141600

`A233217(∑[n+3]+1)`
-/

namespace A233212.P9357141150213141600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233212.P9357141150213141600

/-! ## A233212.P1205320035682217152

`record[A233217(A198464(n+1))]`
-/

namespace A233212.P1205320035682217152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233212.P1205320035682217152

/-! ## A233212.P5587605173431640974

`A184303(n+1)*A233217(A034856(n+2))`
-/

namespace A233212.P5587605173431640974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (n + 1) * A233217 (A034856 (n + 2)).toNat

end

end A233212.P5587605173431640974

/-! ## A233212.P13730953663574987041

`A080732(n+1)!*A233217(A034856(n+2))`
-/

namespace A233212.P13730953663574987041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A080732 (n + 1)).toNat : ℤ) * A233217 (A034856 (n + 2)).toNat

end

end A233212.P13730953663574987041

/-!
# A233213: Number of n X 4 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233213, there is no canonical definition to state claims against.
-/

/-! ## A233213.P2735710847477478753

`A233218(2*(n+1))`
-/

namespace A233213.P2735710847477478753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233218 (2 * (n + 1))

end

end A233213.P2735710847477478753

/-! ## A233213.P2890500273875534932

`A233217(A141214(n+1))`
-/

namespace A233213.P2890500273875534932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (A141214 (n + 1)).toNat

end

end A233213.P2890500273875534932

/-!
# A233214: Number of nX5 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233214, there is no canonical definition to state claims against.
-/

/-! ## A233214.P13554048990961807152

`A233217(Δ[A264443(n)])`
-/

namespace A233214.P13554048990961807152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (f1 (n + 1) - f1 n).toNat

end

end A233214.P13554048990961807152

/-! ## A233214.P14700434265082762802

`A233217(A052905(n+2)+1)`
-/

namespace A233214.P14700434265082762802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (A052905 (n + 2) + 1).toNat

end

end A233214.P14700434265082762802

/-! ## A233214.P2555726605121462918

`A233217(A264443(n+1)-A264443(n))`
-/

namespace A233214.P2555726605121462918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (A264443 (n + 1) - A264443 n).toNat

end

end A233214.P2555726605121462918

/-!
# A233216: 

The programs for A233216, there is no canonical definition to state claims against.
-/

/-! ## A233216.P4396156661935617595

`A233217(A055999(n+4))`
-/

namespace A233216.P4396156661935617595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (A055999 (n + 4)).toNat

end

end A233216.P4396156661935617595

/-! ## A233216.P2999104040157887150

`A233217(A141214(n+4)-3)`
-/

namespace A233216.P2999104040157887150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (A141214 (n + 4) - 3).toNat

end

end A233216.P2999104040157887150

/-! ## A233216.P12191046224566593568

`A233217(A000124(n+6)+n)`
-/

namespace A233216.P12191046224566593568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (A000124 (n + 6) + (n : ℤ)).toNat

end

end A233216.P12191046224566593568

/-!
# A233218: Number of 2 X n 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233218, there is no canonical definition to state claims against.
-/

/-! ## A233218.P7929786959852182034

`A233217(∑[n+1]+2)`
-/

namespace A233218.P7929786959852182034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233218.P7929786959852182034

/-! ## A233218.P11049976147593523320

`A233217(A133263(n+1))%A232979(n)`
-/

namespace A233218.P11049976147593523320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233217 (A133263 (n + 1)).toNat) (A232979 n)

end

end A233218.P11049976147593523320

/-!
# A233219: Number of 3Xn 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233219, there is no canonical definition to state claims against.
-/

/-! ## A233219.P7823927020275924812

`A233217(∑[n+2]+4)`
-/

namespace A233219.P7823927020275924812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233219.P7823927020275924812

/-! ## A233219.P12040393314436289267

`A233217(A167614(n+1))+A025439(n)`
-/

namespace A233219.P12040393314436289267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (A167614 (n + 1)).toNat + A025439 n

end

end A233219.P12040393314436289267

/-! ## A233219.P752966773802658304

`or(A000007(n), A233217(A167614(n+1)))`
-/

namespace A233219.P752966773802658304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A233217 (A167614 (n + 1)).toNat)

end

end A233219.P752966773802658304

/-! ## A233219.P14297092991169384259

`A233217(A167614(n+1))+A198255(n+1)`
-/

namespace A233219.P14297092991169384259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (A167614 (n + 1)).toNat + A198255 (n + 1)

end

end A233219.P14297092991169384259

/-! ## A233219.P10634180417514125466

`A233217(A167614(n+1))%A208794(n+1)`
-/

namespace A233219.P10634180417514125466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233217 (A167614 (n + 1)).toNat) (A208794 (n + 1))

end

end A233219.P10634180417514125466

/-!
# A233220: Number of 4Xn 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233220, there is no canonical definition to state claims against.
-/

/-! ## A233220.P8854921904324950394

`A233217(A145018(n+4))`
-/

namespace A233220.P8854921904324950394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (A145018 (n + 4)).toNat

end

end A233220.P8854921904324950394

/-! ## A233220.P2266058373900363033

`A233217(A141214(n)+7)`
-/

namespace A233220.P2266058373900363033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (A141214 n + 7).toNat

end

end A233220.P2266058373900363033

/-! ## A233220.P15104586643278185372

`A233217(A052905(n)+9)`
-/

namespace A233220.P15104586643278185372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (A052905 n + 9).toNat

end

end A233220.P15104586643278185372

/-! ## A233220.P5454807243473541644

`A233217(A055999(n)+10)`
-/

namespace A233220.P5454807243473541644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (A055999 n + 10).toNat

end

end A233220.P5454807243473541644

/-! ## A233220.P10432399043568929727

`A233217(A167614(n+2)+1)`
-/

namespace A233220.P10432399043568929727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (A167614 (n + 2) + 1).toNat

end

end A233220.P10432399043568929727

/-!
# A233221: Number of 5Xn 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233221, there is no canonical definition to state claims against.
-/

/-! ## A233221.P17152146050238495739

`A233217(A155212(n)+13)`
-/

namespace A233221.P17152146050238495739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (A155212 n + 13).toNat

end

end A233221.P17152146050238495739

/-!
# A233222: 

The programs for A233222, there is no canonical definition to state claims against.
-/

/-! ## A233222.P11462048698841455616

`A233217(A133263(n+5)+4)`
-/

namespace A233222.P11462048698841455616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (A133263 (n + 5) + 4).toNat

end

end A233222.P11462048698841455616

/-!
# A233223: 

The programs for A233223, there is no canonical definition to state claims against.
-/

/-! ## A233223.P12763506110496370065

`A233217(eq[6, A002262(n)]+1)`
-/

namespace A233223.P12763506110496370065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A233223.P12763506110496370065

/-!
# A233224: Number of n X 2 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally, diagonally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233224, there is no canonical definition to state claims against.
-/

/-! ## A233224.P10781407663128705027

`A233230(∑[n+1]+2)`
-/

namespace A233224.P10781407663128705027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233224.P10781407663128705027

/-! ## A233224.P890170148412955388

`A233230(A133263(n+1))+A151933(n+1)`
-/

namespace A233224.P890170148412955388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (A133263 (n + 1)).toNat + A151933 (n + 1)

end

end A233224.P890170148412955388

/-! ## A233224.P14702478956419352325

`A233230(A133263(n+1))+A063524(2*n)`
-/

namespace A233224.P14702478956419352325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (A133263 (n + 1)).toNat + A063524 (2 * n)

end

end A233224.P14702478956419352325

/-! ## A233224.P18147377754319156661

`A233230(A133263(n+1))%A233225(n+1)`
-/

namespace A233224.P18147377754319156661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233230 (A133263 (n + 1)).toNat) (A233225 (n + 1))

end

end A233224.P18147377754319156661

/-! ## A233224.P13896380417908034895

`record[A233230(A000096(val(n+1, 2)+1))]`
-/

namespace A233224.P13896380417908034895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233224.P13896380417908034895

/-!
# A233225: Number of nX3 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally, diagonally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233225, there is no canonical definition to state claims against.
-/

/-! ## A233225.P14908351454909712719

`A233230(∑[n+2]+4)`
-/

namespace A233225.P14908351454909712719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233225.P14908351454909712719

/-! ## A233225.P2473758310432977058

`lcm((-1)^n, A233230(A167614(n+1)))`
-/

namespace A233225.P2473758310432977058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A233230 (A167614 (n + 1)).toNat)

end

end A233225.P2473758310432977058

/-! ## A233225.P12996275871272898595

`A014908(n)*A233230(A167614(n+1))`
-/

namespace A233225.P12996275871272898595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014908 n * A233230 (A167614 (n + 1)).toNat

end

end A233225.P12996275871272898595

/-! ## A233225.P8901950859371906215

`A233230(A167614(n+1))*A280865(n)`
-/

namespace A233225.P8901950859371906215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (A167614 (n + 1)).toNat * A280865 n

end

end A233225.P8901950859371906215

/-! ## A233225.P18143960869878448298

`A233230(A167614(n+1))+A159075(2*n)`
-/

namespace A233225.P18143960869878448298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (A167614 (n + 1)).toNat + A159075 (2 * n)

end

end A233225.P18143960869878448298

/-!
# A233226: Number of nX4 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally, diagonally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233226, there is no canonical definition to state claims against.
-/

/-! ## A233226.P14665161227755903734

`A233230(A374004(n+1))`
-/

namespace A233226.P14665161227755903734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (A374004 (n + 1)).toNat

end

end A233226.P14665161227755903734

/-! ## A233226.P15594811731807829469

`A233230(A052905(n)+9)`
-/

namespace A233226.P15594811731807829469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (A052905 n + 9).toNat

end

end A233226.P15594811731807829469

/-! ## A233226.P3555307074878403260

`A233230(A055999(n)+10)`
-/

namespace A233226.P3555307074878403260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (A055999 n + 10).toNat

end

end A233226.P3555307074878403260

/-! ## A233226.P8473291554988253131

`A233230(A167614(n+2)+1)`
-/

namespace A233226.P8473291554988253131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (A167614 (n + 2) + 1).toNat

end

end A233226.P8473291554988253131

/-! ## A233226.P6321718231772100904

`A233230(A141214(n+1))`
-/

namespace A233226.P6321718231772100904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (A141214 (n + 1)).toNat

end

end A233226.P6321718231772100904

/-!
# A233227: Number of nX5 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally, diagonally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233227, there is no canonical definition to state claims against.
-/

/-! ## A233227.P15332452341561787126

`A233230(A374005(n+1))`
-/

namespace A233227.P15332452341561787126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (A374005 (n + 1)).toNat

end

end A233227.P15332452341561787126

/-! ## A233227.P3512837635324169980

`A233230(A155212(n)+13)`
-/

namespace A233227.P3512837635324169980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (A155212 n + 13).toNat

end

end A233227.P3512837635324169980

/-! ## A233227.P11302747684814773349

`A233230(A052905(n+1)+10)`
-/

namespace A233227.P11302747684814773349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (A052905 (n + 1) + 10).toNat

end

end A233227.P11302747684814773349

/-! ## A233227.P10075009910132645694

`A233230(A000217(n+5)-n)`
-/

namespace A233227.P10075009910132645694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (A000217 (n + 5) - (n : ℤ)).toNat

end

end A233227.P10075009910132645694

/-!
# A233228: Number of nX6 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally, diagonally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233228, there is no canonical definition to state claims against.
-/

/-! ## A233228.P14703692244805307615

`A233230(A374007(n+1))`
-/

namespace A233228.P14703692244805307615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (A374007 (n + 1)).toNat

end

end A233228.P14703692244805307615

/-! ## A233228.P13459818585565749205

`A233230(A167499(n+4)+1)`
-/

namespace A233228.P13459818585565749205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (A167499 (n + 4) + 1).toNat

end

end A233228.P13459818585565749205

/-! ## A233228.P16931497056471327300

`A233230(A052905(n+3))`
-/

namespace A233228.P16931497056471327300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (A052905 (n + 3)).toNat

end

end A233228.P16931497056471327300

/-! ## A233228.P3546297575012182043

`A233230(Δ[Δ[A006504(n+1)]])`
-/

namespace A233228.P3546297575012182043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (f1 (n + 1) - f1 n).toNat

end

end A233228.P3546297575012182043

/-! ## A233228.P246293134692078303

`A233230(A000217(n+5)+1+n)`
-/

namespace A233228.P246293134692078303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (A000217 (n + 5) + 1 + (n : ℤ)).toNat

end

end A233228.P246293134692078303

/-!
# A233229: 

The programs for A233229, there is no canonical definition to state claims against.
-/

/-! ## A233229.P15990473971361373735

`A233230(A167499(n+5)+2)`
-/

namespace A233229.P15990473971361373735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233230 (A167499 (n + 5) + 2).toNat

end

end A233229.P15990473971361373735

/-!
# A233230: T(n,k)=Number of nXk 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally, diagonally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233230, there is no canonical definition to state claims against.
-/

/-! ## A233230.P1504502257868176513

`A238451(A242818(n))+A208960(n+1)`
-/

namespace A233230.P1504502257868176513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238451 (A242818 n).toNat + A208960 (n + 1)

end

end A233230.P1504502257868176513

/-!
# A233231: a(n) = 10*a(n-3) - a(n-6) + 4 for n>5, a(0)=2, a(1)=3, a(2)=5, a(3)=12, a(4)=29, a(5)=51.

The programs for A233231, the canonical program `A233231.P12501250414486615956` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233231 has offset 0).

The definition of A233231 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-3)-a(n-6)+4` (program `A233231.P12501250414486615956`, by `A233231.P12501250414486615956.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233231.P12501250414486615956

`10*a(n-3)-a(n-6)+4` with `a(0)=2, a(1)=3, a(2)=5, a(3)=12, a(4)=29, a(5)=51`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233231

/-- `10*a(n-3)-a(n-6)+4` -/
def P12501250414486615956.Spec : Prop :=
  ∀ n, P12501250414486615956.a n = A233231 n

theorem P12501250414486615956.correct : P12501250414486615956.Spec := by
  intro n
  simp only [A233231]

end A233231

/-! ## A233231.P498698448609942148

`floor(A106330(n+1)/2)`
-/

namespace A233231.P498698448609942148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A106330 (n + 1) : ℚ) / 2⌋

end

end A233231.P498698448609942148

namespace A233231

/-- `floor(A106330(n+1)/2)` -/
def P498698448609942148.Spec : Prop :=
  ∀ n, P498698448609942148.a n = A233231 n

end A233231

/-! ## A233231.P12179815162689026958

`xor(1, A106330(n+1))/A000034(2*n+1)`
-/

namespace A233231.P12179815162689026958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A106330 (n + 1)) : ℚ) / (A000034 (2 * n + 1) : ℚ)

end

end A233231.P12179815162689026958

namespace A233231

/-- `xor(1, A106330(n+1))/A000034(2*n+1)` -/
def P12179815162689026958.Spec : Prop :=
  ∀ n, P12179815162689026958.a n = (A233231 n : ℚ)

end A233231

/-! ## A233231.P2586866255488972667

`xor(1, A106330(n+1))/A014710(A022144(n))`
-/

namespace A233231.P2586866255488972667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A106330 (n + 1)) : ℚ) / (A014710 (A022144 n).toNat : ℚ)

end

end A233231.P2586866255488972667

namespace A233231

/-- `xor(1, A106330(n+1))/A014710(A022144(n))` -/
def P2586866255488972667.Spec : Prop :=
  ∀ n, P2586866255488972667.a n = (A233231 n : ℚ)

end A233231

/-! ## A233231.P17765212948700018418

`xor(1, A106330(n+1))/A020639(A175462(n))`
-/

namespace A233231.P17765212948700018418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A106330 (n + 1)) : ℚ) / (A020639 (A175462 n).toNat : ℚ)

end

end A233231.P17765212948700018418

namespace A233231

/-- `xor(1, A106330(n+1))/A020639(A175462(n))` -/
def P17765212948700018418.Spec : Prop :=
  ∀ n, P17765212948700018418.a n = (A233231 n : ℚ)

end A233231

/-! ## A233231.P10684430652884113346

`xor(1, A106330(n+1))/A000005(A001359(n+1))`
-/

namespace A233231.P10684430652884113346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A106330 (n + 1)) : ℚ) / (A000005 (A001359 (n + 1)).toNat : ℚ)

end

end A233231.P10684430652884113346

namespace A233231

/-- `xor(1, A106330(n+1))/A000005(A001359(n+1))` -/
def P10684430652884113346.Spec : Prop :=
  ∀ n, P10684430652884113346.a n = (A233231 n : ℚ)

end A233231

/-! ## A233231.P15362419723061307107

`xor(1, A106330(n+1))/A020639(A001747(n+1))`
-/

namespace A233231.P15362419723061307107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A106330 (n + 1)) : ℚ) / (A020639 (A001747 (n + 1)).toNat : ℚ)

end

end A233231.P15362419723061307107

namespace A233231

/-- `xor(1, A106330(n+1))/A020639(A001747(n+1))` -/
def P15362419723061307107.Spec : Prop :=
  ∀ n, P15362419723061307107.a n = (A233231 n : ℚ)

end A233231

/-! ## A233231.P11794050105034558124

`xor(1, A106330(n+1))/A098008(A060264(n))`
-/

namespace A233231.P11794050105034558124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A106330 (n + 1)) : ℚ) / (A098008 (A060264 n).toNat : ℚ)

end

end A233231.P11794050105034558124

namespace A233231

/-- `xor(1, A106330(n+1))/A098008(A060264(n))` -/
def P11794050105034558124.Spec : Prop :=
  ∀ n, P11794050105034558124.a n = (A233231 n : ℚ)

end A233231

/-! ## A233231.P6045523070461099648

`xor(1, A106330(n+1))/A014710(n²)`
-/

namespace A233231.P6045523070461099648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A106330 (n + 1)) : ℚ) / (A014710 (n ^ 2) : ℚ)

end

end A233231.P6045523070461099648

namespace A233231

/-- `xor(1, A106330(n+1))/A014710(n²)` -/
def P6045523070461099648.Spec : Prop :=
  ∀ n, P6045523070461099648.a n = (A233231 n : ℚ)

end A233231

/-! ## A233231.P8494246906673823242

`xor(1, A106330(n+1))/A001222(A001248(n+1))`
-/

namespace A233231.P8494246906673823242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A106330 (n + 1)) : ℚ) / (A001222 (A001248 (n + 1)).toNat : ℚ)

end

end A233231.P8494246906673823242

namespace A233231

/-- `xor(1, A106330(n+1))/A001222(A001248(n+1))` -/
def P8494246906673823242.Spec : Prop :=
  ∀ n, P8494246906673823242.a n = (A233231 n : ℚ)

end A233231

/-!
# A233232: Primes p such that a Heronian triangle with a fixed side length of 5 contains p as another side length.

The programs for A233232, there is no canonical definition to state claims against.
-/

/-! ## A233232.P4486879979796256954

`p?[or(1, A233231(n+1))]`
-/

namespace A233232.P4486879979796256954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A233231 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A233232.P4486879979796256954

/-! ## A233232.P9242362195251585724

`record[A020639(or(1, A233231(n)))]`
-/

namespace A233232.P9242362195251585724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (A233231 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233232.P9242362195251585724

/-!
# A233233: Number of n X n 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233233, there is no canonical definition to state claims against.
-/

/-! ## A233233.P17042608584605618276

`A233239(∑[4*n]+1)`
-/

namespace A233233.P17042608584605618276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233233.P17042608584605618276

/-!
# A233234: Number of n X 3 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233234, there is no canonical definition to state claims against.
-/

/-! ## A233234.P4885005417705560457

`A233239(∑[n+3]+1)`
-/

namespace A233234.P4885005417705560457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233234.P4885005417705560457

/-! ## A233234.P16903972139123149381

`A233239(A055999(n)+4)+A000038(n+1)`
-/

namespace A233234.P16903972139123149381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (A055999 n + 4).toNat + A000038 (n + 1)

end

end A233234.P16903972139123149381

/-! ## A233234.P14674159002657983753

`A233239(A055999(n)+4)%A233226(n+1)`
-/

namespace A233234.P14674159002657983753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233239 (A055999 n + 4).toNat) (A233226 (n + 1))

end

end A233234.P14674159002657983753

/-! ## A233234.P2635377835431762139

`gcd(3, A098820(n))*A233239(A055999(n)+4)`
-/

namespace A233234.P2635377835431762139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A098820 n) : ℤ) * A233239 (A055999 n + 4).toNat

end

end A233234.P2635377835431762139

/-! ## A233234.P14969947704489630659

`A233239(A055999(n)+4)^A001221(A330563(n+1))`
-/

namespace A233234.P14969947704489630659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233239 (A055999 n + 4).toNat : ℚ) ^ (A001221 (A330563 (n + 1)).toNat : ℤ)

end

end A233234.P14969947704489630659

/-!
# A233235: Number of nX4 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233235, there is no canonical definition to state claims against.
-/

/-! ## A233235.P14528544469400884842

`A233239(A141214(n+1))`
-/

namespace A233235.P14528544469400884842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (A141214 (n + 1)).toNat

end

end A233235.P14528544469400884842

/-! ## A233235.P11809047356295526542

`A233239(A155212(n)+5)`
-/

namespace A233235.P11809047356295526542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (A155212 n + 5).toNat

end

end A233235.P11809047356295526542

/-! ## A233235.P1960087665453235607

`A233239(A056000(n)+7)`
-/

namespace A233235.P1960087665453235607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (A056000 n + 7).toNat

end

end A233235.P1960087665453235607

/-! ## A233235.P17226544444787399524

`A233239(eq[3, A193592(n)])`
-/

namespace A233235.P17226544444787399524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233235.P17226544444787399524

/-! ## A233235.P14878486199117364263

`A233239(eq[4, A166065(n)])`
-/

namespace A233235.P14878486199117364263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233235.P14878486199117364263

/-!
# A233236: Number of nX5 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233236, there is no canonical definition to state claims against.
-/

/-! ## A233236.P14313345457399737276

`A233239(Δ[A264443(n)])`
-/

namespace A233236.P14313345457399737276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (f1 (n + 1) - f1 n).toNat

end

end A233236.P14313345457399737276

/-! ## A233236.P12100638236244673765

`A233239(eq[2, A092921(n)])`
-/

namespace A233236.P12100638236244673765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233236.P12100638236244673765

/-! ## A233236.P12332039546592379069

`A233239(eq[2, A193592(n)-2])`
-/

namespace A233236.P12332039546592379069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233236.P12332039546592379069

/-!
# A233238: 

The programs for A233238, there is no canonical definition to state claims against.
-/

/-! ## A233238.P9622369117093965245

`A233239(A055999(n+4))`
-/

namespace A233238.P9622369117093965245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (A055999 (n + 4)).toNat

end

end A233238.P9622369117093965245

/-!
# A233240: Number of 2 X n 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233240, there is no canonical definition to state claims against.
-/

/-! ## A233240.P4663933676129886697

`A233239(∑[n+1]+2)`
-/

namespace A233240.P4663933676129886697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233240.P4663933676129886697

/-! ## A233240.P3531457616913364689

`record[A185018(n)*A233239(n+3)]`
-/

namespace A233240.P3531457616913364689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185018 n * A233239 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233240.P3531457616913364689

/-! ## A233240.P3840661526858289571

`record[gcd(A233239(n+3), A257783(n+1))]`
-/

namespace A233240.P3840661526858289571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A233239 (n + 3)) (A257783 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233240.P3840661526858289571

/-!
# A233241: Number of 3Xn 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233241, there is no canonical definition to state claims against.
-/

/-! ## A233241.P6004857512269931008

`A233239(∑[n+2]+4)`
-/

namespace A233241.P6004857512269931008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233241.P6004857512269931008

/-! ## A233241.P5702007384348054708

`lcm((-1)^n, A233239(A167614(n+1)))`
-/

namespace A233241.P5702007384348054708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A233239 (A167614 (n + 1)).toNat)

end

end A233241.P5702007384348054708

/-! ## A233241.P12147583914411377346

`record[A233239(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A233241.P12147583914411377346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233241.P12147583914411377346

/-! ## A233241.P6814012039394428727

`A233239(A167614(n+1))+A178798(n)`
-/

namespace A233241.P6814012039394428727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (A167614 (n + 1)).toNat + A178798 n

end

end A233241.P6814012039394428727

/-! ## A233241.P4891435809630241222

`A233239(A167614(n+1))+A180649(n)`
-/

namespace A233241.P4891435809630241222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (A167614 (n + 1)).toNat + A180649 n

end

end A233241.P4891435809630241222

/-!
# A233242: Number of 4Xn 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233242, there is no canonical definition to state claims against.
-/

/-! ## A233242.P12278231634331740934

`A233239(A141214(n)+7)`
-/

namespace A233242.P12278231634331740934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (A141214 n + 7).toNat

end

end A233242.P12278231634331740934

/-! ## A233242.P13139406062659827537

`A233239(A052905(n)+9)`
-/

namespace A233242.P13139406062659827537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (A052905 n + 9).toNat

end

end A233242.P13139406062659827537

/-! ## A233242.P15157602877782269913

`A233239(A055999(n)+10)`
-/

namespace A233242.P15157602877782269913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (A055999 n + 10).toNat

end

end A233242.P15157602877782269913

/-! ## A233242.P7470114370320792801

`A233239(A167614(n+2)+1)`
-/

namespace A233242.P7470114370320792801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (A167614 (n + 2) + 1).toNat

end

end A233242.P7470114370320792801

/-! ## A233242.P7616080749336735818

`A233239(Δ[A264443(n)-n²])`
-/

namespace A233242.P7616080749336735818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (f1 (n + 1) - f1 n).toNat

end

end A233242.P7616080749336735818

/-!
# A233243: Number of 5Xn 0..5 arrays with no element x(i,j) adjacent to value 5-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order.

The programs for A233243, there is no canonical definition to state claims against.
-/

/-! ## A233243.P3907211612282459705

`A233239(A155212(n)+13)`
-/

namespace A233243.P3907211612282459705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (A155212 n + 13).toNat

end

end A233243.P3907211612282459705

/-!
# A233244: 

The programs for A233244, there is no canonical definition to state claims against.
-/

/-! ## A233244.P74722516098322384

`A233239(A133263(n+5)+4)`
-/

namespace A233244.P74722516098322384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233239 (A133263 (n + 5) + 4).toNat

end

end A233244.P74722516098322384

/-!
# A233246: Sum of squares of cycle lengths for different cycles in Fibonacci-like sequences modulo n.

The programs for A233246, there is no canonical definition to state claims against.
-/

/-! ## A233246.P13479824846120733759

`and(A164783(n+1), A325407(A325410(n+3)))`
-/

namespace A233246.P13479824846120733759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164783 (n + 1)) (A325407 (A325410 (n + 3)).toNat)

end

end A233246.P13479824846120733759

/-!
# A233247: Expansion of ( 1-x^3-x^2 ) / ( (x^3-x^2-1)*(x^3+2*x^2+x-1) ).

The programs for A233247, the canonical program `A233247.P1882152071073204607` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233247 has offset 0).

The definition of A233247 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2-x^3)/(1-x-x^2-3x^3-x^4+x^5+x^6))` (program `A233247.P1882152071073204607`, by `A233247.P1882152071073204607.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233247.P1882152071073204607

`ogf((1-x^2-x^3)/(1-x-x^2-3x^3-x^4+x^5+x^6))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233247

/-- `ogf((1-x^2-x^3)/(1-x-x^2-3x^3-x^4+x^5+x^6))` -/
def P1882152071073204607.Spec : Prop :=
  ∀ n, P1882152071073204607.a n = A233247 n

theorem P1882152071073204607.correct : P1882152071073204607.Spec := by
  intro n
  simp only [A233247]

end A233247

/-! ## A233247.P14585939361984691342

`A000930(n)²`
-/

namespace A233247.P14585939361984691342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n ^ 2

end

end A233247.P14585939361984691342

namespace A233247

/-- `A000930(n)²` -/
def P14585939361984691342.Spec : Prop :=
  ∀ n, P14585939361984691342.a n = A233247 n

end A233247

/-! ## A233247.P8540634526745036842

`∑[ogf((-1+x)/(-1+x+x^3))]²`
-/

namespace A233247.P8540634526745036842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -1, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A233247.P8540634526745036842

namespace A233247

/-- `∑[ogf((-1+x)/(-1+x+x^3))]²` -/
def P8540634526745036842.Spec : Prop :=
  ∀ n, P8540634526745036842.a n = A233247 n

end A233247

/-! ## A233247.P5610383002591303892

`∑[a(n-1)+a(n-3)]²` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A233247.P5610383002591303892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A233247.P5610383002591303892

namespace A233247

/-- `∑[a(n-1)+a(n-3)]²` -/
def P5610383002591303892.Spec : Prop :=
  ∀ n, (P5610383002591303892.a n : ℤ) = A233247 n

end A233247

/-! ## A233247.P14051260941634627039

`Δ[a(n-1)+a(n-3)]²` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A233247.P14051260941634627039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  f1 (n - 1) + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A233247.P14051260941634627039

namespace A233247

/-- `Δ[a(n-1)+a(n-3)]²` -/
def P14051260941634627039.Spec : Prop :=
  ∀ n, P14051260941634627039.a n = A233247 n

end A233247

/-! ## A233247.P15899435483572937366

`Δ[1-a(n-1)-a(n-3)]²` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A233247.P15899435483572937366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  1 - f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A233247.P15899435483572937366

namespace A233247

/-- `Δ[1-a(n-1)-a(n-3)]²` -/
def P15899435483572937366.Spec : Prop :=
  ∀ n, P15899435483572937366.a n = A233247 n

end A233247

/-! ## A233247.P8537290207716702424

`A199804(n)²`
-/

namespace A233247.P8537290207716702424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199804 n ^ 2

end

end A233247.P8537290207716702424

namespace A233247

/-- `A199804(n)²` -/
def P8537290207716702424.Spec : Prop :=
  ∀ n, P8537290207716702424.a n = A233247 n

end A233247

/-! ## A233247.P2570041976685019964

`A224809(2*n)`
-/

namespace A233247.P2570041976685019964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224809 (2 * n)

end

end A233247.P2570041976685019964

namespace A233247

/-- `A224809(2*n)` -/
def P2570041976685019964.Spec : Prop :=
  ∀ n, P2570041976685019964.a n = A233247 n

end A233247

/-! ## A233247.P2278680835061836829

`∑[A078012(n)]²`
-/

namespace A233247.P2278680835061836829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A233247.P2278680835061836829

namespace A233247

/-- `∑[A078012(n)]²` -/
def P2278680835061836829.Spec : Prop :=
  ∀ n, P2278680835061836829.a n = A233247 n

end A233247

/-! ## A233247.P14511872379017063084

`A078012(n+3)²`
-/

namespace A233247.P14511872379017063084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 3) ^ 2

end

end A233247.P14511872379017063084

namespace A233247

/-- `A078012(n+3)²` -/
def P14511872379017063084.Spec : Prop :=
  ∀ n, P14511872379017063084.a n = A233247 n

end A233247

/-! ## A233247.P16709120603281262823

`A108104(2*n)²`
-/

namespace A233247.P16709120603281262823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (2 * n) ^ 2

end

end A233247.P16709120603281262823

namespace A233247

/-- `A108104(2*n)²` -/
def P16709120603281262823.Spec : Prop :=
  ∀ n, P16709120603281262823.a n = A233247 n

end A233247

/-! ## A233247.P14094593703415890528

`A135851(n+5)²`
-/

namespace A233247.P14094593703415890528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 5) ^ 2

end

end A233247.P14094593703415890528

namespace A233247

/-- `A135851(n+5)²` -/
def P14094593703415890528.Spec : Prop :=
  ∀ n, P14094593703415890528.a n = A233247 n

end A233247

/-! ## A233247.P6329465431536039053

`Δ[Δ[A048585(n)]]²`
-/

namespace A233247.P6329465431536039053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048585 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A233247.P6329465431536039053

namespace A233247

/-- `Δ[Δ[A048585(n)]]²` -/
def P6329465431536039053.Spec : Prop :=
  ∀ n, P6329465431536039053.a n = A233247 n

end A233247

/-! ## A233247.P7488056189484015182

`Δ[Δ[A048588(n)]]²`
-/

namespace A233247.P7488056189484015182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048588 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A233247.P7488056189484015182

namespace A233247

/-- `Δ[Δ[A048588(n)]]²` -/
def P7488056189484015182.Spec : Prop :=
  ∀ n, P7488056189484015182.a n = A233247 n

end A233247

/-! ## A233247.P13125577643246183301

`A068921(abs(1-n))²`
-/

namespace A233247.P13125577643246183301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 |1 - (n : ℤ)|.toNat ^ 2

end

end A233247.P13125577643246183301

namespace A233247

/-- `A068921(abs(1-n))²` -/
def P13125577643246183301.Spec : Prop :=
  ∀ n, P13125577643246183301.a n = A233247 n

end A233247

/-! ## A233247.P7269065168214580334

`Δ[A068921(n+1)]²`
-/

namespace A233247.P7269065168214580334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A233247.P7269065168214580334

namespace A233247

/-- `Δ[A068921(n+1)]²` -/
def P7269065168214580334.Spec : Prop :=
  ∀ n, P7269065168214580334.a n = A233247 n

end A233247

/-! ## A233247.P8054871588695829424

`Δ[record[abs(A135851(n))]]²`
-/

namespace A233247.P8054871588695829424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135851 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A233247.P8054871588695829424

namespace A233247

/-- `Δ[record[abs(A135851(n))]]²` -/
def P8054871588695829424.Spec : Prop :=
  ∀ n, P8054871588695829424.a n = A233247 n

end A233247

/-! ## A233247.P10550972706008844948

`A226916(2*n+7)²`
-/

namespace A233247.P10550972706008844948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (2 * n + 7) ^ 2

end

end A233247.P10550972706008844948

namespace A233247

/-- `A226916(2*n+7)²` -/
def P10550972706008844948.Spec : Prop :=
  ∀ n, P10550972706008844948.a n = A233247 n

end A233247

/-! ## A233247.P14361687919742891808

`Δ[Δ[A077868(n+1)]]²`
-/

namespace A233247.P14361687919742891808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A233247.P14361687919742891808

namespace A233247

/-- `Δ[Δ[A077868(n+1)]]²` -/
def P14361687919742891808.Spec : Prop :=
  ∀ n, P14361687919742891808.a n = A233247 n

end A233247

/-! ## A233247.P7847751253075835891

`(A277253(n)+A277252(n))²`
-/

namespace A233247.P7847751253075835891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A277253 n + A277252 n) ^ 2

end

end A233247.P7847751253075835891

namespace A233247

/-- `(A277253(n)+A277252(n))²` -/
def P7847751253075835891.Spec : Prop :=
  ∀ n, P7847751253075835891.a n = A233247 n

end A233247

/-!
# A233249: a(1)=0; for k >= 1, let prime(k) map to 10...0 with k-1 zeros and let prime(k)*prime(m) map to the concatenation in binary of 2^(k-1) and 2^(m-1). For n >= 2, let the prime power factorization of n be mapped to r(n). a(n) is the term in A114994 which is c-equivalent to r(n) (see there our comment).

The programs for A233249, there is no canonical definition to state claims against.
-/

/-! ## A233249.P2479811775412585200

`∑{p}[A358137(n+1), A296188(#)]`
-/

namespace A233249.P2479811775412585200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A296188 p

end

end A233249.P2479811775412585200

/-! ## A233249.P9463526665381310931

`∑{p}[A243073(A181821(n+1)), A156552(#)]`
-/

namespace A233249.P9463526665381310931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243073 (A181821 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A233249.P9463526665381310931

/-! ## A233249.P11905117421261257053

`A333221(A099849(n+1)-A335447(n+1))`
-/

namespace A233249.P11905117421261257053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333221 (A099849 (n + 1) - A335447 (n + 1)).toNat

end

end A233249.P11905117421261257053

/-! ## A233249.P17002943718987514205

`A333221(∑[A008480(n+1)]-A335447(n+1))`
-/

namespace A233249.P17002943718987514205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333221 (∑ j ∈ Finset.range (n + 1), f1 j - A335447 (n + 1)).toNat

end

end A233249.P17002943718987514205

/-! ## A233249.P17723958138681079536

`A333221(∑[A168324(n+1)]+1-A335447(n+1))`
-/

namespace A233249.P17723958138681079536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333221 (∑ j ∈ Finset.range (n + 1), f1 j + 1 - A335447 (n + 1)).toNat

end

end A233249.P17723958138681079536

/-!
# A233250: Number of n X n 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabelled 6-colorings with no clashing color pairs).

The programs for A233250, there is no canonical definition to state claims against.
-/

/-! ## A233250.P18176614882068466908

`A233256(∑[4*n]+1)`
-/

namespace A233250.P18176614882068466908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233250.P18176614882068466908

/-!
# A233251: Number of n X 3 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabelled 6-colorings with no clashing color pairs).

The programs for A233251, there is no canonical definition to state claims against.
-/

/-! ## A233251.P11290546816650058957

`8^n*(6^(n+1)+3)/3`
-/

namespace A233251.P11290546816650058957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℚ) * ((6 ^ (n + 1) + 3 : ℚ) / 3)

end

end A233251.P11290546816650058957

/-! ## A233251.P12915993103527378441

`56*a(n-1)-384*a(n-2)` with `a(0)=3, a(1)=104`
-/

namespace A233251.P12915993103527378441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 104] fun n a =>
  56 * a (n - 1) - 384 * a (n - 2)

end

end A233251.P12915993103527378441

/-! ## A233251.P1178473527131593116

`lcm(A001018(n), A199317(n))`
-/

namespace A233251.P1178473527131593116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001018 n) (A199317 n)

end

end A233251.P1178473527131593116

/-! ## A233251.P11995938483648890769

`A001018(n)+2*A009992(n)`
-/

namespace A233251.P11995938483648890769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n + 2 * A009992 n

end

end A233251.P11995938483648890769

/-! ## A233251.P13871631681534839790

`A001018(n)+A000400(n)*A013730(n)`
-/

namespace A233251.P13871631681534839790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n + A000400 n * A013730 n

end

end A233251.P13871631681534839790

/-!
# A233252: Number of n X 4 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabelled 6-colorings with no clashing color pairs).

The programs for A233252, there is no canonical definition to state claims against.
-/

/-! ## A233252.P5755816754311026445

`2^(4*(n+1)-3)*(4*9^(n+1)+9)/9`
-/

namespace A233252.P5755816754311026445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((4 * (n + 1) : ℤ) - 3 : ℤ) * ((4 * 9 ^ (n + 1) + 9 : ℚ) / 9)

end

end A233252.P5755816754311026445

/-! ## A233252.P12055424804986858343

`A233257(2*(n+1))`
-/

namespace A233252.P12055424804986858343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233257 (2 * (n + 1))

end

end A233252.P12055424804986858343

/-! ## A233252.P5577374058240288799

`A004171(2*n)+A000244(n)²*2*A004171(n)²`
-/

namespace A233252.P5577374058240288799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 (2 * n) + A000244 n ^ 2 * (2 * A004171 n ^ 2)

end

end A233252.P5577374058240288799

/-! ## A233252.P10213657095895335624

`A004171(2*n)+A000244(2*n)*A004171(2*n+1)`
-/

namespace A233252.P10213657095895335624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 (2 * n) + A000244 (2 * n) * A004171 (2 * n + 1)

end

end A233252.P10213657095895335624

/-! ## A233252.P14524669076421470362

`A233256(A141214(n+1))`
-/

namespace A233252.P14524669076421470362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (A141214 (n + 1)).toNat

end

end A233252.P14524669076421470362

/-!
# A233253: Number of n X 5 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabelled 6-colorings with no clashing color pairs).

The programs for A233253, there is no canonical definition to state claims against.
-/

/-! ## A233253.P17601462010202760789

`A233256(A046691(n+3))`
-/

namespace A233253.P17601462010202760789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (A046691 (n + 3)).toNat

end

end A233253.P17601462010202760789

/-! ## A233253.P12651703773260026884

`A233256(eq[3, A144018(n+1)])`
-/

namespace A233253.P12651703773260026884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233253.P12651703773260026884

/-! ## A233253.P17342067807757787204

`A233256(eq[6, A185782(n+1)])`
-/

namespace A233253.P17342067807757787204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233253.P17342067807757787204

/-! ## A233253.P15400958773142084123

`A233256(eq[8, A141020(n)])`
-/

namespace A233253.P15400958773142084123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233253.P15400958773142084123

/-!
# A233254: Number of n X 6 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabelled 6-colorings with no clashing color pairs).

The programs for A233254, there is no canonical definition to state claims against.
-/

/-! ## A233254.P3568347552704261664

`A233256(eq[8, A243070(n+1)])`
-/

namespace A233254.P3568347552704261664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233254.P3568347552704261664

/-! ## A233254.P10239168363735203922

`A233256(eq[16, A141020(n)])`
-/

namespace A233254.P10239168363735203922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233254.P10239168363735203922

/-!
# A233255: 

The programs for A233255, there is no canonical definition to state claims against.
-/

/-! ## A233255.P3825398521449634309

`A233256(A055999(n+4))`
-/

namespace A233255.P3825398521449634309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (A055999 (n + 4)).toNat

end

end A233255.P3825398521449634309

/-! ## A233255.P1434802971604268890

`A233256(eq[10, A185782(n+1)])`
-/

namespace A233255.P1434802971604268890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233255.P1434802971604268890

/-!
# A233257: Number of 2 X n 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabelled 6-colorings with no clashing color pairs).

The programs for A233257, there is no canonical definition to state claims against.
-/

/-! ## A233257.P6755220532725110986

`12*a(n-1)-4^n` with `a(0)=3, a(1)=10`
-/

namespace A233257.P6755220532725110986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  12 * a (n - 1) - (4 ^ n : ℤ)

end

end A233257.P6755220532725110986

/-! ## A233257.P11605075342267472996

`xor(12*a(n-1), A000302(n))` with `a(0)=3, a(1)=10`
-/

namespace A233257.P11605075342267472996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  Int.xor (12 * a (n - 1)) (A000302 n)

end

end A233257.P11605075342267472996

/-! ## A233257.P8030497134970320510

`(A083583(n)+2)*A011782(n)²`
-/

namespace A233257.P8030497134970320510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083583 n + 2) * A011782 n ^ 2

end

end A233257.P8030497134970320510

/-! ## A233257.P18439059539112207556

`(A025579(n+2)+1)*A011782(2*n)`
-/

namespace A233257.P18439059539112207556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025579 (n + 2) + 1) * A011782 (2 * n)

end

end A233257.P18439059539112207556

/-! ## A233257.P9725207974815680801

`A081294(n)+A081294(n+1)*A133494(n)`
-/

namespace A233257.P9725207974815680801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n + A081294 (n + 1) * A133494 n

end

end A233257.P9725207974815680801

/-!
# A233258: Number of 3 X n 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabelled 6-colorings with no clashing color pairs).

The programs for A233258, there is no canonical definition to state claims against.
-/

/-! ## A233258.P7908974829831260931

`A233256(∑[n+2]+4)`
-/

namespace A233258.P7908974829831260931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233258.P7908974829831260931

/-! ## A233258.P17441253431527076781

`lcm(2^n, A233256(A167614(n+1)))`
-/

namespace A233258.P17441253431527076781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A233256 (A167614 (n + 1)).toNat)

end

end A233258.P17441253431527076781

/-! ## A233258.P4090201204464804918

`A177849(n)*A233256(A167614(n+1))`
-/

namespace A233258.P4090201204464804918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 n * A233256 (A167614 (n + 1)).toNat

end

end A233258.P4090201204464804918

/-! ## A233258.P7473057021234835385

`A233256(A167614(n+1))*A280865(n)`
-/

namespace A233258.P7473057021234835385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (A167614 (n + 1)).toNat * A280865 n

end

end A233258.P7473057021234835385

/-! ## A233258.P11132449600080126853

`lcm(A233256(A167614(n+1)), A277873(n))`
-/

namespace A233258.P11132449600080126853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A233256 (A167614 (n + 1)).toNat) (A277873 n)

end

end A233258.P11132449600080126853

/-!
# A233259: Number of 4 X n 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabelled 6-colorings with no clashing color pairs).

The programs for A233259, there is no canonical definition to state claims against.
-/

/-! ## A233259.P11582765052516148290

`A233256(A141214(n)+7)`
-/

namespace A233259.P11582765052516148290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (A141214 n + 7).toNat

end

end A233259.P11582765052516148290

/-! ## A233259.P7474963430056217747

`A233256(A052905(n)+9)`
-/

namespace A233259.P7474963430056217747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (A052905 n + 9).toNat

end

end A233259.P7474963430056217747

/-! ## A233259.P17386353373412003743

`A233256(A055999(n)+10)`
-/

namespace A233259.P17386353373412003743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (A055999 n + 10).toNat

end

end A233259.P17386353373412003743

/-! ## A233259.P17847198742445022633

`A233256(A167614(n+2)+1)`
-/

namespace A233259.P17847198742445022633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (A167614 (n + 2) + 1).toNat

end

end A233259.P17847198742445022633

/-! ## A233259.P7214146463942539521

`A233256(eq[5, A131818(n+1)])`
-/

namespace A233259.P7214146463942539521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233259.P7214146463942539521

/-!
# A233260: Number of 5Xn 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabeled 6-colorings with no clashing color pairs).

The programs for A233260, there is no canonical definition to state claims against.
-/

/-! ## A233260.P3832579982992773980

`A233256(A167499(n+3))`
-/

namespace A233260.P3832579982992773980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (A167499 (n + 3)).toNat

end

end A233260.P3832579982992773980

/-!
# A233261: Number of 6Xn 0..5 arrays with no element x(i,j) adjacent to itself or value 5-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 3 and 4, and 2 appearing before 3 in row major order (unlabeled 6-colorings with no clashing color pairs).

The programs for A233261, there is no canonical definition to state claims against.
-/

/-! ## A233261.P15318130098111109835

`A233256(A133263(n+5)+4)`
-/

namespace A233261.P15318130098111109835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (A133263 (n + 5) + 4).toNat

end

end A233261.P15318130098111109835

/-! ## A233261.P1512538902836857444

`A233256(eq[7, A131818(n+1)])`
-/

namespace A233261.P1512538902836857444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233261.P1512538902836857444

/-!
# A233262: 

The programs for A233262, there is no canonical definition to state claims against.
-/

/-! ## A233262.P13830692067817612659

`A233256(eq[8, A131818(n+1)])`
-/

namespace A233262.P13830692067817612659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233262.P13830692067817612659

/-!
# A233264: Numbers k such that k divides 1 + Sum_{j=1..k} prime(j)^12.

The programs for A233264, there is no canonical definition to state claims against.
-/

/-! ## A233264.P6490473903674551987

`A000720(A233265(n+1))`
-/

namespace A233264.P6490473903674551987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A233265 (n + 1)).toNat

end

end A233264.P6490473903674551987

/-! ## A233264.P17018542595826699861

`∑{d}[A233265(n+1), A061395(#)]`
-/

namespace A233264.P17018542595826699861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A233264.P17018542595826699861

/-! ## A233264.P11127957542010501203

`A061395(or(A021913(n), A233265(n+1)))`
-/

namespace A233264.P11127957542010501203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor (A021913 n) (A233265 (n + 1))).toNat

end

end A233264.P11127957542010501203

/-! ## A233264.P12562815320091990038

`A061395(2*A233265(n+1))`
-/

namespace A233264.P12562815320091990038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A233265 (n + 1)).toNat

end

end A233264.P12562815320091990038

/-! ## A233264.P10141385887088360057

`∑{d}[A233265(n+1), A263297(#)]`
-/

namespace A233264.P10141385887088360057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A263297 d

end

end A233264.P10141385887088360057

/-! ## A233264.P10386690553744402185

`A263297(A078315(n+1)*A233265(n+1))`
-/

namespace A233264.P10386690553744402185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (A078315 (n + 1) * A233265 (n + 1)).toNat

end

end A233264.P10386690553744402185

/-! ## A233264.P3153904851797597938

`A061395(A233265(n+1)+A021913(n²))`
-/

namespace A233264.P3153904851797597938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A233265 (n + 1) + A021913 (n ^ 2)).toNat

end

end A233264.P3153904851797597938

/-!
# A233265: Prime(k), where k is such that (1 + Sum_{j=1..k} prime(j)^12) / k is an integer.

The programs for A233265, there is no canonical definition to state claims against.
-/

/-! ## A233265.P8072955720908734868

`A000040(A233264(n+1))`
-/

namespace A233265.P8072955720908734868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A233264 (n + 1)).toNat

end

end A233265.P8072955720908734868

/-! ## A233265.P16365125686716807684

`A000040(A198343(n+1)%A225560(n+2))`
-/

namespace A233265.P16365125686716807684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A198343 (n + 1)) (A225560 (n + 2))).toNat

end

end A233265.P16365125686716807684

/-! ## A233265.P9758036876906560054

`A000040(A198343(n+1))%A198304(n+4)`
-/

namespace A233265.P9758036876906560054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A198343 (n + 1)).toNat) (A198304 (n + 4))

end

end A233265.P9758036876906560054

/-! ## A233265.P353568644562249415

`record[A268674(A322554(n+3))]`
-/

namespace A233265.P353568644562249415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A322554 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233265.P353568644562249415

/-! ## A233265.P7661795509606985397

`eq[A175126(n), A269626(A357136(n))]`
-/

namespace A233265.P7661795509606985397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269626 (A357136 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233265.P7661795509606985397

/-!
# A233267: a(n) = A055881(A001110(n)); the largest m such that m! divides the n-th positive number which is both triangular and square.

The programs for A233267, there is no canonical definition to state claims against.
-/

/-! ## A233267.P8530996464879501259

`A130602(A094756(n+1))%A094756(n+1)`
-/

namespace A233267.P8530996464879501259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130602 (A094756 (n + 1)).toNat) (A094756 (n + 1))

end

end A233267.P8530996464879501259

/-! ## A233267.P10364380724327643549

`A233269(lcm(5, (n+1)²))`
-/

namespace A233267.P10364380724327643549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233269 (Nat.lcm 5 ((n + 1) ^ 2))

end

end A233267.P10364380724327643549

/-! ## A233267.P15922191141955835698

`A233269(5*(n+1)²)`
-/

namespace A233267.P15922191141955835698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233269 (5 * (n + 1) ^ 2)

end

end A233267.P15922191141955835698

/-! ## A233267.P13121360911320646146

`A205324(A205236(n+1))%A133265(A158229(n+1))`
-/

namespace A233267.P13121360911320646146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205324 (A205236 (n + 1)).toNat) (A133265 (A158229 (n + 1)).toNat)

end

end A233267.P13121360911320646146

/-! ## A233267.P12125899296459918319

`A090740(A090782(n+1)+A008813(n))`
-/

namespace A233267.P12125899296459918319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090740 (A090782 (n + 1) + A008813 n).toNat

end

end A233267.P12125899296459918319

/-!
# A233268: The middle point of row n in binary beanstalk related sequences A179016, A218602, A218616, A233270, A233271.

The programs for A233268, there is no canonical definition to state claims against.
-/

/-! ## A233268.P10080847736232639318

`A218600(n)+ceil(A213709(n)/2)`
-/

namespace A233268.P10080847736232639318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218600 n + ⌈(A213709 n : ℚ) / 2⌉

end

end A233268.P10080847736232639318

/-! ## A233268.P16030580472629958653

`floor((A213710(n)+A218600(n+1))/2)`
-/

namespace A233268.P16030580472629958653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213710 n + A218600 (n + 1) : ℚ) / 2⌋

end

end A233268.P16030580472629958653

/-! ## A233268.P1707364680286878321

`ceil((A218600(n+1)+A218600(n))/2)`
-/

namespace A233268.P1707364680286878321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A218600 (n + 1) + A218600 n : ℚ) / 2⌉

end

end A233268.P1707364680286878321

/-! ## A233268.P6941359488752892578

`A218600(n)+A065033(A213709(n))`
-/

namespace A233268.P6941359488752892578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218600 n + A065033 (A213709 n).toNat

end

end A233268.P6941359488752892578

/-! ## A233268.P4834831075805946952

`A071542(A052944(n)-n)+A065033(A213709(n))`
-/

namespace A233268.P4834831075805946952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (A052944 n - (n : ℤ)).toNat + A065033 (A213709 n).toNat

end

end A233268.P4834831075805946952

/-!
# A233269: a(n) = A055881(A001109(n)).

The programs for A233269, there is no canonical definition to state claims against.
-/

/-! ## A233269.P11617723496693422570

`A055881(63*A010078(n+1))`
-/

namespace A233269.P11617723496693422570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (63 * A010078 (n + 1)).toNat

end

end A233269.P11617723496693422570

/-! ## A233269.P5144191203511272560

`A133776(A066135(n+1)-3)`
-/

namespace A233269.P5144191203511272560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133776 (A066135 (n + 1) - 3).toNat

end

end A233269.P5144191203511272560

/-! ## A233269.P3030974449207396161

`A216763(A066135(n+1)/2)`
-/

namespace A233269.P3030974449207396161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216763 (SequenceMachineLib.roundAway ((A066135 (n + 1) : ℚ) / 2)).toNat

end

end A233269.P3030974449207396161

/-! ## A233269.P8154667320462575526

`A269572(A034690(A066135(n+1)))`
-/

namespace A233269.P8154667320462575526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269572 (A034690 (A066135 (n + 1)).toNat).toNat

end

end A233269.P8154667320462575526

/-! ## A233269.P2508375497906676306

`A055881(A003961(n+1)*A199343(n))`
-/

namespace A233269.P2508375497906676306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A003961 (n + 1) * A199343 n).toNat

end

end A233269.P2508375497906676306

/-!
# A233270: a(n) = A233271(n) - A179016(n).

The programs for A233270, there is no canonical definition to state claims against.
-/

/-! ## A233270.P4630326048379844323

`A233271(n)-A179016(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A233270.P4630326048379844323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 n - A179016 n

end

end A233270.P4630326048379844323

/-! ## A233270.P5734301769026262341

`A233271(n)-∑[A213712(n)]`
-/

namespace A233270.P5734301769026262341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233270.P5734301769026262341

/-! ## A233270.P838641629693397544

`A233271(A218602(n))-A218616(n)`
-/

namespace A233270.P838641629693397544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 (A218602 n).toNat - A218616 n

end

end A233270.P838641629693397544

/-! ## A233270.P12537164532701909980

`A233271(n)-A218616(A071542(A218616(n)))`
-/

namespace A233270.P12537164532701909980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 n - A218616 (A071542 (A218616 n).toNat).toNat

end

end A233270.P12537164532701909980

/-! ## A233270.P14111085295996510059

`A233271(n)-A005187(A213715(n))`
-/

namespace A233270.P14111085295996510059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 n - A005187 (A213715 n).toNat

end

end A233270.P14111085295996510059

/-! ## A233270.P10476122863530120581

`A233271(n)-eq[0, A213725(n)]`
-/

namespace A233270.P10476122863530120581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 n - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A233270.P10476122863530120581

/-! ## A233270.P15203130533436786695

`A233271(n)-eq[1, A213719(n)]`
-/

namespace A233270.P15203130533436786695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 n - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A233270.P15203130533436786695

/-!
# A233271: a(0)=0; thereafter a(n+1) = a(n) + 1 + number of 0's in binary representation of a(n), counted with A080791.

The programs for A233271, the canonical program `A233271.P6647705363235310695` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233271 has offset 0).

The definition of A233271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233271.P6647705363235310695

`A233272(a(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A233271

/-- `A233272(a(n-1))` -/
def P6647705363235310695.Spec : Prop :=
  ∀ n, P6647705363235310695.a n = A233271 n

theorem P6647705363235310695.correct : P6647705363235310695.Spec := by
  intro n
  simp only [A233271]

end A233271

/-! ## A233271.P3391863864588902025

`a(n-1)+1+A080791(a(n-1))` with `a(0)=0`
-/

namespace A233271.P3391863864588902025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 1 + A080791 (a (n - 1)).toNat

end

end A233271.P3391863864588902025

namespace A233271

/-- `a(n-1)+1+A080791(a(n-1))` -/
def P3391863864588902025.Spec : Prop :=
  ∀ n, P3391863864588902025.a n = A233271 n

end A233271

/-! ## A233271.P10325184515774357347

`A233270(n)+A179016(n)`
-/

namespace A233271.P10325184515774357347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233270 n + A179016 n

end

end A233271.P10325184515774357347

namespace A233271

/-- `A233270(n)+A179016(n)` -/
def P10325184515774357347.Spec : Prop :=
  ∀ n, P10325184515774357347.a n = A233271 n

end A233271

/-! ## A233271.P16617479629258997694

`∪[A000079(n), A216431(n)]`
-/

namespace A233271.P16617479629258997694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A233271.P16617479629258997694

namespace A233271

/-- `∪[A000079(n), A216431(n)]` -/
def P16617479629258997694.Spec : Prop :=
  ∀ n, (P16617479629258997694.a n : ℤ) = A233271 n

end A233271

/-! ## A233271.P10273652649720089820

`∪[A000302(n), A216431(n)]`
-/

namespace A233271.P10273652649720089820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A233271.P10273652649720089820

namespace A233271

/-- `∪[A000302(n), A216431(n)]` -/
def P10273652649720089820.Spec : Prop :=
  ∀ n, (P10273652649720089820.a n : ℤ) = A233271 n

end A233271

/-! ## A233271.P11213618535475231596

`∪[A001016(n), A216431(n)]`
-/

namespace A233271.P11213618535475231596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A233271.P11213618535475231596

namespace A233271

/-- `∪[A001016(n), A216431(n)]` -/
def P11213618535475231596.Spec : Prop :=
  ∀ n, (P11213618535475231596.a n : ℤ) = A233271 n

end A233271

/-! ## A233271.P5594300709360463499

`∪[A001901(n), A216431(n)]`
-/

namespace A233271.P5594300709360463499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001901 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A233271.P5594300709360463499

namespace A233271

/-- `∪[A001901(n), A216431(n)]` -/
def P5594300709360463499.Spec : Prop :=
  ∀ n, (P5594300709360463499.a n : ℤ) = A233271 n

end A233271

/-! ## A233271.P10618394992490307764

`A233270(n)+A218616(A218602(n))`
-/

namespace A233271.P10618394992490307764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233270 n + A218616 (A218602 n).toNat

end

end A233271.P10618394992490307764

namespace A233271

/-- `A233270(n)+A218616(A218602(n))` -/
def P10618394992490307764.Spec : Prop :=
  ∀ n, P10618394992490307764.a n = A233271 n

end A233271

/-! ## A233271.P15031253507393685807

`comp[A269390(n+1)]`
-/

namespace A233271.P15031253507393685807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A233271.P15031253507393685807

namespace A233271

/-- `comp[A269390(n+1)]` -/
def P15031253507393685807.Spec : Prop :=
  ∀ n, (P15031253507393685807.a n : ℤ) = A233271 n

end A233271

/-! ## A233271.P10203173137752931346

`A008687(a(n-1)+1)+a(n-1)` with `a(0)=0`
-/

namespace A233271.P10203173137752931346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008687 (a (n - 1) + 1).toNat + a (n - 1)

end

end A233271.P10203173137752931346

namespace A233271

/-- `A008687(a(n-1)+1)+a(n-1)` -/
def P10203173137752931346.Spec : Prop :=
  ∀ n, P10203173137752931346.a n = A233271 n

end A233271

/-! ## A233271.P15245794185694914948

`lt[char[A269390(n+1)]*A133655(n), 4]`
-/

namespace A233271.P15245794185694914948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269390 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A133655 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A233271.P15245794185694914948

namespace A233271

/-- `lt[char[A269390(n+1)]*A133655(n), 4]` -/
def P15245794185694914948.Spec : Prop :=
  ∀ n, (P15245794185694914948.a n : ℤ) = A233271 n

end A233271

/-! ## A233271.P2885609469296971916

`lt[char[A269390(n+1)], A016945(n)%2]`
-/

namespace A233271.P2885609469296971916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269390 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016945 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A233271.P2885609469296971916

namespace A233271

/-- `lt[char[A269390(n+1)], A016945(n)%2]` -/
def P2885609469296971916.Spec : Prop :=
  ∀ n, (P2885609469296971916.a n : ℤ) = A233271 n

end A233271

/-! ## A233271.P11878019789204258044

`lt[char[A269390(n+1)]*A007947(n+1), 1]`
-/

namespace A233271.P11878019789204258044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269390 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007947 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A233271.P11878019789204258044

namespace A233271

/-- `lt[char[A269390(n+1)]*A007947(n+1), 1]` -/
def P11878019789204258044.Spec : Prop :=
  ∀ n, (P11878019789204258044.a n : ℤ) = A233271 n

end A233271

/-! ## A233271.P3664118323237188755

`lt[A000040(n+1)*char[A269390(n+1)], 4]`
-/

namespace A233271.P3664118323237188755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269390 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A233271.P3664118323237188755

namespace A233271

/-- `lt[A000040(n+1)*char[A269390(n+1)], 4]` -/
def P3664118323237188755.Spec : Prop :=
  ∀ n, (P3664118323237188755.a n : ℤ) = A233271 n

end A233271

/-! ## A233271.P17350351155256480691

`lt[char[A269390(n+1)]*A088707(n+1), 4]`
-/

namespace A233271.P17350351155256480691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269390 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A088707 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A233271.P17350351155256480691

namespace A233271

/-- `lt[char[A269390(n+1)]*A088707(n+1), 4]` -/
def P17350351155256480691.Spec : Prop :=
  ∀ n, (P17350351155256480691.a n : ℤ) = A233271 n

end A233271

/-! ## A233271.P6710031951685831940

`A023416(2*a(n-1))+a(n-1)` with `a(0)=0`
-/

namespace A233271.P6710031951685831940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A023416 (2 * a (n - 1)).toNat + a (n - 1)

end

end A233271.P6710031951685831940

namespace A233271

/-- `A023416(2*a(n-1))+a(n-1)` -/
def P6710031951685831940.Spec : Prop :=
  ∀ n, P6710031951685831940.a n = A233271 n

end A233271

/-!
# A233272: a(n) = n + 1 + number of nonleading zeros in binary representation of n (A080791).

The programs for A233272, the canonical program `A233272.P7434193549948048557` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233272 has offset 0).

The definition of A233272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233272.P7434193549948048557

`1+floor(n/2)+a(floor(n/2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233272

/-- `1+floor(n/2)+a(floor(n/2))` -/
def P7434193549948048557.Spec : Prop :=
  ∀ n, P7434193549948048557.a n = A233272 n

theorem P7434193549948048557.correct : P7434193549948048557.Spec := by
  intro n
  simp only [A233272]

end A233272

/-! ## A233272.P2232514360105477000

`n+A080791(n)+1`
-/

namespace A233272.P2232514360105477000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A080791 n + 1

end

end A233272.P2232514360105477000

namespace A233272

/-- `n+A080791(n)+1` -/
def P2232514360105477000.Spec : Prop :=
  ∀ n, P2232514360105477000.a n = A233272 n

end A233272

/-! ## A233272.P15343094736620023500

`char[2^n]+a(n-1)+val(n, 2)` with `a(0)=1`
-/

namespace A233272.P15343094736620023500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + (a (n - 1) + SequenceMachineLib.valuation n 2)

end

end A233272.P15343094736620023500

namespace A233272

/-- `char[2^n]+a(n-1)+val(n, 2)` -/
def P15343094736620023500.Spec : Prop :=
  ∀ n, (P15343094736620023500.a n : ℤ) = A233272 n

end A233272

/-! ## A233272.P2716974911467082705

`∑[a(∑[a(n-2)²])-a(n-1)]+1+n` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A233272.P2716974911467082705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  f2 (n - 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A233272.P2716974911467082705

namespace A233272

/-- `∑[a(∑[a(n-2)²])-a(n-1)]+1+n` -/
def P2716974911467082705.Spec : Prop :=
  ∀ n, P2716974911467082705.a n = A233272 n

end A233272

/-! ## A233272.P798975678435944007

`∑[A089263(n)+1]`
-/

namespace A233272.P798975678435944007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233272.P798975678435944007

namespace A233272

/-- `∑[A089263(n)+1]` -/
def P798975678435944007.Spec : Prop :=
  ∀ n, P798975678435944007.a n = A233272 n

end A233272

/-! ## A233272.P6028895677097195451

`A008687(n+1)+n`
-/

namespace A233272.P6028895677097195451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (n + 1) + (n : ℤ)

end

end A233272.P6028895677097195451

namespace A233272

/-- `A008687(n+1)+n` -/
def P6028895677097195451.Spec : Prop :=
  ∀ n, P6028895677097195451.a n = A233272 n

end A233272

/-! ## A233272.P8263579259483705683

`A120511(n+1)-n`
-/

namespace A233272.P8263579259483705683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120511 (n + 1) - (n : ℤ)

end

end A233272.P8263579259483705683

namespace A233272

/-- `A120511(n+1)-n` -/
def P8263579259483705683.Spec : Prop :=
  ∀ n, P8263579259483705683.a n = A233272 n

end A233272

/-! ## A233272.P4085870955866822557

`A233273(n)-(n+1)`
-/

namespace A233272.P4085870955866822557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233273 n - (n + 1 : ℤ)

end

end A233272.P4085870955866822557

namespace A233272

/-- `A233273(n)-(n+1)` -/
def P4085870955866822557.Spec : Prop :=
  ∀ n, P4085870955866822557.a n = A233272 n

end A233272

/-! ## A233272.P14938600302853122431

`A290251(Δ[n²])+n`
-/

namespace A233272.P14938600302853122431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A233272.P14938600302853122431

namespace A233272

/-- `A290251(Δ[n²])+n` -/
def P14938600302853122431.Spec : Prop :=
  ∀ n, P14938600302853122431.a n = A233272 n

end A233272

/-! ## A233272.P1951788709435891568

`∏{e}[A267584(n), #+n]`
-/

namespace A233272.P1951788709435891568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + n)

end

end A233272.P1951788709435891568

namespace A233272

/-- `∏{e}[A267584(n), #+n]` -/
def P1951788709435891568.Spec : Prop :=
  ∀ n, (P1951788709435891568.a n : ℤ) = A233272 n

end A233272

/-! ## A233272.P14381120216626878678

`log2(A267584(2*n+1))+n`
-/

namespace A233272.P14381120216626878678
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A267584 (2 * n + 1) : ℝ) + (n : ℝ)

end

end A233272.P14381120216626878678

namespace A233272

/-- `log2(A267584(2*n+1))+n` -/
def P14381120216626878678.Spec : Prop :=
  ∀ n, P14381120216626878678.a n = (A233272 n : ℝ)

end A233272

/-! ## A233272.P11728554741949779613

`a(n-1)+A135560(n)-1` with `a(0)=1`
-/

namespace A233272.P11728554741949779613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A135560 n - 1)

end

end A233272.P11728554741949779613

namespace A233272

/-- `a(n-1)+A135560(n)-1` -/
def P11728554741949779613.Spec : Prop :=
  ∀ n, P11728554741949779613.a n = A233272 n

end A233272

/-! ## A233272.P14256365558643199378

`comp[3*n]-(n-a(A004526(n)))` with `a(0)=1`
-/

namespace A233272.P14256365558643199378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((n : ℤ) - a (A004526 n).toNat)

end

end A233272.P14256365558643199378

namespace A233272

/-- `comp[3*n]-(n-a(A004526(n)))` -/
def P14256365558643199378.Spec : Prop :=
  ∀ n, P14256365558643199378.a n = A233272 n

end A233272

/-! ## A233272.P18321101479059493567

`ceil(log2(n+1))+1-A000120(n)+n`
-/

namespace A233272.P18321101479059493567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉ + (1 - A000120 n + (n : ℤ))

end

end A233272.P18321101479059493567

namespace A233272

/-- `ceil(log2(n+1))+1-A000120(n)+n` -/
def P18321101479059493567.Spec : Prop :=
  ∀ n, P18321101479059493567.a n = A233272 n

end A233272

/-! ## A233272.P2851134714207051445

`A270200(A266977(n))`
-/

namespace A233272.P2851134714207051445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270200 (A266977 n).toNat

end

end A233272.P2851134714207051445

namespace A233272

/-- `A270200(A266977(n))` -/
def P2851134714207051445.Spec : Prop :=
  ∀ n, P2851134714207051445.a n = A233272 n

end A233272

/-! ## A233272.P380145116688748909

`A000005(A080100(n))+n`
-/

namespace A233272.P380145116688748909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A080100 n).toNat + (n : ℤ)

end

end A233272.P380145116688748909

namespace A233272

/-- `A000005(A080100(n))+n` -/
def P380145116688748909.Spec : Prop :=
  ∀ n, P380145116688748909.a n = A233272 n

end A233272

/-! ## A233272.P6599319853876423638

`A070941(n)+A011371(n)`
-/

namespace A233272.P6599319853876423638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n + A011371 n

end

end A233272.P6599319853876423638

namespace A233272

/-- `A070941(n)+A011371(n)` -/
def P6599319853876423638.Spec : Prop :=
  ∀ n, P6599319853876423638.a n = A233272 n

end A233272

/-! ## A233272.P8348252378379239072

`A077168(A080791(n))+n`
-/

namespace A233272.P8348252378379239072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (A080791 n).toNat + (n : ℤ)

end

end A233272.P8348252378379239072

namespace A233272

/-- `A077168(A080791(n))+n` -/
def P8348252378379239072.Spec : Prop :=
  ∀ n, P8348252378379239072.a n = A233272 n

end A233272

/-! ## A233272.P10166476867387946113

`∑[A135560(A028310(n))-1]`
-/

namespace A233272.P10166476867387946113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (A028310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233272.P10166476867387946113

namespace A233272

/-- `∑[A135560(A028310(n))-1]` -/
def P10166476867387946113.Spec : Prop :=
  ∀ n, P10166476867387946113.a n = A233272 n

end A233272

/-! ## A233272.P12744987446387188517

`A087156(n+1)+A023416(n)`
-/

namespace A233272.P12744987446387188517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A023416 n

end

end A233272.P12744987446387188517

namespace A233272

/-- `A087156(n+1)+A023416(n)` -/
def P12744987446387188517.Spec : Prop :=
  ∀ n, P12744987446387188517.a n = A233272 n

end A233272

/-!
# A233273: Bisection of A233272: a(n) = A233272(2n+1).

The programs for A233273, the canonical program `A233273.P5970304182537825218` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233273 has offset 0).

The definition of A233273 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233273.P15886207725017803275

`A120511(n+1)+1`
-/

namespace A233273.P15886207725017803275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120511 (n + 1) + 1

end

end A233273.P15886207725017803275

namespace A233273

/-- `A120511(n+1)+1` -/
def P15886207725017803275.Spec : Prop :=
  ∀ n, P15886207725017803275.a n = A233273 n

end A233273

/-! ## A233273.P8447464833124942826

`A005408(n)+A080791(n)+1`
-/

namespace A233273.P8447464833124942826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + A080791 n + 1

end

end A233273.P8447464833124942826

namespace A233273

/-- `A005408(n)+A080791(n)+1` -/
def P8447464833124942826.Spec : Prop :=
  ∀ n, P8447464833124942826.a n = A233273 n

end A233273

/-! ## A233273.P5970304182537825218

`A233272(2*n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A233273

/-- `A233272(2*n+1)` -/
def P5970304182537825218.Spec : Prop :=
  ∀ n, P5970304182537825218.a n = A233273 n

theorem P5970304182537825218.correct : P5970304182537825218.Spec := by
  intro n
  simp only [A233273]

end A233273

/-! ## A233273.P16922396194718084658

`a(floor(n/2))+1+n` with `a(0)=2`
-/

namespace A233273.P16922396194718084658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + 1 + n

end

end A233273.P16922396194718084658

namespace A233273

/-- `a(floor(n/2))+1+n` -/
def P16922396194718084658.Spec : Prop :=
  ∀ n, (P16922396194718084658.a n : ℤ) = A233273 n

end A233273

/-! ## A233273.P2933351795321311321

`a(n-∑[n%2])+n+1` with `a(0)=2`
-/

namespace A233273.P2933351795321311321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - ∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1)

end

end A233273.P2933351795321311321

namespace A233273

/-- `a(n-∑[n%2])+n+1` -/
def P2933351795321311321.Spec : Prop :=
  ∀ n, (P2933351795321311321.a n : ℤ) = A233273 n

end A233273

/-! ## A233273.P17707288137642872324

`a(ceil(abs((1-n)/2)))+n+1` with `a(0)=2`
-/

namespace A233273.P17707288137642872324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat + (n + 1)

end

end A233273.P17707288137642872324

namespace A233273

/-- `a(ceil(abs((1-n)/2)))+n+1` -/
def P17707288137642872324.Spec : Prop :=
  ∀ n, (P17707288137642872324.a n : ℤ) = A233273 n

end A233273

/-! ## A233273.P11120641428615170701

`2-floor(1-a(floor(n/2))-n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A233273.P11120641428615170701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - (1 - a ⌊(n : ℚ) / 2⌋.toNat - (n : ℤ))

end

end A233273.P11120641428615170701

namespace A233273

/-- `2-floor(1-a(floor(n/2))-n)` -/
def P11120641428615170701.Spec : Prop :=
  ∀ n, P11120641428615170701.a n = A233273 n

end A233273

/-! ## A233273.P10876256999747639871

`floor(a(∑[char[2*n]]-1)+n)+1` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A233273.P10876256999747639871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + n + 1

end

end A233273.P10876256999747639871

namespace A233273

/-- `floor(a(∑[char[2*n]]-1)+n)+1` -/
def P10876256999747639871.Spec : Prop :=
  ∀ n, (P10876256999747639871.a n : ℤ) = A233273 n

end A233273

/-! ## A233273.P2413160915754359148

`∑[A089263(n)+2]`
-/

namespace A233273.P2413160915754359148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233273.P2413160915754359148

namespace A233273

/-- `∑[A089263(n)+2]` -/
def P2413160915754359148.Spec : Prop :=
  ∀ n, P2413160915754359148.a n = A233273 n

end A233273

/-! ## A233273.P9416553830357699128

`A233272(n)+1+n`
-/

namespace A233273.P9416553830357699128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233272 n + 1 + (n : ℤ)

end

end A233273.P9416553830357699128

namespace A233273

/-- `A233272(n)+1+n` -/
def P9416553830357699128.Spec : Prop :=
  ∀ n, P9416553830357699128.a n = A233273 n

end A233273

/-! ## A233273.P10004687074036288101

`A135560(n)+a(n-1)` with `a(0)=2`
-/

namespace A233273.P10004687074036288101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A135560 n + a (n - 1)

end

end A233273.P10004687074036288101

namespace A233273

/-- `A135560(n)+a(n-1)` -/
def P10004687074036288101.Spec : Prop :=
  ∀ n, P10004687074036288101.a n = A233273 n

end A233273

/-! ## A233273.P18269244489584102272

`A008687(n+1)+Δ[n²]`
-/

namespace A233273.P18269244489584102272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A233273.P18269244489584102272

namespace A233273

/-- `A008687(n+1)+Δ[n²]` -/
def P18269244489584102272.Spec : Prop :=
  ∀ n, P18269244489584102272.a n = A233273 n

end A233273

/-! ## A233273.P14655526256751177876

`A290251(2*n+1)+2*n+1`
-/

namespace A233273.P14655526256751177876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (2 * n + 1) + (2 * n + 1 : ℤ)

end

end A233273.P14655526256751177876

namespace A233273

/-- `A290251(2*n+1)+2*n+1` -/
def P14655526256751177876.Spec : Prop :=
  ∀ n, P14655526256751177876.a n = A233273 n

end A233273

/-! ## A233273.P11733512764357487944

`∑[A135560(A028310(n))]`
-/

namespace A233273.P11733512764357487944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233273.P11733512764357487944

namespace A233273

/-- `∑[A135560(A028310(n))]` -/
def P11733512764357487944.Spec : Prop :=
  ∀ n, P11733512764357487944.a n = A233273 n

end A233273

/-! ## A233273.P731980339189217903

`A103517(n)+A023416(n)`
-/

namespace A233273.P731980339189217903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + A023416 n

end

end A233273.P731980339189217903

namespace A233273

/-- `A103517(n)+A023416(n)` -/
def P731980339189217903.Spec : Prop :=
  ∀ n, P731980339189217903.a n = A233273 n

end A233273

/-! ## A233273.P13255198382233963675

`A101925(n)+A070941(n)`
-/

namespace A233273.P13255198382233963675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n + A070941 n

end

end A233273.P13255198382233963675

namespace A233273

/-- `A101925(n)+A070941(n)` -/
def P13255198382233963675.Spec : Prop :=
  ∀ n, P13255198382233963675.a n = A233273 n

end A233273

/-! ## A233273.P13191708974309697153

`A005187(n)+A070941(n)+1`
-/

namespace A233273.P13191708974309697153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + (A070941 n + 1)

end

end A233273.P13191708974309697153

namespace A233273

/-- `A005187(n)+A070941(n)+1` -/
def P13191708974309697153.Spec : Prop :=
  ∀ n, P13191708974309697153.a n = A233273 n

end A233273

/-! ## A233273.P6559148308051296258

`A270200(A266977(n))+1+n`
-/

namespace A233273.P6559148308051296258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270200 (A266977 n).toNat + 1 + (n : ℤ)

end

end A233273.P6559148308051296258

namespace A233273

/-- `A270200(A266977(n))+1+n` -/
def P6559148308051296258.Spec : Prop :=
  ∀ n, P6559148308051296258.a n = A233273 n

end A233273

/-! ## A233273.P16850392904615951443

`A004273(n)+A290251(n)+2`
-/

namespace A233273.P16850392904615951443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (A290251 n + 2)

end

end A233273.P16850392904615951443

namespace A233273

/-- `A004273(n)+A290251(n)+2` -/
def P16850392904615951443.Spec : Prop :=
  ∀ n, P16850392904615951443.a n = A233273 n

end A233273

/-!
# A233275: Permutation of nonnegative integers obtained by entangling complementary pair A005187 & A055938 with even and odd numbers.

The programs for A233275, there is no canonical definition to state claims against.
-/

/-! ## A233275.P5145476251297013563

`A003188(A180200(A233277(n)))`
-/

namespace A233275.P5145476251297013563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A180200 (A233277 n).toNat).toNat

end

end A233275.P5145476251297013563

/-! ## A233275.P874566770534753618

`xor(A004526(A003817(n)), A233277(n))`
-/

namespace A233275.P874566770534753618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004526 (A003817 n).toNat) (A233277 n)

end

end A233275.P874566770534753618

/-! ## A233275.P9602115202427891596

`xor(A011371(A053644(n)), A233277(n))`
-/

namespace A233275.P9602115202427891596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011371 (A053644 n).toNat) (A233277 n)

end

end A233275.P9602115202427891596

/-! ## A233275.P8805782085866613121

`xor(A003817(A292600(n)), A233277(n))`
-/

namespace A233275.P8805782085866613121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 (A292600 n).toNat) (A233277 n)

end

end A233275.P8805782085866613121

/-! ## A233275.P11887573459261419862

`xor(A233277(n), A336551(A062383(n)))`
-/

namespace A233275.P11887573459261419862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A233277 n) (A336551 (A062383 n).toNat)

end

end A233275.P11887573459261419862

/-! ## A233275.P16794928779422674809

`A055010(A029837(n+1))-A233277(n)`
-/

namespace A233275.P16794928779422674809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 (A029837 (n + 1)).toNat - A233277 n

end

end A233275.P16794928779422674809

/-! ## A233275.P6410610208863827259

`A006068(n)+A233279(n)-A233277(n)`
-/

namespace A233275.P6410610208863827259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n + (A233279 n - A233277 n)

end

end A233275.P6410610208863827259

/-! ## A233275.P1494366916589903975

`A233277(A053644(2*n))-A233277(n)`
-/

namespace A233275.P1494366916589903975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233277 (A053644 (2 * n)).toNat - A233277 n

end

end A233275.P1494366916589903975

/-! ## A233275.P12749132782349660934

`∑{d}[A163511(A233277(n)), A297112(#)]`
-/

namespace A233275.P12749132782349660934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A233277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297112 d

end

end A233275.P12749132782349660934

/-!
# A233276: a(0)=0, a(1)=1, after which a(2n) = A005187(1+a(n)), a(2n+1) = A055938(a(n)).

The programs for A233276, there is no canonical definition to state claims against.
-/

/-! ## A233276.P8866821924151029295

`A233278(A233279(ceil(xor(n-1, 2*n)/2)))`
-/

namespace A233276.P8866821924151029295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233278 (A233279 ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉.toNat).toNat

end

end A233276.P8866821924151029295

/-! ## A233276.P584048805741178184

`A233278(A233279(A003188(n)))`
-/

namespace A233276.P584048805741178184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233278 (A233279 (A003188 n).toNat).toNat

end

end A233276.P584048805741178184

/-! ## A233276.P1539299181734622249

`A233278(A006068(A233280(n)))`
-/

namespace A233276.P1539299181734622249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233278 (A006068 (A233280 n).toNat).toNat

end

end A233276.P1539299181734622249

/-! ## A233276.P1296998092527316855

`A233278(A233275(A233278(n)))`
-/

namespace A233276.P1296998092527316855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233278 (A233275 (A233278 n).toNat).toNat

end

end A233276.P1296998092527316855

/-! ## A233276.P14623089259305363157

`A233278(A286546(n)+A233279(n))`
-/

namespace A233276.P14623089259305363157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233278 (A286546 n + A233279 n).toNat

end

end A233276.P14623089259305363157

/-! ## A233276.P12949421234914796563

`A233278(A092569(xor(n, A157928(n))))`
-/

namespace A233276.P12949421234914796563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233278 (A092569 (Int.xor (n : ℤ) (A157928 n)).toNat).toNat

end

end A233276.P12949421234914796563

/-! ## A233276.P7642255413681744976

`A233278(A234025(xor(n, A280507(n))))`
-/

namespace A233276.P7642255413681744976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233278 (A234025 (Int.xor (n : ℤ) (A280507 n)).toNat).toNat

end

end A233276.P7642255413681744976

/-! ## A233276.P6600134140142602289

`A233278(xor(A233279(n), A292600(n)))`
-/

namespace A233276.P6600134140142602289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233278 (Int.xor (A233279 n) (A292600 n)).toNat

end

end A233276.P6600134140142602289

/-! ## A233276.P10774670001327628299

`A233278(A279341(A279344(n)))`
-/

namespace A233276.P10774670001327628299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233278 (A279341 (A279344 n).toNat).toNat

end

end A233276.P10774670001327628299

/-! ## A233276.P15151621083936106271

`A233278(A092569(2*n)/2)`
-/

namespace A233276.P15151621083936106271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233278 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A233276.P15151621083936106271

/-! ## A233276.P2515043154153511035

`A234017(A276343(A267112(2*n+1)))`
-/

namespace A233276.P2515043154153511035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234017 (A276343 (A267112 (2 * n + 1)).toNat).toNat

end

end A233276.P2515043154153511035

/-! ## A233276.P9380194434666698892

`A233278(A279341(A279347(A279342(n))))`
-/

namespace A233276.P9380194434666698892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233278 (A279341 (A279347 (A279342 n).toNat).toNat).toNat

end

end A233276.P9380194434666698892

/-! ## A233276.P13962178689077264659

`A233278(xor(2*n+1, A154436(2*n+1)))`
-/

namespace A233276.P13962178689077264659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233278 (Int.xor (2 * n + 1 : ℤ) (A154436 (2 * n + 1))).toNat

end

end A233276.P13962178689077264659

/-!
# A233277: Permutation of nonnegative integers obtained by entangling complementary pair A005187 & A055938 with odd and even numbers.

The programs for A233277, there is no canonical definition to state claims against.
-/

/-! ## A233277.P11029255639699916570

`A233279(A003188(A233275(n)))`
-/

namespace A233277.P11029255639699916570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A003188 (A233275 n).toNat).toNat

end

end A233277.P11029255639699916570

/-! ## A233277.P16009858749981905006

`xor(A004526(A003817(n)), A233275(n))`
-/

namespace A233277.P16009858749981905006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004526 (A003817 n).toNat) (A233275 n)

end

end A233277.P16009858749981905006

/-! ## A233277.P4985954085848851740

`xor(A011371(A053644(n)), A233275(n))`
-/

namespace A233277.P4985954085848851740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011371 (A053644 n).toNat) (A233275 n)

end

end A233277.P4985954085848851740

/-! ## A233277.P14927964931926809978

`xor(A003817(A292600(n)), A233275(n))`
-/

namespace A233277.P14927964931926809978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 (A292600 n).toNat) (A233275 n)

end

end A233277.P14927964931926809978

/-! ## A233277.P4607636151467222862

`xor(A233275(n), A279645(A062383(n)))`
-/

namespace A233277.P4607636151467222862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A233275 n) (A279645 (A062383 n).toNat)

end

end A233277.P4607636151467222862

/-! ## A233277.P6592328739661755534

`A233275(A233278(n))+n-A233275(n)`
-/

namespace A233277.P6592328739661755534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233275 (A233278 n).toNat + ((n : ℤ) - A233275 n)

end

end A233277.P6592328739661755534

/-! ## A233277.P3074157114913513075

`A233275(A233278(A233275(A233275(A233276(n)))))`
-/

namespace A233277.P3074157114913513075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233275 (A233278 (A233275 (A233275 (A233276 n).toNat).toNat).toNat).toNat

end

end A233277.P3074157114913513075

/-! ## A233277.P7317448112828829560

`A233275(A233278(A233275(A213714(A005187(n)))))`
-/

namespace A233277.P7317448112828829560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233275 (A233278 (A233275 (A213714 (A005187 n).toNat).toNat).toNat).toNat

end

end A233277.P7317448112828829560

/-! ## A233277.P13942366045299115808

`A233275(A256991(A233278(A233275(A005187(n+1)))))`
-/

namespace A233277.P13942366045299115808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233275 (A256991 (A233278 (A233275 (A005187 (n + 1)).toNat).toNat).toNat).toNat

end

end A233277.P13942366045299115808

/-!
# A233278: a(0)=0, a(1)=1, after which a(2n) = A055938(a(n)), a(2n+1) = A005187(1+a(n)).

The programs for A233278, there is no canonical definition to state claims against.
-/

/-! ## A233278.P7975246989445229540

`A233276(A006068(A233280(n)))`
-/

namespace A233278.P7975246989445229540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233276 (A006068 (A233280 n).toNat).toNat

end

end A233278.P7975246989445229540

/-! ## A233278.P9863901794424737999

`A233276(A233277(A233276(n)))`
-/

namespace A233278.P9863901794424737999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233276 (A233277 (A233276 n).toNat).toNat

end

end A233278.P9863901794424737999

/-! ## A233278.P4930410193358350158

`A233276(A286546(n)+A233279(n))`
-/

namespace A233278.P4930410193358350158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233276 (A286546 n + A233279 n).toNat

end

end A233278.P4930410193358350158

/-! ## A233278.P5424533689240822714

`A233276(A092569(xor(n, A157928(n))))`
-/

namespace A233278.P5424533689240822714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233276 (A092569 (Int.xor (n : ℤ) (A157928 n)).toNat).toNat

end

end A233278.P5424533689240822714

/-! ## A233278.P8656238306673253201

`A233276(A234025(xor(n, A280507(n))))`
-/

namespace A233278.P8656238306673253201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233276 (A234025 (Int.xor (n : ℤ) (A280507 n)).toNat).toNat

end

end A233278.P8656238306673253201

/-! ## A233278.P3952647012246218491

`A233276(xor(A233279(n), A292600(n)))`
-/

namespace A233278.P3952647012246218491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233276 (Int.xor (A233279 n) (A292600 n)).toNat

end

end A233278.P3952647012246218491

/-! ## A233278.P763405930609873014

`A233276(A092569(2*n)/2)`
-/

namespace A233278.P763405930609873014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233276 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A233278.P763405930609873014

/-! ## A233278.P5009225299824333074

`A233276(A279343(A279342(n)))`
-/

namespace A233278.P5009225299824333074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233276 (A279343 (A279342 n).toNat).toNat

end

end A233278.P5009225299824333074

/-! ## A233278.P9510044168002467156

`A256992(A233276(A054429(2*n+1)))-1`
-/

namespace A233278.P9510044168002467156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256992 (A233276 (A054429 (2 * n + 1)).toNat).toNat - 1

end

end A233278.P9510044168002467156

/-! ## A233278.P6237998152621491300

`A233276(A279343(A279347(A279344(n))))`
-/

namespace A233278.P6237998152621491300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233276 (A279343 (A279347 (A279344 n).toNat).toNat).toNat

end

end A233278.P6237998152621491300

/-! ## A233278.P10078167520837837557

`A233276(A193231(A245812(A193231(n))))`
-/

namespace A233278.P10078167520837837557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233276 (A193231 (A245812 (A193231 n).toNat).toNat).toNat

end

end A233278.P10078167520837837557

/-!
# A233279: Permutation of nonnegative integers: a(n) = A054429(A006068(n)).

The programs for A233279, the canonical program `A233279.P10877154597455539139` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233279 has offset 0).

The definition of A233279 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A063946, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A233279.P10877154597455539139

`A006068(A063946(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A233279

/-- `A006068(A063946(n))` -/
def P10877154597455539139.Spec : Prop :=
  ∀ n, P10877154597455539139.a n = A233279 n

theorem P10877154597455539139.correct : P10877154597455539139.Spec := by
  intro n
  simp only [A233279]

end A233279

/-! ## A233279.P13303159874827720143

`A038558(n)-A053644(n)`
-/

namespace A233279.P13303159874827720143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038558 n - A053644 n

end

end A233279.P13303159874827720143

namespace A233279

/-- `A038558(n)-A053644(n)` -/
def P13303159874827720143.Spec : Prop :=
  ∀ n, P13303159874827720143.a n = A233279 n

theorem P13303159874827720143.correct : P13303159874827720143.Spec := by
  intro n
  simp only [A233279, Nat.add_sub_cancel, A233279.P13303159874827720143.a, A233279.P10877154597455539139.a, A006068, A006068.P16534033749009019403.a, A038558, A038558.P636742692231698886.a, A053644, A053644.P1707366427427647095.a, A063946, A063946.P14831572246508618093.a, A010060, A010060.P3080921269106500717.a, A265263, A265263.P13560857298709796040.a, A377404, A377404.P15784403255783113757.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A066194, A066194.P17197319264784136366.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A233279

/-! ## A233279.P15350885639292355204

`A038554(n)+A038558(n)-A003188(n)`
-/

namespace A233279.P15350885639292355204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 n + (A038558 n - A003188 n)

end

end A233279.P15350885639292355204

namespace A233279

/-- `A038554(n)+A038558(n)-A003188(n)` -/
def P15350885639292355204.Spec : Prop :=
  ∀ n, P15350885639292355204.a n = A233279 n

end A233279

/-! ## A233279.P10541322531986082893

`A180201(A064707(n))`
-/

namespace A233279.P10541322531986082893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 (A064707 n).toNat

end

end A233279.P10541322531986082893

namespace A233279

/-- `A180201(A064707(n))` -/
def P10541322531986082893.Spec : Prop :=
  ∀ n, P10541322531986082893.a n = A233279 n

end A233279

/-! ## A233279.P14331069091025997171

`A234025(A234612(n))`
-/

namespace A233279.P14331069091025997171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234025 (A234612 n).toNat

end

end A233279.P14331069091025997171

namespace A233279

/-- `A234025(A234612(n))` -/
def P14331069091025997171.Spec : Prop :=
  ∀ n, P14331069091025997171.a n = A233279 n

end A233279

/-! ## A233279.P6066258294216909237

`A292600(A063946(2*n))`
-/

namespace A233279.P6066258294216909237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A063946 (2 * n)).toNat

end

end A233279.P6066258294216909237

namespace A233279

/-- `A292600(A063946(2*n))` -/
def P6066258294216909237.Spec : Prop :=
  ∀ n, P6066258294216909237.a n = A233279 n

end A233279

/-! ## A233279.P4675103020523274629

`A003188(A180200(A006068(n)))`
-/

namespace A233279.P4675103020523274629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A180200 (A006068 n).toNat).toNat

end

end A233279.P4675103020523274629

namespace A233279

/-- `A003188(A180200(A006068(n)))` -/
def P4675103020523274629.Spec : Prop :=
  ∀ n, P4675103020523274629.a n = A233279 n

end A233279

/-! ## A233279.P14574319205071460880

`A092569(A180200(A092569(n)))`
-/

namespace A233279.P14574319205071460880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A180200 (A092569 n).toNat).toNat

end

end A233279.P14574319205071460880

namespace A233279

/-- `A092569(A180200(A092569(n)))` -/
def P14574319205071460880.Spec : Prop :=
  ∀ n, P14574319205071460880.a n = A233279 n

end A233279

/-! ## A233279.P797384072108857225

`A180200(A233280(A180200(n)))`
-/

namespace A233279.P797384072108857225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A233280 (A180200 n).toNat).toNat

end

end A233279.P797384072108857225

namespace A233279

/-- `A180200(A233280(A180200(n)))` -/
def P797384072108857225.Spec : Prop :=
  ∀ n, P797384072108857225.a n = A233279 n

end A233279

/-! ## A233279.P17158441293336551634

`A003188(A180200(A292600(2*n)))`
-/

namespace A233279.P17158441293336551634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A180200 (A292600 (2 * n)).toNat).toNat

end

end A233279.P17158441293336551634

namespace A233279

/-- `A003188(A180200(A292600(2*n)))` -/
def P17158441293336551634.Spec : Prop :=
  ∀ n, P17158441293336551634.a n = A233279 n

end A233279

/-! ## A233279.P8881108175309583633

`A003188(A180200(A064707(A003188(n))))`
-/

namespace A233279.P8881108175309583633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A180200 (A064707 (A003188 n).toNat).toNat).toNat

end

end A233279.P8881108175309583633

namespace A233279

/-- `A003188(A180200(A064707(A003188(n))))` -/
def P8881108175309583633.Spec : Prop :=
  ∀ n, P8881108175309583633.a n = A233279 n

end A233279

/-! ## A233279.P4103024203694180633

`A234025(A193231(A234613(A193231(n))))`
-/

namespace A233279.P4103024203694180633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234025 (A193231 (A234613 (A193231 n).toNat).toNat).toNat

end

end A233279.P4103024203694180633

namespace A233279

/-- `A234025(A193231(A234613(A193231(n))))` -/
def P4103024203694180633.Spec : Prop :=
  ∀ n, P4103024203694180633.a n = A233279 n

end A233279

/-! ## A233279.P14795939900401437344

`A154435(A092569(2*n)/2)`
-/

namespace A233279.P14795939900401437344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154435 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A233279.P14795939900401437344

namespace A233279

/-- `A154435(A092569(2*n)/2)` -/
def P14795939900401437344.Spec : Prop :=
  ∀ n, P14795939900401437344.a n = A233279 n

end A233279

/-! ## A233279.P16152965204143088002

`A180200(A003188(A154435(n)))`
-/

namespace A233279.P16152965204143088002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A003188 (A154435 n).toNat).toNat

end

end A233279.P16152965204143088002

namespace A233279

/-- `A180200(A003188(A154435(n)))` -/
def P16152965204143088002.Spec : Prop :=
  ∀ n, P16152965204143088002.a n = A233279 n

end A233279

/-! ## A233279.P4777360035066558107

`A154435(A154435(A180201(n)))`
-/

namespace A233279.P4777360035066558107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154435 (A154435 (A180201 n).toNat).toNat

end

end A233279.P4777360035066558107

namespace A233279

/-- `A154435(A154435(A180201(n)))` -/
def P4777360035066558107.Spec : Prop :=
  ∀ n, P4777360035066558107.a n = A233279 n

end A233279

/-! ## A233279.P10984674909904753873

`A153154(n)+A231551(n)-A006068(n)`
-/

namespace A233279.P10984674909904753873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 n + (A231551 n - A006068 n)

end

end A233279.P10984674909904753873

namespace A233279

/-- `A153154(n)+A231551(n)-A006068(n)` -/
def P10984674909904753873.Spec : Prop :=
  ∀ n, P10984674909904753873.a n = A233279 n

end A233279

/-! ## A233279.P4231385052765927790

`A165199(A154435(n))`
-/

namespace A233279.P4231385052765927790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A154435 n).toNat

end

end A233279.P4231385052765927790

namespace A233279

/-- `A165199(A154435(n))` -/
def P4231385052765927790.Spec : Prop :=
  ∀ n, P4231385052765927790.a n = A233279 n

end A233279

/-! ## A233279.P4980365659807236238

`xor(A165199(n), A165199(A292600(n)))`
-/

namespace A233279.P4980365659807236238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A165199 n) (A165199 (A292600 n).toNat)

end

end A233279.P4980365659807236238

namespace A233279

/-- `xor(A165199(n), A165199(A292600(n)))` -/
def P4980365659807236238.Spec : Prop :=
  ∀ n, P4980365659807236238.a n = A233279 n

end A233279

/-! ## A233279.P14691797933086552140

`A115352(A038558(n))`
-/

namespace A233279.P14691797933086552140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115352 (A038558 n).toNat

end

end A233279.P14691797933086552140

namespace A233279

/-- `A115352(A038558(n))` -/
def P14691797933086552140.Spec : Prop :=
  ∀ n, P14691797933086552140.a n = A233279 n

end A233279

/-! ## A233279.P18297425807307760802

`A252754(A269855(n))`
-/

namespace A233279.P18297425807307760802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252754 (A269855 n).toNat

end

end A233279.P18297425807307760802

namespace A233279

/-- `A252754(A269855(n))` -/
def P18297425807307760802.Spec : Prop :=
  ∀ n, P18297425807307760802.a n = A233279 n

end A233279

/-!
# A233280: Permutation of nonnegative integers: a(n) = A003188(A054429(n)).

The programs for A233280, the canonical program `A233280.P14130287684218724208` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233280 has offset 0).

The definition of A233280 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063946, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A233280.P14130287684218724208

`A063946(A003188(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A233280

/-- `A063946(A003188(n))` -/
def P14130287684218724208.Spec : Prop :=
  ∀ n, P14130287684218724208.a n = A233280 n

theorem P14130287684218724208.correct : P14130287684218724208.Spec := by
  intro n
  simp only [A233280]

end A233280

/-! ## A233280.P17921472481590633543

`A063946(xor(n, A004526(n)))`
-/

namespace A233280.P17921472481590633543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (Int.xor (n : ℤ) (A004526 n)).toNat

end

end A233280.P17921472481590633543

namespace A233280

/-- `A063946(xor(n, A004526(n)))` -/
def P17921472481590633543.Spec : Prop :=
  ∀ n, P17921472481590633543.a n = A233280 n

end A233280

/-! ## A233280.P11165194524085115167

`A003188(A003188(A180200(n)))`
-/

namespace A233280.P11165194524085115167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003188 (A180200 n).toNat).toNat

end

end A233280.P11165194524085115167

namespace A233280

/-- `A003188(A003188(A180200(n)))` -/
def P11165194524085115167.Spec : Prop :=
  ∀ n, P11165194524085115167.a n = A233280 n

end A233280

/-! ## A233280.P17089504574242157528

`A003188(A286546(n)+A233279(n))`
-/

namespace A233280.P17089504574242157528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A286546 n + A233279 n).toNat

end

end A233280.P17089504574242157528

namespace A233280

/-- `A003188(A286546(n)+A233279(n))` -/
def P17089504574242157528.Spec : Prop :=
  ∀ n, P17089504574242157528.a n = A233280 n

end A233280

/-! ## A233280.P4313991587045528518

`xor(A180200(A002265(n)), A180200(n))`
-/

namespace A233280.P4313991587045528518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A180200 (A002265 n).toNat) (A180200 n)

end

end A233280.P4313991587045528518

namespace A233280

/-- `xor(A180200(A002265(n)), A180200(n))` -/
def P4313991587045528518.Spec : Prop :=
  ∀ n, P4313991587045528518.a n = A233280 n

end A233280

/-! ## A233280.P14435842052476395645

`A003188(A003188(A062383(n))-(n+1))`
-/

namespace A233280.P14435842052476395645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003188 (A062383 n).toNat - (n + 1 : ℤ)).toNat

end

end A233280.P14435842052476395645

namespace A233280

/-- `A003188(A003188(A062383(n))-(n+1))` -/
def P14435842052476395645.Spec : Prop :=
  ∀ n, P14435842052476395645.a n = A233280 n

end A233280

/-! ## A233280.P13262433772809644249

`A064706(A180200(n))`
-/

namespace A233280.P13262433772809644249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064706 (A180200 n).toNat

end

end A233280.P13262433772809644249

namespace A233280

/-- `A064706(A180200(n))` -/
def P13262433772809644249.Spec : Prop :=
  ∀ n, P13262433772809644249.a n = A233280 n

end A233280

/-! ## A233280.P11676539277784109878

`A234612(A234026(n))`
-/

namespace A233280.P11676539277784109878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A234026 n).toNat

end

end A233280.P11676539277784109878

namespace A233280

/-- `A234612(A234026(n))` -/
def P11676539277784109878.Spec : Prop :=
  ∀ n, P11676539277784109878.a n = A233280 n

end A233280

/-! ## A233280.P13403922078657274468

`A092569(A180201(A092569(n)))`
-/

namespace A233280.P13403922078657274468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A180201 (A092569 n).toNat).toNat

end

end A233280.P13403922078657274468

namespace A233280

/-- `A092569(A180201(A092569(n)))` -/
def P13403922078657274468.Spec : Prop :=
  ∀ n, P13403922078657274468.a n = A233280 n

end A233280

/-! ## A233280.P1657616559413906827

`A003188(A231550(A154437(n)))`
-/

namespace A233280.P1657616559413906827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A231550 (A154437 n).toNat).toNat

end

end A233280.P1657616559413906827

namespace A233280

/-- `A003188(A231550(A154437(n)))` -/
def P1657616559413906827.Spec : Prop :=
  ∀ n, P1657616559413906827.a n = A233280 n

end A233280

/-! ## A233280.P10255844092578487362

`A180201(A233279(A180201(n)))`
-/

namespace A233280.P10255844092578487362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 (A233279 (A180201 n).toNat).toNat

end

end A233280.P10255844092578487362

namespace A233280

/-- `A180201(A233279(A180201(n)))` -/
def P10255844092578487362.Spec : Prop :=
  ∀ n, P10255844092578487362.a n = A233280 n

end A233280

/-! ## A233280.P11556132241392840841

`A003188(A233279(A286548(n)+n))`
-/

namespace A233280.P11556132241392840841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A233279 (A286548 n + (n : ℤ)).toNat).toNat

end

end A233280.P11556132241392840841

namespace A233280

/-- `A003188(A233279(A286548(n)+n))` -/
def P11556132241392840841.Spec : Prop :=
  ∀ n, P11556132241392840841.a n = A233280 n

end A233280

/-! ## A233280.P2538602614897191375

`A234612(A193231(A234025(A193231(n))))`
-/

namespace A233280.P2538602614897191375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A193231 (A234025 (A193231 n).toNat).toNat).toNat

end

end A233280.P2538602614897191375

namespace A233280

/-- `A234612(A193231(A234025(A193231(n))))` -/
def P2538602614897191375.Spec : Prop :=
  ∀ n, P2538602614897191375.a n = A233280 n

end A233280

/-! ## A233280.P1104740460325387792

`A193231(A234613(A234026(A234027(n))))`
-/

namespace A233280.P1104740460325387792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A234613 (A234026 (A234027 n).toNat).toNat).toNat

end

end A233280.P1104740460325387792

namespace A233280

/-- `A193231(A234613(A234026(A234027(n))))` -/
def P1104740460325387792.Spec : Prop :=
  ∀ n, P1104740460325387792.a n = A233280 n

end A233280

/-! ## A233280.P15977273331718769915

`A038554(A004761(n+2))`
-/

namespace A233280.P15977273331718769915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (A004761 (n + 2)).toNat

end

end A233280.P15977273331718769915

namespace A233280

/-- `A038554(A004761(n+2))` -/
def P15977273331718769915.Spec : Prop :=
  ∀ n, P15977273331718769915.a n = A233280 n

end A233280

/-! ## A233280.P3054230955319575868

`A038554(A053644(n)+n)`
-/

namespace A233280.P3054230955319575868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (A053644 n + (n : ℤ)).toNat

end

end A233280.P3054230955319575868

namespace A233280

/-- `A038554(A053644(n)+n)` -/
def P3054230955319575868.Spec : Prop :=
  ∀ n, P3054230955319575868.a n = A233280 n

end A233280

/-! ## A233280.P5435106365930670316

`A003188(A092569(2*n)/2)`
-/

namespace A233280.P5435106365930670316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A233280.P5435106365930670316

namespace A233280

/-- `A003188(A092569(2*n)/2)` -/
def P5435106365930670316.Spec : Prop :=
  ∀ n, P5435106365930670316.a n = A233280 n

end A233280

/-! ## A233280.P13385065247685069642

`A038554(A072376(2*n)+n)`
-/

namespace A233280.P13385065247685069642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (A072376 (2 * n) + (n : ℤ)).toNat

end

end A233280.P13385065247685069642

namespace A233280

/-- `A038554(A072376(2*n)+n)` -/
def P13385065247685069642.Spec : Prop :=
  ∀ n, P13385065247685069642.a n = A233280 n

end A233280

/-! ## A233280.P14072026532171880936

`xor(A002265(2*n), A063946(n))`
-/

namespace A233280.P14072026532171880936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002265 (2 * n)) (A063946 n)

end

end A233280.P14072026532171880936

namespace A233280

/-- `xor(A002265(2*n), A063946(n))` -/
def P14072026532171880936.Spec : Prop :=
  ∀ n, P14072026532171880936.a n = A233280 n

end A233280

/-! ## A233280.P14108178882964920310

`A003188(A246159(A003188(A054429(2*n+1))))`
-/

namespace A233280.P14108178882964920310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A246159 (A003188 (A054429 (2 * n + 1)).toNat).toNat).toNat

end

end A233280.P14108178882964920310

namespace A233280

/-- `A003188(A246159(A003188(A054429(2*n+1))))` -/
def P14108178882964920310.Spec : Prop :=
  ∀ n, P14108178882964920310.a n = A233280 n

end A233280

/-!
# A233281: Numbers n such that the least Fibonacci number F_k which is a multiple of n has a prime index, i.e., k is in A000040.

The programs for A233281, there is no canonical definition to state claims against.
-/

/-! ## A233281.P14309167439386376167

`A092395(n+1)%Δ[A215612(3*n+4)]`
-/

namespace A233281.P14309167439386376167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215612 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092395 (n + 1)) (f1 (n + 1) - f1 n)

end

end A233281.P14309167439386376167

/-! ## A233281.P11665574336916108579

`A092395(n+1)+A000007(A161549(n))`
-/

namespace A233281.P11665574336916108579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092395 (n + 1) + A000007 (A161549 n).toNat

end

end A233281.P11665574336916108579

/-! ## A233281.P9537785112254777595

`A092395(n+1)+A000007(A046063(n+1))`
-/

namespace A233281.P9537785112254777595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092395 (n + 1) + A000007 (A046063 (n + 1)).toNat

end

end A233281.P9537785112254777595

/-! ## A233281.P16655412019155946886

`A092395(n+1)+A000007(A062672(n+1))`
-/

namespace A233281.P16655412019155946886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092395 (n + 1) + A000007 (A062672 (n + 1)).toNat

end

end A233281.P16655412019155946886

/-! ## A233281.P67085335029586723

`A154272(A154260(n+4))+A092395(n+1)`
-/

namespace A233281.P67085335029586723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (A154260 (n + 4)).toNat + A092395 (n + 1)

end

end A233281.P67085335029586723

/-!
# A233282: Positions of records in partial LCM-products (A233287) of Fibonacci entry points (A001177).

The programs for A233282, there is no canonical definition to state claims against.
-/

/-! ## A233282.P4689570043349264601

`eq[A275326(n), A355676(n)]`
-/

namespace A233282.P4689570043349264601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233282.P4689570043349264601

/-! ## A233282.P5828663716153299490

`∑[A001223(A059294(n))]`
-/

namespace A233282.P5828663716153299490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A059294 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233282.P5828663716153299490

/-! ## A233282.P8714454050259061922

`A340224(A055544(n+2))`
-/

namespace A233282.P8714454050259061922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340224 (A055544 (n + 2)).toNat

end

end A233282.P8714454050259061922

/-! ## A233282.P3861952073471965131

`∑[A216321(A344604(n+2))]`
-/

namespace A233282.P3861952073471965131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216321 (A344604 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233282.P3861952073471965131

/-! ## A233282.P3931079507550730054

`record[A272565(A179480(n+2))]`
-/

namespace A233282.P3931079507550730054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (A179480 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233282.P3931079507550730054

/-!
# A233283: Record values in partial LCM-products (A233287) of Fibonacci entry points (A001177).

The programs for A233283, there is no canonical definition to state claims against.
-/

/-! ## A233283.P9324862436701861756

`A233287(A233282(n+1))`
-/

namespace A233283.P9324862436701861756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233287 (A233282 (n + 1)).toNat

end

end A233283.P9324862436701861756

/-! ## A233283.P10407467005407659340

`record[A233287(A000010(n+1))]`
-/

namespace A233283.P10407467005407659340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233287 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233283.P10407467005407659340

/-! ## A233283.P11725472598888064159

`record[A233287(A214392(n+1))]`
-/

namespace A233283.P11725472598888064159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233287 (A214392 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233283.P11725472598888064159

/-! ## A233283.P14022024145752225687

`record[A233287(A233285(n+1)+n)]`
-/

namespace A233283.P14022024145752225687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233287 (A233285 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233283.P14022024145752225687

/-! ## A233283.P1954210352692236968

`record[A233287(gcd(n, A233287(n+1)))]`
-/

namespace A233283.P1954210352692236968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233287 (Int.gcd (n : ℤ) (A233287 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233283.P1954210352692236968

/-! ## A233283.P12183801208880507161

`record[A233287(n+1)/A233284(n+1)²]`
-/

namespace A233283.P12183801208880507161
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233287 (n + 1) : ℚ) / (A233284 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233283.P12183801208880507161

/-!
# A233284: a(n) = largest m such that 1, 2, ..., m divide n-th Fibonacci number; a(n) = A055874(A000045(n)).

The programs for A233284, there is no canonical definition to state claims against.
-/

/-! ## A233284.P4540703339438865405

`A152727(n+1)-1`
-/

namespace A233284.P4540703339438865405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152727 (n + 1) - 1

end

end A233284.P4540703339438865405

/-! ## A233284.P16520121414878746672

`xor(A144437(n+1), A152727(n+1))`
-/

namespace A233284.P16520121414878746672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A144437 (n + 1)) (A152727 (n + 1))

end

end A233284.P16520121414878746672

/-! ## A233284.P7916505467738368275

`A260196(n+2)+A152727(n+1)`
-/

namespace A233284.P7916505467738368275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A152727 (n + 1)

end

end A233284.P7916505467738368275

/-! ## A233284.P6602227893864786896

`A165326(2*(n+1))+A152727(n+1)`
-/

namespace A233284.P6602227893864786896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * (n + 1)) + A152727 (n + 1)

end

end A233284.P6602227893864786896

/-! ## A233284.P1810354522846549688

`∑[A262501(n+1)]%A152727(n+1)`
-/

namespace A233284.P1810354522846549688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A152727 (n + 1))

end

end A233284.P1810354522846549688

/-! ## A233284.P10790836886426336443

`A097074(n)%A152727(n+1)`
-/

namespace A233284.P10790836886426336443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097074 n) (A152727 (n + 1))

end

end A233284.P10790836886426336443

/-! ## A233284.P13087885100656110714

`A248877(n+1)%A152727(n+1)`
-/

namespace A233284.P13087885100656110714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248877 (n + 1)) (A152727 (n + 1))

end

end A233284.P13087885100656110714

/-! ## A233284.P14321466142528468094

`A121934(n+1)%A152727(n+1)`
-/

namespace A233284.P14321466142528468094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A152727 (n + 1))

end

end A233284.P14321466142528468094

/-! ## A233284.P15221239995732998542

`A083584(n)%A152727(n+1)`
-/

namespace A233284.P15221239995732998542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083584 n) (A152727 (n + 1))

end

end A233284.P15221239995732998542

/-! ## A233284.P15058908120349188014

`A000010(A129322(∑[n]+2))`
-/

namespace A233284.P15058908120349188014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A129322 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A233284.P15058908120349188014

/-! ## A233284.P15397175657437969034

`A002260(A152727(n+1)+A000096(n))`
-/

namespace A233284.P15397175657437969034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A152727 (n + 1) + A000096 n).toNat

end

end A233284.P15397175657437969034

/-! ## A233284.P2020967513237885940

`A002262(A152727(n+1)+A000096(n))`
-/

namespace A233284.P2020967513237885940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A152727 (n + 1) + A000096 n).toNat

end

end A233284.P2020967513237885940

/-! ## A233284.P15892145536212139235

`A204016(A266440(n)+A152727(n+1))`
-/

namespace A233284.P15892145536212139235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204016 (A266440 n + A152727 (n + 1)).toNat

end

end A233284.P15892145536212139235

/-! ## A233284.P17709172052129580172

`A030494(n+1)%A152727(n+1)`
-/

namespace A233284.P17709172052129580172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A152727 (n + 1))

end

end A233284.P17709172052129580172

/-! ## A233284.P1330339937816504555

`A072828(n+1)%A152727(n+1)`
-/

namespace A233284.P1330339937816504555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A152727 (n + 1))

end

end A233284.P1330339937816504555

/-!
# A233285: a(n) = largest m such that m! divides n-th Fibonacci number; a(n) = A055881(A000045(n)).

The programs for A233285, the canonical program `A233285.P7127810014733158196` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233285 has offset 1).

The definition of A233285 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A233285.P7127810014733158196

`A055881(A000045(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A233285

/-- `A055881(A000045(n+1))` -/
def P7127810014733158196.Spec : Prop :=
  ∀ n, P7127810014733158196.a n = A233285 (n + 1)

theorem P7127810014733158196.correct : P7127810014733158196.Spec := by
  intro n
  simp only [A233285, Nat.add_sub_cancel]

end A233285

/-! ## A233285.P7542126282886383589

`A233286(n+1)+1`
-/

namespace A233285.P7542126282886383589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233286 (n + 1) + 1

end

end A233285.P7542126282886383589

namespace A233285

/-- `A233286(n+1)+1` -/
def P7542126282886383589.Spec : Prop :=
  ∀ n, P7542126282886383589.a n = A233285 (n + 1)

theorem P7542126282886383589.correct : P7542126282886383589.Spec := by
  intro n
  simp only [A233285, Nat.add_sub_cancel, A233285.P7542126282886383589.a, A233285.P7127810014733158196.a, A000045, A000045.P11838749114346432762.a, A055881, A055881.P16218723346386416985.f1, A055881.P16218723346386416985.a, A233286, A233286.P14086924426959048452.a, A012245, A012245.P11587607485183547821.a, A048764, A048764.P13822497594214245123.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A233285

/-! ## A233285.P3852034814184238497

`A014499(A233284(n+1)!)`
-/

namespace A233285.P3852034814184238497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (Nat.factorial (A233284 (n + 1)).toNat)

end

end A233285.P3852034814184238497

namespace A233285

/-- `A014499(A233284(n+1)!)` -/
def P3852034814184238497.Spec : Prop :=
  ∀ n, P3852034814184238497.a n = A233285 (n + 1)

end A233285

/-! ## A233285.P16801627461182931041

`A084558(A233284(n+1)!)`
-/

namespace A233285.P16801627461182931041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (Nat.factorial (A233284 (n + 1)).toNat)

end

end A233285.P16801627461182931041

namespace A233285

/-- `A084558(A233284(n+1)!)` -/
def P16801627461182931041.Spec : Prop :=
  ∀ n, P16801627461182931041.a n = A233285 (n + 1)

end A233285

/-! ## A233285.P2469195685936307479

`A122385(A233284(n+1)^2)`
-/

namespace A233285.P2469195685936307479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122385 (A233284 (n + 1) ^ 2).toNat

end

end A233285.P2469195685936307479

namespace A233285

/-- `A122385(A233284(n+1)^2)` -/
def P2469195685936307479.Spec : Prop :=
  ∀ n, P2469195685936307479.a n = A233285 (n + 1)

end A233285

/-! ## A233285.P6992567556389437435

`A001222(3^A233284(n+1))`
-/

namespace A233285.P6992567556389437435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A233284 (n + 1) : ℤ))).toNat

end

end A233285.P6992567556389437435

namespace A233285

/-- `A001222(3^A233284(n+1))` -/
def P6992567556389437435.Spec : Prop :=
  ∀ n, P6992567556389437435.a n = A233285 (n + 1)

end A233285

/-! ## A233285.P9903318697070554716

`A233284(A220075(∑[n+1]+1))`
-/

namespace A233285.P9903318697070554716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233284 (A220075 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A233285.P9903318697070554716

namespace A233285

/-- `A233284(A220075(∑[n+1]+1))` -/
def P9903318697070554716.Spec : Prop :=
  ∀ n, P9903318697070554716.a n = A233285 (n + 1)

end A233285

/-! ## A233285.P9279333598293204050

`A134625(C(A233284(n+1), 2)+1)`
-/

namespace A233285.P9279333598293204050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134625 (Nat.choose (A233284 (n + 1)).toNat 2 + 1)

end

end A233285.P9279333598293204050

namespace A233285

/-- `A134625(C(A233284(n+1), 2)+1)` -/
def P9279333598293204050.Spec : Prop :=
  ∀ n, P9279333598293204050.a n = A233285 (n + 1)

end A233285

/-! ## A233285.P7536909360073676414

`A233284(n+1)%Δ[A233256(2*(n+1))]`
-/

namespace A233285.P7536909360073676414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233256 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233284 (n + 1)) (f1 (n + 1) - f1 n)

end

end A233285.P7536909360073676414

namespace A233285

/-- `A233284(n+1)%Δ[A233256(2*(n+1))]` -/
def P7536909360073676414.Spec : Prop :=
  ∀ n, P7536909360073676414.a n = A233285 (n + 1)

end A233285

/-! ## A233285.P17152139445620014169

`A233284(n+1)+A007814(A331892(n+1))`
-/

namespace A233285.P17152139445620014169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233284 (n + 1) + A007814 (A331892 (n + 1)).toNat

end

end A233285.P17152139445620014169

namespace A233285

/-- `A233284(n+1)+A007814(A331892(n+1))` -/
def P17152139445620014169.Spec : Prop :=
  ∀ n, P17152139445620014169.a n = A233285 (n + 1)

end A233285

/-! ## A233285.P9802017244423744943

`A023645(A233284(n+1)*A280993(n+1))`
-/

namespace A233285.P9802017244423744943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (A233284 (n + 1) * A280993 (n + 1)).toNat

end

end A233285.P9802017244423744943

namespace A233285

/-- `A023645(A233284(n+1)*A280993(n+1))` -/
def P9802017244423744943.Spec : Prop :=
  ∀ n, P9802017244423744943.a n = A233285 (n + 1)

end A233285

/-! ## A233285.P1066708309979782865

`A233284(n+1)%A233278(A233265(n+1))`
-/

namespace A233285.P1066708309979782865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233284 (n + 1)) (A233278 (A233265 (n + 1)).toNat)

end

end A233285.P1066708309979782865

namespace A233285

/-- `A233284(n+1)%A233278(A233265(n+1))` -/
def P1066708309979782865.Spec : Prop :=
  ∀ n, P1066708309979782865.a n = A233285 (n + 1)

end A233285

/-! ## A233285.P2415633836893905443

`A233284(n+1)+A162211(A081424(n+1))`
-/

namespace A233285.P2415633836893905443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233284 (n + 1) + A162211 (A081424 (n + 1)).toNat

end

end A233285.P2415633836893905443

namespace A233285

/-- `A233284(n+1)+A162211(A081424(n+1))` -/
def P2415633836893905443.Spec : Prop :=
  ∀ n, P2415633836893905443.a n = A233285 (n + 1)

end A233285

/-! ## A233285.P1113035933551609828

`A233284(n+1)+A075255(A075236(3*n+4))`
-/

namespace A233285.P1113035933551609828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233284 (n + 1) + A075255 (A075236 (3 * n + 4)).toNat

end

end A233285.P1113035933551609828

namespace A233285

/-- `A233284(n+1)+A075255(A075236(3*n+4))` -/
def P1113035933551609828.Spec : Prop :=
  ∀ n, P1113035933551609828.a n = A233285 (n + 1)

end A233285

/-! ## A233285.P621617333167919196

`A233284(n+1)+A056594(A352926(n+1))`
-/

namespace A233285.P621617333167919196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233284 (n + 1) + A056594 (A352926 (n + 1)).toNat

end

end A233285.P621617333167919196

namespace A233285

/-- `A233284(n+1)+A056594(A352926(n+1))` -/
def P621617333167919196.Spec : Prop :=
  ∀ n, P621617333167919196.a n = A233285 (n + 1)

end A233285

/-! ## A233285.P16642051477329534564

`A280710(A256410(n+1))+A233284(n+1)`
-/

namespace A233285.P16642051477329534564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (A256410 (n + 1)).toNat + A233284 (n + 1)

end

end A233285.P16642051477329534564

namespace A233285

/-- `A280710(A256410(n+1))+A233284(n+1)` -/
def P16642051477329534564.Spec : Prop :=
  ∀ n, P16642051477329534564.a n = A233285 (n + 1)

end A233285

/-! ## A233285.P11729806610086419545

`and(A086827(n+1), A233284(n+1))`
-/

namespace A233285.P11729806610086419545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A233284 (n + 1))

end

end A233285.P11729806610086419545

namespace A233285

/-- `and(A086827(n+1), A233284(n+1))` -/
def P11729806610086419545.Spec : Prop :=
  ∀ n, P11729806610086419545.a n = A233285 (n + 1)

end A233285

/-! ## A233285.P8722515393298383689

`and(A151142(n), A233284(n+1))`
-/

namespace A233285.P8722515393298383689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151142 n) (A233284 (n + 1))

end

end A233285.P8722515393298383689

namespace A233285

/-- `and(A151142(n), A233284(n+1))` -/
def P8722515393298383689.Spec : Prop :=
  ∀ n, P8722515393298383689.a n = A233285 (n + 1)

end A233285

/-!
# A233286: Number of trailing zeros in the factorial base representation of n-th Fibonacci number.

The programs for A233286, the canonical program `A233286.P14086924426959048452` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233286 has offset 1).

The definition of A233286 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233285, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A233286.P14086924426959048452

`A233285(n+1)-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A233286

/-- `A233285(n+1)-1` -/
def P14086924426959048452.Spec : Prop :=
  ∀ n, P14086924426959048452.a n = A233286 (n + 1)

theorem P14086924426959048452.correct : P14086924426959048452.Spec := by
  intro n
  simp only [A233286, Nat.add_sub_cancel]

end A233286

/-! ## A233286.P12542367760267659419

`A230403(A000045(n+1))`
-/

namespace A233286.P12542367760267659419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 (A000045 (n + 1)).toNat

end

end A233286.P12542367760267659419

namespace A233286

/-- `A230403(A000045(n+1))` -/
def P12542367760267659419.Spec : Prop :=
  ∀ n, P12542367760267659419.a n = A233286 (n + 1)

end A233286

/-! ## A233286.P6788189718035109907

`A043096(A233285(n+1)^A233284(n+2))`
-/

namespace A233286.P6788189718035109907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (SequenceMachineLib.roundAway ((A233285 (n + 1) : ℚ) ^ (A233284 (n + 2) : ℤ))).toNat

end

end A233286.P6788189718035109907

namespace A233286

/-- `A043096(A233285(n+1)^A233284(n+2))` -/
def P6788189718035109907.Spec : Prop :=
  ∀ n, P6788189718035109907.a n = A233286 (n + 1)

end A233286

/-! ## A233286.P11082764380413873109

`A063949(A233285(n+1)+A217219(3*n+2))`
-/

namespace A233286.P11082764380413873109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063949 (A233285 (n + 1) + A217219 (3 * n + 2)).toNat

end

end A233286.P11082764380413873109

namespace A233286

/-- `A063949(A233285(n+1)+A217219(3*n+2))` -/
def P11082764380413873109.Spec : Prop :=
  ∀ n, P11082764380413873109.a n = A233286 (n + 1)

end A233286

/-! ## A233286.P1664507852206161634

`A354347(A141112(n+1))+A233285(n+1)`
-/

namespace A233286.P1664507852206161634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (A141112 (n + 1)).toNat + A233285 (n + 1)

end

end A233286.P1664507852206161634

namespace A233286

/-- `A354347(A141112(n+1))+A233285(n+1)` -/
def P1664507852206161634.Spec : Prop :=
  ∀ n, P1664507852206161634.a n = A233286 (n + 1)

end A233286

/-! ## A233286.P8366394540170813137

`A354347(A061240(n+1))+A233285(n+1)`
-/

namespace A233286.P8366394540170813137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (A061240 (n + 1)).toNat + A233285 (n + 1)

end

end A233286.P8366394540170813137

namespace A233286

/-- `A354347(A061240(n+1))+A233285(n+1)` -/
def P8366394540170813137.Spec : Prop :=
  ∀ n, P8366394540170813137.a n = A233286 (n + 1)

end A233286

/-! ## A233286.P13418601979346997551

`A278024(n)%A233284(n+1)`
-/

namespace A233286.P13418601979346997551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278024 n) (A233284 (n + 1))

end

end A233286.P13418601979346997551

namespace A233286

/-- `A278024(n)%A233284(n+1)` -/
def P13418601979346997551.Spec : Prop :=
  ∀ n, P13418601979346997551.a n = A233286 (n + 1)

end A233286

/-! ## A233286.P5816199641975175694

`and(A086827(n+1), A233284(n+1))-1`
-/

namespace A233286.P5816199641975175694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A233284 (n + 1)) - 1

end

end A233286.P5816199641975175694

namespace A233286

/-- `and(A086827(n+1), A233284(n+1))-1` -/
def P5816199641975175694.Spec : Prop :=
  ∀ n, P5816199641975175694.a n = A233286 (n + 1)

end A233286

/-! ## A233286.P18120559799824637618

`A285381(n)%A233284(n+1)`
-/

namespace A233286.P18120559799824637618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285381 n) (A233284 (n + 1))

end

end A233286.P18120559799824637618

namespace A233286

/-- `A285381(n)%A233284(n+1)` -/
def P18120559799824637618.Spec : Prop :=
  ∀ n, P18120559799824637618.a n = A233286 (n + 1)

end A233286

/-! ## A233286.P18416131845178916515

`A148524(n)%A233284(n+1)`
-/

namespace A233286.P18416131845178916515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148524 n) (A233284 (n + 1))

end

end A233286.P18416131845178916515

namespace A233286

/-- `A148524(n)%A233284(n+1)` -/
def P18416131845178916515.Spec : Prop :=
  ∀ n, P18416131845178916515.a n = A233286 (n + 1)

end A233286

/-! ## A233286.P13447638242015947129

`A233284(n+1)-and(1, A151142(n))`
-/

namespace A233286.P13447638242015947129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233284 (n + 1) - Int.land 1 (A151142 n)

end

end A233286.P13447638242015947129

namespace A233286

/-- `A233284(n+1)-and(1, A151142(n))` -/
def P13447638242015947129.Spec : Prop :=
  ∀ n, P13447638242015947129.a n = A233286 (n + 1)

end A233286

/-!
# A233287: a(n) = lcm_{i=1..n} A001177(i); partial LCM-products of Fibonacci entry points.

The programs for A233287, there is no canonical definition to state claims against.
-/

/-! ## A233287.P7820671764425141872

`lcm(A001177(n+1), a(n-1))` with `a(0)=1`
-/

namespace A233287.P7820671764425141872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (A001177 (n + 1)) (a (n - 1) : ℤ)

end

end A233287.P7820671764425141872

/-! ## A233287.P16165100647636065969

`lcm(abs(a(n-1)), A281230(n+1))` with `a(0)=1`
-/

namespace A233287.P16165100647636065969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A281230 (n + 1))

end

end A233287.P16165100647636065969

/-! ## A233287.P6077143917916744381

`lcm(a(A023443(n)), A281230(n+1))` with `a(0)=1`
-/

namespace A233287.P6077143917916744381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (A023443 n).toNat : ℤ) (A281230 (n + 1))

end

end A233287.P6077143917916744381

/-! ## A233287.P13469287105639570957

`lcm(-a(n-1), A001177(A008621(4*n)))` with `a(0)=1`
-/

namespace A233287.P13469287105639570957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (A001177 (A008621 (4 * n)).toNat)

end

end A233287.P13469287105639570957

/-! ## A233287.P18430803736654904918

`lcm(a(n-1), A281230(A002378(n)))` with `a(0)=1`
-/

namespace A233287.P18430803736654904918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A281230 (A002378 n).toNat)

end

end A233287.P18430803736654904918

/-!
# A233288: Number of (3/2,2)-tight graphs with 2n vertices, or kinematic chains with 2n links.

The programs for A233288, there is no canonical definition to state claims against.
-/

/-! ## A233288.P12203781938720215456

`A005350(n!²+1)`
-/

namespace A233288.P12203781938720215456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005350 (Nat.factorial n ^ 2 + 1)

end

end A233288.P12203781938720215456

/-!
# A233289: Number of tilings of a 3 X 3 X n box using 3n bricks of shape 3 X 1 X 1.

The programs for A233289, there is no canonical definition to state claims against.
-/

/-! ## A233289.P13392787889061340613

`A233308(∑[n+3])`
-/

namespace A233289.P13392787889061340613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233308 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233289.P13392787889061340613

/-! ## A233289.P10057952393406020385

`record[A233308(A069981(n))]`
-/

namespace A233289.P10057952393406020385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233308 (A069981 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233289.P10057952393406020385

/-! ## A233289.P6455284180020582711

`record[A233308(A186346(n+1))]`
-/

namespace A233289.P6455284180020582711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233308 (A186346 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233289.P6455284180020582711

/-! ## A233289.P6167960057945590165

`record[A233308(A003056(n)+n)]`
-/

namespace A233289.P6167960057945590165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233308 (A003056 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233289.P6167960057945590165

/-! ## A233289.P3475810003362173930

`record[A233308(A087061(n)+n)]`
-/

namespace A233289.P3475810003362173930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233308 (A087061 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233289.P3475810003362173930

/-!
# A233290: Number of tilings of a 6 X n rectangle with 2n trominoes of any shape.

The programs for A233290, there is no canonical definition to state claims against.
-/

/-! ## A233290.P6745836901717733939

`A233320(C(n+7, 2)+n)`
-/

namespace A233290.P6745836901717733939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (Nat.choose (n + 7) 2 + n)

end

end A233290.P6745836901717733939

/-! ## A233290.P14127530882891951169

`A233320(eq[7, A004736(n+1)])`
-/

namespace A233290.P14127530882891951169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233290.P14127530882891951169

/-! ## A233290.P9353355518229187245

`A233320(A055998(n+4)+n+3)`
-/

namespace A233290.P9353355518229187245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (A055998 (n + 4) + (n + 3 : ℤ)).toNat

end

end A233290.P9353355518229187245

/-! ## A233290.P2079004700694262670

`A233320(A167614(n+4)+2*n+3)`
-/

namespace A233290.P2079004700694262670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (A167614 (n + 4) + (2 * n + 3 : ℤ)).toNat

end

end A233290.P2079004700694262670

/-! ## A233290.P13028676525137875856

`A233320(eq[9, A003511(A002260(n+1))])`
-/

namespace A233290.P13028676525137875856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233290.P13028676525137875856

/-!
# A233291: Number of tilings of a 4 X 4 X n box using 4n bricks of shape 4 X 1 X 1.

The programs for A233291, there is no canonical definition to state claims against.
-/

/-! ## A233291.P17867960440046926617

`A233308(∑[n+4]+2)`
-/

namespace A233291.P17867960440046926617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233308 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233291.P17867960440046926617

/-! ## A233291.P2412153722088057045

`record[A233308(A060577(n))]`
-/

namespace A233291.P2412153722088057045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233308 (A060577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233291.P2412153722088057045

/-! ## A233291.P3548535834142375935

`record[A233308(n*A243148(n))]`
-/

namespace A233291.P3548535834142375935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233308 ((n : ℤ) * A243148 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233291.P3548535834142375935

/-! ## A233291.P11941420074993852040

`record[A233308(n)^A243148(n)]`
-/

namespace A233291.P11941420074993852040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233308 n : ℚ) ^ (A243148 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233291.P11941420074993852040

/-! ## A233291.P14254466823474967961

`A233308(A046691(n+2))+char[17]`
-/

namespace A233291.P14254466823474967961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233308 (A046691 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A233291.P14254466823474967961

/-!
# A233292: Triangle read by rows: T(n,k) is the number of partitions of n into at most four parts in which no part exceeds k, 0 <= k <= n.

The programs for A233292, there is no canonical definition to state claims against.
-/

/-! ## A233292.P12489017109472297478

`A108456(n)-A309785(A146607(n+1))`
-/

namespace A233292.P12489017109472297478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108456 n - A309785 (A146607 (n + 1)).toNat

end

end A233292.P12489017109472297478

/-! ## A233292.P13171862225752133126

`A108456(n)-A044941(A135401(n))`
-/

namespace A233292.P13171862225752133126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108456 n - A044941 (A135401 n).toNat

end

end A233292.P13171862225752133126

/-! ## A233292.P16449386040892944967

`A108456(n)-A124764(A146796(n+1))`
-/

namespace A233292.P16449386040892944967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108456 n - A124764 (A146796 (n + 1)).toNat

end

end A233292.P16449386040892944967

/-! ## A233292.P11425279697891989777

`A178798(A048142(3*(n+1)))+A108456(n)`
-/

namespace A233292.P11425279697891989777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A048142 (3 * (n + 1))).toNat + A108456 n

end

end A233292.P11425279697891989777

/-! ## A233292.P11036502040064148925

`A108456(n^A317489(n+3))`
-/

namespace A233292.P11036502040064148925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108456 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A317489 (n + 3) : ℤ))).toNat

end

end A233292.P11036502040064148925

/-!
# A233294: Number of tilings of a 5 X 5 X n box using 5n bricks of shape 5 X 1 X 1.

The programs for A233294, there is no canonical definition to state claims against.
-/

/-! ## A233294.P3295685034002318236

`A233308(∑[n+5]+5)`
-/

namespace A233294.P3295685034002318236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233308 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A233294.P3295685034002318236

/-!
# A233295: Riordan array ((1+x)/(1-x)^3, 2*x/(1-x)).

The programs for A233295, the canonical program `A233295.P9579760312636421357` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233295 has offset 0).

The definition of A233295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233295.P9579760312636421357

`2^col(n)*(C(row(n), col(n))+3*C(row(n), col(n)+1)+2*C(row(n), col(n)+2))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A233295

/-- `2^col(n)*(C(row(n), col(n))+3*C(row(n), col(n)+1)+2*C(row(n), col(n)+2))` -/
def P9579760312636421357.Spec : Prop :=
  ∀ n, (P9579760312636421357.a n : ℤ) = A233295 n

theorem P9579760312636421357.correct : P9579760312636421357.Spec := by
  intro n
  simp only [A233295]

end A233295

/-! ## A233295.P11776928920388201262

`A059268(n)*A125165(n)`
-/

namespace A233295.P11776928920388201262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A125165 n

end

end A233295.P11776928920388201262

namespace A233295

/-- `A059268(n)*A125165(n)` -/
def P11776928920388201262.Spec : Prop :=
  ∀ n, P11776928920388201262.a n = A233295 n

end A233295

/-! ## A233295.P3291877029445649079

`A000079(A002262(n))*A125165(n)`
-/

namespace A233295.P3291877029445649079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A125165 n

end

end A233295.P3291877029445649079

namespace A233295

/-- `A000079(A002262(n))*A125165(n)` -/
def P3291877029445649079.Spec : Prop :=
  ∀ n, P3291877029445649079.a n = A233295 n

end A233295

/-! ## A233295.P15075123894015486258

`A013620(A112367(n))*A125165(n)`
-/

namespace A233295.P15075123894015486258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 (A112367 n).toNat * A125165 n

end

end A233295.P15075123894015486258

namespace A233295

/-- `A013620(A112367(n))*A125165(n)` -/
def P15075123894015486258.Spec : Prop :=
  ∀ n, P15075123894015486258.a n = A233295 n

end A233295

/-! ## A233295.P16514099520376052467

`A011782(A002260(n+1))*A125165(n)`
-/

namespace A233295.P16514099520376052467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A125165 n

end

end A233295.P16514099520376052467

namespace A233295

/-- `A011782(A002260(n+1))*A125165(n)` -/
def P16514099520376052467.Spec : Prop :=
  ∀ n, P16514099520376052467.a n = A233295 n

end A233295

/-! ## A233295.P4190899986237402884

`A125165(n)*A130321(A061579(n))`
-/

namespace A233295.P4190899986237402884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125165 n * A130321 (A061579 n).toNat

end

end A233295.P4190899986237402884

namespace A233295

/-- `A125165(n)*A130321(A061579(n))` -/
def P4190899986237402884.Spec : Prop :=
  ∀ n, P4190899986237402884.a n = A233295 n

end A233295

/-! ## A233295.P15416856688182472067

`A208532(comp[∑[n]])`
-/

namespace A233295.P15416856688182472067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208532 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A233295.P15416856688182472067

namespace A233295

/-- `A208532(comp[∑[n]])` -/
def P15416856688182472067.Spec : Prop :=
  ∀ n, P15416856688182472067.a n = A233295 n

end A233295

/-! ## A233295.P10641789164006581432

`A059268(n)*A110813(comp[∑[n]])`
-/

namespace A233295.P10641789164006581432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A110813 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A233295.P10641789164006581432

namespace A233295

/-- `A059268(n)*A110813(comp[∑[n]])` -/
def P10641789164006581432.Spec : Prop :=
  ∀ n, P10641789164006581432.a n = A233295 n

end A233295

/-! ## A233295.P9054977684499358597

`A209757(A002024(n+1)+n+2)/2`
-/

namespace A233295.P9054977684499358597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209757 (A002024 (n + 1) + (n + 2 : ℤ)).toNat : ℚ) / 2

end

end A233295.P9054977684499358597

namespace A233295

/-- `A209757(A002024(n+1)+n+2)/2` -/
def P9054977684499358597.Spec : Prop :=
  ∀ n, P9054977684499358597.a n = (A233295 n : ℚ)

end A233295

/-! ## A233295.P16640518280354280479

`A209761(A014132(n+1)+1)-A013609(n)`
-/

namespace A233295.P16640518280354280479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209761 (A014132 (n + 1) + 1).toNat - A013609 n

end

end A233295.P16640518280354280479

namespace A233295

/-- `A209761(A014132(n+1)+1)-A013609(n)` -/
def P16640518280354280479.Spec : Prop :=
  ∀ n, P16640518280354280479.a n = A233295 n

end A233295

/-!
# A233297: Number of (n+1)X(1+1) 0..1 arrays x(i,j) with row sums sum{x(i,j), j=1..1+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A233297, there is no canonical definition to state claims against.
-/

/-! ## A233297.P12279310427514663071

`A233301(∑[n+1])`
-/

namespace A233297.P12279310427514663071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233297.P12279310427514663071

/-! ## A233297.P18382932118764304077

`record[A233301(abs(A122432(n)))]`
-/

namespace A233297.P18382932118764304077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 |A122432 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233297.P18382932118764304077

/-! ## A233297.P10625986879942217799

`record[A233301(A106255(n+1))]`
-/

namespace A233297.P10625986879942217799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (A106255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233297.P10625986879942217799

/-! ## A233297.P15981448786722486017

`record[A233301(A130270(n+1))]`
-/

namespace A233297.P15981448786722486017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233297.P15981448786722486017

/-! ## A233297.P2341573237583352910

`record[A233301(A025796(lcm(2, n)))]`
-/

namespace A233297.P2341573237583352910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (A025796 (Nat.lcm 2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233297.P2341573237583352910

/-!
# A233298: Number of (n+1) X (2+1) 0..1 arrays x(i,j) with row sums Sum_{j=1..2+1} x(i,j) nondecreasing, and column sums Sum_{i=1..n+1} i^2*x(i,j) nondecreasing.

The programs for A233298, there is no canonical definition to state claims against.
-/

/-! ## A233298.P15016911392656087349

`A233301(∑[n+2])`
-/

namespace A233298.P15016911392656087349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233298.P15016911392656087349

/-! ## A233298.P1722370809252590577

`record[A233301(abs(A201163(n)))]`
-/

namespace A233298.P1722370809252590577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233298.P1722370809252590577

/-! ## A233298.P512663004215435614

`A233301(A000096(n+1))%A022013(n+1)`
-/

namespace A233298.P512663004215435614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233301 (A000096 (n + 1)).toNat) (A022013 (n + 1))

end

end A233298.P512663004215435614

/-!
# A233299: Number of (n+1)X(3+1) 0..1 arrays x(i,j) with row sums sum{x(i,j), j=1..3+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A233299, there is no canonical definition to state claims against.
-/

/-! ## A233299.P4068349737684537649

`A233301(∑[n+3]+1)`
-/

namespace A233299.P4068349737684537649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233301 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233299.P4068349737684537649

