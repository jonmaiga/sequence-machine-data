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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A355400: Number of n-tuples (p_1, p_2, ..., p_n) of Dyck paths of semilength n, such that each p_i is never below p_{i-1}.

The programs for A355400, there is no canonical definition to state claims against.
-/

/-! ## A355400.P257703047603821924

`A123352(A004273(n²))`
-/

namespace A355400.P257703047603821924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 (A004273 (n ^ 2)).toNat

end

end A355400.P257703047603821924

/-! ## A355400.P6217961047419071008

`A123352(A061579(2*n²))`
-/

namespace A355400.P6217961047419071008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 (A061579 (2 * n ^ 2)).toNat

end

end A355400.P6217961047419071008

/-! ## A355400.P15595903175667426778

`A123352(A038722(2*(n²+1)))`
-/

namespace A355400.P15595903175667426778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 (A038722 (2 * (n ^ 2 + 1))).toNat

end

end A355400.P15595903175667426778

/-! ## A355400.P335801393777928380

`A123352(A056220(round(sqrt(n²+1))))`
-/

namespace A355400.P335801393777928380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 (A056220 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A355400.P335801393777928380

/-! ## A355400.P2914073429969092767

`A123352(ceil(sin(n)²)*A056220(n))`
-/

namespace A355400.P2914073429969092767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 (⌈Real.sin (n : ℝ) ^ 2⌉ * A056220 n).toNat

end

end A355400.P2914073429969092767

/-!
# A355401: Triangle read by rows: T(n, k) = Sum_{i=1..n-k} inverse-q-binomial(n-k-1, i-1) * q-binomial(n-2+i, n-2) for 0 < k < n with initial values T(n, 0) = 0 for n > 0 and T(n, n) = 1 for n >= 0, here q = 2.

The programs for A355401, there is no canonical definition to state claims against.
-/

/-! ## A355401.P9640206930040313792

`A293113(n)^A292602(n)!`
-/

namespace A355401.P9640206930040313792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 n ^ Nat.factorial (A292602 n).toNat

end

end A355401.P9640206930040313792

/-! ## A355401.P735193689024515782

`A293113(n)^A007913(n+1)!`
-/

namespace A355401.P735193689024515782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 n ^ Nat.factorial (A007913 (n + 1)).toNat

end

end A355401.P735193689024515782

/-! ## A355401.P10578135175994252062

`A118759(A344855(n)^A025581(n))`
-/

namespace A355401.P10578135175994252062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.roundAway ((A344855 n : ℚ) ^ (A025581 n : ℤ))).toNat

end

end A355401.P10578135175994252062

/-! ## A355401.P3022430445195818156

`A344855(n)^A020639(A184174(n))`
-/

namespace A355401.P3022430445195818156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344855 n : ℚ) ^ (A020639 (A184174 n).toNat : ℤ)

end

end A355401.P3022430445195818156

/-! ## A355401.P12337195293852715745

`A344855(n)^A001037(A238279(n))`
-/

namespace A355401.P12337195293852715745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344855 n : ℚ) ^ (A001037 (A238279 n).toNat : ℤ)

end

end A355401.P12337195293852715745

/-!
# A355402: Maximal GCD of seven positive integers with sum n.

The programs for A355402, there is no canonical definition to state claims against.
-/

/-! ## A355402.P5858849260611253327

`A239141(A159918(n)^A243823(n+1))`
-/

namespace A355402.P5858849260611253327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239141 (SequenceMachineLib.roundAway ((A159918 n : ℚ) ^ (A243823 (n + 1) : ℤ))).toNat

end

end A355402.P5858849260611253327

/-! ## A355402.P12677908682733360037

`or(A033831(n+1), A294935(A038754(n)))`
-/

namespace A355402.P12677908682733360037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033831 (n + 1)) (A294935 (A038754 n).toNat)

end

end A355402.P12677908682733360037

/-! ## A355402.P6830831694899217199

`A094916(or(A066760(n+1), A306211(n+1)))`
-/

namespace A355402.P6830831694899217199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094916 (Int.lor (A066760 (n + 1)) (A306211 (n + 1))).toNat

end

end A355402.P6830831694899217199

/-! ## A355402.P4114708595122859837

`gcd(n+1, A003983(A089411(n+1)))`
-/

namespace A355402.P4114708595122859837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003983 (A089411 (n + 1)).toNat)

end

end A355402.P4114708595122859837

/-! ## A355402.P17589821189674074060

`A006530(gcd((n+1)², A010461(n+3)))`
-/

namespace A355402.P17589821189674074060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd ((n + 1) ^ 2 : ℤ) (A010461 (n + 3)))

end

end A355402.P17589821189674074060

/-!
# A355403: Maximal LCM of seven positive integers with sum n.

The programs for A355403, there is no canonical definition to state claims against.
-/

/-! ## A355403.P14978736063134102285

`A181845(∑[a(n-1)+1])` with `a(0)=1, a(1)=2, a(2)=36, a(3)=10`
-/

namespace A355403.P14978736063134102285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 36, 10] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181845 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355403.P14978736063134102285

/-! ## A355403.P4479443598807220389

`A181845(A055999(n+4))`
-/

namespace A355403.P4479443598807220389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181845 (A055999 (n + 4)).toNat

end

end A355403.P4479443598807220389

/-!
# A355404: Lexicographically earliest sequence of distinct terms such that the concatenation of three successive terms form a palindrome using the alphabet {1, 2}.

The programs for A355404, there is no canonical definition to state claims against.
-/

/-! ## A355404.P16276990773485448857

`A376677(∑{e}[A354663(n), #])`
-/

namespace A355404.P16276990773485448857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376677 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A355404.P16276990773485448857

/-! ## A355404.P2965510718470716654

`A065031(lcm(A000961(n+1), A150317(n)))`
-/

namespace A355404.P2965510718470716654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 (Int.lcm (A000961 (n + 1)) (A150317 n))

end

end A355404.P2965510718470716654

/-!
# A355405: Inverse permutation to A269838.

The programs for A355405, there is no canonical definition to state claims against.
-/

/-! ## A355405.P2839851627826493024

`A372166(A269838(A372166(A269838(A372166(n+1)))))`
-/

namespace A355405.P2839851627826493024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372166 (A269838 (A372166 (A269838 (A372166 (n + 1)).toNat).toNat).toNat).toNat

end

end A355405.P2839851627826493024

/-! ## A355405.P5471612241694886882

`A372166(A043318(n+1))`
-/

namespace A355405.P5471612241694886882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372166 (A043318 (n + 1)).toNat

end

end A355405.P5471612241694886882

/-! ## A355405.P17181712871790946326

`A372166(A044915(n+1))`
-/

namespace A355405.P17181712871790946326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372166 (A044915 (n + 1)).toNat

end

end A355405.P17181712871790946326

/-! ## A355405.P9410588314537809937

`A372166(A055647(n+1))`
-/

namespace A355405.P9410588314537809937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372166 (A055647 (n + 1)).toNat

end

end A355405.P9410588314537809937

/-! ## A355405.P11882225843824018784

`A372166(A161951(n+1))`
-/

namespace A355405.P11882225843824018784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372166 (A161951 (n + 1)).toNat

end

end A355405.P11882225843824018784

/-!
# A355406: Positive integers that are not powers of 2 and whose Collatz trajectory has maximum power of 2 different from 2^4.

The programs for A355406, there is no canonical definition to state claims against.
-/

/-! ## A355406.P3842504718585543975

`lt[5, A306577(n+1)]+1`
-/

namespace A355406.P3842504718585543975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306577 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A355406.P3842504718585543975

/-! ## A355406.P16033874881550249305

`lt[5, A238192(n+1)]+1`
-/

namespace A355406.P16033874881550249305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238192 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A355406.P16033874881550249305

/-! ## A355406.P3968096195472299811

`lt[5, A306577(A028310(n))]`
-/

namespace A355406.P3968096195472299811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306577 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A355406.P3968096195472299811

/-! ## A355406.P150790640365687693

`lt[8, A306577(A000007(n)+n)]`
-/

namespace A355406.P150790640365687693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306577 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A355406.P150790640365687693

/-! ## A355406.P6686517198352002773

`lt[8, A306577(abs(n-A000007(n)))]`
-/

namespace A355406.P6686517198352002773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306577 |(n : ℤ) - A000007 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A355406.P6686517198352002773

/-! ## A355406.P1685365768982483184

`lt[13, A306577(A233583(n+1))]`
-/

namespace A355406.P1685365768982483184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306577 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A355406.P1685365768982483184

/-! ## A355406.P9014041642347255063

`filter[A308149(n+1), A347523(#)]`
-/

namespace A355406.P9014041642347255063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A355406.P9014041642347255063

/-! ## A355406.P21958478294892208

`filter[A308149(n+2), A267579(#)]`
-/

namespace A355406.P21958478294892208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308149 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A355406.P21958478294892208

/-! ## A355406.P5092034630316894628

`filter[A308149(n+3), A132350(#)]`
-/

namespace A355406.P5092034630316894628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308149 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A355406.P5092034630316894628

/-!
# A355407: Expansion of the e.g.f. log((1 - x) / (1 - 2*x)) / (1 - x)^4.

The programs for A355407, there is no canonical definition to state claims against.
-/

/-! ## A355407.P2816572247151477192

`A355257(C(n+5, 2)+n)`
-/

namespace A355407.P2816572247151477192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355257 (Nat.choose (n + 5) 2 + n)

end

end A355407.P2816572247151477192

/-! ## A355407.P12666375834187423139

`A355257(A052905(n+2))`
-/

namespace A355407.P12666375834187423139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355257 (A052905 (n + 2)).toNat

end

end A355407.P12666375834187423139

/-!
# A355408: Expansion of e.g.f. 1/(1 + exp(x) - exp(3*x)).

The programs for A355408, there is no canonical definition to state claims against.
-/

/-! ## A355408.P4487107351313418615

`∑[A159308(record[A292404(n)])]`
-/

namespace A355408.P4487107351313418615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292404 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159308 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355408.P4487107351313418615

/-!
# A355412: Number of numbers <= 10^n with no prime factor greater than n.

The programs for A355412, there is no canonical definition to state claims against.
-/

/-! ## A355412.P9876659432402630314

`A045946(n)%∑[A292079(3*n+2)]`
-/

namespace A355412.P9876659432402630314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292079 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045946 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355412.P9876659432402630314

/-!
# A355413: Lexicographically earliest infinite sequence of positive numbers such that, for n>1, a(n) AND a(n-1) is distinct from all previous AND operations between adjacent terms, where AND is the binary AND operator.

The programs for A355413, there is no canonical definition to state claims against.
-/

/-! ## A355413.P13162352843505099226

`or(n, abs(xor(2, -n))%(n+1))`
-/

namespace A355413.P13162352843505099226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (Int.tmod |Int.xor 2 (-(n : ℤ))| (n + 1 : ℤ))

end

end A355413.P13162352843505099226

/-! ## A355413.P17673125609238247478

`or(n, floor((1-n)%4/2+n))`
-/

namespace A355413.P17673125609238247478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊(Int.tmod (1 - (n : ℤ)) 4 : ℚ) / 2 + (n : ℚ)⌋

end

end A355413.P17673125609238247478

/-! ## A355413.P4031887968042944852

`or(n, comp[∑[and(2, n+1)+1]]-n)`
-/

namespace A355413.P4031887968042944852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A355413.P4031887968042944852

/-! ## A355413.P4650767786688867783

`ceil((n+1)/(n+2)*or(n, n-1))`
-/

namespace A355413.P4650767786688867783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (n + 2 : ℚ) * (Int.lor (n : ℤ) ((n : ℤ) - 1) : ℚ)⌉

end

end A355413.P4650767786688867783

/-! ## A355413.P4806041060406946128

`or(n, (record[xor(6, xor(7, n)-1)]-1)%(n+1))`
-/

namespace A355413.P4806041060406946128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 ((Nat.xor 7 n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1) (n + 1 : ℤ))

end

end A355413.P4806041060406946128

/-! ## A355413.P9087381710841898460

`or(n, (∑[n]%2+2*n)%(xor(1, n)+1))`
-/

namespace A355413.P9087381710841898460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 + 2 * n) % (Nat.xor 1 n + 1))

end

end A355413.P9087381710841898460

/-! ## A355413.P4976226470358755688

`or(n, A267354(ceil(n/2)))`
-/

namespace A355413.P4976226470358755688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A267354 ⌈(n : ℚ) / 2⌉.toNat)

end

end A355413.P4976226470358755688

/-! ## A355413.P5682068479723538359

`or(n, A116939(A161680(n)))`
-/

namespace A355413.P5682068479723538359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A116939 (A161680 n).toNat)

end

end A355413.P5682068479723538359

/-! ## A355413.P10832109853744002876

`or(n, A289207(A003815(n)))`
-/

namespace A355413.P10832109853744002876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A289207 (A003815 n).toNat)

end

end A355413.P10832109853744002876

/-! ## A355413.P15308477069253720252

`A086799(A028310(n))-char[4*n]`
-/

namespace A355413.P15308477069253720252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A028310 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A355413.P15308477069253720252

/-!
# A355414: Expansion of the e.g.f. log((1 - x) / (1 - 2*x)) / (1 - x)^5.

The programs for A355414, there is no canonical definition to state claims against.
-/

/-! ## A355414.P10259134301899037053

