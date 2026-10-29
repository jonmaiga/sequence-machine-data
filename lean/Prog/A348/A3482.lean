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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B002.C007
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
import Seq.B006.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A348200: Terms of A348004 having more unitary divisors than any smaller term.

The programs for A348200, there is no canonical definition to state claims against.
-/

/-! ## A348200.P14765155489843003143

`∏[record[A118469(A001918(n+1))]]`
-/

namespace A348200.P14765155489843003143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118469 (A001918 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A348200.P14765155489843003143

/-! ## A348200.P8185878050394486200

`∏[record[A002260(A082869(n+1))]]`
-/

namespace A348200.P8185878050394486200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A082869 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A348200.P8185878050394486200

/-! ## A348200.P1894824923210172481

`∏[∑[A000188(A125145(n))]]`
-/

namespace A348200.P1894824923210172481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A125145 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A348200.P1894824923210172481

/-!
# A348201: Number of walks on cubic lattice from (n,n,n) to (0,0,0) using steps that decrease the Euclidean distance to the origin and that change each coordinate by 1 or by -1.

The programs for A348201, there is no canonical definition to state claims against.
-/

/-! ## A348201.P5670037098202699499

`A321848(n)+A133995(A212073(n))`
-/

namespace A348201.P5670037098202699499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321848 n + A133995 (A212073 n).toNat

end

end A348201.P5670037098202699499

/-!
# A348202: Number of nonnegative lattice paths from (0,0) to (n,0) using steps in {(1,-4), (1,-1), (1,0), (1,1)}.

The programs for A348202, there is no canonical definition to state claims against.
-/

/-! ## A348202.P15887425023625712502

`A000034(A006817(n))-A006835(n)`
-/

namespace A348202.P15887425023625712502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A006817 n).toNat - A006835 n

end

end A348202.P15887425023625712502

/-! ## A348202.P18410835079542995335

`A000034(A109487(n))-A006835(n)`
-/

namespace A348202.P18410835079542995335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A109487 n).toNat - A006835 n

end

end A348202.P18410835079542995335

/-! ## A348202.P10015255013188013587

`A000034(A151282(n))-A006835(n)`
-/

namespace A348202.P10015255013188013587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A151282 n).toNat - A006835 n

end

end A348202.P10015255013188013587

/-! ## A348202.P13621311515015876484

`A160198(A006780(n))-A006835(n)`
-/

namespace A348202.P13621311515015876484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160198 (A006780 n).toNat - A006835 n

end

end A348202.P13621311515015876484

/-! ## A348202.P2341755954621905593

`A000034(A306519(n))-A006835(n)`
-/

namespace A348202.P2341755954621905593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A306519 n).toNat - A006835 n

end

end A348202.P2341755954621905593

/-!
# A348203: a(n) = n - omega(n) + n * Sum_{p|n} 1/p.

The programs for A348203, the canonical program `A348203.P13239406140819049741` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348203 has offset 1).

The definition of A348203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348203.P4823519942649668306

`n+1-A001221(n+1)+(n+1)*∑{p}[n+1, 1/#]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348203.P4823519942649668306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A001221 (n + 1) : ℚ) + (n + 1 : ℚ) * (∑ p ∈ Nat.primeFactors (f1 n), 1 / (p : ℚ))

end

end A348203.P4823519942649668306

namespace A348203

/-- `n+1-A001221(n+1)+(n+1)*∑{p}[n+1, 1/#]` -/
def P4823519942649668306.Spec : Prop :=
  ∀ n, P4823519942649668306.a n = (A348203 (n + 1) : ℚ)

end A348203

/-! ## A348203.P13239406140819049741

`n+1-A001221(n+1)+A069359(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A348203

/-- `n+1-A001221(n+1)+A069359(n+1)` -/
def P13239406140819049741.Spec : Prop :=
  ∀ n, P13239406140819049741.a n = A348203 (n + 1)

theorem P13239406140819049741.correct : P13239406140819049741.Spec := by
  intro n
  simp only [A348203, Nat.add_sub_cancel]

end A348203

/-! ## A348203.P5508233796738179989

`∑{p}[n+1, floor(n/#)]+1+n`
-/

namespace A348203.P5508233796738179989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊(n : ℚ) / (p : ℚ)⌋ + 1 + (n : ℤ)

end

end A348203.P5508233796738179989

namespace A348203

/-- `∑{p}[n+1, floor(n/#)]+1+n` -/
def P5508233796738179989.Spec : Prop :=
  ∀ n, P5508233796738179989.a n = A348203 (n + 1)

end A348203

/-! ## A348203.P7071568173652229866

`∑{p}[xor(n, -1), floor(n/#)]-xor(n, -1)`
-/

namespace A348203.P7071568173652229866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊(n : ℚ) / (p : ℚ)⌋ - Int.xor (n : ℤ) (-1)

end

end A348203.P7071568173652229866

namespace A348203

/-- `∑{p}[xor(n, -1), floor(n/#)]-xor(n, -1)` -/
def P7071568173652229866.Spec : Prop :=
  ∀ n, P7071568173652229866.a n = A348203 (n + 1)

end A348203

/-! ## A348203.P16945103753862578971

`abs(∑{p}[n+1, ceil((1-n)/#)]-n)+1`
-/

namespace A348203.P16945103753862578971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ p ∈ Nat.primeFactors (f1 n), ⌈(1 - (n : ℤ) : ℚ) / (p : ℚ)⌉ - (n : ℤ)| + 1

end

end A348203.P16945103753862578971

namespace A348203

/-- `abs(∑{p}[n+1, ceil((1-n)/#)]-n)+1` -/
def P16945103753862578971.Spec : Prop :=
  ∀ n, P16945103753862578971.a n = A348203 (n + 1)

end A348203

/-! ## A348203.P4639587128364367560

`∑{p}[n+1, ceil(n/#)]+1+n-∑{p}[n+1, gcd(n, #)]`
-/

namespace A348203.P4639587128364367560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉ + 1 + (n : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p : ℕ) : ℤ)

end

end A348203.P4639587128364367560

namespace A348203

/-- `∑{p}[n+1, ceil(n/#)]+1+n-∑{p}[n+1, gcd(n, #)]` -/
def P4639587128364367560.Spec : Prop :=
  ∀ n, P4639587128364367560.a n = A348203 (n + 1)

end A348203

/-! ## A348203.P4588664325241483080

`∑{p}[n+1, ceil(n/#)]+1+n-∑{e}[∏{p}[n+1, #], #]`
-/

namespace A348203.P4588664325241483080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉ + 1 + (n : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A348203.P4588664325241483080

namespace A348203

/-- `∑{p}[n+1, ceil(n/#)]+1+n-∑{e}[∏{p}[n+1, #], #]` -/
def P4588664325241483080.Spec : Prop :=
  ∀ n, P4588664325241483080.a n = A348203 (n + 1)

end A348203

/-! ## A348203.P16235771184803541160

`(∑{p}[n+1, 1/#]+1)*(n+1)-log2(∏{p}[n+1, 2%(#+1)])`
-/

namespace A348203.P16235771184803541160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ p ∈ Nat.primeFactors (f1 n), 1 / (p : ℚ) + 1) * (n + 1 : ℚ) : ℚ) : ℝ) - Real.logb 2 ((∏ p ∈ Nat.primeFactors (f2 n), 2 % (p + 1) : ℕ) : ℝ)

end

end A348203.P16235771184803541160

namespace A348203

/-- `(∑{p}[n+1, 1/#]+1)*(n+1)-log2(∏{p}[n+1, 2%(#+1)])` -/
def P16235771184803541160.Spec : Prop :=
  ∀ n, P16235771184803541160.a n = (A348203 (n + 1) : ℝ)

end A348203

/-! ## A348203.P7884338345689546172

`∑{p}[n+1, ceil(n/#)]+1+n-∑{p}[n+1, A001222(#)]`
-/

namespace A348203.P7884338345689546172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉ + 1 + (n : ℤ) - ∑ p ∈ Nat.primeFactors (f2 n), A001222 p

end

end A348203.P7884338345689546172

namespace A348203

/-- `∑{p}[n+1, ceil(n/#)]+1+n-∑{p}[n+1, A001222(#)]` -/
def P7884338345689546172.Spec : Prop :=
  ∀ n, P7884338345689546172.a n = A348203 (n + 1)

end A348203

/-! ## A348203.P11491513454819485507

`A306369(n+1)+A057860(n+1)`
-/

namespace A348203.P11491513454819485507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306369 (n + 1) + A057860 (n + 1)

end

end A348203.P11491513454819485507

namespace A348203

/-- `A306369(n+1)+A057860(n+1)` -/
def P11491513454819485507.Spec : Prop :=
  ∀ n, P11491513454819485507.a n = A348203 (n + 1)

theorem P11491513454819485507.correct : P11491513454819485507.Spec := by
  intro n
  simp only [A348203, Nat.add_sub_cancel, A348203.P11491513454819485507.a, A348203.P13239406140819049741.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A057860, A057860.P15781516878484293447.a, A069359, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A306369, A306369.P8843425213670804087.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348203

/-! ## A348203.P5713705692914942819

`A348219(n+1)+A049820(n+1)`
-/

namespace A348203.P5713705692914942819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348219 (n + 1) + A049820 (n + 1)

end

end A348203.P5713705692914942819

namespace A348203

/-- `A348219(n+1)+A049820(n+1)` -/
def P5713705692914942819.Spec : Prop :=
  ∀ n, P5713705692914942819.a n = A348203 (n + 1)

theorem P5713705692914942819.correct : P5713705692914942819.Spec := by
  intro n
  simp only [A348203, Nat.add_sub_cancel, A348203.P5713705692914942819.a, A348203.P13239406140819049741.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A049820, A049820.P9428372222244335888.a, A069359, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A348219, A348219.P15428353027639764716.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348203

/-! ## A348203.P2291718273370424265

`A378993(n+1)+A069359(n+1)`
-/

namespace A348203.P2291718273370424265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378993 (n + 1) + A069359 (n + 1)

end

end A348203.P2291718273370424265

namespace A348203

/-- `A378993(n+1)+A069359(n+1)` -/
def P2291718273370424265.Spec : Prop :=
  ∀ n, P2291718273370424265.a n = A348203 (n + 1)

end A348203

/-! ## A348203.P5121208263185619250

`A230593(n+1)-A001221(n+1)`
-/

namespace A348203.P5121208263185619250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230593 (n + 1) - A001221 (n + 1)

end

end A348203.P5121208263185619250

namespace A348203

/-- `A230593(n+1)-A001221(n+1)` -/
def P5121208263185619250.Spec : Prop :=
  ∀ n, P5121208263185619250.a n = A348203 (n + 1)

theorem P5121208263185619250.correct : P5121208263185619250.Spec := by
  intro n
  simp only [A348203, Nat.add_sub_cancel, A348203.P5121208263185619250.a, A348203.P13239406140819049741.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A069359, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A230593, A230593.P566366063280719726.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348203

/-! ## A348203.P5484726780408180914

`A155085(n+1)-A386438(n+1)`
-/

namespace A348203.P5484726780408180914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - A386438 (n + 1)

end

end A348203.P5484726780408180914

namespace A348203

/-- `A155085(n+1)-A386438(n+1)` -/
def P5484726780408180914.Spec : Prop :=
  ∀ n, P5484726780408180914.a n = A348203 (n + 1)

theorem P5484726780408180914.correct : P5484726780408180914.Spec := by
  intro n
  simp only [A348203, Nat.add_sub_cancel, A348203.P5484726780408180914.a, A348203.P13239406140819049741.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A069359, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A155085, A155085.P2440965829929837208.a, A386438, A386438.P6678444631215707728.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007503, A007503.P13484425310514315912.a, A348219, A348219.P15428353027639764716.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348203

/-!
# A348206: Product_{n>=1} (1 + a(n)*x^n/n!) = 1 + log(1 + x).

The programs for A348206, there is no canonical definition to state claims against.
-/

/-! ## A348206.P9229661358913406435

`∑[(A154503(n!)+∑{e}[n+1, #])*(-1)^n]`
-/

namespace A348206.P9229661358913406435
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A154503 (Nat.factorial n) + ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348206.P9229661358913406435

/-!
# A348210: Varma's Kosta numbers of semi-standard tableaux: array A(n>=2, k>=0) read by rising antidiagonals.

The programs for A348210, there is no canonical definition to state claims against.
-/

/-! ## A348210.P12086910119095705005

`A107030(n)-A093429(A069777(n))`
-/

namespace A348210.P12086910119095705005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107030 n - A093429 (A069777 n).toNat

end

end A348210.P12086910119095705005

/-! ## A348210.P18163642807146455454

`A092928(A369342(n))+A059045(n)`
-/

namespace A348210.P18163642807146455454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092928 (A369342 n).toNat + A059045 n

end

end A348210.P18163642807146455454

/-! ## A348210.P4278514634453166174

`A107030(n)-A124778(A004273(n))`
-/

namespace A348210.P4278514634453166174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107030 n - A124778 (A004273 n).toNat

end

end A348210.P4278514634453166174

/-! ## A348210.P15478199730412696842

`A068063(A230049(n+1))`
-/

namespace A348210.P15478199730412696842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A230049 (n + 1)).toNat

end

end A348210.P15478199730412696842

/-! ## A348210.P13857038976886779761

`A387704(A269948(n+1))`
-/

namespace A348210.P13857038976886779761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387704 (A269948 (n + 1)).toNat

end

end A348210.P13857038976886779761

/-!
# A348211: Triangle read by rows giving coefficients of polynomials arising as numerators of certain Hilbert series.

The programs for A348211, there is no canonical definition to state claims against.
-/

/-! ## A348211.P9139139401500995129

`or(A197648(n+1), A259896(A026162(n)))`
-/

namespace A348211.P9139139401500995129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A197648 (n + 1)) (A259896 (A026162 n).toNat)

end

end A348211.P9139139401500995129

/-! ## A348211.P6822438302812740009

`or(A140740(A195522(n+1)), A197648(n+1))`
-/

namespace A348211.P6822438302812740009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A140740 (A195522 (n + 1)).toNat) (A197648 (n + 1))

end

end A348211.P6822438302812740009

/-! ## A348211.P12824172273028327

`or(A129276(A195892(n+1)), A197648(n+1))`
-/

namespace A348211.P12824172273028327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A129276 (A195892 (n + 1)).toNat) (A197648 (n + 1))

end

end A348211.P12824172273028327

/-! ## A348211.P10250841998025914394

`or(A197648(n+1), A242887(A295582(n+3)))`
-/

namespace A348211.P10250841998025914394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A197648 (n + 1)) (A242887 (A295582 (n + 3)).toNat)

end

end A348211.P10250841998025914394

/-! ## A348211.P6193142068835551257

`A038506(A022174(n))`
-/

namespace A348211.P6193142068835551257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038506 (A022174 n).toNat

end

end A348211.P6193142068835551257

/-!
# A348212: Number of transversals in a cyclic diagonal Latin square of order 2n+1.

The programs for A348212, there is no canonical definition to state claims against.
-/

/-! ## A348212.P2753864862744763099

`(1-n%3)²*A006717(n)`
-/

namespace A348212.P2753864862744763099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((n % 3 : ℕ) : ℤ)) ^ 2 * A006717 n

end

end A348212.P2753864862744763099

/-! ## A348212.P6408385751734587433

`Δ[A004396(n)]*A006717(n)`
-/

namespace A348212.P6408385751734587433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006717 n

end

end A348212.P6408385751734587433

/-! ## A348212.P8165856630683750230

`char[A007494(n)]*A006717(n)`
-/

namespace A348212.P8165856630683750230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A006717 n

end

end A348212.P8165856630683750230

/-! ## A348212.P10297467332633645432

`A006190(n+2)%2*A006717(n)`
-/

namespace A348212.P10297467332633645432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006190 (n + 2)) 2 * A006717 n

end

end A348212.P10297467332633645432

/-! ## A348212.P9587146995188046191

`A006717(n)*A079978(A141214(n))`
-/

namespace A348212.P9587146995188046191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006717 n * A079978 (A141214 n).toNat

end

end A348212.P9587146995188046191

/-!
# A348213: a(n) is the number of iterations that n requires to reach a fixed point under the map x -> A348158(x).

The programs for A348213, there is no canonical definition to state claims against.
-/

/-! ## A348213.P2030042220596470853

`A134451(A348215(n+1))`
-/

namespace A348213.P2030042220596470853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A348215 (n + 1)).toNat

end

end A348213.P2030042220596470853

/-! ## A348213.P3350176723691672735

`ceil(A348215(n+1)/A348158(n+1))`
-/

namespace A348213.P3350176723691672735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348215 (n + 1) : ℚ) / (A348158 (n + 1) : ℚ)⌉

end

end A348213.P3350176723691672735

/-! ## A348213.P850918381705333379

`∑{d}[A348215(n+1), A000035(A000010(#))]`
-/

namespace A348213.P850918381705333379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 (A000010 d).toNat

end

end A348213.P850918381705333379

/-! ## A348213.P16772653372848138105

`ceil(A348215(n+1)/A233583(n+1))`
-/

namespace A348213.P16772653372848138105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348215 (n + 1) : ℚ) / (A233583 (n + 1) : ℚ)⌉

end

end A348213.P16772653372848138105

/-! ## A348213.P5466695872874780786

`A279061(∑{d}[A348215(n+1), A341684(#)])`
-/

namespace A348213.P5466695872874780786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (∑ d ∈ Nat.divisors (f1 n).natAbs, A341684 d).toNat

end

end A348213.P5466695872874780786

/-! ## A348213.P1148897110639339102

`ceil(A348215(n+1)/A064839(A138980(n)))`
-/

namespace A348213.P1148897110639339102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348215 (n + 1) : ℚ) / (A064839 (A138980 n).toNat : ℚ)⌉

end

end A348213.P1148897110639339102

/-! ## A348213.P11150559803056439840

`ceil(A348215(n+1)/(A319135(n+1)+n))`
-/

namespace A348213.P11150559803056439840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348215 (n + 1) : ℚ) / (A319135 (n + 1) + (n : ℤ) : ℚ)⌉

end

end A348213.P11150559803056439840

/-! ## A348213.P12660451685656453698

`floor((A348215(n+1)+n)/A085736(n+1))`
-/

namespace A348213.P12660451685656453698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A348215 (n + 1) + (n : ℤ) : ℚ) / (A085736 (n + 1) : ℚ)⌋

end

end A348213.P12660451685656453698

/-!
# A348215: a(n) is the sum of the iterated A348158 starting from n until a fixed point is reached.

The programs for A348215, there is no canonical definition to state claims against.
-/

/-! ## A348215.P3231524142497016524

`A168485(A348158(n+1)%(n+1))`
-/

namespace A348215.P3231524142497016524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168485 (Int.tmod (A348158 (n + 1)) (n + 1 : ℤ)).toNat

end

end A348215.P3231524142497016524

/-! ## A348215.P9420378344362608377

`A118759(A348158(n+1)*A348213(n+1))`
-/

namespace A348215.P9420378344362608377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A348158 (n + 1) * A348213 (n + 1)).toNat

end

end A348215.P9420378344362608377

/-! ## A348215.P6069604055312226268

`A168485(A348158(n+1)*A348213(n+1))`
-/

namespace A348215.P6069604055312226268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168485 (A348158 (n + 1) * A348213 (n + 1)).toNat

end

end A348215.P6069604055312226268

/-! ## A348215.P1356510223582932070

`A118759(lcm(A348158(n+1), A348213(n+1)))`
-/

namespace A348215.P1356510223582932070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.lcm (A348158 (n + 1)) (A348213 (n + 1)))

end

end A348215.P1356510223582932070

/-! ## A348215.P13970693269750499067

`A348213(n+1)^A003106(n)*A348158(n+1)`
-/

namespace A348215.P13970693269750499067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348213 (n + 1) : ℚ) ^ (A003106 n : ℤ) * (A348158 (n + 1) : ℚ)

end

end A348215.P13970693269750499067

