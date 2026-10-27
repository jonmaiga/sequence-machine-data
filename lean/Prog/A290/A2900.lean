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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A290000: a(n) = Product_{k=1..n-1} (3^k + 1).

The programs for A290000, there is no canonical definition to state claims against.
-/

/-! ## A290000.P15046758997984858809

`∏[3*a(n-1)-2]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A290000.P15046758997984858809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  3 * f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A290000.P15046758997984858809

/-! ## A290000.P14504853292123592493

`∏[floor(3^(n-1))+1-char[1]]`
-/

namespace A290000.P14504853292123592493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A290000.P14504853292123592493

/-! ## A290000.P4748037050357211463

`(3^(n-1)+1)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A290000.P4748037050357211463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1) * a (n - 1)

end

end A290000.P4748037050357211463

/-! ## A290000.P5181752189825399448

`lcm(2, ∏[A094388(n)])/2`
-/

namespace A290000.P5181752189825399448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A290000.P5181752189825399448

/-! ## A290000.P14391963668792255054

`a(n-1)*A103457(n-1)` with `a(0)=1`
-/

namespace A290000.P14391963668792255054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A103457 (n - 1)

end

end A290000.P14391963668792255054

/-!
# A290001: Numbers k such that the iteration k -> (sigma(k)+phi(k))/2 terminates at a fraction later than at the first step.

The programs for A290001, there is no canonical definition to state claims against.
-/

/-! ## A290001.P2078593907037563892

`lt[0, A291914(n+1)]+1`
-/

namespace A290001.P2078593907037563892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A290001.P2078593907037563892

/-! ## A290001.P18351900060233131716

`lt[0, A291914(abs(C(2, n)-n))]`
-/

namespace A290001.P18351900060233131716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 |(Nat.choose 2 n : ℤ) - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A290001.P18351900060233131716

/-! ## A290001.P189248802235282616

`lt[0, A291914(A028310(n))]`
-/

namespace A290001.P189248802235282616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A290001.P189248802235282616

/-! ## A290001.P12281367845654305786

`A020725(lt[0, A291914(n+1)])`
-/

namespace A290001.P12281367845654305786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A290001.P12281367845654305786

/-! ## A290001.P18218241072292034198

`A065475(lt[0, A291914(n+1)])`
-/

namespace A290001.P18218241072292034198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A290001.P18218241072292034198

/-! ## A290001.P14180250711194121149

`lt[0, A291914(A233583(n+1))]`
-/

namespace A290001.P14180250711194121149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A290001.P14180250711194121149

/-! ## A290001.P17847375706167989934

`lt[1, A291914(A123108(2*n))]`
-/

namespace A290001.P17847375706167989934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A290001.P17847375706167989934

/-! ## A290001.P969276682926786358

`lt[1, A291914(A000038(n)+n)]`
-/

namespace A290001.P969276682926786358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A290001.P969276682926786358

/-! ## A290001.P14586944367078198352

`lt[A093709(n), char[A291791(n+1)]]`
-/

namespace A290001.P14586944367078198352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291791 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A290001.P14586944367078198352

/-! ## A290001.P9016677622636398943

`∩[A028983(n+1), A291791(n+1)]`
-/

namespace A290001.P9016677622636398943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290001.P9016677622636398943

/-!
# A290005: Primes of the form 3^k + 32.

The programs for A290005, there is no canonical definition to state claims against.
-/

/-! ## A290005.P17387636962003209726

`3^A219048(n+1)+32`
-/

namespace A290005.P17387636962003209726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A219048 (n + 1) : ℤ) + 32

end

end A290005.P17387636962003209726

/-! ## A290005.P3458682203137577850

`A205646(A219048(n+1))+16`
-/

namespace A290005.P3458682203137577850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205646 (A219048 (n + 1)).toNat + 16

end

end A290005.P3458682203137577850

/-!
# A290006: Primes of the form 3^k + 34.

The programs for A290006, there is no canonical definition to state claims against.
-/

/-! ## A290006.P13080633911705846340

`3^A219050(n+1)+34`
-/

namespace A290006.P13080633911705846340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A219050 (n + 1) : ℤ) + 34

end

end A290006.P13080633911705846340

/-! ## A290006.P13617148486288581180

`p?[3^n+34]`
-/

namespace A290006.P13617148486288581180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 34

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A290006.P13617148486288581180

/-! ## A290006.P3639405445381470287

`or(1, p?[∑[3*a(n-1)]])` with `a(0)=20, a(1)=15, a(2)=2`
-/

namespace A290006.P3639405445381470287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [20, 15, 2] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A290006.P3639405445381470287

/-!
# A290007: Prime numbers of the form 5^k - 6.

The programs for A290007, there is no canonical definition to state claims against.
-/

/-! ## A290007.P17905070582846218040

`5^A165701(n+1)-6`
-/

namespace A290007.P17905070582846218040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A165701 (n + 1) : ℤ) - 6

end

end A290007.P17905070582846218040

/-!
# A290011: Number of ways to connect n nodes with n+1 edges to form a 2-edge-connected graph.

The programs for A290011, the canonical program `A290011.P6438235908657788238` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290011 has offset 4).

The definition of A290011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290011.P6438235908657788238

`n*(n+4)!/8+((n+4)*(n+3)/2-3)*(n+4)!/12`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290011

/-- `n*(n+4)!/8+((n+4)*(n+3)/2-3)*(n+4)!/12` -/
def P6438235908657788238.Spec : Prop :=
  ∀ n, P6438235908657788238.a n = (A290011 (n + 4) : ℚ)

end A290011

/-! ## A290011.P3400059050739620684

`((n+4)²+2*(n+4)-18)*(n+4)!/24`
-/

namespace A290011.P3400059050739620684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 4) ^ 2 + 2 * (n + 4) : ℤ) - 18) * (Nat.factorial (n + 4) : ℤ) : ℚ) / 24

end

end A290011.P3400059050739620684

namespace A290011

/-- `((n+4)²+2*(n+4)-18)*(n+4)!/24` -/
def P3400059050739620684.Spec : Prop :=
  ∀ n, P3400059050739620684.a n = (A290011 (n + 4) : ℚ)

end A290011

/-!
# A290012: a(n) is the smallest prime number p satisfying p^2 >= Sum_{1 <= k <= n} prime(k)^2.

The programs for A290012, the canonical program `A290012.P1928420523366165154` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290012 has offset 1).

The definition of A290012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 822 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290012.P17829117189530674867

`A151800(ceil(sqrt(A024450(n+1)))-1)`
-/

namespace A290012.P17829117189530674867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (⌈Real.sqrt (A024450 (n + 1) : ℝ)⌉ - 1).toNat

end

end A290012.P17829117189530674867

namespace A290012

/-- `A151800(ceil(sqrt(A024450(n+1)))-1)` -/
def P17829117189530674867.Spec : Prop :=
  ∀ n, P17829117189530674867.a n = A290012 (n + 1)

end A290012

/-! ## A290012.P1928420523366165154

`A151800(A127719(n+1)-A000007(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A290012

/-- `A151800(A127719(n+1)-A000007(n))` -/
def P1928420523366165154.Spec : Prop :=
  ∀ n, P1928420523366165154.a n = A290012 (n + 1)

theorem P1928420523366165154.correct : P1928420523366165154.Spec := by
  intro n
  simp only [A290012, Nat.add_sub_cancel]

end A290012

/-! ## A290012.P2289464286384044736

`A151800(A127719(n+1)-A000038(n))`
-/

namespace A290012.P2289464286384044736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A127719 (n + 1) - A000038 n).toNat

end

end A290012.P2289464286384044736

namespace A290012

/-- `A151800(A127719(n+1)-A000038(n))` -/
def P2289464286384044736.Spec : Prop :=
  ∀ n, P2289464286384044736.a n = A290012 (n + 1)

end A290012

/-! ## A290012.P17263232052969798090

`A151800(A057427(n)*A127719(n+1))`
-/

namespace A290012.P17263232052969798090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A057427 n * A127719 (n + 1)).toNat

end

end A290012.P17263232052969798090

namespace A290012

/-- `A151800(A057427(n)*A127719(n+1))` -/
def P17263232052969798090.Spec : Prop :=
  ∀ n, P17263232052969798090.a n = A290012 (n + 1)

end A290012

/-! ## A290012.P5801222726805758621

`A151800(A127719(n+1)%A014206(n))`
-/

namespace A290012.P5801222726805758621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.tmod (A127719 (n + 1)) (A014206 n)).toNat

end

end A290012.P5801222726805758621

namespace A290012

/-- `A151800(A127719(n+1)%A014206(n))` -/
def P5801222726805758621.Spec : Prop :=
  ∀ n, P5801222726805758621.a n = A290012 (n + 1)

end A290012

/-! ## A290012.P11846953139226806712

`A151800(xor(A000038(n), A127719(n+1)))`
-/

namespace A290012.P11846953139226806712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.xor (A000038 n) (A127719 (n + 1))).toNat

end

end A290012.P11846953139226806712

namespace A290012

/-- `A151800(xor(A000038(n), A127719(n+1)))` -/
def P11846953139226806712.Spec : Prop :=
  ∀ n, P11846953139226806712.a n = A290012 (n + 1)

end A290012

/-! ## A290012.P17721747504318082064

`A151800(A127719(n+1)+A057427(n)-1)`
-/

namespace A290012.P17721747504318082064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A127719 (n + 1) + (A057427 n - 1)).toNat

end

end A290012.P17721747504318082064

namespace A290012

/-- `A151800(A127719(n+1)+A057427(n)-1)` -/
def P17721747504318082064.Spec : Prop :=
  ∀ n, P17721747504318082064.a n = A290012 (n + 1)

theorem P17721747504318082064.correct : P17721747504318082064.Spec := by
  intro n
  simp only [A290012, Nat.add_sub_cancel, A290012.P17721747504318082064.a, A290012.P1928420523366165154.a, A000007, A000007.P6599383543502402472.a, A057427, A057427.P3058147525557661423.a, A127719, A127719.P13941545238741058609.a, A151800, A151800.P4570031678714564115.a, A000196, A000196.P15434771586934192083.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A024450, A024450.P15958741677867055762.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A290012

/-! ## A290012.P11060858452754522774

`A151800(A127719(n+1)/(A000007(n)+1))`
-/

namespace A290012.P11060858452754522774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A127719 (n + 1) : ℚ) / (A000007 n + 1 : ℚ))).toNat

end

end A290012.P11060858452754522774

namespace A290012

/-- `A151800(A127719(n+1)/(A000007(n)+1))` -/
def P11060858452754522774.Spec : Prop :=
  ∀ n, P11060858452754522774.a n = A290012 (n + 1)

end A290012

/-! ## A290012.P18386779922967431386

`A007918(ceil(sqrt(A024450(n+1))))`
-/

namespace A290012.P18386779922967431386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ⌈Real.sqrt (A024450 (n + 1) : ℝ)⌉.toNat

end

end A290012.P18386779922967431386

namespace A290012

/-- `A007918(ceil(sqrt(A024450(n+1))))` -/
def P18386779922967431386.Spec : Prop :=
  ∀ n, P18386779922967431386.a n = A290012 (n + 1)

end A290012

/-! ## A290012.P4658604001870536301

`A007918(A127719(n+1)+A057427(n))`
-/

namespace A290012.P4658604001870536301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A127719 (n + 1) + A057427 n).toNat

end

end A290012.P4658604001870536301

namespace A290012

/-- `A007918(A127719(n+1)+A057427(n))` -/
def P4658604001870536301.Spec : Prop :=
  ∀ n, P4658604001870536301.a n = A290012 (n + 1)

end A290012

/-! ## A290012.P3029749626842002633

`A007918(A127719(n+1)-A057428(n))`
-/

namespace A290012.P3029749626842002633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A127719 (n + 1) - A057428 n).toNat

end

end A290012.P3029749626842002633

namespace A290012

/-- `A007918(A127719(n+1)-A057428(n))` -/
def P3029749626842002633.Spec : Prop :=
  ∀ n, P3029749626842002633.a n = A290012 (n + 1)

end A290012

/-! ## A290012.P1391414894940957894

`A007918(A127719(n+1)+A057428(n)²)`
-/

namespace A290012.P1391414894940957894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A127719 (n + 1) + A057428 n ^ 2).toNat

end

end A290012.P1391414894940957894

namespace A290012

/-- `A007918(A127719(n+1)+A057428(n)²)` -/
def P1391414894940957894.Spec : Prop :=
  ∀ n, P1391414894940957894.a n = A290012 (n + 1)

end A290012

/-!
# A290015: Brazilian numbers which have exactly two Brazilian representations.

The programs for A290015, there is no canonical definition to state claims against.
-/

/-! ## A290015.P4266943197303971926

`eq[2, A220136(n+1)]+1`
-/

namespace A290015.P4266943197303971926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A290015.P4266943197303971926

/-! ## A290015.P717053682497585833

`eq[2, A220136(A028310(n))]`
-/

namespace A290015.P717053682497585833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290015.P717053682497585833

/-! ## A290015.P5292831677047771394

`A020725(eq[2, A220136(n+1)])`
-/

namespace A290015.P5292831677047771394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290015.P5292831677047771394

/-! ## A290015.P12932599283866883755

`A065475(eq[2, A220136(n+1)])`
-/

namespace A290015.P12932599283866883755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290015.P12932599283866883755

/-! ## A290015.P7490946885998897659

`A114637(eq[2, A220136(n+1)])`
-/

namespace A290015.P7490946885998897659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290015.P7490946885998897659

/-! ## A290015.P14810395838142484863

`eq[2, A220136(A233583(n+1))]`
-/

namespace A290015.P14810395838142484863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290015.P14810395838142484863

/-! ## A290015.P10204415937457630447

`eq[2, A220136(A123108(2*n))]`
-/

namespace A290015.P10204415937457630447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290015.P10204415937457630447

/-! ## A290015.P9481281656804462635

`eq[2, A220136(A000007(n)+n)]`
-/

namespace A290015.P9481281656804462635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290015.P9481281656804462635

/-!
# A290016: Brazilian numbers which have exactly three Brazilian representations.

The programs for A290016, there is no canonical definition to state claims against.
-/

/-! ## A290016.P16468494032697238320

`eq[3, A220136(n+1)]+1`
-/

namespace A290016.P16468494032697238320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A290016.P16468494032697238320

/-! ## A290016.P10778549225018985076

`eq[3, A220136(A028310(n))]`
-/

namespace A290016.P10778549225018985076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290016.P10778549225018985076

/-! ## A290016.P15195169800108855815

`A020725(eq[3, A220136(n+1)])`
-/

namespace A290016.P15195169800108855815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290016.P15195169800108855815

/-! ## A290016.P9971249686035206448

`A065475(eq[3, A220136(n+1)])`
-/

namespace A290016.P9971249686035206448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290016.P9971249686035206448

/-! ## A290016.P9896132909689512915

`A113484(eq[3, A220136(n+1)])`
-/

namespace A290016.P9896132909689512915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290016.P9896132909689512915

/-! ## A290016.P8212300443700220818

`eq[3, A220136(A233583(n+1))]`
-/

namespace A290016.P8212300443700220818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290016.P8212300443700220818

/-! ## A290016.P17243596751603927732

`eq[3, A220136(A123108(2*n))]`
-/

namespace A290016.P17243596751603927732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290016.P17243596751603927732

/-! ## A290016.P6273802540928244439

`eq[3, A220136(A000007(n)+n)]`
-/

namespace A290016.P6273802540928244439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290016.P6273802540928244439

/-!
# A290017: Brazilian numbers which have exactly four Brazilian representations.

The programs for A290017, there is no canonical definition to state claims against.
-/

/-! ## A290017.P9306692476472110840

`eq[4, A220136(n+1)]+1`
-/

namespace A290017.P9306692476472110840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A290017.P9306692476472110840

/-! ## A290017.P11015996969654569589

`eq[4, A220136(A028310(n))]`
-/

namespace A290017.P11015996969654569589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290017.P11015996969654569589

/-! ## A290017.P15716781168778461799

`A020725(eq[4, A220136(n+1)])`
-/

namespace A290017.P15716781168778461799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290017.P15716781168778461799

/-! ## A290017.P18126438817958757997

`A065475(eq[4, A220136(n+1)])`
-/

namespace A290017.P18126438817958757997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290017.P18126438817958757997

/-! ## A290017.P8966425093219378729

`A114637(eq[4, A220136(n+1)])`
-/

namespace A290017.P8966425093219378729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290017.P8966425093219378729

/-! ## A290017.P10543178874880324412

`eq[4, A220136(A123108(2*n))]`
-/

namespace A290017.P10543178874880324412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290017.P10543178874880324412

/-! ## A290017.P10646380934191489944

`A113484(eq[4, A220136(n+1)])`
-/

namespace A290017.P10646380934191489944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290017.P10646380934191489944

/-! ## A290017.P1332528026899001111

`eq[4, A220136(A233583(n+1))]`
-/

namespace A290017.P1332528026899001111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290017.P1332528026899001111

/-!
# A290018: Numbers with exactly five Brazilian representations: bases 1 < b_1 < b_2 < b_3 < b_4 < b_5 < n-1 such that n is a repdigit in base b_i.

The programs for A290018, there is no canonical definition to state claims against.
-/

/-! ## A290018.P3581259381804830853

`eq[5, A220136(n+1)]+1`
-/

namespace A290018.P3581259381804830853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A290018.P3581259381804830853

/-! ## A290018.P14655842597731199426

`eq[5, A220136(A028310(n))]`
-/

namespace A290018.P14655842597731199426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290018.P14655842597731199426

/-! ## A290018.P9657475959291192345

`A020725(eq[5, A220136(n+1)])`
-/

namespace A290018.P9657475959291192345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290018.P9657475959291192345

/-! ## A290018.P1253136006109424858

`eq[5, A220136(A000007(n)+n)]`
-/

namespace A290018.P1253136006109424858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290018.P1253136006109424858

/-! ## A290018.P16524663602408369795

`eq[5, A220136(A123108(2*n))]`
-/

namespace A290018.P16524663602408369795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290018.P16524663602408369795

/-! ## A290018.P8301559389329366543

`eq[5, A220136(A233583(n+1))]`
-/

namespace A290018.P8301559389329366543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290018.P8301559389329366543

/-!
# A290019: Sort the positive integers according to 3 keys, which are, in order of priority, number of digits, omega (A001221), and the number itself.

The programs for A290019, there is no canonical definition to state claims against.
-/

/-! ## A290019.P3692083508460724082

`A322990(A326836(n+1))%A180429(n+1)`
-/

namespace A290019.P3692083508460724082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322990 (A326836 (n + 1)).toNat) (A180429 (n + 1))

end

end A290019.P3692083508460724082

/-!
# A290021: a(0) = 1; for n > 0, a(n) = a(k) + a(m) where binomial(k + m + 2, 2) - m = n and binomial(k + m + 2, 2) is the smallest triangular number larger than or equal to m.

The programs for A290021, the canonical program `A290021.P11662465135056403279` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290021 has offset 0).

The definition of A290021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290021.P11662465135056403279

`A071673(n)+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A290021

/-- `A071673(n)+1` -/
def P11662465135056403279.Spec : Prop :=
  ∀ n, P11662465135056403279.a n = A290021 n

theorem P11662465135056403279.correct : P11662465135056403279.Spec := by
  intro n
  simp only [A290021]

end A290021

/-! ## A290021.P15754037020993680426

`A008619(2*A071673(n))`
-/

namespace A290021.P15754037020993680426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A071673 n).toNat

end

end A290021.P15754037020993680426

namespace A290021

/-- `A008619(2*A071673(n))` -/
def P15754037020993680426.Spec : Prop :=
  ∀ n, P15754037020993680426.a n = A290021 n

end A290021

/-! ## A290021.P9183309523214928682

`A008620(3*A071673(n))`
-/

namespace A290021.P9183309523214928682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A071673 n).toNat

end

end A290021.P9183309523214928682

namespace A290021

/-- `A008620(3*A071673(n))` -/
def P9183309523214928682.Spec : Prop :=
  ∀ n, P9183309523214928682.a n = A290021 n

end A290021

/-! ## A290021.P13216769246391716227

`A122918(3*A071673(n))`
-/

namespace A290021.P13216769246391716227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122918 (3 * A071673 n).toNat

end

end A290021.P13216769246391716227

namespace A290021

/-- `A122918(3*A071673(n))` -/
def P13216769246391716227.Spec : Prop :=
  ∀ n, P13216769246391716227.a n = A290021 n

end A290021

/-! ## A290021.P11714803886489228310

`A000005(2^A071673(n))`
-/

namespace A290021.P11714803886489228310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A071673 n : ℤ))).toNat

end

end A290021.P11714803886489228310

namespace A290021

/-- `A000005(2^A071673(n))` -/
def P11714803886489228310.Spec : Prop :=
  ∀ n, P11714803886489228310.a n = A290021 n

end A290021

/-! ## A290021.P7114473108113203402

`A000124(n)-(∑[n]-A071673(n))`
-/

namespace A290021.P7114473108113203402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A071673 n)

end

end A290021.P7114473108113203402

namespace A290021

/-- `A000124(n)-(∑[n]-A071673(n))` -/
def P7114473108113203402.Spec : Prop :=
  ∀ n, P7114473108113203402.a n = A290021 n

end A290021

/-! ## A290021.P3550413544507565571

`a(A025581(n-1))+a(A002262(n-1))` with `a(0)=1`
-/

namespace A290021.P3550413544507565571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A025581 (n - 1)).toNat + a (A002262 (n - 1)).toNat

end

end A290021.P3550413544507565571

namespace A290021

/-- `a(A025581(n-1))+a(A002262(n-1))` -/
def P3550413544507565571.Spec : Prop :=
  ∀ n, (P3550413544507565571.a n : ℤ) = A290021 n

end A290021

/-! ## A290021.P8387649404118646817

`A001222(2*2^A071673(n))`
-/

namespace A290021.P8387649404118646817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (A071673 n : ℤ))).toNat

end

end A290021.P8387649404118646817

namespace A290021

/-- `A001222(2*2^A071673(n))` -/
def P8387649404118646817.Spec : Prop :=
  ∀ n, P8387649404118646817.a n = A290021 n

end A290021

/-! ## A290021.P15078172186486969827

`A018892(2^A071673(n))`
-/

namespace A290021.P15078172186486969827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A071673 n : ℤ))).toNat

end

end A290021.P15078172186486969827

namespace A290021

/-- `A018892(2^A071673(n))` -/
def P15078172186486969827.Spec : Prop :=
  ∀ n, P15078172186486969827.a n = A290021 n

end A290021

/-! ## A290021.P12688407951902740940

`∑{d}[A122803(A071673(n)), A030101(#)]`
-/

namespace A290021.P12688407951902740940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (A071673 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A030101 d

end

end A290021.P12688407951902740940

namespace A290021

/-- `∑{d}[A122803(A071673(n)), A030101(#)]` -/
def P12688407951902740940.Spec : Prop :=
  ∀ n, P12688407951902740940.a n = A290021 n

end A290021

/-! ## A290021.P1627337100000693623

`A000051(n)-(A000079(n)-A071673(n))`
-/

namespace A290021.P1627337100000693623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A000079 n - A071673 n)

end

end A290021.P1627337100000693623

namespace A290021

/-- `A000051(n)-(A000079(n)-A071673(n))` -/
def P1627337100000693623.Spec : Prop :=
  ∀ n, P1627337100000693623.a n = A290021 n

theorem P1627337100000693623.correct : P1627337100000693623.Spec := by
  intro n
  simp only [A290021, Nat.add_sub_cancel, A290021.P1627337100000693623.a, A290021.P11662465135056403279.a, A000051, A000051.P14067217022188782580.a, A000079, A000079.P10855139691139572931.a, A071673, A071673.P16572548944788639740.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A290021

/-! ## A290021.P1365598579643965212

`A072643(A071652(n))+1`
-/

namespace A290021.P1365598579643965212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A071652 n).toNat + 1

end

end A290021.P1365598579643965212

namespace A290021

/-- `A072643(A071652(n))+1` -/
def P1365598579643965212.Spec : Prop :=
  ∀ n, P1365598579643965212.a n = A290021 n

end A290021

/-! ## A290021.P12874423794949215009

`A072643(A071654(n))+1`
-/