`A355407(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A355414.P10259134301899037053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A355407 n + (n : ℤ) * a (n - 1)

end

end A355414.P10259134301899037053

/-!
# A355419: a(n) is the number of solutions to x^y == y^x (mod p) where 0 < x,y <= p and p is the n-th prime.

The programs for A355419, there is no canonical definition to state claims against.
-/

/-! ## A355419.P1034738443426282130

`A355486(n+1)+A000040(n+1)`
-/

namespace A355419.P1034738443426282130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355486 (n + 1) + A000040 (n + 1)

end

end A355419.P1034738443426282130

/-! ## A355419.P9078691326641141197

`A355486(n+1)+Δ[A007504(n)]`
-/

namespace A355419.P9078691326641141197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355486 (n + 1) + (f1 (n + 1) - f1 n)

end

end A355419.P9078691326641141197

/-! ## A355419.P15215626962089266599

`A355486(n+1)+p?[A014681(n)]`
-/

namespace A355419.P15215626962089266599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355486 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355419.P15215626962089266599

/-! ## A355419.P16437300042348841361

`A355486(n+1)+p?[A259153(n)]`
-/

namespace A355419.P16437300042348841361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355486 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355419.P16437300042348841361

/-! ## A355419.P8119307086135570832

`A355486(n+1)+A095320(n+1)`
-/

namespace A355419.P8119307086135570832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355486 (n + 1) + A095320 (n + 1)

end

end A355419.P8119307086135570832

/-! ## A355419.P18419983790907814572

`A355486(n+1)+A216883(n+1)`
-/

namespace A355419.P18419983790907814572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355486 (n + 1) + A216883 (n + 1)

end

end A355419.P18419983790907814572

/-! ## A355419.P2621845355232578354

`A355486(n+1)+A216884(n+1)`
-/

namespace A355419.P2621845355232578354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355486 (n + 1) + A216884 (n + 1)

end

end A355419.P2621845355232578354

/-! ## A355419.P6063759977689052911

`A355486(n+1)+A216885(n+1)`
-/

namespace A355419.P6063759977689052911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355486 (n + 1) + A216885 (n + 1)

end

end A355419.P6063759977689052911

/-! ## A355419.P5256395295973776763

`A355486(n+1)+A216887(n+1)`
-/

namespace A355419.P5256395295973776763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355486 (n + 1) + A216887 (n + 1)

end

end A355419.P5256395295973776763

/-!
# A355421: Expansion of e.g.f. exp(Sum_{k=1..3} (exp(k*x) - 1)).

The programs for A355421, there is no canonical definition to state claims against.
-/

/-! ## A355421.P5823272434418109847

`A355423(A046691(n+2))`
-/

namespace A355421.P5823272434418109847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355423 (A046691 (n + 2)).toNat

end

end A355421.P5823272434418109847

/-! ## A355421.P12398371217556184842

`A355423(A056000(n)+6)`
-/

namespace A355421.P12398371217556184842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355423 (A056000 n + 6).toNat

end

end A355421.P12398371217556184842

/-! ## A355421.P18079784124517080552

`A355423(eq[3, A025581(n)])`
-/

namespace A355421.P18079784124517080552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A355421.P18079784124517080552

/-!
# A355422: Expansion of e.g.f. exp(Sum_{k=1..4} (exp(k*x) - 1)).

The programs for A355422, there is no canonical definition to state claims against.
-/

/-! ## A355422.P9735611381883674093

`record[A355423(A052905(n))]`
-/

namespace A355422.P9735611381883674093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355423 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355422.P9735611381883674093

/-! ## A355422.P15098462850729144441

`A355423(A052905(n+2))`
-/

namespace A355422.P15098462850729144441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355423 (A052905 (n + 2)).toNat

end

end A355422.P15098462850729144441

/-!
# A355423: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. exp(Sum_{j=1..k} (exp(j*x) - 1)).

The programs for A355423, there is no canonical definition to state claims against.
-/

/-! ## A355423.P12670678296290102472

`A095149(A144644(n)^A144644(n+2)!)*A106800(n)`
-/

namespace A355423.P12670678296290102472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (A144644 n ^ Nat.factorial (A144644 (n + 2)).toNat).toNat * A106800 n

end

end A355423.P12670678296290102472

/-! ## A355423.P9878907271053356174

`A106800(n)*A214340(A233543(n))`
-/

namespace A355423.P9878907271053356174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 n * A214340 (A233543 n).toNat

end

end A355423.P9878907271053356174

/-! ## A355423.P7811050718919112452

`A106800(n)*A217205(A152431(n+2))`
-/

namespace A355423.P7811050718919112452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 n * A217205 (A152431 (n + 2)).toNat

end

end A355423.P7811050718919112452

/-! ## A355423.P15452270638087074284

`A151510(n)*A217205(A152431(n+2))`
-/

namespace A355423.P15452270638087074284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151510 n * A217205 (A152431 (n + 2)).toNat

end

end A355423.P15452270638087074284

/-! ## A355423.P17360793309424747761

`A144228(n)-A289508(A287021(n))`
-/

namespace A355423.P17360793309424747761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144228 n - A289508 (A287021 n).toNat

end

end A355423.P17360793309424747761

/-!
# A355425: Expansion of e.g.f. 1/(1 - Sum_{k=1..2} (exp(k*x) - 1)/k).

The programs for A355425, there is no canonical definition to state claims against.
-/

/-! ## A355425.P14129069491916649117

`A355427(∑[n+3])`
-/

namespace A355425.P14129069491916649117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355427 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355425.P14129069491916649117

/-! ## A355425.P16563458075458389429

`record[A355427(eq[1, A151510(n+3)])]`
-/

namespace A355425.P16563458075458389429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151510 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355427 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355425.P16563458075458389429

/-! ## A355425.P2477571781098779283

`record[A355427(n)/A129994(n+2)]`
-/

namespace A355425.P2477571781098779283
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355427 n : ℚ) / (A129994 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355425.P2477571781098779283

/-! ## A355425.P7285556483200012101

`record[A355427(n)/A131113(n+2)]`
-/

namespace A355425.P7285556483200012101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355427 n : ℚ) / (A131113 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355425.P7285556483200012101

/-!
# A355426: Expansion of e.g.f. 1/(1 - Sum_{k=1..3} (exp(k*x) - 1)/k).

The programs for A355426, there is no canonical definition to state claims against.
-/

/-! ## A355426.P11114546956913543840

`A355427(A046691(n+2))`
-/

namespace A355426.P11114546956913543840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355427 (A046691 (n + 2)).toNat

end

end A355426.P11114546956913543840

/-! ## A355426.P2414797594969049847

`A355427(A056000(n)+6)`
-/

namespace A355426.P2414797594969049847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355427 (A056000 n + 6).toNat

end

end A355426.P2414797594969049847

/-! ## A355426.P1375988276403980736

`A355427(eq[3, A025581(n)])`
-/

namespace A355426.P1375988276403980736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A355426.P1375988276403980736

/-!
# A355427: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. 1/(1 - Sum_{j=1..k} (exp(j*x) - 1)/j).

The programs for A355427, there is no canonical definition to state claims against.
-/

/-! ## A355427.P15891027533868286190

`A214776(n)+A108611(A118354(n))`
-/

namespace A355427.P15891027533868286190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 n + A108611 (A118354 n).toNat

end

end A355427.P15891027533868286190

/-! ## A355427.P1701458122751119922

`A214776(n)+A056654(A290759(n))`
-/

namespace A355427.P1701458122751119922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 n + A056654 (A290759 n).toNat

end

end A355427.P1701458122751119922

/-! ## A355427.P8791339293328992510

`A214672(2*A237018(n))+A108611(A118354(n))`
-/

namespace A355427.P8791339293328992510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214672 (2 * A237018 n).toNat + A108611 (A118354 n).toNat

end

end A355427.P8791339293328992510

/-!
# A355428: a(n) = n! * [x^n] 1/(1 - Sum_{k=1..n} (exp(k*x) - 1)/k).

The programs for A355428, there is no canonical definition to state claims against.
-/

/-! ## A355428.P11453402368847797850

`A355427(∑[4*n])`
-/

namespace A355428.P11453402368847797850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355427 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355428.P11453402368847797850

/-!
# A355430: Primes starting with an even decimal digit.

The programs for A355430, there is no canonical definition to state claims against.
-/

/-! ## A355430.P14184051596667222430

`A000040(lt[A004087(n+1)%2, 1]+1)`
-/

namespace A355430.P14184051596667222430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004087 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A355430.P14184051596667222430

/-! ## A355430.P532755194450808352

`A000040(lt[A032759(n+1)%2, 1]+1)`
-/

namespace A355430.P532755194450808352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032759 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A355430.P532755194450808352

/-! ## A355430.P7185694962583166642

`p?[A040976(n+1)+A020639(A004087(n+1))]`
-/

namespace A355430.P7185694962583166642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + A020639 (A004087 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355430.P7185694962583166642

/-! ## A355430.P13582384051889365011

`p?[record[A249278(n)]]`
-/

namespace A355430.P13582384051889365011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249278 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355430.P13582384051889365011

/-! ## A355430.P7869153272780071575

`∪[p?[A273892(n+1)], A045708(n+2)]`
-/

namespace A355430.P7869153272780071575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045708 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A355430.P7869153272780071575

/-! ## A355430.P2906080387962403424

`p?[A273892(n+1)]`
-/

namespace A355430.P2906080387962403424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355430.P2906080387962403424

/-! ## A355430.P17389490921609245010

`∏{p}[p?[A273892(A028310(n))], #]`
-/

namespace A355430.P17389490921609245010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A355430.P17389490921609245010

/-! ## A355430.P7776725799530869533

`filter[A273892(n+2), A010051(#)]`
-/

namespace A355430.P7776725799530869533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A355430.P7776725799530869533

/-! ## A355430.P15174211464962116195

`filter[A273892(n+2), A080339(#)]`
-/

namespace A355430.P15174211464962116195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A355430.P15174211464962116195

/-! ## A355430.P3720605242825821259

`∩[A000040(n+1), A273892(n+1)]`
-/

namespace A355430.P3720605242825821259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355430.P3720605242825821259

/-! ## A355430.P5378126083329211403

`∩[A008578(n+1), A273892(n+1)]`
-/

namespace A355430.P5378126083329211403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355430.P5378126083329211403

/-! ## A355430.P2753954781319797573

`∩[A033946(n+1), A273892(n+1)]`
-/

namespace A355430.P2753954781319797573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355430.P2753954781319797573

/-! ## A355430.P3954762705547955696

`∩[A045319(n+1), A273892(n+1)]`
-/

namespace A355430.P3954762705547955696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355430.P3954762705547955696

/-! ## A355430.P11368786571307664258

`∩[A045344(n+1), A273892(n+1)]`
-/

namespace A355430.P11368786571307664258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355430.P11368786571307664258

/-! ## A355430.P5783138268981342153

`∩[A070957(n+1), A273892(n+1)]`
-/

namespace A355430.P5783138268981342153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355430.P5783138268981342153

/-! ## A355430.P5775576843995342962

`∩[A106118(n+1), A273892(n+1)]`
-/

namespace A355430.P5775576843995342962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355430.P5775576843995342962

/-! ## A355430.P15625712091591141103

`∩[A138837(n+1), A273892(n+1)]`
-/

namespace A355430.P15625712091591141103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355430.P15625712091591141103

/-! ## A355430.P9024885401838520749

`∩[A143260(n+1), A273892(n+1)]`
-/

namespace A355430.P9024885401838520749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355430.P9024885401838520749

/-! ## A355430.P9545736883285519512

`∩[A197636(n+1), A273892(n+1)]`
-/

namespace A355430.P9545736883285519512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355430.P9545736883285519512

/-! ## A355430.P12614526790254967309

`∩[A240960(n+1), A273892(n+1)]`
-/

namespace A355430.P12614526790254967309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355430.P12614526790254967309

/-!
# A355431: Numbers k whose binary expansion, when interpreted in base -1+i, gives a Gaussian prime.

The programs for A355431, there is no canonical definition to state claims against.
-/

/-! ## A355431.P7087942107184649930

`lt[A380180(A151551(2*(n+1))), A057979(n)]`
-/

namespace A355431.P7087942107184649930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380180 (A151551 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355431.P7087942107184649930

/-!
# A355432: a(n) = number of k < n such that rad(k) = rad(n) and k does not divide n, where rad(k) = A007947(k).

The programs for A355432, there is no canonical definition to state claims against.
-/

/-! ## A355432.P13565204715478162113

`A008479(n+1)-A005361(n+1)`
-/

namespace A355432.P13565204715478162113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (n + 1) - A005361 (n + 1)

end

end A355432.P13565204715478162113

/-! ## A355432.P14606138284526139634

`A183093(n+1)-A372720(n+1)`
-/

namespace A355432.P14606138284526139634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183093 (n + 1) - A372720 (n + 1)

end

end A355432.P14606138284526139634

/-! ## A355432.P12044690445439935413

`A243822(n+1)-A361235(n+1)`
-/

namespace A355432.P12044690445439935413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1) - A361235 (n + 1)

end

end A355432.P12044690445439935413

/-! ## A355432.P11012936185498789418

`A183095(n+1)-(A372720(n+1)+1)`
-/

namespace A355432.P11012936185498789418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183095 (n + 1) - (A372720 (n + 1) + 1)

end

end A355432.P11012936185498789418

/-! ## A355432.P16368947026354411793

`A003557(n+1)-(A360543(n+1)+A005361(n+1))`
-/

namespace A355432.P16368947026354411793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) - (A360543 (n + 1) + A005361 (n + 1))

end

end A355432.P16368947026354411793

/-! ## A355432.P6428270116789188315

`A045763(n+1)-(A361235(n+1)+A243823(n+1))`
-/

namespace A355432.P6428270116789188315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) - (A361235 (n + 1) + A243823 (n + 1))

end

end A355432.P6428270116789188315

/-! ## A355432.P7995769228949600800

`A336551(n+1)+1-A360543(n+1)-A005361(n+1)`
-/

namespace A355432.P7995769228949600800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1) + (1 - A360543 (n + 1)) - A005361 (n + 1)

end

end A355432.P7995769228949600800

/-! ## A355432.P327113373065480106

`A091090(A285111(n+1))-A005361(n+1)`
-/

namespace A355432.P327113373065480106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A285111 (n + 1)).toNat - A005361 (n + 1)

end

end A355432.P327113373065480106

/-!
# A355433: Numbers k such that k is sqrt(k)-smooth and k+1 is sqrt(k+1)-smooth.

The programs for A355433, the canonical program `A355433.P16718409258377503773` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355433 has offset 1).

The definition of A355433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355433.P16718409258377503773

`∩[A048098(n+1)-1, A048098(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A355433

/-- `∩[A048098(n+1)-1, A048098(n+1)]` -/
def P16718409258377503773.Spec : Prop :=
  ∀ n, (P16718409258377503773.a n : ℤ) = A355433 (n + 1)

theorem P16718409258377503773.correct : P16718409258377503773.Spec := by
  intro n
  simp only [A355433, Nat.add_sub_cancel]

end A355433

/-! ## A355433.P15486534993832187792

`lt[A074399(A028310(n))², n+2]`
-/

namespace A355433.P15486534993832187792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (A028310 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A355433.P15486534993832187792

namespace A355433

/-- `lt[A074399(A028310(n))², n+2]` -/
def P15486534993832187792.Spec : Prop :=
  ∀ n, (P15486534993832187792.a n : ℤ) = A355433 (n + 1)

end A355433

/-! ## A355433.P17310497691464911278

`∩[A048098(n+1), A023443(A048098(n+1))]`
-/

namespace A355433.P17310497691464911278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A048098 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355433.P17310497691464911278

namespace A355433

/-- `∩[A048098(n+1), A023443(A048098(n+1))]` -/
def P17310497691464911278.Spec : Prop :=
  ∀ n, (P17310497691464911278.a n : ℤ) = A355433 (n + 1)

end A355433

/-! ## A355433.P9448315303616565038

`lt[A000010(A074399(n+1)²), n]+1`
-/

namespace A355433.P9448315303616565038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A074399 (n + 1) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A355433.P9448315303616565038

namespace A355433

/-- `lt[A000010(A074399(n+1)²), n]+1` -/
def P9448315303616565038.Spec : Prop :=
  ∀ n, (P9448315303616565038.a n : ℤ) = A355433 (n + 1)

end A355433

/-! ## A355433.P7719312547766540861

`lt[A006530(A060798(n+1))², n+2]`
-/

namespace A355433.P7719312547766540861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A060798 (n + 1)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A355433.P7719312547766540861

namespace A355433

/-- `lt[A006530(A060798(n+1))², n+2]` -/
def P7719312547766540861.Spec : Prop :=
  ∀ n, (P7719312547766540861.a n : ℤ) = A355433 (n + 1)

end A355433

/-!
# A355436: Inverse permutation to A355435.

The programs for A355436, there is no canonical definition to state claims against.
-/

/-! ## A355436.P8161916890946598482

`A120242(lcm(n+1, A176153(n)))`
-/

namespace A355436.P8161916890946598482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120242 (Int.lcm (n + 1 : ℤ) (A176153 n))

end

end A355436.P8161916890946598482

/-!
# A355437: a(n) is the sign of Maslanka's constant A(n).

The programs for A355437, there is no canonical definition to state claims against.
-/

/-! ## A355437.P11132162776913177615

`A033999(ceil(log2(A053397(n+1))))`
-/

namespace A355437.P11132162776913177615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ⌈Real.logb 2 (A053397 (n + 1) : ℝ)⌉.toNat

end

end A355437.P11132162776913177615

/-! ## A355437.P4900830600565140830

`A033999(A164010(3*n+4)+A083850(n+2))`
-/

namespace A355437.P4900830600565140830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A164010 (3 * n + 4) + A083850 (n + 2)).toNat

end

end A355437.P4900830600565140830

/-! ## A355437.P4095918181708705622

`A087960(A121900(3*n)^6)`
-/

namespace A355437.P4095918181708705622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A121900 (3 * n) ^ 6).toNat

end

end A355437.P4095918181708705622

/-! ## A355437.P9473684195704098676

`∏{p}[A196183(n+1)!, A008683(#)]`
-/

namespace A355437.P9473684195704098676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A196183 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008683 p

end

end A355437.P9473684195704098676

/-!
# A355439: Smallest Lucas number beginning with n.

The programs for A355439, there is no canonical definition to state claims against.
-/

/-! ## A355439.P17086232567127780958

`A000032(A355438(n+1))`
-/

namespace A355439.P17086232567127780958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A355438 (n + 1)).toNat

end

end A355439.P17086232567127780958

/-! ## A355439.P15441550884383739320

`A329723(A355438(n+1)+2)`
-/

namespace A355439.P15441550884383739320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (A355438 (n + 1) + 2).toNat

end

end A355439.P15441550884383739320

/-!
# A355440: Expansion of e.g.f. Sum_{k>=0} exp(4^k * x) * x^k/k!.

The programs for A355440, there is no canonical definition to state claims against.
-/

/-! ## A355440.P14158542836798482471

`(2-A112316(n))*A193199(n)`
-/

namespace A355440.P14158542836798482471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A112316 n) * A193199 n

end

end A355440.P14158542836798482471

/-! ## A355440.P11680525593682307777

`gcd(2, A004277(n))*A193199(n)`
-/

namespace A355440.P11680525593682307777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A004277 n) : ℤ) * A193199 n

end

end A355440.P11680525593682307777

/-! ## A355440.P10645320629820034674

`A020639(A008458(n))*A193199(n)`
-/

namespace A355440.P10645320629820034674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A193199 n

end

end A355440.P10645320629820034674

/-! ## A355440.P4426302201600001650

`A006530(A000079(n))*A193199(n)`
-/

namespace A355440.P4426302201600001650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000079 n).toNat * A193199 n

end

end A355440.P4426302201600001650

/-!
# A355441: Numbers k such that the sum of the least prime factors of i=2..k is prime.

The programs for A355441, there is no canonical definition to state claims against.
-/

/-! ## A355441.P8358644623039346524

`lt[A000005(∑[A020639(n+2)]), 3]+2`
-/

namespace A355441.P8358644623039346524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A355441.P8358644623039346524

/-!
# A355442: a(n) = gcd(A003961(n), A276086(n)), where A003961 is fully multiplicative with a(p) = nextprime(p), and A276086 is primorial base exp-function.

The programs for A355442, there is no canonical definition to state claims against.
-/

/-! ## A355442.P1744756958463337526

`gcd(A003961(n+1), A276086(n+1))`
-/

namespace A355442.P1744756958463337526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (n + 1)) (A276086 (n + 1))

end

end A355442.P1744756958463337526

/-! ## A355442.P572108973325279547

`gcd(A276086((n%2)^n+n), A283980(n+1))`
-/

namespace A355442.P572108973325279547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 ((n % 2) ^ n + n)) (A283980 (n + 1))

end

end A355442.P572108973325279547

/-! ## A355442.P17277272510147962466

`gcd(A276086(A028310(n)+1), A283980(n+1))`
-/

namespace A355442.P17277272510147962466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (A028310 n + 1).toNat) (A283980 (n + 1))

end

end A355442.P17277272510147962466

/-! ## A355442.P17494226294712723881

`gcd(A243501(n+1)-1, A276086(A028310(n+1)))`
-/

namespace A355442.P17494226294712723881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A243501 (n + 1) - 1) (A276086 (A028310 (n + 1)).toNat)

end

end A355442.P17494226294712723881

/-! ## A355442.P12950636489440765478

`A355001(n+1)^A106836(A056469(n))`
-/

namespace A355442.P12950636489440765478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355001 (n + 1) : ℚ) ^ (A106836 (A056469 n).toNat : ℤ)

end

end A355442.P12950636489440765478

/-!
# A355443: a(n) = 1 if n is of the form p^2 * q where p and q are primes with p^2 < q, otherwise 0.

The programs for A355443, there is no canonical definition to state claims against.
-/

/-! ## A355443.P13524879913835528116

`A353474(n+1)-A355444(n+1)`
-/

namespace A355443.P13524879913835528116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353474 (n + 1) - A355444 (n + 1)

end

end A355443.P13524879913835528116

/-! ## A355443.P18129898139029773692

`A353472(n+1)*A355453(n+1)`
-/

namespace A355443.P18129898139029773692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353472 (n + 1) * A355453 (n + 1)

end

end A355443.P18129898139029773692

/-! ## A355443.P13164299140260430653

`char[eq[4, A342085(n+1)]]`
-/

namespace A355443.P13164299140260430653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342085 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A355443.P13164299140260430653

/-! ## A355443.P34841828185509013

`A000035(C(4, A342085(n+1)))`
-/

namespace A355443.P34841828185509013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Nat.choose 4 (A342085 (n + 1)).toNat)

end

end A355443.P34841828185509013

/-! ## A355443.P18346283270004749335

`val(A000040(A290110(n+1)), 23)`
-/

namespace A355443.P18346283270004749335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (A290110 (n + 1)).toNat).toNat 23

end

end A355443.P18346283270004749335

/-! ## A355443.P7451713500851193761

`A000073(C(2, C(4, A342085(n+1))))`
-/

namespace A355443.P7451713500851193761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (Nat.choose 2 (Nat.choose 4 (A342085 (n + 1)).toNat))

end

end A355443.P7451713500851193761

/-! ## A355443.P4870344546215925864

`A353474(n+1)*A355453(n+1)`
-/

namespace A355443.P4870344546215925864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353474 (n + 1) * A355453 (n + 1)

end

end A355443.P4870344546215925864

/-! ## A355443.P16971744427280753095

`and(A290110(n+1), A353474(n+1))`
-/

namespace A355443.P16971744427280753095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290110 (n + 1)) (A353474 (n + 1))

end

end A355443.P16971744427280753095

/-! ## A355443.P12855400741513718103

`A353472(n+1)-(A355444(n+1)+A353473(n+1))`
-/

namespace A355443.P12855400741513718103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353472 (n + 1) - (A355444 (n + 1) + A353473 (n + 1))

end

end A355443.P12855400741513718103

/-! ## A355443.P3456337705280020084

`A000007(xor(4, A342085(n+1)))`
-/

namespace A355443.P3456337705280020084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 4 (A342085 (n + 1))).toNat

end

end A355443.P3456337705280020084

/-! ## A355443.P496385324187065180

`val(A038548(n+1), A341643(A342085(n+1)))`
-/

namespace A355443.P496385324187065180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038548 (n + 1)).toNat (A341643 (A342085 (n + 1)).toNat).toNat

end

end A355443.P496385324187065180

/-!
# A355444: a(n) = 1 if n is of the form p^2 * q where p and q are primes with p < q < p^2, otherwise 0.

The programs for A355444, there is no canonical definition to state claims against.
-/

/-! ## A355444.P1559222761586435397

`A353474(n+1)-A355443(n+1)`
-/

namespace A355444.P1559222761586435397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353474 (n + 1) - A355443 (n + 1)

end

end A355444.P1559222761586435397

/-! ## A355444.P5710142792079683616

`A353472(n+1)*A355454(n+1)`
-/

namespace A355444.P5710142792079683616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353472 (n + 1) * A355454 (n + 1)

end

end A355444.P5710142792079683616

/-! ## A355444.P17361153421381584000

`char[A355446(n+1)-1]`
-/

namespace A355444.P17361153421381584000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355446 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A355444.P17361153421381584000

/-! ## A355444.P9298177035845415584

`A000007(xor(6, A290110(n+1)))`
-/

namespace A355444.P9298177035845415584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 6 (A290110 (n + 1))).toNat

end

end A355444.P9298177035845415584

/-! ## A355444.P3307752212901458539