/-! ## A348215.P16374463210541592401

`A348213(n+1)^A016898(n)*A348158(n+1)`
-/

namespace A348215.P16374463210541592401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348213 (n + 1) : ℚ) ^ (A016898 n : ℤ) * (A348158 (n + 1) : ℚ)

end

end A348215.P16374463210541592401

/-! ## A348215.P17564048325255037319

`A348213(n+1)^A102376(n)*A348158(n+1)`
-/

namespace A348215.P17564048325255037319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348213 (n + 1) : ℚ) ^ (A102376 n : ℤ) * (A348158 (n + 1) : ℚ)

end

end A348215.P17564048325255037319

/-! ## A348215.P2098546219585761920

`A348213(n+1)^A001157(n+1)*A348158(n+1)`
-/

namespace A348215.P2098546219585761920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348213 (n + 1) : ℚ) ^ (A001157 (n + 1) : ℤ) * (A348158 (n + 1) : ℚ)

end

end A348215.P2098546219585761920

/-! ## A348215.P14034452291208494219

`Δ[floor(n/2)]^A267648(n)*A348158(n+1)`
-/

namespace A348215.P14034452291208494219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A267648 n : ℤ) * (A348158 (n + 1) : ℚ)

end

end A348215.P14034452291208494219

/-!
# A348217: a(1) = 2; for n > 1, let d be the largest divisor of n appearing in all previous terms and k the largest value such that a(k) = d, then a(n) = n - k.

The programs for A348217, there is no canonical definition to state claims against.
-/

/-! ## A348217.P17171682766488540543

`A330370(A096940(n)+A005455(n))`
-/

namespace A348217.P17171682766488540543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330370 (A096940 n + A005455 n).toNat

end

end A348217.P17171682766488540543

/-!
# A348218: Variation on the Inventory Sequence A342585: record the number of previous terms which are divisible by the iterating number, starting at 1, until 0 is recorded, then restart the iterating number from 1. See the Comments.

The programs for A348218, there is no canonical definition to state claims against.
-/

/-! ## A348218.P1080601161957820904

`gcd(A122792(n), A283826(A068045(n)))`
-/

namespace A348218.P1080601161957820904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122792 n) (A283826 (A068045 n).toNat)

end

end A348218.P1080601161957820904

/-! ## A348218.P10213874460812158207

`gcd(A139136(n), A185245(A022856(n+1)))`
-/

namespace A348218.P10213874460812158207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139136 n) (A185245 (A022856 (n + 1)).toNat)

end

end A348218.P10213874460812158207

/-!
# A348219: a(n) = tau(n) - omega(n) + n * Sum_{p|n, p prime} 1/p.

The programs for A348219, the canonical program `A348219.P15428353027639764716` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348219 has offset 1).

The definition of A348219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348219.P10250971204472423344

`A007503(n+1)-A386438(n+1)`
-/

namespace A348219.P10250971204472423344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A386438 (n + 1)

end

end A348219.P10250971204472423344

namespace A348219

/-- `A007503(n+1)-A386438(n+1)` -/
def P10250971204472423344.Spec : Prop :=
  ∀ n, P10250971204472423344.a n = A348219 (n + 1)

theorem P10250971204472423344.correct : P10250971204472423344.Spec := by
  intro n
  simp only [A348219, Nat.add_sub_cancel, A348219.P10250971204472423344.a, A348219.P15428353027639764716.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007503, A007503.P13484425310514315912.a, A069359, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A386438, A386438.P6678444631215707728.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348219

/-! ## A348219.P15428353027639764716

`A000005(n+1)-A001221(n+1)+A069359(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A348219

/-- `A000005(n+1)-A001221(n+1)+A069359(n+1)` -/
def P15428353027639764716.Spec : Prop :=
  ∀ n, P15428353027639764716.a n = A348219 (n + 1)

theorem P15428353027639764716.correct : P15428353027639764716.Spec := by
  intro n
  simp only [A348219, Nat.add_sub_cancel]

end A348219

/-! ## A348219.P15161949405271965874

`∑{d}[n+1, A087625(#)+1]`
-/

namespace A348219.P15161949405271965874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A087625 d + 1)

end

end A348219.P15161949405271965874

namespace A348219

/-- `∑{d}[n+1, A087625(#)+1]` -/
def P15161949405271965874.Spec : Prop :=
  ∀ n, P15161949405271965874.a n = A348219 (n + 1)

end A348219

/-! ## A348219.P17308445218750580641

`∑{p}[n+1, floor(n/#)]+A000005(n+1)`
-/

namespace A348219.P17308445218750580641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊(n : ℚ) / (p : ℚ)⌋ + A000005 (n + 1)

end

end A348219.P17308445218750580641

namespace A348219

/-- `∑{p}[n+1, floor(n/#)]+A000005(n+1)` -/
def P17308445218750580641.Spec : Prop :=
  ∀ n, P17308445218750580641.a n = A348219 (n + 1)

end A348219

/-! ## A348219.P5610252648092317228

`A069359(n+1)+A033273(n+1)`
-/

namespace A348219.P5610252648092317228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1) + A033273 (n + 1)

end

end A348219.P5610252648092317228

namespace A348219

/-- `A069359(n+1)+A033273(n+1)` -/
def P5610252648092317228.Spec : Prop :=
  ∀ n, P5610252648092317228.a n = A348219 (n + 1)

theorem P5610252648092317228.correct : P5610252648092317228.Spec := by
  intro n
  simp only [A348219, Nat.add_sub_cancel, A348219.P5610252648092317228.a, A348219.P15428353027639764716.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A033273, A033273.P18420659424697249895.a, A069359, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348219

/-! ## A348219.P5051486391872314274

`A348203(n+1)-A049820(n+1)`
-/

namespace A348219.P5051486391872314274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348203 (n + 1) - A049820 (n + 1)

end

end A348219.P5051486391872314274

namespace A348219

/-- `A348203(n+1)-A049820(n+1)` -/
def P5051486391872314274.Spec : Prop :=
  ∀ n, P5051486391872314274.a n = A348219 (n + 1)

theorem P5051486391872314274.correct : P5051486391872314274.Spec := by
  intro n
  simp only [A348219, Nat.add_sub_cancel, A348219.P5051486391872314274.a, A348219.P15428353027639764716.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A049820, A049820.P9428372222244335888.a, A069359, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A348203, A348203.P13239406140819049741.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348219

/-! ## A348219.P4919734871099122990

`A349217(n+1)-A065968(n+1)`
-/

namespace A348219.P4919734871099122990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349217 (n + 1) - A065968 (n + 1)

end

end A348219.P4919734871099122990

namespace A348219

/-- `A349217(n+1)-A065968(n+1)` -/
def P4919734871099122990.Spec : Prop :=
  ∀ n, P4919734871099122990.a n = A348219 (n + 1)

theorem P4919734871099122990.correct : P4919734871099122990.Spec := by
  intro n
  simp only [A348219, Nat.add_sub_cancel, A348219.P4919734871099122990.a, A348219.P15428353027639764716.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A065968, A065968.P599037349712727624.a, A069359, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A349217, A349217.P8454150560353347447.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348219

/-! ## A348219.P7877820104652129344

`A055212(n+1)+A069359(n+1)+1`
-/

namespace A348219.P7877820104652129344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (n + 1) + (A069359 (n + 1) + 1)

end

end A348219.P7877820104652129344

namespace A348219

/-- `A055212(n+1)+A069359(n+1)+1` -/
def P7877820104652129344.Spec : Prop :=
  ∀ n, P7877820104652129344.a n = A348219 (n + 1)

theorem P7877820104652129344.correct : P7877820104652129344.Spec := by
  intro n
  simp only [A348219, Nat.add_sub_cancel, A348219.P7877820104652129344.a, A348219.P15428353027639764716.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A055212, A055212.P14412881054625885538.a, A069359, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033273, A033273.P18420659424697249895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348219

/-! ## A348219.P14118178947041566743

`A000005(n+1)+A348203(n+1)-(n+1)`
-/

namespace A348219.P14118178947041566743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A348203 (n + 1) - (n + 1 : ℤ))

end

end A348219.P14118178947041566743

namespace A348219

/-- `A000005(n+1)+A348203(n+1)-(n+1)` -/
def P14118178947041566743.Spec : Prop :=
  ∀ n, P14118178947041566743.a n = A348219 (n + 1)

theorem P14118178947041566743.correct : P14118178947041566743.Spec := by
  intro n
  simp only [A348219, Nat.add_sub_cancel, A348219.P14118178947041566743.a, A348219.P15428353027639764716.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A069359, A069359.P17776763206282082862.f1, A069359.P17776763206282082862.a, A348203, A348203.P13239406140819049741.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348219

/-! ## A348219.P3892892710632622023

`A257644(n+1)-(A386438(n+1)+A257644(n))`
-/

namespace A348219.P3892892710632622023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257644 (n + 1) - (A386438 (n + 1) + A257644 n)

end

end A348219.P3892892710632622023

namespace A348219

/-- `A257644(n+1)-(A386438(n+1)+A257644(n))` -/
def P3892892710632622023.Spec : Prop :=
  ∀ n, P3892892710632622023.a n = A348219 (n + 1)

end A348219

/-!
# A348221: Denominators of coefficients for numerical integration of certain differential systems (Array A(i,k) read by ascending antidiagonals).

The programs for A348221, there is no canonical definition to state claims against.
-/

/-! ## A348221.P14777931399645286211

`A331778(A159936(n+1)%A331758(2*n+1))`
-/

namespace A348221.P14777931399645286211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331778 (Int.tmod (A159936 (n + 1)) (A331758 (2 * n + 1))).toNat

end

end A348221.P14777931399645286211

/-!
# A348222: Number of uniquely-3-colorable graphs on n vertices.

The programs for A348222, there is no canonical definition to state claims against.
-/

/-! ## A348222.P4427134840573387899

`A369227(A167614(n+1))`
-/

namespace A348222.P4427134840573387899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369227 (A167614 (n + 1)).toNat

end

end A348222.P4427134840573387899

/-! ## A348222.P3211659765657248910

`A369227(A000124(n+2)+2)`
-/

namespace A348222.P3211659765657248910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369227 (A000124 (n + 2) + 2).toNat

end

end A348222.P3211659765657248910

/-!
# A348223: a(n) = Sum_{d|n} (-1)^(sigma(d) - 1).

The programs for A348223, the canonical program `A348223.P9198800343565112846` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348223 has offset 1).

The definition of A348223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348223.P9198800343565112846

`∑{d}[n+1, (-1)^(A000203(#)-1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A348223

/-- `∑{d}[n+1, (-1)^(A000203(#)-1)]` -/
def P9198800343565112846.Spec : Prop :=
  ∀ n, P9198800343565112846.a n = (A348223 (n + 1) : ℚ)

end A348223

/-! ## A348223.P17008055884117857261

`∑{d}[n+1, 1-2%A007913(#)]`
-/

namespace A348223.P17008055884117857261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - Int.tmod 2 (A007913 d))

end

end A348223.P17008055884117857261

namespace A348223

/-- `∑{d}[n+1, 1-2%A007913(#)]` -/
def P17008055884117857261.Spec : Prop :=
  ∀ n, P17008055884117857261.a n = A348223 (n + 1)

end A348223

/-! ## A348223.P7000006909435948484

`∑{d}[n+1, -(-1)^A000203(#)]`
-/

namespace A348223.P7000006909435948484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-((-1 : ℚ) ^ (A000203 d : ℤ)))

end

end A348223.P7000006909435948484

namespace A348223

/-- `∑{d}[n+1, -(-1)^A000203(#)]` -/
def P7000006909435948484.Spec : Prop :=
  ∀ n, P7000006909435948484.a n = (A348223 (n + 1) : ℚ)

end A348223

/-! ## A348223.P17257943057658421622

`A065704(n+1)-A345221(n+1)`
-/

namespace A348223.P17257943057658421622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065704 (n + 1) - A345221 (n + 1)

end

end A348223.P17257943057658421622

namespace A348223

/-- `A065704(n+1)-A345221(n+1)` -/
def P17257943057658421622.Spec : Prop :=
  ∀ n, P17257943057658421622.a n = A348223 (n + 1)

end A348223

/-! ## A348223.P2982701334751517395

`2*A065704(n+1)-A000005(n+1)`
-/

namespace A348223.P2982701334751517395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065704 (n + 1) - A000005 (n + 1)

end

end A348223.P2982701334751517395

namespace A348223

/-- `2*A065704(n+1)-A000005(n+1)` -/
def P2982701334751517395.Spec : Prop :=
  ∀ n, P2982701334751517395.a n = A348223 (n + 1)

end A348223

/-! ## A348223.P8042089881685503743

`A000005(n+1)-2*A345221(n+1)`
-/

namespace A348223.P8042089881685503743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - 2 * A345221 (n + 1)

end

end A348223.P8042089881685503743

namespace A348223

/-- `A000005(n+1)-2*A345221(n+1)` -/
def P8042089881685503743.Spec : Prop :=
  ∀ n, P8042089881685503743.a n = A348223 (n + 1)

end A348223

/-! ## A348223.P9918002156725796372

`∑{d}[n+1, and(2, A108494(#))-1]`
-/

namespace A348223.P9918002156725796372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Int.land 2 (A108494 d) - 1)

end

end A348223.P9918002156725796372

namespace A348223

/-- `∑{d}[n+1, and(2, A108494(#))-1]` -/
def P9918002156725796372.Spec : Prop :=
  ∀ n, P9918002156725796372.a n = A348223 (n + 1)

end A348223

/-!
# A348225: a(n) = Sum_{d|n} binomial(n,d)^d.

The programs for A348225, there is no canonical definition to state claims against.
-/

/-! ## A348225.P18142935166060992197

`∑{d}[n+1, C(n+1, #)^#]`
-/

namespace A348225.P18142935166060992197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (n + 1) d ^ d

end

end A348225.P18142935166060992197

/-!
# A348228: Partial sums of A348227.

The programs for A348228, there is no canonical definition to state claims against.
-/

/-! ## A348228.P14128292683265515178

`∑[A348227(n)]`
-/

namespace A348228.P14128292683265515178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348228.P14128292683265515178

/-! ## A348228.P7685846240797252849

`A348227(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A348228.P7685846240797252849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A348227 n + a (A023443 n).toNat

end

end A348228.P7685846240797252849

/-! ## A348228.P16545143126128996270

`A348227(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A348228.P16545143126128996270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A348227 n + a (A004273 n - (n : ℤ)).toNat

end

end A348228.P16545143126128996270

/-! ## A348228.P1189787383163519804

`a(n-1)+A348227(n)%A160750(n)` with `a(0)=1`
-/

namespace A348228.P1189787383163519804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A348227 n) (A160750 n)

end

end A348228.P1189787383163519804

/-! ## A348228.P9001635520194102332

`A348227(n)+a(n-1)%A324043(n+1)` with `a(0)=1`
-/

namespace A348228.P9001635520194102332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A348227 n + Int.tmod (a (n - 1)) (A324043 (n + 1))

end

end A348228.P9001635520194102332

/-!
# A348229: Coordination sequence for Wilkinson's 123-circle packing with respect to a circle of radius 2.

The programs for A348229, the canonical program `A348229.P9507779732379867744` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348229 has offset 0).

The definition of A348229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348229.P9507779732379867744

`A266073(n)+A004275(A336705(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A348229

/-- `A266073(n)+A004275(A336705(n))` -/
def P9507779732379867744.Spec : Prop :=
  ∀ n, P9507779732379867744.a n = A348229 n

theorem P9507779732379867744.correct : P9507779732379867744.Spec := by
  intro n
  simp only [A348229]

end A348229

/-! ## A348229.P16678506100008870684

`A058992(A336705(n)+A141310(n))`
-/

namespace A348229.P16678506100008870684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (A336705 n + A141310 n).toNat

end

end A348229.P16678506100008870684

namespace A348229

/-- `A058992(A336705(n)+A141310(n))` -/
def P16678506100008870684.Spec : Prop :=
  ∀ n, P16678506100008870684.a n = A348229 n

end A348229

/-!
# A348230: Partial sums of A348229.

The programs for A348230, the canonical program `A348230.P11435748801159920124` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348230 has offset 0).

The definition of A348230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348230.P11435748801159920124

`∑[A348229(n)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A348230

/-- `∑[A348229(n)]` -/
def P11435748801159920124.Spec : Prop :=
  ∀ n, P11435748801159920124.a n = A348230 n

theorem P11435748801159920124.correct : P11435748801159920124.Spec := by
  intro n
  simp only [A348230]

end A348230

/-! ## A348230.P6345250639469688575

`A348229(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A348230.P6345250639469688575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A348229 n + a (A023443 n).toNat

end

end A348230.P6345250639469688575

namespace A348230

/-- `A348229(n)+a(A023443(n))` -/
def P6345250639469688575.Spec : Prop :=
  ∀ n, P6345250639469688575.a n = A348230 n

end A348230

/-! ## A348230.P8725942889949855230

`∑[A266073(n)+A004275(A336705(n))]`
-/

namespace A348230.P8725942889949855230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266073 n + A004275 (A336705 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348230.P8725942889949855230

namespace A348230

/-- `∑[A266073(n)+A004275(A336705(n))]` -/
def P8725942889949855230.Spec : Prop :=
  ∀ n, P8725942889949855230.a n = A348230 n

end A348230

/-! ## A348230.P14233934171587431206

`∑[A058992(A336705(n)+A141310(n))]`
-/

namespace A348230.P14233934171587431206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (A336705 n + A141310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348230.P14233934171587431206

namespace A348230

/-- `∑[A058992(A336705(n)+A141310(n))]` -/
def P14233934171587431206.Spec : Prop :=
  ∀ n, P14233934171587431206.a n = A348230 n

end A348230

/-! ## A348230.P14663459455148963367

`A267458(A247375(n))+A004275(A046092(n))`
-/

namespace A348230.P14663459455148963367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (A247375 n).toNat + A004275 (A046092 n).toNat

end

end A348230.P14663459455148963367

namespace A348230

/-- `A267458(A247375(n))+A004275(A046092(n))` -/
def P14663459455148963367.Spec : Prop :=
  ∀ n, P14663459455148963367.a n = A348230 n

end A348230

/-!
# A348231: Coordination sequence for Wilkinson's 123-circle packing with respect to a circle of radius 3.

The programs for A348231, the canonical program `A348231.P3163075773884361873` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348231 has offset 0).

The definition of A348231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348231.P4558403381923622932

`2*n^(n%2)+ceil(acot(n))+8*n-3`
-/

namespace A348231.P4558403381923622932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ (n % 2) : ℤ) + (⌈SequenceMachineLib.acot (n : ℝ)⌉ + ((8 * n : ℤ) - 3))

end

end A348231.P4558403381923622932

namespace A348231

/-- `2*n^(n%2)+ceil(acot(n))+8*n-3` -/
def P4558403381923622932.Spec : Prop :=
  ∀ n, P4558403381923622932.a n = A348231 n

end A348231

/-! ## A348231.P14645218728259672078

`comp[or(2, n)]^(n%2)+A022144(n)-1`
-/

namespace A348231.P14645218728259672078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ (n % 2) : ℤ) + (A022144 n - 1)

end

end A348231.P14645218728259672078

namespace A348231

/-- `comp[or(2, n)]^(n%2)+A022144(n)-1` -/
def P14645218728259672078.Spec : Prop :=
  ∀ n, P14645218728259672078.a n = A348231 n

end A348231

/-! ## A348231.P3163075773884361873

`A008458(n)+lcm(2, A042948(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A348231

/-- `A008458(n)+lcm(2, A042948(n))` -/
def P3163075773884361873.Spec : Prop :=
  ∀ n, P3163075773884361873.a n = A348231 n

theorem P3163075773884361873.correct : P3163075773884361873.Spec := by
  intro n
  simp only [A348231]

end A348231

/-! ## A348231.P43840574433457477

`A047599(n^(n%2))+A022144(n)`
-/

namespace A348231.P43840574433457477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047599 (n ^ (n % 2)) + A022144 n

end

end A348231.P43840574433457477

namespace A348231

/-- `A047599(n^(n%2))+A022144(n)` -/
def P43840574433457477.Spec : Prop :=
  ∀ n, P43840574433457477.a n = A348231 n

end A348231

/-! ## A348231.P11854613635155995767

`A008574(Δ[C(floor(n/2), 2)]+2*n)`
-/

namespace A348231.P11854613635155995767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℚ) / 2⌋.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n : ℤ)).toNat

end

end A348231.P11854613635155995767

namespace A348231

/-- `A008574(Δ[C(floor(n/2), 2)]+2*n)` -/
def P11854613635155995767.Spec : Prop :=
  ∀ n, P11854613635155995767.a n = A348231 n

end A348231

/-! ## A348231.P15028539808422049409

`A008574(A032766(n)+gcd(n, ∑[n]))`
-/

namespace A348231.P15028539808422049409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A032766 n + (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)).toNat

end

end A348231.P15028539808422049409

namespace A348231

/-- `A008574(A032766(n)+gcd(n, ∑[n]))` -/
def P15028539808422049409.Spec : Prop :=
  ∀ n, P15028539808422049409.a n = A348231 n

end A348231

/-! ## A348231.P3710383230248115641

`A008574(A063914(n+1)-1+n)`
-/

namespace A348231.P3710383230248115641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A063914 (n + 1) - 1 + (n : ℤ)).toNat

end

end A348231.P3710383230248115641

namespace A348231

/-- `A008574(A063914(n+1)-1+n)` -/
def P3710383230248115641.Spec : Prop :=
  ∀ n, P3710383230248115641.a n = A348231 n

end A348231

/-! ## A348231.P14299858096158277515

`A004275(n^and(1, n)+4*n)`
-/

namespace A348231.P14299858096158277515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n ^ Nat.land 1 n + 4 * n)