namespace A290021.P12874423794949215009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A071654 n).toNat + 1

end

end A290021.P12874423794949215009

namespace A290021

/-- `A072643(A071654(n))+1` -/
def P12874423794949215009.Spec : Prop :=
  ∀ n, P12874423794949215009.a n = A290021 n

end A290021

/-! ## A290021.P3490405127598792098

`A002024(A153249(A071673(n)²))`
-/

namespace A290021.P3490405127598792098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A153249 (A071673 n ^ 2).toNat).toNat

end

end A290021.P3490405127598792098

namespace A290021

/-- `A002024(A153249(A071673(n)²))` -/
def P3490405127598792098.Spec : Prop :=
  ∀ n, P3490405127598792098.a n = A290021 n

end A290021

/-! ## A290021.P8151281341668887524

`A071673(A000124(n))`
-/

namespace A290021.P8151281341668887524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (A000124 n).toNat

end

end A290021.P8151281341668887524

namespace A290021

/-- `A071673(A000124(n))` -/
def P8151281341668887524.Spec : Prop :=
  ∀ n, P8151281341668887524.a n = A290021 n

end A290021

/-!
# A290022: Prime numbers of the form 6^k - 7.

The programs for A290022, there is no canonical definition to state claims against.
-/

/-! ## A290022.P2251416689302800466

`6^A217352(n+1)-7`
-/

namespace A290022.P2251416689302800466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A217352 (n + 1) : ℤ) - 7

end

end A290022.P2251416689302800466

/-! ## A290022.P15926691084601371632

`A000400(A217352(n+1))-7`
-/

namespace A290022.P15926691084601371632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A217352 (n + 1)).toNat - 7

end

end A290022.P15926691084601371632

/-!
# A290023: a(n) is the 2n-th derivative of the difference between the n-th tetration of x (power tower of order n) and its predecessor (or 0 if n=0) at x=1.

The programs for A290023, there is no canonical definition to state claims against.
-/

/-! ## A290023.P12945061465471399512

`A277536(∑[4*n])`
-/

namespace A290023.P12945061465471399512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277536 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290023.P12945061465471399512

/-! ## A290023.P8567816003424252050

`abs(A277536(A046092(n)))`
-/

namespace A290023.P8567816003424252050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A277536 (A046092 n).toNat|

end

end A290023.P8567816003424252050

/-! ## A290023.P14526633209508259443

`abs(A277536(A001844(n)-1))`
-/

namespace A290023.P14526633209508259443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A277536 (A001844 n - 1).toNat|

end

end A290023.P14526633209508259443

/-! ## A290023.P17059040611131751904

`lcm(A000142(n), A277536(A046092(n)))`
-/

namespace A290023.P17059040611131751904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000142 n) (A277536 (A046092 n).toNat)

end

end A290023.P17059040611131751904

/-! ## A290023.P6349623660322177509

`and(-A000005(n+1), A277536(A046092(n)))`
-/

namespace A290023.P6349623660322177509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000005 (n + 1)) (A277536 (A046092 n).toNat)

end

end A290023.P6349623660322177509

/-!
# A290024: Number of permutations in S_n that are factorials of permutations in lexicographic order.

The programs for A290024, there is no canonical definition to state claims against.
-/

/-! ## A290024.P8842051138728069832

`A194920(A358500(n)+A358498(n))`
-/

namespace A290024.P8842051138728069832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A358500 n + A358498 n).toNat

end

end A290024.P8842051138728069832

/-! ## A290024.P3963554048326948372

`A014522(n)-A059906(A339065(n))`
-/

namespace A290024.P3963554048326948372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014522 n - A059906 (A339065 n).toNat

end

end A290024.P3963554048326948372

/-! ## A290024.P4580771563133314612

`A348878(n)-A374516(A006749(n+1))`
-/

namespace A290024.P4580771563133314612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348878 n - A374516 (A006749 (n + 1)).toNat

end

end A290024.P4580771563133314612

/-!
# A290025: The partial sums of 2^d(n) where d(n) is the n-th digit of the concatenated triangular numbers, and d(1)=0.

The programs for A290025, there is no canonical definition to state claims against.
-/

/-! ## A290025.P5519043730949209284

`∑[2^A034004(n+1)]`
-/

namespace A290025.P5519043730949209284
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A034004 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290025.P5519043730949209284

/-!
# A290026: Number of 3-cycles in the n-halved cube graph.

The programs for A290026, the canonical program `A290026.P12125621906110631631` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290026 has offset 1).

The definition of A290026 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290026.P6399260453693672889

`2^n*C(n+1, 3)`
-/

namespace A290026.P6399260453693672889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.choose (n + 1) 3

end

end A290026.P6399260453693672889

namespace A290026

/-- `2^n*C(n+1, 3)` -/
def P6399260453693672889.Spec : Prop :=
  ∀ n, (P6399260453693672889.a n : ℤ) = A290026 (n + 1)

end A290026

/-! ## A290026.P12125621906110631631

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=32`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290026

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P12125621906110631631.Spec : Prop :=
  ∀ n, P12125621906110631631.a n = A290026 (n + 1)

theorem P12125621906110631631.correct : P12125621906110631631.Spec := by
  intro n
  simp only [A290026, Nat.add_sub_cancel]

end A290026

/-! ## A290026.P2006388871957506786

`2^n*∑[C(n, 2)]`
-/

namespace A290026.P2006388871957506786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290026.P2006388871957506786

namespace A290026

/-- `2^n*∑[C(n, 2)]` -/
def P2006388871957506786.Spec : Prop :=
  ∀ n, (P2006388871957506786.a n : ℤ) = A290026 (n + 1)

end A290026

/-! ## A290026.P17016213054052262041

`∑[C(n, 2)]/2^-n`
-/

namespace A290026.P17016213054052262041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A290026.P17016213054052262041

namespace A290026

/-- `∑[C(n, 2)]/2^-n` -/
def P17016213054052262041.Spec : Prop :=
  ∀ n, P17016213054052262041.a n = (A290026 (n + 1) : ℚ)

end A290026

/-! ## A290026.P13635256488945998740

`2^n*∑[∑[n]-n]`
-/

namespace A290026.P13635256488945998740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290026.P13635256488945998740

namespace A290026

/-- `2^n*∑[∑[n]-n]` -/
def P13635256488945998740.Spec : Prop :=
  ∀ n, P13635256488945998740.a n = A290026 (n + 1)

end A290026

/-! ## A290026.P16155973354389705827

`C(n+1, 3)/2^-n`
-/

namespace A290026.P16155973354389705827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 3 : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A290026.P16155973354389705827

namespace A290026

/-- `C(n+1, 3)/2^-n` -/
def P16155973354389705827.Spec : Prop :=
  ∀ n, P16155973354389705827.a n = (A290026 (n + 1) : ℚ)

end A290026

/-! ## A290026.P15214798298260765815

`A331408(Δ[n²])`
-/

namespace A290026.P15214798298260765815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331408 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A290026.P15214798298260765815

namespace A290026

/-- `A331408(Δ[n²])` -/
def P15214798298260765815.Spec : Prop :=
  ∀ n, P15214798298260765815.a n = A290026 (n + 1)

end A290026

/-! ## A290026.P2158441030315934163

`lcm(2, A331408(2*n+1))`
-/

namespace A290026.P2158441030315934163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A331408 (2 * n + 1))

end

end A290026.P2158441030315934163

namespace A290026

/-- `lcm(2, A331408(2*n+1))` -/
def P2158441030315934163.Spec : Prop :=
  ∀ n, (P2158441030315934163.a n : ℤ) = A290026 (n + 1)

end A290026

/-! ## A290026.P10606598146391507889

`∑[(∑[∑[n]]-n)*A131577(n)]`
-/

namespace A290026.P10606598146391507889
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)) * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290026.P10606598146391507889

namespace A290026

/-- `∑[(∑[∑[n]]-n)*A131577(n)]` -/
def P10606598146391507889.Spec : Prop :=
  ∀ n, P10606598146391507889.a n = A290026 (n + 1)

end A290026

/-! ## A290026.P17873957197801428562

`a(n-1)+A100381(n)+a(n-1)` with `a(0)=0`
-/

namespace A290026.P17873957197801428562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A100381 n + a (n - 1))

end

end A290026.P17873957197801428562

namespace A290026

/-- `a(n-1)+A100381(n)+a(n-1)` -/
def P17873957197801428562.Spec : Prop :=
  ∀ n, P17873957197801428562.a n = A290026 (n + 1)

end A290026

/-! ## A290026.P10064903199984530235

`A087076(n)-A001788(n)`
-/

namespace A290026.P10064903199984530235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087076 n - A001788 n

end

end A290026.P10064903199984530235

namespace A290026

/-- `A087076(n)-A001788(n)` -/
def P10064903199984530235.Spec : Prop :=
  ∀ n, P10064903199984530235.a n = A290026 (n + 1)

end A290026

/-! ## A290026.P6492782837199227538

`A001789(n+3)-A014477(n)`
-/

namespace A290026.P6492782837199227538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001789 (n + 3) - A014477 n

end

end A290026.P6492782837199227538

namespace A290026

/-- `A001789(n+3)-A014477(n)` -/
def P6492782837199227538.Spec : Prop :=
  ∀ n, P6492782837199227538.a n = A290026 (n + 1)

end A290026

/-! ## A290026.P17297873189847411747

`∑[(A000292(n)-n)*A011782(n)]`
-/

namespace A290026.P17297873189847411747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000292 n - (n : ℤ)) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290026.P17297873189847411747

namespace A290026

/-- `∑[(A000292(n)-n)*A011782(n)]` -/
def P17297873189847411747.Spec : Prop :=
  ∀ n, P17297873189847411747.a n = A290026 (n + 1)

end A290026

/-! ## A290026.P632612572299547963

`A001789(n+3)-A000079(n)*(n+1)²`
-/

namespace A290026.P632612572299547963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001789 (n + 3) - A000079 n * ((n + 1) ^ 2 : ℤ)

end

end A290026.P632612572299547963

namespace A290026

/-- `A001789(n+3)-A000079(n)*(n+1)²` -/
def P632612572299547963.Spec : Prop :=
  ∀ n, P632612572299547963.a n = A290026 (n + 1)

end A290026

/-! ## A290026.P16565462649341609941

`A331408(2*(n+1))/2`
-/

namespace A290026.P16565462649341609941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331408 (2 * (n + 1)) : ℚ) / 2

end

end A290026.P16565462649341609941

namespace A290026

/-- `A331408(2*(n+1))/2` -/
def P16565462649341609941.Spec : Prop :=
  ∀ n, P16565462649341609941.a n = (A290026 (n + 1) : ℚ)

end A290026

/-! ## A290026.P7336751644196703633

`2*A052771(n+1)/3`
-/

namespace A290026.P7336751644196703633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A052771 (n + 1) : ℚ) / 3

end

end A290026.P7336751644196703633

namespace A290026

/-- `2*A052771(n+1)/3` -/
def P7336751644196703633.Spec : Prop :=
  ∀ n, P7336751644196703633.a n = (A290026 (n + 1) : ℚ)

end A290026

/-! ## A290026.P3119601854591609355

`(n+1)*A100381(n)/3`
-/

namespace A290026.P3119601854591609355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A100381 n : ℚ) / 3

end

end A290026.P3119601854591609355

namespace A290026

/-- `(n+1)*A100381(n)/3` -/
def P3119601854591609355.Spec : Prop :=
  ∀ n, P3119601854591609355.a n = (A290026 (n + 1) : ℚ)

end A290026

/-! ## A290026.P9260844554463737494

`(n-1)*A001815(n+1)/3`
-/

namespace A290026.P9260844554463737494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * A001815 (n + 1) : ℚ) / 3

end

end A290026.P9260844554463737494

namespace A290026

/-- `(n-1)*A001815(n+1)/3` -/
def P9260844554463737494.Spec : Prop :=
  ∀ n, P9260844554463737494.a n = (A290026 (n + 1) : ℚ)

end A290026

/-! ## A290026.P7899521404186659803

`∑[n²-n]*A000079(n)/2`
-/

namespace A290026.P7899521404186659803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n : ℤ) : ℚ) / 2

end

end A290026.P7899521404186659803

namespace A290026

/-- `∑[n²-n]*A000079(n)/2` -/
def P7899521404186659803.Spec : Prop :=
  ∀ n, P7899521404186659803.a n = (A290026 (n + 1) : ℚ)

end A290026

/-! ## A290026.P17084737343294446130

`2^n/3*A007531(n+1)/2`
-/

namespace A290026.P17084737343294446130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3 * (A007531 (n + 1) : ℚ) / 2

end

end A290026.P17084737343294446130

namespace A290026

/-- `2^n/3*A007531(n+1)/2` -/
def P17084737343294446130.Spec : Prop :=
  ∀ n, P17084737343294446130.a n = (A290026 (n + 1) : ℚ)

theorem P17084737343294446130.correct : P17084737343294446130.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A290026, Nat.add_sub_cancel, A290026.P17084737343294446130.a, A290026.P12125621906110631631.a, A007531, A007531.P15538264737483534371.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A290026, Nat.add_sub_cancel, A290026.P17084737343294446130.a, A290026.P12125621906110631631.a, A007531, A007531.P15538264737483534371.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A290026

/-!
# A290027: Number of 4-cycles in the n-halved cube graph.

The programs for A290027, the canonical program `A290027.P16854549035411927076` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290027 has offset 1).

The definition of A290027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290027.P16854549035411927076

`3*2^(n-4)*C(n+1, 3)*(13*(n+1)-35)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290027

/-- `3*2^(n-4)*C(n+1, 3)*(13*(n+1)-35)` -/
def P16854549035411927076.Spec : Prop :=
  ∀ n, P16854549035411927076.a n = (A290027 (n + 1) : ℚ)

end A290027

/-!
# A290028: Number of 5-cycles in the n-halved cube graph.

The programs for A290028, the canonical program `A290028.P4543954558350385794` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290028 has offset 1).

The definition of A290028 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290028.P4543954558350385794

`3*2^(n+1)*C(n+1, 4)*(29*(n+1)-86)/5`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290028

/-- `3*2^(n+1)*C(n+1, 4)*(29*(n+1)-86)/5` -/
def P4543954558350385794.Spec : Prop :=
  ∀ n, P4543954558350385794.a n = (A290028 (n + 1) : ℚ)

end A290028

/-!
# A290029: Number of 6-cycles in the n-halved cube graph.

The programs for A290029, the canonical program `A290029.P2211199332680037998` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290029 has offset 1).

The definition of A290029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290029.P2211199332680037998

`2^(n+1)*C(n+1, 4)*(81*(n+1)²-552*(n+1)+952)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290029

/-- `2^(n+1)*C(n+1, 4)*(81*(n+1)²-552*(n+1)+952)` -/
def P2211199332680037998.Spec : Prop :=
  ∀ n, P2211199332680037998.a n = A290029 (n + 1)

theorem P2211199332680037998.correct : P2211199332680037998.Spec := by
  intro n
  simp only [A290029, Nat.add_sub_cancel]

end A290029

/-!
# A290030: Leading coefficients of numerators of Norlund's B_{nu}^(n) polynomials (Nørlund, Tafel 5, p. 459).

The programs for A290030, there is no canonical definition to state claims against.
-/

/-! ## A290030.P17268512804198329772

`A144845(n)/A122803(n)*A341109(n)`
-/

namespace A290030.P17268512804198329772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A122803 n : ℚ) * (A341109 n : ℚ)

end

end A290030.P17268512804198329772

/-! ## A290030.P17546105959061035619

`A001898(n)/A122803(n)`
-/

namespace A290030.P17546105959061035619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001898 n : ℚ) / (A122803 n : ℚ)

end

end A290030.P17546105959061035619

/-! ## A290030.P8581879292445961168

`A001898(n)/Δ[A084247(n)]`
-/

namespace A290030.P8581879292445961168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001898 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A290030.P8581879292445961168

/-! ## A290030.P16865303094915909096

`(n+1)/A122803(n)*A163176(n+1)`
-/

namespace A290030.P16865303094915909096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A122803 n : ℚ) * (A163176 (n + 1) : ℚ)

end

end A290030.P16865303094915909096

/-! ## A290030.P3499285515534768951

`A001898(n)/A123876(∑[n])`
-/

namespace A290030.P3499285515534768951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001898 n : ℚ) / (A123876 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A290030.P3499285515534768951

/-!
# A290031: Number of 6-cycles in the n-hypercube graph.

The programs for A290031, the canonical program `A290031.P11188334914464403451` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290031 has offset 0).

The definition of A290031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290031.P11188334914464403451

`2^(n+1)*C(n, 3)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290031

/-- `2^(n+1)*C(n, 3)` -/
def P11188334914464403451.Spec : Prop :=
  ∀ n, (P11188334914464403451.a n : ℤ) = A290031 n

theorem P11188334914464403451.correct : P11188334914464403451.Spec := by
  intro n
  simp only [A290031]

end A290031

/-! ## A290031.P5990685807841594332

`2*2^n*C(n, 3)`
-/

namespace A290031.P5990685807841594332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 ^ n * Nat.choose n 3)

end

end A290031.P5990685807841594332

namespace A290031

/-- `2*2^n*C(n, 3)` -/
def P5990685807841594332.Spec : Prop :=
  ∀ n, (P5990685807841594332.a n : ℤ) = A290031 n

theorem P5990685807841594332.correct : P5990685807841594332.Spec := by
  intro n
  simp only [A290031, Nat.add_sub_cancel, A290031.P5990685807841594332.a, A290031.P11188334914464403451.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A290031

/-! ## A290031.P13569848811550160422

`C(n, 3)/2^-(n+1)`
-/

namespace A290031.P13569848811550160422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℚ) / (2 : ℚ) ^ (-(n + 1 : ℤ) : ℤ)

end

end A290031.P13569848811550160422

namespace A290031

/-- `C(n, 3)/2^-(n+1)` -/
def P13569848811550160422.Spec : Prop :=
  ∀ n, P13569848811550160422.a n = (A290031 n : ℚ)

theorem P13569848811550160422.correct : P13569848811550160422.Spec := by
  intro n
  simp only [A290031, Nat.add_sub_cancel, A290031.P13569848811550160422.a, A290031.P11188334914464403451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A290031

/-! ## A290031.P3976273757763372881

`(∑[∑[n]]-n²)*2^(n+1)`
-/

namespace A290031.P3976273757763372881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)) * (2 ^ (n + 1) : ℤ)

end

end A290031.P3976273757763372881

namespace A290031

/-- `(∑[∑[n]]-n²)*2^(n+1)` -/
def P3976273757763372881.Spec : Prop :=
  ∀ n, P3976273757763372881.a n = A290031 n

end A290031

/-! ## A290031.P10395346813856715730

`A007290(n)/(1-1/2)^n`
-/

namespace A290031.P10395346813856715730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007290 n : ℚ) / (1 - (1 : ℚ) / 2) ^ n

end

end A290031.P10395346813856715730

namespace A290031

/-- `A007290(n)/(1-1/2)^n` -/
def P10395346813856715730.Spec : Prop :=
  ∀ n, P10395346813856715730.a n = (A290031 n : ℚ)

end A290031

/-! ## A290031.P3600994172285495602

`C(n, 3)+C(n, 3)*A000225(n+1)`
-/

namespace A290031.P3600994172285495602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) + (Nat.choose n 3 : ℤ) * A000225 (n + 1)

end

end A290031.P3600994172285495602

namespace A290031

/-- `C(n, 3)+C(n, 3)*A000225(n+1)` -/
def P3600994172285495602.Spec : Prop :=
  ∀ n, P3600994172285495602.a n = A290031 n

theorem P3600994172285495602.correct : P3600994172285495602.Spec := by
  intro n
  simp only [A290031, Nat.add_sub_cancel, A290031.P3600994172285495602.a, A290031.P11188334914464403451.a, A000225, A000225.P6535533121115206393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A290031

/-! ## A290031.P4434249844949747742

`abs(Δ[A000051(n)]*A007290(n))`
-/

namespace A290031.P4434249844949747742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A007290 n|

end

end A290031.P4434249844949747742

namespace A290031

/-- `abs(Δ[A000051(n)]*A007290(n))` -/
def P4434249844949747742.Spec : Prop :=
  ∀ n, P4434249844949747742.a n = A290031 n

end A290031

/-! ## A290031.P15163954518374286375

`A000079(n+1)*A050407(n+1)-A000079(n+1)`
-/

namespace A290031.P15163954518374286375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A050407 (n + 1) - A000079 (n + 1)

end

end A290031.P15163954518374286375

namespace A290031

/-- `A000079(n+1)*A050407(n+1)-A000079(n+1)` -/
def P15163954518374286375.Spec : Prop :=
  ∀ n, P15163954518374286375.a n = A290031 n

end A290031

/-! ## A290031.P755719442017645405

`n*A181407(n+2)/3`
-/

namespace A290031.P755719442017645405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A181407 (n + 2) : ℚ) / 3

end

end A290031.P755719442017645405

namespace A290031

/-- `n*A181407(n+2)/3` -/
def P755719442017645405.Spec : Prop :=
  ∀ n, P755719442017645405.a n = (A290031 n : ℚ)

end A290031

/-! ## A290031.P189181885279368954

`(n-2)*A128796(n)/3`
-/

namespace A290031.P189181885279368954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * A128796 n : ℚ) / 3

end

end A290031.P189181885279368954

namespace A290031

/-- `(n-2)*A128796(n)/3` -/
def P189181885279368954.Spec : Prop :=
  ∀ n, P189181885279368954.a n = (A290031 n : ℚ)

theorem P189181885279368954.correct : P189181885279368954.Spec := by
  intro n
  simp only [A290031, Nat.add_sub_cancel, A290031.P189181885279368954.a, A290031.P11188334914464403451.a, A128796, A128796.P2345555735138113176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A290031

/-! ## A290031.P4762202746902567866

`2^n*A007531(n)/3`
-/

namespace A290031.P4762202746902567866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) * A007531 n : ℚ) / 3

end

end A290031.P4762202746902567866

namespace A290031

/-- `2^n*A007531(n)/3` -/
def P4762202746902567866.Spec : Prop :=
  ∀ n, P4762202746902567866.a n = (A290031 n : ℚ)

theorem P4762202746902567866.correct : P4762202746902567866.Spec := by
  intro n
  simp only [A290031, Nat.add_sub_cancel, A290031.P4762202746902567866.a, A290031.P11188334914464403451.a, A007531, A007531.P15538264737483534371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A290031

/-! ## A290031.P9603038745418141153

`A000079(n+1)*A014557(2*n)/2`
-/

namespace A290031.P9603038745418141153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) * A014557 (2 * n) : ℚ) / 2

end

end A290031.P9603038745418141153

namespace A290031

/-- `A000079(n+1)*A014557(2*n)/2` -/
def P9603038745418141153.Spec : Prop :=
  ∀ n, P9603038745418141153.a n = (A290031 n : ℚ)

end A290031

/-! ## A290031.P9061737507929594267

`A351632(n+1)/A060798(n+1)`
-/

namespace A290031.P9061737507929594267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351632 (n + 1) : ℚ) / (A060798 (n + 1) : ℚ)

end

end A290031.P9061737507929594267

namespace A290031

/-- `A351632(n+1)/A060798(n+1)` -/
def P9061737507929594267.Spec : Prop :=
  ∀ n, P9061737507929594267.a n = (A290031 n : ℚ)

end A290031

/-!
# A290032: a(0)=0; for n > 0, a(n) is the sum of the partial sums of binary digits of a(n-1) + 1, starting from the least significant digit, and given weights 1, 2, 2^2, etc.

The programs for A290032, there is no canonical definition to state claims against.
-/

/-! ## A290032.P2169499253772017084

`A045917(A351813(n+1))`
-/

namespace A290032.P2169499253772017084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A351813 (n + 1)).toNat

end

end A290032.P2169499253772017084

/-! ## A290032.P717789993085890362

`A048865(A281429(n))+n`
-/

namespace A290032.P717789993085890362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A281429 n).toNat + (n : ℤ)

end

end A290032.P717789993085890362

/-! ## A290032.P4568711746557487170

`A345167(A165200(n))+n`
-/

namespace A290032.P4568711746557487170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A165200 n).toNat + (n : ℤ)

end