`A353474(n+1)*A355454(n+1)`
-/

namespace A355444.P3307752212901458539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353474 (n + 1) * A355454 (n + 1)

end

end A355444.P3307752212901458539

/-! ## A355444.P15959438838210920602

`A353798(n+1)*A355454(n+1)`
-/

namespace A355444.P15959438838210920602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353798 (n + 1) * A355454 (n + 1)

end

end A355444.P15959438838210920602

/-! ## A355444.P10730820534475132352

`A008683(A290110(n+1))*A353474(n+1)`
-/

namespace A355444.P10730820534475132352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A290110 (n + 1)).toNat * A353474 (n + 1)

end

end A355444.P10730820534475132352

/-! ## A355444.P18354356564962802331

`val(A326042(A256017(n+1)), 8)`
-/

namespace A355444.P18354356564962802331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A326042 (A256017 (n + 1)).toNat).toNat 8

end

end A355444.P18354356564962802331

/-! ## A355444.P6266073921092097409

`val(A138984(A138980(n)), 29)`
-/

namespace A355444.P6266073921092097409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A138984 (A138980 n).toNat).toNat 29

end

end A355444.P6266073921092097409

/-! ## A355444.P6329922149340996880

`A064911(A314847(n)^A084904(n))`
-/

namespace A355444.P6329922149340996880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (SequenceMachineLib.roundAway ((A314847 n : ℚ) ^ (A084904 n : ℤ))).toNat

end

end A355444.P6329922149340996880

/-!
# A355445: Numbers of the form p^2 * q where p and q are primes with p^2 < q.

The programs for A355445, there is no canonical definition to state claims against.
-/

/-! ## A355445.P8084831970057004325

`eq[1, A355443(n+1)]+1`
-/

namespace A355445.P8084831970057004325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355443 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A355445.P8084831970057004325

/-! ## A355445.P9743523920180887017

`eq[2, sqrt(A342085(n+1))]+1`
-/

namespace A355445.P9743523920180887017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A342085 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n + 1

end

end A355445.P9743523920180887017

/-! ## A355445.P9626255335335125488

`eq[1, A355443(A028310(n))]`
-/

namespace A355445.P9626255335335125488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355443 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A355445.P9626255335335125488

/-! ## A355445.P13856229015156762987

`eq[9, A290110(A233583(n+1))]`
-/

namespace A355445.P13856229015156762987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290110 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A355445.P13856229015156762987

/-! ## A355445.P8289597679723865863

`filter[A139703(n+1), A101605(#)]`
-/

namespace A355445.P8289597679723865863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A355445.P8289597679723865863

/-! ## A355445.P12686101062149763076

`filter[A007624(n+1), A355443(#)]`
-/

namespace A355445.P12686101062149763076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355443 (f1 j).toNat = 1) n)

end

end A355445.P12686101062149763076

/-! ## A355445.P16332436018223269313

`filter[A013929(n+1), A355443(#)]`
-/

namespace A355445.P16332436018223269313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355443 (f1 j).toNat = 1) n)

end

end A355445.P16332436018223269313

/-! ## A355445.P6455349433080133723

`filter[A014612(n+1), A355443(#)]`
-/

namespace A355445.P6455349433080133723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355443 (f1 j).toNat = 1) n)

end

end A355445.P6455349433080133723

/-! ## A355445.P11567051419866501746

`filter[A030515(n+1), A341591(#)]`
-/

namespace A355445.P11567051419866501746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341591 (f1 j).toNat = 1) n)

end

end A355445.P11567051419866501746

/-!
# A355446: Numbers of the form p^2 * q where p and q are primes with p < q < p^2.

The programs for A355446, there is no canonical definition to state claims against.
-/

/-! ## A355446.P9204277223258439937

`comp[A355444(n+1)+n]+1`
-/

namespace A355446.P9204277223258439937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355444 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A355446.P9204277223258439937

/-! ## A355446.P16610690133897508643

`filter[A096156(n+1), A099104(#)]`
-/

namespace A355446.P16610690133897508643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A355446.P16610690133897508643

/-! ## A355446.P11600124447942006604

`filter[A057715(n+1), A212793(#)]`
-/

namespace A355446.P11600124447942006604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A355446.P11600124447942006604

/-! ## A355446.P9521326400193448553

`filter[A057715(n+1), A340369(#)]`
-/

namespace A355446.P9521326400193448553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A355446.P9521326400193448553

/-! ## A355446.P4046648900614643886

`filter[A057715(n+1), A353472(#)]`
-/

namespace A355446.P4046648900614643886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353472 (f1 j).toNat = 1) n)

end

end A355446.P4046648900614643886

/-! ## A355446.P9417009405885493984

`filter[A057715(n+1), A353474(#)]`
-/

namespace A355446.P9417009405885493984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353474 (f1 j).toNat = 1) n)

end

end A355446.P9417009405885493984

/-! ## A355446.P17376654214945282549

`filter[A057715(n+1), A353798(#)]`
-/

namespace A355446.P17376654214945282549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A355446.P17376654214945282549

/-! ## A355446.P15708265329709812784

`filter[A057715(n+1), A355444(#)]`
-/

namespace A355446.P15708265329709812784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355444 (f1 j).toNat = 1) n)

end

end A355446.P15708265329709812784

/-! ## A355446.P11806175448994699835

`filter[A057715(n+1), A359429(#)]`
-/

namespace A355446.P11806175448994699835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A355446.P11806175448994699835

/-! ## A355446.P6490697499637305044

`filter[A057715(n+1), A359471(#)]`
-/

namespace A355446.P6490697499637305044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A355446.P6490697499637305044

/-!
# A355447: a(n) = 1 if n is neither squarefree nor prime power, otherwise 0.

The programs for A355447, the canonical program `A355447.P2177856951054736842` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355447 has offset 1).

The definition of A355447 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A010055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A355447.P2177856951054736842

`(1-A008966(n+1))*(1-A010055(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A355447

/-- `(1-A008966(n+1))*(1-A010055(n+1))` -/
def P2177856951054736842.Spec : Prop :=
  ∀ n, P2177856951054736842.a n = A355447 (n + 1)

theorem P2177856951054736842.correct : P2177856951054736842.Spec := by
  intro n
  simp only [A355447, Nat.add_sub_cancel]

end A355447

/-! ## A355447.P12835476350044436620

`round(n*∏{e}[n+1, #/n])!%∏{e}[n+1, #!]`
-/

namespace A355447.P12835476350044436620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((n : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) / (n : ℚ)))).toNat % (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p))

end

end A355447.P12835476350044436620

namespace A355447

/-- `round(n*∏{e}[n+1, #/n])!%∏{e}[n+1, #!]` -/
def P12835476350044436620.Spec : Prop :=
  ∀ n, (P12835476350044436620.a n : ℤ) = A355447 (n + 1)

end A355447

/-! ## A355447.P16608153659590438922

`--1%C(∑{e}[n+1, #]+abs(1-n)-n, ∑{e}[n+1, #-1])`
-/

namespace A355447.P16608153659590438922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-1) (Nat.choose (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + (|1 - (n : ℤ)| - (n : ℤ))).toNat (∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - 1)).toNat : ℤ)

end

end A355447.P16608153659590438922

namespace A355447

/-- `--1%C(∑{e}[n+1, #]+abs(1-n)-n, ∑{e}[n+1, #-1])` -/
def P16608153659590438922.Spec : Prop :=
  ∀ n, P16608153659590438922.a n = A355447 (n + 1)

end A355447

/-! ## A355447.P11088837806411065566

`C(A385113(n+1), 4)`
-/

namespace A355447.P11088837806411065566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A385113 (n + 1)).toNat 4

end

end A355447.P11088837806411065566

namespace A355447

/-- `C(A385113(n+1), 4)` -/
def P11088837806411065566.Spec : Prop :=
  ∀ n, (P11088837806411065566.a n : ℤ) = A355447 (n + 1)

end A355447

/-! ## A355447.P1503641236180212204

`char[A126706(n+1)-1]`
-/

namespace A355447.P1503641236180212204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A355447.P1503641236180212204

namespace A355447

/-- `char[A126706(n+1)-1]` -/
def P1503641236180212204.Spec : Prop :=
  ∀ n, (P1503641236180212204.a n : ℤ) = A355447 (n + 1)

end A355447

/-! ## A355447.P16815691020203382240

`char[lt[∏{e}[n+1, #], A181591(n+1)]]`
-/

namespace A355447.P16815691020203382240
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181591 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A355447.P16815691020203382240

namespace A355447

/-- `char[lt[∏{e}[n+1, #], A181591(n+1)]]` -/
def P16815691020203382240.Spec : Prop :=
  ∀ n, (P16815691020203382240.a n : ℤ) = A355447 (n + 1)

end A355447

/-! ## A355447.P15696168869948036528

`A338559(round(n/∏{p}[n+1, #+n]))%∏{e}[n+1, #]`
-/

namespace A355447.P15696168869948036528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338559 (SequenceMachineLib.roundAway ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (p + n) : ℕ) : ℚ))).toNat) ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A355447.P15696168869948036528

namespace A355447

/-- `A338559(round(n/∏{p}[n+1, #+n]))%∏{e}[n+1, #]` -/
def P15696168869948036528.Spec : Prop :=
  ∀ n, P15696168869948036528.a n = A355447 (n + 1)

end A355447

/-! ## A355447.P11090424132720791796

`A355685(ceil((n+1)/∏{p}[n+1, (n+1)/#]))%∏{e}[n+1, #]`
-/

namespace A355447.P11090424132720791796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355685 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat) ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A355447.P11090424132720791796

namespace A355447

/-- `A355685(ceil((n+1)/∏{p}[n+1, (n+1)/#]))%∏{e}[n+1, #]` -/
def P11090424132720791796.Spec : Prop :=
  ∀ n, P11090424132720791796.a n = A355447 (n + 1)

end A355447

/-! ## A355447.P14740083275450959058

`ceil((n+1)/∏{p}[n+1, (n+1)/#])%A006530((n+1)/∏{p}[n+1, #])`
-/

namespace A355447.P14740083275450959058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ (A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat)

end

end A355447.P14740083275450959058

namespace A355447

/-- `ceil((n+1)/∏{p}[n+1, (n+1)/#])%A006530((n+1)/∏{p}[n+1, #])` -/
def P14740083275450959058.Spec : Prop :=
  ∀ n, P14740083275450959058.a n = A355447 (n + 1)

end A355447

/-! ## A355447.P1434995161745088036

`A091247(A056674(n+1)²)`
-/

namespace A355447.P1434995161745088036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (A056674 (n + 1) ^ 2).toNat

end

end A355447.P1434995161745088036

namespace A355447

/-- `A091247(A056674(n+1)²)` -/
def P1434995161745088036.Spec : Prop :=
  ∀ n, P1434995161745088036.a n = A355447 (n + 1)

end A355447

/-! ## A355447.P1751885262348283631

`A091247(A056674(n+1)+2)`
-/

namespace A355447.P1751885262348283631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (A056674 (n + 1) + 2).toNat

end

end A355447.P1751885262348283631

namespace A355447

/-- `A091247(A056674(n+1)+2)` -/
def P1751885262348283631.Spec : Prop :=
  ∀ n, P1751885262348283631.a n = A355447 (n + 1)

end A355447

/-! ## A355447.P10746273515455730669

`1-A008683(A304779(n+1)²)`
-/

namespace A355447.P10746273515455730669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008683 (A304779 (n + 1) ^ 2).toNat

end

end A355447.P10746273515455730669

namespace A355447

/-- `1-A008683(A304779(n+1)²)` -/
def P10746273515455730669.Spec : Prop :=
  ∀ n, P10746273515455730669.a n = A355447 (n + 1)

end A355447

/-! ## A355447.P4901463225655907466

`1-A008966(A340596(n+1)²)`
-/

namespace A355447.P4901463225655907466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008966 (A340596 (n + 1) ^ 2).toNat

end

end A355447.P4901463225655907466

namespace A355447

/-- `1-A008966(A340596(n+1)²)` -/
def P4901463225655907466.Spec : Prop :=
  ∀ n, P4901463225655907466.a n = A355447 (n + 1)

end A355447

/-! ## A355447.P7754273324195110463

`A107078(n+1)-A268340(n+1)`
-/

namespace A355447.P7754273324195110463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1) - A268340 (n + 1)

end

end A355447.P7754273324195110463

namespace A355447

/-- `A107078(n+1)-A268340(n+1)` -/
def P7754273324195110463.Spec : Prop :=
  ∀ n, P7754273324195110463.a n = A355447 (n + 1)

end A355447

/-! ## A355447.P10334827071811918883

`A107078(n+1)*A143731(n+1)`
-/

namespace A355447.P10334827071811918883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1) * A143731 (n + 1)

end

end A355447.P10334827071811918883

namespace A355447

/-- `A107078(n+1)*A143731(n+1)` -/
def P10334827071811918883.Spec : Prop :=
  ∀ n, P10334827071811918883.a n = A355447 (n + 1)

end A355447

/-! ## A355447.P14635885618190750642

`and(A007423(n+1), A143731(n+1))`
-/

namespace A355447.P14635885618190750642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007423 (n + 1)) (A143731 (n + 1))

end

end A355447.P14635885618190750642

namespace A355447

/-- `and(A007423(n+1), A143731(n+1))` -/
def P14635885618190750642.Spec : Prop :=
  ∀ n, P14635885618190750642.a n = A355447 (n + 1)

end A355447

/-! ## A355447.P14359583558583167859

`and(A014193(n+1), A143731(n+1))`
-/

namespace A355447.P14359583558583167859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014193 (n + 1)) (A143731 (n + 1))

end

end A355447.P14359583558583167859

namespace A355447

/-- `and(A014193(n+1), A143731(n+1))` -/
def P14359583558583167859.Spec : Prop :=
  ∀ n, P14359583558583167859.a n = A355447 (n + 1)

end A355447

/-! ## A355447.P14707481048041517088

`1-∑{d}[A304779(n+1), A008683(#)]`
-/

namespace A355447.P14707481048041517088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A355447.P14707481048041517088

namespace A355447

/-- `1-∑{d}[A304779(n+1), A008683(#)]` -/
def P14707481048041517088.Spec : Prop :=
  ∀ n, P14707481048041517088.a n = A355447 (n + 1)

end A355447

/-!
# A355448: a(n) = 1 if the number of divisors of n^2 is coprime to 6, otherwise 0.

The programs for A355448, the canonical program `A355448.P13634574740259604985` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355448 has offset 1).

The definition of A355448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355448.P12328747237028053641

`A354354(A048691(n+1))`
-/

namespace A355448.P12328747237028053641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354354 (A048691 (n + 1)).toNat

end

end A355448.P12328747237028053641

namespace A355448

/-- `A354354(A048691(n+1))` -/
def P12328747237028053641.Spec : Prop :=
  ∀ n, P12328747237028053641.a n = A355448 (n + 1)

end A355448

/-! ## A355448.P13634574740259604985

`∏{e}[n+1, (1-#%3)²]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A355448

/-- `∏{e}[n+1, (1-#%3)²]` -/
def P13634574740259604985.Spec : Prop :=
  ∀ n, P13634574740259604985.a n = A355448 (n + 1)

theorem P13634574740259604985.correct : P13634574740259604985.Spec := by
  intro n
  simp only [A355448, Nat.add_sub_cancel]

end A355448

/-! ## A355448.P18434198083049888073

`∏{e}[n+1, (#+2)²%3]`
-/

namespace A355448.P18434198083049888073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 2) ^ 2 % 3

end

end A355448.P18434198083049888073

namespace A355448

/-- `∏{e}[n+1, (#+2)²%3]` -/
def P18434198083049888073.Spec : Prop :=
  ∀ n, (P18434198083049888073.a n : ℤ) = A355448 (n + 1)

end A355448

/-! ## A355448.P14267110206052064265

`abs(A307424(n+1))`
-/

namespace A355448.P14267110206052064265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307424 (n + 1)|

end

end A355448.P14267110206052064265

namespace A355448

/-- `abs(A307424(n+1))` -/
def P14267110206052064265.Spec : Prop :=
  ∀ n, P14267110206052064265.a n = A355448 (n + 1)

end A355448

/-! ## A355448.P11372228311288877445

`A294931(n+1)%2`
-/

namespace A355448.P11372228311288877445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294931 (n + 1)) 2

end

end A355448.P11372228311288877445

namespace A355448

/-- `A294931(n+1)%2` -/
def P11372228311288877445.Spec : Prop :=
  ∀ n, P11372228311288877445.a n = A355448 (n + 1)

end A355448

/-! ## A355448.P7560179967171009811

`A387960(n+1)%2`
-/

namespace A355448.P7560179967171009811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387960 (n + 1)) 2

end

end A355448.P7560179967171009811

namespace A355448

/-- `A387960(n+1)%2` -/
def P7560179967171009811.Spec : Prop :=
  ∀ n, P7560179967171009811.a n = A355448 (n + 1)

end A355448

/-! ## A355448.P1077131335066374311

`A370296(n+1)%3`
-/

namespace A355448.P1077131335066374311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370296 (n + 1)) 3

end

end A355448.P1077131335066374311

namespace A355448

/-- `A370296(n+1)%3` -/
def P1077131335066374311.Spec : Prop :=
  ∀ n, P1077131335066374311.a n = A355448 (n + 1)

end A355448

/-! ## A355448.P2416260806551253745

`and(1, A354349(n+1))`
-/

namespace A355448.P2416260806551253745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A354349 (n + 1))

end

end A355448.P2416260806551253745

namespace A355448

/-- `and(1, A354349(n+1))` -/
def P2416260806551253745.Spec : Prop :=
  ∀ n, P2416260806551253745.a n = A355448 (n + 1)

end A355448

/-! ## A355448.P14495546673521436053

`char[A350014(n+1)-1]`
-/

namespace A355448.P14495546673521436053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350014 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A355448.P14495546673521436053

namespace A355448

/-- `char[A350014(n+1)-1]` -/
def P14495546673521436053.Spec : Prop :=
  ∀ n, (P14495546673521436053.a n : ℤ) = A355448 (n + 1)

end A355448

/-! ## A355448.P17678026550249795379

`∏{e}[A050985(n+1), #-1]`
-/

namespace A355448.P17678026550249795379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A355448.P17678026550249795379

namespace A355448

/-- `∏{e}[A050985(n+1), #-1]` -/
def P17678026550249795379.Spec : Prop :=
  ∀ n, P17678026550249795379.a n = A355448 (n + 1)

end A355448

/-! ## A355448.P1210986668667269016

`A010052(A050985(n+1))`
-/

namespace A355448.P1210986668667269016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A050985 (n + 1)).toNat

end

end A355448.P1210986668667269016

namespace A355448

/-- `A010052(A050985(n+1))` -/
def P1210986668667269016.Spec : Prop :=
  ∀ n, P1210986668667269016.a n = A355448 (n + 1)

end A355448

/-! ## A355448.P245330013138070234

`A057078(A063647(n+1))²`
-/

namespace A355448.P245330013138070234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A063647 (n + 1)).toNat ^ 2

end

end A355448.P245330013138070234

namespace A355448

/-- `A057078(A063647(n+1))²` -/
def P245330013138070234.Spec : Prop :=
  ∀ n, P245330013138070234.a n = A355448 (n + 1)

end A355448

/-! ## A355448.P3003829919505075538

`A163804(A156688(n+1))²`
-/

namespace A355448.P3003829919505075538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 (A156688 (n + 1)).toNat ^ 2

end

end A355448.P3003829919505075538