end

end A348231.P14299858096158277515

namespace A348231

/-- `A004275(n^and(1, n)+4*n)` -/
def P14299858096158277515.Spec : Prop :=
  ∀ n, P14299858096158277515.a n = A348231 n

end A348231

/-! ## A348231.P6458137323736204431

`A004275(A093178(n)+4*n)`
-/

namespace A348231.P6458137323736204431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A093178 n + (4 * n : ℤ)).toNat

end

end A348231.P6458137323736204431

namespace A348231

/-- `A004275(A093178(n)+4*n)` -/
def P6458137323736204431.Spec : Prop :=
  ∀ n, P6458137323736204431.a n = A348231 n

end A348231

/-! ## A348231.P7322350145432098823

`A004275(A133265(n)-(1-4*n))`
-/

namespace A348231.P7322350145432098823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A133265 n - (1 - (4 * n : ℤ))).toNat

end

end A348231.P7322350145432098823

namespace A348231

/-- `A004275(A133265(n)-(1-4*n))` -/
def P7322350145432098823.Spec : Prop :=
  ∀ n, P7322350145432098823.a n = A348231 n

end A348231

/-!
# A348232: Partial sums of A348231.

The programs for A348232, the canonical program `A348232.P5554657942132143415` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348232 has offset 0).

The definition of A348232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348232.P5554657942132143415

`∑[10*n]+1-∑[2*gcd(n, n%2)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A348232

/-- `∑[10*n]+1-∑[2*gcd(n, n%2)]` -/
def P5554657942132143415.Spec : Prop :=
  ∀ n, P5554657942132143415.a n = A348232 n

theorem P5554657942132143415.correct : P5554657942132143415.Spec := by
  intro n
  simp only [A348232]

end A348232

/-! ## A348232.P14087973470134765776

`Δ[n*floor(3/2*n²)-floor(n²/2)]`
-/

namespace A348232.P14087973470134765776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(3 : ℚ) / 2 * (n ^ 2 : ℚ)⌋ - ⌊(n ^ 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348232.P14087973470134765776

namespace A348232

/-- `Δ[n*floor(3/2*n²)-floor(n²/2)]` -/
def P14087973470134765776.Spec : Prop :=
  ∀ n, P14087973470134765776.a n = A348232 n

end A348232

/-! ## A348232.P14371642649650004337

`∑[(n-1)*2*and(1, n)]+(2*n+1)²`
-/

namespace A348232.P14371642649650004337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (2 * Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((2 * n + 1) ^ 2 : ℤ)

end

end A348232.P14371642649650004337

namespace A348232

/-- `∑[(n-1)*2*and(1, n)]+(2*n+1)²` -/
def P14371642649650004337.Spec : Prop :=
  ∀ n, P14371642649650004337.a n = A348232 n

end A348232

/-! ## A348232.P4605533044284040729

`∑[A348231(n)]`
-/

namespace A348232.P4605533044284040729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348232.P4605533044284040729

namespace A348232

/-- `∑[A348231(n)]` -/
def P4605533044284040729.Spec : Prop :=
  ∀ n, P4605533044284040729.a n = A348232 n

end A348232

/-! ## A348232.P7433737631978279077

`A213037(n)+A033951(n)`
-/

namespace A348232.P7433737631978279077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 n + A033951 n

end

end A348232.P7433737631978279077

namespace A348232

/-- `A213037(n)+A033951(n)` -/
def P7433737631978279077.Spec : Prop :=
  ∀ n, P7433737631978279077.a n = A348232 n

end A348232

/-! ## A348232.P9787982001020033610

`A266723(n)+A002943(n)`
-/

namespace A348232.P9787982001020033610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266723 n + A002943 n

end

end A348232.P9787982001020033610

namespace A348232

/-- `A266723(n)+A002943(n)` -/
def P9787982001020033610.Spec : Prop :=
  ∀ n, P9787982001020033610.a n = A348232 n

end A348232

/-! ## A348232.P2393861418860112907

`A266981(n)+A062725(n)`
-/

namespace A348232.P2393861418860112907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n + A062725 n

end

end A348232.P2393861418860112907

namespace A348232

/-- `A266981(n)+A062725(n)` -/
def P2393861418860112907.Spec : Prop :=
  ∀ n, P2393861418860112907.a n = A348232 n

end A348232

/-! ## A348232.P17335152725429270429

`A317298(n)+A273365(n)`
-/

namespace A348232.P17335152725429270429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317298 n + A273365 n

end

end A348232.P17335152725429270429

namespace A348232

/-- `A317298(n)+A273365(n)` -/
def P17335152725429270429.Spec : Prop :=
  ∀ n, P17335152725429270429.a n = A348232 n

end A348232

/-! ## A348232.P6747025708767947657

`A085473(n)-A354594(n)`
-/

namespace A348232.P6747025708767947657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085473 n - A354594 n

end

end A348232.P6747025708767947657

namespace A348232

/-- `A085473(n)-A354594(n)` -/
def P6747025708767947657.Spec : Prop :=
  ∀ n, P6747025708767947657.a n = A348232 n

end A348232

/-! ## A348232.P18396425468785321899

`A062786(n+1)-A266074(n)`
-/

namespace A348232.P18396425468785321899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (n + 1) - A266074 n

end

end A348232.P18396425468785321899

namespace A348232

/-- `A062786(n+1)-A266074(n)` -/
def P18396425468785321899.Spec : Prop :=
  ∀ n, P18396425468785321899.a n = A348232 n

end A348232

/-! ## A348232.P12160790400922864223

`A079273(n+1)-A266725(n)`
-/

namespace A348232.P12160790400922864223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079273 (n + 1) - A266725 n

end

end A348232.P12160790400922864223

namespace A348232

/-- `A079273(n+1)-A266725(n)` -/
def P12160790400922864223.Spec : Prop :=
  ∀ n, P12160790400922864223.a n = A348232 n

end A348232

/-! ## A348232.P60301358791609053

`∑[abs(1-9*n)]-Δ[gcd(xor(1, n²), ∑[n])]`
-/

namespace A348232.P60301358791609053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (9 * n : ℤ)|

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A348232.P60301358791609053

namespace A348232

/-- `∑[abs(1-9*n)]-Δ[gcd(xor(1, n²), ∑[n])]` -/
def P60301358791609053.Spec : Prop :=
  ∀ n, P60301358791609053.a n = A348232 n

end A348232

/-! ## A348232.P5736940733747781979

`A049450(n+1)+A062717(n+1)-A007310(n+1)`
-/

namespace A348232.P5736940733747781979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 (n + 1) + (A062717 (n + 1) - A007310 (n + 1))

end

end A348232.P5736940733747781979

namespace A348232

/-- `A049450(n+1)+A062717(n+1)-A007310(n+1)` -/
def P5736940733747781979.Spec : Prop :=
  ∀ n, P5736940733747781979.a n = A348232 n

end A348232

/-! ## A348232.P14963335957830392505

`A213037(n)+A014848(2*n+1)`
-/

namespace A348232.P14963335957830392505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 n + A014848 (2 * n + 1)

end

end A348232.P14963335957830392505

namespace A348232

/-- `A213037(n)+A014848(2*n+1)` -/
def P14963335957830392505.Spec : Prop :=
  ∀ n, P14963335957830392505.a n = A348232 n

end A348232

/-!
# A348236: Coordination sequence for the cpq net with respect to a node where a square, hexagon, and octagon meet.

The programs for A348236, the canonical program `A348236.P6960757931950138701` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348236 has offset 0).

The definition of A348236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348236.P5363728857721792376

`A265227(n+1)+abs((-(n%2))^∑[n]-n)`
-/

namespace A348236.P5363728857721792376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + |(-((n % 2 : ℕ) : ℤ)) ^ (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)|

end

end A348236.P5363728857721792376

namespace A348236

/-- `A265227(n+1)+abs((-(n%2))^∑[n]-n)` -/
def P5363728857721792376.Spec : Prop :=
  ∀ n, P5363728857721792376.a n = A348236 n

end A348236

/-! ## A348236.P6960757931950138701

`A265227(n+1)+∑[A143432(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A348236

/-- `A265227(n+1)+∑[A143432(n)]` -/
def P6960757931950138701.Spec : Prop :=
  ∀ n, P6960757931950138701.a n = A348236 n

theorem P6960757931950138701.correct : P6960757931950138701.Spec := by
  intro n
  simp only [A348236]

end A348236

/-! ## A348236.P14627782252747970244

`A265227(n+1)+A117569(n)+n`
-/

namespace A348236.P14627782252747970244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + (A117569 n + (n : ℤ))

end

end A348236.P14627782252747970244

namespace A348236

/-- `A265227(n+1)+A117569(n)+n` -/
def P14627782252747970244.Spec : Prop :=
  ∀ n, P14627782252747970244.a n = A348236 n

end A348236

/-! ## A348236.P1058389395566077472

`abs(7*n-A348237(n))-A047299(n+1)`
-/

namespace A348236.P1058389395566077472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 * n : ℤ) - A348237 n| - A047299 (n + 1)

end

end A348236.P1058389395566077472

namespace A348236

/-- `abs(7*n-A348237(n))-A047299(n+1)` -/
def P1058389395566077472.Spec : Prop :=
  ∀ n, P1058389395566077472.a n = A348236 n

end A348236

/-! ## A348236.P16520238993833181537

`A004277(A004525(n))+∑[gcd(6, n%5)%5]-1`
-/

namespace A348236.P16520238993833181537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 (n % 5) % 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A004525 n).toNat + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A348236.P16520238993833181537

namespace A348236

/-- `A004277(A004525(n))+∑[gcd(6, n%5)%5]-1` -/
def P16520238993833181537.Spec : Prop :=
  ∀ n, P16520238993833181537.a n = A348236 n

end A348236

/-! ## A348236.P11045899326977587872

`A265227(n+1)+A004277(A004525(n))`
-/

namespace A348236.P11045899326977587872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + A004277 (A004525 n).toNat

end

end A348236.P11045899326977587872

namespace A348236

/-- `A265227(n+1)+A004277(A004525(n))` -/
def P11045899326977587872.Spec : Prop :=
  ∀ n, P11045899326977587872.a n = A348236 n

end A348236

/-! ## A348236.P1586844058495798782

`A265227(n+1)+A004277(Δ[A054925(n)])`
-/

namespace A348236.P1586844058495798782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + A004277 (f1 (n + 1) - f1 n).toNat

end

end A348236.P1586844058495798782

namespace A348236

/-- `A265227(n+1)+A004277(Δ[A054925(n)])` -/
def P1586844058495798782.Spec : Prop :=
  ∀ n, P1586844058495798782.a n = A348236 n

end A348236

/-! ## A348236.P16989996580847790737

`A311570(n)-A047299(n+1)`
-/

namespace A348236.P16989996580847790737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311570 n - A047299 (n + 1)

end

end A348236.P16989996580847790737

namespace A348236

/-- `A311570(n)-A047299(n+1)` -/
def P16989996580847790737.Spec : Prop :=
  ∀ n, P16989996580847790737.a n = A348236 n

end A348236

/-! ## A348236.P8916983508996067608

`A313232(n)-A047538(n+1)`
-/

namespace A348236.P8916983508996067608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313232 n - A047538 (n + 1)

end

end A348236.P8916983508996067608

namespace A348236

/-- `A313232(n)-A047538(n+1)` -/
def P8916983508996067608.Spec : Prop :=
  ∀ n, P8916983508996067608.a n = A348236 n

end A348236

/-! ## A348236.P1550647169457178219

`A265227(n+1)+A000267(A004525(n)²)`
-/

namespace A348236.P1550647169457178219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + A000267 (A004525 n ^ 2).toNat

end

end A348236.P1550647169457178219

namespace A348236

/-- `A265227(n+1)+A000267(A004525(n)²)` -/
def P1550647169457178219.Spec : Prop :=
  ∀ n, P1550647169457178219.a n = A348236 n

end A348236

/-!
# A348237: Coordination sequence for the cpq net with respect to a node where a hexagon and two octagons meet.

The programs for A348237, the canonical program `A348237.P8907809592444207224` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348237 has offset 0).

The definition of A348237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348237.P2402510331231533371

`A301730(n)-char[2]-A047599(n+1)`
-/

namespace A348237.P2402510331231533371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301730 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A047599 (n + 1)

end

end A348237.P2402510331231533371

namespace A348237

/-- `A301730(n)-char[2]-A047599(n+1)` -/
def P2402510331231533371.Spec : Prop :=
  ∀ n, P2402510331231533371.a n = A348237 n

end A348237

/-! ## A348237.P8907809592444207224

`A301730(n)-(A185012(n)+A047599(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A348237

/-- `A301730(n)-(A185012(n)+A047599(n+1))` -/
def P8907809592444207224.Spec : Prop :=
  ∀ n, P8907809592444207224.a n = A348237 n

theorem P8907809592444207224.correct : P8907809592444207224.Spec := by
  intro n
  simp only [A348237]

end A348237

/-! ## A348237.P9993949246061715774

`A244895(n)+A250120(n)-A047599(n+1)`
-/

namespace A348237.P9993949246061715774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 n + (A250120 n - A047599 (n + 1))

end

end A348237.P9993949246061715774

namespace A348237

/-- `A244895(n)+A250120(n)-A047599(n+1)` -/
def P9993949246061715774.Spec : Prop :=
  ∀ n, P9993949246061715774.a n = A348237 n

end A348237

/-! ## A348237.P5736137031783618064

`A022144(n)-2*A047486(n+1)-A047599(n+1)`
-/

namespace A348237.P5736137031783618064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - 2 * A047486 (n + 1) - A047599 (n + 1)

end

end A348237.P5736137031783618064

namespace A348237

/-- `A022144(n)-2*A047486(n+1)-A047599(n+1)` -/
def P5736137031783618064.Spec : Prop :=
  ∀ n, P5736137031783618064.a n = A348237 n

end A348237

/-! ## A348237.P14977637498594027197

`A047538(n+1)+A072154(n)-A047486(n+1)`
-/

namespace A348237.P14977637498594027197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047538 (n + 1) + (A072154 n - A047486 (n + 1))

end

end A348237.P14977637498594027197

namespace A348237

/-- `A047538(n+1)+A072154(n)-A047486(n+1)` -/
def P14977637498594027197.Spec : Prop :=
  ∀ n, P14977637498594027197.a n = A348237 n

end A348237

/-! ## A348237.P14161113526653601542

`(2-A000007(n))*A072154(n)-A047599(n+1)`
-/

namespace A348237.P14161113526653601542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A072154 n - A047599 (n + 1)

end

end A348237.P14161113526653601542

namespace A348237

/-- `(2-A000007(n))*A072154(n)-A047599(n+1)` -/
def P14161113526653601542.Spec : Prop :=
  ∀ n, P14161113526653601542.a n = A348237 n

end A348237

/-! ## A348237.P12681941845517496508

`A000032(C(2, n+2))*A072154(n)-A047599(n+1)`
-/

namespace A348237.P12681941845517496508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A072154 n - A047599 (n + 1)

end

end A348237.P12681941845517496508

namespace A348237

/-- `A000032(C(2, n+2))*A072154(n)-A047599(n+1)` -/
def P12681941845517496508.Spec : Prop :=
  ∀ n, P12681941845517496508.a n = A348237 n

end A348237

/-! ## A348237.P3794570526615764200

`A004275(comp[a(n-2)+7]+n)-A047599(n+1)` with `a(0)=7, a(1)=0, a(2)=2`
-/

namespace A348237.P3794570526615764200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 0, 2] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) - A047599 (n + 1)

end

end A348237.P3794570526615764200

namespace A348237

/-- `A004275(comp[a(n-2)+7]+n)-A047599(n+1)` -/
def P3794570526615764200.Spec : Prop :=
  ∀ n, P3794570526615764200.a n = A348237 n

end A348237

/-! ## A348237.P5124759550659412159

`abs(7*n-A311570(n))`
-/

namespace A348237.P5124759550659412159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 * n : ℤ) - A311570 n|

end

end A348237.P5124759550659412159

namespace A348237

/-- `abs(7*n-A311570(n))` -/
def P5124759550659412159.Spec : Prop :=
  ∀ n, P5124759550659412159.a n = A348237 n

end A348237

/-! ## A348237.P11234583750217553846

`A004277(A008486(n))+n-A311570(n)`
-/

namespace A348237.P11234583750217553846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008486 n).toNat + ((n : ℤ) - A311570 n)

end

end A348237.P11234583750217553846

namespace A348237

/-- `A004277(A008486(n))+n-A311570(n)` -/
def P11234583750217553846.Spec : Prop :=
  ∀ n, P11234583750217553846.a n = A348237 n

end A348237

/-! ## A348237.P4621601100658202092

`A008486(n)+A008574(n)-A311570(n)`
-/

namespace A348237.P4621601100658202092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A008574 n - A311570 n)

end

end A348237.P4621601100658202092

namespace A348237

/-- `A008486(n)+A008574(n)-A311570(n)` -/
def P4621601100658202092.Spec : Prop :=
  ∀ n, P4621601100658202092.a n = A348237 n

end A348237

/-! ## A348237.P8383300589665532119

`A008486(n)-A311570(n)%A004277(n)`
-/

namespace A348237.P8383300589665532119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - Int.tmod (A311570 n) (A004277 n)

end

end A348237.P8383300589665532119

namespace A348237

/-- `A008486(n)-A311570(n)%A004277(n)` -/
def P8383300589665532119.Spec : Prop :=
  ∀ n, P8383300589665532119.a n = A348237 n

end A348237

/-! ## A348237.P16840482915028934763

`A315187(n)-A047599(n+1)`
-/

namespace A348237.P16840482915028934763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n - A047599 (n + 1)

end

end A348237.P16840482915028934763

namespace A348237

/-- `A315187(n)-A047599(n+1)` -/
def P16840482915028934763.Spec : Prop :=
  ∀ n, P16840482915028934763.a n = A348237 n

end A348237

/-! ## A348237.P1972738580932166334

`A016993(n)-A004442(A311570(n))`
-/

namespace A348237.P1972738580932166334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n - A004442 (A311570 n).toNat

end

end A348237.P1972738580932166334

namespace A348237

/-- `A016993(n)-A004442(A311570(n))` -/
def P1972738580932166334.Spec : Prop :=
  ∀ n, P1972738580932166334.a n = A348237 n

end A348237

/-! ## A348237.P15367269399408243462

`2*A072154(n)-A068962(A315211(n))`
-/

namespace A348237.P15367269399408243462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072154 n - A068962 (A315211 n).toNat

end

end A348237.P15367269399408243462

namespace A348237

/-- `2*A072154(n)-A068962(A315211(n))` -/
def P15367269399408243462.Spec : Prop :=
  ∀ n, P15367269399408243462.a n = A348237 n

end A348237

/-! ## A348237.P16162078562649757587

`A005843(A072154(n))-A068962(A315211(n))`
-/

namespace A348237.P16162078562649757587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A072154 n).toNat - A068962 (A315211 n).toNat

end

end A348237.P16162078562649757587

namespace A348237

/-- `A005843(A072154(n))-A068962(A315211(n))` -/
def P16162078562649757587.Spec : Prop :=
  ∀ n, P16162078562649757587.a n = A348237 n

end A348237

/-!
# A348238: Partial sums of A348236.

The programs for A348238, the canonical program `A348238.P4291595183179070865` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348238 has offset 0).

The definition of A348238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348238.P4291595183179070865

`ogf((1+2x+3x^2+5x^3+6x^4+5x^5+3x^6+2x^7+x^8)/(1-2x+2x^2-2x^3+x^4-x^5+2x^6-2x^7+2x^8-x^9))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A348238