end A290032.P4568711746557487170

/-!
# A290034: Number of set partitions of [n] having exactly five blocks of size > 1.

The programs for A290034, there is no canonical definition to state claims against.
-/

/-! ## A290034.P10226850682160704774

`A124324(eq[5, A055087(n)])`
-/

namespace A290034.P10226850682160704774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290034.P10226850682160704774

/-!
# A290035: Number of set partitions of [n] having exactly six blocks of size > 1.

The programs for A290035, there is no canonical definition to state claims against.
-/

/-! ## A290035.P7035170768905449806

`A124324(eq[6, A055087(n)])`
-/

namespace A290035.P7035170768905449806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290035.P7035170768905449806

/-!
# A290036: Number of set partitions of [n] having exactly seven blocks of size > 1.

The programs for A290036, there is no canonical definition to state claims against.
-/

/-! ## A290036.P189291669519081765

`A124324(eq[7, A055087(n)])`
-/

namespace A290036.P189291669519081765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290036.P189291669519081765

/-!
# A290037: Number of set partitions of [n] having exactly eight blocks of size > 1.

The programs for A290037, there is no canonical definition to state claims against.
-/

/-! ## A290037.P7530962518513185296

`A124324(eq[8, A055087(n)])`
-/

namespace A290037.P7530962518513185296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290037.P7530962518513185296

/-!
# A290038: Number of set partitions of [n] having exactly nine blocks of size > 1.

The programs for A290038, there is no canonical definition to state claims against.
-/

/-! ## A290038.P7279880242309444635

`A124324(eq[9, A055087(n)])`
-/

namespace A290038.P7279880242309444635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290038.P7279880242309444635

/-!
# A290042: a(n) = product of n consecutive primes starting with nextprime(a(n-1)), with a(0) = 1.

The programs for A290042, there is no canonical definition to state claims against.
-/

/-! ## A290042.P11569728632810080925

`A290043(A000124(n))-A037444(n)`
-/

namespace A290042.P11569728632810080925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290043 (A000124 n).toNat - A037444 n

end

end A290042.P11569728632810080925

/-!
# A290043: Prime factors of A290042.

The programs for A290043, there is no canonical definition to state claims against.
-/

/-! ## A290043.P583215321564742728

`p?[∑[A052512(A083202(n))]]`
-/

namespace A290043.P583215321564742728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052512 (A083202 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290043.P583215321564742728

/-!
# A290044: a(n) = |Sum_{k=0..n} (-1)^k*(2k)!!|.

The programs for A290044, there is no canonical definition to state claims against.
-/

/-! ## A290044.P17005457031987512424

`abs(∑[A136668(A084849(n))])`
-/

namespace A290044.P17005457031987512424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136668 (A084849 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A290044.P17005457031987512424

/-! ## A290044.P14530648399863625200

`A286724(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A290044.P14530648399863625200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A286724 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A290044.P14530648399863625200

/-! ## A290044.P5277288070431790315

`2*A000203(A001147(n))-a(n-1)` with `a(0)=1`
-/

namespace A290044.P5277288070431790315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A000203 (A001147 n).toNat - a (n - 1)

end

end A290044.P5277288070431790315

/-!
# A290052: Number of X-rays of n X n binary matrices with exactly n ones.

The programs for A290052, there is no canonical definition to state claims against.
-/

/-! ## A290052.P8537164478737064377

`A290057(∑[n²])`
-/

namespace A290052.P8537164478737064377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290057 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290052.P8537164478737064377

/-! ## A290052.P10259465825807920276

`A290057(A000330(n))%A066142(n)`
-/

namespace A290052.P10259465825807920276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290057 (A000330 n).toNat) (A066142 n)

end

end A290052.P10259465825807920276

/-! ## A290052.P4689958333082800766

`lcm(A033999(n), A290057(A000330(n)))`
-/

namespace A290052.P4689958333082800766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A290057 (A000330 n).toNat)

end

end A290052.P4689958333082800766

/-! ## A290052.P2428094323984143935

`A290057(A000330(n))-A154281(3*n+2)`
-/

namespace A290052.P2428094323984143935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290057 (A000330 n).toNat - A154281 (3 * n + 2)

end

end A290052.P2428094323984143935

/-!
# A290054: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of (Sum_{j>=0} x^(j^3))^k.

The programs for A290054, there is no canonical definition to state claims against.
-/

/-! ## A290054.P7078165476615284171

`A185284(A205573(n))+A052553(n)`
-/

namespace A290054.P7078165476615284171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A205573 n).toNat + A052553 n

end

end A290054.P7078165476615284171

/-! ## A290054.P408423858822122168

`A052553(n)^A186726(A068385(n+1))`
-/

namespace A290054.P408423858822122168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052553 n : ℚ) ^ (A186726 (A068385 (n + 1)).toNat : ℤ)

end

end A290054.P408423858822122168

/-! ## A290054.P12514293922221090008

`A052553(n)^A053840(A309858(n))`
-/

namespace A290054.P12514293922221090008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052553 n : ℚ) ^ (A053840 (A309858 n).toNat : ℤ)

end

end A290054.P12514293922221090008

/-! ## A290054.P18384670680091359013

`or(A025469(A047812(n+1)), A052553(n))`
-/

namespace A290054.P18384670680091359013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 (A047812 (n + 1)).toNat) (A052553 n)

end

end A290054.P18384670680091359013

/-! ## A290054.P6369591461286479441

`A321537(A001511(A000009(n)))+A052553(n)`
-/

namespace A290054.P6369591461286479441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 (A001511 (A000009 n).toNat).toNat + A052553 n

end

end A290054.P6369591461286479441

/-! ## A290054.P14426918586524579294

`A052553(n)+A025909(A304465(A121061(n+1)))`
-/

namespace A290054.P14426918586524579294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n + A025909 (A304465 (A121061 (n + 1)).toNat).toNat

end

end A290054.P14426918586524579294

/-! ## A290054.P13171625205659009020

`A341995(A322553(n+1))+A052553(n)`
-/

namespace A290054.P13171625205659009020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341995 (A322553 (n + 1)).toNat + A052553 n

end

end A290054.P13171625205659009020

/-!
# A290055: Expansion of x*(1 + 4*x + x^2)/((1 - x)^5*(1 + x)^4).

The programs for A290055, the canonical program `A290055.P1787559497525897581` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290055 has offset 0).

The definition of A290055 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+4x^2+x^3)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))` (program `A290055.P1787559497525897581`, by `A290055.P1787559497525897581.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A290055.P1787559497525897581

`ogf((x+4x^2+x^3)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290055

/-- `ogf((x+4x^2+x^3)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))` -/
def P1787559497525897581.Spec : Prop :=
  ∀ n, P1787559497525897581.a n = A290055 n

theorem P1787559497525897581.correct : P1787559497525897581.Spec := by
  intro n
  simp only [A290055]

end A290055

/-! ## A290055.P12727281191958805709

`∑[gcd(2, n)*A006918(n)]`
-/

namespace A290055.P12727281191958805709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290055.P12727281191958805709

namespace A290055

/-- `∑[gcd(2, n)*A006918(n)]` -/
def P12727281191958805709.Spec : Prop :=
  ∀ n, P12727281191958805709.a n = A290055 n

end A290055

/-! ## A290055.P17283562416807351737

`∑[A006918(n)*A040001(n)]`
-/

namespace A290055.P17283562416807351737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n * A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290055.P17283562416807351737

namespace A290055

/-- `∑[A006918(n)*A040001(n)]` -/
def P17283562416807351737.Spec : Prop :=
  ∀ n, P17283562416807351737.a n = A290055 n

end A290055

/-! ## A290055.P13249061219571941108

`∑[A006918(n)*A134451(n)]`
-/

namespace A290055.P13249061219571941108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n * A134451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290055.P13249061219571941108

namespace A290055

/-- `∑[A006918(n)*A134451(n)]` -/
def P13249061219571941108.Spec : Prop :=
  ∀ n, P13249061219571941108.a n = A290055 n

end A290055

/-! ## A290055.P12119354649261648746

`∑[∑[A229834(n)]-A229834(n)]`
-/

namespace A290055.P12119354649261648746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229834 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A229834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290055.P12119354649261648746

namespace A290055

/-- `∑[∑[A229834(n)]-A229834(n)]` -/
def P12119354649261648746.Spec : Prop :=
  ∀ n, P12119354649261648746.a n = A290055 n

end A290055

/-! ## A290055.P10472943195614932666

`∑[Δ[A007494(n)]*A006918(n)]`
-/

namespace A290055.P10472943195614932666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290055.P10472943195614932666

namespace A290055

/-- `∑[Δ[A007494(n)]*A006918(n)]` -/
def P10472943195614932666.Spec : Prop :=
  ∀ n, P10472943195614932666.a n = A290055 n

end A290055

/-! ## A290055.P14590806738777548394

`∑[(A059841(n)+1)*A006918(n)]`
-/

namespace A290055.P14590806738777548394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059841 n + 1) * A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290055.P14590806738777548394

namespace A290055

/-- `∑[(A059841(n)+1)*A006918(n)]` -/
def P14590806738777548394.Spec : Prop :=
  ∀ n, P14590806738777548394.a n = A290055 n

end A290055

/-! ## A290055.P11300524869689406147

`∑[(2-A000035(n))*A006918(n)]`
-/

namespace A290055.P11300524869689406147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000035 n) * A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290055.P11300524869689406147

namespace A290055

/-- `∑[(2-A000035(n))*A006918(n)]` -/
def P11300524869689406147.Spec : Prop :=
  ∀ n, P11300524869689406147.a n = A290055 n

end A290055

/-! ## A290055.P540567383963710929

`∑[2/A000034(n)*A006918(n)]`
-/

namespace A290055.P540567383963710929
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A006918 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290055.P540567383963710929

namespace A290055

/-- `∑[2/A000034(n)*A006918(n)]` -/
def P540567383963710929.Spec : Prop :=
  ∀ n, P540567383963710929.a n = (A290055 n : ℚ)

end A290055

/-! ## A290055.P5419102043433210941

`∑[A000034(A008611(n))*A006918(n)]`
-/

namespace A290055.P5419102043433210941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A008611 n).toNat * A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290055.P5419102043433210941

namespace A290055

/-- `∑[A000034(A008611(n))*A006918(n)]` -/
def P5419102043433210941.Spec : Prop :=
  ∀ n, P5419102043433210941.a n = A290055 n

end A290055

/-! ## A290055.P11590277457732753029

`∑[A000034(n+1)*A006918(n)]`
-/

namespace A290055.P11590277457732753029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290055.P11590277457732753029

namespace A290055

/-- `∑[A000034(n+1)*A006918(n)]` -/
def P11590277457732753029.Spec : Prop :=
  ∀ n, P11590277457732753029.a n = A290055 n

end A290055

/-! ## A290055.P7929350260924929557

`∑[∑[A110660(n+1)]/A040001(n+1)]`
-/

namespace A290055.P7929350260924929557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A040001 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290055.P7929350260924929557

namespace A290055

/-- `∑[∑[A110660(n+1)]/A040001(n+1)]` -/
def P7929350260924929557.Spec : Prop :=
  ∀ n, P7929350260924929557.a n = (A290055 n : ℚ)

end A290055

/-!
# A290056: Number of cliques in the n-triangular graph.

The programs for A290056, the canonical program `A290056.P11044424890120168760` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290056 has offset 1).

The definition of A290056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290056.P11044424890120168760

`1+C(n+1, 2)+(2^n-(n+1))*(n+1)+C(n+1, 3)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290056

/-- `1+C(n+1, 2)+(2^n-(n+1))*(n+1)+C(n+1, 3)` -/
def P11044424890120168760.Spec : Prop :=
  ∀ n, P11044424890120168760.a n = A290056 (n + 1)

theorem P11044424890120168760.correct : P11044424890120168760.Spec := by
  intro n
  simp only [A290056, Nat.add_sub_cancel]

end A290056

/-! ## A290056.P11864199333908760075

`A188626(n+2)+∑[∑[n-2]]`
-/

namespace A290056.P11864199333908760075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188626 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290056.P11864199333908760075

namespace A290056

/-- `A188626(n+2)+∑[∑[n-2]]` -/
def P11864199333908760075.Spec : Prop :=
  ∀ n, P11864199333908760075.a n = A290056 (n + 1)

end A290056

/-! ## A290056.P6370624245585460693

`A005581(n)+∑[A066368(n)]`
-/

namespace A290056.P6370624245585460693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290056.P6370624245585460693

namespace A290056

/-- `A005581(n)+∑[A066368(n)]` -/
def P6370624245585460693.Spec : Prop :=
  ∀ n, P6370624245585460693.a n = A290056 (n + 1)

end A290056

/-! ## A290056.P102863388010778966

`A105163(n+1)+A092442(n)`
-/

namespace A290056.P102863388010778966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105163 (n + 1) + A092442 n

end

end A290056.P102863388010778966

namespace A290056

/-- `A105163(n+1)+A092442(n)` -/
def P102863388010778966.Spec : Prop :=
  ∀ n, P102863388010778966.a n = A290056 (n + 1)

end A290056

/-! ## A290056.P4976332145522421233

`∑[A001792(n)]+1-A081498(n+1)`
-/

namespace A290056.P4976332145522421233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A081498 (n + 1))

end

end A290056.P4976332145522421233

namespace A290056

/-- `∑[A001792(n)]+1-A081498(n+1)` -/
def P4976332145522421233.Spec : Prop :=
  ∀ n, P4976332145522421233.a n = A290056 (n + 1)

end A290056

/-! ## A290056.P17541024850444476735

`(n+1)*A000295(n)+A000292(n)+1`
-/

namespace A290056.P17541024850444476735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000295 n + (A000292 n + 1)

end

end A290056.P17541024850444476735

namespace A290056

/-- `(n+1)*A000295(n)+A000292(n)+1` -/
def P17541024850444476735.Spec : Prop :=
  ∀ n, P17541024850444476735.a n = A290056 (n + 1)

theorem P17541024850444476735.correct : P17541024850444476735.Spec := by
  intro n
  simp only [A290056, Nat.add_sub_cancel, A290056.P17541024850444476735.a, A290056.P11044424890120168760.a, A000292, A000292.P18322089543142633594.a, A000295, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A290056

/-! ## A290056.P5816719919343276255

`A000292(n)+A048470(n)-A000096(n)`
-/

namespace A290056.P5816719919343276255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (A048470 n - A000096 n)

end

end A290056.P5816719919343276255

namespace A290056

/-- `A000292(n)+A048470(n)-A000096(n)` -/
def P5816719919343276255.Spec : Prop :=
  ∀ n, P5816719919343276255.a n = A290056 (n + 1)

end A290056

/-!
# A290058: Number of X-rays of n X n binary matrices with exactly floor(n^2/2) ones.

The programs for A290058, there is no canonical definition to state claims against.
-/

/-! ## A290058.P9850207720004849035

`A233187(a(n-1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A290058.P9850207720004849035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A233187 (a (n - 1)).toNat

end

end A290058.P9850207720004849035

/-!
# A290059: a(n) = binomial(2*prime(n)-1, prime(n)-1) where prime(n) is the n-th prime.

The programs for A290059, the canonical program `A290059.P1064016935964577377` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290059 has offset 1).

The definition of A290059 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*A000040(n+1)-1, A000040(n+1))` (program `A290059.P1064016935964577377`, by `A290059.P1064016935964577377.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A290059.P1064016935964577377

`C(2*A000040(n+1)-1, A000040(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A290059

/-- `C(2*A000040(n+1)-1, A000040(n+1))` -/
def P1064016935964577377.Spec : Prop :=
  ∀ n, (P1064016935964577377.a n : ℤ) = A290059 (n + 1)

theorem P1064016935964577377.correct : P1064016935964577377.Spec := by
  intro n
  simp only [A290059, Nat.add_sub_cancel]

end A290059

/-! ## A290059.P732817892091556479

`C(2*A000040(n+1)-1, A000040(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290059.P732817892091556479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A000040 (n + 1) - 1).toNat (A000040 (n + 1) - 1).toNat

end

end A290059.P732817892091556479

namespace A290059

/-- `C(2*A000040(n+1)-1, A000040(n+1)-1)` -/
def P732817892091556479.Spec : Prop :=
  ∀ n, (P732817892091556479.a n : ℤ) = A290059 (n + 1)

end A290059

/-! ## A290059.P24022635662512327

`A088218(eq[1, ∑{e}[n, #]])`
-/

namespace A290059.P24022635662512327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A290059.P24022635662512327

namespace A290059

/-- `A088218(eq[1, ∑{e}[n, #]])` -/
def P24022635662512327.Spec : Prop :=
  ∀ n, P24022635662512327.a n = A290059 (n + 1)

end A290059

/-! ## A290059.P817784538761708013

`A088218(p?[xor(1, n)+1])`
-/

namespace A290059.P817784538761708013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A290059.P817784538761708013

namespace A290059

/-- `A088218(p?[xor(1, n)+1])` -/
def P817784538761708013.Spec : Prop :=
  ∀ n, P817784538761708013.a n = A290059 (n + 1)

end A290059

/-! ## A290059.P754580772685521759

`record[∏{p}[n+2, A088218(#)]]`
-/

namespace A290059.P754580772685521759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A088218 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290059.P754580772685521759

namespace A290059

/-- `record[∏{p}[n+2, A088218(#)]]` -/
def P754580772685521759.Spec : Prop :=
  ∀ n, P754580772685521759.a n = A290059 (n + 1)

end A290059

/-!
# A290061: a(n) = (1/24)*(n + 3)*(3*n^3 + 5*n^2 - 6*n + 16).

The programs for A290061, the canonical program `A290061.P13580417884600533758` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290061 has offset 1).

The definition of A290061 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/24*(n+4)*(3*(n+1)^3+5*(n+1)²-6*(n+1)+16)` (program `A290061.P15556925034874235712`, by `A290061.P15556925034874235712.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A290061.P10432366853707357544

`(n+4)*(3*(n+1)^3+5*(n+1)²-6*(n+1)+16)/24`
-/

namespace A290061.P10432366853707357544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 4 : ℤ) * ((3 * (n + 1) ^ 3 + 5 * (n + 1) ^ 2 : ℤ) - (6 * (n + 1) : ℤ) + 16) : ℚ) / 24

end

end A290061.P10432366853707357544

namespace A290061

/-- `(n+4)*(3*(n+1)^3+5*(n+1)²-6*(n+1)+16)/24` -/
def P10432366853707357544.Spec : Prop :=
  ∀ n, P10432366853707357544.a n = (A290061 (n + 1) : ℚ)

theorem P10432366853707357544.correct : P10432366853707357544.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A290061, Nat.add_sub_cancel, A290061.P10432366853707357544.a, A290061.P13580417884600533758.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A290061, Nat.add_sub_cancel, A290061.P10432366853707357544.a, A290061.P13580417884600533758.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A290061

/-! ## A290061.P15556925034874235712

`1/24*(n+4)*(3*(n+1)^3+5*(n+1)²-6*(n+1)+16)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290061.P15556925034874235712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 * (n + 4 : ℚ) * ((3 * (n + 1) ^ 3 + 5 * (n + 1) ^ 2 : ℤ) - (6 * (n + 1) : ℤ) + 16 : ℚ)

end

end A290061.P15556925034874235712

namespace A290061

/-- `1/24*(n+4)*(3*(n+1)^3+5*(n+1)²-6*(n+1)+16)` -/
def P15556925034874235712.Spec : Prop :=
  ∀ n, P15556925034874235712.a n = (A290061 (n + 1) : ℚ)

theorem P15556925034874235712.correct : P15556925034874235712.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A290061, Nat.add_sub_cancel, A290061.P15556925034874235712.a, A290061.P13580417884600533758.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A290061, Nat.add_sub_cancel, A290061.P15556925034874235712.a, A290061.P13580417884600533758.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A290061

/-! ## A290061.P13580417884600533758

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=10, a(2)=31, a(3)=77, a(4)=162`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290061

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13580417884600533758.Spec : Prop :=
  ∀ n, P13580417884600533758.a n = A290061 (n + 1)

theorem P13580417884600533758.correct : P13580417884600533758.Spec := by
  intro n
  simp only [A290061, Nat.add_sub_cancel]

end A290061

/-! ## A290061.P9563141378956202009

`∑[n*C(n+3, 2)+1]+2`
-/

namespace A290061.P9563141378956202009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (n + 3) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A290061.P9563141378956202009

namespace A290061

/-- `∑[n*C(n+3, 2)+1]+2` -/
def P9563141378956202009.Spec : Prop :=
  ∀ n, (P9563141378956202009.a n : ℤ) = A290061 (n + 1)

end A290061

/-! ## A290061.P4224714235168183219

`∑[∑[∑[a(n-1)+3]]]+2` with `a(0)=1, a(1)=5`
-/

namespace A290061.P4224714235168183219
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A290061.P4224714235168183219

namespace A290061

/-- `∑[∑[∑[a(n-1)+3]]]+2` -/
def P4224714235168183219.Spec : Prop :=
  ∀ n, (P4224714235168183219.a n : ℤ) = A290061 (n + 1)

end A290061

/-! ## A290061.P5031605569559260640

`A290312(n)+2`
-/

namespace A290061.P5031605569559260640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 n + 2

end

end A290061.P5031605569559260640

namespace A290061

/-- `A290312(n)+2` -/
def P5031605569559260640.Spec : Prop :=
  ∀ n, P5031605569559260640.a n = A290061 (n + 1)

end A290061

/-! ## A290061.P17926989229680659465

`∑[A127736(n+1)]+2`
-/

namespace A290061.P17926989229680659465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A290061.P17926989229680659465

namespace A290061

/-- `∑[A127736(n+1)]+2` -/
def P17926989229680659465.Spec : Prop :=
  ∀ n, P17926989229680659465.a n = A290061 (n + 1)

end A290061

/-! ## A290061.P12655145726099563226

`∑[(A000217(round(sqrt(n²+1)))+n)*(n+2)+1]`
-/

namespace A290061.P12655145726099563226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + (n : ℤ)) * (n + 2 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290061.P12655145726099563226

namespace A290061

/-- `∑[(A000217(round(sqrt(n²+1)))+n)*(n+2)+1]` -/
def P12655145726099563226.Spec : Prop :=
  ∀ n, P12655145726099563226.a n = A290061 (n + 1)

end A290061

/-! ## A290061.P12371375825324455115

`A363256(n)+A363256(n)+A116699(n+1)`
-/

namespace A290061.P12371375825324455115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363256 n + (A363256 n + A116699 (n + 1))

end

end A290061.P12371375825324455115

namespace A290061

/-- `A363256(n)+A363256(n)+A116699(n+1)` -/
def P12371375825324455115.Spec : Prop :=
  ∀ n, P12371375825324455115.a n = A290061 (n + 1)

end A290061

/-!
# A290062: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 633", based on the 5-celled von Neumann neighborhood.

The programs for A290062, there is no canonical definition to state claims against.
-/

/-! ## A290062.P10853566085249329707

`A007088(A290064(n))`
-/

namespace A290062.P10853566085249329707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290064 n).toNat

end

end A290062.P10853566085249329707

/-! ## A290062.P7959263379100446181

`A007088(A095121(n)+1-A287981(n))`
-/

namespace A290062.P7959263379100446181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A287981 n)).toNat

end

end A290062.P7959263379100446181

/-! ## A290062.P3646917218966854446

`A007088(1-(A287981(n)-A095121(n)))`
-/

namespace A290062.P3646917218966854446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A287981 n - A095121 n)).toNat

end

end A290062.P3646917218966854446

/-! ## A290062.P9745274441693179230

`A007088(A287982(n)+A290065(n)-A287981(n))`
-/

namespace A290062.P9745274441693179230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287982 n + (A290065 n - A287981 n)).toNat

end

end A290062.P9745274441693179230

/-! ## A290062.P4832313163923562856

`A007088(A287982(n)-(A287981(n)-A290065(n)))`
-/

namespace A290062.P4832313163923562856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287982 n - (A287981 n - A290065 n)).toNat

end

end A290062.P4832313163923562856

/-!
# A290063: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 633", based on the 5-celled von Neumann neighborhood.

The programs for A290063, there is no canonical definition to state claims against.
-/

/-! ## A290063.P12977831835041170744

`A007088(A290065(n))`
-/