namespace A355448

/-- `A163804(A156688(n+1))²` -/
def P3003829919505075538.Spec : Prop :=
  ∀ n, P3003829919505075538.a n = A355448 (n + 1)

end A355448

/-! ## A355448.P13724392140301377034

`A000035(A354349(n+1)²)`
-/

namespace A355448.P13724392140301377034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A354349 (n + 1) ^ 2).toNat

end

end A355448.P13724392140301377034

namespace A355448

/-- `A000035(A354349(n+1)²)` -/
def P13724392140301377034.Spec : Prop :=
  ∀ n, P13724392140301377034.a n = A355448 (n + 1)

end A355448

/-! ## A355448.P15352049698506042882

`A294905(A294931(n+1)+2)`
-/

namespace A355448.P15352049698506042882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294905 (A294931 (n + 1) + 2).toNat

end

end A355448.P15352049698506042882

namespace A355448

/-- `A294905(A294931(n+1)+2)` -/
def P15352049698506042882.Spec : Prop :=
  ∀ n, P15352049698506042882.a n = A355448 (n + 1)

end A355448

/-! ## A355448.P14472932581131229341

`A294934(3*A294931(n+1))`
-/

namespace A355448.P14472932581131229341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294934 (3 * A294931 (n + 1)).toNat

end

end A355448.P14472932581131229341

namespace A355448

/-- `A294934(3*A294931(n+1))` -/
def P14472932581131229341.Spec : Prop :=
  ∀ n, P14472932581131229341.a n = A355448 (n + 1)

end A355448

/-! ## A355448.P16680508734770435763

`gcd(A000038(n), A307424(n+1))`
-/

namespace A355448.P16680508734770435763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A307424 (n + 1))

end

end A355448.P16680508734770435763

namespace A355448

/-- `gcd(A000038(n), A307424(n+1))` -/
def P16680508734770435763.Spec : Prop :=
  ∀ n, (P16680508734770435763.a n : ℤ) = A355448 (n + 1)

end A355448

/-! ## A355448.P7320144417479972959

`A010052((n+1)/A053150(n+1))`
-/

namespace A355448.P7320144417479972959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A053150 (n + 1) : ℚ))).toNat

end

end A355448.P7320144417479972959

namespace A355448

/-- `A010052((n+1)/A053150(n+1))` -/
def P7320144417479972959.Spec : Prop :=
  ∀ n, P7320144417479972959.a n = A355448 (n + 1)

end A355448

/-! ## A355448.P15839021532434976203

`A307424(n+1)^A000010(n+1)`
-/

namespace A355448.P15839021532434976203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307424 (n + 1) : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A355448.P15839021532434976203

namespace A355448

/-- `A307424(n+1)^A000010(n+1)` -/
def P15839021532434976203.Spec : Prop :=
  ∀ n, P15839021532434976203.a n = (A355448 (n + 1) : ℚ)

end A355448

/-! ## A355448.P7555763065690601141

`A307424(n+1)^A000203(comp[n²])`
-/

namespace A355448.P7555763065690601141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307424 (n + 1) : ℚ) ^ (A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)

end

end A355448.P7555763065690601141

namespace A355448

/-- `A307424(n+1)^A000203(comp[n²])` -/
def P7555763065690601141.Spec : Prop :=
  ∀ n, P7555763065690601141.a n = (A355448 (n + 1) : ℚ)

end A355448

/-!
# A355449: a(n) = 1 if n^2 + 2 is prime, 0 otherwise.

The programs for A355449, the canonical program `A355449.P2499303328166495424` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355449 has offset 0).

The definition of A355449 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A355449.P2499303328166495424

`A010051(A059100(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A355449

/-- `A010051(A059100(n))` -/
def P2499303328166495424.Spec : Prop :=
  ∀ n, P2499303328166495424.a n = A355449 n

theorem P2499303328166495424.correct : P2499303328166495424.Spec := by
  intro n
  simp only [A355449]

end A355449

/-! ## A355449.P6208745116850626100

`char[A067201(n+1)]`
-/

namespace A355449.P6208745116850626100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A355449.P6208745116850626100

namespace A355449

/-- `char[A067201(n+1)]` -/
def P6208745116850626100.Spec : Prop :=
  ∀ n, (P6208745116850626100.a n : ℤ) = A355449 n

end A355449

/-! ## A355449.P9983946903124844785

`char[eq[2, A300817(n)]]`
-/

namespace A355449.P9983946903124844785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A355449.P9983946903124844785

namespace A355449

/-- `char[eq[2, A300817(n)]]` -/
def P9983946903124844785.Spec : Prop :=
  ∀ n, (P9983946903124844785.a n : ℤ) = A355449 n

end A355449

/-! ## A355449.P15205472429378477950

`A025455(A300817(n))`
-/

namespace A355449.P15205472429378477950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A300817 n).toNat

end

end A355449.P15205472429378477950

namespace A355449

/-- `A025455(A300817(n))` -/
def P15205472429378477950.Spec : Prop :=
  ∀ n, P15205472429378477950.a n = A355449 n

end A355449

/-! ## A355449.P16815538945117705133

`A185015(A300817(n)+3)`
-/

namespace A355449.P16815538945117705133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185015 (A300817 n + 3).toNat

end

end A355449.P16815538945117705133

namespace A355449

/-- `A185015(A300817(n)+3)` -/
def P16815538945117705133.Spec : Prop :=
  ∀ n, P16815538945117705133.a n = A355449 n

end A355449

/-! ## A355449.P11515282487921177739

`A295405(A300817(n)+8)`
-/

namespace A355449.P11515282487921177739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295405 (A300817 n + 8).toNat

end

end A355449.P11515282487921177739

namespace A355449

/-- `A295405(A300817(n)+8)` -/
def P11515282487921177739.Spec : Prop :=
  ∀ n, P11515282487921177739.a n = A355449 n

end A355449

/-! ## A355449.P13683708584282852819

`A000007(xor(2, A300817(n)))`
-/

namespace A355449.P13683708584282852819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 2 (A300817 n)).toNat

end

end A355449.P13683708584282852819

namespace A355449

/-- `A000007(xor(2, A300817(n)))` -/
def P13683708584282852819.Spec : Prop :=
  ∀ n, P13683708584282852819.a n = A355449 n

end A355449

/-! ## A355449.P14489185770916483305

`A295405(or(8, A300817(n)))`
-/

namespace A355449.P14489185770916483305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295405 (Int.lor 8 (A300817 n)).toNat

end

end A355449.P14489185770916483305

namespace A355449

/-- `A295405(or(8, A300817(n)))` -/
def P14489185770916483305.Spec : Prop :=
  ∀ n, P14489185770916483305.a n = A355449 n

end A355449

/-! ## A355449.P8456121229312743014

`A295405(xor(8, A300817(n)))`
-/

namespace A355449.P8456121229312743014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295405 (Int.xor 8 (A300817 n)).toNat

end

end A355449.P8456121229312743014

namespace A355449

/-- `A295405(xor(8, A300817(n)))` -/
def P8456121229312743014.Spec : Prop :=
  ∀ n, P8456121229312743014.a n = A355449 n

end A355449

/-! ## A355449.P4452663175049450519

`A000007((2-A300817(n))²)`
-/

namespace A355449.P4452663175049450519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((2 - A300817 n) ^ 2).toNat

end

end A355449.P4452663175049450519

namespace A355449

/-- `A000007((2-A300817(n))²)` -/
def P4452663175049450519.Spec : Prop :=
  ∀ n, P4452663175049450519.a n = A355449 n

end A355449

/-! ## A355449.P16728380160487973998

`A010051(n²+2)`
-/

namespace A355449.P16728380160487973998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n ^ 2 + 2)

end

end A355449.P16728380160487973998

namespace A355449

/-- `A010051(n²+2)` -/
def P16728380160487973998.Spec : Prop :=
  ∀ n, P16728380160487973998.a n = A355449 n

end A355449

/-! ## A355449.P13772233108699063131

`A355937(n²+2)`
-/

namespace A355449.P13772233108699063131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355937 (n ^ 2 + 2)

end

end A355449.P13772233108699063131

namespace A355449

/-- `A355937(n²+2)` -/
def P13772233108699063131.Spec : Prop :=
  ∀ n, P13772233108699063131.a n = A355449 n

end A355449

/-! ## A355449.P1641309964708364286

`C(2, A000005(n²+2))`
-/

namespace A355449.P1641309964708364286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (n ^ 2 + 2)).toNat

end

end A355449.P1641309964708364286

namespace A355449

/-- `C(2, A000005(n²+2))` -/
def P1641309964708364286.Spec : Prop :=
  ∀ n, (P1641309964708364286.a n : ℤ) = A355449 n

end A355449

/-! ## A355449.P7892579811992551116

`floor(1/A001222(n²+2))`
-/

namespace A355449.P7892579811992551116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A001222 (n ^ 2 + 2) : ℚ)⌋

end

end A355449.P7892579811992551116

namespace A355449

/-- `floor(1/A001222(n²+2))` -/
def P7892579811992551116.Spec : Prop :=
  ∀ n, P7892579811992551116.a n = A355449 n

end A355449

/-! ## A355449.P1769452385435656966

`floor(2/A000005(n*(n+1)-n+2))`
-/

namespace A355449.P1769452385435656966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (A000005 ((n * (n + 1) : ℤ) - (n : ℤ) + 2).toNat : ℚ)⌋

end

end A355449.P1769452385435656966

namespace A355449

/-- `floor(2/A000005(n*(n+1)-n+2))` -/
def P1769452385435656966.Spec : Prop :=
  ∀ n, P1769452385435656966.a n = A355449 n

end A355449

/-! ## A355449.P5510950664600372254

`and(1, A001222((1-n)²+2*n+1)!)`
-/

namespace A355449.P5510950664600372254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.factorial (A001222 ((1 - (n : ℤ)) ^ 2 + (2 * n + 1 : ℤ)).toNat).toNat)

end

end A355449.P5510950664600372254

namespace A355449

/-- `and(1, A001222((1-n)²+2*n+1)!)` -/
def P5510950664600372254.Spec : Prop :=
  ∀ n, (P5510950664600372254.a n : ℤ) = A355449 n

end A355449

/-! ## A355449.P13325076109323949308

`and(1, A000010(A001222(n²+2)²))`
-/

namespace A355449.P13325076109323949308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000010 (A001222 (n ^ 2 + 2) ^ 2).toNat)

end

end A355449.P13325076109323949308

namespace A355449

/-- `and(1, A000010(A001222(n²+2)²))` -/
def P13325076109323949308.Spec : Prop :=
  ∀ n, P13325076109323949308.a n = A355449 n

end A355449

/-! ## A355449.P5639890891911450283

`A000045(C(2, A001222(n²+2)²))`
-/

namespace A355449.P5639890891911450283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A001222 (n ^ 2 + 2) ^ 2).toNat)

end

end A355449.P5639890891911450283

namespace A355449

/-- `A000045(C(2, A001222(n²+2)²))` -/
def P5639890891911450283.Spec : Prop :=
  ∀ n, P5639890891911450283.a n = A355449 n

end A355449

/-!
# A355450: a(n) = 1 if n is odd and phi(x) = n^2 + 1 has no solutions, otherwise 0.

The programs for A355450, the canonical program `A355450.P7145778670325853768` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355450 has offset 1).

The definition of A355450 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355451, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A355450.P7145778670325853768

`A355451(1+(n+1)²)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A355450

/-- `A355451(1+(n+1)²)` -/
def P7145778670325853768.Spec : Prop :=
  ∀ n, P7145778670325853768.a n = A355450 (n + 1)

theorem P7145778670325853768.correct : P7145778670325853768.Spec := by
  intro n
  simp only [A355450, Nat.add_sub_cancel]

end A355450

/-! ## A355450.P15713542356142633697

`A108321(n)%2`
-/

namespace A355450.P15713542356142633697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108321 n) 2

end

end A355450.P15713542356142633697

namespace A355450

/-- `A108321(n)%2` -/
def P15713542356142633697.Spec : Prop :=
  ∀ n, P15713542356142633697.a n = A355450 (n + 1)

end A355450

/-! ## A355450.P16253093380114501929

`C(n, A106546(n+1))`
-/

namespace A355450.P16253093380114501929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A106546 (n + 1)).toNat

end

end A355450.P16253093380114501929

namespace A355450

/-- `C(n, A106546(n+1))` -/
def P16253093380114501929.Spec : Prop :=
  ∀ n, (P16253093380114501929.a n : ℤ) = A355450 (n + 1)

end A355450

/-! ## A355450.P13948431078821796849

`C(2, A300817(n+1)²)`
-/

namespace A355450.P13948431078821796849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A300817 (n + 1) ^ 2).toNat

end

end A355450.P13948431078821796849

namespace A355450

/-- `C(2, A300817(n+1)²)` -/
def P13948431078821796849.Spec : Prop :=
  ∀ n, (P13948431078821796849.a n : ℤ) = A355450 (n + 1)

end A355450

/-! ## A355450.P14792706593032885124

`A000007(A300817(n+1))`
-/

namespace A355450.P14792706593032885124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A300817 (n + 1)).toNat

end

end A355450.P14792706593032885124

namespace A355450

/-- `A000007(A300817(n+1))` -/
def P14792706593032885124.Spec : Prop :=
  ∀ n, P14792706593032885124.a n = A355450 (n + 1)

end A355450

/-! ## A355450.P8554277647479060946

`A108321(n)/A080335(n)`
-/

namespace A355450.P8554277647479060946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108321 n : ℚ) / (A080335 n : ℚ)

end

end A355450.P8554277647479060946

namespace A355450

/-- `A108321(n)/A080335(n)` -/
def P8554277647479060946.Spec : Prop :=
  ∀ n, P8554277647479060946.a n = (A355450 (n + 1) : ℚ)

end A355450

/-! ## A355450.P18159490449488486280

`A108321(n)/A081346(n)`
-/

namespace A355450.P18159490449488486280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108321 n : ℚ) / (A081346 n : ℚ)

end

end A355450.P18159490449488486280

namespace A355450

/-- `A108321(n)/A081346(n)` -/
def P18159490449488486280.Spec : Prop :=
  ∀ n, P18159490449488486280.a n = (A355450 (n + 1) : ℚ)

end A355450

/-! ## A355450.P15136718244642510384

`A108321(n)/A081351(n)`
-/

namespace A355450.P15136718244642510384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108321 n : ℚ) / (A081351 n : ℚ)

end

end A355450.P15136718244642510384

namespace A355450

/-- `A108321(n)/A081351(n)` -/
def P15136718244642510384.Spec : Prop :=
  ∀ n, P15136718244642510384.a n = (A355450 (n + 1) : ℚ)

end A355450

/-! ## A355450.P13896798607914007687

`A108321(n)/A086955(n)`
-/

namespace A355450.P13896798607914007687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108321 n : ℚ) / (A086955 n : ℚ)

end

end A355450.P13896798607914007687

namespace A355450

/-- `A108321(n)/A086955(n)` -/
def P13896798607914007687.Spec : Prop :=
  ∀ n, P13896798607914007687.a n = (A355450 (n + 1) : ℚ)

end A355450

/-! ## A355450.P13635754428349128064

`and(A000034(n), A108321(n))`
-/

namespace A355450.P13635754428349128064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 n) (A108321 n)

end

end A355450.P13635754428349128064

namespace A355450

/-- `and(A000034(n), A108321(n))` -/
def P13635754428349128064.Spec : Prop :=
  ∀ n, P13635754428349128064.a n = A355450 (n + 1)

end A355450

/-! ## A355450.P12424737764169232541

`and(A001492(n), A108321(n))`
-/

namespace A355450.P12424737764169232541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001492 n) (A108321 n)

end

end A355450.P12424737764169232541

namespace A355450

/-- `and(A001492(n), A108321(n))` -/
def P12424737764169232541.Spec : Prop :=
  ∀ n, P12424737764169232541.a n = A355450 (n + 1)

end A355450

/-! ## A355450.P5530224906516068231

`and(A004200(n), A108321(n))`
-/

namespace A355450.P5530224906516068231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004200 n) (A108321 n)

end

end A355450.P5530224906516068231

namespace A355450

/-- `and(A004200(n), A108321(n))` -/
def P5530224906516068231.Spec : Prop :=
  ∀ n, P5530224906516068231.a n = A355450 (n + 1)

end A355450

/-! ## A355450.P12329771039947791015

`and(A006467(n), A108321(n))`
-/

namespace A355450.P12329771039947791015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006467 n) (A108321 n)

end

end A355450.P12329771039947791015

namespace A355450

/-- `and(A006467(n), A108321(n))` -/
def P12329771039947791015.Spec : Prop :=
  ∀ n, P12329771039947791015.a n = A355450 (n + 1)

end A355450

/-! ## A355450.P7719805624259790583

`and(A007879(n), A108321(n))`
-/

namespace A355450.P7719805624259790583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007879 n) (A108321 n)

end

end A355450.P7719805624259790583

namespace A355450

/-- `and(A007879(n), A108321(n))` -/
def P7719805624259790583.Spec : Prop :=
  ∀ n, P7719805624259790583.a n = A355450 (n + 1)

end A355450

/-! ## A355450.P9404399936970505821

`and(A007880(n), A108321(n))`
-/

namespace A355450.P9404399936970505821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007880 n) (A108321 n)

end

end A355450.P9404399936970505821

namespace A355450

/-- `and(A007880(n), A108321(n))` -/
def P9404399936970505821.Spec : Prop :=
  ∀ n, P9404399936970505821.a n = A355450 (n + 1)

end A355450

/-! ## A355450.P8574555374565958635

`and(A007884(n), A108321(n))`
-/

namespace A355450.P8574555374565958635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007884 n) (A108321 n)

end

end A355450.P8574555374565958635

namespace A355450

/-- `and(A007884(n), A108321(n))` -/
def P8574555374565958635.Spec : Prop :=
  ∀ n, P8574555374565958635.a n = A355450 (n + 1)

end A355450

/-! ## A355450.P386898455841701002

`and(A010684(n), A108321(n))`
-/

namespace A355450.P386898455841701002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010684 n) (A108321 n)

end

end A355450.P386898455841701002

namespace A355450

/-- `and(A010684(n), A108321(n))` -/
def P386898455841701002.Spec : Prop :=
  ∀ n, P386898455841701002.a n = A355450 (n + 1)

end A355450

/-! ## A355450.P7354106296405762541

`and(A010685(n), A108321(n))`
-/

namespace A355450.P7354106296405762541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010685 n) (A108321 n)

end

end A355450.P7354106296405762541

namespace A355450

/-- `and(A010685(n), A108321(n))` -/
def P7354106296405762541.Spec : Prop :=
  ∀ n, P7354106296405762541.a n = A355450 (n + 1)

end A355450

/-! ## A355450.P11688561830585548473

`and(A010686(n), A108321(n))`
-/

namespace A355450.P11688561830585548473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010686 n) (A108321 n)

end

end A355450.P11688561830585548473

namespace A355450

/-- `and(A010686(n), A108321(n))` -/
def P11688561830585548473.Spec : Prop :=
  ∀ n, P11688561830585548473.a n = A355450 (n + 1)

end A355450

/-! ## A355450.P3382184572817524500

`and(A010687(n), A108321(n))`
-/

namespace A355450.P3382184572817524500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010687 n) (A108321 n)

end

end A355450.P3382184572817524500

namespace A355450

/-- `and(A010687(n), A108321(n))` -/
def P3382184572817524500.Spec : Prop :=
  ∀ n, P3382184572817524500.a n = A355450 (n + 1)