/-- `ogf((1+2x+3x^2+5x^3+6x^4+5x^5+3x^6+2x^7+x^8)/(1-2x+2x^2-2x^3+x^4-x^5+2x^6-2x^7+2x^8-x^9))` -/
def P4291595183179070865.Spec : Prop :=
  ∀ n, P4291595183179070865.a n = A348238 n

theorem P4291595183179070865.correct : P4291595183179070865.Spec := by
  intro n
  simp only [A348238]

end A348238

/-! ## A348238.P5407423033407331285

`∑[A348236(n)]`
-/

namespace A348238.P5407423033407331285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348238.P5407423033407331285

namespace A348238

/-- `∑[A348236(n)]` -/
def P5407423033407331285.Spec : Prop :=
  ∀ n, P5407423033407331285.a n = A348238 n

end A348238

/-! ## A348238.P11940768101347029484

`∑[A265227(n+1)+abs((-(n%2))^∑[n]-n)]`
-/

namespace A348238.P11940768101347029484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + |(-((n % 2 : ℕ) : ℤ)) ^ (∑ j ∈ Finset.range (n + 1), f2 j) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348238.P11940768101347029484

namespace A348238

/-- `∑[A265227(n+1)+abs((-(n%2))^∑[n]-n)]` -/
def P11940768101347029484.Spec : Prop :=
  ∀ n, P11940768101347029484.a n = A348238 n

end A348238

/-! ## A348238.P7106085742805438883

`A348236(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A348238.P7106085742805438883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A348236 n + a (A023443 n).toNat

end

end A348238.P7106085742805438883

namespace A348238

/-- `A348236(n)+a(A023443(n))` -/
def P7106085742805438883.Spec : Prop :=
  ∀ n, P7106085742805438883.a n = A348238 n

end A348238

/-! ## A348238.P12186037684160973202

`∑[A265227(n+1)+∑[A143432(n)]]`
-/

namespace A348238.P12186037684160973202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143432 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348238.P12186037684160973202

namespace A348238

/-- `∑[A265227(n+1)+∑[A143432(n)]]` -/
def P12186037684160973202.Spec : Prop :=
  ∀ n, P12186037684160973202.a n = A348238 n

end A348238

/-! ## A348238.P10072804238938920374

`A008815(2*n)+∑[A265227(n+1)]`
-/

namespace A348238.P10072804238938920374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008815 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348238.P10072804238938920374

namespace A348238

/-- `A008815(2*n)+∑[A265227(n+1)]` -/
def P10072804238938920374.Spec : Prop :=
  ∀ n, P10072804238938920374.a n = A348238 n

end A348238

/-! ## A348238.P15453542760167457517

`A040846(2*n+1)+∑[A265227(n+1)+n]`
-/

namespace A348238.P15453542760167457517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040846 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348238.P15453542760167457517

namespace A348238

/-- `A040846(2*n+1)+∑[A265227(n+1)+n]` -/
def P15453542760167457517.Spec : Prop :=
  ∀ n, P15453542760167457517.a n = A348238 n

end A348238

/-! ## A348238.P843128335201278122

`∑[A311570(n)-A047299(n+1)]`
-/

namespace A348238.P843128335201278122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311570 n - A047299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348238.P843128335201278122

namespace A348238

/-- `∑[A311570(n)-A047299(n+1)]` -/
def P843128335201278122.Spec : Prop :=
  ∀ n, P843128335201278122.a n = A348238 n

end A348238

/-! ## A348238.P7656437823820496663

`∑[A313232(n)-A047538(n+1)]`
-/

namespace A348238.P7656437823820496663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313232 n - A047538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348238.P7656437823820496663

namespace A348238

/-- `∑[A313232(n)-A047538(n+1)]` -/
def P7656437823820496663.Spec : Prop :=
  ∀ n, P7656437823820496663.a n = A348238 n

end A348238

/-! ## A348238.P17673345658184267057

`∑[A301718(n-1)-a(n-2)]` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A348238.P17673345658184267057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  A301718 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348238.P17673345658184267057

namespace A348238

/-- `∑[A301718(n-1)-a(n-2)]` -/
def P17673345658184267057.Spec : Prop :=
  ∀ n, P17673345658184267057.a n = A348238 n

end A348238

/-! ## A348238.P917612160687983268

`∑[A313232(n)]-A042948(∑[n])`
-/

namespace A348238.P917612160687983268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313232 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A042948 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A348238.P917612160687983268

namespace A348238

/-- `∑[A313232(n)]-A042948(∑[n])` -/
def P917612160687983268.Spec : Prop :=
  ∀ n, P917612160687983268.a n = A348238 n

end A348238

/-!
# A348239: Partial sums of A348237.

The programs for A348239, the canonical program `A348239.P18203730916746657209` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348239 has offset 0).

The definition of A348239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348239.P18203730916746657209

`∑[A348237(n)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A348239

/-- `∑[A348237(n)]` -/
def P18203730916746657209.Spec : Prop :=
  ∀ n, P18203730916746657209.a n = A348239 n

theorem P18203730916746657209.correct : P18203730916746657209.Spec := by
  intro n
  simp only [A348239]

end A348239

/-! ## A348239.P16361495580727376318

`A348237(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A348239.P16361495580727376318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A348237 n + a (A023443 n).toNat

end

end A348239.P16361495580727376318

namespace A348239

/-- `A348237(n)+a(A023443(n))` -/
def P16361495580727376318.Spec : Prop :=
  ∀ n, P16361495580727376318.a n = A348239 n

end A348239

/-! ## A348239.P8638804950465098312

`a(n-1)+A348237(n)+A000007(n)` with `a(0)=1`
-/

namespace A348239.P8638804950465098312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A348237 n + A000007 n)

end

end A348239.P8638804950465098312

namespace A348239

/-- `a(n-1)+A348237(n)+A000007(n)` -/
def P8638804950465098312.Spec : Prop :=
  ∀ n, P8638804950465098312.a n = A348239 n

end A348239

/-! ## A348239.P14540410171995276297

`∑[A301730(n)-char[2]-A047599(n+1)]`
-/

namespace A348239.P14540410171995276297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301730 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - A047599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348239.P14540410171995276297

namespace A348239

/-- `∑[A301730(n)-char[2]-A047599(n+1)]` -/
def P14540410171995276297.Spec : Prop :=
  ∀ n, P14540410171995276297.a n = A348239 n

end A348239

/-! ## A348239.P5457194362215310014

`∑[A250120(n)+A244895(n)-A047599(n+1)]`
-/

namespace A348239.P5457194362215310014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A244895 n - A047599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348239.P5457194362215310014

namespace A348239

/-- `∑[A250120(n)+A244895(n)-A047599(n+1)]` -/
def P5457194362215310014.Spec : Prop :=
  ∀ n, P5457194362215310014.a n = A348239 n

end A348239

/-! ## A348239.P6085693748323942908

`∑[A022144(n)-2*A047486(n+1)-A047599(n+1)]`
-/

namespace A348239.P6085693748323942908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - 2 * A047486 (n + 1) - A047599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348239.P6085693748323942908

namespace A348239

/-- `∑[A022144(n)-2*A047486(n+1)-A047599(n+1)]` -/
def P6085693748323942908.Spec : Prop :=
  ∀ n, P6085693748323942908.a n = A348239 n

end A348239

/-! ## A348239.P9218127113614618945

`a(n-1)+A348237(n)+A285139(2*(n+1))` with `a(0)=1`
-/

namespace A348239.P9218127113614618945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A348237 n + A285139 (2 * (n + 1)))

end

end A348239.P9218127113614618945

namespace A348239

/-- `a(n-1)+A348237(n)+A285139(2*(n+1))` -/
def P9218127113614618945.Spec : Prop :=
  ∀ n, P9218127113614618945.a n = A348239 n

end A348239

/-! ## A348239.P3411678634866913187

`∑[abs(7*n-A311570(n))]`
-/

namespace A348239.P3411678634866913187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 * n : ℤ) - A311570 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348239.P3411678634866913187

namespace A348239

/-- `∑[abs(7*n-A311570(n))]` -/
def P3411678634866913187.Spec : Prop :=
  ∀ n, P3411678634866913187.a n = A348239 n

end A348239

/-! ## A348239.P5124554361956623263

`∑[A008486(n)+A008574(n)-A311570(n)]`
-/

namespace A348239.P5124554361956623263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A008574 n - A311570 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348239.P5124554361956623263

namespace A348239

/-- `∑[A008486(n)+A008574(n)-A311570(n)]` -/
def P5124554361956623263.Spec : Prop :=
  ∀ n, P5124554361956623263.a n = A348239 n

end A348239

/-! ## A348239.P12777674947712381783

`∑[A315187(n)-A047599(n+1)]`
-/

namespace A348239.P12777674947712381783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n - A047599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348239.P12777674947712381783

namespace A348239

/-- `∑[A315187(n)-A047599(n+1)]` -/
def P12777674947712381783.Spec : Prop :=
  ∀ n, P12777674947712381783.a n = A348239 n

end A348239

/-! ## A348239.P4217292791199550361

`∑[A016993(n)-A004442(A311570(n))]`
-/

namespace A348239.P4217292791199550361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n - A004442 (A311570 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348239.P4217292791199550361

namespace A348239

/-- `∑[A016993(n)-A004442(A311570(n))]` -/
def P4217292791199550361.Spec : Prop :=
  ∀ n, P4217292791199550361.a n = A348239 n

end A348239

/-! ## A348239.P15772365527592260104

`A000027(a(n-1))+A348237(n)` with `a(0)=1`
-/

namespace A348239.P15772365527592260104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (a (n - 1)).toNat + A348237 n

end

end A348239.P15772365527592260104

namespace A348239

/-- `A000027(a(n-1))+A348237(n)` -/
def P15772365527592260104.Spec : Prop :=
  ∀ n, P15772365527592260104.a n = A348239 n

end A348239

/-!
# A348240: a(n) = Sum_{k = 0..floor(n/2)} A003041(n-2*k).

The programs for A348240, there is no canonical definition to state claims against.
-/

/-! ## A348240.P3775338706542336373

`∑{#}[floor(n/2), A003041(n-2*#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348240.P3775338706542336373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A003041 (n - 2 * k)

end

end A348240.P3775338706542336373

/-!
# A348241: A307720(2*n+1).

The programs for A348241, there is no canonical definition to state claims against.
-/

/-! ## A348241.P17632973534639121745

`A307720(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348241.P17632973534639121745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (2 * n + 1)

end

end A348241.P17632973534639121745

/-! ## A348241.P14097741603148036456

`A348446(n+1)+A348242(n+1)`
-/

namespace A348241.P14097741603148036456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348446 (n + 1) + A348242 (n + 1)

end

end A348241.P14097741603148036456

/-! ## A348241.P2567523950911876746

`A307720(A005408(n))+C(n, n+1)`
-/

namespace A348241.P2567523950911876746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (A005408 n).toNat + (Nat.choose n (n + 1) : ℤ)

end

end A348241.P2567523950911876746

/-! ## A348241.P12926255482388389197

`A307730(2*n+1)/A348242(n+1)`
-/

namespace A348241.P12926255482388389197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307730 (2 * n + 1) : ℚ) / (A348242 (n + 1) : ℚ)

end

end A348241.P12926255482388389197

/-! ## A348241.P7079997524399954859

`A307730(2*n+1)/(A348458(2*(n+1))-A348458(2*n+1))`
-/

namespace A348241.P7079997524399954859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307730 (2 * n + 1) : ℚ) / (A348458 (2 * (n + 1)) - A348458 (2 * n + 1) : ℚ)

end

end A348241.P7079997524399954859

/-! ## A348241.P5851184670117212073

`A348458(A233583(2*(n+1)))-A348458(A028310(2*n))`
-/

namespace A348241.P5851184670117212073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348458 (A233583 (2 * (n + 1))).toNat - A348458 (A028310 (2 * n)).toNat

end

end A348241.P5851184670117212073

/-!
# A348242: A307720(2*n).

The programs for A348242, there is no canonical definition to state claims against.
-/

/-! ## A348242.P13758106085806409558

`A307720(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348242.P13758106085806409558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (2 * (n + 1))

end

end A348242.P13758106085806409558

/-! ## A348242.P10750552029885775382

`A307720(Δ[n²]+1)%(Δ[n²]+1)`
-/

namespace A348242.P10750552029885775382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307720 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat) ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1)

end

end A348242.P10750552029885775382

/-! ## A348242.P374275338045512842

`A348241(n)-A348446(n+1)`
-/

namespace A348242.P374275338045512842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348241 n - A348446 (n + 1)

end

end A348242.P374275338045512842

/-! ## A348242.P17066377617263430864

`A307730(2*n+1)/A348241(n)`
-/

namespace A348242.P17066377617263430864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307730 (2 * n + 1) : ℚ) / (A348241 n : ℚ)

end

end A348242.P17066377617263430864

/-! ## A348242.P6521658751611318210

`A307720(n+1+n)-A348446(n+1)`
-/

namespace A348242.P6521658751611318210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (n + 1 + n) - A348446 (n + 1)

end

end A348242.P6521658751611318210

/-! ## A348242.P15257185918640822559

`A348458(2*(n+1))-A348458(2*n+1)`
-/

namespace A348242.P15257185918640822559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348458 (2 * (n + 1)) - A348458 (2 * n + 1)

end

end A348242.P15257185918640822559

/-! ## A348242.P16407909163238030683

`A348460(A002024((2*n+1)*(n+1)))`
-/

namespace A348242.P16407909163238030683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348460 (A002024 ((2 * n + 1) * (n + 1))).toNat

end

end A348242.P16407909163238030683

/-!
# A348244: Indices of 1's in A307720.

The programs for A348244, there is no canonical definition to state claims against.
-/

/-! ## A348244.P18169032748356892530

`eq[1, A307720(n+1)]+1`
-/

namespace A348244.P18169032748356892530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348244.P18169032748356892530

/-! ## A348244.P4185377929398752950

`record[root(A000027(n+1), A307720(n+1))]`
-/

namespace A348244.P4185377929398752950
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℝ) ^ (1 / (A307720 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348244.P4185377929398752950

/-! ## A348244.P5032419557919377587

`record[root(A028310(n+1), A307720(n+1))]`
-/

namespace A348244.P5032419557919377587
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) : ℝ) ^ (1 / (A307720 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348244.P5032419557919377587

/-! ## A348244.P2521959962047060686

`eq[A054977(n), A307720(A028310(n))]`
-/

namespace A348244.P2521959962047060686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348244.P2521959962047060686

/-! ## A348244.P16504793277362621899

`eq[A057427(n), A307720(A028310(n))]`
-/

namespace A348244.P16504793277362621899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348244.P16504793277362621899

/-!
# A348246: Index of first occurrence of n in A307730.

The programs for A348246, there is no canonical definition to state claims against.
-/

/-! ## A348246.P16833447220478025520

`A348409(n+1)+1-A348249(n+1)`
-/

namespace A348246.P16833447220478025520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348409 (n + 1) + (1 - A348249 (n + 1))

end

end A348246.P16833447220478025520

/-! ## A348246.P14276574207643723584

`A348409(n+1)-(A348250(n+1)+n)`
-/

namespace A348246.P14276574207643723584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348409 (n + 1) - (A348250 (n + 1) + (n : ℤ))

end

end A348246.P14276574207643723584

/-! ## A348246.P5528848579682157869

`A348409(n+1)+A024000(A348249(n+1))`
-/

namespace A348246.P5528848579682157869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348409 (n + 1) + A024000 (A348249 (n + 1)).toNat

end

end A348246.P5528848579682157869

/-! ## A348246.P18259362160690259873

`A348409(n+1)+A024000(A348250(n+1)+1+n)`
-/

namespace A348246.P18259362160690259873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348409 (n + 1) + A024000 (A348250 (n + 1) + 1 + (n : ℤ)).toNat

end

end A348246.P18259362160690259873

/-! ## A348246.P17309678496163800475

`A348579(∑[n]+1)`
-/

namespace A348246.P17309678496163800475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348579 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A348246.P17309678496163800475

/-! ## A348246.P16162210827079128845

`or(char[4], A348579(A000124(n)))`
-/

namespace A348246.P16162210827079128845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A348579 (A000124 n).toNat)

end

end A348246.P16162210827079128845

/-! ## A348246.P13585161307291585617

`A348579(A000124(n))+A000007(n+1)`
-/

namespace A348246.P13585161307291585617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348579 (A000124 n).toNat + A000007 (n + 1)

end

end A348246.P13585161307291585617

/-! ## A348246.P4080117437914173234

`A348579(A000124(n))%A006328(n+3)`
-/

namespace A348246.P4080117437914173234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348579 (A000124 n).toNat) (A006328 (n + 3))

end

end A348246.P4080117437914173234

/-! ## A348246.P14945788467142375715

`A044940(n+1)!*A348579(A000124(n))`
-/

namespace A348246.P14945788467142375715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A044940 (n + 1)).toNat : ℤ) * A348579 (A000124 n).toNat

end

end A348246.P14945788467142375715

/-! ## A348246.P7895634506478893322

`A348579(A000124(n))+A008683(8*n+4)`
-/

namespace A348246.P7895634506478893322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348579 (A000124 n).toNat + A008683 (8 * n + 4)

end

end A348246.P7895634506478893322

/-! ## A348246.P8554490350752178462

`and(A157128(6*n+3), A348579(A000124(n)))`
-/

namespace A348246.P8554490350752178462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157128 (6 * n + 3)) (A348579 (A000124 n).toNat)

end

end A348246.P8554490350752178462

/-! ## A348246.P18348762922514803927

`A000045(((-1)^n)²)*A348579(A000124(n))`
-/

namespace A348246.P18348762922514803927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat * A348579 (A000124 n).toNat

end

end A348246.P18348762922514803927

/-! ## A348246.P13700731500135031054

`A348579(A000124(n))%A199414(n)`
-/

namespace A348246.P13700731500135031054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348579 (A000124 n).toNat) (A199414 n)

end

end A348246.P13700731500135031054

/-!
# A348247: Where prime(n) first appears in A307730.

The programs for A348247, there is no canonical definition to state claims against.
-/

/-! ## A348247.P5364236876498698313

`A348246(p?[comp[n²]])`
-/

namespace A348247.P5364236876498698313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A348247.P5364236876498698313

/-! ## A348247.P698665614345688224