namespace A290063.P12977831835041170744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290065 n).toNat

end

end A290063.P12977831835041170744

/-! ## A290063.P266711858932665315

`A007088(A095121(n)+1-A287982(n))`
-/

namespace A290063.P266711858932665315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A287982 n)).toNat

end

end A290063.P266711858932665315

/-! ## A290063.P881129771519413811

`A007088(1-(A287982(n)-A095121(n)))`
-/

namespace A290063.P881129771519413811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A287982 n - A095121 n)).toNat

end

end A290063.P881129771519413811

/-! ## A290063.P5659263432626784178

`A007088(or(1, A126646(n)-A287982(n)))`
-/

namespace A290063.P5659263432626784178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor 1 (A126646 n - A287982 n)).toNat

end

end A290063.P5659263432626784178

/-! ## A290063.P816695322783199693

`A007088(A287981(n)+A290064(n)-A287982(n))`
-/

namespace A290063.P816695322783199693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287981 n + (A290064 n - A287982 n)).toNat

end

end A290063.P816695322783199693

/-!
# A290064: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 633", based on the 5-celled von Neumann neighborhood.

The programs for A290064, there is no canonical definition to state claims against.
-/

/-! ## A290064.P16720687973670795193

`A095121(n)+1-A287981(n)`
-/

namespace A290064.P16720687973670795193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A287981 n)

end

end A290064.P16720687973670795193

/-! ## A290064.P4520143270928144055

`xor(record[A324821(n+1)], A287981(n))`
-/

namespace A290064.P4520143270928144055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A287981 n)

end

end A290064.P4520143270928144055

/-! ## A290064.P8863732867026275644

`xor(A287981(n), A324821(A008578(n+1)))`
-/

namespace A290064.P8863732867026275644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A287981 n) (A324821 (A008578 (n + 1)).toNat)

end

end A290064.P8863732867026275644

/-! ## A290064.P17574193754792544536

`A287982(n)+A290065(n)-A287981(n)`
-/

namespace A290064.P17574193754792544536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287982 n + (A290065 n - A287981 n)

end

end A290064.P17574193754792544536

/-! ## A290064.P1582219014325612607

`A126646(n)-A287981(n)%A000079(n)`
-/

namespace A290064.P1582219014325612607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A287981 n) (A000079 n)

end

end A290064.P1582219014325612607

/-! ## A290064.P418232735556660430

`or(A126646(n)-A287981(n), A287982(n))`
-/

namespace A290064.P418232735556660430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A126646 n - A287981 n) (A287982 n)

end

end A290064.P418232735556660430

/-!
# A290065: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 633", based on the 5-celled von Neumann neighborhood.

The programs for A290065, there is no canonical definition to state claims against.
-/

/-! ## A290065.P3308965946999384184

`A095121(n)+1-A287982(n)`
-/

namespace A290065.P3308965946999384184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A287982 n)

end

end A290065.P3308965946999384184

/-! ## A290065.P12045277732977205113

`or(1, A126646(n)-A287982(n))`
-/

namespace A290065.P12045277732977205113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A287982 n)

end

end A290065.P12045277732977205113

/-! ## A290065.P2885566046245944500

`A052955(A004277(n))-A287982(n)`
-/

namespace A290065.P2885566046245944500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A287982 n

end

end A290065.P2885566046245944500

/-! ## A290065.P2038262537621838470

`A287981(n)+A290064(n)-A287982(n)`
-/

namespace A290065.P2038262537621838470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287981 n + (A290064 n - A287982 n)

end

end A290065.P2038262537621838470

/-! ## A290065.P1326265121699221042

`A126646(n)+A097331(A255049(n))-A287982(n)`
-/

namespace A290065.P1326265121699221042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + (A097331 (A255049 n).toNat - A287982 n)

end

end A290065.P1326265121699221042

/-! ## A290065.P3717167041771609675

`A126646(n)+A097331(A255066(n))-A287982(n)`
-/

namespace A290065.P3717167041771609675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + (A097331 (A255066 n).toNat - A287982 n)

end

end A290065.P3717167041771609675

/-!
# A290066: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 637", based on the 5-celled von Neumann neighborhood.

The programs for A290066, there is no canonical definition to state claims against.
-/

/-! ## A290066.P16897887501471711057

`A007088(A290068(n))`
-/

namespace A290066.P16897887501471711057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290068 n).toNat

end

end A290066.P16897887501471711057

/-! ## A290066.P13027090240303942484

`A185544(2*A290068(n))`
-/

namespace A290066.P13027090240303942484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290068 n).toNat

end

end A290066.P13027090240303942484

/-! ## A290066.P11551877876010367534

`A185544(A290068(n)+A290068(n))`
-/

namespace A290066.P11551877876010367534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A290068 n + A290068 n).toNat

end

end A290066.P11551877876010367534

/-! ## A290066.P8293035112660747410

`A289967(n)-A011731(A020012(n))`
-/

namespace A290066.P8293035112660747410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289967 n - A011731 (A020012 n).toNat

end

end A290066.P8293035112660747410

/-! ## A290066.P17453489003435545025

`A289967(n)-A056978(A007097(n))`
-/

namespace A290066.P17453489003435545025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289967 n - A056978 (A007097 n).toNat

end

end A290066.P17453489003435545025

/-!
# A290067: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 637", based on the 5-celled von Neumann neighborhood.

The programs for A290067, there is no canonical definition to state claims against.
-/

/-! ## A290067.P517375007775201986

`A007088(A290069(n))`
-/

namespace A290067.P517375007775201986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290069 n).toNat

end

end A290067.P517375007775201986

/-! ## A290067.P2169367772880133912

`A185544(2*A290069(n))`
-/

namespace A290067.P2169367772880133912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290069 n).toNat

end

end A290067.P2169367772880133912

/-! ## A290067.P2227846763036967757

`A185544(lcm(2, A290069(n)))`
-/

namespace A290067.P2227846763036967757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A290069 n))

end

end A290067.P2227846763036967757

/-! ## A290067.P78561306057401350

`A185544(A290069(n)+A290069(n))`
-/

namespace A290067.P78561306057401350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A290069 n + A290069 n).toNat

end

end A290067.P78561306057401350

/-! ## A290067.P1478691285366684477

`A305989(A290068(n)/A294775(n))`
-/

namespace A290067.P1478691285366684477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A290068 n : ℚ) / (A294775 n : ℚ))).toNat

end

end A290067.P1478691285366684477

/-!
# A290068: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 637", based on the 5-celled von Neumann neighborhood.

The programs for A290068, there is no canonical definition to state claims against.
-/

/-! ## A290068.P11905695238410051653

`A065033(A289969(n)+A289961(n))`
-/

namespace A290068.P11905695238410051653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A289969 n + A289961 n).toNat

end

end A290068.P11905695238410051653

/-! ## A290068.P3332633344715724798

`A065033(A340632(∑[2^n-n%2])+A289961(n))`
-/

namespace A290068.P3332633344715724798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A340632 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A289961 n).toNat

end

end A290068.P3332633344715724798

/-! ## A290068.P4784951468374503893

`A289961(n)+A236109(A023431(n))`
-/

namespace A290068.P4784951468374503893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289961 n + A236109 (A023431 n).toNat

end

end A290068.P4784951468374503893

/-! ## A290068.P6688993187052003326

`A289935(n)-A011731(A020012(n))`
-/

namespace A290068.P6688993187052003326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289935 n - A011731 (A020012 n).toNat

end

end A290068.P6688993187052003326

/-! ## A290068.P10958454627295540208

`A289969(n)-A324179(A324135(n))`
-/

namespace A290068.P10958454627295540208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289969 n - A324179 (A324135 n).toNat

end

end A290068.P10958454627295540208

/-!
# A290069: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 637", based on the 5-celled von Neumann neighborhood.

The programs for A290069, there is no canonical definition to state claims against.
-/

/-! ## A290069.P10925044431866928147

`A325401(A000265(A290068(n)))`
-/

namespace A290069.P10925044431866928147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A000265 (A290068 n).toNat).toNat

end

end A290069.P10925044431866928147

/-! ## A290069.P1966547427529966086

`A325401(A290068(n)/A337565(n))`
-/

namespace A290069.P1966547427529966086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A290068 n : ℚ) / (A337565 n : ℚ))).toNat

end

end A290069.P1966547427529966086

/-! ## A290069.P12490582887558235254

`A325401(A290068(n))`
-/

namespace A290069.P12490582887558235254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A290068 n).toNat

end

end A290069.P12490582887558235254

/-! ## A290069.P16919875102468034576

`A281589(lcm(2, A290068(n)))`
-/

namespace A290069.P16919875102468034576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A290068 n))

end

end A290069.P16919875102468034576

/-! ## A290069.P5857951466195435764

`A030101(A290068(n)/A294775(n))`
-/

namespace A290069.P5857951466195435764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A290068 n : ℚ) / (A294775 n : ℚ))).toNat

end

end A290069.P5857951466195435764

/-!
# A290070: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 641", based on the 5-celled von Neumann neighborhood.

The programs for A290070, the canonical program `A290070.P6745444455141305829` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290070 has offset 0).

The definition of A290070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290070.P6745444455141305829

`A290111(n)-n%2`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A290070

/-- `A290111(n)-n%2` -/
def P6745444455141305829.Spec : Prop :=
  ∀ n, P6745444455141305829.a n = A290070 n

theorem P6745444455141305829.correct : P6745444455141305829.Spec := by
  intro n
  simp only [A290070]

end A290070

/-! ## A290070.P2081704732329552189

`A290111(n)-A000035(n)`
-/

namespace A290070.P2081704732329552189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290111 n - A000035 n

end

end A290070.P2081704732329552189

namespace A290070

/-- `A290111(n)-A000035(n)` -/
def P2081704732329552189.Spec : Prop :=
  ∀ n, P2081704732329552189.a n = A290070 n

end A290070

/-! ## A290070.P2289787848158687540

`A290111(n)-log2(A000034(n))`
-/

namespace A290070.P2289787848158687540
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A290111 n : ℝ) - Real.logb 2 (A000034 n : ℝ)

end

end A290070.P2289787848158687540

namespace A290070

/-- `A290111(n)-log2(A000034(n))` -/
def P2289787848158687540.Spec : Prop :=
  ∀ n, P2289787848158687540.a n = (A290070 n : ℝ)

end A290070

/-! ## A290070.P2498258661845813739

`A290111(n)-Δ[A004526(n)]`
-/

namespace A290070.P2498258661845813739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290111 n - (f1 (n + 1) - f1 n)

end

end A290070.P2498258661845813739

namespace A290070

/-- `A290111(n)-Δ[A004526(n)]` -/
def P2498258661845813739.Spec : Prop :=
  ∀ n, P2498258661845813739.a n = A290070 n

end A290070

/-! ## A290070.P10309028957190969378

`A290111(n)-char[A005408(n)]`
-/

namespace A290070.P10309028957190969378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290111 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290070.P10309028957190969378

namespace A290070

/-- `A290111(n)-char[A005408(n)]` -/
def P10309028957190969378.Spec : Prop :=
  ∀ n, P10309028957190969378.a n = A290070 n

end A290070

/-! ## A290070.P11702719224537374113

`or(1, A290192(n))-A000035(n)`
-/

namespace A290070.P11702719224537374113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290192 n) - A000035 n

end

end A290070.P11702719224537374113

namespace A290070

/-- `or(1, A290192(n))-A000035(n)` -/
def P11702719224537374113.Spec : Prop :=
  ∀ n, P11702719224537374113.a n = A290070 n

end A290070

/-! ## A290070.P8941944623101270355

`xor(A000035(A007918(n)), A290192(n))`
-/

namespace A290070.P8941944623101270355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A007918 n).toNat) (A290192 n)

end

end A290070.P8941944623101270355

namespace A290070

/-- `xor(A000035(A007918(n)), A290192(n))` -/
def P8941944623101270355.Spec : Prop :=
  ∀ n, P8941944623101270355.a n = A290070 n

end A290070

/-!
# A290071: a(n) = (1/48)*n*(n+5)^2*(1*n^3 + 7*n^2 + 16*n + 28).

The programs for A290071, the canonical program `A290071.P14606039825561648646` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290071 has offset 0).

The definition of A290071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290071.P14606039825561648646

`n*(n+5)²*(n^3+7*n²+16*n+28)/48`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290071

/-- `n*(n+5)²*(n^3+7*n²+16*n+28)/48` -/
def P14606039825561648646.Spec : Prop :=
  ∀ n, P14606039825561648646.a n = (A290071 n : ℚ)

end A290071

/-! ## A290071.P7738402322194378689

`1/48*n*(n+5)²*(1*n^3+7*n²+16*n+28)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290071.P7738402322194378689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 48 * (n : ℚ) * ((n + 5) ^ 2 : ℚ) * (1 * n ^ 3 + 7 * n ^ 2 + 16 * n + 28 : ℚ)

end

end A290071.P7738402322194378689

namespace A290071

/-- `1/48*n*(n+5)²*(1*n^3+7*n²+16*n+28)` -/
def P7738402322194378689.Spec : Prop :=
  ∀ n, P7738402322194378689.a n = (A290071 n : ℚ)

end A290071

/-! ## A290071.P13081979031525663084

`A001303(n+1)-(A241765(n)+6)`
-/

namespace A290071.P13081979031525663084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001303 (n + 1) - (A241765 n + 6)

end

end A290071.P13081979031525663084

namespace A290071

/-- `A001303(n+1)-(A241765(n)+6)` -/
def P13081979031525663084.Spec : Prop :=
  ∀ n, P13081979031525663084.a n = A290071 n

end A290071

/-!
# A290072: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 641", based on the 5-celled von Neumann neighborhood.

The programs for A290072, the canonical program `A290072.P12916737471976448683` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290072 has offset 0).

The definition of A290072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290072.P12916737471976448683

`or(1, A283505(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A290072

/-- `or(1, A283505(n))` -/
def P12916737471976448683.Spec : Prop :=
  ∀ n, P12916737471976448683.a n = A290072 n

theorem P12916737471976448683.correct : P12916737471976448683.Spec := by
  intro n
  simp only [A290072]

end A290072

/-! ## A290072.P9049263199456847708

`A283505(n-char[1])`
-/

namespace A290072.P9049263199456847708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283505 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A290072.P9049263199456847708

namespace A290072

/-- `A283505(n-char[1])` -/
def P9049263199456847708.Spec : Prop :=
  ∀ n, P9049263199456847708.a n = A290072 n

end A290072

/-! ## A290072.P2821947457325858066

`A283505(n)-A159075(n)`
-/

namespace A290072.P2821947457325858066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283505 n - A159075 n

end

end A290072.P2821947457325858066

namespace A290072

/-- `A283505(n)-A159075(n)` -/
def P2821947457325858066.Spec : Prop :=
  ∀ n, P2821947457325858066.a n = A290072 n

end A290072

/-! ## A290072.P4188158068584950672

`A283505(n)+char[A283499(n)]`
-/

namespace A290072.P4188158068584950672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283499 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283505 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290072.P4188158068584950672

namespace A290072

/-- `A283505(n)+char[A283499(n)]` -/
def P4188158068584950672.Spec : Prop :=
  ∀ n, P4188158068584950672.a n = A290072 n

end A290072

/-! ## A290072.P2225286239395094155

`A283505(n)+char[A283510(n)]`
-/

namespace A290072.P2225286239395094155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283510 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283505 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290072.P2225286239395094155

namespace A290072

/-- `A283505(n)+char[A283510(n)]` -/
def P2225286239395094155.Spec : Prop :=
  ∀ n, P2225286239395094155.a n = A290072 n

end A290072

/-! ## A290072.P5138524365437114406

`A283505(n)+char[A283534(n)]`
-/

namespace A290072.P5138524365437114406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283534 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283505 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290072.P5138524365437114406

namespace A290072

/-- `A283505(n)+char[A283534(n)]` -/
def P5138524365437114406.Spec : Prop :=
  ∀ n, P5138524365437114406.a n = A290072 n

end A290072

/-! ## A290072.P1195931728936989526

`A283505(n)+char[A283536(n)]`
-/

namespace A290072.P1195931728936989526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283536 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283505 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290072.P1195931728936989526

namespace A290072

/-- `A283505(n)+char[A283536(n)]` -/
def P1195931728936989526.Spec : Prop :=
  ∀ n, P1195931728936989526.a n = A290072 n

end A290072

/-! ## A290072.P13264352278167754407

`A283505(n)+A000007((1-n)²)`
-/

namespace A290072.P13264352278167754407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283505 n + A000007 ((1 - (n : ℤ)) ^ 2).toNat

end

end A290072.P13264352278167754407

namespace A290072

/-- `A283505(n)+A000007((1-n)²)` -/
def P13264352278167754407.Spec : Prop :=
  ∀ n, P13264352278167754407.a n = A290072 n

end A290072

/-! ## A290072.P14219614864760462678

`A283505(n)+char[A283535(n+1)]`
-/

namespace A290072.P14219614864760462678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283535 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283505 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290072.P14219614864760462678

namespace A290072

/-- `A283505(n)+char[A283535(n+1)]` -/
def P14219614864760462678.Spec : Prop :=
  ∀ n, P14219614864760462678.a n = A290072 n

end A290072

/-! ## A290072.P10899616196987312700

`A283505(n)+A290074(n)-A283507(n)`
-/

namespace A290072.P10899616196987312700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283505 n + (A290074 n - A283507 n)

end

end A290072.P10899616196987312700

namespace A290072

/-- `A283505(n)+A290074(n)-A283507(n)` -/
def P10899616196987312700.Spec : Prop :=
  ∀ n, P10899616196987312700.a n = A290072 n

end A290072

/-! ## A290072.P11167327176407161644

`A283505(n)+A283505(A283507(n)/A290074(n))`
-/

namespace A290072.P11167327176407161644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283505 n + A283505 (SequenceMachineLib.roundAway ((A283507 n : ℚ) / (A290074 n : ℚ))).toNat

end

end A290072.P11167327176407161644

namespace A290072

/-- `A283505(n)+A283505(A283507(n)/A290074(n))` -/
def P11167327176407161644.Spec : Prop :=
  ∀ n, P11167327176407161644.a n = A290072 n

end A290072

/-!
# A290073: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 641", based on the 5-celled von Neumann neighborhood.

The programs for A290073, the canonical program `A290073.P5646453648965262103` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290073 has offset 0).

The definition of A290073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290073.P2813329921165927220

`ogf((1+2x^3+4x^4)/(1-2x-x^2+2x^3))`
-/

namespace A290073.P2813329921165927220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 2, 4] [1, -2, -1, 2] n

end

end A290073.P2813329921165927220

namespace A290073

/-- `ogf((1+2x^3+4x^4)/(1-2x-x^2+2x^3))` -/
def P2813329921165927220.Spec : Prop :=
  ∀ n, P2813329921165927220.a n = A290073 n

end A290073

/-! ## A290073.P6223740647166818317

`A290113(n)-and(1, n)`
-/

namespace A290073.P6223740647166818317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290113 n - (Nat.land 1 n : ℤ)

end

end A290073.P6223740647166818317

namespace A290073

/-- `A290113(n)-and(1, n)` -/
def P6223740647166818317.Spec : Prop :=
  ∀ n, P6223740647166818317.a n = A290073 n

end A290073

/-! ## A290073.P13679434308046602374

`∑[2^n]-A158478(n)`
-/

namespace A290073.P13679434308046602374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A158478 n

end

end A290073.P13679434308046602374

namespace A290073

/-- `∑[2^n]-A158478(n)` -/
def P13679434308046602374.Spec : Prop :=
  ∀ n, P13679434308046602374.a n = A290073 n

end A290073

/-! ## A290073.P12559303783352848997

`A014551(n)+a(n-1)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A290073.P12559303783352848997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A014551 n + a (n - 1)

end

end A290073.P12559303783352848997

namespace A290073

/-- `A014551(n)+a(n-1)` -/
def P12559303783352848997.Spec : Prop :=
  ∀ n, P12559303783352848997.a n = A290073 n

end A290073

/-! ## A290073.P7490167305532190875

`2^(n+1)-A158515(n+1)`
-/

namespace A290073.P7490167305532190875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A158515 (n + 1)

end

end A290073.P7490167305532190875

namespace A290073

/-- `2^(n+1)-A158515(n+1)` -/
def P7490167305532190875.Spec : Prop :=
  ∀ n, P7490167305532190875.a n = A290073 n

end A290073

/-! ## A290073.P6481756358741537470

`A290113(n)-A000035(n)`
-/

namespace A290073.P6481756358741537470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290113 n - A000035 n

end

end A290073.P6481756358741537470

namespace A290073

/-- `A290113(n)-A000035(n)` -/
def P6481756358741537470.Spec : Prop :=
  ∀ n, P6481756358741537470.a n = A290073 n

end A290073

/-! ## A290073.P3884098237728842623

`A083706(n)-A267460(n)`
-/

namespace A290073.P3884098237728842623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083706 n - A267460 n

end

end A290073.P3884098237728842623

namespace A290073

/-- `A083706(n)-A267460(n)` -/
def P3884098237728842623.Spec : Prop :=
  ∀ n, P3884098237728842623.a n = A290073 n

end A290073

/-! ## A290073.P1019550639645115199

`gcd(A130706(n), A283506(n))`
-/

namespace A290073.P1019550639645115199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A283506 n)

end

end A290073.P1019550639645115199

namespace A290073

/-- `gcd(A130706(n), A283506(n))` -/
def P1019550639645115199.Spec : Prop :=
  ∀ n, (P1019550639645115199.a n : ℤ) = A290073 n

end A290073

/-! ## A290073.P14198225101591599700

`and(A289098(n), A290113(n))`
-/

namespace A290073.P14198225101591599700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A289098 n) (A290113 n)

end

end A290073.P14198225101591599700

namespace A290073

/-- `and(A289098(n), A290113(n))` -/
def P14198225101591599700.Spec : Prop :=
  ∀ n, P14198225101591599700.a n = A290073 n

end A290073

/-! ## A290073.P14708219808646724891

`or(A000079(n), A283506(n))`
-/

namespace A290073.P14708219808646724891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n) (A283506 n)

end

end A290073.P14708219808646724891

namespace A290073

/-- `or(A000079(n), A283506(n))` -/
def P14708219808646724891.Spec : Prop :=
  ∀ n, P14708219808646724891.a n = A290073 n

end A290073

/-! ## A290073.P89105128456106188

`xor(A126646(n), A158478(n))`
-/

namespace A290073.P89105128456106188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A126646 n) (A158478 n)

end

end A290073.P89105128456106188

namespace A290073

/-- `xor(A126646(n), A158478(n))` -/
def P89105128456106188.Spec : Prop :=
  ∀ n, P89105128456106188.a n = A290073 n

end A290073

/-! ## A290073.P6899716886521162789

`xor(A091270(n), A266070(n))`
-/

namespace A290073.P6899716886521162789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091270 n) (A266070 n)

end

end A290073.P6899716886521162789

namespace A290073

/-- `xor(A091270(n), A266070(n))` -/
def P6899716886521162789.Spec : Prop :=
  ∀ n, P6899716886521162789.a n = A290073 n

end A290073

/-! ## A290073.P14788416215908250481

`xor(∑[A000079(n)], A158478(n))`
-/

namespace A290073.P14788416215908250481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A158478 n)

end

end A290073.P14788416215908250481

namespace A290073

/-- `xor(∑[A000079(n)], A158478(n))` -/
def P14788416215908250481.Spec : Prop :=
  ∀ n, P14788416215908250481.a n = A290073 n

end A290073

/-! ## A290073.P3630587441140246029

`A283506(n)+and(2, A287197(n))`
-/

namespace A290073.P3630587441140246029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283506 n + Int.land 2 (A287197 n)

end

end A290073.P3630587441140246029

namespace A290073

/-- `A283506(n)+and(2, A287197(n))` -/
def P3630587441140246029.Spec : Prop :=
  ∀ n, P3630587441140246029.a n = A290073 n

end A290073

/-! ## A290073.P14361321907582410621

`or(1, A290194(n))-A000035(n)`
-/

namespace A290073.P14361321907582410621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290194 n) - A000035 n

end

end A290073.P14361321907582410621

namespace A290073

/-- `or(1, A290194(n))-A000035(n)` -/
def P14361321907582410621.Spec : Prop :=
  ∀ n, P14361321907582410621.a n = A290073 n

end A290073

/-! ## A290073.P8047313186877766616

`∑[2^n]-A266664(A266664(n))`
-/

namespace A290073.P8047313186877766616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A266664 (A266664 n).toNat

end

end A290073.P8047313186877766616

namespace A290073

/-- `∑[2^n]-A266664(A266664(n))` -/
def P8047313186877766616.Spec : Prop :=
  ∀ n, P8047313186877766616.a n = A290073 n

end A290073

/-! ## A290073.P12987168285984379659

`abs(A176895(2*n)-∑[A000225(n)])+n`
-/

namespace A290073.P12987168285984379659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176895 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j| + (n : ℤ)

end

end A290073.P12987168285984379659

namespace A290073

/-- `abs(A176895(2*n)-∑[A000225(n)])+n` -/
def P12987168285984379659.Spec : Prop :=
  ∀ n, P12987168285984379659.a n = A290073 n

end A290073

/-! ## A290073.P17452431474151034555

`or(7, 3*a(n-1))-a(n-1)+2` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A290073.P17452431474151034555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  Int.lor 7 (3 * a (n - 1)) - a (n - 1) + 2

end

end A290073.P17452431474151034555

namespace A290073

/-- `or(7, 3*a(n-1))-a(n-1)+2` -/
def P17452431474151034555.Spec : Prop :=
  ∀ n, P17452431474151034555.a n = A290073 n

end A290073

/-! ## A290073.P5646453648965262103

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=12, a(4)=29`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290073

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P5646453648965262103.Spec : Prop :=
  ∀ n, P5646453648965262103.a n = A290073 n