end A355450

/-!
# A355451: a(n) = 1 if n is even and phi(x) = n has no solutions, otherwise 0.

The programs for A355451, the canonical program `A355451.P3968050885105735617` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355451 has offset 1).

The definition of A355451 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264739, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A355451.P3968050885105735617

`A059841(n+1)*(1-A264739(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A355451

/-- `A059841(n+1)*(1-A264739(n+1))` -/
def P3968050885105735617.Spec : Prop :=
  ∀ n, P3968050885105735617.a n = A355451 (n + 1)

theorem P3968050885105735617.correct : P3968050885105735617.Spec := by
  intro n
  simp only [A355451, Nat.add_sub_cancel]

end A355451

/-! ## A355451.P8403761104716379837

`char[A005277(n+1)-1]`
-/

namespace A355451.P8403761104716379837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A355451.P8403761104716379837

namespace A355451

/-- `char[A005277(n+1)-1]` -/
def P8403761104716379837.Spec : Prop :=
  ∀ n, (P8403761104716379837.a n : ℤ) = A355451 (n + 1)

end A355451

/-! ## A355451.P10152421914242668457

`char[A071616(n+1)-1]`
-/

namespace A355451.P10152421914242668457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071616 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A355451.P10152421914242668457

namespace A355451

/-- `char[A071616(n+1)-1]` -/
def P10152421914242668457.Spec : Prop :=
  ∀ n, (P10152421914242668457.a n : ℤ) = A355451 (n + 1)

end A355451

/-! ## A355451.P3401349786894869503

`and(n, 1-A264739(n+1))`
-/

namespace A355451.P3401349786894869503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - A264739 (n + 1))

end

end A355451.P3401349786894869503

namespace A355451

/-- `and(n, 1-A264739(n+1))` -/
def P3401349786894869503.Spec : Prop :=
  ∀ n, P3401349786894869503.a n = A355451 (n + 1)

end A355451

/-! ## A355451.P17623793105322997666

`and(n², C(2, A323169(n+1)))`
-/

namespace A355451.P17623793105322997666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n ^ 2) (Nat.choose 2 (A323169 (n + 1)).toNat)

end

end A355451.P17623793105322997666

namespace A355451

/-- `and(n², C(2, A323169(n+1)))` -/
def P17623793105322997666.Spec : Prop :=
  ∀ n, (P17623793105322997666.a n : ℤ) = A355451 (n + 1)

end A355451

/-! ## A355451.P16447398134719392985

`gcd(gcd(2, n+1), A049283(n+1))-1`
-/

namespace A355451.P16447398134719392985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (Nat.gcd 2 (n + 1) : ℤ) (A049283 (n + 1)) : ℤ) - 1

end

end A355451.P16447398134719392985

namespace A355451

/-- `gcd(gcd(2, n+1), A049283(n+1))-1` -/
def P16447398134719392985.Spec : Prop :=
  ∀ n, P16447398134719392985.a n = A355451 (n + 1)

end A355451

/-! ## A355451.P2935441764409450999

`1-A264739(A133265(n))`
-/

namespace A355451.P2935441764409450999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A264739 (A133265 n).toNat

end

end A355451.P2935441764409450999

namespace A355451

/-- `1-A264739(A133265(n))` -/
def P2935441764409450999.Spec : Prop :=
  ∀ n, P2935441764409450999.a n = A355451 (n + 1)

end A355451

/-! ## A355451.P5835727300219155220

`and(n, A000007(A014197(n+1)))`
-/

namespace A355451.P5835727300219155220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A000007 (A014197 (n + 1)).toNat)

end

end A355451.P5835727300219155220

namespace A355451

/-- `and(n, A000007(A014197(n+1)))` -/
def P5835727300219155220.Spec : Prop :=
  ∀ n, P5835727300219155220.a n = A355451 (n + 1)

end A355451

/-! ## A355451.P3761289915080722942

`1-A135528(A264739(n+1)+n)`
-/

namespace A355451.P3761289915080722942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A135528 (A264739 (n + 1) + (n : ℤ)).toNat

end

end A355451.P3761289915080722942

namespace A355451

/-- `1-A135528(A264739(n+1)+n)` -/
def P3761289915080722942.Spec : Prop :=
  ∀ n, P3761289915080722942.a n = A355451 (n + 1)

end A355451

/-! ## A355451.P10219340822681004235

`and(1, A049283(n+1)+A010123(n))`
-/

namespace A355451.P10219340822681004235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A049283 (n + 1) + A010123 n)

end

end A355451.P10219340822681004235

namespace A355451

/-- `and(1, A049283(n+1)+A010123(n))` -/
def P10219340822681004235.Spec : Prop :=
  ∀ n, P10219340822681004235.a n = A355451 (n + 1)

end A355451

/-! ## A355451.P8430237426040185321

`and(1, A049283(n+1)+A010131(n))`
-/

namespace A355451.P8430237426040185321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A049283 (n + 1) + A010131 n)

end

end A355451.P8430237426040185321

namespace A355451

/-- `and(1, A049283(n+1)+A010131(n))` -/
def P8430237426040185321.Spec : Prop :=
  ∀ n, P8430237426040185321.a n = A355451 (n + 1)

end A355451

/-! ## A355451.P10220274624329464772

`and(1, A049283(n+1)+A010132(n))`
-/

namespace A355451.P10220274624329464772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A049283 (n + 1) + A010132 n)

end

end A355451.P10220274624329464772

namespace A355451

/-- `and(1, A049283(n+1)+A010132(n))` -/
def P10220274624329464772.Spec : Prop :=
  ∀ n, P10220274624329464772.a n = A355451 (n + 1)

end A355451

/-! ## A355451.P1483799983939661660

`C(A000034(n), A215240(n+1)+2)`
-/

namespace A355451.P1483799983939661660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000034 n).toNat (A215240 (n + 1) + 2).toNat

end

end A355451.P1483799983939661660

namespace A355451

/-- `C(A000034(n), A215240(n+1)+2)` -/
def P1483799983939661660.Spec : Prop :=
  ∀ n, (P1483799983939661660.a n : ℤ) = A355451 (n + 1)

end A355451

/-! ## A355451.P18339214326414865268

`and(1, A257088(n)+A049283(n+1))`
-/

namespace A355451.P18339214326414865268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A257088 n + A049283 (n + 1))

end

end A355451.P18339214326414865268

namespace A355451

/-- `and(1, A257088(n)+A049283(n+1))` -/
def P18339214326414865268.Spec : Prop :=
  ∀ n, P18339214326414865268.a n = A355451 (n + 1)

end A355451

/-! ## A355451.P3237600836314493250

`C(2, A307853(n+2))`
-/

namespace A355451.P3237600836314493250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A307853 (n + 2)).toNat

end

end A355451.P3237600836314493250

namespace A355451

/-- `C(2, A307853(n+2))` -/
def P3237600836314493250.Spec : Prop :=
  ∀ n, (P3237600836314493250.a n : ℤ) = A355451 (n + 1)

end A355451

/-! ## A355451.P2424435153061567810

`and(n, A012245(A316665(n+1)))`
-/

namespace A355451.P2424435153061567810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A012245 (A316665 (n + 1)).toNat)

end

end A355451.P2424435153061567810

namespace A355451

/-- `and(n, A012245(A316665(n+1)))` -/
def P2424435153061567810.Spec : Prop :=
  ∀ n, P2424435153061567810.a n = A355451 (n + 1)

end A355451

/-! ## A355451.P8696272046280839479

`A012245(A319998(3*n+2)+A316665(n+1))`
-/

namespace A355451.P8696272046280839479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012245 (A319998 (3 * n + 2) + A316665 (n + 1)).toNat

end

end A355451.P8696272046280839479

namespace A355451

/-- `A012245(A319998(3*n+2)+A316665(n+1))` -/
def P8696272046280839479.Spec : Prop :=
  ∀ n, P8696272046280839479.a n = A355451 (n + 1)

end A355451

/-! ## A355451.P4409321423666384396

`and(A023443(n+1), A049283(A316665(n+1)))`
-/

namespace A355451.P4409321423666384396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023443 (n + 1)) (A049283 (A316665 (n + 1)).toNat)

end

end A355451.P4409321423666384396

namespace A355451

/-- `and(A023443(n+1), A049283(A316665(n+1)))` -/
def P4409321423666384396.Spec : Prop :=
  ∀ n, P4409321423666384396.a n = A355451 (n + 1)

end A355451

/-! ## A355451.P4933626390309735405

`A049283(A319998(3*n+2)+A316665(n+1))`
-/

namespace A355451.P4933626390309735405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A319998 (3 * n + 2) + A316665 (n + 1)).toNat

end

end A355451.P4933626390309735405

namespace A355451

/-- `A049283(A319998(3*n+2)+A316665(n+1))` -/
def P4933626390309735405.Spec : Prop :=
  ∀ n, P4933626390309735405.a n = A355451 (n + 1)

end A355451

/-! ## A355451.P3263426618027222127

`A000007(A307853(n+2))`
-/

namespace A355451.P3263426618027222127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A307853 (n + 2)).toNat

end

end A355451.P3263426618027222127

namespace A355451

/-- `A000007(A307853(n+2))` -/
def P3263426618027222127.Spec : Prop :=
  ∀ n, P3263426618027222127.a n = A355451 (n + 1)

end A355451

/-!
# A355452: a(n) = 1 if Bernoulli number B_{n} has denominator 6, otherwise 0.

The programs for A355452, the canonical program `A355452.P4445026676875231731` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355452 has offset 1).

The definition of A355452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355452.P8363987346559022407

`val(A108077(n+1), 3)`
-/

namespace A355452.P8363987346559022407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108077 (n + 1)).toNat 3

end

end A355452.P8363987346559022407

namespace A355452

/-- `val(A108077(n+1), 3)` -/
def P8363987346559022407.Spec : Prop :=
  ∀ n, (P8363987346559022407.a n : ℤ) = A355452 (n + 1)

end A355452

/-! ## A355452.P14537978704782797067

`val(A166333(n+1), 3)`
-/

namespace A355452.P14537978704782797067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A166333 (n + 1)).toNat 3

end

end A355452.P14537978704782797067

namespace A355452

/-- `val(A166333(n+1), 3)` -/
def P14537978704782797067.Spec : Prop :=
  ∀ n, (P14537978704782797067.a n : ℤ) = A355452 (n + 1)

end A355452

/-! ## A355452.P6713294909567890100

`char[A051222(n+1)-1]`
-/

namespace A355452.P6713294909567890100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051222 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A355452.P6713294909567890100

namespace A355452

/-- `char[A051222(n+1)-1]` -/
def P6713294909567890100.Spec : Prop :=
  ∀ n, (P6713294909567890100.a n : ℤ) = A355452 (n + 1)

end A355452

/-! ## A355452.P927638207579115896

`char[eq[2, A067513(n+1)]]`
-/

namespace A355452.P927638207579115896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A355452.P927638207579115896

namespace A355452

/-- `char[eq[2, A067513(n+1)]]` -/
def P927638207579115896.Spec : Prop :=
  ∀ n, (P927638207579115896.a n : ℤ) = A355452 (n + 1)

end A355452

/-! ## A355452.P437002483100102457

`char[eq[2, A322315(n+1)]]`
-/

namespace A355452.P437002483100102457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322315 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A355452.P437002483100102457

namespace A355452

/-- `char[eq[2, A322315(n+1)]]` -/
def P437002483100102457.Spec : Prop :=
  ∀ n, (P437002483100102457.a n : ℤ) = A355452 (n + 1)

end A355452

/-! ## A355452.P13207087690712543990

`char[eq[6, A027642(n+1)]]`
-/

namespace A355452.P13207087690712543990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A355452.P13207087690712543990

namespace A355452

/-- `char[eq[6, A027642(n+1)]]` -/
def P13207087690712543990.Spec : Prop :=
  ∀ n, (P13207087690712543990.a n : ℤ) = A355452 (n + 1)

end A355452

/-! ## A355452.P11398435529790151766

`round(acot(xor(2, A141459(n+1))))`
-/

namespace A355452.P11398435529790151766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (Int.xor 2 (A141459 (n + 1)) : ℝ))

end

end A355452.P11398435529790151766

namespace A355452

/-- `round(acot(xor(2, A141459(n+1))))` -/
def P11398435529790151766.Spec : Prop :=
  ∀ n, P11398435529790151766.a n = A355452 (n + 1)

end A355452

/-! ## A355452.P325159173311040722

`A007949(A108077(n+1))`
-/

namespace A355452.P325159173311040722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A108077 (n + 1)).toNat

end

end A355452.P325159173311040722

namespace A355452

/-- `A007949(A108077(n+1))` -/
def P325159173311040722.Spec : Prop :=
  ∀ n, P325159173311040722.a n = A355452 (n + 1)

end A355452

/-! ## A355452.P5475308130162772684

`A007949(A166333(n+1))`
-/

namespace A355452.P5475308130162772684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A166333 (n + 1)).toNat

end

end A355452.P5475308130162772684

namespace A355452

/-- `A007949(A166333(n+1))` -/
def P5475308130162772684.Spec : Prop :=
  ∀ n, P5475308130162772684.a n = A355452 (n + 1)

end A355452

/-! ## A355452.P2479072110584547115

`A055029(A166333(n+1)-1)`
-/

namespace A355452.P2479072110584547115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (A166333 (n + 1) - 1).toNat

end

end A355452.P2479072110584547115

namespace A355452

/-- `A055029(A166333(n+1)-1)` -/
def P2479072110584547115.Spec : Prop :=
  ∀ n, P2479072110584547115.a n = A355452 (n + 1)

end A355452

/-! ## A355452.P15524804467185656802

`floor(A010674(n)/A141459(n+1))`
-/

namespace A355452.P15524804467185656802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010674 n : ℚ) / (A141459 (n + 1) : ℚ)⌋

end

end A355452.P15524804467185656802

namespace A355452

/-- `floor(A010674(n)/A141459(n+1))` -/
def P15524804467185656802.Spec : Prop :=
  ∀ n, P15524804467185656802.a n = A355452 (n + 1)

end A355452

/-! ## A355452.P3553533530563587541

`A027642(A108077(n+1)-2)-1`
-/

namespace A355452.P3553533530563587541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A108077 (n + 1) - 2).toNat - 1

end

end A355452.P3553533530563587541

namespace A355452

/-- `A027642(A108077(n+1)-2)-1` -/
def P3553533530563587541.Spec : Prop :=
  ∀ n, P3553533530563587541.a n = A355452 (n + 1)

end A355452

/-! ## A355452.P941691102961867515

`val(A075180(val(n+1, 2)+2), A079612(n+1))`
-/

namespace A355452.P941691102961867515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A075180 (SequenceMachineLib.valuation (n + 1) 2 + 2)).toNat (A079612 (n + 1)).toNat

end

end A355452.P941691102961867515

namespace A355452

/-- `val(A075180(val(n+1, 2)+2), A079612(n+1))` -/
def P941691102961867515.Spec : Prop :=
  ∀ n, (P941691102961867515.a n : ℤ) = A355452 (n + 1)

end A355452

/-! ## A355452.P4445026676875231731

`A010051(A014683(A067513(n+1)))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A355452

/-- `A010051(A014683(A067513(n+1)))` -/
def P4445026676875231731.Spec : Prop :=
  ∀ n, P4445026676875231731.a n = A355452 (n + 1)

theorem P4445026676875231731.correct : P4445026676875231731.Spec := by
  intro n
  simp only [A355452, Nat.add_sub_cancel]

end A355452

/-! ## A355452.P8841407007332818332

`A010051(A000010(A067513(n+1)²))`
-/

namespace A355452.P8841407007332818332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000010 (A067513 (n + 1) ^ 2).toNat).toNat

end

end A355452.P8841407007332818332

namespace A355452

/-- `A010051(A000010(A067513(n+1)²))` -/
def P8841407007332818332.Spec : Prop :=
  ∀ n, P8841407007332818332.a n = A355452 (n + 1)

end A355452

/-! ## A355452.P1550043886885661647

`A010051(A322313(A008578(A322313(n+1))))`
-/

namespace A355452.P1550043886885661647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A322313 (A008578 (A322313 (n + 1)).toNat).toNat).toNat

end

end A355452.P1550043886885661647

namespace A355452

/-- `A010051(A322313(A008578(A322313(n+1))))` -/
def P1550043886885661647.Spec : Prop :=
  ∀ n, P1550043886885661647.a n = A355452 (n + 1)

end A355452

/-! ## A355452.P1139179698843024708

`A010051(A346467(n+2))`
-/

namespace A355452.P1139179698843024708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A346467 (n + 2)).toNat

end

end A355452.P1139179698843024708

namespace A355452

/-- `A010051(A346467(n+2))` -/
def P1139179698843024708.Spec : Prop :=
  ∀ n, P1139179698843024708.a n = A355452 (n + 1)

end A355452

/-! ## A355452.P3155681646419473196

`A010051(A246367(A067513(n+1)²))`
-/

namespace A355452.P3155681646419473196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A246367 (A067513 (n + 1) ^ 2).toNat).toNat

end

end A355452.P3155681646419473196

namespace A355452

/-- `A010051(A246367(A067513(n+1)²))` -/
def P3155681646419473196.Spec : Prop :=
  ∀ n, P3155681646419473196.a n = A355452 (n + 1)

end A355452

/-! ## A355452.P18018601029542990635

`A010051(A000010(A322313(n+1)²))`
-/

namespace A355452.P18018601029542990635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000010 (A322313 (n + 1) ^ 2).toNat).toNat

end

end A355452.P18018601029542990635

namespace A355452

/-- `A010051(A000010(A322313(n+1)²))` -/
def P18018601029542990635.Spec : Prop :=
  ∀ n, P18018601029542990635.a n = A355452 (n + 1)

end A355452

/-! ## A355452.P13569331673602312223

`val(A075180(3*n), A075180(or(1, n)))`
-/

namespace A355452.P13569331673602312223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A075180 (3 * n)).toNat (A075180 (Nat.lor 1 n)).toNat

end

end A355452.P13569331673602312223

namespace A355452

/-- `val(A075180(3*n), A075180(or(1, n)))` -/
def P13569331673602312223.Spec : Prop :=
  ∀ n, (P13569331673602312223.a n : ℤ) = A355452 (n + 1)

end A355452

/-!
# A355453: a(n) = 1 if the third smallest divisor of n is not a prime, otherwise 0.

The programs for A355453, there is no canonical definition to state claims against.
-/

/-! ## A355453.P13434537625114277361

`char[A119315(n+1)-1]`
-/

namespace A355453.P13434537625114277361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119315 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A355453.P13434537625114277361

/-! ## A355453.P17888007814616477724

`char[lt[2, A328162(n+1)]]`
-/

namespace A355453.P17888007814616477724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328162 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A355453.P17888007814616477724

/-! ## A355453.P6453067853776717020

`∑{e}[A292269(n+1), #-1]`
-/

namespace A355453.P6453067853776717020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A355453.P6453067853776717020

/-! ## A355453.P6621724350454305276

`A028422(A292269(n+1))`
-/

namespace A355453.P6621724350454305276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (A292269 (n + 1)).toNat

end

end A355453.P6621724350454305276

/-! ## A355453.P11400622833202062195

`A268340(A284255(n+1))`
-/

namespace A355453.P11400622833202062195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268340 (A284255 (n + 1)).toNat

end

end A355453.P11400622833202062195

/-! ## A355453.P11230471568999181296

`A000007(C(2, A328162(n+1)))`
-/