`A348246(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A348247.P698665614345688224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A348247.P698665614345688224

/-! ## A348247.P13841460205735906130

`A307632(n+1)-char[comp[2*(n+1)]]`
-/

namespace A348247.P13841460205735906130
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307632 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A348247.P13841460205735906130

/-! ## A348247.P16587669584760288843

`A348246(abs(p?[round(8*n/7)]-n)+n)`
-/

namespace A348247.P16587669584760288843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (|f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ)| + (n : ℤ)).toNat

end

end A348247.P16587669584760288843

/-! ## A348247.P4340037381589068736

`A348246(Δ[A007504(n)])`
-/

namespace A348247.P4340037381589068736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (f1 (n + 1) - f1 n).toNat

end

end A348247.P4340037381589068736

/-! ## A348247.P2591205726443223218

`record[A348246(A007989(n))]`
-/

namespace A348247.P2591205726443223218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (A007989 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348247.P2591205726443223218

/-! ## A348247.P17920540863284078992

`A348246(record[A051698(n)])`
-/

namespace A348247.P17920540863284078992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348247.P17920540863284078992

/-! ## A348247.P9359632144331877844

`A348246(record[A162753(n)])`
-/

namespace A348247.P9359632144331877844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348247.P9359632144331877844

/-! ## A348247.P2684595817942235577

`A348246(A000040(n+1))`
-/

namespace A348247.P2684595817942235577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (A000040 (n + 1)).toNat

end

end A348247.P2684595817942235577

/-! ## A348247.P14600693615663882399

`A348246(A008578(n+2))`
-/

namespace A348247.P14600693615663882399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (A008578 (n + 2)).toNat

end

end A348247.P14600693615663882399

/-! ## A348247.P12822660904757204216

`A348246(A182986(n+2))`
-/

namespace A348247.P12822660904757204216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (A182986 (n + 2)).toNat

end

end A348247.P12822660904757204216

/-! ## A348247.P2336131766435854413

`A348246(eq[0, A007920(n)])`
-/

namespace A348247.P2336131766435854413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A348247.P2336131766435854413

/-! ## A348247.P8246322622708832768

`A348246(eq[1, A003415(n)])`
-/

namespace A348247.P8246322622708832768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A348247.P8246322622708832768

/-! ## A348247.P8530110876109117676

`A348246(record[A006530(n+2)])`
-/

namespace A348247.P8530110876109117676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348247.P8530110876109117676

/-! ## A348247.P14132387825776969876

`A348246(record[A014963(n+2)])`
-/

namespace A348247.P14132387825776969876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348247.P14132387825776969876

/-! ## A348247.P14107851373018351179

`A348246(record[A020639(n+2)])`
-/

namespace A348247.P14107851373018351179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348247.P14107851373018351179

/-! ## A348247.P6982822851044563284

`A348246(record[A000010(n+1)+1])`
-/

namespace A348247.P6982822851044563284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348247.P6982822851044563284

/-! ## A348247.P345535963363178825

`A348246(eq[1, A001222(n+1)]+1)`
-/

namespace A348247.P345535963363178825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A348247.P345535963363178825

/-! ## A348247.P7579233960534105071

`A348246(A007504(n+1)-A007504(n))`
-/

namespace A348247.P7579233960534105071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (A007504 (n + 1) - A007504 n).toNat

end

end A348247.P7579233960534105071

/-!
# A348248: Let d = A307720(n) - A307720(n-1); a(n) = 0 if d = 0; a(n) = 1 if d > 0; a(n) = 2 if d < 0.

The programs for A348248, there is no canonical definition to state claims against.
-/

/-! ## A348248.P7797527915366985891

`1-floor(acot(Δ[A307720(n+1)]))`
-/

namespace A348248.P7797527915366985891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ)⌋

end

end A348248.P7797527915366985891

/-! ## A348248.P12794799107819373029

`A107286(3*n+4)%A014673(A117775(n+4))`
-/

namespace A348248.P12794799107819373029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107286 (3 * n + 4)) (A014673 (A117775 (n + 4)).toNat)

end

end A348248.P12794799107819373029

/-! ## A348248.P6550158292590937524

`A007814(A005918(3*n+1)-A175337(3*n+1))`
-/

namespace A348248.P6550158292590937524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005918 (3 * n + 1) - A175337 (3 * n + 1)).toNat

end

end A348248.P6550158292590937524

/-! ## A348248.P6047666938640648189

`and(gcd(2, n), A000030(A282575(n)))`
-/

namespace A348248.P6047666938640648189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.gcd 2 n : ℤ) (A000030 (A282575 n).toNat)

end

end A348248.P6047666938640648189

/-! ## A348248.P3941958712700025642

`A020639(n+2)%A059832(A144898(n))`
-/

namespace A348248.P3941958712700025642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (n + 2)) (A059832 (A144898 n).toNat)

end

end A348248.P3941958712700025642

/-!
# A348249: a(n) = A348409(n) - A348246(n) + 1.

The programs for A348249, there is no canonical definition to state claims against.
-/

/-! ## A348249.P11771180769979723718

`A348409(n+1)-A348246(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348249.P11771180769979723718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348409 (n + 1) - A348246 (n + 1) + 1

end

end A348249.P11771180769979723718

/-! ## A348249.P13567027960073009277

`A348250(n+1)+1+n`
-/

namespace A348249.P13567027960073009277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348250 (n + 1) + 1 + (n : ℤ)

end

end A348249.P13567027960073009277

/-! ## A348249.P11751130074618976555

`∑[Δ[A348250(A028310(n))]+1]`
-/

namespace A348249.P11751130074618976555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348250 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348249.P11751130074618976555

/-! ## A348249.P15588447599711848997

`A348579(∑[n+1])+1-A348246(n+1)`
-/

namespace A348249.P15588447599711848997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348579 (∑ j ∈ Finset.range (n + 1), f1 j) + (1 - A348246 (n + 1))

end

end A348249.P15588447599711848997

/-! ## A348249.P17518295371180800404

`A348409(n+1)+1-A348579(A000124(n))`
-/

namespace A348249.P17518295371180800404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348409 (n + 1) + (1 - A348579 (A000124 n).toNat)

end

end A348249.P17518295371180800404

/-!
# A348250: a(n) = A348249(n) - n.

The programs for A348250, there is no canonical definition to state claims against.
-/

/-! ## A348250.P10054050390733969847

`A348249(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348250.P10054050390733969847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348249 (n + 1) - (n + 1 : ℤ)

end

end A348250.P10054050390733969847

/-! ## A348250.P4861995638061186039

`A348249(A005408(n)-n)-1-n`
-/

namespace A348250.P4861995638061186039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348249 (A005408 n - (n : ℤ)).toNat - 1 - (n : ℤ)

end

end A348250.P4861995638061186039

/-! ## A348250.P134973276990719170

`A348409(n+1)-(A348246(n+1)+n)`
-/

namespace A348250.P134973276990719170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348409 (n + 1) - (A348246 (n + 1) + (n : ℤ))

end

end A348250.P134973276990719170

/-! ## A348250.P982734586130250375

`A023443(A348249(n+1)-n)`
-/

namespace A348250.P982734586130250375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A348249 (n + 1) - (n : ℤ)).toNat

end

end A348250.P982734586130250375

/-! ## A348250.P14525329699752789988

`A028310(A348249(n+1))+A001478(n+1)`
-/

namespace A348250.P14525329699752789988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A348249 (n + 1)).toNat + A001478 (n + 1)

end

end A348250.P14525329699752789988

/-! ## A348250.P11028893917599758429

`-(A024000(A348249(n+1))+n%A272809(n))`
-/

namespace A348250.P11028893917599758429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A024000 (A348249 (n + 1)).toNat + Int.tmod (n : ℤ) (A272809 n))

end

end A348250.P11028893917599758429

/-! ## A348250.P14292205684133559741

`A348409(n+1)-(A348579(A000124(n))+n)`
-/

namespace A348250.P14292205684133559741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348409 (n + 1) - (A348579 (A000124 n).toNat + (n : ℤ))

end

end A348250.P14292205684133559741

/-!
# A348251: Numbers that take more than the minimum number of steps to appear in A307730.

The programs for A348251, there is no canonical definition to state claims against.
-/

/-! ## A348251.P9865135030973954278

`lt[0, A348250(n+1)]+1`
-/

namespace A348251.P9865135030973954278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348250 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A348251.P9865135030973954278

/-! ## A348251.P11953720203808085734

`lt[n+1, A348249(n+1)]+1`
-/

namespace A348251.P11953720203808085734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A348251.P11953720203808085734

/-! ## A348251.P10509049379398210058

`lt[0, A348250(A028310(n))]`
-/

namespace A348251.P10509049379398210058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348250 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348251.P10509049379398210058

/-! ## A348251.P1262124776211971183

`lt[A028310(n+1), A348249(A028310(n))]`
-/

namespace A348251.P1262124776211971183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348249 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348251.P1262124776211971183

/-! ## A348251.P12845352816528474772

`lt[0, A348250(A233583(n+1))]`
-/

namespace A348251.P12845352816528474772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348250 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348251.P12845352816528474772

/-! ## A348251.P17668504763224199816

`lt[1, A348444(n+1)]+1`
-/

namespace A348251.P17668504763224199816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A348251.P17668504763224199816

/-! ## A348251.P13175529123922589812

`eq[2, A348444(n+1)]-A008683(A263242(n+1))`
-/

namespace A348251.P13175529123922589812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A008683 (A263242 (n + 1)).toNat

end

end A348251.P13175529123922589812

/-!
# A348252: Records in A348246.

The programs for A348252, there is no canonical definition to state claims against.
-/

/-! ## A348252.P9851161264807120418

`record[A348246(n+1)]`
-/

namespace A348252.P9851161264807120418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348252.P9851161264807120418

/-! ## A348252.P16892500601835391175

`record[A348409(n+1)-n]`
-/

namespace A348252.P16892500601835391175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348409 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348252.P16892500601835391175

/-! ## A348252.P16813270449907178003

`A348246(char[6]+lt[n, A000010(n+1)+3]+1)`
-/

namespace A348252.P16813270449907178003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 ((if ∃ j, f1 j = n then 1 else 0) + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1))

end

end A348252.P16813270449907178003

/-! ## A348252.P14540639978870730165

`A348246(eq[A007920(n), A023533(n)])`
-/

namespace A348252.P14540639978870730165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A348252.P14540639978870730165

/-! ## A348252.P14441505309585656865

`A348246(∩[A066050(n+1), A173919(n+1)])`
-/

namespace A348252.P14441505309585656865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A348252.P14441505309585656865

/-! ## A348252.P14316007505549369743

`A348246(A348253(n+1))`
-/

namespace A348252.P14316007505549369743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (A348253 (n + 1)).toNat

end

end A348252.P14316007505549369743

/-! ## A348252.P134513284944762223

`A024000(A348253(n+1))+record[A348409(n+1)]`
-/

namespace A348252.P134513284944762223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A348253 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348252.P134513284944762223

/-!
# A348253: Indices of records in A348246.

The programs for A348253, there is no canonical definition to state claims against.
-/

/-! ## A348253.P8506632717262766512

`A067126(n+1)+char[6]`
-/

namespace A348253.P8506632717262766512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A348253.P8506632717262766512

/-! ## A348253.P11408047298372222411

`lt[A003415(n), 2*n%6]`
-/

namespace A348253.P11408047298372222411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n % 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A348253.P11408047298372222411

/-! ## A348253.P6029922499364385705

`A266620(a(n-1))-char[6]` with `a(0)=1`
-/

namespace A348253.P6029922499364385705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266620 (a (n - 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A348253.P6029922499364385705

/-! ## A348253.P12492765297779787077

`lt[n, A008472(3*(n+1))]+1`
-/

namespace A348253.P12492765297779787077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A348253.P12492765297779787077

/-! ## A348253.P4624340078611645990

`lt[n, ∑{p}[A016969(n)+1, #]]+1`
-/

namespace A348253.P4624340078611645990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A348253.P4624340078611645990

/-! ## A348253.P8249480971966549088

`record[or(val(n+1, 3), A073757(n+1))]`
-/

namespace A348253.P8249480971966549088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.valuation (n + 1) 3 : ℤ) (A073757 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348253.P8249480971966549088

/-! ## A348253.P13074181319579186634

`char[6]+lt[n, A000010(n+1)+3]+1`
-/

namespace A348253.P13074181319579186634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

end

end A348253.P13074181319579186634

/-! ## A348253.P16971734505981196107

`char[6]+lt[n, 3*A014963(n+1)]+1`
-/

namespace A348253.P16971734505981196107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A014963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

end

end A348253.P16971734505981196107

/-! ## A348253.P9845933661758458819

`char[6]+lt[A000203(n+1), n+6]+1`
-/

namespace A348253.P9845933661758458819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

end

end A348253.P9845933661758458819

/-! ## A348253.P3673843325104221077

`lt[n/gcd(3, n)-2, A020639(n+1)]+1`
-/

namespace A348253.P3673843325104221077
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 3 n : ℚ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A348253.P3673843325104221077

/-!
# A348254: Records in A348409.

The programs for A348254, there is no canonical definition to state claims against.
-/

/-! ## A348254.P6009874468252896025

`record[A348409(n+1)]`
-/

namespace A348254.P6009874468252896025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348254.P6009874468252896025

/-! ## A348254.P10849869078370511753

`record[A348246(n+1)+n]`
-/

namespace A348254.P10849869078370511753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348246 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348254.P10849869078370511753

/-! ## A348254.P2244265960025604165

`A348409(A348253(n+1))`
-/

namespace A348254.P2244265960025604165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348409 (A348253 (n + 1)).toNat

end

end A348254.P2244265960025604165

/-! ## A348254.P9603409336486334560

`A348409(char[6]+lt[n, A000010(n+1)+3]+1)`
-/

namespace A348254.P9603409336486334560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348409 ((if ∃ j, f1 j = n then 1 else 0) + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1))

end

end A348254.P9603409336486334560

/-! ## A348254.P6287915654107980457

`A348409(char[6]+lt[A000203(n+1), n+6]+1)`
-/

namespace A348254.P6287915654107980457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348409 ((if ∃ j, f1 j = n then 1 else 0) + (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1))

end

end A348254.P6287915654107980457

/-!
# A348255: Records in A348249.

The programs for A348255, there is no canonical definition to state claims against.
-/

/-! ## A348255.P16206865882519591793

`record[A348249(n+1)]`
-/

namespace A348255.P16206865882519591793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348255.P16206865882519591793

/-! ## A348255.P4296510779315200408

`record[A348250(n+1)+n+1]`
-/

namespace A348255.P4296510779315200408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348250 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348255.P4296510779315200408

/-! ## A348255.P16949186885920086098

`A348249(A348256(n+1))`
-/

namespace A348255.P16949186885920086098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348249 (A348256 (n + 1)).toNat

end

end A348255.P16949186885920086098

/-!
# A348256: Indices of records in A348249.

The programs for A348256, there is no canonical definition to state claims against.
-/

/-! ## A348256.P15712072643836105072

`eq[A093411(A108556(n)), A325704(2*n+1)]`
-/

namespace A348256.P15712072643836105072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A108556 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325704 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348256.P15712072643836105072

/-!
# A348257: Number of ways we can write [n] as the union of 2 sets of sizes i, j which intersect in exactly 2 elements (2 < i,j < n; i = j allowed).

The programs for A348257, the canonical program `A348257.P15552577477380916611` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348257 has offset 4).

The definition of A348257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348257.P15552577477380916611

`A000554(n+4)/2`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A348257

/-- `A000554(n+4)/2` -/
def P15552577477380916611.Spec : Prop :=
  ∀ n, P15552577477380916611.a n = (A348257 (n + 4) : ℚ)

end A348257

/-! ## A348257.P3497167813668273253

`ogf((6-24x+33x^2-18x^3+4x^4)/(1-9x+33x^2-63x^3+66x^4-36x^5+8x^6))`
-/

namespace A348257.P3497167813668273253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -24, 33, -18, 4] [1, -9, 33, -63, 66, -36, 8] n

end

end A348257.P3497167813668273253

namespace A348257

/-- `ogf((6-24x+33x^2-18x^3+4x^4)/(1-9x+33x^2-63x^3+66x^4-36x^5+8x^6))` -/
def P3497167813668273253.Spec : Prop :=
  ∀ n, P3497167813668273253.a n = A348257 (n + 4)

end A348257

/-! ## A348257.P8650962992214320783

`(∑[n+3]+3)*∑[2^n]`
-/

namespace A348257.P8650962992214320783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 3) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A348257.P8650962992214320783

namespace A348257

/-- `(∑[n+3]+3)*∑[2^n]` -/
def P8650962992214320783.Spec : Prop :=
  ∀ n, (P8650962992214320783.a n : ℤ) = A348257 (n + 4)

end A348257

/-! ## A348257.P3426139538736852157

`∑[(n+3)*(A047860(n)+1)]`
-/

namespace A348257.P3426139538736852157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A047860 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348257.P3426139538736852157

namespace A348257

/-- `∑[(n+3)*(A047860(n)+1)]` -/
def P3426139538736852157.Spec : Prop :=
  ∀ n, P3426139538736852157.a n = A348257 (n + 4)

end A348257

/-! ## A348257.P8606358815313480095

`A080929(n+2)-A000217(n+3)`
-/

namespace A348257.P8606358815313480095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080929 (n + 2) - A000217 (n + 3)

end

end A348257.P8606358815313480095

namespace A348257

/-- `A080929(n+2)-A000217(n+3)` -/
def P8606358815313480095.Spec : Prop :=
  ∀ n, P8606358815313480095.a n = A348257 (n + 4)

end A348257

/-! ## A348257.P4210053614689674063

`A052482(n+3)-A052482(n+3)/A000079(n+1)`
-/