theorem P5646453648965262103.correct : P5646453648965262103.Spec := by
  intro n
  simp only [A290073]

end A290073

/-! ## A290073.P6056252790392631172

`A079583(n)-(A158478(n)+A000295(n))`
-/

namespace A290073.P6056252790392631172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079583 n - (A158478 n + A000295 n)

end

end A290073.P6056252790392631172

namespace A290073

/-- `A079583(n)-(A158478(n)+A000295(n))` -/
def P6056252790392631172.Spec : Prop :=
  ∀ n, P6056252790392631172.a n = A290073 n

end A290073

/-!
# A290074: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 641", based on the 5-celled von Neumann neighborhood.

The programs for A290074, the canonical program `A290074.P13651105132228346623` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290074 has offset 0).

The definition of A290074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290074.P13651105132228346623

`ogf((1-2x^3+4x^4)/(1-x-4x^2+4x^3))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290074

/-- `ogf((1-2x^3+4x^4)/(1-x-4x^2+4x^3))` -/
def P13651105132228346623.Spec : Prop :=
  ∀ n, P13651105132228346623.a n = A290074 n

theorem P13651105132228346623.correct : P13651105132228346623.Spec := by
  intro n
  simp only [A290074]

end A290074

/-! ## A290074.P9089576900874659433

`4*a(n-2)+3` with `a(0)=1, a(1)=1, a(2)=5, a(3)=3`
-/

namespace A290074.P9089576900874659433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5, 3] fun n a =>
  4 * a (n - 2) + 3

end

end A290074.P9089576900874659433

namespace A290074

/-- `4*a(n-2)+3` -/
def P9089576900874659433.Spec : Prop :=
  ∀ n, (P9089576900874659433.a n : ℤ) = A290074 n

end A290074

/-! ## A290074.P16111365453279804690

`or(1, A283507(n))`
-/

namespace A290074.P16111365453279804690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A283507 n)

end

end A290074.P16111365453279804690

namespace A290074

/-- `or(1, A283507(n))` -/
def P16111365453279804690.Spec : Prop :=
  ∀ n, P16111365453279804690.a n = A290074 n

end A290074

/-! ## A290074.P9583962204683200964

`A283507(n-char[1])`
-/

namespace A290074.P9583962204683200964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283507 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A290074.P9583962204683200964

namespace A290074

/-- `A283507(n-char[1])` -/
def P9583962204683200964.Spec : Prop :=
  ∀ n, P9583962204683200964.a n = A290074 n

end A290074

/-! ## A290074.P11004655678104166219

`A084633(n)+A000225(n)`
-/

namespace A290074.P11004655678104166219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084633 n + A000225 n

end

end A290074.P11004655678104166219

namespace A290074

/-- `A084633(n)+A000225(n)` -/
def P11004655678104166219.Spec : Prop :=
  ∀ n, P11004655678104166219.a n = A290074 n

end A290074

/-! ## A290074.P16007017704956472400

`A283507(n)+A063524(n)`
-/

namespace A290074.P16007017704956472400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283507 n + A063524 n

end

end A290074.P16007017704956472400

namespace A290074

/-- `A283507(n)+A063524(n)` -/
def P16007017704956472400.Spec : Prop :=
  ∀ n, P16007017704956472400.a n = A290074 n

end A290074

/-! ## A290074.P11664298818883604319

`A283507(n)-A159075(n)`
-/

namespace A290074.P11664298818883604319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283507 n - A159075 n

end

end A290074.P11664298818883604319

namespace A290074

/-- `A283507(n)-A159075(n)` -/
def P11664298818883604319.Spec : Prop :=
  ∀ n, P11664298818883604319.a n = A290074 n

end A290074

/-! ## A290074.P13255819166689952563

`A290114(n)%A098646(n)`
-/

namespace A290074.P13255819166689952563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290114 n) (A098646 n)

end

end A290074.P13255819166689952563

namespace A290074

/-- `A290114(n)%A098646(n)` -/
def P13255819166689952563.Spec : Prop :=
  ∀ n, P13255819166689952563.a n = A290074 n

end A290074

/-! ## A290074.P17427368220981324255

`and(A289099(n), A290114(n))`
-/

namespace A290074.P17427368220981324255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A289099 n) (A290114 n)

end

end A290074.P17427368220981324255

namespace A290074

/-- `and(A289099(n), A290114(n))` -/
def P17427368220981324255.Spec : Prop :=
  ∀ n, P17427368220981324255.a n = A290074 n

end A290074

/-! ## A290074.P13589741625087532265

`A283507(n)+char[A283499(n)]`
-/

namespace A290074.P13589741625087532265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283499 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283507 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290074.P13589741625087532265

namespace A290074

/-- `A283507(n)+char[A283499(n)]` -/
def P13589741625087532265.Spec : Prop :=
  ∀ n, P13589741625087532265.a n = A290074 n

end A290074

/-! ## A290074.P15806339624774608960

`A283507(n)+char[A283534(n)]`
-/

namespace A290074.P15806339624774608960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283534 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283507 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290074.P15806339624774608960

namespace A290074

/-- `A283507(n)+char[A283534(n)]` -/
def P15806339624774608960.Spec : Prop :=
  ∀ n, P15806339624774608960.a n = A290074 n

end A290074

/-! ## A290074.P16833140863830137509

`A283507(n)+char[A283536(n)]`
-/

namespace A290074.P16833140863830137509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283536 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283507 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290074.P16833140863830137509

namespace A290074

/-- `A283507(n)+char[A283536(n)]` -/
def P16833140863830137509.Spec : Prop :=
  ∀ n, P16833140863830137509.a n = A290074 n

end A290074

/-! ## A290074.P17253351683081723443

`gcd(A033322(n+1), A283507(n))`
-/

namespace A290074.P17253351683081723443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033322 (n + 1)) (A283507 n)

end

end A290074.P17253351683081723443

namespace A290074

/-- `gcd(A033322(n+1), A283507(n))` -/
def P17253351683081723443.Spec : Prop :=
  ∀ n, (P17253351683081723443.a n : ℤ) = A290074 n

end A290074

/-! ## A290074.P2869409445759115836

`and(A290114(n), A290829(n+1))`
-/

namespace A290074.P2869409445759115836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290114 n) (A290829 (n + 1))

end

end A290074.P2869409445759115836

namespace A290074

/-- `and(A290114(n), A290829(n+1))` -/
def P2869409445759115836.Spec : Prop :=
  ∀ n, P2869409445759115836.a n = A290074 n

end A290074

/-! ## A290074.P4283258329200689744

`or(1, xor(A055010(n), A103424(n)))`
-/

namespace A290074.P4283258329200689744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.xor (A055010 n) (A103424 n))

end

end A290074.P4283258329200689744

namespace A290074

/-- `or(1, xor(A055010(n), A103424(n)))` -/
def P4283258329200689744.Spec : Prop :=
  ∀ n, P4283258329200689744.a n = A290074 n

end A290074

/-! ## A290074.P14396597588885922746

`A283507(n)-A199969(n+1)+n`
-/

namespace A290074.P14396597588885922746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283507 n - A199969 (n + 1) + (n : ℤ)

end

end A290074.P14396597588885922746

namespace A290074

/-- `A283507(n)-A199969(n+1)+n` -/
def P14396597588885922746.Spec : Prop :=
  ∀ n, P14396597588885922746.a n = A290074 n

end A290074

/-! ## A290074.P2275421977853700317

`A090129(n+1)+A077957(n)²-1`
-/

namespace A290074.P2275421977853700317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090129 (n + 1) + (A077957 n ^ 2 - 1)

end

end A290074.P2275421977853700317

namespace A290074

/-- `A090129(n+1)+A077957(n)²-1` -/
def P2275421977853700317.Spec : Prop :=
  ∀ n, P2275421977853700317.a n = A290074 n

end A290074

/-! ## A290074.P2306621477571967719

`or(A011782(n)-1, A011782(A004442(n)))`
-/

namespace A290074.P2306621477571967719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 n - 1) (A011782 (A004442 n).toNat)

end

end A290074.P2306621477571967719

namespace A290074

/-- `or(A011782(n)-1, A011782(A004442(n)))` -/
def P2306621477571967719.Spec : Prop :=
  ∀ n, P2306621477571967719.a n = A290074 n

end A290074

/-! ## A290074.P1570372837153735526

`and(A099035(n+1), A290114(n))`
-/

namespace A290074.P1570372837153735526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099035 (n + 1)) (A290114 n)

end

end A290074.P1570372837153735526

namespace A290074

/-- `and(A099035(n+1), A290114(n))` -/
def P1570372837153735526.Spec : Prop :=
  ∀ n, P1570372837153735526.a n = A290074 n

end A290074

/-! ## A290074.P5740055296560321352

`A283507(n)+A290072(n)-A283505(n)`
-/

namespace A290074.P5740055296560321352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283507 n + (A290072 n - A283505 n)

end

end A290074.P5740055296560321352

namespace A290074

/-- `A283507(n)+A290072(n)-A283505(n)` -/
def P5740055296560321352.Spec : Prop :=
  ∀ n, P5740055296560321352.a n = A290074 n

end A290074

/-!
# A290075: Number of monomials in c(n) where c(1) = x, c(2) = y, c(n+2) = c(n+1) + c(n)^2.

The programs for A290075, the canonical program `A290075.P15704188963845953926` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290075 has offset 1).

The definition of A290075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290075.P11583811053153625839

`ogf((-1+x+2x^2-x^3+x^4)/(-1+2x+2x^2-4x^3))`
-/

namespace A290075.P11583811053153625839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2, 1, -1] [1, -2, -2, 4] n

end

end A290075.P11583811053153625839

namespace A290075

/-- `ogf((-1+x+2x^2-x^3+x^4)/(-1+2x+2x^2-4x^3))` -/
def P11583811053153625839.Spec : Prop :=
  ∀ n, P11583811053153625839.a n = A290075 (n + 1)

end A290075

/-! ## A290075.P4019777472719683760

`A007179(floor(n-atan(n)))+2^floor(n/2)`
-/

namespace A290075.P4019777472719683760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007179 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat : ℚ) + (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A290075.P4019777472719683760

namespace A290075

/-- `A007179(floor(n-atan(n)))+2^floor(n/2)` -/
def P4019777472719683760.Spec : Prop :=
  ∀ n, P4019777472719683760.a n = (A290075 (n + 1) : ℚ)

end A290075

/-! ## A290075.P15877821345693824039

`A016116(n)+A007179(floor(n-atan(n)))`
-/

namespace A290075.P15877821345693824039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + A007179 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A290075.P15877821345693824039

namespace A290075

/-- `A016116(n)+A007179(floor(n-atan(n)))` -/
def P15877821345693824039.Spec : Prop :=
  ∀ n, P15877821345693824039.a n = A290075 (n + 1)

end A290075

/-! ## A290075.P15704188963845953926

`A016116(n)+A007179(A289207(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A290075

/-- `A016116(n)+A007179(A289207(n))` -/
def P15704188963845953926.Spec : Prop :=
  ∀ n, P15704188963845953926.a n = A290075 (n + 1)

theorem P15704188963845953926.correct : P15704188963845953926.Spec := by
  intro n
  simp only [A290075, Nat.add_sub_cancel]

end A290075

/-! ## A290075.P14450208216357211112

`(A034008(n)+A029744(n+1))/2`
-/

namespace A290075.P14450208216357211112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034008 n + A029744 (n + 1) : ℚ) / 2

end

end A290075.P14450208216357211112

namespace A290075

/-- `(A034008(n)+A029744(n+1))/2` -/
def P14450208216357211112.Spec : Prop :=
  ∀ n, P14450208216357211112.a n = (A290075 (n + 1) : ℚ)

end A290075

/-! ## A290075.P13917989210012647964

`ceil(2^(n-1))-A135094(floor(n-atan(n)))`
-/

namespace A290075.P13917989210012647964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A135094 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A290075.P13917989210012647964

namespace A290075

/-- `ceil(2^(n-1))-A135094(floor(n-atan(n)))` -/
def P13917989210012647964.Spec : Prop :=
  ∀ n, P13917989210012647964.a n = A290075 (n + 1)

end A290075

/-!
# A290076: Restricted growth sequence transform of A289625(A005940(1+n)).

The programs for A290076, there is no canonical definition to state claims against.
-/

/-! ## A290076.P10499872389988785442

`A289626(n+1)-A243055(A110880(n))`
-/

namespace A290076.P10499872389988785442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (n + 1) - A243055 (A110880 n).toNat

end

end A290076.P10499872389988785442

/-! ## A290076.P11759517592045772972

`A290085(3*A289625(n+1))-A070824(A109606(3*(n+1)))`
-/

namespace A290076.P11759517592045772972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290085 (3 * A289625 (n + 1)).toNat - A070824 (A109606 (3 * (n + 1))).toNat

end

end A290076.P11759517592045772972

/-!
# A290077: a(n) = A000010(A005940(1+n)).

The programs for A290077, the canonical program `A290077.P1811018423005109397` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290077 has offset 0).

The definition of A290077 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A005940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A290077.P1811018423005109397

`A000010(A005940(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A290077

/-- `A000010(A005940(1+n))` -/
def P1811018423005109397.Spec : Prop :=
  ∀ n, P1811018423005109397.a n = A290077 n

theorem P1811018423005109397.correct : P1811018423005109397.Spec := by
  intro n
  simp only [A290077]

end A290077

/-! ## A290077.P12342078569978592287

`A364568(n)+A364567(n)`
-/

namespace A290077.P12342078569978592287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364568 n + A364567 n

end

end A290077.P12342078569978592287

namespace A290077

/-- `A364568(n)+A364567(n)` -/
def P12342078569978592287.Spec : Prop :=
  ∀ n, P12342078569978592287.a n = A290077 n

end A290077

/-! ## A290077.P4137226371127552595

`A000010(A292602(4*n+3))`
-/

namespace A290077.P4137226371127552595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A292602 (4 * n + 3)).toNat

end

end A290077.P4137226371127552595

namespace A290077

/-- `A000010(A292602(4*n+3))` -/
def P4137226371127552595.Spec : Prop :=
  ∀ n, P4137226371127552595.a n = A290077 n

end A290077

/-! ## A290077.P1391839917409412998

`A000010(A364499(n+1)+n+1)`
-/

namespace A290077.P1391839917409412998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A364499 (n + 1) + (n + 1 : ℤ)).toNat

end

end A290077.P1391839917409412998

namespace A290077

/-- `A000010(A364499(n+1)+n+1)` -/
def P1391839917409412998.Spec : Prop :=
  ∀ n, P1391839917409412998.a n = A290077 n

end A290077

/-! ## A290077.P11761616475334481693

`A000010(A243353(A006068(n)))`
-/

namespace A290077.P11761616475334481693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A243353 (A006068 n).toNat).toNat

end

end A290077.P11761616475334481693

namespace A290077

/-- `A000010(A243353(A006068(n)))` -/
def P11761616475334481693.Spec : Prop :=
  ∀ n, P11761616475334481693.a n = A290077 n

end A290077

/-! ## A290077.P420136376081517751

`A000010(A250246(A252753(n)))`
-/

namespace A290077.P420136376081517751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A250246 (A252753 n).toNat).toNat

end

end A290077.P420136376081517751

namespace A290077

/-- `A000010(A250246(A252753(n)))` -/
def P420136376081517751.Spec : Prop :=
  ∀ n, P420136376081517751.a n = A290077 n

end A290077

/-! ## A290077.P12135288551924266700

`A000010(A279338(A279344(n)))`
-/

namespace A290077.P12135288551924266700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A279338 (A279344 n).toNat).toNat

end

end A290077.P12135288551924266700

namespace A290077

/-- `A000010(A279338(A279344(n)))` -/
def P12135288551924266700.Spec : Prop :=
  ∀ n, P12135288551924266700.a n = A290077 n

end A290077

/-! ## A290077.P12355578402284650977

`A000010(A302026(A269387(n)))`
-/

namespace A290077.P12355578402284650977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A302026 (A269387 n).toNat).toNat

end

end A290077.P12355578402284650977

namespace A290077

/-- `A000010(A302026(A269387(n)))` -/
def P12355578402284650977.Spec : Prop :=
  ∀ n, P12355578402284650977.a n = A290077 n

end A290077

/-! ## A290077.P3538084922712215609

`A000010(A324394(n)*A324395(n))`
-/

namespace A290077.P3538084922712215609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A324394 n * A324395 n).toNat

end

end A290077.P3538084922712215609

namespace A290077

/-- `A000010(A324394(n)*A324395(n))` -/
def P3538084922712215609.Spec : Prop :=
  ∀ n, P3538084922712215609.a n = A290077 n

end A290077

/-! ## A290077.P14961287135473688719

`A000010(A337375(n)*A337376(n))`
-/

namespace A290077.P14961287135473688719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A337375 n * A337376 n).toNat

end

end A290077.P14961287135473688719

namespace A290077

/-- `A000010(A337375(n)*A337376(n))` -/
def P14961287135473688719.Spec : Prop :=
  ∀ n, P14961287135473688719.a n = A290077 n

end A290077

/-! ## A290077.P8116082888449063810

`A000010(A340362(n+1)+A324106(n+1))`
-/

namespace A290077.P8116082888449063810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A340362 (n + 1) + A324106 (n + 1)).toNat

end

end A290077.P8116082888449063810

namespace A290077

/-- `A000010(A340362(n+1)+A324106(n+1))` -/
def P8116082888449063810.Spec : Prop :=
  ∀ n, P8116082888449063810.a n = A290077 n

end A290077

/-! ## A290077.P6282665636661463914

`A000010(A324641(n+1)-A324640(n+1))`
-/

namespace A290077.P6282665636661463914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A290077.P6282665636661463914

namespace A290077

/-- `A000010(A324641(n+1)-A324640(n+1))` -/
def P6282665636661463914.Spec : Prop :=
  ∀ n, P6282665636661463914.a n = A290077 n

end A290077

/-! ## A290077.P14527872856910114531

`A000010(A340364(n+1)*A340365(n+1))`
-/

namespace A290077.P14527872856910114531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A340364 (n + 1) * A340365 (n + 1)).toNat

end

end A290077.P14527872856910114531

namespace A290077

/-- `A000010(A340364(n+1)*A340365(n+1))` -/
def P14527872856910114531.Spec : Prop :=
  ∀ n, P14527872856910114531.a n = A290077 n

end A290077

/-! ## A290077.P6788972576643666927

`A109606(A005940(n+1))+1`
-/

namespace A290077.P6788972576643666927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (A005940 (n + 1)).toNat + 1

end

end A290077.P6788972576643666927

namespace A290077

/-- `A109606(A005940(n+1))+1` -/
def P6788972576643666927.Spec : Prop :=
  ∀ n, P6788972576643666927.a n = A290077 n

end A290077

/-! ## A290077.P223105342370718017

`A039649(A005940(char[2]+1+n))-1`
-/

namespace A290077.P223105342370718017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A005940 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat - 1

end

end A290077.P223105342370718017

namespace A290077

/-- `A039649(A005940(char[2]+1+n))-1` -/
def P223105342370718017.Spec : Prop :=
  ∀ n, P223105342370718017.a n = A290077 n

end A290077

/-! ## A290077.P18382173460802367078

`A039649(abs(1-A005940(n+1))+1)-1`
-/

namespace A290077.P18382173460802367078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (|1 - A005940 (n + 1)| + 1).toNat - 1

end

end A290077.P18382173460802367078

namespace A290077

/-- `A039649(abs(1-A005940(n+1))+1)-1` -/
def P18382173460802367078.Spec : Prop :=
  ∀ n, P18382173460802367078.a n = A290077 n

end A290077

/-! ## A290077.P5384037668994146968

`A000010(A091203(A305417(n)))`
-/

namespace A290077.P5384037668994146968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A091203 (A305417 n).toNat).toNat

end

end A290077.P5384037668994146968

namespace A290077

/-- `A000010(A091203(A305417(n)))` -/
def P5384037668994146968.Spec : Prop :=
  ∀ n, P5384037668994146968.a n = A290077 n

end A290077

/-! ## A290077.P3104527279479097825

`A000010(A246367(A227413(n+1)))`
-/

namespace A290077.P3104527279479097825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A246367 (A227413 (n + 1)).toNat).toNat

end

end A290077.P3104527279479097825

namespace A290077

/-- `A000010(A246367(A227413(n+1)))` -/
def P3104527279479097825.Spec : Prop :=
  ∀ n, P3104527279479097825.a n = A290077 n

end A290077

/-! ## A290077.P2113904704250972999

`A285702(A244154(n))`
-/

namespace A290077.P2113904704250972999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285702 (A244154 n).toNat

end

end A290077.P2113904704250972999

namespace A290077

/-- `A285702(A244154(n))` -/
def P2113904704250972999.Spec : Prop :=
  ∀ n, P2113904704250972999.a n = A290077 n

end A290077

/-! ## A290077.P14708610041669703266

`A349128(A005940(2*n+1))`
-/

namespace A290077.P14708610041669703266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349128 (A005940 (2 * n + 1)).toNat

end

end A290077.P14708610041669703266

namespace A290077

/-- `A349128(A005940(2*n+1))` -/
def P14708610041669703266.Spec : Prop :=
  ∀ n, P14708610041669703266.a n = A290077 n

end A290077

/-!
# A290078: Where the ratio A235027(n)/n obtains record values.

The programs for A290078, there is no canonical definition to state claims against.
-/

/-! ## A290078.P10054006405468668181

`A008578(record[A280302(n+5)%(A053012(n+2)+1)])`
-/

namespace A290078.P10054006405468668181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280302 (n + 5)) (A053012 (n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A290078.P10054006405468668181

/-!
# A290079: Characteristic function for A249721: a(n) = 1 if there are either no 1-digits at all in base-3 representation of n, or if there are exactly two 1's next to each other, a(n) = 0 in any other cases.

The programs for A290079, the canonical program `A290079.P14752260854256598816` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290079 has offset 0).

The definition of A290079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290079.P15819658703876186195

`char[A249721(n)]`
-/

namespace A290079.P15819658703876186195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249721 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A290079.P15819658703876186195

namespace A290079

/-- `char[A249721(n)]` -/
def P15819658703876186195.Spec : Prop :=
  ∀ n, (P15819658703876186195.a n : ℤ) = A290079 n

end A290079

/-! ## A290079.P14079506338308732183

`A386952(n)%2`
-/

namespace A290079.P14079506338308732183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A386952 n) 2

end

end A290079.P14079506338308732183

namespace A290079

/-- `A386952(n)%2` -/
def P14079506338308732183.Spec : Prop :=
  ∀ n, P14079506338308732183.a n = A290079 n

end A290079

/-! ## A290079.P7197303636733803166

`char[2*A051382(n+1)]`
-/

namespace A290079.P7197303636733803166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A290079.P7197303636733803166

namespace A290079

/-- `char[2*A051382(n+1)]` -/
def P7197303636733803166.Spec : Prop :=
  ∀ n, (P7197303636733803166.a n : ℤ) = A290079 n

end A290079

/-! ## A290079.P11152996908780576169

`char[2*lt[A000989(n), 2]]`
-/

namespace A290079.P11152996908780576169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A290079.P11152996908780576169

namespace A290079

/-- `char[2*lt[A000989(n), 2]]` -/
def P11152996908780576169.Spec : Prop :=
  ∀ n, (P11152996908780576169.a n : ℤ) = A290079 n

end A290079

/-! ## A290079.P14752260854256598816

`char[2*eq[0, char[A249719(n+1)]]]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A290079