namespace A355453.P11230471568999181296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Nat.choose 2 (A328162 (n + 1)).toNat)

end

end A355453.P11230471568999181296

/-! ## A355453.P14594927026904162548

`∑{d}[A292269(n+1), A300252(#)]`
-/

namespace A355453.P14594927026904162548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300252 d

end

end A355453.P14594927026904162548

/-! ## A355453.P111056271646002393

`A002620(∑{e}[A292269(n+1), #])`
-/

namespace A355453.P111056271646002393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A355453.P111056271646002393

/-! ## A355453.P12596570783076606767

`A001221(∏{e}[A292269(n+1), #])`
-/

namespace A355453.P12596570783076606767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A355453.P12596570783076606767

/-! ## A355453.P8107464918980130746

`A001222(∏{e}[A292269(n+1), #])`
-/

namespace A355453.P8107464918980130746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A355453.P8107464918980130746

/-! ## A355453.P14316710843757858676

`A029578(∏{e}[A292269(n+1), #])`
-/

namespace A355453.P14316710843757858676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A355453.P14316710843757858676

/-! ## A355453.P17320039927345373172

`∑{e}[A292269(n+1), A001221(#)]²`
-/

namespace A355453.P17320039927345373172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 (Nat.factorization (f1 n).natAbs p)) ^ 2

end

end A355453.P17320039927345373172

/-! ## A355453.P16950946888270500391

`∑{e}[A292269(n+1), A001222(#)]²`
-/

namespace A355453.P16950946888270500391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (Nat.factorization (f1 n).natAbs p)) ^ 2

end

end A355453.P16950946888270500391

/-! ## A355453.P13669293137519765346

`∑{e}[A292269(n+1), A117451(#)]²`
-/

namespace A355453.P13669293137519765346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A117451 (Nat.factorization (f1 n).natAbs p)) ^ 2

end

end A355453.P13669293137519765346

/-! ## A355453.P9976871414505781404

`A000290(n)%A292269(A292269(n+1))`
-/

namespace A355453.P9976871414505781404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 n) (A292269 (A292269 (n + 1)).toNat)

end

end A355453.P9976871414505781404

/-! ## A355453.P8972412139460319050

`A001844(n)%A292269(A292269(n+1))`
-/

namespace A355453.P8972412139460319050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001844 n) (A292269 (A292269 (n + 1)).toNat)

end

end A355453.P8972412139460319050

/-! ## A355453.P15877262216493914481

`A057544(n)%A292269(A292269(n+1))`
-/

namespace A355453.P15877262216493914481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057544 n) (A292269 (A292269 (n + 1)).toNat)

end

end A355453.P15877262216493914481

/-! ## A355453.P2974097076024128670

`A072025(n)%A292269(A292269(n+1))`
-/

namespace A355453.P2974097076024128670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072025 n) (A292269 (A292269 (n + 1)).toNat)

end

end A355453.P2974097076024128670

/-! ## A355453.P3444650924977930346

`∑{e}[A001222(A292269(n+1)), A292269(#)]`
-/

namespace A355453.P3444650924977930346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A292269 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A292269 (Nat.factorization (f1 n).natAbs p)

end

end A355453.P3444650924977930346

/-! ## A355453.P17703482542432046710

`A020725(n+1)%A292269(A292269(n+1))`
-/

namespace A355453.P17703482542432046710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020725 (n + 1)) (A292269 (A292269 (n + 1)).toNat)

end

end A355453.P17703482542432046710

/-!
# A355454: a(n) = 1 if the fourth smallest divisor of n is a square, otherwise 0.

The programs for A355454, there is no canonical definition to state claims against.
-/

/-! ## A355454.P4916976773320331012

`val(A297174(n+1)+5, 16)`
-/

namespace A355454.P4916976773320331012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A297174 (n + 1) + 5).toNat 16

end

end A355454.P4916976773320331012

/-! ## A355454.P8599446887617786515

`A243822(A014673(n+1)*A292269(n+1))`
-/

namespace A355454.P8599446887617786515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (A014673 (n + 1) * A292269 (n + 1)).toNat

end

end A355454.P8599446887617786515

/-! ## A355454.P6447979979084876287

`∑{d}[n+1, A018896(#-1)*A355444((n+1)/#)]`
-/

namespace A355454.P6447979979084876287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018896 (d - 1) * A355444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A355454.P6447979979084876287

/-! ## A355454.P810008164841372358

`A162325(n+1)²%A020639((n+1)/∏{p}[n+1, #])`
-/

namespace A355454.P810008164841372358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162325 (n + 1) ^ 2) (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A355454.P810008164841372358

/-! ## A355454.P6908338317665307492

`A064727(A007948(n+1)/A162325(n+1))`
-/

namespace A355454.P6908338317665307492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (SequenceMachineLib.roundAway ((A007948 (n + 1) : ℚ) / (A162325 (n + 1) : ℚ))).toNat

end

end A355454.P6908338317665307492

/-! ## A355454.P12134463736928499027

`A162325(n+1)²%A020639(A008833(n+1))`
-/

namespace A355454.P12134463736928499027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162325 (n + 1) ^ 2) (A020639 (A008833 (n + 1)).toNat)

end

end A355454.P12134463736928499027

/-! ## A355454.P16257288314670026536

`and(A335381(n), A335464(A335450(n+1)))`
-/

namespace A355454.P16257288314670026536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A335381 n) (A335464 (A335450 (n + 1)).toNat)

end

end A355454.P16257288314670026536

/-! ## A355454.P2884753719883629415

`∑{d}[n+1, A000927(#)*A355444((n+1)/#)]`
-/

namespace A355454.P2884753719883629415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000927 d * A355444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A355454.P2884753719883629415

/-! ## A355454.P4409698989918772517

`A011690(A334664(n+1))`
-/

namespace A355454.P4409698989918772517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011690 (A334664 (n + 1)).toNat

end

end A355454.P4409698989918772517

/-!
# A355455: Numbers whose fourth smallest divisor is a square.

The programs for A355455, there is no canonical definition to state claims against.
-/

/-! ## A355455.P10526919298655961897

`lt[0, A355454(n+1)]+1`
-/

namespace A355455.P10526919298655961897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A355455.P10526919298655961897

/-! ## A355455.P3528774317495253452

`eq[1, A355454(A028310(n))]`
-/

namespace A355455.P3528774317495253452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355454 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A355455.P3528774317495253452

/-! ## A355455.P6654913127464960005

`A020725(eq[1, A355454(n+1)])`
-/

namespace A355455.P6654913127464960005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A355455.P6654913127464960005

/-! ## A355455.P3530083838380085751

`A057544(eq[1, A355454(n+2)])`
-/

namespace A355455.P3530083838380085751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355454 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A355455.P3530083838380085751

/-! ## A355455.P5556977335919508712

`filter[A009023(n+1), A355454(#)]`
-/

namespace A355455.P5556977335919508712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355454 (f1 j).toNat = 1) n)

end

end A355455.P5556977335919508712

/-! ## A355455.P16238976718396726422

`filter[A009188(n+1), A355454(#)]`
-/

namespace A355455.P16238976718396726422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355454 (f1 j).toNat = 1) n)

end

end A355455.P16238976718396726422

/-! ## A355455.P18084420645577190882

`filter[A013929(n+1), A355454(#)]`
-/

namespace A355455.P18084420645577190882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355454 (f1 j).toNat = 1) n)

end

end A355455.P18084420645577190882

/-! ## A355455.P18359497586246685497

`filter[A024619(n+1), A355454(#)]`
-/

namespace A355455.P18359497586246685497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355454 (f1 j).toNat = 1) n)

end

end A355455.P18359497586246685497

/-! ## A355455.P14842215303991469946

`filter[A033942(n+1), A355454(#)]`
-/

namespace A355455.P14842215303991469946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355454 (f1 j).toNat = 1) n)

end

end A355455.P14842215303991469946

/-! ## A355455.P17817073057254302210

`filter[A033949(n+1), A355454(#)]`
-/

namespace A355455.P17817073057254302210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355454 (f1 j).toNat = 1) n)

end

end A355455.P17817073057254302210

/-!
# A355456: Greatest common divisor of sigma(n), A003961(n), and A276086(n).

The programs for A355456, there is no canonical definition to state claims against.
-/

/-! ## A355456.P4171616096696477755

`gcd(A003961(n+1), A324644(n+1))`
-/

namespace A355456.P4171616096696477755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (n + 1)) (A324644 (n + 1))

end

end A355456.P4171616096696477755

/-! ## A355456.P1107611563760523314

`gcd(A000203(n+1), A355442(n+1))`
-/

namespace A355456.P1107611563760523314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A355442 (n + 1))

end

end A355456.P1107611563760523314

/-! ## A355456.P5980470836687918455

`gcd(A272211(n+1), A355442(A000027(n+1)))`
-/

namespace A355456.P5980470836687918455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A272211 (n + 1)) (A355442 (A000027 (n + 1)).toNat)

end

end A355456.P5980470836687918455

/-! ## A355456.P12255252693194892583

`gcd(A272027(n+1)/3, A000027(A355442(n+1)))`
-/

namespace A355456.P12255252693194892583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A272027 (n + 1) : ℚ) / 3)) (A000027 (A355442 (n + 1)).toNat)

end

end A355456.P12255252693194892583

/-! ## A355456.P6388375868527939403

`gcd(A276086(n+1), A342671(n+1))`
-/

namespace A355456.P6388375868527939403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (n + 1)) (A342671 (n + 1))

end

end A355456.P6388375868527939403

/-!
# A355457: Numbers k > 1 such that A354833(k) = k * A354833(k-1).

The programs for A355457, there is no canonical definition to state claims against.
-/

/-! ## A355457.P7370494386777972426

`record[A354833(n+2)/A354833(n+1)]`
-/

namespace A355457.P7370494386777972426
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354833 (n + 2) : ℚ) / (A354833 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355457.P7370494386777972426

/-!
# A355459: Real part of the Heighway/harter dragon curve points which are on the real axis.

The programs for A355459, there is no canonical definition to state claims against.
-/

/-! ## A355459.P5109719310875090570

`A355460(2*n)/2`
-/

namespace A355459.P5109719310875090570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355460 (2 * n) : ℚ) / 2

end

end A355459.P5109719310875090570

/-!
# A355460: Imaginary part of the Heighway/Harter dragon curve points which are on the imaginary axis.

The programs for A355460, there is no canonical definition to state claims against.
-/

/-! ## A355460.P17404315818741306505

`-A355459(2*n)/2`
-/

namespace A355460.P17404315818741306505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A355459 (2 * n) : ℚ) / 2)

end

end A355460.P17404315818741306505

/-!
# A355461: Squarefree numbers d of the form r^2*m^2 + 4*r, where r and m are odd positive integers, such that Q(sqrt(d)) has class number 1.

The programs for A355461, there is no canonical definition to state claims against.
-/

/-! ## A355461.P7064313000212003843

`A217521(a(n-1)+3)` with `a(0)=5`
-/

namespace A355461.P7064313000212003843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A217521 (a (n - 1) + 3).toNat

end

end A355461.P7064313000212003843

/-! ## A355461.P9121853169891828983

`A354934(A387629(n))`
-/

namespace A355461.P9121853169891828983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354934 (A387629 n).toNat

end

end A355461.P9121853169891828983

/-!
# A355462: Powerful numbers divisible by exactly 2 distinct primes.

The programs for A355462, there is no canonical definition to state claims against.
-/

/-! ## A355462.P7890806128031357597

`∪[A085986(n+1), A391921(n+1)]`
-/

namespace A355462.P7890806128031357597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A355462.P7890806128031357597

/-! ## A355462.P10501569506012208230

`∪[A303661(n+1), A391921(n+1)]`
-/

namespace A355462.P10501569506012208230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A355462.P10501569506012208230

/-! ## A355462.P16766365560067593741

`∩[A001694(n+1), A338539(n+1)]`
-/

namespace A355462.P16766365560067593741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355462.P16766365560067593741

/-! ## A355462.P13303627921336020732

`∩[A286708(n+1), A338539(n+1)]`
-/

namespace A355462.P13303627921336020732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355462.P13303627921336020732

/-! ## A355462.P12794741078020316095

`∩[A224866(n+1)-1, A338539(n+1)]`
-/

namespace A355462.P12794741078020316095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355462.P12794741078020316095

/-! ## A355462.P13954988793800142601

`filter[A345382(n+1), A065202(#)]`
-/

namespace A355462.P13954988793800142601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A355462.P13954988793800142601

/-! ## A355462.P12634407664045465838

`filter[A345382(n+1), A087049(#)]`
-/

namespace A355462.P12634407664045465838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A355462.P12634407664045465838

/-! ## A355462.P15898222568941836165

`filter[A345382(n+1), A319710(#)]`
-/

namespace A355462.P15898222568941836165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A355462.P15898222568941836165

/-! ## A355462.P9997463444618728337

`filter[A345382(n+1), A319988(#)]`
-/

namespace A355462.P9997463444618728337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A355462.P9997463444618728337

/-! ## A355462.P8718368447400180620

`∩[A001694(n+1), A345382(n+1)]`
-/

namespace A355462.P8718368447400180620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355462.P8718368447400180620

/-! ## A355462.P2662059679062563247

`∩[A036785(n+1), A345382(n+1)]`
-/

namespace A355462.P2662059679062563247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355462.P2662059679062563247

/-! ## A355462.P65886527061816002

`∩[A038838(n+1), A345382(n+1)]`
-/

namespace A355462.P65886527061816002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355462.P65886527061816002

/-! ## A355462.P17158929195510692906

`∩[A048108(n+1), A345382(n+1)]`
-/

namespace A355462.P17158929195510692906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355462.P17158929195510692906

/-! ## A355462.P11724599664818491225

`∩[A048111(n+1), A345382(n+1)]`
-/

namespace A355462.P11724599664818491225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355462.P11724599664818491225

/-! ## A355462.P9771347734322819452

`∩[A057109(n+1), A345382(n+1)]`
-/

namespace A355462.P9771347734322819452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355462.P9771347734322819452

/-! ## A355462.P3414559604951796005

`∩[A057111(n+1), A345382(n+1)]`
-/

namespace A355462.P3414559604951796005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355462.P3414559604951796005

/-! ## A355462.P18234909769596438568

`∩[A069189(n+1), A345382(n+1)]`
-/

namespace A355462.P18234909769596438568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355462.P18234909769596438568

/-! ## A355462.P16054300425534616194

`∩[A070003(n+1), A345382(n+1)]`
-/

namespace A355462.P16054300425534616194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355462.P16054300425534616194

/-! ## A355462.P5472367025798444502

`∩[A080366(n+1), A345382(n+1)]`
-/

namespace A355462.P5472367025798444502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355462.P5472367025798444502

/-! ## A355462.P1262356654926393266

`∩[A082295(n+1), A345382(n+1)]`
-/

namespace A355462.P1262356654926393266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355462.P1262356654926393266

/-!
# A355463: Expansion of Sum_{k>=0} (x/(1 - k^k * x))^k.

The programs for A355463, there is no canonical definition to state claims against.
-/

/-! ## A355463.P5694426463062316119

`A174228(A001147(n))-A033312(n)`
-/

namespace A355463.P5694426463062316119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174228 (A001147 n).toNat - A033312 n

end

end A355463.P5694426463062316119

/-!
# A355464: Expansion of Sum_{k>=0} x^k/(1 - k^k * x)^(k+1).

The programs for A355464, there is no canonical definition to state claims against.
-/

/-! ## A355464.P15251257956077028977

`∑[A008620(n!²)]`
-/

namespace A355464.P15251257956077028977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Nat.factorial n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355464.P15251257956077028977

/-!
# A355467: a(n) is the smallest number which is greater than n and has more prime factors (with multiplicity) than n.

The programs for A355467, there is no canonical definition to state claims against.
-/

/-! ## A355467.P18343649578434733324

`A325566(A135156(2*n))+n+1`
-/

namespace A355467.P18343649578434733324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325566 (A135156 (2 * n)).toNat + (n + 1 : ℤ)

end

end A355467.P18343649578434733324

/-! ## A355467.P571432220215353481

`A305422(A102272(n+1))+A325566(n+1)+n`
-/

namespace A355467.P571432220215353481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305422 (A102272 (n + 1)).toNat + (A325566 (n + 1) + (n : ℤ))

end

end A355467.P571432220215353481

/-! ## A355467.P6244211999389882308

`A357629(A000040(n+1))+A325566(n+1)`
-/

namespace A355467.P6244211999389882308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357629 (A000040 (n + 1)).toNat + A325566 (n + 1)

end

end A355467.P6244211999389882308

/-! ## A355467.P8929429316690410008

`A000188(A240547(n+1))+1+n`
-/

namespace A355467.P8929429316690410008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A240547 (n + 1)).toNat + 1 + (n : ℤ)

end

end A355467.P8929429316690410008

/-! ## A355467.P4921489145998832559

`or(n, gcd(n+1, A000203(A022390(n))))+1`
-/

namespace A355467.P4921489145998832559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (Int.gcd (n + 1 : ℤ) (A000203 (A022390 n).toNat)) + 1

end

end A355467.P4921489145998832559

/-!
# A355470: Expansion of Sum_{k>=0} (k^3 * x)^k/(1 - k^3 * x)^(k+1).

The programs for A355470, there is no canonical definition to state claims against.
-/

/-! ## A355470.P3931772395487163241

`A349706(A139276(n))`
-/

namespace A355470.P3931772395487163241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349706 (A139276 n).toNat

end

end A355470.P3931772395487163241

/-!
# A355471: Expansion of Sum_{k>=0} (x/(1 - k^2 * x))^k.

The programs for A355471, there is no canonical definition to state claims against.
-/

/-! ## A355471.P11826979078332676352

`A033865(a(n-1)+3*a(n-2))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=10`
-/

namespace A355471.P11826979078332676352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 10] fun n a =>
  A033865 (a (n - 1) + 3 * a (n - 2)).toNat

end

end A355471.P11826979078332676352

/-! ## A355471.P817648014878451342

`A187184(3*A330467(n))`
-/

namespace A355471.P817648014878451342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187184 (3 * A330467 n).toNat

end

end A355471.P817648014878451342

/-!
# A355472: Expansion of Sum_{k>=0} (x/(1 - k^3 * x))^k.

The programs for A355472, there is no canonical definition to state claims against.
-/

/-! ## A355472.P12526429508077154405

`A034888(n!²)`
-/

namespace A355472.P12526429508077154405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (Nat.factorial n ^ 2)

end

end A355472.P12526429508077154405

/-!
# A355473: Expansion of Sum_{k>=0} x^k/(1 - k^3 * x)^(k+1).

The programs for A355473, there is no canonical definition to state claims against.
-/

/-! ## A355473.P13094753062597779089