namespace A348257.P4210053614689674063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052482 (n + 3) : ℚ) - (A052482 (n + 3) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A348257.P4210053614689674063

namespace A348257

/-- `A052482(n+3)-A052482(n+3)/A000079(n+1)` -/
def P4210053614689674063.Spec : Prop :=
  ∀ n, P4210053614689674063.a n = (A348257 (n + 4) : ℚ)

end A348257

/-! ## A348257.P9787858983424554385

`A057963(∑[n+3]+2)`
-/

namespace A348257.P9787858983424554385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057963 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A348257.P9787858983424554385

namespace A348257

/-- `A057963(∑[n+3]+2)` -/
def P9787858983424554385.Spec : Prop :=
  ∀ n, P9787858983424554385.a n = A348257 (n + 4)

end A348257

/-!
# A348258: Records in A083876.

The programs for A348258, there is no canonical definition to state claims against.
-/

/-! ## A348258.P13541092535797049818

`record[A083876(∏{p}[n, #])]`
-/

namespace A348258.P13541092535797049818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083876 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348258.P13541092535797049818

/-! ## A348258.P15060218590354568205

`record[A083876(gcd(n-1, C(2, n)))]`
-/

namespace A348258.P15060218590354568205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083876 (Int.gcd ((n : ℤ) - 1) (Nat.choose 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348258.P15060218590354568205

/-! ## A348258.P8235581244500304287

`record[A083876((n+1)/10^val(n+1, 10))]`
-/

namespace A348258.P8235581244500304287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083876 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348258.P8235581244500304287

/-! ## A348258.P16422676950837141111

`record[A083876(A133310(n))]`
-/

namespace A348258.P16422676950837141111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083876 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348258.P16422676950837141111

/-! ## A348258.P3985734694318647405

`record[A083876(A291769(n))]`
-/

namespace A348258.P3985734694318647405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083876 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348258.P3985734694318647405

/-!
# A348259: Number of bases 1<b<n and coprime to n, such that b^n == b (mod n).

The programs for A348259, the canonical program `A348259.P10362202789070795068` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348259 has offset 1).

The definition of A348259 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063994, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348259.P10362202789070795068

`A063994(n+1)-1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A348259

/-- `A063994(n+1)-1` -/
def P10362202789070795068.Spec : Prop :=
  ∀ n, P10362202789070795068.a n = A348259 (n + 1)

theorem P10362202789070795068.correct : P10362202789070795068.Spec := by
  intro n
  simp only [A348259, Nat.add_sub_cancel]

end A348259

/-! ## A348259.P338627206421959643

`n-A318828(n+1)`
-/

namespace A348259.P338627206421959643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A318828 (n + 1)

end

end A348259.P338627206421959643

namespace A348259

/-- `n-A318828(n+1)` -/
def P338627206421959643.Spec : Prop :=
  ∀ n, P338627206421959643.a n = A348259 (n + 1)

theorem P338627206421959643.correct : P338627206421959643.Spec := by
  intro n
  simp only [A348259, Nat.add_sub_cancel, A348259.P338627206421959643.a, A348259.P10362202789070795068.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A318828, A318828.P2519863586055671682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348259

/-! ## A348259.P18433453951594863225

`A023443(A063994(n+1))`
-/

namespace A348259.P18433453951594863225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A063994 (n + 1)).toNat

end

end A348259.P18433453951594863225

namespace A348259

/-- `A023443(A063994(n+1))` -/
def P18433453951594863225.Spec : Prop :=
  ∀ n, P18433453951594863225.a n = A348259 (n + 1)

end A348259

/-! ## A348259.P8738185165456352792

`A065532(n)%A063994(n+1)`
-/

namespace A348259.P8738185165456352792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065532 n) (A063994 (n + 1))

end

end A348259.P8738185165456352792

namespace A348259

/-- `A065532(n)%A063994(n+1)` -/
def P8738185165456352792.Spec : Prop :=
  ∀ n, P8738185165456352792.a n = A348259 (n + 1)

end A348259

/-! ## A348259.P6631475227011916662

`A158463(n)%A063994(n+1)`
-/

namespace A348259.P6631475227011916662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158463 n) (A063994 (n + 1))

end

end A348259.P6631475227011916662

namespace A348259

/-- `A158463(n)%A063994(n+1)` -/
def P6631475227011916662.Spec : Prop :=
  ∀ n, P6631475227011916662.a n = A348259 (n + 1)

end A348259

/-! ## A348259.P8297127384427580657

`A109606(n+1)-A318840(n+1)`
-/

namespace A348259.P8297127384427580657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) - A318840 (n + 1)

end

end A348259.P8297127384427580657

namespace A348259

/-- `A109606(n+1)-A318840(n+1)` -/
def P8297127384427580657.Spec : Prop :=
  ∀ n, P8297127384427580657.a n = A348259 (n + 1)

theorem P8297127384427580657.correct : P8297127384427580657.Spec := by
  intro n
  simp only [A348259, Nat.add_sub_cancel, A348259.P8297127384427580657.a, A348259.P10362202789070795068.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A109606, A109606.P2415810041766612210.a, A318840, A318840.P4824797439622119668.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348259

/-! ## A348259.P5470216603839211568

`A046151(n+1)%A063994(n+1)`
-/

namespace A348259.P5470216603839211568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046151 (n + 1)) (A063994 (n + 1))

end

end A348259.P5470216603839211568

namespace A348259

/-- `A046151(n+1)%A063994(n+1)` -/
def P5470216603839211568.Spec : Prop :=
  ∀ n, P5470216603839211568.a n = A348259 (n + 1)

end A348259

/-! ## A348259.P1509079610015372718

`A109606(n+1)%A063994(n+1)`
-/

namespace A348259.P1509079610015372718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109606 (n + 1)) (A063994 (n + 1))

end

end A348259.P1509079610015372718

namespace A348259

/-- `A109606(n+1)%A063994(n+1)` -/
def P1509079610015372718.Spec : Prop :=
  ∀ n, P1509079610015372718.a n = A348259 (n + 1)

end A348259

/-! ## A348259.P6784658099717604921

`A000010(n+1)-(A318840(n+1)+1)`
-/

namespace A348259.P6784658099717604921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - (A318840 (n + 1) + 1)

end

end A348259.P6784658099717604921

namespace A348259

/-- `A000010(n+1)-(A318840(n+1)+1)` -/
def P6784658099717604921.Spec : Prop :=
  ∀ n, P6784658099717604921.a n = A348259 (n + 1)

theorem P6784658099717604921.correct : P6784658099717604921.Spec := by
  intro n
  simp only [A348259, Nat.add_sub_cancel, A348259.P6784658099717604921.a, A348259.P10362202789070795068.a, A000010, A000010.P4673923239450215316.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A318840, A318840.P4824797439622119668.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348259

/-! ## A348259.P363530712994783381

`A340188(n+1)-(A340187(n+1)+1)`
-/

namespace A348259.P363530712994783381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340188 (n + 1) - (A340187 (n + 1) + 1)

end

end A348259.P363530712994783381

namespace A348259

/-- `A340188(n+1)-(A340187(n+1)+1)` -/
def P363530712994783381.Spec : Prop :=
  ∀ n, P363530712994783381.a n = A348259 (n + 1)

end A348259

/-! ## A348259.P9444611347970039164

`A340190(n+1)+A340191(n+1)-1`
-/

namespace A348259.P9444611347970039164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340190 (n + 1) + (A340191 (n + 1) - 1)

end

end A348259.P9444611347970039164

namespace A348259

/-- `A340190(n+1)+A340191(n+1)-1` -/
def P9444611347970039164.Spec : Prop :=
  ∀ n, P9444611347970039164.a n = A348259 (n + 1)

theorem P9444611347970039164.correct : P9444611347970039164.Spec := by
  intro n
  simp only [A348259, Nat.add_sub_cancel, A348259.P9444611347970039164.a, A348259.P10362202789070795068.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A340190, A340190.P11460079198066302671.f1, A340190.P11460079198066302671.a, A340191, A340191.P14637291367481792060.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348259

/-! ## A348259.P3833855272442977894

`A039649(n+1)-(A318840(n+1)+2)`
-/

namespace A348259.P3833855272442977894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A318840 (n + 1) + 2)

end

end A348259.P3833855272442977894

namespace A348259

/-- `A039649(n+1)-(A318840(n+1)+2)` -/
def P3833855272442977894.Spec : Prop :=
  ∀ n, P3833855272442977894.a n = A348259 (n + 1)

theorem P3833855272442977894.correct : P3833855272442977894.Spec := by
  intro n
  simp only [A348259, Nat.add_sub_cancel, A348259.P3833855272442977894.a, A348259.P10362202789070795068.a, A039649, A039649.P16717312505280968063.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A318840, A318840.P4824797439622119668.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348259

/-! ## A348259.P2819009274193103544

`A049559(n+1)*A318829(n+1)-1`
-/

namespace A348259.P2819009274193103544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1) * A318829 (n + 1) - 1

end

end A348259.P2819009274193103544

namespace A348259

/-- `A049559(n+1)*A318829(n+1)-1` -/
def P2819009274193103544.Spec : Prop :=
  ∀ n, P2819009274193103544.a n = A348259 (n + 1)

end A348259

/-! ## A348259.P13285688292885348620

`A000010(n+1)/A247074(n+1)-1`
-/

namespace A348259.P13285688292885348620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A247074 (n + 1) : ℚ) - 1

end

end A348259.P13285688292885348620

namespace A348259

/-- `A000010(n+1)/A247074(n+1)-1` -/
def P13285688292885348620.Spec : Prop :=
  ∀ n, P13285688292885348620.a n = (A348259 (n + 1) : ℚ)

end A348259

/-! ## A348259.P8527652849585498225

`gcd(A318840(n+1), A322321(n+1))-1`
-/

namespace A348259.P8527652849585498225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A318840 (n + 1)) (A322321 (n + 1)) : ℤ) - 1

end

end A348259.P8527652849585498225

namespace A348259

/-- `gcd(A318840(n+1), A322321(n+1))-1` -/
def P8527652849585498225.Spec : Prop :=
  ∀ n, P8527652849585498225.a n = A348259 (n + 1)

end A348259

/-! ## A348259.P9326594337026342454

`n-(A318840(n+1)+A051953(n+1))`
-/

namespace A348259.P9326594337026342454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A318840 (n + 1) + A051953 (n + 1))

end

end A348259.P9326594337026342454

namespace A348259

/-- `n-(A318840(n+1)+A051953(n+1))` -/
def P9326594337026342454.Spec : Prop :=
  ∀ n, P9326594337026342454.a n = A348259 (n + 1)

theorem P9326594337026342454.correct : P9326594337026342454.Spec := by
  intro n
  simp only [A348259, Nat.add_sub_cancel, A348259.P9326594337026342454.a, A348259.P10362202789070795068.a, A051953, A051953.P11179276897610979764.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A318840, A318840.P4824797439622119668.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348259

/-! ## A348259.P13219737991083669828

`A340188(n+1)-A340189(n+1)+n`
-/

namespace A348259.P13219737991083669828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340188 (n + 1) - A340189 (n + 1) + (n : ℤ)

end

end A348259.P13219737991083669828

namespace A348259

/-- `A340188(n+1)-A340189(n+1)+n` -/
def P13219737991083669828.Spec : Prop :=
  ∀ n, P13219737991083669828.a n = A348259 (n + 1)

end A348259

/-! ## A348259.P14386656281146390945

`A083800(n+1)%A063994(n+1)`
-/

namespace A348259.P14386656281146390945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A063994 (n + 1))

end

end A348259.P14386656281146390945

namespace A348259

/-- `A083800(n+1)%A063994(n+1)` -/
def P14386656281146390945.Spec : Prop :=
  ∀ n, P14386656281146390945.a n = A348259 (n + 1)

end A348259

/-! ## A348259.P5207678557151063075

`A070198(n)%A063994(n+1)`
-/

namespace A348259.P5207678557151063075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A063994 (n + 1))

end

end A348259.P5207678557151063075

namespace A348259

/-- `A070198(n)%A063994(n+1)` -/
def P5207678557151063075.Spec : Prop :=
  ∀ n, P5207678557151063075.a n = A348259 (n + 1)

end A348259

/-! ## A348259.P11586121812036275203

`A079782(n+1)%A063994(n+1)`
-/

namespace A348259.P11586121812036275203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A063994 (n + 1))

end

end A348259.P11586121812036275203

namespace A348259

/-- `A079782(n+1)%A063994(n+1)` -/
def P11586121812036275203.Spec : Prop :=
  ∀ n, P11586121812036275203.a n = A348259 (n + 1)

end A348259

/-!
# A348260: Number of inequivalent maximal antichains of the Boolean lattice on a set of n elements.

The programs for A348260, there is no canonical definition to state claims against.
-/

/-! ## A348260.P14903811062409545969

`A215818(A000104(n))+n`
-/

namespace A348260.P14903811062409545969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215818 (A000104 n).toNat + (n : ℤ)

end

end A348260.P14903811062409545969

/-! ## A348260.P7452294122074994632

`A046100(∑[A093333(floor(6^(n/4)))])`
-/

namespace A348260.P7452294122074994632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093333 ⌊(6 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348260.P7452294122074994632

/-!
# A348262: Number of 1's required to build n using + and ^.

The programs for A348262, there is no canonical definition to state claims against.
-/

/-! ## A348262.P4941174738822940242

`(A213924(n+1)+1)/2`
-/

namespace A348262.P4941174738822940242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213924 (n + 1) + 1 : ℚ) / 2

end

end A348262.P4941174738822940242

/-! ## A348262.P15115155087666111000

`ceil(A213924(n+1)/2)`
-/

namespace A348262.P15115155087666111000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A213924 (n + 1) : ℚ) / 2⌉

end

end A348262.P15115155087666111000

/-! ## A348262.P6761983302148932594

`A000463(A213924(n+1))`
-/

namespace A348262.P6761983302148932594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A213924 (n + 1)).toNat

end

end A348262.P6761983302148932594

/-! ## A348262.P9352526295686282191

`A006370(A213924(n+1)+1)`
-/

namespace A348262.P9352526295686282191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A213924 (n + 1) + 1).toNat

end

end A348262.P9352526295686282191

/-! ## A348262.P13856200429841004882

`A026741(A213924(n+1)+1)`
-/

namespace A348262.P13856200429841004882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A213924 (n + 1) + 1).toNat

end

end A348262.P13856200429841004882

/-! ## A348262.P9243873609568965576

`A032742(A213924(n+1)+1)`
-/

namespace A348262.P9243873609568965576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A213924 (n + 1) + 1).toNat

end

end A348262.P9243873609568965576

/-! ## A348262.P5993161272113649581

`A008624(2*A213924(n+1))`
-/

namespace A348262.P5993161272113649581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A213924 (n + 1)).toNat

end

end A348262.P5993161272113649581

/-! ## A348262.P2849396890633154415

`A008624(lcm(2, A213924(n+1)))`
-/

namespace A348262.P2849396890633154415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.lcm 2 (A213924 (n + 1)))

end

end A348262.P2849396890633154415

/-! ## A348262.P11014361432318839339

`A110654(or(1, A213924(n+1)))`
-/

namespace A348262.P11014361432318839339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.lor 1 (A213924 (n + 1))).toNat

end

end A348262.P11014361432318839339

/-! ## A348262.P8181221211228657389

`A008624(A213924(n+1)+A213924(n+1)+1)`
-/

namespace A348262.P8181221211228657389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A213924 (n + 1) + (A213924 (n + 1) + 1)).toNat

end

end A348262.P8181221211228657389

/-!
# A348263: Orders of Parker fields.

The programs for A348263, there is no canonical definition to state claims against.
-/

/-! ## A348263.P15543072597948804478

`∪[A308838(n+1), Δ[A126646(n)]]`
-/

namespace A348263.P15543072597948804478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308838 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A348263.P15543072597948804478

/-! ## A348263.P15828797011502868668

`∪[A308838(n+1), A131577(n+2)]`
-/

namespace A348263.P15828797011502868668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A348263.P15828797011502868668

/-! ## A348263.P3154817293896358846

`A246655(lt[A025487(n+4), A094142(n+1)])`
-/

namespace A348263.P3154817293896358846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348263.P3154817293896358846

/-! ## A348263.P11090625338337148219

`eq[A162753(A147599(n)), A327641(n)]`
-/

namespace A348263.P11090625338337148219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (A147599 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348263.P11090625338337148219

/-! ## A348263.P5583415987081312608

`A000961(lt[A121298(3*(n+1)), A008000(n)])`
-/

namespace A348263.P5583415987081312608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121298 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348263.P5583415987081312608

/-!
# A348264: a(n) is the number of iterations that n requires to reach a fixed point under the map x -> A348173(x).

The programs for A348264, the canonical program `A348264.P11437599824618656356` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348264 has offset 1).

The definition of A348264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348264.P4736096807864437901

`and(A010848(n+1), A348039(A027688(n)))`
-/

namespace A348264.P4736096807864437901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010848 (n + 1)) (A348039 (A027688 n).toNat)

end

end A348264.P4736096807864437901

namespace A348264

/-- `and(A010848(n+1), A348039(A027688(n)))` -/
def P4736096807864437901.Spec : Prop :=
  ∀ n, P4736096807864437901.a n = A348264 (n + 1)

end A348264

/-! ## A348264.P13899415959472562545

`A010848(A000027(3*n+2)+1)%(A348039(A027688(n))+1)`
-/

namespace A348264.P13899415959472562545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010848 (A000027 (3 * n + 2) + 1).toNat) (A348039 (A027688 n).toNat + 1)

end

end A348264.P13899415959472562545

namespace A348264

/-- `A010848(A000027(3*n+2)+1)%(A348039(A027688(n))+1)` -/
def P13899415959472562545.Spec : Prop :=
  ∀ n, P13899415959472562545.a n = A348264 (n + 1)

end A348264

/-! ## A348264.P13715403527802252203

`and(floor((floor(n/2)²+n+1)/2), A091090(A322310(n+1)))`
-/

namespace A348264.P13715403527802252203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(⌊(n : ℚ) / 2⌋ ^ 2 + (n + 1 : ℤ) : ℚ) / 2⌋ (A091090 (A322310 (n + 1)).toNat)

end

end A348264.P13715403527802252203

namespace A348264

/-- `and(floor((floor(n/2)²+n+1)/2), A091090(A322310(n+1)))` -/
def P13715403527802252203.Spec : Prop :=
  ∀ n, P13715403527802252203.a n = A348264 (n + 1)

end A348264

/-! ## A348264.P17781213193532817114

`and(A091090(A322310(n+1)), A182455(n))`
-/

namespace A348264.P17781213193532817114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091090 (A322310 (n + 1)).toNat) (A182455 n)

end

end A348264.P17781213193532817114

namespace A348264

/-- `and(A091090(A322310(n+1)), A182455(n))` -/
def P17781213193532817114.Spec : Prop :=
  ∀ n, P17781213193532817114.a n = A348264 (n + 1)

end A348264

/-! ## A348264.P14554590682752528677

`and(A004320(n), A286477(A322310(n+1)))`
-/

namespace A348264.P14554590682752528677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004320 n) (A286477 (A322310 (n + 1)).toNat)

end

end A348264.P14554590682752528677

namespace A348264

/-- `and(A004320(n), A286477(A322310(n+1)))` -/
def P14554590682752528677.Spec : Prop :=
  ∀ n, P14554590682752528677.a n = A348264 (n + 1)

end A348264

/-! ## A348264.P6272807329532377112

`A002448(A138227(n+1)*A299480(n+1))`
-/

namespace A348264.P6272807329532377112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (A138227 (n + 1) * A299480 (n + 1)).toNat

end

end A348264.P6272807329532377112

namespace A348264

/-- `A002448(A138227(n+1)*A299480(n+1))` -/
def P6272807329532377112.Spec : Prop :=
  ∀ n, P6272807329532377112.a n = A348264 (n + 1)

end A348264

/-! ## A348264.P13356077382114340759

`and(A006370(n+1), A262618(A322310(n+1)))`
-/

namespace A348264.P13356077382114340759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006370 (n + 1)) (A262618 (A322310 (n + 1)).toNat)

end

end A348264.P13356077382114340759

namespace A348264

/-- `and(A006370(n+1), A262618(A322310(n+1)))` -/
def P13356077382114340759.Spec : Prop :=
  ∀ n, P13356077382114340759.a n = A348264 (n + 1)

end A348264

/-! ## A348264.P11437599824618656356

`and(A000034(A323024(n+1)), A000292(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A348264

/-- `and(A000034(A323024(n+1)), A000292(n))` -/
def P11437599824618656356.Spec : Prop :=
  ∀ n, P11437599824618656356.a n = A348264 (n + 1)

theorem P11437599824618656356.correct : P11437599824618656356.Spec := by
  intro n
  simp only [A348264, Nat.add_sub_cancel]

end A348264

/-! ## A348264.P1544882209291503037

`A000292(n)%A003016(A004396(A241521(n+1)))`
-/

namespace A348264.P1544882209291503037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000292 n) (A003016 (A004396 (A241521 (n + 1)).toNat).toNat)

end

end A348264.P1544882209291503037

namespace A348264

/-- `A000292(n)%A003016(A004396(A241521(n+1)))` -/
def P1544882209291503037.Spec : Prop :=
  ∀ n, P1544882209291503037.a n = A348264 (n + 1)

end A348264

/-! ## A348264.P15037381929956224348

`A118917(A007814(Δ[A157514(n+1)]))`
-/

namespace A348264.P15037381929956224348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 (A007814 (f1 (n + 1) - f1 n).toNat).toNat

end

end A348264.P15037381929956224348

namespace A348264

/-- `A118917(A007814(Δ[A157514(n+1)]))` -/
def P15037381929956224348.Spec : Prop :=
  ∀ n, P15037381929956224348.a n = A348264 (n + 1)

end A348264

/-! ## A348264.P2492724003210233729

`A002411(n)%A101872(A090288(n))`
-/

namespace A348264.P2492724003210233729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002411 n) (A101872 (A090288 n).toNat)

end

end A348264.P2492724003210233729

namespace A348264

/-- `A002411(n)%A101872(A090288(n))` -/
def P2492724003210233729.Spec : Prop :=
  ∀ n, P2492724003210233729.a n = A348264 (n + 1)

end A348264

/-! ## A348264.P18331217448662586927

`val((n+1)², A007729(A020639(∑[n]+1)))`
-/

namespace A348264.P18331217448662586927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) ^ 2) (A007729 (A020639 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat).toNat

end

end A348264.P18331217448662586927

namespace A348264

/-- `val((n+1)², A007729(A020639(∑[n]+1)))` -/
def P18331217448662586927.Spec : Prop :=
  ∀ n, (P18331217448662586927.a n : ℤ) = A348264 (n + 1)

end A348264

/-! ## A348264.P6775598843059052182

`A003557(n+1)%A001221(Δ[A132243(n+1)])`
-/

namespace A348264.P6775598843059052182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003557 (n + 1)) (A001221 (f1 (n + 1) - f1 n).toNat)