/-- `char[2*eq[0, char[A249719(n+1)]]]` -/
def P14752260854256598816.Spec : Prop :=
  ∀ n, (P14752260854256598816.a n : ℤ) = A290079 n

theorem P14752260854256598816.correct : P14752260854256598816.Spec := by
  intro n
  simp only [A290079]

end A290079

/-! ## A290079.P15308396950113060638

`char[2*n]-char[A249720(n+1)]`
-/

namespace A290079.P15308396950113060638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249720 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290079.P15308396950113060638

namespace A290079

/-- `char[2*n]-char[A249720(n+1)]` -/
def P15308396950113060638.Spec : Prop :=
  ∀ n, P15308396950113060638.a n = A290079 n

end A290079

/-! ## A290079.P14457312310487847443

`A000035(A386952(n))`
-/

namespace A290079.P14457312310487847443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A386952 n).toNat

end

end A290079.P14457312310487847443

namespace A290079

/-- `A000035(A386952(n))` -/
def P14457312310487847443.Spec : Prop :=
  ∀ n, P14457312310487847443.a n = A290079 n

end A290079

/-! ## A290079.P13543376584287948370

`A290125(C(5, A290091(n)))`
-/

namespace A290079.P13543376584287948370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290125 (Nat.choose 5 (A290091 n).toNat)

end

end A290079.P13543376584287948370

namespace A290079

/-- `A290125(C(5, A290091(n)))` -/
def P13543376584287948370.Spec : Prop :=
  ∀ n, P13543376584287948370.a n = A290079 n

end A290079

/-! ## A290079.P2784092371277076449

`and(A059841(n), A386952(n))`
-/

namespace A290079.P2784092371277076449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059841 n) (A386952 n)

end

end A290079.P2784092371277076449

namespace A290079

/-- `and(A059841(n), A386952(n))` -/
def P2784092371277076449.Spec : Prop :=
  ∀ n, P2784092371277076449.a n = A290079 n

end A290079

/-! ## A290079.P12648355582863860051

`and(A060576(n), A386952(n))`
-/

namespace A290079.P12648355582863860051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A386952 n)

end

end A290079.P12648355582863860051

namespace A290079

/-- `and(A060576(n), A386952(n))` -/
def P12648355582863860051.Spec : Prop :=
  ∀ n, P12648355582863860051.a n = A290079 n

end A290079

/-! ## A290079.P14505553350150063896

`and(A158388(n), A386952(n))`
-/

namespace A290079.P14505553350150063896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A386952 n)

end

end A290079.P14505553350150063896

namespace A290079

/-- `and(A158388(n), A386952(n))` -/
def P14505553350150063896.Spec : Prop :=
  ∀ n, P14505553350150063896.a n = A290079 n

end A290079

/-! ## A290079.P11321071349662577562

`A023533(2*(A290091(n)+1))`
-/

namespace A290079.P11321071349662577562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (2 * (A290091 n + 1)).toNat

end

end A290079.P11321071349662577562

namespace A290079

/-- `A023533(2*(A290091(n)+1))` -/
def P11321071349662577562.Spec : Prop :=
  ∀ n, P11321071349662577562.a n = A290079 n

end A290079

/-! ## A290079.P10560615179533893293

`A023533(A290091(n)+A290091(n)+2)`
-/

namespace A290079.P10560615179533893293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (A290091 n + (A290091 n + 2)).toNat

end

end A290079.P10560615179533893293

namespace A290079

/-- `A023533(A290091(n)+A290091(n)+2)` -/
def P10560615179533893293.Spec : Prop :=
  ∀ n, P10560615179533893293.a n = A290079 n

end A290079

/-! ## A290079.P3271052163158076887

`(A249733(n)+1+n)%2`
-/

namespace A290079.P3271052163158076887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249733 n + 1 + (n : ℤ)) 2

end

end A290079.P3271052163158076887

namespace A290079

/-- `(A249733(n)+1+n)%2` -/
def P3271052163158076887.Spec : Prop :=
  ∀ n, P3271052163158076887.a n = A290079 n

end A290079

/-! ## A290079.P15678749493675855171

`and(A176410(n), A386952(n))`
-/

namespace A290079.P15678749493675855171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176410 n) (A386952 n)

end

end A290079.P15678749493675855171

namespace A290079

/-- `and(A176410(n), A386952(n))` -/
def P15678749493675855171.Spec : Prop :=
  ∀ n, P15678749493675855171.a n = A290079 n

end A290079

/-! ## A290079.P18434061686163340931

`and(A176794(n), A386952(n))`
-/

namespace A290079.P18434061686163340931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176794 n) (A386952 n)

end

end A290079.P18434061686163340931

namespace A290079

/-- `and(A176794(n), A386952(n))` -/
def P18434061686163340931.Spec : Prop :=
  ∀ n, P18434061686163340931.a n = A290079 n

end A290079

/-! ## A290079.P3335129563066286492

`and(A048578(n), A386952(n))`
-/

namespace A290079.P3335129563066286492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A386952 n)

end

end A290079.P3335129563066286492

namespace A290079

/-- `and(A048578(n), A386952(n))` -/
def P3335129563066286492.Spec : Prop :=
  ∀ n, P3335129563066286492.a n = A290079 n

end A290079

/-! ## A290079.P17621184087042600221

`and(A020737(n), A386952(n))`
-/

namespace A290079.P17621184087042600221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A386952 n)

end

end A290079.P17621184087042600221

namespace A290079

/-- `and(A020737(n), A386952(n))` -/
def P17621184087042600221.Spec : Prop :=
  ∀ n, P17621184087042600221.a n = A290079 n

end A290079

/-! ## A290079.P13963323504331821164

`and(A195744(n), A386952(n))`
-/

namespace A290079.P13963323504331821164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A386952 n)

end

end A290079.P13963323504331821164

namespace A290079

/-- `and(A195744(n), A386952(n))` -/
def P13963323504331821164.Spec : Prop :=
  ∀ n, P13963323504331821164.a n = A290079 n

end A290079

/-! ## A290079.P17889811320277658374

`and(A122041(n+1), A386952(n))`
-/

namespace A290079.P17889811320277658374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A386952 n)

end

end A290079.P17889811320277658374

namespace A290079

/-- `and(A122041(n+1), A386952(n))` -/
def P17889811320277658374.Spec : Prop :=
  ∀ n, P17889811320277658374.a n = A290079 n

end A290079

/-!
# A290080: a(1) = 0; for n > 1, a(n) = sigma(bigomega(n)).

The programs for A290080, the canonical program `A290080.P6472983260701268477` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290080 has offset 1).

The definition of A290080 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193511, A193512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A290080.P6472983260701268477

`A193511(n+1)+A193512(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A290080

/-- `A193511(n+1)+A193512(n+1)` -/
def P6472983260701268477.Spec : Prop :=
  ∀ n, P6472983260701268477.a n = A290080 (n + 1)

theorem P6472983260701268477.correct : P6472983260701268477.Spec := by
  intro n
  simp only [A290080, Nat.add_sub_cancel]

end A290080

/-! ## A290080.P9066425139307382750

`∑{d}[∑{e}[n+1, #], #]`
-/

namespace A290080.P9066425139307382750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A290080.P9066425139307382750

namespace A290080

/-- `∑{d}[∑{e}[n+1, #], #]` -/
def P9066425139307382750.Spec : Prop :=
  ∀ n, (P9066425139307382750.a n : ℤ) = A290080 (n + 1)

end A290080

/-! ## A290080.P2860625486078751636

`∑{d}[∑{p}[n+1, val(n+1, #)], #]`
-/

namespace A290080.P2860625486078751636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (n + 1) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A290080.P2860625486078751636

namespace A290080

/-- `∑{d}[∑{p}[n+1, val(n+1, #)], #]` -/
def P2860625486078751636.Spec : Prop :=
  ∀ n, (P2860625486078751636.a n : ℤ) = A290080 (n + 1)

end A290080

/-! ## A290080.P14911104538729232934

`∑{d}[Δ[A022559(n)], #]`
-/

namespace A290080.P14911104538729232934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A290080.P14911104538729232934

namespace A290080

/-- `∑{d}[Δ[A022559(n)], #]` -/
def P14911104538729232934.Spec : Prop :=
  ∀ n, (P14911104538729232934.a n : ℤ) = A290080 (n + 1)

end A290080

/-! ## A290080.P7616413768467562261

`∑{d}[A001222(n+1), #]`
-/

namespace A290080.P7616413768467562261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A290080.P7616413768467562261

namespace A290080

/-- `∑{d}[A001222(n+1), #]` -/
def P7616413768467562261.Spec : Prop :=
  ∀ n, (P7616413768467562261.a n : ℤ) = A290080 (n + 1)

end A290080

/-! ## A290080.P8934682479856064288

`∑{d}[1-A073093(n+1), #]`
-/

namespace A290080.P8934682479856064288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A073093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A290080.P8934682479856064288

namespace A290080

/-- `∑{d}[1-A073093(n+1), #]` -/
def P8934682479856064288.Spec : Prop :=
  ∀ n, (P8934682479856064288.a n : ℤ) = A290080 (n + 1)

end A290080

/-! ## A290080.P345001525425017732

`∑{d}[A255201(n+1)/2, #]`
-/

namespace A290080.P345001525425017732
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255201 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A290080.P345001525425017732

namespace A290080

/-- `∑{d}[A255201(n+1)/2, #]` -/
def P345001525425017732.Spec : Prop :=
  ∀ n, (P345001525425017732.a n : ℤ) = A290080 (n + 1)

end A290080

/-! ## A290080.P4925265355252427463

`∑{d}[1-A317531(2*(n+1)), #]`
-/

namespace A290080.P4925265355252427463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A317531 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A290080.P4925265355252427463

namespace A290080

/-- `∑{d}[1-A317531(2*(n+1)), #]` -/
def P4925265355252427463.Spec : Prop :=
  ∀ n, (P4925265355252427463.a n : ℤ) = A290080 (n + 1)

end A290080

/-! ## A290080.P4002571897187194335

`∑{d}[A066959(n+1)/(n+1), #]`
-/

namespace A290080.P4002571897187194335
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066959 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A290080.P4002571897187194335

namespace A290080

/-- `∑{d}[A066959(n+1)/(n+1), #]` -/
def P4002571897187194335.Spec : Prop :=
  ∀ n, (P4002571897187194335.a n : ℤ) = A290080 (n + 1)

end A290080

/-! ## A290080.P12331761226231007067

`∑{e}[2^∑{e}[n+1, #], A000203(#)]`
-/

namespace A290080.P12331761226231007067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000203 (Nat.factorization (f1 n) p)

end

end A290080.P12331761226231007067

namespace A290080

/-- `∑{e}[2^∑{e}[n+1, #], A000203(#)]` -/
def P12331761226231007067.Spec : Prop :=
  ∀ n, P12331761226231007067.a n = A290080 (n + 1)

end A290080

/-! ## A290080.P2561076563810416114

`∑{d}[A001222(3*n-(n-2))-1, #]`
-/

namespace A290080.P2561076563810416114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((3 * n : ℤ) - ((n : ℤ) - 2)).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A290080.P2561076563810416114

namespace A290080

/-- `∑{d}[A001222(3*n-(n-2))-1, #]` -/
def P2561076563810416114.Spec : Prop :=
  ∀ n, (P2561076563810416114.a n : ℤ) = A290080 (n + 1)

end A290080

/-! ## A290080.P12771384406887363068

`A324573(A293442(n+1))`
-/

namespace A290080.P12771384406887363068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324573 (A293442 (n + 1)).toNat

end

end A290080.P12771384406887363068

namespace A290080

/-- `A324573(A293442(n+1))` -/
def P12771384406887363068.Spec : Prop :=
  ∀ n, P12771384406887363068.a n = A290080 (n + 1)

end A290080

/-! ## A290080.P10258460167922065445

`A324573(A318470(n+1))`
-/

namespace A290080.P10258460167922065445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324573 (A318470 (n + 1)).toNat

end

end A290080.P10258460167922065445

namespace A290080

/-- `A324573(A318470(n+1))` -/
def P10258460167922065445.Spec : Prop :=
  ∀ n, P10258460167922065445.a n = A290080 (n + 1)

end A290080

/-! ## A290080.P15255938892410572333

`∑{d}[A056239(A105560(n+1)), #]`
-/

namespace A290080.P15255938892410572333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A105560 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A290080.P15255938892410572333

namespace A290080

/-- `∑{d}[A056239(A105560(n+1)), #]` -/
def P15255938892410572333.Spec : Prop :=
  ∀ n, (P15255938892410572333.a n : ℤ) = A290080 (n + 1)

end A290080

/-! ## A290080.P2804449137568015922

`∑{d}[A056239(A181819(n+1)), #]`
-/

namespace A290080.P2804449137568015922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A181819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A290080.P2804449137568015922

namespace A290080

/-- `∑{d}[A056239(A181819(n+1)), #]` -/
def P2804449137568015922.Spec : Prop :=
  ∀ n, (P2804449137568015922.a n : ℤ) = A290080 (n + 1)

end A290080

/-! ## A290080.P7582453055220660738

`∑{e}[A061142(n+1), A000203(#)]`
-/

namespace A290080.P7582453055220660738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000203 (Nat.factorization (f1 n).natAbs p)

end

end A290080.P7582453055220660738

namespace A290080

/-- `∑{e}[A061142(n+1), A000203(#)]` -/
def P7582453055220660738.Spec : Prop :=
  ∀ n, P7582453055220660738.a n = A290080 (n + 1)

end A290080

/-! ## A290080.P3338301526908715453

`∑{e}[A068794(n+1), A000203(#)]`
-/

namespace A290080.P3338301526908715453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000203 (Nat.factorization (f1 n).natAbs p)

end

end A290080.P3338301526908715453

namespace A290080

/-- `∑{e}[A068794(n+1), A000203(#)]` -/
def P3338301526908715453.Spec : Prop :=
  ∀ n, P3338301526908715453.a n = A290080 (n + 1)

end A290080

/-! ## A290080.P6023309984733514664

`∑{d}[log2(A167323(n+1)/A167321(n+1)), #]`
-/

namespace A290080.P6023309984733514664
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A167323 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A290080.P6023309984733514664

namespace A290080

/-- `∑{d}[log2(A167323(n+1)/A167321(n+1)), #]` -/
def P6023309984733514664.Spec : Prop :=
  ∀ n, (P6023309984733514664.a n : ℤ) = A290080 (n + 1)

end A290080

/-! ## A290080.P16084938315076458693

`∑{d}[A252736(2*(n+1)), #]`
-/

namespace A290080.P16084938315076458693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A290080.P16084938315076458693

namespace A290080

/-- `∑{d}[A252736(2*(n+1)), #]` -/
def P16084938315076458693.Spec : Prop :=
  ∀ n, (P16084938315076458693.a n : ℤ) = A290080 (n + 1)

end A290080

/-! ## A290080.P9134465861185064452

`∑{d}[∑{d}[A165824(n+1), A001221(#)], #]`
-/

namespace A290080.P9134465861185064452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A001221 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A290080.P9134465861185064452

namespace A290080

/-- `∑{d}[∑{d}[A165824(n+1), A001221(#)], #]` -/
def P9134465861185064452.Spec : Prop :=
  ∀ n, (P9134465861185064452.a n : ℤ) = A290080 (n + 1)

end A290080

/-!
# A290081: a(n) = number of ways of writing n as the sum of two odd positive squares.

The programs for A290081, the canonical program `A290081.P12748911258898542202` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290081 has offset 0).

The definition of A290081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290081.P8562889017179509143

`A063725(n*and(2, n)!-n)`
-/

namespace A290081.P8562889017179509143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (n * Nat.factorial (Nat.land 2 n) - n)

end

end A290081.P8562889017179509143

namespace A290081

/-- `A063725(n*and(2, n)!-n)` -/
def P8562889017179509143.Spec : Prop :=
  ∀ n, P8562889017179509143.a n = A290081 n

end A290081

/-! ## A290081.P14200794155745244303

`A000925(n)*A021913(n)`
-/

namespace A290081.P14200794155745244303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n * A021913 n

end

end A290081.P14200794155745244303

namespace A290081

/-- `A000925(n)*A021913(n)` -/
def P14200794155745244303.Spec : Prop :=
  ∀ n, P14200794155745244303.a n = A290081 n

end A290081

/-! ## A290081.P1826875489314261887

`A000925(n)*A050605(n)`
-/

namespace A290081.P1826875489314261887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n * A050605 n

end

end A290081.P1826875489314261887

namespace A290081

/-- `A000925(n)*A050605(n)` -/
def P1826875489314261887.Spec : Prop :=
  ∀ n, P1826875489314261887.a n = A290081 n

end A290081

/-! ## A290081.P5054020516655281402

`A063725(n*A021913(n))`
-/

namespace A290081.P5054020516655281402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 ((n : ℤ) * A021913 n).toNat

end

end A290081.P5054020516655281402

namespace A290081

/-- `A063725(n*A021913(n))` -/
def P5054020516655281402.Spec : Prop :=
  ∀ n, P5054020516655281402.a n = A290081 n

end A290081

/-! ## A290081.P10812183499367843409

`A050605(n)*A063725(n)`
-/

namespace A290081.P10812183499367843409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 n * A063725 n

end

end A290081.P10812183499367843409

namespace A290081

/-- `A050605(n)*A063725(n)` -/
def P10812183499367843409.Spec : Prop :=
  ∀ n, P10812183499367843409.a n = A290081 n

end A290081

/-! ## A290081.P17401665681233455157

`A000925(n)*A132380(n)`
-/

namespace A290081.P17401665681233455157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n * A132380 n

end

end A290081.P17401665681233455157

namespace A290081

/-- `A000925(n)*A132380(n)` -/
def P17401665681233455157.Spec : Prop :=
  ∀ n, P17401665681233455157.a n = A290081 n

end A290081

/-! ## A290081.P15889521086187621151

`A063725(n)*A132380(n)`
-/

namespace A290081.P15889521086187621151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n * A132380 n

end

end A290081.P15889521086187621151

namespace A290081

/-- `A063725(n)*A132380(n)` -/
def P15889521086187621151.Spec : Prop :=
  ∀ n, P15889521086187621151.a n = A290081 n

end A290081

/-! ## A290081.P13088562662171808172

`and(A000925(n), A040270(n))`
-/

namespace A290081.P13088562662171808172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000925 n) (A040270 n)

end

end A290081.P13088562662171808172

namespace A290081

/-- `and(A000925(n), A040270(n))` -/
def P13088562662171808172.Spec : Prop :=
  ∀ n, P13088562662171808172.a n = A290081 n

end A290081

/-! ## A290081.P17407937168823201945

`A000925(n)*A248174(n+1)`
-/

namespace A290081.P17407937168823201945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n * A248174 (n + 1)

end

end A290081.P17407937168823201945

namespace A290081

/-- `A000925(n)*A248174(n+1)` -/
def P17407937168823201945.Spec : Prop :=
  ∀ n, P17407937168823201945.a n = A290081 n

end A290081

/-! ## A290081.P16797586258021182275

`A063725(n)*A248174(n+1)`
-/

namespace A290081.P16797586258021182275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n * A248174 (n + 1)

end

end A290081.P16797586258021182275

namespace A290081

/-- `A063725(n)*A248174(n+1)` -/
def P16797586258021182275.Spec : Prop :=
  ∀ n, P16797586258021182275.a n = A290081 n

end A290081

/-! ## A290081.P896146515470085499

`(A050603(n)-1)*A063725(n)`
-/

namespace A290081.P896146515470085499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050603 n - 1) * A063725 n

end

end A290081.P896146515470085499

namespace A290081

/-- `(A050603(n)-1)*A063725(n)` -/
def P896146515470085499.Spec : Prop :=
  ∀ n, P896146515470085499.a n = A290081 n

end A290081

/-! ## A290081.P8607136744796432618

`(1-A133872(n))*A063725(n)`
-/

namespace A290081.P8607136744796432618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A133872 n) * A063725 n

end

end A290081.P8607136744796432618

namespace A290081

/-- `(1-A133872(n))*A063725(n)` -/
def P8607136744796432618.Spec : Prop :=
  ∀ n, P8607136744796432618.a n = A290081 n

end A290081

/-! ## A290081.P34578149392006289

`and(1, A032438(n))*A000925(n)`
-/

namespace A290081.P34578149392006289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A032438 n) * A000925 n

end

end A290081.P34578149392006289

namespace A290081

/-- `and(1, A032438(n))*A000925(n)` -/
def P34578149392006289.Spec : Prop :=
  ∀ n, P34578149392006289.a n = A290081 n

end A290081

/-! ## A290081.P14508821866924399669

`(1-A118831(n+1)²)*A000925(n)`
-/

namespace A290081.P14508821866924399669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A118831 (n + 1) ^ 2) * A000925 n

end

end A290081.P14508821866924399669

namespace A290081

/-- `(1-A118831(n+1)²)*A000925(n)` -/
def P14508821866924399669.Spec : Prop :=
  ∀ n, P14508821866924399669.a n = A290081 n

end A290081

/-! ## A290081.P40280431159320282

`(1-char[A042965(n+1)])*A000925(n)`
-/

namespace A290081.P40280431159320282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * A000925 n

end

end A290081.P40280431159320282

namespace A290081

/-- `(1-char[A042965(n+1)])*A000925(n)` -/
def P40280431159320282.Spec : Prop :=
  ∀ n, P40280431159320282.a n = A290081 n

end A290081

/-! ## A290081.P9946082919837592898

`A063725(A050603(n))*A063725(n)`
-/

namespace A290081.P9946082919837592898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A050603 n).toNat * A063725 n

end

end A290081.P9946082919837592898

namespace A290081

/-- `A063725(A050603(n))*A063725(n)` -/
def P9946082919837592898.Spec : Prop :=
  ∀ n, P9946082919837592898.a n = A290081 n

end A290081

/-! ## A290081.P8791056154614995086

`A000925(n)*A098725(n-A098725(n))`
-/

namespace A290081.P8791056154614995086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n * A098725 ((n : ℤ) - A098725 n).toNat

end

end A290081.P8791056154614995086

namespace A290081

/-- `A000925(n)*A098725(n-A098725(n))` -/
def P8791056154614995086.Spec : Prop :=
  ∀ n, P8791056154614995086.a n = A290081 n

end A290081

/-! ## A290081.P6520309986325899509

`A063725(n)*A133872(n+2)`
-/

namespace A290081.P6520309986325899509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n * A133872 (n + 2)

end

end A290081.P6520309986325899509

namespace A290081

/-- `A063725(n)*A133872(n+2)` -/
def P6520309986325899509.Spec : Prop :=
  ∀ n, P6520309986325899509.a n = A290081 n

end A290081

/-! ## A290081.P12748911258898542202