`7*A326774(a(n-1)+a(n-2)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A355473.P13094753062597779089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  7 * A326774 (a (n - 1) + a (n - 2) - a (n - 3)).toNat

end

end A355473.P13094753062597779089

/-!
# A355474: Square array T(m,n) = Card({ (i, j) : 1 <= i <= m, 1 <= j <= min(n, i), GCD(i, j) = 1 }), read by antidiagonals upwards.

The programs for A355474, there is no canonical definition to state claims against.
-/

/-! ## A355474.P18247002093475289472

`A008578(A008284(n+1))+A001221(A096334(n))`
-/

namespace A355474.P18247002093475289472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A008284 (n + 1)).toNat + A001221 (A096334 n).toNat

end

end A355474.P18247002093475289472

/-! ## A355474.P5953781610410510020

`A072649(A126279(n+1)%A332314(n+1))`
-/

namespace A355474.P5953781610410510020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (Int.tmod (A126279 (n + 1)) (A332314 (n + 1))).toNat

end

end A355474.P5953781610410510020

/-! ## A355474.P15618272997463942222

`A130147(A387336(n+1))`
-/

namespace A355474.P15618272997463942222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130147 (A387336 (n + 1)).toNat

end

end A355474.P15618272997463942222

/-! ## A355474.P8140190452697824655

`A374758(A350161(n+2))`
-/

namespace A355474.P8140190452697824655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 (A350161 (n + 2)).toNat

end

end A355474.P8140190452697824655

/-! ## A355474.P12992516111315050029

`A358372(A008284(n+1)*A130321(n))`
-/

namespace A355474.P12992516111315050029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358372 (A008284 (n + 1) * A130321 n).toNat

end

end A355474.P12992516111315050029

/-!
# A355475: Numbers that are sparsely totient (A036913) and of least prime signature (A025487).

The programs for A355475, there is no canonical definition to state claims against.
-/

/-! ## A355475.P14822396645593358616

`∩[A025487(n+1), A036913(n+1)]`
-/

namespace A355475.P14822396645593358616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355475.P14822396645593358616

/-! ## A355475.P5398809961971237419

`∩[A036913(n+1), A178799(n)+a(n-1)]` with `a(0)=1`
-/

namespace A355475.P5398809961971237419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A178799 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355475.P5398809961971237419

/-! ## A355475.P7662274645395363509

`∩[A036913(n+1), A051466(A329898(n+1))]`
-/

namespace A355475.P7662274645395363509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (A329898 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355475.P7662274645395363509

/-! ## A355475.P8301015757556420584

`∩[A036913(n+1), A329899(A329898(n+2))]`
-/

namespace A355475.P8301015757556420584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (A329898 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355475.P8301015757556420584

/-!
# A355477: Maximum number of skew-tetrominoes that can be packed into an n X n square.

The programs for A355477, there is no canonical definition to state claims against.
-/

/-! ## A355477.P15680881281251122233

`A059995(A132356(n)-A057944(n))`
-/

namespace A355477.P15680881281251122233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A132356 n - A057944 n).toNat

end

end A355477.P15680881281251122233

/-! ## A355477.P2131144631045553677

`A002265(A289870(n)+A097992(n+1))`
-/

namespace A355477.P2131144631045553677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A289870 n + A097992 (n + 1)).toNat

end

end A355477.P2131144631045553677

/-! ## A355477.P17501964916844815006

`A331146(A038722(C(n, 2)+2))%(C(n, 2)+2)`
-/

namespace A355477.P17501964916844815006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331146 (A038722 (Nat.choose n 2 + 2)).toNat) (Nat.choose n 2 + 2 : ℤ)

end

end A355477.P17501964916844815006

/-! ## A355477.P2314609965713150130

`A331146(A038722(C(n, 2)+2))%A311626(n)`
-/

namespace A355477.P2314609965713150130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331146 (A038722 (Nat.choose n 2 + 2)).toNat) (A311626 n)

end

end A355477.P2314609965713150130

/-!
# A355478: The honeybee prime walk: a(n) is the number of closed honeycomb cells after the n-th step of the walk described in the comments.

The programs for A355478, there is no canonical definition to state claims against.
-/

/-! ## A355478.P5053117799576944690

`∑[val(A212719(n+1), 64)]`
-/

namespace A355478.P5053117799576944690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A212719 (n + 1)).toNat 64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355478.P5053117799576944690

/-! ## A355478.P16323375875511736952

`∑[val(A332283(n), A344957(n+1))]`
-/

namespace A355478.P16323375875511736952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A332283 n).toNat (A344957 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355478.P16323375875511736952

/-! ## A355478.P15235409960198137269

`∑[val(A360194(n+2), A360246(n+1))]`
-/

namespace A355478.P15235409960198137269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A360194 (n + 2)).toNat (A360246 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355478.P15235409960198137269

/-! ## A355478.P4939230004062370913

`comp[A141111(n+1)-A003949(n)]-n`
-/

namespace A355478.P4939230004062370913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141111 (n + 1) - A003949 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A355478.P4939230004062370913

/-! ## A355478.P1619709515923525676

`comp[A007304(n+1)-A000669(n+3)]-n`
-/

namespace A355478.P1619709515923525676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1) - A000669 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A355478.P1619709515923525676

/-! ## A355478.P5444292301047468010

`∑[(A237984(n+4)%A273568(A025427(2*n+3)))²]`
-/

namespace A355478.P5444292301047468010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237984 (n + 4)) (A273568 (A025427 (2 * n + 3)).toNat) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355478.P5444292301047468010

/-! ## A355478.P18067059401631983718

`∑[A342716(n+1)%A190867(3*n+4)]`
-/

namespace A355478.P18067059401631983718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342716 (n + 1)) (A190867 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355478.P18067059401631983718

/-! ## A355478.P14538827309024381408

`floor(A167460(n+1)/A167459(n+2))`
-/

namespace A355478.P14538827309024381408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167460 (n + 1) : ℚ) / (A167459 (n + 2) : ℚ)⌋

end

end A355478.P14538827309024381408

/-! ## A355478.P10739061687271925114

`∑[val(A132886(n), 16)]`
-/

namespace A355478.P10739061687271925114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A132886 n).toNat 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355478.P10739061687271925114

/-! ## A355478.P17033791200788157482

`∑[A123258(n+5)%2]`
-/

namespace A355478.P17033791200788157482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123258 (n + 5)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355478.P17033791200788157482

/-!
# A355480: a(n) is the number of distinct, hexagonal-tiled regions after the n-th step of the walk described in A355478.

The programs for A355480, there is no canonical definition to state claims against.
-/

/-! ## A355480.P10237720226574396509

`∑[(A353742(n+1)-1)*char[∑[n]]]`
-/

namespace A355480.P10237720226574396509
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A353742 (n + 1) - 1) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355480.P10237720226574396509

/-! ## A355480.P8554408195064909735

`∑[A008279(n)%A353742(n+1)]`
-/

namespace A355480.P8554408195064909735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008279 n) (A353742 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355480.P8554408195064909735

/-! ## A355480.P2205273048143602586

`∑[A059370(n)%A353742(n+1)]`
-/

namespace A355480.P2205273048143602586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059370 n) (A353742 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355480.P2205273048143602586

/-! ## A355480.P4011345725209615249

`∑[A082037(n)%A353742(n+1)]`
-/

namespace A355480.P4011345725209615249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082037 n) (A353742 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355480.P4011345725209615249

/-! ## A355480.P1875056947323461926

`∑[A013609(n)%A238747(n+2)]`
-/

namespace A355480.P1875056947323461926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013609 n) (A238747 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355480.P1875056947323461926

/-! ## A355480.P7781559222195702216

`∑[A063007(n)%A238747(n+2)]`
-/

namespace A355480.P7781559222195702216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063007 n) (A238747 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355480.P7781559222195702216

/-! ## A355480.P5446080205122662267

`∑[A097190(n)%A238747(n+2)]`
-/

namespace A355480.P5446080205122662267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097190 n) (A238747 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355480.P5446080205122662267

/-! ## A355480.P646104573832598519

`∑[A198954(n)%A238747(n+2)]`
-/

namespace A355480.P646104573832598519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198954 n) (A238747 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355480.P646104573832598519

/-! ## A355480.P12257852381682035575

`∑[A036261(n+1)%A238747(n+2)]`
-/

namespace A355480.P12257852381682035575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036261 (n + 1)) (A238747 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355480.P12257852381682035575

/-! ## A355480.P1993274224094483881

`∑[C(A355745(n+1), A222334(n+1))]`
-/

namespace A355480.P1993274224094483881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A355745 (n + 1)).toNat (A222334 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355480.P1993274224094483881

/-!
# A355481: Number of pairs of Dyck paths of semilength n such that the midpoint of the first is above the midpoint of the second.

The programs for A355481, there is no canonical definition to state claims against.
-/

/-! ## A355481.P6775007752896095031

`(A001246(n)-A129123(n))/2`
-/

namespace A355481.P6775007752896095031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001246 n - A129123 n : ℚ) / 2

end

end A355481.P6775007752896095031

/-! ## A355481.P7794172268771053858

`(A000108(n)²-A129123(n))/2`
-/

namespace A355481.P7794172268771053858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n ^ 2 - A129123 n : ℚ) / 2

end

end A355481.P7794172268771053858

/-! ## A355481.P3060237028831687186

`A001246(n)-A357652(n)`
-/

namespace A355481.P3060237028831687186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001246 n - A357652 n

end

end A355481.P3060237028831687186

/-! ## A355481.P4878749030632422892

`A357652(n)-A129123(n)`
-/

namespace A355481.P4878749030632422892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357652 n - A129123 n

end

end A355481.P4878749030632422892

/-! ## A355481.P7692865052969583343

`A000108(n)²-A357652(n)`
-/

namespace A355481.P7692865052969583343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n ^ 2 - A357652 n

end

end A355481.P7692865052969583343

/-! ## A355481.P9798560874871785809

`A126120(2*n)²-A357652(n)`
-/

namespace A355481.P9798560874871785809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) ^ 2 - A357652 n

end

end A355481.P9798560874871785809

/-! ## A355481.P7485071188009219408

`A000108(A000038(n)+n)²%A357652(n)`
-/

namespace A355481.P7485071188009219408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (A000038 n + (n : ℤ)).toNat ^ 2) (A357652 n)

end

end A355481.P7485071188009219408

/-!
# A355482: a(1) = 2; for n > 1, a(n) is the smallest positive number that has not yet appeared such that the number of 1-bits in the binary expansion of a(n) equals the number of proper divisors of a(n-1).

The programs for A355482, there is no canonical definition to state claims against.
-/

/-! ## A355482.P18031169067286696490

`A055248(lt[A322798(n), A055248(n)])`
-/

namespace A355482.P18031169067286696490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322798 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A355482.P18031169067286696490

/-! ## A355482.P17149967753224869542

`A055248(lt[A245793(n), A025581(n)])`
-/

namespace A355482.P17149967753224869542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245793 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A355482.P17149967753224869542

/-!
# A355485: Primes p such that neither g-1 nor g+1 is prime, where g is the gap from p to the next prime.

The programs for A355485, there is no canonical definition to state claims against.
-/

/-! ## A355485.P3192234023475777028

`∩[A209618(n+1), A224934(n+1)]`
-/

namespace A355485.P3192234023475777028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355485.P3192234023475777028

/-! ## A355485.P11744789713380076337

`∪[A134116(n+1), A124594(n+1)]%A330678(n+1)`
-/

namespace A355485.P11744789713380076337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124594 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A330678 (n + 1))

end

end A355485.P11744789713380076337

/-!
# A355486: a(n) is the number of total solutions (minus the n-th prime) to x^y == y^x (mod p) where 0 < x,y <= p and p is the n-th prime.

The programs for A355486, there is no canonical definition to state claims against.
-/

/-! ## A355486.P17441574827726925914

`A355419(n+1)-A000040(n+1)`
-/

namespace A355486.P17441574827726925914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355419 (n + 1) - A000040 (n + 1)

end

end A355486.P17441574827726925914

/-! ## A355486.P11180933153273349100

`2*A380816(A000040(n+1))`
-/

namespace A355486.P11180933153273349100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A380816 (A000040 (n + 1)).toNat

end

end A355486.P11180933153273349100

/-! ## A355486.P10643945030416041268

`A355419(n+1)-Δ[A007504(n)]`
-/

namespace A355486.P10643945030416041268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355419 (n + 1) - (f1 (n + 1) - f1 n)

end

end A355486.P10643945030416041268

/-! ## A355486.P17055368073854217153

`A355419(n+1)-p?[A014681(n)]`
-/

namespace A355486.P17055368073854217153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355419 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355486.P17055368073854217153

/-! ## A355486.P35398786091301244

`A355419(n+1)-p?[A259153(n)]`
-/

namespace A355486.P35398786091301244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355419 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355486.P35398786091301244

/-! ## A355486.P490124856746226523

`A355419(n+1)-A095320(n+1)`
-/

namespace A355486.P490124856746226523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355419 (n + 1) - A095320 (n + 1)

end

end A355486.P490124856746226523

/-! ## A355486.P1658393818663858606

`A355419(n+1)-A216883(n+1)`
-/

namespace A355486.P1658393818663858606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355419 (n + 1) - A216883 (n + 1)

end

end A355486.P1658393818663858606

/-! ## A355486.P14507601979954817895

`A355419(n+1)-A216884(n+1)`
-/

namespace A355486.P14507601979954817895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355419 (n + 1) - A216884 (n + 1)

end

end A355486.P14507601979954817895

/-! ## A355486.P8579255885154888203

`A355419(n+1)-A216885(n+1)`
-/

namespace A355486.P8579255885154888203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355419 (n + 1) - A216885 (n + 1)

end

end A355486.P8579255885154888203

/-!
# A355487: Bitwise XOR of the base-4 digits of n.

The programs for A355487, the canonical program `A355487.P5489829772880939373` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355487 has offset 0).

The definition of A355487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355487.P5489829772880939373

`xor(n, a(floor(n/4)))%4` with `a(0)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A355487

/-- `xor(n, a(floor(n/4)))%4` -/
def P5489829772880939373.Spec : Prop :=
  ∀ n, (P5489829772880939373.a n : ℤ) = A355487 n

theorem P5489829772880939373.correct : P5489829772880939373.Spec := by
  intro n
  simp only [A355487]

end A355487

/-! ## A355487.P1990385439617218661

`and(3, xor(n, a(floor(n/4))))` with `a(0)=0`
-/

namespace A355487.P1990385439617218661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land 3 (Nat.xor n (a ⌊(n : ℚ) / 4⌋.toNat))

end

end A355487.P1990385439617218661

namespace A355487

/-- `and(3, xor(n, a(floor(n/4))))` -/
def P1990385439617218661.Spec : Prop :=
  ∀ n, (P1990385439617218661.a n : ℤ) = A355487 n

end A355487

/-! ## A355487.P1564103410815787778

`A064707(n)%4`
-/

namespace A355487.P1564103410815787778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064707 n) 4

end

end A355487.P1564103410815787778

namespace A355487

/-- `A064707(n)%4` -/
def P1564103410815787778.Spec : Prop :=
  ∀ n, P1564103410815787778.a n = A355487 n

end A355487

/-! ## A355487.P14134420260257823213

`A010873(A064707(n))`
-/

namespace A355487.P14134420260257823213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A064707 n).toNat

end

end A355487.P14134420260257823213

namespace A355487

/-- `A010873(A064707(n))` -/
def P14134420260257823213.Spec : Prop :=
  ∀ n, P14134420260257823213.a n = A355487 n

end A355487

/-! ## A355487.P12391910114706057161

`A193231(and(3, A004718(n)))`
-/

namespace A355487.P12391910114706057161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (Int.land 3 (A004718 n)).toNat

end

end A355487.P12391910114706057161

namespace A355487

/-- `A193231(and(3, A004718(n)))` -/
def P12391910114706057161.Spec : Prop :=
  ∀ n, P12391910114706057161.a n = A355487 n

end A355487

/-! ## A355487.P299956693976851484

`A323908(and(3, A004718(n)))`
-/

namespace A355487.P299956693976851484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323908 (Int.land 3 (A004718 n)).toNat

end

end A355487.P299956693976851484

namespace A355487

/-- `A323908(and(3, A004718(n)))` -/
def P299956693976851484.Spec : Prop :=
  ∀ n, P299956693976851484.a n = A355487 n

end A355487

/-! ## A355487.P6011992742024287106

`and(A064707(n), A122553(n))`
-/

namespace A355487.P6011992742024287106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064707 n) (A122553 n)

end

end A355487.P6011992742024287106

namespace A355487

/-- `and(A064707(n), A122553(n))` -/
def P6011992742024287106.Spec : Prop :=
  ∀ n, P6011992742024287106.a n = A355487 n

end A355487

/-! ## A355487.P8137586285783564805

`A341389(n)+2*A269723(n)`
-/

namespace A355487.P8137586285783564805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 n + 2 * A269723 n

end

end A355487.P8137586285783564805

namespace A355487

/-- `A341389(n)+2*A269723(n)` -/
def P8137586285783564805.Spec : Prop :=
  ∀ n, P8137586285783564805.a n = A355487 n

end A355487

/-! ## A355487.P11360403656413041902

`and(A064707(n), A157532(n+1))`
-/

namespace A355487.P11360403656413041902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064707 n) (A157532 (n + 1))

end

end A355487.P11360403656413041902

namespace A355487

/-- `and(A064707(n), A157532(n+1))` -/
def P11360403656413041902.Spec : Prop :=
  ∀ n, P11360403656413041902.a n = A355487 n

end A355487

/-! ## A355487.P5517424465063658028

`A341389(n)+2*A341389(A004526(n))`
-/

namespace A355487.P5517424465063658028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 n + 2 * A341389 (A004526 n).toNat

end

end A355487.P5517424465063658028

namespace A355487

/-- `A341389(n)+2*A341389(A004526(n))` -/
def P5517424465063658028.Spec : Prop :=
  ∀ n, P5517424465063658028.a n = A355487 n

end A355487

/-! ## A355487.P16187240068998759394

`and(3, A006068(A006068(n)))`
-/

namespace A355487.P16187240068998759394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A006068 (A006068 n).toNat)

end

end A355487.P16187240068998759394

namespace A355487

/-- `and(3, A006068(A006068(n)))` -/
def P16187240068998759394.Spec : Prop :=
  ∀ n, P16187240068998759394.a n = A355487 n

end A355487

/-! ## A355487.P16654127324783036810

`A269723(2*n)+2*A269723(n)`
-/

namespace A355487.P16654127324783036810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269723 (2 * n) + 2 * A269723 n

end

end A355487.P16654127324783036810

namespace A355487

/-- `A269723(2*n)+2*A269723(n)` -/
def P16654127324783036810.Spec : Prop :=
  ∀ n, P16654127324783036810.a n = A355487 n

end A355487

/-! ## A355487.P12357679578819052403

`A010873(A006068(A006068(n)))`
-/

namespace A355487.P12357679578819052403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A006068 (A006068 n).toNat).toNat

end

end A355487.P12357679578819052403

namespace A355487

/-- `A010873(A006068(A006068(n)))` -/
def P12357679578819052403.Spec : Prop :=
  ∀ n, P12357679578819052403.a n = A355487 n

end A355487

/-! ## A355487.P2858609228039556360

`xor(A001285(A006068(n)), A268676(n))`
-/

namespace A355487.P2858609228039556360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001285 (A006068 n).toNat) (A268676 n)

end

end A355487.P2858609228039556360

namespace A355487

/-- `xor(A001285(A006068(n)), A268676(n))` -/
def P2858609228039556360.Spec : Prop :=
  ∀ n, P2858609228039556360.a n = A355487 n

end A355487

/-! ## A355487.P12978014000368002981

`xor(A001285(A006068(n)), A007413(2*n+1))`
-/

namespace A355487.P12978014000368002981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001285 (A006068 n).toNat) (A007413 (2 * n + 1))

end

end A355487.P12978014000368002981

namespace A355487

/-- `xor(A001285(A006068(n)), A007413(2*n+1))` -/
def P12978014000368002981.Spec : Prop :=
  ∀ n, P12978014000368002981.a n = A355487 n

end A355487

/-! ## A355487.P1861031125186844578