end

end A348264.P6775598843059052182

namespace A348264

/-- `A003557(n+1)%A001221(Δ[A132243(n+1)])` -/
def P6775598843059052182.Spec : Prop :=
  ∀ n, P6775598843059052182.a n = A348264 (n + 1)

end A348264

/-! ## A348264.P14209109423118542098

`and(∑[∑[3*n]], A097305(A097305(n+1)+1))`
-/

namespace A348264.P14209109423118542098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A097305 (A097305 (n + 1) + 1).toNat)

end

end A348264.P14209109423118542098

namespace A348264

/-- `and(∑[∑[3*n]], A097305(A097305(n+1)+1))` -/
def P14209109423118542098.Spec : Prop :=
  ∀ n, P14209109423118542098.a n = A348264 (n + 1)

end A348264

/-!
# A348269: A 5 X 5 pandiagonal magic square read by rows: the entries have digits which are only 0's and 1's and form a magic square in any base b >= 2.

The programs for A348269, there is no canonical definition to state claims against.
-/

/-! ## A348269.P15185086934383069854

`A212529(4^n)`
-/

namespace A348269.P15185086934383069854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212529 (4 ^ n)

end

end A348269.P15185086934383069854

/-!
# A348270: Expected number of spins in a 2-player Dreidel game (rounded to nearest integer) (version 2).

The programs for A348270, there is no canonical definition to state claims against.
-/

/-! ## A348270.P11242047922975345936

`A195120(A247541(n)-A008576(n))`
-/

namespace A348270.P11242047922975345936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A247541 n - A008576 n).toNat

end

end A348270.P11242047922975345936

/-! ## A348270.P3167300930337909208

`A002265(A152773(n)+A084463(n+1))`
-/

namespace A348270.P3167300930337909208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A152773 n + A084463 (n + 1)).toNat

end

end A348270.P3167300930337909208

/-! ## A348270.P504764933507632327

`∑[A101637(2*(n+1))+A008706(n)-A080036(n)]`
-/

namespace A348270.P504764933507632327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (2 * (n + 1)) + (A008706 n - A080036 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348270.P504764933507632327

/-! ## A348270.P7392899289442950313

`∑[4*n]+1-A095861(A086113(n+1))`
-/

namespace A348270.P7392899289442950313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A095861 (A086113 (n + 1)).toNat

end

end A348270.P7392899289442950313

/-! ## A348270.P2907899552014557536

`A000217(2*n)-∑[A001221(A100071(n+1))]`
-/

namespace A348270.P2907899552014557536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A100071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348270.P2907899552014557536

/-!
# A348271: a(n) is the sum of noninfinitary divisors of n.

The programs for A348271, there is no canonical definition to state claims against.
-/

/-! ## A348271.P9948905053311384601

`A000203(n+1)-A049417(n+1)`
-/

namespace A348271.P9948905053311384601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A049417 (n + 1)

end

end A348271.P9948905053311384601

/-! ## A348271.P1537673094865256704

`Δ[A160664(n)]-A049417(n+1)`
-/

namespace A348271.P1537673094865256704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A049417 (n + 1)

end

end A348271.P1537673094865256704

/-! ## A348271.P10768504618584692368

`A001065(n+1)-A126168(n+1)`
-/

namespace A348271.P10768504618584692368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A126168 (n + 1)

end

end A348271.P10768504618584692368

/-! ## A348271.P3754957603320232144

`A000203(n+1)-(A126168(n+1)+1+n)`
-/

namespace A348271.P3754957603320232144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A126168 (n + 1) + 1 + (n : ℤ))

end

end A348271.P3754957603320232144

/-! ## A348271.P18331695788586632516

`A034448(n+1)+A048146(n+1)-A049417(n+1)`
-/

namespace A348271.P18331695788586632516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A049417 (n + 1))

end

end A348271.P18331695788586632516

/-! ## A348271.P14038143015729535563

`A001615(n+1)+A244963(n+1)-A049417(n+1)`
-/

namespace A348271.P14038143015729535563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) + (A244963 (n + 1) - A049417 (n + 1))

end

end A348271.P14038143015729535563

/-! ## A348271.P652268148217122432

`A008619(A002659(n+1))-A049417(n+1)`
-/

namespace A348271.P652268148217122432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002659 (n + 1)).toNat - A049417 (n + 1)

end

end A348271.P652268148217122432

/-!
# A348273: Noninfinitary superabundant numbers: numbers m such that nisigma(m)/m > nisigma(k)/k for all k < m, where nisigma(m) is the sum of noninfinitary divisors of m (A348271).

The programs for A348273, there is no canonical definition to state claims against.
-/

/-! ## A348273.P12452174366602822351

`filter[A348342(n+1), A166280(#)]`
-/

namespace A348273.P12452174366602822351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166280 (f1 j).toNat = 1) n)

end

end A348273.P12452174366602822351

/-! ## A348273.P10320653228317332032

`filter[A348342(n+1), A307183(#)]`
-/

namespace A348273.P10320653228317332032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307183 (f1 j).toNat = 1) n)

end

end A348273.P10320653228317332032

/-! ## A348273.P10525221713358283520

`record[A348342(n+1)%A129220(n)]`
-/

namespace A348273.P10525221713358283520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348342 (n + 1)) (A129220 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348273.P10525221713358283520

/-! ## A348273.P6602153295466471463

`record[gcd(A047635(n), A348342(n+1))]`
-/

namespace A348273.P6602153295466471463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047635 n) (A348342 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348273.P6602153295466471463

/-!
# A348274: Noninfinitary abundant numbers: numbers k such that A348271(k) > k.

The programs for A348274, there is no canonical definition to state claims against.
-/

/-! ## A348274.P6843061079035289939

`lt[n, A348271(A028310(n))]`
-/

namespace A348274.P6843061079035289939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348271 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348274.P6843061079035289939

/-! ## A348274.P13689341415857591873

`lt[A007918(n), A348271(n+1)]+1`
-/

namespace A348274.P13689341415857591873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A348274.P13689341415857591873

/-! ## A348274.P10099736136752954135

`lt[A014681(n), A348271(n+1)]+1`
-/

namespace A348274.P10099736136752954135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A348274.P10099736136752954135

/-! ## A348274.P2108610771574746558

`A014681(lt[A007918(n), A348271(n+1)])`
-/

namespace A348274.P2108610771574746558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348274.P2108610771574746558

/-! ## A348274.P12858476236376564282

`A014681(lt[A014681(n), A348271(n+1)])`
-/

namespace A348274.P12858476236376564282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348274.P12858476236376564282

/-! ## A348274.P8801688631120763725

`A014681(lt[A049417(n+1), A001065(n+1)])`
-/

namespace A348274.P8801688631120763725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348274.P8801688631120763725

/-! ## A348274.P13419656337864513291

`A153152(lt[A049417(n+1), A001065(n+1)])`
-/

namespace A348274.P13419656337864513291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348274.P13419656337864513291

/-! ## A348274.P12776374469269741557

`A014681(lt[A049417(n+1), A173455(n+1)])`
-/

namespace A348274.P12776374469269741557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348274.P12776374469269741557

/-! ## A348274.P12379606381949077638

`A153152(lt[A049417(n+1), A173455(n+1)])`
-/

namespace A348274.P12379606381949077638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348274.P12379606381949077638

/-! ## A348274.P2239354419449608224

`lt[n, A348271(A014681(n)+1)]`
-/

namespace A348274.P2239354419449608224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348271 (A014681 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348274.P2239354419449608224

/-!
# A348277: Numbers k such that s' + t' = k = s + t, for some s,t in 1 <= s <= t.

The programs for A348277, there is no canonical definition to state claims against.
-/

/-! ## A348277.P11334660149989908308

`eq[A036431(A231396(n+1)), A056594(n)]`
-/

namespace A348277.P11334660149989908308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036431 (A231396 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348277.P11334660149989908308

/-! ## A348277.P6433148661893544817

`A196043(lt[A196027(3*n+1), A196030(2*n+1)])`
-/

namespace A348277.P6433148661893544817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196027 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196030 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196043 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348277.P6433148661893544817

/-!
# A348279: a(n) = Sum_{d|n} d*d', where d' is the arithmetic derivative of d (A003415).

The programs for A348279, the canonical program `A348279.P5185958183614754633` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348279 has offset 1).

The definition of A348279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348279.P5185958183614754633

`∑{d}[n+1, A190116(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A348279

/-- `∑{d}[n+1, A190116(#)]` -/
def P5185958183614754633.Spec : Prop :=
  ∀ n, P5185958183614754633.a n = A348279 (n + 1)

theorem P5185958183614754633.correct : P5185958183614754633.Spec := by
  intro n
  simp only [A348279, Nat.add_sub_cancel]

end A348279

/-! ## A348279.P7409364406162416181

`∑{d}[n+1, A068720(#)/2]`
-/

namespace A348279.P7409364406162416181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A068720 d : ℚ) / 2

end

end A348279.P7409364406162416181

namespace A348279

/-- `∑{d}[n+1, A068720(#)/2]` -/
def P7409364406162416181.Spec : Prop :=
  ∀ n, P7409364406162416181.a n = (A348279 (n + 1) : ℚ)

end A348279

/-! ## A348279.P11553225659039447630

`∑{d}[n+1, #*A003415(#)]`
-/

namespace A348279.P11553225659039447630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A003415 d

end

end A348279.P11553225659039447630

namespace A348279

/-- `∑{d}[n+1, #*A003415(#)]` -/
def P11553225659039447630.Spec : Prop :=
  ∀ n, P11553225659039447630.a n = A348279 (n + 1)

end A348279

/-! ## A348279.P13014543886758837606

`∑{d}[n+1, #*(A168036(#)+#)]`
-/

namespace A348279.P13014543886758837606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (A168036 d + (d : ℤ))

end

end A348279.P13014543886758837606

namespace A348279

/-- `∑{d}[n+1, #*(A168036(#)+#)]` -/
def P13014543886758837606.Spec : Prop :=
  ∀ n, P13014543886758837606.a n = A348279 (n + 1)

end A348279

/-! ## A348279.P4230225643221070130

`∑{d}[n+1, #*(A129283(#)-#)]`
-/

namespace A348279.P4230225643221070130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (A129283 d - (d : ℤ))

end

end A348279.P4230225643221070130

namespace A348279

/-- `∑{d}[n+1, #*(A129283(#)-#)]` -/
def P4230225643221070130.Spec : Prop :=
  ∀ n, P4230225643221070130.a n = A348279 (n + 1)

end A348279

/-! ## A348279.P3339503092179340490

`∑{d}[n+1, A003415(#²)/2]`
-/

namespace A348279.P3339503092179340490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A003415 (d ^ 2) : ℚ) / 2

end

end A348279.P3339503092179340490

namespace A348279

/-- `∑{d}[n+1, A003415(#²)/2]` -/
def P3339503092179340490.Spec : Prop :=
  ∀ n, P3339503092179340490.a n = (A348279 (n + 1) : ℚ)

end A348279

/-!
# A348281: Sum of the arithmetic derivatives of the squarefree divisors of n: a(n) = Sum_{d|n} d' * mu(d)^2.

The programs for A348281, the canonical program `A348281.P8709073695011581552` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348281 has offset 1).

The definition of A348281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348281.P8709073695011581552

`∑{d}[n+1, A008966(#)*A003415(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A348281

/-- `∑{d}[n+1, A008966(#)*A003415(#)]` -/
def P8709073695011581552.Spec : Prop :=
  ∀ n, P8709073695011581552.a n = A348281 (n + 1)

theorem P8709073695011581552.correct : P8709073695011581552.Spec := by
  intro n
  simp only [A348281, Nat.add_sub_cancel]

end A348281

/-! ## A348281.P2878685730328684773

`A319684(∏{p}[n+1, #])`
-/

namespace A348281.P2878685730328684773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319684 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A348281.P2878685730328684773

namespace A348281

/-- `A319684(∏{p}[n+1, #])` -/
def P2878685730328684773.Spec : Prop :=
  ∀ n, P2878685730328684773.a n = A348281 (n + 1)

end A348281

/-! ## A348281.P1132751525973144559

`A323599(∏{p}[n+1, #])`
-/

namespace A348281.P1132751525973144559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323599 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A348281.P1132751525973144559

namespace A348281

/-- `A323599(∏{p}[n+1, #])` -/
def P1132751525973144559.Spec : Prop :=
  ∀ n, P1132751525973144559.a n = A348281 (n + 1)

end A348281

/-! ## A348281.P13666339972216346834

`A329347(∏{p}[n+1, #])`
-/

namespace A348281.P13666339972216346834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329347 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A348281.P13666339972216346834

namespace A348281

/-- `A329347(∏{p}[n+1, #])` -/
def P13666339972216346834.Spec : Prop :=
  ∀ n, P13666339972216346834.a n = A348281 (n + 1)

end A348281

/-! ## A348281.P12329556320169929664

`A347963(∏{p}[n+1, #])`
-/

namespace A348281.P12329556320169929664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347963 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A348281.P12329556320169929664

namespace A348281

/-- `A347963(∏{p}[n+1, #])` -/
def P12329556320169929664.Spec : Prop :=
  ∀ n, P12329556320169929664.a n = A348281 (n + 1)

end A348281

/-! ## A348281.P13027255533760945048

`∑{d}[∏{p}[n+1, #], A003415(#)]`
-/

namespace A348281.P13027255533760945048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 d

end

end A348281.P13027255533760945048

namespace A348281

/-- `∑{d}[∏{p}[n+1, #], A003415(#)]` -/
def P13027255533760945048.Spec : Prop :=
  ∀ n, P13027255533760945048.a n = A348281 (n + 1)

end A348281

/-! ## A348281.P722903204754138404

`A319684(A007947(n+1))`
-/

namespace A348281.P722903204754138404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319684 (A007947 (n + 1)).toNat

end

end A348281.P722903204754138404

namespace A348281

/-- `A319684(A007947(n+1))` -/
def P722903204754138404.Spec : Prop :=
  ∀ n, P722903204754138404.a n = A348281 (n + 1)

end A348281

/-! ## A348281.P469583270702720470

`A319684((n+1)/A003557(n+1))`
-/

namespace A348281.P469583270702720470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A348281.P469583270702720470

namespace A348281

/-- `A319684((n+1)/A003557(n+1))` -/
def P469583270702720470.Spec : Prop :=
  ∀ n, P469583270702720470.a n = A348281 (n + 1)

end A348281

/-! ## A348281.P12760248032004397484

`A347963((n+1)/A003557(n+1))`
-/

namespace A348281.P12760248032004397484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A348281.P12760248032004397484

namespace A348281

/-- `A347963((n+1)/A003557(n+1))` -/
def P12760248032004397484.Spec : Prop :=
  ∀ n, P12760248032004397484.a n = A348281 (n + 1)

end A348281

/-! ## A348281.P14214307683708185238

`∑{d}[A078615(n+1), A300251(A003557(#))]`
-/

namespace A348281.P14214307683708185238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 (A003557 d).toNat

end

end A348281.P14214307683708185238

namespace A348281

/-- `∑{d}[A078615(n+1), A300251(A003557(#))]` -/
def P14214307683708185238.Spec : Prop :=
  ∀ n, P14214307683708185238.a n = A348281 (n + 1)

end A348281

/-!
# A348282: a(n) = Sum_{d|n, d>1} mu(d')^2.

The programs for A348282, the canonical program `A348282.P14380769232217756782` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348282 has offset 1).

The definition of A348282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348282.P14380769232217756782

`∑{d}[n+1, A354874(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A348282

/-- `∑{d}[n+1, A354874(#)]` -/
def P14380769232217756782.Spec : Prop :=
  ∀ n, P14380769232217756782.a n = A348282 (n + 1)

theorem P14380769232217756782.correct : P14380769232217756782.Spec := by
  intro n
  simp only [A348282, Nat.add_sub_cancel]

end A348282

/-! ## A348282.P5121264864931389620

`A069733(n+1)-A055801(A143796(n))`
-/

namespace A348282.P5121264864931389620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069733 (n + 1) - A055801 (A143796 n).toNat

end

end A348282.P5121264864931389620

namespace A348282

/-- `A069733(n+1)-A055801(A143796(n))` -/
def P5121264864931389620.Spec : Prop :=
  ∀ n, P5121264864931389620.a n = A348282 (n + 1)

end A348282

/-! ## A348282.P3951844109136790051

`A336123(A019300(n)+1)`
-/

namespace A348282.P3951844109136790051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336123 (A019300 n + 1).toNat

end

end A348282.P3951844109136790051

namespace A348282

/-- `A336123(A019300(n)+1)` -/
def P3951844109136790051.Spec : Prop :=
  ∀ n, P3951844109136790051.a n = A348282 (n + 1)

end A348282

/-! ## A348282.P10326190767062186388

`A179829(A056487(n))+A001221(n+1)`
-/

namespace A348282.P10326190767062186388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179829 (A056487 n).toNat + A001221 (n + 1)

end

end A348282.P10326190767062186388

namespace A348282

/-- `A179829(A056487(n))+A001221(n+1)` -/
def P10326190767062186388.Spec : Prop :=
  ∀ n, P10326190767062186388.a n = A348282 (n + 1)

end A348282

/-! ## A348282.P855630112973936659

`or(A286484(A164904(n)), A325225(n+1))`
-/

namespace A348282.P855630112973936659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286484 (A164904 n).toNat) (A325225 (n + 1))

end

end A348282.P855630112973936659

namespace A348282

/-- `or(A286484(A164904(n)), A325225(n+1))` -/
def P855630112973936659.Spec : Prop :=
  ∀ n, P855630112973936659.a n = A348282 (n + 1)

end A348282

/-!
# A348283: Numbers that are multiples of their arithmetic derivative, A003415.

The programs for A348283, there is no canonical definition to state claims against.
-/

/-! ## A348283.P8760403034429992971

`A383300(n+1)+A063524(n)`
-/

namespace A348283.P8760403034429992971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383300 (n + 1) + A063524 n

end

end A348283.P8760403034429992971

/-! ## A348283.P1711732231854954547

`A383300(n+1)-A159075(n)`
-/

namespace A348283.P1711732231854954547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383300 (n + 1) - A159075 n

end

end A348283.P1711732231854954547

/-! ## A348283.P3925036067728994381

`A141044(n)*A383300(n+1)`
-/

namespace A348283.P3925036067728994381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n * A383300 (n + 1)

end

end A348283.P3925036067728994381

/-! ## A348283.P16748329134222815008

`A373565(n)*A383300(n+1)`
-/

namespace A348283.P16748329134222815008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n * A383300 (n + 1)

end

end A348283.P16748329134222815008

/-! ## A348283.P13741369203233233645

`A254667(A383300(n+1))`
-/

namespace A348283.P13741369203233233645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A383300 (n + 1)).toNat

end

end A348283.P13741369203233233645

/-!
# A348284: Numbers k such that k | k" where k" is the 2nd arithmetic derivative of k.

The programs for A348284, there is no canonical definition to state claims against.
-/

/-! ## A348284.P12767315196743495164

`∪[A000040(n+1), A347931(n+1)]`
-/

namespace A348284.P12767315196743495164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A348284.P12767315196743495164

/-! ## A348284.P4829592926168279412

`∪[A008578(n+1), A347931(n+1)]`
-/

namespace A348284.P4829592926168279412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A348284.P4829592926168279412

/-! ## A348284.P8056430054110911255

`∪[A046022(n+1), A347931(n+1)]`
-/

namespace A348284.P8056430054110911255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A348284.P8056430054110911255

/-! ## A348284.P13412769683059687179

`∪[A175787(n+1), A347931(n+1)]`
-/

namespace A348284.P13412769683059687179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A348284.P13412769683059687179

/-! ## A348284.P8634318561346365728

`∪[A284696(n+1), A347931(n+1)]`
-/

namespace A348284.P8634318561346365728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A348284.P8634318561346365728

/-! ## A348284.P12705284031397632652

`lt[n/2, gcd(n, A068346(n))]`
-/

namespace A348284.P12705284031397632652
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A068346 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A348284.P12705284031397632652

/-! ## A348284.P14746643323862160339

`record[gcd(n+1, A068346(n+1))]`
-/

namespace A348284.P14746643323862160339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A068346 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348284.P14746643323862160339

/-! ## A348284.P15971327966612219777

`record[A028310(gcd(n, A068346(n)))]`
-/

namespace A348284.P15971327966612219777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A068346 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348284.P15971327966612219777

/-!
# A348285: a(1) = 2; for n > 1, let a(k) be a divisor > 1 of n appearing in all previous terms where k is as large as possible. Then a(n) = n - k. If no such k exists then a(n) = n - m, where a(m) = 1 and m is as large as possible.

The programs for A348285, there is no canonical definition to state claims against.
-/

/-! ## A348285.P6907320154920423363

`A370265(∑[n]+2)`
-/

namespace A348285.P6907320154920423363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370265 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A348285.P6907320154920423363

/-! ## A348285.P17186513327677203723

`A269242(A059327(n+2))+1`
-/

namespace A348285.P17186513327677203723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269242 (A059327 (n + 2)).toNat + 1

end

end A348285.P17186513327677203723

/-! ## A348285.P1836536540985342521

`A211994(A174648(n+2)+1)`
-/

namespace A348285.P1836536540985342521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211994 (A174648 (n + 2) + 1).toNat

end

end A348285.P1836536540985342521

/-! ## A348285.P10552754005002242986

`A329042(A003473(n+2))%7`
-/

namespace A348285.P10552754005002242986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329042 (A003473 (n + 2)).toNat) 7

end

end A348285.P10552754005002242986

/-! ## A348285.P17562035558726678870

`A001511(∑[A058766(n)+1]+4)`
-/

namespace A348285.P17562035558726678870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058766 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A348285.P17562035558726678870

/-!
# A348287: Arrange nonzero digits of n in increasing order then append the zeros.

The programs for A348287, there is no canonical definition to state claims against.
-/

/-! ## A348287.P8403009304902698846

`A328447(n)%120`
-/

namespace A348287.P8403009304902698846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328447 n) 120