`A008442(A065260(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A290081

/-- `A008442(A065260(n+1))` -/
def P12748911258898542202.Spec : Prop :=
  ∀ n, P12748911258898542202.a n = A290081 n

theorem P12748911258898542202.correct : P12748911258898542202.Spec := by
  intro n
  simp only [A290081]

end A290081

/-! ## A290081.P16109787583339924147

`A338690(A047417(n+1))`
-/

namespace A290081.P16109787583339924147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338690 (A047417 (n + 1)).toNat

end

end A290081.P16109787583339924147

namespace A290081

/-- `A338690(A047417(n+1))` -/
def P16109787583339924147.Spec : Prop :=
  ∀ n, P16109787583339924147.a n = A290081 n

end A290081

/-!
# A290083: Odd bisection of A289626.

The programs for A290083, there is no canonical definition to state claims against.
-/

/-! ## A290083.P11376836927101800920

`A289626(2*n+1)`
-/

namespace A290083.P11376836927101800920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (2 * n + 1)

end

end A290083.P11376836927101800920

/-! ## A290083.P9603277668840170765

`A023443(A289626((n+1)²-n²)+1)`
-/

namespace A290083.P9603277668840170765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A289626 ((n + 1) ^ 2 - n ^ 2) + 1).toNat

end

end A290083.P9603277668840170765

/-! ## A290083.P1540778700259206681

`A289626((n+1)²-n²)%A078371(n)`
-/

namespace A290083.P1540778700259206681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289626 ((n + 1) ^ 2 - n ^ 2)) (A078371 n)

end

end A290083.P1540778700259206681

/-! ## A290083.P9196452952079341054

`A289626(A016825(n))%A016825(n)`
-/

namespace A290083.P9196452952079341054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289626 (A016825 n).toNat) (A016825 n)

end

end A290083.P9196452952079341054

/-! ## A290083.P2866105835243348964

`A290087(A053194(n+1))`
-/

namespace A290083.P2866105835243348964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290087 (A053194 (n + 1)).toNat

end

end A290083.P2866105835243348964

/-! ## A290083.P9223893729395635734

`A290087(A063507(2*n+1))`
-/

namespace A290083.P9223893729395635734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290087 (A063507 (2 * n + 1)).toNat

end

end A290083.P9223893729395635734

/-! ## A290083.P2902294537742112424

`A002260(A289628(2*n+1))`
-/

namespace A290083.P2902294537742112424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A289628 (2 * n + 1)).toNat

end

end A290083.P2902294537742112424

/-! ## A290083.P7375979847406306750

`A144328(A289628(2*n+1)+1)`
-/

namespace A290083.P7375979847406306750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A289628 (2 * n + 1) + 1).toNat

end

end A290083.P7375979847406306750

/-! ## A290083.P5782041442398023726

`A193738(A289628(2*n+1)-1)`
-/

namespace A290083.P5782041442398023726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (A289628 (2 * n + 1) - 1).toNat

end

end A290083.P5782041442398023726

/-! ## A290083.P8939480461250859128

`A002262(A289628(2*n+1)+A000007(n))`
-/

namespace A290083.P8939480461250859128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A289628 (2 * n + 1) + A000007 n).toNat

end

end A290083.P8939480461250859128

/-! ## A290083.P11178005152949688982

`A003991(A289628(2*n+1))/A101296(2*n+1)`
-/

namespace A290083.P11178005152949688982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A289628 (2 * n + 1)).toNat : ℚ) / (A101296 (2 * n + 1) : ℚ)

end

end A290083.P11178005152949688982

/-!
# A290084: a(1) = a(2) = 1; for n > 2, a(n) = A000010(n) / A270492(n).

The programs for A290084, there is no canonical definition to state claims against.
-/

/-! ## A290084.P2256825954643368957

`A000010(n+1)/A028310(A270492(n+1))`
-/

namespace A290084.P2256825954643368957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A028310 (A270492 (n + 1)).toNat : ℚ)

end

end A290084.P2256825954643368957

/-! ## A290084.P3460977503047144835

`A000026(A034380(n+1)^A046073(n+1))`
-/

namespace A290084.P3460977503047144835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (SequenceMachineLib.roundAway ((A034380 (n + 1) : ℚ) ^ (A046073 (n + 1) : ℤ))).toNat

end

end A290084.P3460977503047144835

/-! ## A290084.P8526609015468205129

`A033273(A034380(n+1)^A002322(n+1))`
-/

namespace A290084.P8526609015468205129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (SequenceMachineLib.roundAway ((A034380 (n + 1) : ℚ) ^ (A002322 (n + 1) : ℤ))).toNat

end

end A290084.P8526609015468205129

/-! ## A290084.P17317947974927942433

`∏{e}[A034380(n+1)^(A134198(n+1)-A051903(n+1)), #]`
-/

namespace A290084.P17317947974927942433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034380 (n + 1) : ℚ) ^ (A134198 (n + 1) - A051903 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A290084.P17317947974927942433

/-! ## A290084.P14883664622329921663

`∏{e}[A034380(n+1)^(A104192(n+1)-A104195(n+1)), #]`
-/

namespace A290084.P14883664622329921663
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034380 (n + 1) : ℚ) ^ (A104192 (n + 1) - A104195 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A290084.P14883664622329921663

/-! ## A290084.P15604688993305166106

`A000005(A000010(A034380(n+1)^A002322(n+1)))`
-/

namespace A290084.P15604688993305166106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (SequenceMachineLib.roundAway ((A034380 (n + 1) : ℚ) ^ (A002322 (n + 1) : ℤ))).toNat).toNat

end

end A290084.P15604688993305166106

/-! ## A290084.P6210943265317370014

`A033273(A034380(n+1)^((A039649(n+1)-1)/A034380(n+1)))`
-/

namespace A290084.P6210943265317370014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (SequenceMachineLib.roundAway ((A034380 (n + 1) : ℝ) ^ ((A039649 (n + 1) - 1 : ℚ) / (A034380 (n + 1) : ℚ) : ℝ))).toNat

end

end A290084.P6210943265317370014

/-! ## A290084.P4896617817454677927

`A033273(A034380(n+1)^((1-A051953(n+1)+n)/A034380(n+1)))`
-/

namespace A290084.P4896617817454677927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (SequenceMachineLib.roundAway ((A034380 (n + 1) : ℝ) ^ ((1 - A051953 (n + 1) + (n : ℤ) : ℚ) / (A034380 (n + 1) : ℚ) : ℝ))).toNat

end

end A290084.P4896617817454677927

/-!
# A290085: a(n) = A289626(A000005(n)).

The programs for A290085, there is no canonical definition to state claims against.
-/

/-! ## A290085.P5399533131497280198

`A289626(A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290085.P5399533131497280198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (A000005 (n + 1)).toNat

end

end A290085.P5399533131497280198

/-! ## A290085.P9314288973667762558

`A289626(∏{e}[n+1, #+1])`
-/

namespace A290085.P9314288973667762558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A290085.P9314288973667762558

/-! ## A290085.P13646139385912455053

`A289626(∑{d}[n+1, #+1]-∑{d}[n+1, #])`
-/

namespace A290085.P13646139385912455053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (∑ d ∈ Nat.divisors (f1 n), (d + 1) - ∑ d ∈ Nat.divisors (f2 n), d)

end

end A290085.P13646139385912455053

/-! ## A290085.P13499645434328860392

`A289626(A032741(n+1)+1)`
-/

namespace A290085.P13499645434328860392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (A032741 (n + 1) + 1).toNat

end

end A290085.P13499645434328860392

/-! ## A290085.P9779172654012679251

`A289626(A334954(n+1)-1)`
-/

namespace A290085.P9779172654012679251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (A334954 (n + 1) - 1).toNat

end

end A290085.P9779172654012679251

/-! ## A290085.P14367556081378973115

`A289626(A336845(n+1)/A003961(n+1))`
-/

namespace A290085.P14367556081378973115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (SequenceMachineLib.roundAway ((A336845 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ))).toNat

end

end A290085.P14367556081378973115

/-! ## A290085.P17902287759752089254

`A289626(A320107(A003961(A003961(n+1))))`
-/

namespace A290085.P17902287759752089254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (A320107 (A003961 (A003961 (n + 1)).toNat).toNat).toNat

end

end A290085.P17902287759752089254

/-!
# A290086: a(n) = A289626(A000010(n)).

The programs for A290086, there is no canonical definition to state claims against.
-/

/-! ## A290086.P6871134311534774359

`A289626(A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290086.P6871134311534774359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (A000010 (n + 1)).toNat

end

end A290086.P6871134311534774359

/-! ## A290086.P1566393791951328967

`A289626(Δ[A005728(n)])`
-/

namespace A290086.P1566393791951328967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (f1 (n + 1) - f1 n).toNat

end

end A290086.P1566393791951328967

/-! ## A290086.P14201519633703696793

`A289626(A109606(n+1)+1)`
-/

namespace A290086.P14201519633703696793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (A109606 (n + 1) + 1).toNat

end

end A290086.P14201519633703696793

/-! ## A290086.P8194453394184049166

`A289626(A039649(n+1)-1)`
-/

namespace A290086.P8194453394184049166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (A039649 (n + 1) - 1).toNat

end

end A290086.P8194453394184049166

/-! ## A290086.P1264451907674109068

`A289626(1-A051953(n+1)+n)`
-/

namespace A290086.P1264451907674109068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A290086.P1264451907674109068

/-! ## A290086.P10731346581766093210

`A289626(∏{p}[n+1, #-1]*A003557(n+1))`
-/

namespace A290086.P10731346581766093210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 ((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1)).toNat

end

end A290086.P10731346581766093210

/-! ## A290086.P11331847626554717861

`A289626(A104194(n+1)+A002322(n+1))`
-/

namespace A290086.P11331847626554717861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (A104194 (n + 1) + A002322 (n + 1)).toNat

end

end A290086.P11331847626554717861

/-! ## A290086.P3503587226518399393

`A289626(A317841(n+1)+A317839(n+1))`
-/

namespace A290086.P3503587226518399393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (A317841 (n + 1) + A317839 (n + 1)).toNat

end

end A290086.P3503587226518399393

/-! ## A290086.P9480510973040415914

`A289626(A002322(n+1)*A034380(n+1))`
-/

namespace A290086.P9480510973040415914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (A002322 (n + 1) * A034380 (n + 1)).toNat

end

end A290086.P9480510973040415914

/-! ## A290086.P10127768204625106100

`A289626(A384710(n+1))`
-/

namespace A290086.P10127768204625106100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (A384710 (n + 1)).toNat

end

end A290086.P10127768204625106100

/-! ## A290086.P1712195816277883608

`A289626(Δ[eq[1, A038566(n+1)]])`
-/

namespace A290086.P1712195816277883608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A290086.P1712195816277883608

/-! ## A290086.P16747220611510051979

`A289626(A225530(n+1))`
-/

namespace A290086.P16747220611510051979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (A225530 (n + 1)).toNat

end

end A290086.P16747220611510051979

/-!
# A290087: a(1) = 0; for n > 1, a(n) = A289626(A051953(n)).

The programs for A290087, there is no canonical definition to state claims against.
-/

/-! ## A290087.P12599665928255230583

`A054634(A054571(n+1)^5)`
-/

namespace A290087.P12599665928255230583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 (A054571 (n + 1) ^ 5).toNat

end

end A290087.P12599665928255230583

/-! ## A290087.P8862676222325923551

`A318717(n+1)-A010054(A003242(n+3))`
-/

namespace A290087.P8862676222325923551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318717 (n + 1) - A010054 (A003242 (n + 3)).toNat

end

end A290087.P8862676222325923551

/-!
# A290088: a(n) = A289626(A000203(n)).

The programs for A290088, there is no canonical definition to state claims against.
-/

/-! ## A290088.P11790956380040103365

`A289626(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290088.P11790956380040103365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (A000203 (n + 1)).toNat

end

end A290088.P11790956380040103365

/-! ## A290088.P16093174352492981793

`A289626(∑{d}[n+1, #])`
-/

namespace A290088.P16093174352492981793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A290088.P16093174352492981793

/-! ## A290088.P4547974533394864411

`A289626(Δ[A160664(n)])`
-/

namespace A290088.P4547974533394864411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (f1 (n + 1) - f1 n).toNat

end

end A290088.P4547974533394864411

/-! ## A290088.P15976656655630090587

`A289626(abs(Δ[A330725(n)]))`
-/

namespace A290088.P15976656655630090587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 |f1 (n + 1) - f1 n|.toNat

end

end A290088.P15976656655630090587

/-! ## A290088.P3469700451970258681

`A289626(abs(A143348(n+1)))`
-/

namespace A290088.P3469700451970258681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 |A143348 (n + 1)|.toNat

end

end A290088.P3469700451970258681

/-! ## A290088.P15888756260157657777

`A289626(A039653(n+1)+1)`
-/

namespace A290088.P15888756260157657777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (A039653 (n + 1) + 1).toNat

end

end A290088.P15888756260157657777

/-! ## A290088.P12161968178953317920

`A289626(A088580(n+1)-1)`
-/

namespace A290088.P12161968178953317920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (A088580 (n + 1) - 1).toNat

end

end A290088.P12161968178953317920

/-! ## A290088.P16495690857159141172

`A289626(A319528(n+1)/8)`
-/

namespace A290088.P16495690857159141172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (SequenceMachineLib.roundAway ((A319528 (n + 1) : ℚ) / 8)).toNat

end

end A290088.P16495690857159141172

/-! ## A290088.P9366788407034755563

`A289626(A001065(n+1)+1+n)`
-/

namespace A290088.P9366788407034755563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A290088.P9366788407034755563

/-! ## A290088.P13628342165683453989

`A289626(A064987(n+1)/(n+1))`
-/

namespace A290088.P13628342165683453989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A290088.P13628342165683453989

/-! ## A290088.P11527973197080036587

`A289626(A033880(n+1)+2*(n+1))`
-/

namespace A290088.P11527973197080036587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (A033880 (n + 1) + (2 * (n + 1) : ℤ)).toNat

end

end A290088.P11527973197080036587

/-! ## A290088.P1317048883794140210

`A289626(A294896(n+1)*A295655(n+1))`
-/

namespace A290088.P1317048883794140210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (A294896 (n + 1) * A295655 (n + 1)).toNat

end

end A290088.P1317048883794140210

/-!
# A290089: Filter-sequence for the prime signature of cototient: a(1) = 0; for n > 1, a(n) = A101296(A051953(n)).

The programs for A290089, the canonical program `A290089.P18168785963007816849` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290089 has offset 1).

The definition of A290089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290089.P18168785963007816849

`A101296(A016035(n+1)+1)%(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A290089

/-- `A101296(A016035(n+1)+1)%(n+1)` -/
def P18168785963007816849.Spec : Prop :=
  ∀ n, P18168785963007816849.a n = A290089 (n + 1)

theorem P18168785963007816849.correct : P18168785963007816849.Spec := by
  intro n
  simp only [A290089, Nat.add_sub_cancel]

end A290089

/-! ## A290089.P13502979603767423550

`A101296(A028310(A051953(n+1)))%A080513(n)`
-/

namespace A290089.P13502979603767423550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101296 (A028310 (A051953 (n + 1)).toNat).toNat) (A080513 n)

end

end A290089.P13502979603767423550

namespace A290089

/-- `A101296(A028310(A051953(n+1)))%A080513(n)` -/
def P13502979603767423550.Spec : Prop :=
  ∀ n, P13502979603767423550.a n = A290089 (n + 1)

end A290089

/-! ## A290089.P12112193688641518590

`A077462(A051953(n+1)%A096507(n+1))`
-/

namespace A290089.P12112193688641518590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (Int.tmod (A051953 (n + 1)) (A096507 (n + 1))).toNat

end

end A290089.P12112193688641518590

namespace A290089

/-- `A077462(A051953(n+1)%A096507(n+1))` -/
def P12112193688641518590.Spec : Prop :=
  ∀ n, P12112193688641518590.a n = A290089 (n + 1)

end A290089

/-! ## A290089.P13034302953883523929

`A117527(n+1)%(A077462(A051953(n+1))-A117527(n+1))`
-/

namespace A290089.P13034302953883523929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117527 (n + 1)) (A077462 (A051953 (n + 1)).toNat - A117527 (n + 1))

end

end A290089.P13034302953883523929

namespace A290089

/-- `A117527(n+1)%(A077462(A051953(n+1))-A117527(n+1))` -/
def P13034302953883523929.Spec : Prop :=
  ∀ n, P13034302953883523929.a n = A290089 (n + 1)

end A290089

/-! ## A290089.P11891029467409072716

`A336123(A282659(n+1))`
-/

namespace A290089.P11891029467409072716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336123 (A282659 (n + 1)).toNat

end

end A290089.P11891029467409072716

namespace A290089

/-- `A336123(A282659(n+1))` -/
def P11891029467409072716.Spec : Prop :=
  ∀ n, P11891029467409072716.a n = A290089 (n + 1)

end A290089

/-!
# A290090: a(n) is the number of proper divisors of n that are odious (A000069).

The programs for A290090, the canonical program `A290090.P12479799207567123634` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290090 has offset 1).

The definition of A290090 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227872, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A290090.P12479799207567123634

`A227872(n+1)-A010060(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A290090

/-- `A227872(n+1)-A010060(n+1)` -/
def P12479799207567123634.Spec : Prop :=
  ∀ n, P12479799207567123634.a n = A290090 (n + 1)

theorem P12479799207567123634.correct : P12479799207567123634.Spec := by
  intro n
  simp only [A290090, Nat.add_sub_cancel]

end A290090

/-! ## A290090.P7607859738578657192

`A007814(A293231(n+1))`
-/

namespace A290090.P7607859738578657192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A293231 (n + 1)).toNat

end

end A290090.P7607859738578657192

namespace A290090

/-- `A007814(A293231(n+1))` -/
def P7607859738578657192.Spec : Prop :=
  ∀ n, P7607859738578657192.a n = A290090 (n + 1)

end A290090

/-! ## A290090.P16012446043241297722

`∑{d}[n+1, A000120(#%(n+1))%2]`
-/

namespace A290090.P16012446043241297722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000120 (d % (n + 1))) 2

end

end A290090.P16012446043241297722

namespace A290090

/-- `∑{d}[n+1, A000120(#%(n+1))%2]` -/
def P16012446043241297722.Spec : Prop :=
  ∀ n, P16012446043241297722.a n = A290090 (n + 1)

end A290090

/-! ## A290090.P8924075636643342725

`∑{d}[n+1, A010060(#)]-A010060(n+1)`
-/

namespace A290090.P8924075636643342725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010060 d - A010060 (n + 1)

end

end A290090.P8924075636643342725

namespace A290090

/-- `∑{d}[n+1, A010060(#)]-A010060(n+1)` -/
def P8924075636643342725.Spec : Prop :=
  ∀ n, P8924075636643342725.a n = A290090 (n + 1)

end A290090

/-! ## A290090.P14540344126997774397

`∑{d}[n+1, A157658(#)*A227872((n+1)/#)]`
-/

namespace A290090.P14540344126997774397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A227872 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A290090.P14540344126997774397

namespace A290090

/-- `∑{d}[n+1, A157658(#)*A227872((n+1)/#)]` -/
def P14540344126997774397.Spec : Prop :=
  ∀ n, P14540344126997774397.a n = A290090 (n + 1)

end A290090

/-! ## A290090.P9679971351590228125

`A227872(n+1)-A001969(n+2)%2`
-/

namespace A290090.P9679971351590228125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227872 (n + 1) - Int.tmod (A001969 (n + 2)) 2

end

end A290090.P9679971351590228125

namespace A290090

/-- `A227872(n+1)-A001969(n+2)%2` -/
def P9679971351590228125.Spec : Prop :=
  ∀ n, P9679971351590228125.a n = A290090 (n + 1)

end A290090

/-! ## A290090.P13250707321630581671

`A227872(n+1)-A000035(A193231(n+1))`
-/

namespace A290090.P13250707321630581671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227872 (n + 1) - A000035 (A193231 (n + 1)).toNat

end

end A290090.P13250707321630581671

namespace A290090

/-- `A227872(n+1)-A000035(A193231(n+1))` -/
def P13250707321630581671.Spec : Prop :=
  ∀ n, P13250707321630581671.a n = A290090 (n + 1)

end A290090

/-!
# A290091: Filter based on 1-digits of base-3 expansion: a(n) = A278222(A289813(n)).

The programs for A290091, the canonical program `A290091.P8071021601090758947` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290091 has offset 0).

The definition of A290091 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, A289813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A290091.P8071021601090758947

`A278222(A289813(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A290091

/-- `A278222(A289813(n))` -/
def P8071021601090758947.Spec : Prop :=
  ∀ n, P8071021601090758947.a n = A290091 n

theorem P8071021601090758947.correct : P8071021601090758947.Spec := by
  intro n
  simp only [A290091]

end A290091

/-! ## A290091.P8561164159728276217

`A290092(A004488(n))`
-/

namespace A290091.P8561164159728276217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 (A004488 n).toNat

end

end A290091.P8561164159728276217

namespace A290091

/-- `A290092(A004488(n))` -/
def P8561164159728276217.Spec : Prop :=
  ∀ n, P8561164159728276217.a n = A290091 n

end A290091

/-! ## A290091.P268873689291824123

`A290092(A256293(n))`
-/

namespace A290091.P268873689291824123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 (A256293 n).toNat

end

end A290091.P268873689291824123

namespace A290091

/-- `A290092(A256293(n))` -/
def P268873689291824123.Spec : Prop :=
  ∀ n, P268873689291824123.a n = A290091 n

end A290091

/-! ## A290091.P3938104545965389105

`A290092(2*A244042(n))`
-/

namespace A290091.P3938104545965389105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 (2 * A244042 n).toNat

end

end A290091.P3938104545965389105

namespace A290091

/-- `A290092(2*A244042(n))` -/
def P3938104545965389105.Spec : Prop :=
  ∀ n, P3938104545965389105.a n = A290091 n

end A290091

/-! ## A290091.P11844464180875431431

`A290092(A117966(n)+n)`
-/

namespace A290091.P11844464180875431431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 (A117966 n + (n : ℤ)).toNat

end

end A290091.P11844464180875431431

namespace A290091

/-- `A290092(A117966(n)+n)` -/
def P11844464180875431431.Spec : Prop :=
  ∀ n, P11844464180875431431.a n = A290091 n

end A290091

/-! ## A290091.P11570933417581049841

`A290092(A137305(n))`
-/

namespace A290091.P11570933417581049841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 (A137305 n).toNat

end

end A290091.P11570933417581049841

namespace A290091

/-- `A290092(A137305(n))` -/
def P11570933417581049841.Spec : Prop :=
  ∀ n, P11570933417581049841.a n = A290091 n

end A290091

/-! ## A290091.P9053589779383655315

`A278219(A332497(n))`
-/

namespace A290091.P9053589779383655315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 (A332497 n).toNat

end

end A290091.P9053589779383655315

namespace A290091

/-- `A278219(A332497(n))` -/
def P9053589779383655315.Spec : Prop :=
  ∀ n, P9053589779383655315.a n = A290091 n

end A290091

/-! ## A290091.P1281916481900119989

`A002260(A290093(n))`
-/

namespace A290091.P1281916481900119989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A290093 n).toNat

end

end A290091.P1281916481900119989

namespace A290091

/-- `A002260(A290093(n))` -/
def P1281916481900119989.Spec : Prop :=
  ∀ n, P1281916481900119989.a n = A290091 n

end A290091

/-!
# A290092: Filter based on 2-digits of base-3 expansion: a(n) = A278222(A289814(n)).

The programs for A290092, the canonical program `A290092.P11702176090070994721` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290092 has offset 0).

The definition of A290092 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A290092.P11702176090070994721

`A278222(A289814(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A290092

/-- `A278222(A289814(n))` -/
def P11702176090070994721.Spec : Prop :=
  ∀ n, P11702176090070994721.a n = A290092 n

theorem P11702176090070994721.correct : P11702176090070994721.Spec := by
  intro n
  simp only [A290092]

end A290092

/-! ## A290092.P12405969384016757962

`A290091(A004488(n))`
-/

namespace A290092.P12405969384016757962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 (A004488 n).toNat

end

end A290092.P12405969384016757962

namespace A290092

/-- `A290091(A004488(n))` -/
def P12405969384016757962.Spec : Prop :=
  ∀ n, P12405969384016757962.a n = A290092 n

end A290092

/-! ## A290092.P8598562615649669080

`A291771(A274601(n+1))`
-/

namespace A290092.P8598562615649669080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291771 (A274601 (n + 1)).toNat

end

end A290092.P8598562615649669080

namespace A290092

/-- `A291771(A274601(n+1))` -/
def P8598562615649669080.Spec : Prop :=
  ∀ n, P8598562615649669080.a n = A290092 n

end A290092

/-! ## A290092.P8242516160676969828

`A290091(A117966(n)+n)`
-/

namespace A290092.P8242516160676969828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 (A117966 n + (n : ℤ)).toNat

end

end A290092.P8242516160676969828

namespace A290092

/-- `A290091(A117966(n)+n)` -/
def P8242516160676969828.Spec : Prop :=
  ∀ n, P8242516160676969828.a n = A290092 n

end A290092

/-! ## A290092.P4449310447322479080

`A290091(n-A117966(n))`
-/

namespace A290092.P4449310447322479080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 ((n : ℤ) - A117966 n).toNat

end

end A290092.P4449310447322479080

namespace A290092

/-- `A290091(n-A117966(n))` -/
def P4449310447322479080.Spec : Prop :=
  ∀ n, P4449310447322479080.a n = A290092 n

end A290092

/-! ## A290092.P17898714977641274769

`A290091(A137305(n))`
-/

namespace A290092.P17898714977641274769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 (A137305 n).toNat

end

end A290092.P17898714977641274769

namespace A290092

/-- `A290091(A137305(n))` -/
def P17898714977641274769.Spec : Prop :=
  ∀ n, P17898714977641274769.a n = A290092 n

end A290092

/-! ## A290092.P4370859717795156814

`A290091(A374362(n))`
-/

namespace A290092.P4370859717795156814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 (A374362 n).toNat

end

end A290092.P4370859717795156814

namespace A290092

/-- `A290091(A374362(n))` -/
def P4370859717795156814.Spec : Prop :=
  ∀ n, P4370859717795156814.a n = A290092 n

end A290092

/-! ## A290092.P15853910501958209819

`A278219(A332498(n))`
-/

namespace A290092.P15853910501958209819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 (A332498 n).toNat

end

end A290092.P15853910501958209819

namespace A290092

/-- `A278219(A332498(n))` -/
def P15853910501958209819.Spec : Prop :=
  ∀ n, P15853910501958209819.a n = A290092 n

end A290092

/-! ## A290092.P8316253890775842924

`A291771(A171960(2*n)+n)`
-/

namespace A290092.P8316253890775842924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291771 (A171960 (2 * n) + (n : ℤ)).toNat

end

end A290092.P8316253890775842924

namespace A290092

/-- `A291771(A171960(2*n)+n)` -/
def P8316253890775842924.Spec : Prop :=
  ∀ n, P8316253890775842924.a n = A290092 n

end A290092

/-! ## A290092.P13492040185874343395

`A004736(A290093(n))`
-/

namespace A290092.P13492040185874343395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A290093 n).toNat

end

end A290092.P13492040185874343395

namespace A290092

/-- `A004736(A290093(n))` -/
def P13492040185874343395.Spec : Prop :=
  ∀ n, P13492040185874343395.a n = A290092 n

end A290092

/-!
# A290093: Compound filter (for base-3 digit runlengths): a(n) = P(A290091(n), A290092(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A290093, the canonical program `A290093.P8391015424067405115` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290093 has offset 0).

The definition of A290093 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A290091, A290092, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A290093.P8391015424067405115

`1/2*(2+(A290091(n)+A290092(n))²-A290091(n)-3*A290092(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A290093

/-- `1/2*(2+(A290091(n)+A290092(n))²-A290091(n)-3*A290092(n))` -/
def P8391015424067405115.Spec : Prop :=
  ∀ n, P8391015424067405115.a n = (A290093 n : ℚ)

end A290093

/-!
# A290095: a(n) = A275725(A060126(n)); prime factorization encodings of cycle-polynomials computed for finite permutations listed in reversed colexicographic ordering.

The programs for A290095, there is no canonical definition to state claims against.
-/

/-! ## A290095.P11357826443138780224

`A275725(A060126(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290095.P11357826443138780224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275725 (A060126 n).toNat

end

end A290095.P11357826443138780224

/-! ## A290095.P12709845223173517562

`A275725(A060127(n))`
-/

namespace A290095.P12709845223173517562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275725 (A060127 n).toNat

end

end A290095.P12709845223173517562

/-! ## A290095.P16142576574869857907

`dr(A001538(n))*A275807(A060126(n))`
-/

namespace A290095.P16142576574869857907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A001538 n) : ℤ) * A275807 (A060126 n).toNat

end

end A290095.P16142576574869857907

/-! ## A290095.P14684864869125560238

`A020639(A016825(n))*A275807(A060126(n))`
-/

namespace A290095.P14684864869125560238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016825 n).toNat * A275807 (A060126 n).toNat

end

end A290095.P14684864869125560238

/-! ## A290095.P2829087312618563221

`A000005(A151800(n))*A275807(A060126(n))`
-/

namespace A290095.P2829087312618563221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A151800 n).toNat * A275807 (A060126 n).toNat

end

end A290095.P2829087312618563221

/-! ## A290095.P3747675273690542296

`A001222(A001358(n+1))*A275807(A060126(n))`
-/

namespace A290095.P3747675273690542296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001358 (n + 1)).toNat * A275807 (A060126 n).toNat

end

end A290095.P3747675273690542296

/-! ## A290095.P18054907918362307742

`A000005(A065091(n+1))*A275807(A060126(n))`
-/

namespace A290095.P18054907918362307742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065091 (n + 1)).toNat * A275807 (A060126 n).toNat