`A274912(A163234(n))`
-/

namespace A355487.P1861031125186844578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274912 (A163234 n).toNat

end

end A355487.P1861031125186844578

namespace A355487

/-- `A274912(A163234(n))` -/
def P1861031125186844578.Spec : Prop :=
  ∀ n, P1861031125186844578.a n = A355487 n

end A355487

/-! ## A355487.P10444026227469864182

`and(3, A268722(A268716(n)))`
-/

namespace A355487.P10444026227469864182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A268722 (A268716 n).toNat)

end

end A355487.P10444026227469864182

namespace A355487

/-- `and(3, A268722(A268716(n)))` -/
def P10444026227469864182.Spec : Prop :=
  ∀ n, P10444026227469864182.a n = A355487 n

end A355487

/-! ## A355487.P5266207010092774401

`A006068(A006068(n))%A177499(4*(n+1)+2)`
-/

namespace A355487.P5266207010092774401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006068 (A006068 n).toNat) (A177499 (4 * (n + 1) + 2))

end

end A355487.P5266207010092774401

namespace A355487

/-- `A006068(A006068(n))%A177499(4*(n+1)+2)` -/
def P5266207010092774401.Spec : Prop :=
  ∀ n, P5266207010092774401.a n = A355487 n

end A355487

/-! ## A355487.P16810001634030180325

`A048725(A064707(n))-A064707(A048725(n))`
-/

namespace A355487.P16810001634030180325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 (A064707 n).toNat - A064707 (A048725 n).toNat

end

end A355487.P16810001634030180325

namespace A355487

/-- `A048725(A064707(n))-A064707(A048725(n))` -/
def P16810001634030180325.Spec : Prop :=
  ∀ n, P16810001634030180325.a n = A355487 n

end A355487

/-!
# A355488: Expansion of g.f. f/(1+2*f) where f is the g.f. of nonempty permutations.

The programs for A355488, there is no canonical definition to state claims against.
-/

/-! ## A355488.P2197699582782672100

`A357078(∑[n]+1)`
-/

namespace A355488.P2197699582782672100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357078 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A355488.P2197699582782672100

/-! ## A355488.P14028050635540825417

`and(-1, A357078(A000124(n)))`
-/

namespace A355488.P14028050635540825417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A357078 (A000124 n).toNat)

end

end A355488.P14028050635540825417

/-! ## A355488.P14478929806374372658

`A357078(A000124(n))+A084904(n)`
-/

namespace A355488.P14478929806374372658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357078 (A000124 n).toNat + A084904 n

end

end A355488.P14478929806374372658

/-! ## A355488.P801114680588762202

`A357078(A000124(n))+A185284(n)`
-/

namespace A355488.P801114680588762202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357078 (A000124 n).toNat + A185284 n

end

end A355488.P801114680588762202

/-! ## A355488.P7854106299058836118

`A357078(A000124(n))+A262889(n)`
-/

namespace A355488.P7854106299058836118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357078 (A000124 n).toNat + A262889 n

end

end A355488.P7854106299058836118

/-!
# A355489: Numbers k such that A000120(k) = A007814(k) + 2.

The programs for A355489, there is no canonical definition to state claims against.
-/

/-! ## A355489.P5890463152918809827

`eq[A000120(n), A089080(n+1)]`
-/

namespace A355489.P5890463152918809827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A355489.P5890463152918809827

/-! ## A355489.P310666580016621691

`eq[A000120(n), A037227(n+1)]+1`
-/

namespace A355489.P310666580016621691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A355489.P310666580016621691

/-! ## A355489.P11152550481935809365

`eq[2, A088705(2*n)+A000120(n)]`
-/

namespace A355489.P11152550481935809365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (2 * n) + A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A355489.P11152550481935809365

/-! ## A355489.P6543330510450508102

`eq[A285097(2*n+1)+1, A000120(n)]`
-/

namespace A355489.P6543330510450508102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A355489.P6543330510450508102

/-! ## A355489.P2917914102268777131

`eq[A285099(2*n+1)+1, A000120(n)]`
-/

namespace A355489.P2917914102268777131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A355489.P2917914102268777131

/-! ## A355489.P4864535230276345428

`eq[A000120(n+1), A001511(n+1)+1]+1`
-/

namespace A355489.P4864535230276345428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A355489.P4864535230276345428

/-! ## A355489.P16433786743899003883

`A389923(n+2)/2`
-/

namespace A355489.P16433786743899003883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389923 (n + 2) : ℚ) / 2

end

end A355489.P16433786743899003883

/-! ## A355489.P16253423509905530907

`A001281(A389923(n+2))`
-/

namespace A355489.P16253423509905530907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A389923 (n + 2)).toNat

end

end A355489.P16253423509905530907

/-!
# A355490: Numbers of the form a+b+c = a^2 - b^2 - c^2 where a > b >= c > 0.

The programs for A355490, there is no canonical definition to state claims against.
-/

/-! ## A355490.P12606015554151179511

`lt[A078936(n+1), n]+1`
-/

namespace A355490.P12606015554151179511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078936 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A355490.P12606015554151179511

/-! ## A355490.P8135448680833053656

`lt[A033677(∑[n+1]), n]+1`
-/

namespace A355490.P8135448680833053656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A355490.P8135448680833053656

/-! ## A355490.P6087872258930830522

`lt[A033677(A179865(n+1)), n]`
-/

namespace A355490.P6087872258930830522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A179865 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A355490.P6087872258930830522

/-! ## A355490.P2124452970848634370

`lt[A033677(A175631(n+2)+1), n]`
-/

namespace A355490.P2124452970848634370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A175631 (n + 2) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A355490.P2124452970848634370

/-! ## A355490.P10798484010208888765

`lt[A008619(n), A033676(A179865(n+1))]`
-/

namespace A355490.P10798484010208888765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A179865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355490.P10798484010208888765

/-!
# A355492: a(n) = 7*3^n - 2.

The programs for A355492, the canonical program `A355492.P5115651979487164574` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355492 has offset 0).

The definition of A355492 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*3^n-2` (program `A355492.P5115651979487164574`, by `A355492.P5115651979487164574.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A355492.P5115651979487164574

`7*3^n-2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A355492

/-- `7*3^n-2` -/
def P5115651979487164574.Spec : Prop :=
  ∀ n, P5115651979487164574.a n = A355492 n

theorem P5115651979487164574.correct : P5115651979487164574.Spec := by
  intro n
  simp only [A355492]

end A355492

/-! ## A355492.P6982246215721436936

`∑[3*a(n-1)]` with `a(0)=5, a(1)=14`
-/

namespace A355492.P6982246215721436936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 14] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355492.P6982246215721436936

namespace A355492

/-- `∑[3*a(n-1)]` -/
def P6982246215721436936.Spec : Prop :=
  ∀ n, (P6982246215721436936.a n : ℤ) = A355492 n

end A355492

/-! ## A355492.P2195988800703307939

`abs(3*a(n-1)+4)` with `a(0)=5`
-/

namespace A355492.P2195988800703307939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  3 * a (n - 1) + 4

end

end A355492.P2195988800703307939

namespace A355492

/-- `abs(3*a(n-1)+4)` -/
def P2195988800703307939.Spec : Prop :=
  ∀ n, (P2195988800703307939.a n : ℤ) = A355492 n

theorem P2195988800703307939.correct : P2195988800703307939.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A355492, Nat.add_sub_cancel, A355492.P2195988800703307939.a, A355492.P5115651979487164574.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A355492, Nat.add_sub_cancel, A355492.P2195988800703307939.a, A355492.P5115651979487164574.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A355492

/-! ## A355492.P7594647098955174665

`3*(a(n-1)+4/3)` with `a(0)=5`
-/

namespace A355492.P7594647098955174665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  3 * (a (n - 1) + (4 : ℚ) / 3)

end

end A355492.P7594647098955174665

namespace A355492

/-- `3*(a(n-1)+4/3)` -/
def P7594647098955174665.Spec : Prop :=
  ∀ n, P7594647098955174665.a n = (A355492 n : ℚ)

theorem P7594647098955174665.correct : P7594647098955174665.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A355492, Nat.add_sub_cancel, A355492.P7594647098955174665.a, A355492.P5115651979487164574.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A355492, Nat.add_sub_cancel, A355492.P7594647098955174665.a, A355492.P5115651979487164574.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A355492

/-! ## A355492.P13518430530177722783

`or(1, 3*(a(n-1)+1))` with `a(0)=5`
-/

namespace A355492.P13518430530177722783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.lor 1 (3 * (a (n - 1) + 1))

end

end A355492.P13518430530177722783

namespace A355492

/-- `or(1, 3*(a(n-1)+1))` -/
def P13518430530177722783.Spec : Prop :=
  ∀ n, (P13518430530177722783.a n : ℤ) = A355492 n

end A355492

/-! ## A355492.P7159952774226279677

`xor(1, 3*(a(n-1)+1))` with `a(0)=5`
-/

namespace A355492.P7159952774226279677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.xor 1 (3 * (a (n - 1) + 1))

end

end A355492.P7159952774226279677

namespace A355492

/-- `xor(1, 3*(a(n-1)+1))` -/
def P7159952774226279677.Spec : Prop :=
  ∀ n, (P7159952774226279677.a n : ℤ) = A355492 n

end A355492

/-! ## A355492.P16070460597075932128

`record[3*a(n-2)+4]` with `a(0)=5, a(1)=0`
-/

namespace A355492.P16070460597075932128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 0] fun n f1 =>
  3 * f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355492.P16070460597075932128

namespace A355492

/-- `record[3*a(n-2)+4]` -/
def P16070460597075932128.Spec : Prop :=
  ∀ n, (P16070460597075932128.a n : ℤ) = A355492 n

end A355492

/-! ## A355492.P6596230579909180042

`3*(2-(2/3-a(n-1)))` with `a(0)=5`
-/

namespace A355492.P6596230579909180042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  3 * (2 - ((2 : ℚ) / 3 - a (n - 1)))

end

end A355492.P6596230579909180042

namespace A355492

/-- `3*(2-(2/3-a(n-1)))` -/
def P6596230579909180042.Spec : Prop :=
  ∀ n, P6596230579909180042.a n = (A355492 n : ℚ)

theorem P6596230579909180042.correct : P6596230579909180042.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A355492, Nat.add_sub_cancel, A355492.P6596230579909180042.a, A355492.P5115651979487164574.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A355492, Nat.add_sub_cancel, A355492.P6596230579909180042.a, A355492.P5115651979487164574.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A355492

/-! ## A355492.P15995457590621877390

`floor(a(n-1)+2*(a(n-1)+2))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A355492.P15995457590621877390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 2 * (a (n - 1) + 2)

end

end A355492.P15995457590621877390

namespace A355492

/-- `floor(a(n-1)+2*(a(n-1)+2))` -/
def P15995457590621877390.Spec : Prop :=
  ∀ n, (P15995457590621877390.a n : ℤ) = A355492 n

theorem P15995457590621877390.correct : P15995457590621877390.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A355492, Nat.add_sub_cancel, A355492.P15995457590621877390.a, A355492.P5115651979487164574.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A355492, Nat.add_sub_cancel, A355492.P15995457590621877390.a, A355492.P5115651979487164574.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A355492

/-! ## A355492.P17724017868841274095

`floor(4*a(n-1)-(a(n-1)-4))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A355492.P17724017868841274095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  4 * a (n - 1) - (a (n - 1) - 4)

end

end A355492.P17724017868841274095

namespace A355492

/-- `floor(4*a(n-1)-(a(n-1)-4))` -/
def P17724017868841274095.Spec : Prop :=
  ∀ n, P17724017868841274095.a n = A355492 n

theorem P17724017868841274095.correct : P17724017868841274095.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A355492, Nat.add_sub_cancel, A355492.P17724017868841274095.a, A355492.P5115651979487164574.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A355492, Nat.add_sub_cancel, A355492.P17724017868841274095.a, A355492.P5115651979487164574.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A355492

/-! ## A355492.P9637894305303735241

`floor(a(n-1)+a(n-1)+a(n-1)+4)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A355492.P9637894305303735241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 4))

end

end A355492.P9637894305303735241

namespace A355492

/-- `floor(a(n-1)+a(n-1)+a(n-1)+4)` -/
def P9637894305303735241.Spec : Prop :=
  ∀ n, (P9637894305303735241.a n : ℤ) = A355492 n

theorem P9637894305303735241.correct : P9637894305303735241.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A355492, Nat.add_sub_cancel, A355492.P9637894305303735241.a, A355492.P5115651979487164574.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A355492, Nat.add_sub_cancel, A355492.P9637894305303735241.a, A355492.P5115651979487164574.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A355492

/-! ## A355492.P8686155400241383098

`Δ[∑[A027107(n)]-n]`
-/

namespace A355492.P8686155400241383098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027107 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A355492.P8686155400241383098

namespace A355492

/-- `Δ[∑[A027107(n)]-n]` -/
def P8686155400241383098.Spec : Prop :=
  ∀ n, P8686155400241383098.a n = A355492 n

end A355492

/-! ## A355492.P10156015442003641879

`record[A166481(n+2)-2]`
-/

namespace A355492.P10156015442003641879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166481 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355492.P10156015442003641879

namespace A355492

/-- `record[A166481(n+2)-2]` -/
def P10156015442003641879.Spec : Prop :=
  ∀ n, P10156015442003641879.a n = A355492 n

end A355492

/-! ## A355492.P18232206114866380083

`xor(A005032(n), A010696(n))`
-/

namespace A355492.P18232206114866380083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005032 n) (A010696 n)

end

end A355492.P18232206114866380083

namespace A355492

/-- `xor(A005032(n), A010696(n))` -/
def P18232206114866380083.Spec : Prop :=
  ∀ n, P18232206114866380083.a n = A355492 n

end A355492

/-! ## A355492.P12814301492204731067

`A155155(n)%A258597(n)`
-/

namespace A355492.P12814301492204731067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155155 n) (A258597 n)

end

end A355492.P12814301492204731067

namespace A355492

/-- `A155155(n)%A258597(n)` -/
def P12814301492204731067.Spec : Prop :=
  ∀ n, P12814301492204731067.a n = A355492 n

end A355492

/-!
# A355493: Expansion of Sum_{k>=0} (k^3 * x)^k/(1 - x)^(k+1).

The programs for A355493, there is no canonical definition to state claims against.
-/

/-! ## A355493.P10229868686953812789

`∑[A355496(n)]`
-/

namespace A355493.P10229868686953812789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355493.P10229868686953812789

/-! ## A355493.P530877698939808002

`A355496(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A355493.P530877698939808002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A355496 n + a (A028310 n - 1).toNat

end

end A355493.P530877698939808002

/-!
# A355494: Expansion of Sum_{k>=0} (k * x/(1 - x))^k.

The programs for A355494, there is no canonical definition to state claims against.
-/

/-! ## A355494.P11996241952559224359

`abs(Δ[A086331(abs(1-n))])`
-/

namespace A355494.P11996241952559224359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086331 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A355494.P11996241952559224359

/-! ## A355494.P8374782616795369348

`A189638(A084844(n+1))+1`
-/

namespace A355494.P8374782616795369348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189638 (A084844 (n + 1)).toNat + 1

end

end A355494.P8374782616795369348

/-!
# A355497: Numbers k such that x^2 - s*x + p has only integer roots, where s and p denote the sum and product of the digits of k respectively.

The programs for A355497, there is no canonical definition to state claims against.
-/

/-! ## A355497.P2537513119562844534

`∪[comp[A052382(n+1)], A355608(n+1)]`
-/

namespace A355497.P2537513119562844534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A355497.P2537513119562844534

/-! ## A355497.P7624387846308014897

`8%∑[A107572(n+1)]+n`
-/

namespace A355497.P7624387846308014897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 8 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A355497.P7624387846308014897

/-! ## A355497.P13740303581677317296

`8%A093143(n)+n`
-/

namespace A355497.P13740303581677317296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 8 (A093143 n) + (n : ℤ)

end

end A355497.P13740303581677317296

/-! ## A355497.P12306961168009472687

`a(n-A011620(n²))+1` with `a(0)=0, a(1)=4, a(2)=10`
-/

namespace A355497.P12306961168009472687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 10] fun n a =>
  a ((n : ℤ) - A011620 (n ^ 2)).toNat + 1

end

end A355497.P12306961168009472687

/-! ## A355497.P13549586058061207950

`(A046698(n²)+1)²+n-1`
-/

namespace A355497.P13549586058061207950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046698 (n ^ 2) + 1) ^ 2 + ((n : ℤ) - 1)

end

end A355497.P13549586058061207950

/-! ## A355497.P889018240044706870

`A033999(n*a(n-3))+a(n-1)` with `a(0)=0, a(1)=4, a(2)=10`
-/

namespace A355497.P889018240044706870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 10] fun n a =>
  A033999 ((n : ℤ) * a (n - 3)).toNat + a (n - 1)

end

end A355497.P889018240044706870

/-! ## A355497.P18051960609397772239

`A045901((n+3)²-8)-or(1, n*(n+3))`
-/

namespace A355497.P18051960609397772239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045901 ((n + 3) ^ 2 - 8) - (Nat.lor 1 (n * (n + 3)) : ℤ)

end

end A355497.P18051960609397772239

/-! ## A355497.P16005798396008067666

`A259361(((ceil(atan(n))+1)²+n)²)`
-/

namespace A355497.P16005798396008067666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (((⌈Real.arctan (n : ℝ)⌉ + 1) ^ 2 + (n : ℤ)) ^ 2).toNat

end

end A355497.P16005798396008067666

/-! ## A355497.P18291118397034427674

`A028552(n)-A004247(A059993(n))`
-/

namespace A355497.P18291118397034427674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n - A004247 (A059993 n).toNat

end

end A355497.P18291118397034427674

/-!
# A355498: a(n) = A000217(A033676(n)) * A000217(A033677(n)).

The programs for A355498, there is no canonical definition to state claims against.
-/

/-! ## A355498.P9333980532668395346

`A000217(A033676(n+1))*A000217(A033677(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355498.P9333980532668395346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A033676 (n + 1)).toNat * A000217 (A033677 (n + 1)).toNat

end

end A355498.P9333980532668395346

/-! ## A355498.P4636357111497533549

`(n+1)/4*A163520(n+1)`
-/

namespace A355498.P4636357111497533549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (A163520 (n + 1) : ℚ)

end

end A355498.P4636357111497533549

/-! ## A355498.P5159469014646116692

`A002265((n+1)*A163520(n+1))`
-/

namespace A355498.P5159469014646116692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((n + 1 : ℤ) * A163520 (n + 1)).toNat

end

end A355498.P5159469014646116692

/-! ## A355498.P10132383650556165443

`A026922((n+1)*A163520(n+1))`
-/

namespace A355498.P10132383650556165443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 ((n + 1 : ℤ) * A163520 (n + 1)).toNat

end

end A355498.P10132383650556165443

/-! ## A355498.P6654965498090907846

`A002265((2*n+3-A220114(n+1))*(n+1))`
-/

namespace A355498.P6654965498090907846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (((2 * n + 3 : ℤ) - A220114 (n + 1)) * (n + 1 : ℤ)).toNat

end

end A355498.P6654965498090907846

/-! ## A355498.P4745708514173189691

`A002265((n+1)*(A075254(n+1)+A092510(n+1)+1))`
-/

namespace A355498.P4745708514173189691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((n + 1 : ℤ) * (A075254 (n + 1) + (A092510 (n + 1) + 1))).toNat

end

end A355498.P4745708514173189691