end

end A348287.P8403009304902698846

/-! ## A348287.P5296131508573343506

`A321474(A004186(n))`
-/

namespace A348287.P5296131508573343506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (A004186 n).toNat

end

end A348287.P5296131508573343506

/-! ## A348287.P16642432167761582222

`A328447(A118759(n))`
-/

namespace A348287.P16642432167761582222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (A118759 n).toNat

end

end A348287.P16642432167761582222

/-! ## A348287.P2216844240931593959

`A328447(A336956(n))`
-/

namespace A348287.P2216844240931593959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (A336956 n).toNat

end

end A348287.P2216844240931593959

/-! ## A348287.P14220458241353180736

`A328447(A258069(n+1))`
-/

namespace A348287.P14220458241353180736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (A258069 (n + 1)).toNat

end

end A348287.P14220458241353180736

/-! ## A348287.P5254122583816026936

`A321474(A108782(n)+n)`
-/

namespace A348287.P5254122583816026936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (A108782 n + (n : ℤ)).toNat

end

end A348287.P5254122583816026936

/-! ## A348287.P16283117420840618894

`A336956(A108782(n)+n)`
-/

namespace A348287.P16283117420840618894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336956 (A108782 n + (n : ℤ)).toNat

end

end A348287.P16283117420840618894

/-! ## A348287.P5695499826254442727

`A352152(A108782(n)+n)`
-/

namespace A348287.P5695499826254442727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352152 (A108782 n + (n : ℤ)).toNat

end

end A348287.P5695499826254442727

/-! ## A348287.P2881040312358035520

`n-A108782(A004086(n))`
-/

namespace A348287.P2881040312358035520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A108782 (A004086 n).toNat

end

end A348287.P2881040312358035520

/-! ## A348287.P12314365642126919640

`n-A108782(A321474(n))`
-/

namespace A348287.P12314365642126919640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A108782 (A321474 n).toNat

end

end A348287.P12314365642126919640

/-!
# A348289: a(n) = Sum_{k=0..floor(n/8)} binomial(n-4*k,4*k).

The programs for A348289, the canonical program `A348289.P16787580079351053990` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348289 has offset 0).

The definition of A348289 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/8), C(n-4*#, 4*#)]` (program `A348289.P16787580079351053990`, by `A348289.P16787580079351053990.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A348289.P1813007580409188411

`ogf((1-3x+3x^2-x^3)/(1-4x+6x^2-4x^3+x^4-x^8))`
-/

namespace A348289.P1813007580409188411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3, -1] [1, -4, 6, -4, 1, 0, 0, 0, -1] n

end

end A348289.P1813007580409188411

namespace A348289

/-- `ogf((1-3x+3x^2-x^3)/(1-4x+6x^2-4x^3+x^4-x^8))` -/
def P1813007580409188411.Spec : Prop :=
  ∀ n, P1813007580409188411.a n = A348289 n

end A348289

/-! ## A348289.P9657260082881338973

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1`
-/

namespace A348289.P9657260082881338973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 1, 1] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4) + a (n - 8)

end

end A348289.P9657260082881338973

namespace A348289

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-8)` -/
def P9657260082881338973.Spec : Prop :=
  ∀ n, P9657260082881338973.a n = A348289 n

end A348289

/-! ## A348289.P16787580079351053990

`∑{#}[floor(n/8), C(n-4*#, 4*#)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A348289

/-- `∑{#}[floor(n/8), C(n-4*#, 4*#)]` -/
def P16787580079351053990.Spec : Prop :=
  ∀ n, (P16787580079351053990.a n : ℤ) = A348289 n

theorem P16787580079351053990.correct : P16787580079351053990.Spec := by
  intro n
  simp only [A348289]

end A348289

/-! ## A348289.P3460306360130794640

`Δ[Δ[Δ[A101552(n+3)]]]`
-/

namespace A348289.P3460306360130794640
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101552 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348289.P3460306360130794640

namespace A348289

/-- `Δ[Δ[Δ[A101552(n+3)]]]` -/
def P3460306360130794640.Spec : Prop :=
  ∀ n, P3460306360130794640.a n = A348289 n

end A348289

/-! ## A348289.P13156146928580266125

`A007947(A000079(n+1))-A348309(n)`
-/

namespace A348289.P13156146928580266125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000079 (n + 1)).toNat - A348309 n

end

end A348289.P13156146928580266125

namespace A348289

/-- `A007947(A000079(n+1))-A348309(n)` -/
def P13156146928580266125.Spec : Prop :=
  ∀ n, P13156146928580266125.a n = A348289 n

end A348289

/-!
# A348290: a(n) = Sum_{k=0..floor(n/10)} binomial(n-5*k,5*k).

The programs for A348290, the canonical program `A348290.P288931599120396890` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348290 has offset 0).

The definition of A348290 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/10), C(n-5*#, 5*#)]` (program `A348290.P288931599120396890`, by `A348290.P288931599120396890.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A348290.P13967634458545212820

`ogf((1-4x+6x^2-4x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5-x^10))`
-/

namespace A348290.P13967634458545212820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 6, -4, 1] [1, -5, 10, -10, 5, -1, 0, 0, 0, 0, -1] n

end

end A348290.P13967634458545212820

namespace A348290

/-- `ogf((1-4x+6x^2-4x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5-x^10))` -/
def P13967634458545212820.Spec : Prop :=
  ∀ n, P13967634458545212820.a n = A348290 n

end A348290

/-! ## A348290.P288931599120396890

`∑{#}[floor(n/10), C(n-5*#, 5*#)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A348290

/-- `∑{#}[floor(n/10), C(n-5*#, 5*#)]` -/
def P288931599120396890.Spec : Prop :=
  ∀ n, (P288931599120396890.a n : ℤ) = A348290 n

theorem P288931599120396890.correct : P288931599120396890.Spec := by
  intro n
  simp only [A348290]

end A348290

/-! ## A348290.P13451247084522918941

`A001222(A037074(n+1))-A348310(n)`
-/

namespace A348290.P13451247084522918941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A037074 (n + 1)).toNat - A348310 n

end

end A348290.P13451247084522918941

namespace A348290

/-- `A001222(A037074(n+1))-A348310(n)` -/
def P13451247084522918941.Spec : Prop :=
  ∀ n, P13451247084522918941.a n = A348290 n

end A348290

/-! ## A348290.P16227920507970576312

`A000005(A317716(n+1))-A348310(n)`
-/

namespace A348290.P16227920507970576312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A317716 (n + 1)).toNat - A348310 n

end

end A348290.P16227920507970576312

namespace A348290

/-- `A000005(A317716(n+1))-A348310(n)` -/
def P16227920507970576312.Spec : Prop :=
  ∀ n, P16227920507970576312.a n = A348290 n

end A348290

/-!
# A348292: Binary expansion of the smallest binary number starting with a(0)=1 that is prime when the final number is 1 and composite when the final number is 0.

The programs for A348292, there is no canonical definition to state claims against.
-/

/-! ## A348292.P13443300316023901202

`A213719(or(A052905(n), A213707(n)))`
-/

namespace A348292.P13443300316023901202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213719 (Int.lor (A052905 n) (A213707 n)).toNat

end

end A348292.P13443300316023901202

/-! ## A348292.P11086797439538481099

`A010051(A113413(3*n)+A000041(n+2))`
-/

namespace A348292.P11086797439538481099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A113413 (3 * n) + A000041 (n + 2)).toNat

end

end A348292.P11086797439538481099

/-! ## A348292.P15201697530316765605

`A093709(∑[A292795(n)²])`
-/

namespace A348292.P15201697530316765605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348292.P15201697530316765605

/-! ## A348292.P3224008358392622260

`A047999(A057144(C(n, 2)+1))`
-/

namespace A348292.P3224008358392622260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A057144 (Nat.choose n 2 + 1)).toNat

end

end A348292.P3224008358392622260

/-! ## A348292.P18220690681142493058

`and(1, A161459(A181821(n+2)))`
-/

namespace A348292.P18220690681142493058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A161459 (A181821 (n + 2)).toNat)

end

end A348292.P18220690681142493058

/-!
# A348295: a(n) = Sum_{k=1..n} (-1)^(floor(k*(sqrt(2)-1))).

The programs for A348295, the canonical program `A348295.P9530396092402015440` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348295 has offset 0).

The definition of A348295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348295.P9530396092402015440

`∑[A033999(A097508(n))]-1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A348295

/-- `∑[A033999(A097508(n))]-1` -/
def P9530396092402015440.Spec : Prop :=
  ∀ n, P9530396092402015440.a n = A348295 n

theorem P9530396092402015440.correct : P9530396092402015440.Spec := by
  intro n
  simp only [A348295]

end A348295

/-! ## A348295.P11206721406857447742

`∑[A062157(∑[A285073(n+1)])]`
-/

namespace A348295.P11206721406857447742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348295.P11206721406857447742

namespace A348295

/-- `∑[A062157(∑[A285073(n+1)])]` -/
def P11206721406857447742.Spec : Prop :=
  ∀ n, P11206721406857447742.a n = A348295 n

end A348295

/-! ## A348295.P15039598296182272371

`∑[A057428(n)^A285075(n+1)]`
-/

namespace A348295.P15039598296182272371
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A285075 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348295.P15039598296182272371

namespace A348295

/-- `∑[A057428(n)^A285075(n+1)]` -/
def P15039598296182272371.Spec : Prop :=
  ∀ n, P15039598296182272371.a n = (A348295 n : ℚ)

end A348295

/-! ## A348295.P10545698921730777139

`A000401(∑[A033999(A097508(n))])`
-/

namespace A348295.P10545698921730777139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A097508 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348295.P10545698921730777139

namespace A348295

/-- `A000401(∑[A033999(A097508(n))])` -/
def P10545698921730777139.Spec : Prop :=
  ∀ n, P10545698921730777139.a n = A348295 n

end A348295

/-! ## A348295.P3577228655170134259

`A004863(∑[A033999(A097508(n))])`
-/

namespace A348295.P3577228655170134259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A097508 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004863 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348295.P3577228655170134259

namespace A348295

/-- `A004863(∑[A033999(A097508(n))])` -/
def P3577228655170134259.Spec : Prop :=
  ∀ n, P3577228655170134259.a n = A348295 n

end A348295

/-! ## A348295.P17185209168972654678

`A016789(n)%∑[A000034(A097508(n))]`
-/

namespace A348295.P17185209168972654678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A097508 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016789 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A348295.P17185209168972654678

namespace A348295

/-- `A016789(n)%∑[A000034(A097508(n))]` -/
def P17185209168972654678.Spec : Prop :=
  ∀ n, P17185209168972654678.a n = A348295 n

end A348295

/-! ## A348295.P15797337990898256118

`∑[A081729(A004760(A285075(n+1)))]`
-/

namespace A348295.P15797337990898256118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A004760 (A285075 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348295.P15797337990898256118

namespace A348295

/-- `∑[A081729(A004760(A285075(n+1)))]` -/
def P15797337990898256118.Spec : Prop :=
  ∀ n, P15797337990898256118.a n = A348295 n

end A348295

/-! ## A348295.P3505082838363998597

`n-∑[A010673(A097508(n)²)]`
-/

namespace A348295.P3505082838363998597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A097508 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348295.P3505082838363998597

namespace A348295

/-- `n-∑[A010673(A097508(n)²)]` -/
def P3505082838363998597.Spec : Prop :=
  ∀ n, P3505082838363998597.a n = A348295 n

end A348295

/-! ## A348295.P3263155930153304161

`∑[A052542(A273190(n²))%4-1]`
-/

namespace A348295.P3263155930153304161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052542 (A273190 (n ^ 2)).toNat) 4 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348295.P3263155930153304161

namespace A348295

/-- `∑[A052542(A273190(n²))%4-1]` -/
def P3263155930153304161.Spec : Prop :=
  ∀ n, P3263155930153304161.a n = A348295 n

end A348295

/-!
# A348296: Irregular table T(n, k), n > 0, k = 1..A000120(n), read by rows; the n-th contains, in ascending order, the distinct powers of 2 summing to n.

The programs for A348296, there is no canonical definition to state claims against.
-/

/-! ## A348296.P1643984358391578495

`2^A133457(n+1)`
-/

namespace A348296.P1643984358391578495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A133457 (n + 1) : ℤ)

end

end A348296.P1643984358391578495

/-! ## A348296.P16659661140642320082

`A000079(A133457(n+1))`
-/

namespace A348296.P16659661140642320082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A133457 (n + 1)).toNat

end

end A348296.P16659661140642320082

/-! ## A348296.P5210187043880915640

`A011782(A133457(n+1)+1)`
-/

namespace A348296.P5210187043880915640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A133457 (n + 1) + 1).toNat

end

end A348296.P5210187043880915640

/-! ## A348296.P12952235451003434688

`A016116(2*A133457(n+1))`
-/

namespace A348296.P12952235451003434688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A133457 (n + 1)).toNat

end

end A348296.P12952235451003434688

/-! ## A348296.P17804112390138581962

`A077957(2*A133457(n+1))`
-/

namespace A348296.P17804112390138581962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * A133457 (n + 1)).toNat

end

end A348296.P17804112390138581962

/-! ## A348296.P15005475851979021260

`A320487(A133457(n+1)%A250120(n))`
-/

namespace A348296.P15005475851979021260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320487 (Int.tmod (A133457 (n + 1)) (A250120 n)).toNat

end

end A348296.P15005475851979021260

/-! ## A348296.P18407273604098272544

`2^(A048793(n+1)-1)`
-/

namespace A348296.P18407273604098272544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A048793 (n + 1) - 1 : ℤ)

end

end A348296.P18407273604098272544

/-! ## A348296.P15345992049556386626

`A011782(A048793(n+1))`
-/

namespace A348296.P15345992049556386626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A048793 (n + 1)).toNat

end

end A348296.P15345992049556386626

/-! ## A348296.P4591988305514347784

`A000079(A048793(n+1)-1)`
-/

namespace A348296.P4591988305514347784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A048793 (n + 1) - 1).toNat

end

end A348296.P4591988305514347784

/-! ## A348296.P11202172261897871414

`A000010(2^A048793(n+1))`
-/

namespace A348296.P11202172261897871414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A048793 (n + 1) : ℤ))).toNat

end

end A348296.P11202172261897871414

/-! ## A348296.P15204225585817359092

`2^val(A343934(n+1), 2)`
-/

namespace A348296.P15204225585817359092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (A343934 (n + 1)).toNat 2

end

end A348296.P15204225585817359092

/-! ## A348296.P7333888648734119628

`A006519(A343934(n+1))`
-/

namespace A348296.P7333888648734119628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A343934 (n + 1)).toNat

end

end A348296.P7333888648734119628

/-! ## A348296.P3944961720022858011

`A000079(val(A343934(n+1), 2))`
-/

namespace A348296.P3944961720022858011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A343934 (n + 1)).toNat 2)

end

end A348296.P3944961720022858011

/-! ## A348296.P13672782353888811864

`filter[A327853(n+1), A209229(#)]`
-/

namespace A348296.P13672782353888811864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A348296.P13672782353888811864

/-! ## A348296.P10661022388213130969

`filter[A295989(n), A209229(#)]`
-/

namespace A348296.P10661022388213130969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A348296.P10661022388213130969

/-! ## A348296.P16544190345027182704

`filter[A353293(n+1), A209229(#)]`
-/

namespace A348296.P16544190345027182704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A348296.P16544190345027182704

/-! ## A348296.P9045289945677153510

`filter[A352909(2*n+1), A209229(#)]`
-/

namespace A348296.P9045289945677153510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352909 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A348296.P9045289945677153510

/-! ## A348296.P12954245669785432496

`gcd(A000079(n), A343934(n+1))`
-/

namespace A348296.P12954245669785432496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A343934 (n + 1))

end

end A348296.P12954245669785432496

/-!
# A348299: Indices of 0 in A348295: numbers m such that Sum_{k=1..m} (-1)^(floor(k*(sqrt(2)-1))) = Sum_{k=1..m} (-1)^A097508(k) = 0.

The programs for A348299, there is no canonical definition to state claims against.
-/

/-! ## A348299.P14874811050427664285

`eq[0, A348295(n)]`
-/

namespace A348299.P14874811050427664285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348295 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348299.P14874811050427664285

/-! ## A348299.P8934477566978910800

`lt[A348295(n), A348264(n+1)!]`
-/

namespace A348299.P8934477566978910800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348295 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A348264 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A348299.P8934477566978910800

/-! ## A348299.P17025906469371015328

`eq[2, A083038(n+1)+A083037(n+1)]`
-/

namespace A348299.P17025906469371015328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083038 (n + 1) + A083037 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348299.P17025906469371015328

/-! ## A348299.P4730120934045157590

`eq[1, a(n-1)+A057428(n)^A285075(n+1)]` with `a(0)=1`
-/

namespace A348299.P4730120934045157590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + (A057428 n : ℚ) ^ (A285075 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A348299.P4730120934045157590

/-! ## A348299.P14561327427983390360

`eq[A014682(n), A194239(A028310(n))]`
-/

namespace A348299.P14561327427983390360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194239 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348299.P14561327427983390360