end

end A290095.P18054907918362307742

/-! ## A290095.P17671216176050159642

`A000005(A007610(2*n+1))*A275807(A060126(n))`
-/

namespace A290095.P17671216176050159642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007610 (2 * n + 1)).toNat * A275807 (A060126 n).toNat

end

end A290095.P17671216176050159642

/-! ## A290095.P13460317170734262255

`A020639(A116368(n+2))*A275807(A060126(n))`
-/

namespace A290095.P13460317170734262255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A116368 (n + 2)).toNat * A275807 (A060126 n).toNat

end

end A290095.P13460317170734262255

/-! ## A290095.P11258701270507596001

`A000005(A032605(n+1))*A275807(A060126(n))`
-/

namespace A290095.P11258701270507596001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A032605 (n + 1)).toNat * A275807 (A060126 n).toNat

end

end A290095.P11258701270507596001

/-! ## A290095.P6909635737549236087

`A000005(A000353(n+1))*A275807(A060126(n))`
-/

namespace A290095.P6909635737549236087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000353 (n + 1)).toNat * A275807 (A060126 n).toNat

end

end A290095.P6909635737549236087

/-! ## A290095.P4661915989838536799

`A020639(A014206(n))*A275807(A060126(n))`
-/

namespace A290095.P4661915989838536799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A014206 n).toNat * A275807 (A060126 n).toNat

end

end A290095.P4661915989838536799

/-! ## A290095.P12254272123269314568

`A020639(A104675(n))*A275807(A060126(n))`
-/

namespace A290095.P12254272123269314568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A104675 n).toNat * A275807 (A060126 n).toNat

end

end A290095.P12254272123269314568

/-! ## A290095.P3663267361405113209

`A000005(A073648(n+1))*A275807(A060126(n))`
-/

namespace A290095.P3663267361405113209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A073648 (n + 1)).toNat * A275807 (A060126 n).toNat

end

end A290095.P3663267361405113209

/-! ## A290095.P2393617830337769193

`A000005(A198519(n+1))*A275807(A060126(n))`
-/

namespace A290095.P2393617830337769193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A198519 (n + 1)).toNat * A275807 (A060126 n).toNat

end

end A290095.P2393617830337769193

/-!
# A290096: Filter-sequence related to cycle-structure of permutations listed in table A055089: Least number with the same prime signature as A290095.

The programs for A290096, there is no canonical definition to state claims against.
-/

/-! ## A290096.P3817732475095217314

`A278225(A060126(n))`
-/

namespace A290096.P3817732475095217314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278225 (A060126 n).toNat

end

end A290096.P3817732475095217314

/-! ## A290096.P8805650120952921658

`A046523(A290095(n))`
-/

namespace A290096.P8805650120952921658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A290095 n).toNat

end

end A290096.P8805650120952921658

/-! ## A290096.P3401744887945493215

`A278225(A060127(n))`
-/

namespace A290096.P3401744887945493215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278225 (A060127 n).toNat

end

end A290096.P3401744887945493215

/-! ## A290096.P10935733574175530118

`A278523(lcm(2, A290095(n)))`
-/

namespace A290096.P10935733574175530118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (Int.lcm 2 (A290095 n))

end

end A290096.P10935733574175530118

/-! ## A290096.P49139952072337104

`A278523(A290095(n)+A000007(n))`
-/

namespace A290096.P49139952072337104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (A290095 n + A000007 n).toNat

end

end A290096.P49139952072337104

/-! ## A290096.P7798952843562846576

`A278523(or(A000007(n), A290095(n)))`
-/

namespace A290096.P7798952843562846576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (Int.lor (A000007 n) (A290095 n)).toNat

end

end A290096.P7798952843562846576

/-! ## A290096.P5213944318516706243

`A124859(A124859(A290095(n)))%A044234(n+1)`
-/

namespace A290096.P5213944318516706243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124859 (A124859 (A290095 n).toNat).toNat) (A044234 (n + 1))

end

end A290096.P5213944318516706243

/-!
# A290097: Restricted growth sequence transform of A290096, related to cycle-structure of permutations listed in table A055089.

The programs for A290097, there is no canonical definition to state claims against.
-/

/-! ## A290097.P13731554836236157217

`A275727(A060119(n))+A035263(A048578(n))`
-/

namespace A290097.P13731554836236157217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275727 (A060119 n).toNat + A035263 (A048578 n).toNat

end

end A290097.P13731554836236157217

/-! ## A290097.P17834065746108663917

`A275727(A060119(n))+A000035(A045970(n+1))`
-/

namespace A290097.P17834065746108663917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275727 (A060119 n).toNat + A000035 (A045970 (n + 1)).toNat

end

end A290097.P17834065746108663917

/-! ## A290097.P1296526211074197921

`A275727(A060119(n))+A054977(A045969(n+1))`
-/

namespace A290097.P1296526211074197921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275727 (A060119 n).toNat + A054977 (A045969 (n + 1)).toNat

end

end A290097.P1296526211074197921

/-! ## A290097.P12134037439300447815

`A275727(A060119(n))+A000120(A000010(2^n))`
-/

namespace A290097.P12134037439300447815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275727 (A060119 n).toNat + A000120 (A000010 (2 ^ n)).toNat

end

end A290097.P12134037439300447815

/-!
# A290098: Characteristic function for A003658 (fundamental discriminants of real quadratic fields).

The programs for A290098, the canonical program `A290098.P4770106932670171924` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290098 has offset 1).

The definition of A290098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290098.P4770106932670171924

`A397787(n+1)%2`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A290098

/-- `A397787(n+1)%2` -/
def P4770106932670171924.Spec : Prop :=
  ∀ n, P4770106932670171924.a n = A290098 (n + 1)

theorem P4770106932670171924.correct : P4770106932670171924.Spec := by
  intro n
  simp only [A290098, Nat.add_sub_cancel]

end A290098

/-! ## A290098.P16116715040549179331

`char[A003658(n+1)-1]`
-/

namespace A290098.P16116715040549179331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A290098.P16116715040549179331

namespace A290098

/-- `char[A003658(n+1)-1]` -/
def P16116715040549179331.Spec : Prop :=
  ∀ n, (P16116715040549179331.a n : ℤ) = A290098 (n + 1)

end A290098

/-! ## A290098.P10998401136772891715

`A000035(A397787(n+1))`
-/

namespace A290098.P10998401136772891715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A397787 (n + 1)).toNat

end

end A290098.P10998401136772891715

namespace A290098

/-- `A000035(A397787(n+1))` -/
def P10998401136772891715.Spec : Prop :=
  ∀ n, P10998401136772891715.a n = A290098 (n + 1)

end A290098

/-! ## A290098.P11557275009390281005

`and(A060576(n), A397787(n+1))`
-/

namespace A290098.P11557275009390281005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A397787 (n + 1))

end

end A290098.P11557275009390281005

namespace A290098

/-- `and(A060576(n), A397787(n+1))` -/
def P11557275009390281005.Spec : Prop :=
  ∀ n, P11557275009390281005.a n = A290098 (n + 1)

end A290098

/-! ## A290098.P1892549286614044045

`and(A220838(n+1), A359590(n+1))`
-/

namespace A290098.P1892549286614044045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A220838 (n + 1)) (A359590 (n + 1))

end

end A290098.P1892549286614044045

namespace A290098

/-- `and(A220838(n+1), A359590(n+1))` -/
def P1892549286614044045.Spec : Prop :=
  ∀ n, P1892549286614044045.a n = A290098 (n + 1)

end A290098

/-! ## A290098.P4684970296143218811

`∑{d}[n+1, A008683(#)*A086669((n+1)/#)]`
-/

namespace A290098.P4684970296143218811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A086669 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A290098.P4684970296143218811

namespace A290098

/-- `∑{d}[n+1, A008683(#)*A086669((n+1)/#)]` -/
def P4684970296143218811.Spec : Prop :=
  ∀ n, P4684970296143218811.a n = A290098 (n + 1)

end A290098

/-! ## A290098.P17364170606712766621

`and(A000541(A063659(n+1)), A014695(n))`
-/

namespace A290098.P17364170606712766621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000541 (A063659 (n + 1)).toNat) (A014695 n)

end

end A290098.P17364170606712766621

namespace A290098

/-- `and(A000541(A063659(n+1)), A014695(n))` -/
def P17364170606712766621.Spec : Prop :=
  ∀ n, P17364170606712766621.a n = A290098 (n + 1)

end A290098

/-! ## A290098.P11219761866108843969

`(A037449(n+1)-n)^-A067373(n+1)`
-/

namespace A290098.P11219761866108843969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037449 (n + 1) - (n : ℤ) : ℚ) ^ (-A067373 (n + 1) : ℤ)

end

end A290098.P11219761866108843969

namespace A290098

/-- `(A037449(n+1)-n)^-A067373(n+1)` -/
def P11219761866108843969.Spec : Prop :=
  ∀ n, P11219761866108843969.a n = (A290098 (n + 1) : ℚ)

end A290098

/-! ## A290098.P4548592902190669018

`char[A037449(n+1)-1]`
-/

namespace A290098.P4548592902190669018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A290098.P4548592902190669018

namespace A290098

/-- `char[A037449(n+1)-1]` -/
def P4548592902190669018.Spec : Prop :=
  ∀ n, (P4548592902190669018.a n : ℤ) = A290098 (n + 1)

end A290098

/-! ## A290098.P11611088872883014062

`val(A002144(n+1), A002144(A037449(n+1)))`
-/

namespace A290098.P11611088872883014062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002144 (n + 1)).toNat (A002144 (A037449 (n + 1)).toNat).toNat

end

end A290098.P11611088872883014062

namespace A290098

/-- `val(A002144(n+1), A002144(A037449(n+1)))` -/
def P11611088872883014062.Spec : Prop :=
  ∀ n, (P11611088872883014062.a n : ℤ) = A290098 (n + 1)

end A290098

/-! ## A290098.P17739663226947513965

`val(A007500(n+1), A007500(A037449(n+1)))`
-/

namespace A290098.P17739663226947513965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007500 (n + 1)).toNat (A007500 (A037449 (n + 1)).toNat).toNat

end

end A290098.P17739663226947513965

namespace A290098

/-- `val(A007500(n+1), A007500(A037449(n+1)))` -/
def P17739663226947513965.Spec : Prop :=
  ∀ n, (P17739663226947513965.a n : ℤ) = A290098 (n + 1)

end A290098

/-! ## A290098.P4436661946067847707

`val(A065091(A037449(n+1)), A065091(n+1))`
-/

namespace A290098.P4436661946067847707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A065091 (A037449 (n + 1)).toNat).toNat (A065091 (n + 1)).toNat

end

end A290098.P4436661946067847707

namespace A290098

/-- `val(A065091(A037449(n+1)), A065091(n+1))` -/
def P4436661946067847707.Spec : Prop :=
  ∀ n, (P4436661946067847707.a n : ℤ) = A290098 (n + 1)

end A290098

/-! ## A290098.P6737042601685257392

`and(A004119(n), A397787(n+1))`
-/

namespace A290098.P6737042601685257392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004119 n) (A397787 (n + 1))

end

end A290098.P6737042601685257392

namespace A290098

/-- `and(A004119(n), A397787(n+1))` -/
def P6737042601685257392.Spec : Prop :=
  ∀ n, P6737042601685257392.a n = A290098 (n + 1)

end A290098

/-! ## A290098.P16053711166031823342

`and(A048578(n), A397787(n+1))`
-/

namespace A290098.P16053711166031823342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A397787 (n + 1))

end

end A290098.P16053711166031823342

namespace A290098

/-- `and(A048578(n), A397787(n+1))` -/
def P16053711166031823342.Spec : Prop :=
  ∀ n, P16053711166031823342.a n = A290098 (n + 1)

end A290098

/-! ## A290098.P3447345054712573178

`and(A020737(n), A397787(n+1))`
-/

namespace A290098.P3447345054712573178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A397787 (n + 1))

end

end A290098.P3447345054712573178

namespace A290098

/-- `and(A020737(n), A397787(n+1))` -/
def P3447345054712573178.Spec : Prop :=
  ∀ n, P3447345054712573178.a n = A290098 (n + 1)

end A290098

/-! ## A290098.P6600455513917950610

`and(A033622(n), A397787(n+1))`
-/

namespace A290098.P6600455513917950610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033622 n) (A397787 (n + 1))

end

end A290098.P6600455513917950610

namespace A290098

/-- `and(A033622(n), A397787(n+1))` -/
def P6600455513917950610.Spec : Prop :=
  ∀ n, P6600455513917950610.a n = A290098 (n + 1)

end A290098

/-! ## A290098.P9390988134943178535

`and(A195744(n), A397787(n+1))`
-/

namespace A290098.P9390988134943178535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A397787 (n + 1))

end

end A290098.P9390988134943178535

namespace A290098

/-- `and(A195744(n), A397787(n+1))` -/
def P9390988134943178535.Spec : Prop :=
  ∀ n, P9390988134943178535.a n = A290098 (n + 1)

end A290098

/-! ## A290098.P6746701736553084047

`and(A122041(n+1), A397787(n+1))`
-/

namespace A290098.P6746701736553084047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A397787 (n + 1))

end

end A290098.P6746701736553084047

namespace A290098

/-- `and(A122041(n+1), A397787(n+1))` -/
def P6746701736553084047.Spec : Prop :=
  ∀ n, P6746701736553084047.a n = A290098 (n + 1)

end A290098

/-! ## A290098.P17253644715167920157

`and(A159225(n+2), A397787(n+1))`
-/

namespace A290098.P17253644715167920157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159225 (n + 2)) (A397787 (n + 1))

end

end A290098.P17253644715167920157

namespace A290098

/-- `and(A159225(n+2), A397787(n+1))` -/
def P17253644715167920157.Spec : Prop :=
  ∀ n, P17253644715167920157.a n = A290098 (n + 1)

end A290098

/-! ## A290098.P10317529427374974585

`and(A196657(n), A397787(n+1))`
-/

namespace A290098.P10317529427374974585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A397787 (n + 1))

end

end A290098.P10317529427374974585

namespace A290098

/-- `and(A196657(n), A397787(n+1))` -/
def P10317529427374974585.Spec : Prop :=
  ∀ n, P10317529427374974585.a n = A290098 (n + 1)

end A290098

/-!
# A290099: Multiplicative with a(2^e) = (-1)^e and a(p^e) = prevprime(p)^e for odd primes p.

The programs for A290099, the canonical program `A290099.P10330388758104841072` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290099 has offset 1).

The definition of A290099 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A290099.P10330388758104841072

`(-1)^A007814(n+1)*A064989(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A290099

/-- `(-1)^A007814(n+1)*A064989(n+1)` -/
def P10330388758104841072.Spec : Prop :=
  ∀ n, P10330388758104841072.a n = (A290099 (n + 1) : ℚ)

end A290099

/-! ## A290099.P16374957872671840435

`A064989(n+1)*A309873(n+1)`
-/

namespace A290099.P16374957872671840435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) * A309873 (n + 1)

end

end A290099.P16374957872671840435

namespace A290099

/-- `A064989(n+1)*A309873(n+1)` -/
def P16374957872671840435.Spec : Prop :=
  ∀ n, P16374957872671840435.a n = A290099 (n + 1)

end A290099

/-! ## A290099.P14811872917130234809

`A064989(n+1)/A008836(2^val(n+1, 2))`
-/

namespace A290099.P14811872917130234809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℚ) / (A008836 (2 ^ SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A290099.P14811872917130234809

namespace A290099

/-- `A064989(n+1)/A008836(2^val(n+1, 2))` -/
def P14811872917130234809.Spec : Prop :=
  ∀ n, P14811872917130234809.a n = (A290099 (n + 1) : ℚ)

end A290099

/-! ## A290099.P7259314534984839586

`∑{d}[n+1, A309873(#)*A349127((n+1)/#)]`
-/

namespace A290099.P7259314534984839586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309873 d * A349127 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A290099.P7259314534984839586

namespace A290099

/-- `∑{d}[n+1, A309873(#)*A349127((n+1)/#)]` -/
def P7259314534984839586.Spec : Prop :=
  ∀ n, P7259314534984839586.a n = A290099 (n + 1)

end A290099

/-! ## A290099.P13867497247922949211

`A033999(A085058(n))*A064989(n+1)`
-/

namespace A290099.P13867497247922949211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A085058 n).toNat * A064989 (n + 1)

end

end A290099.P13867497247922949211

namespace A290099

/-- `A033999(A085058(n))*A064989(n+1)` -/
def P13867497247922949211.Spec : Prop :=
  ∀ n, P13867497247922949211.a n = A290099 (n + 1)

end A290099

/-! ## A290099.P13102646956804890723

`A049347(A135481(n))*A064989(n+1)`
-/

namespace A290099.P13102646956804890723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A135481 n).toNat * A064989 (n + 1)

end

end A290099.P13102646956804890723

namespace A290099

/-- `A049347(A135481(n))*A064989(n+1)` -/
def P13102646956804890723.Spec : Prop :=
  ∀ n, P13102646956804890723.a n = A290099 (n + 1)

end A290099

/-! ## A290099.P17427393177616474154

`A008836(A006519(n+1))*A064989(n+1)`
-/

namespace A290099.P17427393177616474154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A006519 (n + 1)).toNat * A064989 (n + 1)

end

end A290099.P17427393177616474154

namespace A290099

/-- `A008836(A006519(n+1))*A064989(n+1)` -/
def P17427393177616474154.Spec : Prop :=
  ∀ n, P17427393177616474154.a n = A290099 (n + 1)

end A290099

/-! ## A290099.P15778492228009271509

`A064989(n+1)/A008683(A001511(A001511(n+1)²))`
-/

namespace A290099.P15778492228009271509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℚ) / (A008683 (A001511 (A001511 (n + 1) ^ 2).toNat).toNat : ℚ)

end

end A290099.P15778492228009271509

namespace A290099

/-- `A064989(n+1)/A008683(A001511(A001511(n+1)²))` -/
def P15778492228009271509.Spec : Prop :=
  ∀ n, P15778492228009271509.a n = (A290099 (n + 1) : ℚ)

end A290099

/-! ## A290099.P10245928756313823686

`A008836(n+1)*A064989(n+1)*A008836(A064989(n+1))`
-/

namespace A290099.P10245928756313823686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A064989 (n + 1) * A008836 (A064989 (n + 1)).toNat

end

end A290099.P10245928756313823686

namespace A290099

/-- `A008836(n+1)*A064989(n+1)*A008836(A064989(n+1))` -/
def P10245928756313823686.Spec : Prop :=
  ∀ n, P10245928756313823686.a n = A290099 (n + 1)

end A290099

/-! ## A290099.P8298932466020316742

`A242424(n+1)/(A105560(n+1)*A309873(n+1))`
-/

namespace A290099.P8298932466020316742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242424 (n + 1) : ℚ) / (A105560 (n + 1) * A309873 (n + 1) : ℚ)

end

end A290099.P8298932466020316742

namespace A290099

/-- `A242424(n+1)/(A105560(n+1)*A309873(n+1))` -/
def P8298932466020316742.Spec : Prop :=
  ∀ n, P8298932466020316742.a n = (A290099 (n + 1) : ℚ)

end A290099

