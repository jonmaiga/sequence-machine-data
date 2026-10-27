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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A114300: Number of non-intersecting cycle systems in a particular directed graph.

The programs for A114300, the canonical program `A114300.P1978939017107757490` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114300 has offset 0).

The definition of A114300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114300.P1978939017107757490

`A038990(n)+3%A001595(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114300

/-- `A038990(n)+3%A001595(n)` -/
def P1978939017107757490.Spec : Prop :=
  ∀ n, P1978939017107757490.a n = A114300 n

theorem P1978939017107757490.correct : P1978939017107757490.Spec := by
  intro n
  simp only [A114300]

end A114300

/-! ## A114300.P5139058031874315076

`A038990(n)+(A032033(n)/A050352(n))%A000219(n)`
-/

namespace A114300.P5139058031874315076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038990 n + Int.tmod (SequenceMachineLib.roundAway ((A032033 n : ℚ) / (A050352 n : ℚ))) (A000219 n)

end

end A114300.P5139058031874315076

namespace A114300

/-- `A038990(n)+(A032033(n)/A050352(n))%A000219(n)` -/
def P5139058031874315076.Spec : Prop :=
  ∀ n, P5139058031874315076.a n = A114300 n

end A114300

/-!
# A114301: Numbers k such that 2^k + 3^k + 5^k + 7^k is a prime number.

The programs for A114301, there is no canonical definition to state claims against.
-/

/-! ## A114301.P2915808739321869923

`A160552(A059171(n+1)*A108557(n))`
-/

namespace A114301.P2915808739321869923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A059171 (n + 1) * A108557 n).toNat

end

end A114301.P2915808739321869923

/-!
# A114302: Number of "sweet" Boolean functions of n variables.

The programs for A114302, there is no canonical definition to state claims against.
-/

/-! ## A114302.P11419584860421029125

`A104135(C(2^n, n))`
-/

namespace A114302.P11419584860421029125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104135 (Nat.choose (2 ^ n) n)

end

end A114302.P11419584860421029125

/-!
# A114303: Number of sweet Boolean functions of n variables that depend on all the variables.

The programs for A114303, there is no canonical definition to state claims against.
-/

/-! ## A114303.P10880825297030074797

`A307183(n+1)+A100884(A027610(n+1))`
-/

namespace A114303.P10880825297030074797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307183 (n + 1) + A100884 (A027610 (n + 1)).toNat

end

end A114303.P10880825297030074797

/-!
# A114304: Numbers k such that Fibonacci(k) has more prime factors (counted with multiplicity) than k does.

The programs for A114304, there is no canonical definition to state claims against.
-/

/-! ## A114304.P11553364216717638316

`lt[A001222(A028310(n)), A038575(n)]`
-/

namespace A114304.P11553364216717638316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114304.P11553364216717638316

/-! ## A114304.P5266157882054106823

`lt[A001222(A257143(n)), A038575(n)]`
-/

namespace A114304.P5266157882054106823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A257143 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114304.P5266157882054106823

/-! ## A114304.P7121407746242937464

`lt[A001222(A138153(n+1)), A038575(n)]`
-/

namespace A114304.P7121407746242937464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A138153 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114304.P7121407746242937464

/-! ## A114304.P14102407909650298051

`lt[A001222(1-A157928(n)+n), A038575(n)]`
-/

namespace A114304.P14102407909650298051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (1 - A157928 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114304.P14102407909650298051

/-! ## A114304.P1310642486984446929

`lt[A001222(A233583(n+1)), A038575(n)]`
-/

namespace A114304.P1310642486984446929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114304.P1310642486984446929

/-!
# A114305: Numbers k such that Fibonacci(k) has more distinct prime factors than k does.

The programs for A114305, the canonical program `A114305.P16547444787834545960` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114305 has offset 1).

The definition of A114305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114305.P16547444787834545960

`A114306(n+1)-A169585(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A114305

/-- `A114306(n+1)-A169585(n)` -/
def P16547444787834545960.Spec : Prop :=
  ∀ n, P16547444787834545960.a n = A114305 (n + 1)

theorem P16547444787834545960.correct : P16547444787834545960.Spec := by
  intro n
  simp only [A114305, Nat.add_sub_cancel]

end A114305

/-! ## A114305.P5987549520395262685

`lt[A001221(A028310(n)), A022307(n)]`
-/

namespace A114305.P5987549520395262685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114305.P5987549520395262685

namespace A114305

/-- `lt[A001221(A028310(n)), A022307(n)]` -/
def P5987549520395262685.Spec : Prop :=
  ∀ n, (P5987549520395262685.a n : ℤ) = A114305 (n + 1)

end A114305

/-! ## A114305.P12155063081216631103

`lt[A001221(A066182(n+1)), A022307(n)]`
-/

namespace A114305.P12155063081216631103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A066182 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114305.P12155063081216631103

namespace A114305

/-- `lt[A001221(A066182(n+1)), A022307(n)]` -/
def P12155063081216631103.Spec : Prop :=
  ∀ n, (P12155063081216631103.a n : ℤ) = A114305 (n + 1)

end A114305

/-! ## A114305.P7853984340153015836

`lt[A001221(A233583(n+1)), A022307(n)]`
-/

namespace A114305.P7853984340153015836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114305.P7853984340153015836

namespace A114305

/-- `lt[A001221(A233583(n+1)), A022307(n)]` -/
def P7853984340153015836.Spec : Prop :=
  ∀ n, (P7853984340153015836.a n : ℤ) = A114305 (n + 1)

end A114305

/-! ## A114305.P4501536186437596917

`A114306(n+1)-A277936(A053644(n))`
-/

namespace A114305.P4501536186437596917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114306 (n + 1) - A277936 (A053644 n).toNat

end

end A114305.P4501536186437596917

namespace A114305

/-- `A114306(n+1)-A277936(A053644(n))` -/
def P4501536186437596917.Spec : Prop :=
  ∀ n, P4501536186437596917.a n = A114305 (n + 1)

end A114305

/-! ## A114305.P11598056819602302582

`A114306(n+1)-A325961(A281793(n))`
-/

namespace A114305.P11598056819602302582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114306 (n + 1) - A325961 (A281793 n).toNat

end

end A114305.P11598056819602302582

namespace A114305

/-- `A114306(n+1)-A325961(A281793(n))` -/
def P11598056819602302582.Spec : Prop :=
  ∀ n, P11598056819602302582.a n = A114305 (n + 1)

end A114305

/-! ## A114305.P14135787556057579111

`A114306(n+1)-A127802(n²)`
-/

namespace A114305.P14135787556057579111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114306 (n + 1) - A127802 (n ^ 2)

end

end A114305.P14135787556057579111

namespace A114305

/-- `A114306(n+1)-A127802(n²)` -/
def P14135787556057579111.Spec : Prop :=
  ∀ n, P14135787556057579111.a n = A114305 (n + 1)

end A114305

/-! ## A114305.P18031201736652058053

`A114306(n+1)-A259346(n²+1)`
-/

namespace A114305.P18031201736652058053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114306 (n + 1) - A259346 (n ^ 2 + 1)

end

end A114305.P18031201736652058053

namespace A114305

/-- `A114306(n+1)-A259346(n²+1)` -/
def P18031201736652058053.Spec : Prop :=
  ∀ n, P18031201736652058053.a n = A114305 (n + 1)

end A114305

/-!
# A114306: Numbers k such that Fibonacci(k) has more divisors than k does.

The programs for A114306, the canonical program `A114306.P2446590887034808239` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114306 has offset 1).

The definition of A114306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114306.P16706744642704571825

`A114305(n+1)+C(3, n²)`
-/

namespace A114306.P16706744642704571825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114305 (n + 1) + (Nat.choose 3 (n ^ 2) : ℤ)

end

end A114306.P16706744642704571825

namespace A114306

/-- `A114305(n+1)+C(3, n²)` -/
def P16706744642704571825.Spec : Prop :=
  ∀ n, P16706744642704571825.a n = A114306 (n + 1)

theorem P16706744642704571825.correct : P16706744642704571825.Spec := by
  intro n
  simp only [A114306, Nat.add_sub_cancel, A114306.P16706744642704571825.a, A114306.P2446590887034808239.f1, A114306.P2446590887034808239.f2, A114306.P2446590887034808239.a, A000005, A000005.P16091521709108585461.a, A063375, A063375.P4586247262053786237.a, A114305, A114305.P16547444787834545960.a, A000045, A000045.P11838749114346432762.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A169585, A169585.P10685189677974552084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A114306

/-! ## A114306.P3315639647971048221

`A169585(n)+A114305(n+1)`
-/

namespace A114306.P3315639647971048221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n + A114305 (n + 1)

end

end A114306.P3315639647971048221

namespace A114306

/-- `A169585(n)+A114305(n+1)` -/
def P3315639647971048221.Spec : Prop :=
  ∀ n, P3315639647971048221.a n = A114306 (n + 1)

theorem P3315639647971048221.correct : P3315639647971048221.Spec := by
  intro n
  simp only [A114306, Nat.add_sub_cancel, A114306.P3315639647971048221.a, A114306.P2446590887034808239.f1, A114306.P2446590887034808239.f2, A114306.P2446590887034808239.a, A000005, A000005.P16091521709108585461.a, A063375, A063375.P4586247262053786237.a, A114305, A114305.P16547444787834545960.a, A169585, A169585.P10685189677974552084.a, A000045, A000045.P11838749114346432762.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A114306

/-! ## A114306.P2446590887034808239

`lt[A000005(n+1), A063375(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A114306

/-- `lt[A000005(n+1), A063375(n+1)]+1` -/
def P2446590887034808239.Spec : Prop :=
  ∀ n, (P2446590887034808239.a n : ℤ) = A114306 (n + 1)

theorem P2446590887034808239.correct : P2446590887034808239.Spec := by
  intro n
  simp only [A114306, Nat.add_sub_cancel]

end A114306

/-! ## A114306.P7984213325587356200

`A020725(lt[∏{e}[n+1, #+1], A063375(n+1)])`
-/

namespace A114306.P7984213325587356200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n)

end

end A114306.P7984213325587356200

namespace A114306

/-- `A020725(lt[∏{e}[n+1, #+1], A063375(n+1)])` -/
def P7984213325587356200.Spec : Prop :=
  ∀ n, P7984213325587356200.a n = A114306 (n + 1)

end A114306

/-! ## A114306.P2583587374087693676

`A020725(lt[∏{e}[n+1, #+1], A152774(n+1)+1])`
-/

namespace A114306.P2583587374087693676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152774 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n)

end

end A114306.P2583587374087693676

namespace A114306

/-- `A020725(lt[∏{e}[n+1, #+1], A152774(n+1)+1])` -/
def P2583587374087693676.Spec : Prop :=
  ∀ n, P2583587374087693676.a n = A114306 (n + 1)

end A114306

/-! ## A114306.P17867391265581552906

`lt[A022303(A006519(n+4)), A022307(n)]`
-/

namespace A114306.P17867391265581552906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (A006519 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114306.P17867391265581552906

namespace A114306

/-- `lt[A022303(A006519(n+4)), A022307(n)]` -/
def P17867391265581552906.Spec : Prop :=
  ∀ n, (P17867391265581552906.a n : ℤ) = A114306 (n + 1)

end A114306

/-! ## A114306.P2439478994119041972

`lt[A060383(A028310(n)), A053602(n)]`
-/

namespace A114306.P2439478994119041972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060383 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114306.P2439478994119041972

namespace A114306

/-- `lt[A060383(A028310(n)), A053602(n)]` -/
def P2439478994119041972.Spec : Prop :=
  ∀ n, (P2439478994119041972.a n : ℤ) = A114306 (n + 1)

end A114306

/-!
# A114307: Length of the cycle for Lucas numbers mod 10^n.

The programs for A114307, the canonical program `A114307.P7905903773315088066` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114307 has offset 1).

The definition of A114307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114307.P7905903773315088066

`10*a(n-1)` with `a(0)=12, a(1)=60, a(2)=300`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114307

/-- `10*a(n-1)` -/
def P7905903773315088066.Spec : Prop :=
  ∀ n, (P7905903773315088066.a n : ℤ) = A114307 (n + 1)

theorem P7905903773315088066.correct : P7905903773315088066.Spec := by
  intro n
  simp only [A114307, Nat.add_sub_cancel]

end A114307

/-! ## A114307.P11579000802315343289

`lcm(3*2^n, 4*5^n)`
-/

namespace A114307.P11579000802315343289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (3 * 2 ^ n) (4 * 5 ^ n)

end

end A114307.P11579000802315343289

namespace A114307

/-- `lcm(3*2^n, 4*5^n)` -/
def P11579000802315343289.Spec : Prop :=
  ∀ n, (P11579000802315343289.a n : ℤ) = A114307 (n + 1)

end A114307

/-! ## A114307.P17434273522382119879

`A096363(n+1)/5`
-/

namespace A114307.P17434273522382119879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096363 (n + 1) : ℚ) / 5

end

end A114307.P17434273522382119879

namespace A114307

/-- `A096363(n+1)/5` -/
def P17434273522382119879.Spec : Prop :=
  ∀ n, P17434273522382119879.a n = (A114307 (n + 1) : ℚ)

theorem P17434273522382119879.correct : P17434273522382119879.Spec := by
  intro n
  simp only [A114307, Nat.add_sub_cancel, A114307.P17434273522382119879.a, A114307.P7905903773315088066.a, A096363, A096363.P15742733776789124469.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114307

/-! ## A114307.P14002943276416547506

`2*lcm(6, A093143(n))`
-/

namespace A114307.P14002943276416547506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm 6 (A093143 n)

end

end A114307.P14002943276416547506

namespace A114307

/-- `2*lcm(6, A093143(n))` -/
def P14002943276416547506.Spec : Prop :=
  ∀ n, (P14002943276416547506.a n : ℤ) = A114307 (n + 1)

end A114307

/-! ## A114307.P18298589631279666237

`lcm(4, A007283(n))*A017919(2*n)`
-/

namespace A114307.P18298589631279666237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A007283 n) : ℤ) * A017919 (2 * n)

end

end A114307.P18298589631279666237

namespace A114307

/-- `lcm(4, A007283(n))*A017919(2*n)` -/
def P18298589631279666237.Spec : Prop :=
  ∀ n, P18298589631279666237.a n = A114307 (n + 1)

end A114307

/-!
# A114309: Lexicographically earliest strictly increasing sequence which has the property that it lists the position of the even digits in the concatenation of its terms.

The programs for A114309, there is no canonical definition to state claims against.
-/

/-! ## A114309.P732191065858682752

`eq[A035176(A064514(2*n+5)), A104306(n+1)]`
-/

namespace A114309.P732191065858682752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035176 (A064514 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104306 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114309.P732191065858682752

/-!
# A114310: (n-1)!*(n!-n*(n-1)/2).

The programs for A114310, the canonical program `A114310.P10763029507427912616` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114310 has offset 1).

The definition of A114310 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*((n+1)!-(n+1)*n/2)` (program `A114310.P589961493022576349`, by `A114310.P589961493022576349.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114310.P589961493022576349

`n!*((n+1)!-(n+1)*n/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114310.P589961493022576349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * ((Nat.factorial (n + 1) : ℚ) - ((n + 1) * n : ℚ) / 2)

end

end A114310.P589961493022576349

namespace A114310

/-- `n!*((n+1)!-(n+1)*n/2)` -/
def P589961493022576349.Spec : Prop :=
  ∀ n, P589961493022576349.a n = (A114310 (n + 1) : ℚ)

theorem P589961493022576349.correct : P589961493022576349.Spec := by
  intro n
  simp only [A114310, Nat.add_sub_cancel, A114310.P589961493022576349.a, A114310.P10763029507427912616.a, A114311, A114311.P6069012166258219577.f1, A114311.P6069012166258219577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A114310

/-! ## A114310.P3072529539675612655

`((n+1)!-∑[n])*n!`
-/

namespace A114310.P3072529539675612655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * (Nat.factorial n : ℤ)

end

end A114310.P3072529539675612655

namespace A114310

/-- `((n+1)!-∑[n])*n!` -/
def P3072529539675612655.Spec : Prop :=
  ∀ n, P3072529539675612655.a n = A114310 (n + 1)

end A114310

/-! ## A114310.P11565030530069037060

`abs((n+1)!-C(n+1, 2))*n!`
-/

namespace A114310.P11565030530069037060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial (n + 1) : ℤ) - (Nat.choose (n + 1) 2 : ℤ)| * (Nat.factorial n : ℤ)

end

end A114310.P11565030530069037060

namespace A114310

/-- `abs((n+1)!-C(n+1, 2))*n!` -/
def P11565030530069037060.Spec : Prop :=
  ∀ n, P11565030530069037060.a n = A114310 (n + 1)

end A114310

/-! ## A114310.P10763029507427912616

`n!*A114311(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114310

/-- `n!*A114311(n+1)` -/
def P10763029507427912616.Spec : Prop :=
  ∀ n, P10763029507427912616.a n = A114310 (n + 1)

theorem P10763029507427912616.correct : P10763029507427912616.Spec := by
  intro n
  simp only [A114310, Nat.add_sub_cancel]

end A114310

/-! ## A114310.P3335899620967565738

`A000142(n)*A114311(n+1)`
-/

namespace A114310.P3335899620967565738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A114311 (n + 1)

end

end A114310.P3335899620967565738

namespace A114310

/-- `A000142(n)*A114311(n+1)` -/
def P3335899620967565738.Spec : Prop :=
  ∀ n, P3335899620967565738.a n = A114310 (n + 1)

end A114310

/-!
# A114311: a(n) = n! - n(n-1)/2.

The programs for A114311, the canonical program `A114311.P6069012166258219577` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114311 has offset 0).

The definition of A114311 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!-n*(n-1)/2` (program `A114311.P7101614079429560658`, by `A114311.P7101614079429560658.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114311.P7101614079429560658

`n!-n*(n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114311.P7101614079429560658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) - ((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2

end

end A114311.P7101614079429560658

namespace A114311

/-- `n!-n*(n-1)/2` -/
def P7101614079429560658.Spec : Prop :=
  ∀ n, P7101614079429560658.a n = (A114311 n : ℚ)

theorem P7101614079429560658.correct : P7101614079429560658.Spec := by
  intro n
  simp only [A114311, Nat.add_sub_cancel, A114311.P7101614079429560658.a, A114311.P6069012166258219577.f1, A114311.P6069012166258219577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A114311

/-! ## A114311.P6878991356254287136

`n!+n-∑[n]`
-/

namespace A114311.P6878991356254287136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n + n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A114311.P6878991356254287136

namespace A114311

/-- `n!+n-∑[n]` -/
def P6878991356254287136.Spec : Prop :=
  ∀ n, P6878991356254287136.a n = A114311 n

end A114311

/-! ## A114311.P7103977673110199904

`n-(∑[n]-n!)`
-/

namespace A114311.P7103977673110199904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.factorial n : ℤ))

end

end A114311.P7103977673110199904

namespace A114311

/-- `n-(∑[n]-n!)` -/
def P7103977673110199904.Spec : Prop :=
  ∀ n, P7103977673110199904.a n = A114311 n

end A114311

/-! ## A114311.P6069012166258219577

`Δ[-C(n, 3)]+n!`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114311

/-- `Δ[-C(n, 3)]+n!` -/
def P6069012166258219577.Spec : Prop :=
  ∀ n, P6069012166258219577.a n = A114311 n

theorem P6069012166258219577.correct : P6069012166258219577.Spec := by
  intro n
  simp only [A114311]

end A114311

/-! ## A114311.P2586913673298890206

`∏[round(1/acot(n))]-C(n, 2)`
-/

namespace A114311.P2586913673298890206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (Nat.choose n 2 : ℤ)

end

end A114311.P2586913673298890206

namespace A114311

/-- `∏[round(1/acot(n))]-C(n, 2)` -/
def P2586913673298890206.Spec : Prop :=
  ∀ n, P2586913673298890206.a n = A114311 n

end A114311

/-! ## A114311.P2345403461075260920

`∑[Δ[(n-1)*a(n-1)]-(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A114311.P2345403461075260920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  ((n : ℤ) - 1) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114311.P2345403461075260920

namespace A114311

/-- `∑[Δ[(n-1)*a(n-1)]-(n-1)]` -/
def P2345403461075260920.Spec : Prop :=
  ∀ n, P2345403461075260920.a n = A114311 n

end A114311

/-! ## A114311.P13271417655693600703

`A101292(n)-n²`
-/

namespace A114311.P13271417655693600703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101292 n - (n ^ 2 : ℤ)

end

end A114311.P13271417655693600703

namespace A114311

/-- `A101292(n)-n²` -/
def P13271417655693600703.Spec : Prop :=
  ∀ n, P13271417655693600703.a n = A114311 n

end A114311

/-! ## A114311.P14693663305694888590

`A005095(n)-∑[n]`
-/

namespace A114311.P14693663305694888590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005095 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A114311.P14693663305694888590

namespace A114311

/-- `A005095(n)-∑[n]` -/
def P14693663305694888590.Spec : Prop :=
  ∀ n, P14693663305694888590.a n = A114311 n

end A114311

/-! ## A114311.P7267713541868501751

`A000142(n)-C(n, 2)`
-/

namespace A114311.P7267713541868501751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (Nat.choose n 2 : ℤ)

end

end A114311.P7267713541868501751

namespace A114311

/-- `A000142(n)-C(n, 2)` -/
def P7267713541868501751.Spec : Prop :=
  ∀ n, P7267713541868501751.a n = A114311 n

theorem P7267713541868501751.correct : P7267713541868501751.Spec := by
  intro n
  simp only [A114311, Nat.add_sub_cancel, A114311.P7267713541868501751.a, A114311.P6069012166258219577.f1, A114311.P6069012166258219577.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A114311

/-! ## A114311.P17093319354883320336

`A033312(n)+∑[1-n]`
-/

namespace A114311.P17093319354883320336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114311.P17093319354883320336

namespace A114311

/-- `A033312(n)+∑[1-n]` -/
def P17093319354883320336.Spec : Prop :=
  ∀ n, P17093319354883320336.a n = A114311 n

end A114311

/-!
# A114312: Number of partitions of n with at most 3 odd parts.

The programs for A114312, there is no canonical definition to state claims against.
-/

/-! ## A114312.P12895704213487518341

`A317141(A004773(A038754(n)))`
-/

namespace A114312.P12895704213487518341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (A004773 (A038754 n).toNat).toNat

end

end A114312.P12895704213487518341

/-!
# A114317: a(n+1) = a(n)^2 + 2*n.

The programs for A114317, the canonical program `A114317.P375597606115465734` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114317 has offset 1).

The definition of A114317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114317.P375597606115465734

`a(n-1)²+2*n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114317

/-- `a(n-1)²+2*n` -/
def P375597606115465734.Spec : Prop :=
  ∀ n, (P375597606115465734.a n : ℤ) = A114317 (n + 1)

theorem P375597606115465734.correct : P375597606115465734.Spec := by
  intro n
  simp only [A114317, Nat.add_sub_cancel]

end A114317

/-! ## A114317.P2763622472156084660

`a(n-1)²+n+n` with `a(0)=1`
-/

namespace A114317.P2763622472156084660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 + n + n

end

end A114317.P2763622472156084660

namespace A114317

/-- `a(n-1)²+n+n` -/
def P2763622472156084660.Spec : Prop :=
  ∀ n, (P2763622472156084660.a n : ℤ) = A114317 (n + 1)

theorem P2763622472156084660.correct : P2763622472156084660.Spec := by
  intro n
  simp only [A114317, Nat.add_sub_cancel, A114317.P2763622472156084660.a, A114317.P375597606115465734.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A114317

/-! ## A114317.P9151434607048503066

`n-xor(n, -a(n-1)²)` with `a(0)=1`
-/

namespace A114317.P9151434607048503066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - Int.xor (n : ℤ) (-(a (n - 1) ^ 2))

end

end A114317.P9151434607048503066

namespace A114317

/-- `n-xor(n, -a(n-1)²)` -/
def P9151434607048503066.Spec : Prop :=
  ∀ n, P9151434607048503066.a n = A114317 (n + 1)

end A114317

/-! ## A114317.P10430533963152498757

`3*n-(n-a(n-1)²)` with `a(0)=1`
-/

namespace A114317.P10430533963152498757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n : ℤ) - ((n : ℤ) - a (n - 1) ^ 2)

end

end A114317.P10430533963152498757

namespace A114317

/-- `3*n-(n-a(n-1)²)` -/
def P10430533963152498757.Spec : Prop :=
  ∀ n, P10430533963152498757.a n = A114317 (n + 1)

end A114317

/-! ## A114317.P3911495480583547905

`2*n+a(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A114317.P3911495480583547905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n + a (n - 1) * a (n - 1)

end

end A114317.P3911495480583547905

namespace A114317

/-- `2*n+a(n-1)*a(n-1)` -/
def P3911495480583547905.Spec : Prop :=
  ∀ n, (P3911495480583547905.a n : ℤ) = A114317 (n + 1)

end A114317

/-!
# A114320: Triangle T(n,k) = number of permutations of n elements with k 2-cycles.

The programs for A114320, there is no canonical definition to state claims against.
-/

/-! ## A114320.P6594608680449635766

`or(A225331(n+1), A241087(A008951(3*n+1)))`
-/

namespace A114320.P6594608680449635766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A225331 (n + 1)) (A241087 (A008951 (3 * n + 1)).toNat)

end

end A114320.P6594608680449635766

/-!
# A114322: Largest number whose 4th power has n digits.

The programs for A114322, the canonical program `A114322.P9595904272784111697` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114322 has offset 1).

The definition of A114322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114322.P9595904272784111697

`ceil((10^(n+1))^(1/4))-1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114322

/-- `ceil((10^(n+1))^(1/4))-1` -/
def P9595904272784111697.Spec : Prop :=
  ∀ n, P9595904272784111697.a n = A114322 (n + 1)

theorem P9595904272784111697.correct : P9595904272784111697.Spec := by
  intro n
  simp only [A114322, Nat.add_sub_cancel]

end A114322

/-! ## A114322.P9750496501546642597

`floor(sqrt(A049416(n+1)))`
-/

namespace A114322.P9750496501546642597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A049416 (n + 1))

end

end A114322.P9750496501546642597

namespace A114322

/-- `floor(sqrt(A049416(n+1)))` -/
def P9750496501546642597.Spec : Prop :=
  ∀ n, P9750496501546642597.a n = A114322 (n + 1)

end A114322

/-! ## A114322.P545808345457218942

`A023443(A018074(n+1))`
-/

namespace A114322.P545808345457218942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A018074 (n + 1)).toNat

end

end A114322.P545808345457218942

namespace A114322

/-- `A023443(A018074(n+1))` -/
def P545808345457218942.Spec : Prop :=
  ∀ n, P545808345457218942.a n = A114322 (n + 1)

end A114322

/-! ## A114322.P17718540650421980403

`A262689(A049416(n+1))`
-/

namespace A114322.P17718540650421980403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A049416 (n + 1)).toNat

end

end A114322.P17718540650421980403

namespace A114322

/-- `A262689(A049416(n+1))` -/
def P17718540650421980403.Spec : Prop :=
  ∀ n, P17718540650421980403.a n = A114322 (n + 1)

end A114322

/-!
# A114323: Largest number whose 5th power has n digits.

The programs for A114323, the canonical program `A114323.P2602138712791722908` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114323 has offset 1).

The definition of A114323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114323.P2602138712791722908

`ceil((10^(n+1))^(1/5))-1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114323

/-- `ceil((10^(n+1))^(1/5))-1` -/
def P2602138712791722908.Spec : Prop :=
  ∀ n, P2602138712791722908.a n = A114323 (n + 1)

theorem P2602138712791722908.correct : P2602138712791722908.Spec := by
  intro n
  simp only [A114323, Nat.add_sub_cancel]

end A114323

/-! ## A114323.P18282834396430860834

`∑[A216655(A130855(A000124(n)))]`
-/

namespace A114323.P18282834396430860834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216655 (A130855 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114323.P18282834396430860834

namespace A114323

/-- `∑[A216655(A130855(A000124(n)))]` -/
def P18282834396430860834.Spec : Prop :=
  ∀ n, P18282834396430860834.a n = A114323 (n + 1)

end A114323

/-! ## A114323.P6458822260730843035

`record[A018143(A193592(n))-1]`
-/

namespace A114323.P6458822260730843035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018143 (A193592 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114323.P6458822260730843035

namespace A114323

/-- `record[A018143(A193592(n))-1]` -/
def P6458822260730843035.Spec : Prop :=
  ∀ n, P6458822260730843035.a n = A114323 (n + 1)

end A114323

/-! ## A114323.P16415265230679737742

`A023443(A018143(n+1))`
-/

namespace A114323.P16415265230679737742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A018143 (n + 1)).toNat

end

end A114323.P16415265230679737742

namespace A114323

/-- `A023443(A018143(n+1))` -/
def P16415265230679737742.Spec : Prop :=
  ∀ n, P16415265230679737742.a n = A114323 (n + 1)

end A114323

/-!
# A114324: Number of partitions of n with a product greater than n.

The programs for A114324, there is no canonical definition to state claims against.
-/

/-! ## A114324.P9640446493485867532

`A000041(n)-A096276(n)`
-/

namespace A114324.P9640446493485867532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A096276 n

end

end A114324.P9640446493485867532

/-! ## A114324.P14822846545121332389

`∑[A002865(n)]-A096276(n)`
-/

namespace A114324.P14822846545121332389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A096276 n

end

end A114324.P14822846545121332389

/-! ## A114324.P1598619326277147374

`A000065(n)+1-A096276(n)`
-/

namespace A114324.P1598619326277147374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A096276 n)

end

end A114324.P1598619326277147374

/-! ## A114324.P2558093450782312245

`A035363(2*n)-A096276(n)`
-/

namespace A114324.P2558093450782312245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A096276 n

end

end A114324.P2558093450782312245

/-! ## A114324.P4479692316031094170

`∑[A085811(n+3)]-A096276(n)`
-/

namespace A114324.P4479692316031094170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A096276 n

end

end A114324.P4479692316031094170

/-! ## A114324.P14195385783862387620

`∑[A232697(n)]-(A096276(n)+n)`
-/

namespace A114324.P14195385783862387620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A096276 n + (n : ℤ))

end

end A114324.P14195385783862387620

/-! ## A114324.P8602403183919646213

`A024000(A096276(n))+A000065(n)`
-/

namespace A114324.P8602403183919646213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A096276 n).toNat + A000065 n

end

end A114324.P8602403183919646213

/-! ## A114324.P13661789739794718104

`A000009(n)+A047967(n)-A096276(n)`
-/

namespace A114324.P13661789739794718104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A096276 n)

end

end A114324.P13661789739794718104

/-! ## A114324.P12798141256856681414

`A027187(n)+A027193(n)-A096276(n)`
-/

namespace A114324.P12798141256856681414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A096276 n)

end

end A114324.P12798141256856681414

/-! ## A114324.P17892278621138510022

`A035363(n)+A086543(n)-A096276(n)`
-/

namespace A114324.P17892278621138510022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A086543 n - A096276 n)

end

end A114324.P17892278621138510022

/-! ## A114324.P6638145791036135242

`A000726(n)+A295341(n)-A096276(n)`
-/

namespace A114324.P6638145791036135242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A096276 n)

end

end A114324.P6638145791036135242

/-! ## A114324.P7138141136989191298

`A239259(n)+A239263(n)-A096276(n)`
-/

namespace A114324.P7138141136989191298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239259 n + (A239263 n - A096276 n)

end

end A114324.P7138141136989191298

/-! ## A114324.P9488117409183517089

`A332280(n)+A332281(n)-A096276(n)`
-/

namespace A114324.P9488117409183517089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 n + (A332281 n - A096276 n)

end

end A114324.P9488117409183517089

/-! ## A114324.P3047761530237859772

`A001055(n+1)+A000041(n)-∑[A001055(n+1)]`
-/

namespace A114324.P3047761530237859772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) + (A000041 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114324.P3047761530237859772

/-! ## A114324.P3198310594742618216

`A047967(n)+A096765(n+1)+A096765(n)-A096276(n)`
-/

namespace A114324.P3198310594742618216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + (A096765 (n + 1) + A096765 n) - A096276 n

end

end A114324.P3198310594742618216

/-! ## A114324.P17457948555340579095

`A319005(n+1)-A002865(n+1)`
-/

namespace A114324.P17457948555340579095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319005 (n + 1) - A002865 (n + 1)

end

end A114324.P17457948555340579095

/-! ## A114324.P15035753178214123958

`A319005(n+1)-(A085811(n+2)+A008483(n+1))`
-/

namespace A114324.P15035753178214123958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319005 (n + 1) - (A085811 (n + 2) + A008483 (n + 1))

end

end A114324.P15035753178214123958

/-! ## A114324.P4001291131430350551

`A218698(A000124(n))-A096276(n)`
-/

namespace A114324.P4001291131430350551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (A000124 n).toNat - A096276 n

end

end A114324.P4001291131430350551

/-! ## A114324.P17956704847716011677

`A237667(n)+A237668(n)-A096276(n)`
-/

namespace A114324.P17956704847716011677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237667 n + (A237668 n - A096276 n)

end

end A114324.P17956704847716011677

/-!
# A114325: Number of partitions of n into brilliant numbers (A078972).

The programs for A114325, there is no canonical definition to state claims against.
-/

/-! ## A114325.P6162994821536538101

`A101048(A347570(C(n+2, 2)))`
-/

namespace A114325.P6162994821536538101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101048 (A347570 (Nat.choose (n + 2) 2)).toNat

end

end A114325.P6162994821536538101

/-! ## A114325.P9964524519435307233

`A101048(C(A258009(n+1), n))`
-/

namespace A114325.P9964524519435307233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101048 (Nat.choose (A258009 (n + 1)).toNat n)

end

end A114325.P9964524519435307233

/-! ## A114325.P3143021511491452976

`A101048(C(n+1, A351086(n)))`
-/

namespace A114325.P3143021511491452976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101048 (Nat.choose (n + 1) (A351086 n).toNat)

end

end A114325.P3143021511491452976

/-! ## A114325.P7690048325853891211

`A204389(n+1)%A061978(n+1)`
-/

namespace A114325.P7690048325853891211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204389 (n + 1)) (A061978 (n + 1))

end

end A114325.P7690048325853891211

/-! ## A114325.P12118215021114389303

`A101048(n+1)%A174714(2*(n+2))`
-/

namespace A114325.P12118215021114389303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101048 (n + 1)) (A174714 (2 * (n + 2)))

end

end A114325.P12118215021114389303

/-!
# A114326: Number of partitions p of n such that min(p) and max(p) have a common factor.

The programs for A114326, there is no canonical definition to state claims against.
-/

/-! ## A114326.P18050824860416495122

`Δ[A000070(n)]-A117087(n+1)`
-/

namespace A114326.P18050824860416495122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A117087 (n + 1)

end

end A114326.P18050824860416495122

/-! ## A114326.P4973560341110366872

`record[A035363(n)]-A117087(n+1)`
-/

namespace A114326.P4973560341110366872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A117087 (n + 1)

end

end A114326.P4973560341110366872

/-! ## A114326.P13146487334424166654

`record[A035444(n)]-A117087(n+1)`
-/

namespace A114326.P13146487334424166654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A117087 (n + 1)

end

end A114326.P13146487334424166654

/-! ## A114326.P10240902747321730918

`record[A114099(n)]-A117087(n+1)`
-/

namespace A114326.P10240902747321730918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A117087 (n + 1)

end

end A114326.P10240902747321730918

/-! ## A114326.P10658997550997772645

`A000041(n+1)-A117087(n+1)`
-/

namespace A114326.P10658997550997772645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A117087 (n + 1)

end

end A114326.P10658997550997772645

/-!
# A114327: Table T(n,m) = n - m read by upwards antidiagonals.

The programs for A114327, the canonical program `A114327.P12930942860764139837` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114327 has offset 0).

The definition of A114327 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)-col(n)-col(n)` (program `A114327.P12930942860764139837`, by `A114327.P12930942860764139837.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114327.P12252932863812288976

`row(n)-2*col(n)`
-/

namespace A114327.P12252932863812288976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ)

end

end A114327.P12252932863812288976

namespace A114327

/-- `row(n)-2*col(n)` -/
def P12252932863812288976.Spec : Prop :=
  ∀ n, P12252932863812288976.a n = A114327 n

theorem P12252932863812288976.correct : P12252932863812288976.Spec := by
  intro n
  simp only [A114327, Nat.add_sub_cancel, A114327.P12252932863812288976.a, A114327.P12930942860764139837.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A114327

/-! ## A114327.P12930942860764139837

`row(n)-col(n)-col(n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114327

/-- `row(n)-col(n)-col(n)` -/
def P12930942860764139837.Spec : Prop :=
  ∀ n, P12930942860764139837.a n = A114327 n

theorem P12930942860764139837.correct : P12930942860764139837.Spec := by
  intro n
  simp only [A114327]

end A114327

/-! ## A114327.P10568536298383229140

`row(n)-col(n)+1-(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114327.P10568536298383229140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 - (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A114327.P10568536298383229140

namespace A114327

/-- `row(n)-col(n)+1-(col(n)+1)` -/
def P10568536298383229140.Spec : Prop :=
  ∀ n, P10568536298383229140.a n = A114327 n

theorem P10568536298383229140.correct : P10568536298383229140.Spec := by
  intro n
  simp only [A114327, Nat.add_sub_cancel, A114327.P10568536298383229140.a, A114327.P12930942860764139837.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A114327

/-! ## A114327.P9028308961649463264

`A004736(n+1)-A002260(n+1)`
-/

namespace A114327.P9028308961649463264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A002260 (n + 1)

end

end A114327.P9028308961649463264

namespace A114327

/-- `A004736(n+1)-A002260(n+1)` -/
def P9028308961649463264.Spec : Prop :=
  ∀ n, P9028308961649463264.a n = A114327 n

end A114327

/-! ## A114327.P16056739111670499017

`∑[char[∑[n]]]²-Δ[n²]`
-/

namespace A114327.P16056739111670499017
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ((f4 (n + 1) : ℤ) - (f4 n : ℤ))

end

end A114327.P16056739111670499017

namespace A114327

/-- `∑[char[∑[n]]]²-Δ[n²]` -/
def P16056739111670499017.Spec : Prop :=
  ∀ n, P16056739111670499017.a n = A114327 n

end A114327

/-! ## A114327.P12131977395072256399

`(∑[2*n]%comp[∑[n]]-n)%(n+1)²`
-/

namespace A114327.P12131977395072256399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) - (n : ℤ)) ((n + 1) ^ 2 : ℤ)

end

end A114327.P12131977395072256399

namespace A114327

/-- `(∑[2*n]%comp[∑[n]]-n)%(n+1)²` -/
def P12131977395072256399.Spec : Prop :=
  ∀ n, P12131977395072256399.a n = A114327 n

end A114327

/-! ## A114327.P6190263670101907141

`(A061579(n)-n)%(n+1)`
-/

namespace A114327.P6190263670101907141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061579 n - (n : ℤ)) (n + 1 : ℤ)

end

end A114327.P6190263670101907141

namespace A114327

/-- `(A061579(n)-n)%(n+1)` -/
def P6190263670101907141.Spec : Prop :=
  ∀ n, P6190263670101907141.a n = A114327 n

end A114327

/-! ## A114327.P13864750520087610123

`xor(n-A038722(n+1), -1)`
-/

namespace A114327.P13864750520087610123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - A038722 (n + 1)) (-1)

end

end A114327.P13864750520087610123

namespace A114327

/-- `xor(n-A038722(n+1), -1)` -/
def P13864750520087610123.Spec : Prop :=
  ∀ n, P13864750520087610123.a n = A114327 n

end A114327

/-! ## A114327.P4928442583372489495

`Δ[1-A144216(n+1)+n]`
-/

namespace A114327.P4928442583372489495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A144216 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114327.P4928442583372489495

namespace A114327

/-- `Δ[1-A144216(n+1)+n]` -/
def P4928442583372489495.Spec : Prop :=
  ∀ n, P4928442583372489495.a n = A114327 n

end A114327

/-! ## A114327.P4017674016346333215

`log2(A130321(n)/A059268(n))`
-/

namespace A114327.P4017674016346333215
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A130321 n : ℚ) / (A059268 n : ℚ) : ℝ)

end

end A114327.P4017674016346333215

namespace A114327

/-- `log2(A130321(n)/A059268(n))` -/
def P4017674016346333215.Spec : Prop :=
  ∀ n, P4017674016346333215.a n = (A114327 n : ℝ)

end A114327

/-! ## A114327.P2956955415868975776

`xor(n, xor(n, A025581(n)-A002262(n)))`
-/

namespace A114327.P2956955415868975776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (n : ℤ) (A025581 n - A002262 n))

end

end A114327.P2956955415868975776

namespace A114327

/-- `xor(n, xor(n, A025581(n)-A002262(n)))` -/
def P2956955415868975776.Spec : Prop :=
  ∀ n, P2956955415868975776.a n = A114327 n

end A114327

/-! ## A114327.P16145590493593861203

`floor(sqrt(A095831(n+1))+1-A002260(n+1))`
-/

namespace A114327.P16145590493593861203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A095831 (n + 1) : ℝ) + 1 - (A002260 (n + 1) : ℝ)⌋

end

end A114327.P16145590493593861203

namespace A114327

/-- `floor(sqrt(A095831(n+1))+1-A002260(n+1))` -/
def P16145590493593861203.Spec : Prop :=
  ∀ n, P16145590493593861203.a n = A114327 n

end A114327

/-! ## A114327.P14099223423114910378

`floor(sqrt(A055461(n+1))-(A132118(n+1)-n))`
-/

namespace A114327.P14099223423114910378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A055461 (n + 1) : ℝ) - (A132118 (n + 1) - (n : ℤ) : ℝ)⌋

end

end A114327.P14099223423114910378

namespace A114327

/-- `floor(sqrt(A055461(n+1))-(A132118(n+1)-n))` -/
def P14099223423114910378.Spec : Prop :=
  ∀ n, P14099223423114910378.a n = A114327 n

end A114327

/-! ## A114327.P6225136744857236053

`floor(sqrt(A055461(n+1))-(2*n+1-A061885(n)))`
-/

namespace A114327.P6225136744857236053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A055461 (n + 1) : ℝ) - ((2 * n : ℤ) + (1 - A061885 n) : ℝ)⌋

end

end A114327.P6225136744857236053

namespace A114327

/-- `floor(sqrt(A055461(n+1))-(2*n+1-A061885(n)))` -/
def P6225136744857236053.Spec : Prop :=
  ∀ n, P6225136744857236053.a n = A114327 n

end A114327

/-! ## A114327.P13956198221933870244

`floor(sqrt(A055461(n+1))-(2*(n+1)-A004201(n+1)))`
-/

namespace A114327.P13956198221933870244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A055461 (n + 1) : ℝ) - ((2 * (n + 1) : ℤ) - A004201 (n + 1) : ℝ)⌋

end

end A114327.P13956198221933870244

namespace A114327

/-- `floor(sqrt(A055461(n+1))-(2*(n+1)-A004201(n+1)))` -/
def P13956198221933870244.Spec : Prop :=
  ∀ n, P13956198221933870244.a n = A114327 n

end A114327

/-! ## A114327.P13269008485585213656

`(n-A061579(n))*A332814(A332812(n+1))`
-/

namespace A114327.P13269008485585213656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A061579 n) * A332814 (A332812 (n + 1)).toNat

end

end A114327.P13269008485585213656

namespace A114327

/-- `(n-A061579(n))*A332814(A332812(n+1))` -/
def P13269008485585213656.Spec : Prop :=
  ∀ n, P13269008485585213656.a n = A114327 n

end A114327

/-! ## A114327.P10205193251160678243

`Δ[A128139(n)]`
-/

namespace A114327.P10205193251160678243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114327.P10205193251160678243

namespace A114327

/-- `Δ[A128139(n)]` -/
def P10205193251160678243.Spec : Prop :=
  ∀ n, P10205193251160678243.a n = A114327 n

end A114327

/-! ## A114327.P482758043739741465

`Δ[Δ[n²]-A215630(n+1)]`
-/

namespace A114327.P482758043739741465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A215630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114327.P482758043739741465

namespace A114327

/-- `Δ[Δ[n²]-A215630(n+1)]` -/
def P482758043739741465.Spec : Prop :=
  ∀ n, P482758043739741465.a n = A114327 n

end A114327

/-! ## A114327.P1225482635036358903

`Δ[A004247(n)+A002262(n)]`
-/

namespace A114327.P1225482635036358903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114327.P1225482635036358903

namespace A114327

/-- `Δ[A004247(n)+A002262(n)]` -/
def P1225482635036358903.Spec : Prop :=
  ∀ n, P1225482635036358903.a n = A114327 n

end A114327

/-! ## A114327.P2951945628916818662

`Δ[A053616(n)]*A049581(n)`
-/

namespace A114327.P2951945628916818662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A049581 n

end

end A114327.P2951945628916818662

namespace A114327

/-- `Δ[A053616(n)]*A049581(n)` -/
def P2951945628916818662.Spec : Prop :=
  ∀ n, P2951945628916818662.a n = A114327 n

end A114327

/-!
# A114328: Number of partitions p of n such that max(p) does not exceed the square of min(p).

The programs for A114328, there is no canonical definition to state claims against.
-/

/-! ## A114328.P12218658835189416165

`A019425(A055895(n))+Δ[A008629(n)]`
-/

namespace A114328.P12218658835189416165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A055895 n).toNat + (f1 (n + 1) - f1 n)

end

end A114328.P12218658835189416165

/-! ## A114328.P331244170415000215

`Δ[A008629(n)]-A153881(A306833(n+1))`
-/

namespace A114328.P331244170415000215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A153881 (A306833 (n + 1)).toNat

end

end A114328.P331244170415000215

/-! ## A114328.P6934160911133151561

`A037145(A187829(n+1))+A007318(A037162(n))`
-/

namespace A114328.P6934160911133151561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 (A187829 (n + 1)).toNat + A007318 (A037162 n).toNat

end

end A114328.P6934160911133151561

/-! ## A114328.P2676865747112398751

`A037145(A077168(n))+1`
-/

namespace A114328.P2676865747112398751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 (A077168 n).toNat + 1

end

end A114328.P2676865747112398751

/-! ## A114328.P15100335340459788977

`A037145(n+1)+A035210(2^n)`
-/

namespace A114328.P15100335340459788977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 (n + 1) + A035210 (2 ^ n)

end

end A114328.P15100335340459788977

/-!
# A114329: Triangle T(n,k) is the number of partitions of an n-set into lists (cf. A000262) with k lists of size 1.

The programs for A114329, there is no canonical definition to state claims against.
-/

/-! ## A114329.P11490824038636910961

`A007318(n)*A052845(A025581(n))`
-/

namespace A114329.P11490824038636910961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A052845 (A025581 n).toNat

end

end A114329.P11490824038636910961

/-! ## A114329.P11214376277180245825

`A130595(n)*A293120(A025581(n))`
-/

namespace A114329.P11214376277180245825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A293120 (A025581 n).toNat

end

end A114329.P11214376277180245825

/-! ## A114329.P15875091563579777566

`A052845(A025581(n))/2*A028326(n)`
-/

namespace A114329.P15875091563579777566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052845 (A025581 n).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A114329.P15875091563579777566

/-! ## A114329.P370934345995113455

`ceil(A109128(n)/2)*A052845(A025581(n))`
-/

namespace A114329.P370934345995113455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109128 n : ℚ) / 2⌉ * A052845 (A025581 n).toNat

end

end A114329.P370934345995113455

/-! ## A114329.P5524158377839824867

`ceil(A124927(n)/2)*A052845(A025581(n))`
-/

namespace A114329.P5524158377839824867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124927 n : ℚ) / 2⌉ * A052845 (A025581 n).toNat

end

end A114329.P5524158377839824867

/-! ## A114329.P17024227607641270638

`(A050870(n)+A050186(n))*A052845(A025581(n))`
-/

namespace A114329.P17024227607641270638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050870 n + A050186 n) * A052845 (A025581 n).toNat

end

end A114329.P17024227607641270638

/-!
# A114331: Observe that A052248(n) = greatest prime divisor q (say) of all composite numbers between p = prime(n) and next prime. There is only one composite number in this range which is divisible by q. Sequence lists these composite numbers.

The programs for A114331, there is no canonical definition to state claims against.
-/

/-! ## A114331.P5293231203786657180

`∪[A014574(n+1), A136802(n+1)]`
-/

namespace A114331.P5293231203786657180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114331.P5293231203786657180

/-! ## A114331.P9194256541229746427

`A065091(n+2)-A065091(n+2)%A052248(n+2)`
-/

namespace A114331.P9194256541229746427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) - Int.tmod (A065091 (n + 2)) (A052248 (n + 2))

end

end A114331.P9194256541229746427

/-! ## A114331.P17937705155407084079

`A118759(A052248(n+2)*A114349(n+2))`
-/

namespace A114331.P17937705155407084079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A052248 (n + 2) * A114349 (n + 2)).toNat

end

end A114331.P17937705155407084079

/-! ## A114331.P18169082671563537220

`A000188((A052248(n+2)*A114349(n+2))²)`
-/

namespace A114331.P18169082671563537220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((A052248 (n + 2) * A114349 (n + 2)) ^ 2).toNat

end

end A114331.P18169082671563537220

/-! ## A114331.P14425763061643824636

`A006530(A076978(n+2))*A114349(n+2)`
-/

namespace A114331.P14425763061643824636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A076978 (n + 2)).toNat * A114349 (n + 2)

end

end A114331.P14425763061643824636

/-!
# A114334: Divisors of 6^6.

The programs for A114334, there is no canonical definition to state claims against.
-/

/-! ## A114334.P17236666228197342858

`eq[n, gcd(n, A016914(gcd(n, n+1)))]`
-/

namespace A114334.P17236666228197342858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A016914 (Nat.gcd n (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114334.P17236666228197342858

/-! ## A114334.P1962596271127686446

`eq[n, gcd(n, A016914(n+1))]`
-/

namespace A114334.P1962596271127686446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A016914 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114334.P1962596271127686446

/-! ## A114334.P13362102606408975474

`record[gcd(n+1, A017343(n+4))]`
-/

namespace A114334.P13362102606408975474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A017343 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114334.P13362102606408975474

/-! ## A114334.P761323793611478751

`record[gcd(A008706(n), A017346(n))]`
-/

namespace A114334.P761323793611478751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008706 n) (A017346 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114334.P761323793611478751

/-! ## A114334.P14236184957947763446

`∪[A025614(n+1), A262609(n+1)]`
-/

namespace A114334.P14236184957947763446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114334.P14236184957947763446

/-!
# A114335: Numbers k such that k^2 + 1 and k^2 - 3 are both prime.

The programs for A114335, there is no canonical definition to state claims against.
-/

/-! ## A114335.P12509267774265615949

`ceil(sqrt(A174383(n+1)))`
-/

namespace A114335.P12509267774265615949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A174383 (n + 1) : ℝ)⌉

end

end A114335.P12509267774265615949

/-! ## A114335.P4659820500261389092

`∩[A005574(n+1), A090120(n+1)]`
-/

namespace A114335.P4659820500261389092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114335.P4659820500261389092

/-! ## A114335.P17976897257190948672

`∩[A005574(n+1), A028873(n+1)]`
-/

namespace A114335.P17976897257190948672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114335.P17976897257190948672

/-! ## A114335.P221312479443000429

`∩[A028873(n+1), A090120(n+1)]`
-/

namespace A114335.P221312479443000429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114335.P221312479443000429

/-! ## A114335.P14377022870406785414

`∩[2*n, A090120(n+1)]`
-/

namespace A114335.P14377022870406785414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114335.P14377022870406785414

/-! ## A114335.P14240408397600250949

`filter[A090120(n+1), A120325(#)]`
-/

namespace A114335.P14240408397600250949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A114335.P14240408397600250949

/-! ## A114335.P15121743612589673523

`filter[A028873(n+1), A295405(#)]`
-/

namespace A114335.P15121743612589673523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A114335.P15121743612589673523

/-! ## A114335.P9626424523876603605

`filter[A090120(n+1), A295405(#)]`
-/

namespace A114335.P9626424523876603605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A114335.P9626424523876603605

/-! ## A114335.P2454464362413669468

`filter[A090120(n+1), A353525(#)]`
-/

namespace A114335.P2454464362413669468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A114335.P2454464362413669468

/-! ## A114335.P15498053189945665116

`∩[A090120(n+1), A250310(n+1)]`
-/

namespace A114335.P15498053189945665116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114335.P15498053189945665116

/-! ## A114335.P5230509792250185828

`∩[A090120(n+1), A232745(n+1)]`
-/

namespace A114335.P5230509792250185828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114335.P5230509792250185828

/-! ## A114335.P9825317611164118240

`∩[A090120(n+1), A221284(n+1)]`
-/

namespace A114335.P9825317611164118240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114335.P9825317611164118240

/-! ## A114335.P1883743318651230109

`∩[A090120(n+1), A298784(n)]`
-/

namespace A114335.P1883743318651230109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114335.P1883743318651230109

/-! ## A114335.P17564195027949340556

`∩[A090120(n+1), A276706(n+1)]`
-/

namespace A114335.P17564195027949340556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114335.P17564195027949340556

/-! ## A114335.P613099939210417131

`∩[A090120(n+1), A328588(n+1)]`
-/

namespace A114335.P613099939210417131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114335.P613099939210417131

/-! ## A114335.P9191940419493421318

`∩[A090120(n+1), A342050(n+1)]`
-/

namespace A114335.P9191940419493421318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114335.P9191940419493421318

/-! ## A114335.P5223505963957529550

`∩[A090120(n+1), A260391(n+1)]`
-/

namespace A114335.P5223505963957529550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114335.P5223505963957529550

/-! ## A114335.P9792167877381689096

`∩[A090120(n+1), A004275(n)]`
-/

namespace A114335.P9792167877381689096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114335.P9792167877381689096

/-! ## A114335.P2222219424112673959

`∩[A090120(n+1), A103517(n)]`
-/

namespace A114335.P2222219424112673959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114335.P2222219424112673959

/-!
# A114336: Pythagorean triples of nearly isosceles triangle.

The programs for A114336, there is no canonical definition to state claims against.
-/

/-! ## A114336.P7561096874010604116

`∩[A136683(n+1), A342752(n+1)]`
-/

namespace A114336.P7561096874010604116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114336.P7561096874010604116

/-! ## A114336.P12748981741652771124

`∩[A136683(n+1), A344168(n+1)]`
-/

namespace A114336.P12748981741652771124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114336.P12748981741652771124

/-!
# A114338: Number of divisors of n!! (double factorial = A006882(n)).

The programs for A114338, the canonical program `A114338.P14184367748492254408` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114338 has offset 0).

The definition of A114338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114338.P14184367748492254408

`A000005(A006882(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A114338

/-- `A000005(A006882(n))` -/
def P14184367748492254408.Spec : Prop :=
  ∀ n, P14184367748492254408.a n = A114338 n

theorem P14184367748492254408.correct : P14184367748492254408.Spec := by
  intro n
  simp only [A114338]

end A114338

/-! ## A114338.P6806627738615038034

`∏{e}[n*a(n-2), #+1]` with `a(0)=1, a(1)=1`
-/

namespace A114338.P6806627738615038034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  n * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A114338.P6806627738615038034

namespace A114338

/-- `∏{e}[n*a(n-2), #+1]` -/
def P6806627738615038034.Spec : Prop :=
  ∀ n, (P6806627738615038034.a n : ℤ) = A114338 n

end A114338

/-! ## A114338.P1915774318598334350

`∑{d}[n*a(n-2), gcd(41, #)]` with `a(0)=1, a(1)=1`
-/

namespace A114338.P1915774318598334350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  n * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd 41 d

end

end A114338.P1915774318598334350

namespace A114338

/-- `∑{d}[n*a(n-2), gcd(41, #)]` -/
def P1915774318598334350.Spec : Prop :=
  ∀ n, (P1915774318598334350.a n : ℤ) = A114338 n

end A114338

/-! ## A114338.P71229942720867975

`∏{e}[n!/a(n-1), #+1]` with `a(0)=1`
-/

namespace A114338.P71229942720867975
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.factorial n : ℚ) / f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A114338.P71229942720867975

namespace A114338

/-- `∏{e}[n!/a(n-1), #+1]` -/
def P71229942720867975.Spec : Prop :=
  ∀ n, (P71229942720867975.a n : ℤ) = A114338 n

end A114338

/-! ## A114338.P7148430090335816519

`∏{e}[∏[n/a(n-1)], #+1]` with `a(0)=1`
-/

namespace A114338.P7148430090335816519
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℚ) / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A114338.P7148430090335816519

namespace A114338

/-- `∏{e}[∏[n/a(n-1)], #+1]` -/
def P7148430090335816519.Spec : Prop :=
  ∀ n, (P7148430090335816519.a n : ℤ) = A114338 n

end A114338

/-!
# A114341: Palindromes n such that n+(product of digits of n) gives a larger palindrome.

The programs for A114341, there is no canonical definition to state claims against.
-/

/-! ## A114341.P5520388796128002508

`∩[A114802(n+1), A229546(n+1)]`
-/

namespace A114341.P5520388796128002508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114341.P5520388796128002508

/-!
# A114342: Largest number whose base-n representation does not contain any digit more than once and which is not divisible by any of its base-n digits, or 0 if no such number exists.

The programs for A114342, there is no canonical definition to state claims against.
-/

/-! ## A114342.P7781584149657770766

`A292264(C(p?[Δ[n²]], 9))`
-/

namespace A114342.P7781584149657770766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292264 (Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 9)

end

end A114342.P7781584149657770766

/-!
# A114347: Cumulative sum of triple factorial numbers a(n) = n!!! (A007661).

The programs for A114347, the canonical program `A114347.P4149088476081551169` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114347 has offset 0).

The definition of A114347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114347.P4149088476081551169

`∑[n*a(n-3)]` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114347

/-- `∑[n*a(n-3)]` -/
def P4149088476081551169.Spec : Prop :=
  ∀ n, (P4149088476081551169.a n : ℤ) = A114347 n

theorem P4149088476081551169.correct : P4149088476081551169.Spec := by
  intro n
  simp only [A114347]

end A114347

/-! ## A114347.P890463279183164915

`∑[a(n-3)/n^(-1)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A114347.P890463279183164915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 3) / (n : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114347.P890463279183164915

namespace A114347

/-- `∑[a(n-3)/n^(-1)]` -/
def P890463279183164915.Spec : Prop :=
  ∀ n, P890463279183164915.a n = (A114347 n : ℚ)

end A114347

/-! ## A114347.P2487737816864394462

`∑[A007661(n)]`
-/

namespace A114347.P2487737816864394462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114347.P2487737816864394462

namespace A114347

/-- `∑[A007661(n)]` -/
def P2487737816864394462.Spec : Prop :=
  ∀ n, P2487737816864394462.a n = A114347 n

theorem P2487737816864394462.correct : P2487737816864394462.Spec := by
  intro n
  simp only [A114347, Nat.add_sub_cancel, A114347.P2487737816864394462.f1, A114347.P2487737816864394462.a, A114347.P4149088476081551169.f1, A114347.P4149088476081551169.a, A007661, A007661.P16296030319596518937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114347

/-! ## A114347.P17056488427803238204

`∑[(n%3)!*A161474(n)]`
-/

namespace A114347.P17056488427803238204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 3) : ℤ) * A161474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114347.P17056488427803238204

namespace A114347

/-- `∑[(n%3)!*A161474(n)]` -/
def P17056488427803238204.Spec : Prop :=
  ∀ n, P17056488427803238204.a n = A114347 n

end A114347

/-! ## A114347.P1914795867641985755

`∑[A161474(n)*A177702(n)]`
-/

namespace A114347.P1914795867641985755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161474 n * A177702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114347.P1914795867641985755

namespace A114347

/-- `∑[A161474(n)*A177702(n)]` -/
def P1914795867641985755.Spec : Prop :=
  ∀ n, P1914795867641985755.a n = A114347 n

end A114347

/-! ## A114347.P15154018693042821186

`∑[gcd(A085158(2*n), A114806(3*n))]`
-/

namespace A114347.P15154018693042821186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085158 (2 * n)) (A114806 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114347.P15154018693042821186

namespace A114347

/-- `∑[gcd(A085158(2*n), A114806(3*n))]` -/
def P15154018693042821186.Spec : Prop :=
  ∀ n, (P15154018693042821186.a n : ℤ) = A114347 n

end A114347

/-! ## A114347.P3933053317157020116

`A129116(∑[n+2]-1)+a(n-1)` with `a(0)=1`
-/

namespace A114347.P3933053317157020116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A129116 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + a (n - 1)

end

end A114347.P3933053317157020116

namespace A114347

/-- `A129116(∑[n+2]-1)+a(n-1)` -/
def P3933053317157020116.Spec : Prop :=
  ∀ n, P3933053317157020116.a n = A114347 n

end A114347

/-! ## A114347.P8541137247457933653

`∑[A129116(A027379(n)+1)]`
-/

namespace A114347.P8541137247457933653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (A027379 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114347.P8541137247457933653

namespace A114347

/-- `∑[A129116(A027379(n)+1)]` -/
def P8541137247457933653.Spec : Prop :=
  ∀ n, P8541137247457933653.a n = A114347 n

end A114347

/-! ## A114347.P15994449762124049044

`∑[A129116(A034856(n+1))]`
-/

namespace A114347.P15994449762124049044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114347.P15994449762124049044

namespace A114347

/-- `∑[A129116(A034856(n+1))]` -/
def P15994449762124049044.Spec : Prop :=
  ∀ n, P15994449762124049044.a n = A114347 n

end A114347

/-!
# A114349: Terms of A114331 divided by the appropriate prime (q) in A052248.

The programs for A114349, there is no canonical definition to state claims against.
-/

/-! ## A114349.P11262104891167600503

`A052126(A114331(n+2))%A151555(A000124(n+6))`
-/

namespace A114349.P11262104891167600503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052126 (A114331 (n + 2)).toNat) (A151555 (A000124 (n + 6)).toNat)

end

end A114349.P11262104891167600503

/-! ## A114349.P6641159195382645819

`A052126(A114331(n+2))*A180383(∑[n+1])`
-/

namespace A114349.P6641159195382645819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A114331 (n + 2)).toNat * A180383 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114349.P6641159195382645819

/-! ## A114349.P135752392984659813

`A046951(A287744(n))*A052126(A114331(n+2))`
-/

namespace A114349.P135752392984659813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A287744 n).toNat * A052126 (A114331 (n + 2)).toNat

end

end A114349.P135752392984659813

/-! ## A114349.P15839040875093744933

`A320656(A000043(n+4))+A052126(A114331(n+2))`
-/

namespace A114349.P15839040875093744933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (A000043 (n + 4)).toNat + A052126 (A114331 (n + 2)).toNat

end

end A114349.P15839040875093744933

/-! ## A114349.P9109328790940683273

`A052126(A114331(n+2))+A000007(A261164(3*n+4))`
-/

namespace A114349.P9109328790940683273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A114331 (n + 2)).toNat + A000007 (A261164 (3 * n + 4)).toNat

end

end A114349.P9109328790940683273

/-!
# A114350: Primes of the form 2x^3 + x + 1.

The programs for A114350, there is no canonical definition to state claims against.
-/

/-! ## A114350.P3205780395712303249

`p?[2*n^3+1+n]`
-/

namespace A114350.P3205780395712303249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 3 + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A114350.P3205780395712303249

/-! ## A114350.P9733992201377423019

`or(1, p?[n*(2*n²+1)+1])`
-/

namespace A114350.P9733992201377423019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n ^ 2 + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A114350.P9733992201377423019

/-! ## A114350.P7539059039522394722

`A007318(∑[n])+p?[A033562(n)+n]-1`
-/

namespace A114350.P7539059039522394722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) + (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1)

end

end A114350.P7539059039522394722

/-! ## A114350.P6843336624276144588

`A007318(C(n, 2))*p?[A033431(n)+1+n]`
-/

namespace A114350.P6843336624276144588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114350.P6843336624276144588

/-!
# A114351: Primes of the form 3x^3+x+1.

The programs for A114351, there is no canonical definition to state claims against.
-/

/-! ## A114351.P7529276700332031739

`p?[3*n^3+1+n]`
-/

namespace A114351.P7529276700332031739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 3 + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A114351.P7529276700332031739

/-! ## A114351.P4790601748371993498

`or(1, p?[A117642(n)+1+n])`
-/

namespace A114351.P4790601748371993498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A114351.P4790601748371993498

/-! ## A114351.P13228959687545176226

`p?[A117642(n)+1+n]/A165326(n)²`
-/

namespace A114351.P13228959687545176226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 1 + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A165326 n ^ 2 : ℚ)

end

end A114351.P13228959687545176226

/-! ## A114351.P4434285398997176623

`A007318(∑[n])*p?[A117642(n)+1+n]`
-/

namespace A114351.P4434285398997176623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A114351.P4434285398997176623

/-! ## A114351.P13952016505459988523

`A007318(ceil(n/29))+p?[A117642(n)+1+n]-1`
-/

namespace A114351.P13952016505459988523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌈(n : ℚ) / 29⌉.toNat + (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A114351.P13952016505459988523

/-!
# A114352: Primes of the form 5x^3+x+1.

The programs for A114352, there is no canonical definition to state claims against.
-/

/-! ## A114352.P4818453068913864549

`p?[5*n^3+1+n]`
-/

namespace A114352.P4818453068913864549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 3 + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A114352.P4818453068913864549

/-! ## A114352.P3067501174652630163

`or(1, p?[A244725(n)+1+n])`
-/

namespace A114352.P3067501174652630163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244725 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A114352.P3067501174652630163

/-! ## A114352.P16031271087069092374

`p?[A244725(n)+1+n]%A000108(n+6)`
-/

namespace A114352.P16031271087069092374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244725 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000108 (n + 6))

end

end A114352.P16031271087069092374

/-! ## A114352.P16690447832261806692

`A014963(6*(n+1))*p?[A244725(n)+1+n]`
-/

namespace A114352.P16690447832261806692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244725 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114352.P16690447832261806692

/-! ## A114352.P13249016709425915806

`A000108(C(2, n+2))*p?[A244725(n)+1+n]`
-/

namespace A114352.P13249016709425915806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244725 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114352.P13249016709425915806

/-!
# A114353: Primes of the form 7x^3+x+1.

The programs for A114353, there is no canonical definition to state claims against.
-/

/-! ## A114353.P4068357478613248118

`p?[7*n^3+1+n]`
-/

namespace A114353.P4068357478613248118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 3 + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A114353.P4068357478613248118

/-! ## A114353.P4886700668520710247

`p?[A244727(n)+1+n]%A147578(2*(n+2))`
-/

namespace A114353.P4886700668520710247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244727 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A147578 (2 * (n + 2)))

end

end A114353.P4886700668520710247

/-!
# A114354: Primes of the form 9x^3 + x + 1.

The programs for A114354, there is no canonical definition to state claims against.
-/

/-! ## A114354.P17551500562149205103

`p?[9*n^3+1+n]`
-/

namespace A114354.P17551500562149205103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n ^ 3 + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A114354.P17551500562149205103

/-!
# A114355: Primes of the form 11x^3+x+1.

The programs for A114355, there is no canonical definition to state claims against.
-/

/-! ## A114355.P3395782047334675413

`p?[11*n^3+1+n]`
-/

namespace A114355.P3395782047334675413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n ^ 3 + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A114355.P3395782047334675413

/-! ## A114355.P13905483839484405078

`A006530(p?[(n+1)*A017413((n+1)²)-n])`
-/

namespace A114355.P13905483839484405078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017413 ((n + 1) ^ 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A114355.P13905483839484405078

/-!
# A114356: Primes of the form 13x^3+x+1.

The programs for A114356, there is no canonical definition to state claims against.
-/

/-! ## A114356.P5724835634912297997

`p?[13*n^3+1+n]`
-/

namespace A114356.P5724835634912297997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n ^ 3 + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A114356.P5724835634912297997

/-!
# A114357: Primes of the form 15x^3+x+1.

The programs for A114357, there is no canonical definition to state claims against.
-/

/-! ## A114357.P7991360574804867026

`p?[15*n^3+1+n]`
-/

namespace A114357.P7991360574804867026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * n ^ 3 + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A114357.P7991360574804867026

/-!
# A114360: Let M(n) be the n X n matrix m(i,j)=min(i,j) for 1<=i,j<=n then a(n) is the trace of M(n)^(-8).

The programs for A114360, there is no canonical definition to state claims against.
-/

/-! ## A114360.P1536899400315527580

`A186740(eq[8, A025581(n)])`
-/

namespace A114360.P1536899400315527580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114360.P1536899400315527580

/-!
# A114361: Let M(n) be the n X n matrix m(i,j)=min(i,j) for 1<=i,j<=n then a(n) is the trace of M(n)^(-9).

The programs for A114361, there is no canonical definition to state claims against.
-/

/-! ## A114361.P13027347698369661258

`A186740(eq[9, A025581(n)])`
-/

namespace A114361.P13027347698369661258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114361.P13027347698369661258

/-!
# A114362: Numerator of zeta(4n)/zeta(2n)^2 (with a(0)=2 instead of -2).

The programs for A114362, there is no canonical definition to state claims against.
-/

/-! ## A114362.P13282180711196317310

`A254630(n)*A254667(A231273(n))`
-/

namespace A114362.P13282180711196317310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254630 n * A254667 (A231273 n).toNat

end

end A114362.P13282180711196317310

/-!
# A114363: Denominator of zeta(4n)/zeta(2n)^2.

The programs for A114363, there is no canonical definition to state claims against.
-/

/-! ## A114363.P10378053766198864983

`A277330(A350466(n+1)+A060690(n))`
-/

namespace A114363.P10378053766198864983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (A350466 (n + 1) + A060690 n).toNat

end

end A114363.P10378053766198864983

/-!
# A114364: a(n) = n*(n+1)^2.

The programs for A114364, the canonical program `A114364.P8709402914975353862` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114364 has offset 1).

The definition of A114364 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)²` (program `A114364.P8709402914975353862`, by `A114364.P8709402914975353862.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114364.P8709402914975353862

`(n+1)*(n+2)²`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114364

/-- `(n+1)*(n+2)²` -/
def P8709402914975353862.Spec : Prop :=
  ∀ n, (P8709402914975353862.a n : ℤ) = A114364 (n + 1)

theorem P8709402914975353862.correct : P8709402914975353862.Spec := by
  intro n
  simp only [A114364, Nat.add_sub_cancel]

end A114364

/-! ## A114364.P15950140141546405555

`lcm(n+1, (n+2)²)`
-/

namespace A114364.P15950140141546405555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) ((n + 2) ^ 2)

end

end A114364.P15950140141546405555

namespace A114364

/-- `lcm(n+1, (n+2)²)` -/
def P15950140141546405555.Spec : Prop :=
  ∀ n, (P15950140141546405555.a n : ℤ) = A114364 (n + 1)

end A114364

/-! ## A114364.P13737958694060908189

`∑[∑[a(n-1)+6]]` with `a(0)=4`
-/

namespace A114364.P13737958694060908189
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114364.P13737958694060908189

namespace A114364

/-- `∑[∑[a(n-1)+6]]` -/
def P13737958694060908189.Spec : Prop :=
  ∀ n, (P13737958694060908189.a n : ℤ) = A114364 (n + 1)

end A114364

/-! ## A114364.P8816851718465932396

`∑[∑[ogf((4+2x)/(1-2x+x^2))]]`
-/

namespace A114364.P8816851718465932396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114364.P8816851718465932396

namespace A114364

/-- `∑[∑[ogf((4+2x)/(1-2x+x^2))]]` -/
def P8816851718465932396.Spec : Prop :=
  ∀ n, P8816851718465932396.a n = A114364 (n + 1)

end A114364

/-! ## A114364.P10525616143066318410

`ogf((4+2x)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A114364.P10525616143066318410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2] [1, -4, 6, -4, 1] n

end

end A114364.P10525616143066318410

namespace A114364

/-- `ogf((4+2x)/(1-4x+6x^2-4x^3+x^4))` -/
def P10525616143066318410.Spec : Prop :=
  ∀ n, P10525616143066318410.a n = A114364 (n + 1)

end A114364

/-! ## A114364.P16600226177437953060

`floor((n+1)/acot((n+2)²))`
-/

namespace A114364.P16600226177437953060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot ((n + 2) ^ 2 : ℝ)⌋

end

end A114364.P16600226177437953060

namespace A114364

/-- `floor((n+1)/acot((n+2)²))` -/
def P16600226177437953060.Spec : Prop :=
  ∀ n, P16600226177437953060.a n = A114364 (n + 1)

end A114364

/-! ## A114364.P597319690294904459

`round((n+1)/acot((n+2)²))`
-/

namespace A114364.P597319690294904459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / SequenceMachineLib.acot ((n + 2) ^ 2 : ℝ))

end

end A114364.P597319690294904459

namespace A114364

/-- `round((n+1)/acot((n+2)²))` -/
def P597319690294904459.Spec : Prop :=
  ∀ n, P597319690294904459.a n = A114364 (n + 1)

end A114364

/-! ## A114364.P8565582523603484067

`(n+1)/tan(acot((n+2)²))`
-/

namespace A114364.P8565582523603484067
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.tan (SequenceMachineLib.acot ((n + 2) ^ 2 : ℝ))

end

end A114364.P8565582523603484067

namespace A114364

/-- `(n+1)/tan(acot((n+2)²))` -/
def P8565582523603484067.Spec : Prop :=
  ∀ n, P8565582523603484067.a n = (A114364 (n + 1) : ℝ)

end A114364

/-! ## A114364.P7548336696718502110

`(n+1)/cot(atan(n+2))²`
-/

namespace A114364.P7548336696718502110
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.cot (Real.arctan (n + 2 : ℝ)) ^ 2

end

end A114364.P7548336696718502110

namespace A114364

/-- `(n+1)/cot(atan(n+2))²` -/
def P7548336696718502110.Spec : Prop :=
  ∀ n, P7548336696718502110.a n = (A114364 (n + 1) : ℝ)

end A114364

/-! ## A114364.P5053127366443172293

`C(n+1, n)/(1/(n+2))²`
-/

namespace A114364.P5053127366443172293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) n : ℚ) / (1 / (n + 2 : ℚ)) ^ 2

end

end A114364.P5053127366443172293

namespace A114364

/-- `C(n+1, n)/(1/(n+2))²` -/
def P5053127366443172293.Spec : Prop :=
  ∀ n, P5053127366443172293.a n = (A114364 (n + 1) : ℚ)

theorem P5053127366443172293.correct : P5053127366443172293.Spec := by
  intro n
  simp only [A114364, Nat.add_sub_cancel, A114364.P5053127366443172293.a, A114364.P8709402914975353862.a, SequenceMachineLib.memo_apply]
  try simp

end A114364

/-! ## A114364.P15192983080894597386

`record[(abs(2-n)-1)*(2-n)²]`
-/

namespace A114364.P15192983080894597386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|2 - (n : ℤ)| - 1) * (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114364.P15192983080894597386

namespace A114364

/-- `record[(abs(2-n)-1)*(2-n)²]` -/
def P15192983080894597386.Spec : Prop :=
  ∀ n, P15192983080894597386.a n = A114364 (n + 1)

end A114364

/-! ## A114364.P2543633387395783299

`record[abs((2-n)^3)]-(n+2)²`
-/

namespace A114364.P2543633387395783299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - (n : ℤ)) ^ 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n + 2) ^ 2 : ℤ)

end

end A114364.P2543633387395783299

namespace A114364

/-- `record[abs((2-n)^3)]-(n+2)²` -/
def P2543633387395783299.Spec : Prop :=
  ∀ n, P2543633387395783299.a n = A114364 (n + 1)

end A114364

/-! ## A114364.P4880985014733263617

`(n+1)/record[(n-2)²]^-1`
-/

namespace A114364.P4880985014733263617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (-1 : ℤ)

end

end A114364.P4880985014733263617

namespace A114364

/-- `(n+1)/record[(n-2)²]^-1` -/
def P4880985014733263617.Spec : Prop :=
  ∀ n, P4880985014733263617.a n = (A114364 (n + 1) : ℚ)

end A114364

/-! ## A114364.P9459828416437277312

`Δ[C(n+2, 2)²]-(n+2)²`
-/

namespace A114364.P9459828416437277312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n + 2) ^ 2 : ℤ)

end

end A114364.P9459828416437277312

namespace A114364

/-- `Δ[C(n+2, 2)²]-(n+2)²` -/
def P9459828416437277312.Spec : Prop :=
  ∀ n, P9459828416437277312.a n = A114364 (n + 1)

theorem P9459828416437277312.correct : P9459828416437277312.Spec := by
  intro n
  simp only [A114364, Nat.add_sub_cancel, A114364.P9459828416437277312.f1, A114364.P9459828416437277312.a, A114364.P8709402914975353862.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A114364

/-! ## A114364.P11772555211402041631

`-((n+2)*∑[xor(2*n, -2)])`
-/

namespace A114364.P11772555211402041631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A114364.P11772555211402041631

namespace A114364

/-- `-((n+2)*∑[xor(2*n, -2)])` -/
def P11772555211402041631.Spec : Prop :=
  ∀ n, P11772555211402041631.a n = A114364 (n + 1)

end A114364

/-! ## A114364.P3637709756294385465

`∑[(n+1)*ceil(3/acot(n+1))]`
-/

namespace A114364.P3637709756294385465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈3 / SequenceMachineLib.acot (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114364.P3637709756294385465

namespace A114364

/-- `∑[(n+1)*ceil(3/acot(n+1))]` -/
def P3637709756294385465.Spec : Prop :=
  ∀ n, P3637709756294385465.a n = A114364 (n + 1)

end A114364

/-! ## A114364.P18055027208148438169

`∑[∑[2*(lcm(2, 2*n+1)-n)]]`
-/

namespace A114364.P18055027208148438169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lcm 2 (2 * n + 1) : ℤ) - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114364.P18055027208148438169

namespace A114364

/-- `∑[∑[2*(lcm(2, 2*n+1)-n)]]` -/
def P18055027208148438169.Spec : Prop :=
  ∀ n, P18055027208148438169.a n = A114364 (n + 1)

end A114364

/-! ## A114364.P16335977943244283082

`∑[2*Δ[(n+1)*C(n+1, 2)]]`
-/

namespace A114364.P16335977943244283082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114364.P16335977943244283082

namespace A114364

/-- `∑[2*Δ[(n+1)*C(n+1, 2)]]` -/
def P16335977943244283082.Spec : Prop :=
  ∀ n, P16335977943244283082.a n = A114364 (n + 1)

end A114364

/-! ## A114364.P12126101030791754480

`(n+2)²/sqrt(n/a(n-1))` with `a(0)=4`
-/

namespace A114364.P12126101030791754480
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [4] fun n a =>
  ((n + 2) ^ 2 : ℝ) / Real.sqrt ((n : ℝ) / a (n - 1))

end

end A114364.P12126101030791754480

namespace A114364

/-- `(n+2)²/sqrt(n/a(n-1))` -/
def P12126101030791754480.Spec : Prop :=
  ∀ n, P12126101030791754480.a n = (A114364 (n + 1) : ℝ)

end A114364

/-! ## A114364.P11057006586953569112

`∑[C(n+3+n, 2)+(n+1)²]`
-/

namespace A114364.P11057006586953569112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3 + n) 2 + (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114364.P11057006586953569112

namespace A114364

/-- `∑[C(n+3+n, 2)+(n+1)²]` -/
def P11057006586953569112.Spec : Prop :=
  ∀ n, (P11057006586953569112.a n : ℤ) = A114364 (n + 1)

end A114364

/-!
# A114365: Start with the empty list; for k = 1..oo, append to the list the smallest prime of the form k*m^3+m+1 with m>0 if such a prime exists, otherwise skip this value of k.

The programs for A114365, there is no canonical definition to state claims against.
-/

/-! ## A114365.P2487176253763616341

`A006530(A172998(n+1)+17)`
-/

namespace A114365.P2487176253763616341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A172998 (n + 1) + 17).toNat

end

end A114365.P2487176253763616341

/-!
# A114371: Smallest abundant number relatively prime to n.

The programs for A114371, there is no canonical definition to state claims against.
-/

/-! ## A114371.P1805164115805280636

`A114809(∏{p}[n+1, #])`
-/

namespace A114371.P1805164115805280636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114809 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A114371.P1805164115805280636

/-! ## A114371.P2779926173552575990

`A114809(A007947(n+1))`
-/

namespace A114371.P2779926173552575990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114809 (A007947 (n + 1)).toNat

end

end A114371.P2779926173552575990

/-! ## A114371.P1623393436657453569

`A114809(A015052(n+1))`
-/

namespace A114371.P1623393436657453569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114809 (A015052 (n + 1)).toNat

end

end A114371.P1623393436657453569

/-! ## A114371.P3616892050156425984

`A114809(A015053(n+1))`
-/

namespace A114371.P3616892050156425984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114809 (A015053 (n + 1)).toNat

end

end A114371.P3616892050156425984

/-! ## A114371.P8190654655780427682

`A114809(A166140(n+1))`
-/

namespace A114371.P8190654655780427682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114809 (A166140 (n + 1)).toNat

end

end A114371.P8190654655780427682

/-!
# A114372: Number of partitions of n into parts with an odd number of prime factors that are all distinct.

The programs for A114372, there is no canonical definition to state claims against.
-/

/-! ## A114372.P5294765343751444686

`A037800(A058348(n+3))+A000607(n+1)`
-/

namespace A114372.P5294765343751444686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A058348 (n + 3)).toNat + A000607 (n + 1)

end

end A114372.P5294765343751444686

/-! ## A114372.P14125407454556579661

`A112021(n+1)+A037800(A058348(n+3))`
-/

namespace A114372.P14125407454556579661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112021 (n + 1) + A037800 (A058348 (n + 3)).toNat

end

end A114372.P14125407454556579661

/-! ## A114372.P10584779430052485576

`or(A018843(A347609(n)), A112021(n+1))`
-/

namespace A114372.P10584779430052485576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018843 (A347609 n).toNat) (A112021 (n + 1))

end

end A114372.P10584779430052485576

/-! ## A114372.P7322998826753839625

`A305614(A185246(2*n+3))+A000607(n+1)`
-/

namespace A114372.P7322998826753839625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305614 (A185246 (2 * n + 3)).toNat + A000607 (n + 1)

end

end A114372.P7322998826753839625

/-!
# A114374: Number of partitions of n into parts that are not squarefree.

The programs for A114374, there is no canonical definition to state claims against.
-/

/-! ## A114374.P8529544751606240961

`A277165(A003242(n))+A029371(n)`
-/

namespace A114374.P8529544751606240961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277165 (A003242 n).toNat + A029371 n

end

end A114374.P8529544751606240961

/-! ## A114374.P2650682303893329848

`A175470(A294105(n))-A016232(A300715(n))`
-/

namespace A114374.P2650682303893329848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175470 (A294105 n).toNat - A016232 (A300715 n).toNat

end

end A114374.P2650682303893329848

/-! ## A114374.P1417936738632888496

`A185284(A000069(n+1))+A029371(n)`
-/

namespace A114374.P1417936738632888496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000069 (n + 1)).toNat + A029371 n

end

end A114374.P1417936738632888496

/-! ## A114374.P13248910486416644014

`A029229(n)*A059841(A000073(n))`
-/

namespace A114374.P13248910486416644014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 n * A059841 (A000073 n).toNat

end

end A114374.P13248910486416644014

/-! ## A114374.P2610594768090438113

`or(A029371(n), A277165(A028495(n)))`
-/

namespace A114374.P2610594768090438113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029371 n) (A277165 (A028495 n).toNat)

end

end A114374.P2610594768090438113

/-!
# A114375: a(n) = (a(n-1) XOR a(n-2)) + 1, a(0) = a(1) = 0.

The programs for A114375, the canonical program `A114375.P4782686834342615882` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114375 has offset 0).

The definition of A114375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114375.P4782686834342615882

`xor(a(n-1), a(n-2))+1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114375

/-- `xor(a(n-1), a(n-2))+1` -/
def P4782686834342615882.Spec : Prop :=
  ∀ n, (P4782686834342615882.a n : ℤ) = A114375 n

theorem P4782686834342615882.correct : P4782686834342615882.Spec := by
  intro n
  simp only [A114375]

end A114375

/-! ## A114375.P7046581657306938455

`-xor(-1, xor(a(n-1), a(n-2)))` with `a(0)=0, a(1)=0`
-/

namespace A114375.P7046581657306938455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  -Int.xor (-1) (Int.xor (a (n - 1)) (a (n - 2)))

end

end A114375.P7046581657306938455

namespace A114375

/-- `-xor(-1, xor(a(n-1), a(n-2)))` -/
def P7046581657306938455.Spec : Prop :=
  ∀ n, P7046581657306938455.a n = A114375 n

end A114375

/-! ## A114375.P8627261096713055315

`4/2-(1-xor(a(n-1), a(n-2)))` with `a(0)=0, a(1)=0`
-/

namespace A114375.P8627261096713055315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (4 : ℚ) / 2 - (1 - Int.xor (SequenceMachineLib.roundAway (a (n - 1))) (SequenceMachineLib.roundAway (a (n - 2))) : ℚ)

end

end A114375.P8627261096713055315

namespace A114375

/-- `4/2-(1-xor(a(n-1), a(n-2)))` -/
def P8627261096713055315.Spec : Prop :=
  ∀ n, P8627261096713055315.a n = (A114375 n : ℚ)

end A114375

/-! ## A114375.P10562608550022224220

`or(a(n-1), a(n-2))+1-and(a(n-1), a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A114375.P10562608550022224220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  Int.lor (a (n - 1)) (a (n - 2)) + (1 - Int.land (a (n - 1)) (a (n - 2)))

end

end A114375.P10562608550022224220

namespace A114375

/-- `or(a(n-1), a(n-2))+1-and(a(n-1), a(n-2))` -/
def P10562608550022224220.Spec : Prop :=
  ∀ n, P10562608550022224220.a n = A114375 n

end A114375

/-! ## A114375.P2681453710393490383

`1-(and(a(n-1), a(n-2))-or(a(n-1), a(n-2)))` with `a(0)=0, a(1)=0`
-/

namespace A114375.P2681453710393490383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - (Int.land (a (n - 1)) (a (n - 2)) - Int.lor (a (n - 1)) (a (n - 2)))

end

end A114375.P2681453710393490383

namespace A114375

/-- `1-(and(a(n-1), a(n-2))-or(a(n-1), a(n-2)))` -/
def P2681453710393490383.Spec : Prop :=
  ∀ n, P2681453710393490383.a n = A114375 n

end A114375

/-!
# A114377: Perfect powers equal to the sum of three factorial numbers.

The programs for A114377, there is no canonical definition to state claims against.
-/

/-! ## A114377.P9916453989762942415

`∩[A093771(n+1), A327105(n+1)]`
-/

namespace A114377.P9916453989762942415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114377.P9916453989762942415

/-! ## A114377.P5306552108810371494

`∩[A093771(n+1), A330060(n+1)]`
-/

namespace A114377.P5306552108810371494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114377.P5306552108810371494

/-! ## A114377.P10136705379755476896

`∩[A093771(n+1), A330104(n+1)]`
-/

namespace A114377.P10136705379755476896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114377.P10136705379755476896

/-! ## A114377.P10797925698095700022

`A001597(lt[A133310(n), A066833(3*(n+1))])`
-/

namespace A114377.P10797925698095700022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066833 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A114377.P10797925698095700022

/-!
# A114378: Area of annuli of consecutive integer thickness.

The programs for A114378, the canonical program `A114378.P17497007224000088682` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114378 has offset 1).

The definition of A114378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114378.P17497007224000088682

`floor(π*(n+1)^3)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114378

/-- `floor(π*(n+1)^3)` -/
def P17497007224000088682.Spec : Prop :=
  ∀ n, P17497007224000088682.a n = A114378 (n + 1)

theorem P17497007224000088682.correct : P17497007224000088682.Spec := by
  intro n
  simp only [A114378, Nat.add_sub_cancel]

end A114378

/-! ## A114378.P11340337301163356936

`ceil(atan(A033431(n+1))*A033431(n+1))`
-/

namespace A114378.P11340337301163356936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A033431 (n + 1) : ℝ) * (A033431 (n + 1) : ℝ)⌉

end

end A114378.P11340337301163356936

namespace A114378

/-- `ceil(atan(A033431(n+1))*A033431(n+1))` -/
def P11340337301163356936.Spec : Prop :=
  ∀ n, P11340337301163356936.a n = A114378 (n + 1)

end A114378

/-! ## A114378.P8909530374594037422

`A247194(n+1)-1`
-/

namespace A114378.P8909530374594037422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247194 (n + 1) - 1

end

end A114378.P8909530374594037422

namespace A114378

/-- `A247194(n+1)-1` -/
def P8909530374594037422.Spec : Prop :=
  ∀ n, P8909530374594037422.a n = A114378 (n + 1)

end A114378

/-! ## A114378.P13618908798707859999

`Δ[∑[A247194(n)]-n]`
-/

namespace A114378.P13618908798707859999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247194 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114378.P13618908798707859999

namespace A114378

/-- `Δ[∑[A247194(n)]-n]` -/
def P13618908798707859999.Spec : Prop :=
  ∀ n, P13618908798707859999.a n = A114378 (n + 1)

end A114378

/-! ## A114378.P252639635236502414

`record[A247194(A028920(n))-1]`
-/

namespace A114378.P252639635236502414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247194 (A028920 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114378.P252639635236502414

namespace A114378

/-- `record[A247194(A028920(n))-1]` -/
def P252639635236502414.Spec : Prop :=
  ∀ n, P252639635236502414.a n = A114378 (n + 1)

end A114378

/-!
# A114379: Sums of p-th to the q-th prime where p and q are twin primes.

The programs for A114379, the canonical program `A114379.P12683606394352257350` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114379 has offset 1).

The definition of A114379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114379.P12683606394352257350

`A007504(A006512(n+1))-A007504(A006512(n+1)-3)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A114379

/-- `A007504(A006512(n+1))-A007504(A006512(n+1)-3)` -/
def P12683606394352257350.Spec : Prop :=
  ∀ n, P12683606394352257350.a n = A114379 (n + 1)

theorem P12683606394352257350.correct : P12683606394352257350.Spec := by
  intro n
  simp only [A114379, Nat.add_sub_cancel]

end A114379

/-! ## A114379.P5263269927227472631

`A114381(A029707(n+1))`
-/

namespace A114379.P5263269927227472631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114381 (A029707 (n + 1)).toNat

end

end A114379.P5263269927227472631

namespace A114379

/-- `A114381(A029707(n+1))` -/
def P5263269927227472631.Spec : Prop :=
  ∀ n, P5263269927227472631.a n = A114379 (n + 1)

end A114379

/-! ## A114379.P14990856083359245182

`A114381(A155752(n+1)+1)`
-/

namespace A114379.P14990856083359245182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114381 (A155752 (n + 1) + 1).toNat

end

end A114379.P14990856083359245182

namespace A114379

/-- `A114381(A155752(n+1)+1)` -/
def P14990856083359245182.Spec : Prop :=
  ∀ n, P14990856083359245182.a n = A114379 (n + 1)

end A114379

/-! ## A114379.P10451651354504935077

`A114381(A000720(A001359(n+1)))`
-/

namespace A114379.P10451651354504935077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114381 (A000720 (A001359 (n + 1)).toNat).toNat

end

end A114379.P10451651354504935077

namespace A114379

/-- `A114381(A000720(A001359(n+1)))` -/
def P10451651354504935077.Spec : Prop :=
  ∀ n, P10451651354504935077.a n = A114379 (n + 1)

end A114379

/-! ## A114379.P2911772338438007821

`A114381(A000720(A014574(n+1)))`
-/

namespace A114379.P2911772338438007821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114381 (A000720 (A014574 (n + 1)).toNat).toNat

end

end A114379.P2911772338438007821

namespace A114379

/-- `A114381(A000720(A014574(n+1)))` -/
def P2911772338438007821.Spec : Prop :=
  ∀ n, P2911772338438007821.a n = A114379 (n + 1)

end A114379

/-! ## A114379.P2889125656938447348

`A114381(record[A061395(A120811(n+1))])`
-/

namespace A114379.P2889125656938447348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A120811 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114381 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A114379.P2889125656938447348

namespace A114379

/-- `A114381(record[A061395(A120811(n+1))])` -/
def P2889125656938447348.Spec : Prop :=
  ∀ n, P2889125656938447348.a n = A114379 (n + 1)

end A114379

/-! ## A114379.P13888110046768445686

`A114381(A061395(p?[A120811(n+1)]))`
-/

namespace A114379.P13888110046768445686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114381 (A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A114379.P13888110046768445686

namespace A114379

/-- `A114381(A061395(p?[A120811(n+1)]))` -/
def P13888110046768445686.Spec : Prop :=
  ∀ n, P13888110046768445686.a n = A114379 (n + 1)

end A114379

/-! ## A114379.P12726990317869504762

`A135277(A040040(n+1))`
-/

namespace A114379.P12726990317869504762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135277 (A040040 (n + 1)).toNat

end

end A114379.P12726990317869504762

namespace A114379

/-- `A135277(A040040(n+1))` -/
def P12726990317869504762.Spec : Prop :=
  ∀ n, P12726990317869504762.a n = A114379 (n + 1)

end A114379

/-! ## A114379.P12645447746694635722

`A135277(A168497(n+2))`
-/

namespace A114379.P12645447746694635722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135277 (A168497 (n + 2)).toNat

end

end A114379.P12645447746694635722

namespace A114379

/-- `A135277(A168497(n+2))` -/
def P12645447746694635722.Spec : Prop :=
  ∀ n, P12645447746694635722.a n = A114379 (n + 1)

end A114379

/-! ## A114379.P3186165239873031266

`A034961(A001359(n+1))`
-/

namespace A114379.P3186165239873031266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (A001359 (n + 1)).toNat

end

end A114379.P3186165239873031266

namespace A114379

/-- `A034961(A001359(n+1))` -/
def P3186165239873031266.Spec : Prop :=
  ∀ n, P3186165239873031266.a n = A114379 (n + 1)

end A114379

/-! ## A114379.P1127802648326456641

`A034961(A124588(n+2))`
-/

namespace A114379.P1127802648326456641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (A124588 (n + 2)).toNat

end

end A114379.P1127802648326456641

namespace A114379

/-- `A034961(A124588(n+2))` -/
def P1127802648326456641.Spec : Prop :=
  ∀ n, P1127802648326456641.a n = A114379 (n + 1)

end A114379

/-! ## A114379.P18437519043079111038

`A034961(A181747(n+2))`
-/

namespace A114379.P18437519043079111038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (A181747 (n + 2)).toNat

end

end A114379.P18437519043079111038

namespace A114379

/-- `A034961(A181747(n+2))` -/
def P18437519043079111038.Spec : Prop :=
  ∀ n, P18437519043079111038.a n = A114379 (n + 1)

end A114379

/-! ## A114379.P10741541370979138559

`A034961(A014574(n+1)-1)`
-/

namespace A114379.P10741541370979138559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (A014574 (n + 1) - 1).toNat

end

end A114379.P10741541370979138559

namespace A114379

/-- `A034961(A014574(n+1)-1)` -/
def P10741541370979138559.Spec : Prop :=
  ∀ n, P10741541370979138559.a n = A114379 (n + 1)

end A114379

/-! ## A114379.P12838116053167688721

`A034961(A067829(n+2)-2)`
-/

namespace A114379.P12838116053167688721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (A067829 (n + 2) - 2).toNat

end

end A114379.P12838116053167688721

namespace A114379

/-- `A034961(A067829(n+2)-2)` -/
def P12838116053167688721.Spec : Prop :=
  ∀ n, P12838116053167688721.a n = A114379 (n + 1)

end A114379

/-! ## A114379.P1508376996893327064

`A034961(p?[A000040(n+1)-2])`
-/

namespace A114379.P1508376996893327064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A114379.P1508376996893327064

namespace A114379

/-- `A034961(p?[A000040(n+1)-2])` -/
def P1508376996893327064.Spec : Prop :=
  ∀ n, P1508376996893327064.a n = A114379 (n + 1)

end A114379

/-! ## A114379.P10156363065198787491

`A034961(p?[A008578(n+1)-2])`
-/

namespace A114379.P10156363065198787491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A114379.P10156363065198787491

namespace A114379

/-- `A034961(p?[A008578(n+1)-2])` -/
def P10156363065198787491.Spec : Prop :=
  ∀ n, P10156363065198787491.a n = A114379 (n + 1)

end A114379

/-! ## A114379.P16047190575433270075

`A034961(p?[A151800(2*n)-2])`
-/

namespace A114379.P16047190575433270075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A114379.P16047190575433270075

namespace A114379

/-- `A034961(p?[A151800(2*n)-2])` -/
def P16047190575433270075.Spec : Prop :=
  ∀ n, P16047190575433270075.a n = A114379 (n + 1)

end A114379

/-! ## A114379.P12905688834788646167

`A034961(p?[n*A010051(n+2)])`
-/

namespace A114379.P12905688834788646167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A114379.P12905688834788646167

namespace A114379

/-- `A034961(p?[n*A010051(n+2)])` -/
def P12905688834788646167.Spec : Prop :=
  ∀ n, P12905688834788646167.a n = A114379 (n + 1)

end A114379

/-! ## A114379.P17733363417694880801

`A034961(A054735(n+1)/2-1)`
-/

namespace A114379.P17733363417694880801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (SequenceMachineLib.roundAway ((A054735 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A114379.P17733363417694880801

namespace A114379

/-- `A034961(A054735(n+1)/2-1)` -/
def P17733363417694880801.Spec : Prop :=
  ∀ n, P17733363417694880801.a n = A114379 (n + 1)

end A114379

/-! ## A114379.P13971690831001073939

`A034961(∩[A000040(n+1)-2, A000040(n+1)])`
-/

namespace A114379.P13971690831001073939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A114379.P13971690831001073939

namespace A114379

/-- `A034961(∩[A000040(n+1)-2, A000040(n+1)])` -/
def P13971690831001073939.Spec : Prop :=
  ∀ n, P13971690831001073939.a n = A114379 (n + 1)

end A114379

/-!
# A114381: Sums of p-th to the q-th prime where p and q are consecutive primes.

The programs for A114381, the canonical program `A114381.P8894335192554772772` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114381 has offset 1).

The definition of A114381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114381.P620182281314202363

`A006450(n+1)+Δ[A022094(n+1)]`
-/

namespace A114381.P620182281314202363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) + (f1 (n + 1) - f1 n)

end

end A114381.P620182281314202363

namespace A114381

/-- `A006450(n+1)+Δ[A022094(n+1)]` -/
def P620182281314202363.Spec : Prop :=
  ∀ n, P620182281314202363.a n = A114381 (n + 1)

end A114381

/-! ## A114381.P4606589061787672574

`A006450(n+1)+Δ[A007504(A000040(n+1))]`
-/

namespace A114381.P4606589061787672574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) + (f1 (n + 1) - f1 n)

end

end A114381.P4606589061787672574

namespace A114381

/-- `A006450(n+1)+Δ[A007504(A000040(n+1))]` -/
def P4606589061787672574.Spec : Prop :=
  ∀ n, P4606589061787672574.a n = A114381 (n + 1)

end A114381

/-! ## A114381.P8894335192554772772

`A007504(A000040(n+2))-A007504(A006093(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A114381

/-- `A007504(A000040(n+2))-A007504(A006093(n+1))` -/
def P8894335192554772772.Spec : Prop :=
  ∀ n, P8894335192554772772.a n = A114381 (n + 1)

theorem P8894335192554772772.correct : P8894335192554772772.Spec := by
  intro n
  simp only [A114381, Nat.add_sub_cancel]

end A114381

/-! ## A114381.P13498640288465084107

`A007504(A065091(n+1))-A007504(A000040(n+1)-1)`
-/

namespace A114381.P13498640288465084107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A065091 (n + 1)).toNat - A007504 (A000040 (n + 1) - 1).toNat

end

end A114381.P13498640288465084107

namespace A114381

/-- `A007504(A065091(n+1))-A007504(A000040(n+1)-1)` -/
def P13498640288465084107.Spec : Prop :=
  ∀ n, P13498640288465084107.a n = A114381 (n + 1)

end A114381

/-! ## A114381.P6988031083653508309

`A000040(A000040(n+1))+Δ[A022094(n+1)]`
-/

namespace A114381.P6988031083653508309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A114381.P6988031083653508309

namespace A114381

/-- `A000040(A000040(n+1))+Δ[A022094(n+1)]` -/
def P6988031083653508309.Spec : Prop :=
  ∀ n, P6988031083653508309.a n = A114381 (n + 1)

end A114381

/-! ## A114381.P5372212682138523637

`A036439(A065091(n+1)+1)-A036439(A000040(n+1))`
-/

namespace A114381.P5372212682138523637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (A065091 (n + 1) + 1).toNat - A036439 (A000040 (n + 1)).toNat

end

end A114381.P5372212682138523637

namespace A114381

/-- `A036439(A065091(n+1)+1)-A036439(A000040(n+1))` -/
def P5372212682138523637.Spec : Prop :=
  ∀ n, P5372212682138523637.a n = A114381 (n + 1)

end A114381

/-! ## A114381.P9134091319251723423

`A227547(A065091(n+1)+1)-A227547(A000040(n+1))`
-/

namespace A114381.P9134091319251723423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227547 (A065091 (n + 1) + 1).toNat - A227547 (A000040 (n + 1)).toNat

end

end A114381.P9134091319251723423

namespace A114381

/-- `A227547(A065091(n+1)+1)-A227547(A000040(n+1))` -/
def P9134091319251723423.Spec : Prop :=
  ∀ n, P9134091319251723423.a n = A114381 (n + 1)

end A114381

/-! ## A114381.P14907848793138784995

`A036439(A000040(n+2)+1)-A175965(A000040(n+1)+1)`
-/

namespace A114381.P14907848793138784995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (A000040 (n + 2) + 1).toNat - A175965 (A000040 (n + 1) + 1).toNat

end

end A114381.P14907848793138784995

namespace A114381

/-- `A036439(A000040(n+2)+1)-A175965(A000040(n+1)+1)` -/
def P14907848793138784995.Spec : Prop :=
  ∀ n, P14907848793138784995.a n = A114381 (n + 1)

end A114381

/-!
# A114382: Prime(n) + Semiprime(n) + (3-almostPrime)(n).

The programs for A114382, the canonical program `A114382.P1208901813651073029` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114382 has offset 1).

The definition of A114382 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A014612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A114382.P1208901813651073029

`A000040(n+1)+A001358(n+1)+A014612(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A114382

/-- `A000040(n+1)+A001358(n+1)+A014612(n+1)` -/
def P1208901813651073029.Spec : Prop :=
  ∀ n, P1208901813651073029.a n = A114382 (n + 1)

theorem P1208901813651073029.correct : P1208901813651073029.Spec := by
  intro n
  simp only [A114382, Nat.add_sub_cancel]

end A114382

/-! ## A114382.P12656992676817018239

`A133796(n+1)+A014612(n+1)`
-/

namespace A114382.P12656992676817018239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1) + A014612 (n + 1)

end

end A114382.P12656992676817018239

namespace A114382

/-- `A133796(n+1)+A014612(n+1)` -/
def P12656992676817018239.Spec : Prop :=
  ∀ n, P12656992676817018239.a n = A114382 (n + 1)

end A114382

/-! ## A114382.P149770958501786863

`A114944(n+1)-A014613(n+1)`
-/

namespace A114382.P149770958501786863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114944 (n + 1) - A014613 (n + 1)

end

end A114382.P149770958501786863

namespace A114382

/-- `A114944(n+1)-A014613(n+1)` -/
def P149770958501786863.Spec : Prop :=
  ∀ n, P149770958501786863.a n = A114382 (n + 1)

theorem P149770958501786863.correct : P149770958501786863.Spec := by
  intro n
  simp only [A114382, Nat.add_sub_cancel, A114382.P149770958501786863.a, A114382.P1208901813651073029.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A014613, A014613.P1114013819310587080.f1, A014613.P1114013819310587080.f2, A014613.P1114013819310587080.a, A114944, A114944.P5745295539132009725.a, A030514, A030514.P11974636125371552077.a, A088707, A088707.P7291141647877559993.a, A307342, A307342.P15063499458322460120.f1, A307342.P15063499458322460120.f2, A307342.P15063499458322460120.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A318474, A318474.P8998040803889606684.a, A001511, A001511.P17146462531039486101.a, A064549, A064549.P18019400484953624932.a, A072000, A072000.P3706059858088101648.a, A318472, A318472.P17460137329707848954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A114382

/-! ## A114382.P14457717979458667716

`A133796(n+1)+eq[3, A001222(n+1)]+1`
-/

namespace A114382.P14457717979458667716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A114382.P14457717979458667716

namespace A114382

/-- `A133796(n+1)+eq[3, A001222(n+1)]+1` -/
def P14457717979458667716.Spec : Prop :=
  ∀ n, P14457717979458667716.a n = A114382 (n + 1)

end A114382

/-! ## A114382.P1096149562871606932

`A133796(n+1)+eq[3, A008481(n+1)]+1`
-/

namespace A114382.P1096149562871606932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A114382.P1096149562871606932

namespace A114382

/-- `A133796(n+1)+eq[3, A008481(n+1)]+1` -/
def P1096149562871606932.Spec : Prop :=
  ∀ n, P1096149562871606932.a n = A114382 (n + 1)

end A114382

/-! ## A114382.P16163558277280645967

`A133796(n+1)+∪[A051751(n+1), A217856(n+1)]`
-/

namespace A114382.P16163558277280645967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A114382.P16163558277280645967

namespace A114382

/-- `A133796(n+1)+∪[A051751(n+1), A217856(n+1)]` -/
def P16163558277280645967.Spec : Prop :=
  ∀ n, P16163558277280645967.a n = A114382 (n + 1)

end A114382

/-! ## A114382.P15595948639502892345

`A133796(n+1)+Δ[A110209(n)]`
-/

namespace A114382.P15595948639502892345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1) + (f1 (n + 1) - f1 n)

end

end A114382.P15595948639502892345

namespace A114382

/-- `A133796(n+1)+Δ[A110209(n)]` -/
def P15595948639502892345.Spec : Prop :=
  ∀ n, P15595948639502892345.a n = A114382 (n + 1)

end A114382

/-! ## A114382.P8370395945045616563

`A114944(n+1)-Δ[A110226(n)]`
-/

namespace A114382.P8370395945045616563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114944 (n + 1) - (f1 (n + 1) - f1 n)

end

end A114382.P8370395945045616563

namespace A114382

/-- `A114944(n+1)-Δ[A110226(n)]` -/
def P8370395945045616563.Spec : Prop :=
  ∀ n, P8370395945045616563.a n = A114382 (n + 1)

end A114382

/-! ## A114382.P11649182456960731442

`A133796(n+1)+A110209(n+1)-A110209(n)`
-/

namespace A114382.P11649182456960731442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1) + (A110209 (n + 1) - A110209 n)

end

end A114382.P11649182456960731442

namespace A114382

/-- `A133796(n+1)+A110209(n+1)-A110209(n)` -/
def P11649182456960731442.Spec : Prop :=
  ∀ n, P11649182456960731442.a n = A114382 (n + 1)

end A114382

/-! ## A114382.P4097622215385118264

`A114944(n+1)-eq[n, n/a(A001222(n))]` with `a(0)=2`
-/

namespace A114382.P4097622215385118264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f2 =>
  (n : ℚ) / f2 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114944 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n : ℤ)

end

end A114382.P4097622215385118264

namespace A114382

/-- `A114944(n+1)-eq[n, n/a(A001222(n))]` -/
def P4097622215385118264.Spec : Prop :=
  ∀ n, P4097622215385118264.a n = A114382 (n + 1)

end A114382

/-! ## A114382.P1068753525348086963

`A133796(n+1)+eq[1, A101637(2*(n+1))]+1`
-/

namespace A114382.P1068753525348086963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A114382.P1068753525348086963

namespace A114382

/-- `A133796(n+1)+eq[1, A101637(2*(n+1))]+1` -/
def P1068753525348086963.Spec : Prop :=
  ∀ n, P1068753525348086963.a n = A114382 (n + 1)

end A114382

/-! ## A114382.P13751692876460568010

`A114944(n+1)-∩[A033987(n+1), A166718(n+1)]`
-/

namespace A114382.P13751692876460568010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166718 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114944 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A114382.P13751692876460568010

namespace A114382

/-- `A114944(n+1)-∩[A033987(n+1), A166718(n+1)]` -/
def P13751692876460568010.Spec : Prop :=
  ∀ n, P13751692876460568010.a n = A114382 (n + 1)

end A114382

/-! ## A114382.P17413682514736568634

`A114944(n+1)-∩[A110893(n+1), A166718(n+1)]`
-/

namespace A114382.P17413682514736568634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166718 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114944 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A114382.P17413682514736568634

namespace A114382

/-- `A114944(n+1)-∩[A110893(n+1), A166718(n+1)]` -/
def P17413682514736568634.Spec : Prop :=
  ∀ n, P17413682514736568634.a n = A114382 (n + 1)

end A114382

/-! ## A114382.P14296566102195310552

`A114944(n+1)-∩[A067028(n+1), A166719(n+1)]`
-/

namespace A114382.P14296566102195310552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166719 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114944 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A114382.P14296566102195310552

namespace A114382

/-- `A114944(n+1)-∩[A067028(n+1), A166719(n+1)]` -/
def P14296566102195310552.Spec : Prop :=
  ∀ n, P14296566102195310552.a n = A114382 (n + 1)

end A114382

/-!
# A114383: Length of all-prime chain of prime(n) + successive even triangular numbers.

The programs for A114383, there is no canonical definition to state claims against.
-/

/-! ## A114383.P501447723719198138

`gcd(A002961(n+1), A054055(A122746(n)))`
-/

namespace A114383.P501447723719198138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002961 (n + 1)) (A054055 (A122746 n).toNat)

end

end A114383.P501447723719198138

/-!
# A114384: Integers i such that 49*i = 81 X i.

The programs for A114384, there is no canonical definition to state claims against.
-/

/-! ## A114384.P9496509669414284247

`A178891(A115772(n)%A178911(n+1))`
-/

namespace A114384.P9496509669414284247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178891 (Int.tmod (A115772 n) (A178911 (n + 1))).toNat

end

end A114384.P9496509669414284247

/-! ## A114384.P12117918962468095222

`A178891(A115772(n))%A114385(A028310(n))`
-/

namespace A114384.P12117918962468095222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178891 (A115772 n).toNat) (A114385 (A028310 n).toNat)

end

end A114384.P12117918962468095222

/-! ## A114384.P17169392354240362824

`A178891(A115772(n)^A060268(n+2))`
-/

namespace A114384.P17169392354240362824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178891 (SequenceMachineLib.roundAway ((A115772 n : ℚ) ^ (A060268 (n + 2) : ℤ))).toNat

end

end A114384.P17169392354240362824

/-! ## A114384.P6884341312344638130

`A178891(C(A115772(n), A060268(n+2)))`
-/

namespace A114384.P6884341312344638130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178891 (Nat.choose (A115772 n).toNat (A060268 (n + 2)).toNat)

end

end A114384.P6884341312344638130

/-!
# A114385: Sequence A114384 in binary.

The programs for A114385, there is no canonical definition to state claims against.
-/

/-! ## A114385.P11455769738168476442

`A007088(A114384(n))`
-/

namespace A114385.P11455769738168476442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A114384 n).toNat

end

end A114385.P11455769738168476442

/-! ## A114385.P15681972483469215248

`A185544(2*A114384(n))`
-/

namespace A114385.P15681972483469215248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A114384 n).toNat

end

end A114385.P15681972483469215248

/-! ## A114385.P9468370497948368009

`A007088(A178891(A115772(n)))`
-/

namespace A114385.P9468370497948368009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A178891 (A115772 n).toNat).toNat

end

end A114385.P9468370497948368009

/-! ## A114385.P10065095443360648358

`A185544(A114384(n)+A114384(n))`
-/

namespace A114385.P10065095443360648358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A114384 n + A114384 n).toNat

end

end A114385.P10065095443360648358

/-! ## A114385.P8700200908651224101

`A228071(A114384(n))+A178891(A115772(n))`
-/

namespace A114385.P8700200908651224101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228071 (A114384 n).toNat + A178891 (A115772 n).toNat

end

end A114385.P8700200908651224101

/-!
# A114386: Integers i such that 57*i = 73 X i.

The programs for A114386, there is no canonical definition to state claims against.
-/

/-! ## A114386.P1214157705801628316

`eq[A001316(2*57*n), A001316(n)]`
-/

namespace A114386.P1214157705801628316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (2 * (57 * n))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114386.P1214157705801628316

/-! ## A114386.P8947180223915524806

`eq[A000120(57*n), A000120(n)]`
-/

namespace A114386.P8947180223915524806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (57 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114386.P8947180223915524806

/-! ## A114386.P10999403993114125798

`eq[A048883(57*n), A048883(n)]`
-/

namespace A114386.P10999403993114125798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (57 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114386.P10999403993114125798

/-! ## A114386.P5914594435482002783

`eq[A233775(57*n), A233775(n)]`
-/

namespace A114386.P5914594435482002783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233775 (57 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233775 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114386.P5914594435482002783

/-!
# A114387: Sequence A114386 in binary.

The programs for A114387, there is no canonical definition to state claims against.
-/

/-! ## A114387.P12735803671547214121

`A007088(A114386(n+1))`
-/

namespace A114387.P12735803671547214121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A114386 (n + 1)).toNat

end

end A114387.P12735803671547214121

/-! ## A114387.P11784162794291556031

`A185544(2*A114386(n+1))`
-/

namespace A114387.P11784162794291556031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A114386 (n + 1)).toNat

end

end A114387.P11784162794291556031

/-! ## A114387.P1266646456789035461

`A007089(A005836(A114386(n+1)+1))`
-/

namespace A114387.P1266646456789035461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A005836 (A114386 (n + 1) + 1).toNat).toNat

end

end A114387.P1266646456789035461

/-! ## A114387.P9459587539907089284

`A007088(eq[A001316(57*n), A001316(n)])`
-/

namespace A114387.P9459587539907089284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (57 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A114387.P9459587539907089284

/-! ## A114387.P15212483498224101138

`A185544(A114386(n+1)+A114386(n+1))`
-/

namespace A114387.P15212483498224101138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A114386 (n + 1) + A114386 (n + 1)).toNat

end

end A114387.P15212483498224101138

/-!
# A114388: Transpose of table A115872.

The programs for A114388, there is no canonical definition to state claims against.
-/

/-! ## A114388.P1250632555509045527

`A115872(∑[char[∑[n]]]²-n)`
-/

namespace A114388.P1250632555509045527
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115872 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A114388.P1250632555509045527

/-! ## A114388.P2415832512863881396

`A115872(A038722(n+1))%64`
-/

namespace A114388.P2415832512863881396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115872 (A038722 (n + 1)).toNat) 64

end

end A114388.P2415832512863881396

/-! ## A114388.P3413136923112581044

`A115872(A061579(n)+1)%-(n+2)`
-/

namespace A114388.P3413136923112581044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115872 (A061579 n + 1).toNat) (-(n + 2 : ℤ))

end

end A114388.P3413136923112581044

/-! ## A114388.P10580406612762834656

`Δ[A115872(A038722(n))+a(n-1)]` with `a(0)=1`
-/

namespace A114388.P10580406612762834656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A115872 (A038722 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114388.P10580406612762834656

/-! ## A114388.P10069208633252973542

`A115872(A038722(n+1))^A178334(n)`
-/

namespace A114388.P10069208633252973542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115872 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A114388.P10069208633252973542

/-! ## A114388.P1032149567934999384

`gcd(A000038(n), A115872(A038722(n+1)))`
-/

namespace A114388.P1032149567934999384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A115872 (A038722 (n + 1)).toNat)

end

end A114388.P1032149567934999384

/-! ## A114388.P16410751137720023613

`A007318(C(2, n))*A115872(A038722(n+1))`
-/

namespace A114388.P16410751137720023613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A115872 (A038722 (n + 1)).toNat

end

end A114388.P16410751137720023613

/-!
# A114389: Bisection of A065621.

The programs for A114389, the canonical program `A114389.P2445099685754584707` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114389 has offset 1).

The definition of A114389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114389.P2445099685754584707

`xor(4*n, Δ[n²])`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114389

/-- `xor(4*n, Δ[n²])` -/
def P2445099685754584707.Spec : Prop :=
  ∀ n, P2445099685754584707.a n = A114389 (n + 1)

theorem P2445099685754584707.correct : P2445099685754584707.Spec := by
  intro n
  simp only [A114389, Nat.add_sub_cancel]

end A114389

/-! ## A114389.P15785917131622753490

`2*xor(n, 2*n)+1`
-/

namespace A114389.P15785917131622753490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor n (2 * n) + 1

end

end A114389.P15785917131622753490

namespace A114389

/-- `2*xor(n, 2*n)+1` -/
def P15785917131622753490.Spec : Prop :=
  ∀ n, (P15785917131622753490.a n : ℤ) = A114389 (n + 1)

end A114389

/-! ## A114389.P13667316940806631735

`or(1, 2*xor(n, 2*n))`
-/

namespace A114389.P13667316940806631735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * Nat.xor n (2 * n))

end

end A114389.P13667316940806631735

namespace A114389

/-- `or(1, 2*xor(n, 2*n))` -/
def P13667316940806631735.Spec : Prop :=
  ∀ n, (P13667316940806631735.a n : ℤ) = A114389 (n + 1)

end A114389

/-! ## A114389.P11987779883143360117

`1-2*xor(2*n, -n)`
-/

namespace A114389.P11987779883143360117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * Int.xor (2 * n : ℤ) (-(n : ℤ))

end

end A114389.P11987779883143360117

namespace A114389

/-- `1-2*xor(2*n, -n)` -/
def P11987779883143360117.Spec : Prop :=
  ∀ n, P11987779883143360117.a n = A114389 (n + 1)

end A114389

/-! ## A114389.P12948012702250051002

`abs(xor(2*xor(n, 2*n), -1))`
-/

namespace A114389.P12948012702250051002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (2 * Nat.xor n (2 * n) : ℤ) (-1)|

end

end A114389.P12948012702250051002

namespace A114389

/-- `abs(xor(2*xor(n, 2*n), -1))` -/
def P12948012702250051002.Spec : Prop :=
  ∀ n, P12948012702250051002.a n = A114389 (n + 1)

end A114389

/-! ## A114389.P14533501861896048334

`xor(2, 4*xor(n, 2*n))/2`
-/

namespace A114389.P14533501861896048334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (4 * Nat.xor n (2 * n)) : ℚ) / 2

end

end A114389.P14533501861896048334

namespace A114389

/-- `xor(2, 4*xor(n, 2*n))/2` -/
def P14533501861896048334.Spec : Prop :=
  ∀ n, P14533501861896048334.a n = (A114389 (n + 1) : ℚ)

end A114389

/-! ## A114389.P5147588768156385373

`2*n+1-4*or(2*n, -n)`
-/

namespace A114389.P5147588768156385373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - 4 * Int.lor (2 * n : ℤ) (-(n : ℤ))

end

end A114389.P5147588768156385373

namespace A114389

/-- `2*n+1-4*or(2*n, -n)` -/
def P5147588768156385373.Spec : Prop :=
  ∀ n, P5147588768156385373.a n = A114389 (n + 1)

end A114389

/-! ## A114389.P4669177999341099099

`4*and(n, -(2*n+1))+2*n+1`
-/

namespace A114389.P4669177999341099099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.land (n : ℤ) (-(2 * n + 1 : ℤ)) + (2 * n + 1 : ℤ)

end

end A114389.P4669177999341099099

namespace A114389

/-- `4*and(n, -(2*n+1))+2*n+1` -/
def P4669177999341099099.Spec : Prop :=
  ∀ n, P4669177999341099099.a n = A114389 (n + 1)

end A114389

/-! ## A114389.P12980113694108830115

`A048726(n)+1`
-/

namespace A114389.P12980113694108830115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048726 n + 1

end

end A114389.P12980113694108830115

namespace A114389

/-- `A048726(n)+1` -/
def P12980113694108830115.Spec : Prop :=
  ∀ n, P12980113694108830115.a n = A114389 (n + 1)

end A114389

/-! ## A114389.P17917889230040534749

`2*A048724(n)+1`
-/

namespace A114389.P17917889230040534749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048724 n + 1

end

end A114389.P17917889230040534749

namespace A114389

/-- `2*A048724(n)+1` -/
def P17917889230040534749.Spec : Prop :=
  ∀ n, P17917889230040534749.a n = A114389 (n + 1)

end A114389

/-! ## A114389.P12463103177366461897

`xor(n, A048727(n))+1`
-/

namespace A114389.P12463103177366461897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A048727 n) + 1

end

end A114389.P12463103177366461897

namespace A114389

/-- `xor(n, A048727(n))+1` -/
def P12463103177366461897.Spec : Prop :=
  ∀ n, P12463103177366461897.a n = A114389 (n + 1)

end A114389

/-! ## A114389.P12434921490107586425

`A003188(3*n+n+1)`
-/

namespace A114389.P12434921490107586425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (3 * n + (n + 1))

end

end A114389.P12434921490107586425

namespace A114389

/-- `A003188(3*n+n+1)` -/
def P12434921490107586425.Spec : Prop :=
  ∀ n, P12434921490107586425.a n = A114389 (n + 1)

end A114389

/-! ## A114389.P7659925947508909991

`A092246(A003188(n)+1)`
-/

namespace A114389.P7659925947508909991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (A003188 n + 1).toNat

end

end A114389.P7659925947508909991

namespace A114389

/-- `A092246(A003188(n)+1)` -/
def P7659925947508909991.Spec : Prop :=
  ∀ n, P7659925947508909991.a n = A114389 (n + 1)

end A114389

/-! ## A114389.P17681005690171832621

`A092246(A105081(n+1))`
-/

namespace A114389.P17681005690171832621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (A105081 (n + 1)).toNat

end

end A114389.P17681005690171832621

namespace A114389

/-- `A092246(A105081(n+1))` -/
def P17681005690171832621.Spec : Prop :=
  ∀ n, P17681005690171832621.a n = A114389 (n + 1)

end A114389

/-! ## A114389.P17919557669003963014

`A065621(Δ[n²])`
-/

namespace A114389.P17919557669003963014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065621 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A114389.P17919557669003963014

namespace A114389

/-- `A065621(Δ[n²])` -/
def P17919557669003963014.Spec : Prop :=
  ∀ n, P17919557669003963014.a n = A114389 (n + 1)

end A114389

/-! ## A114389.P12939533065553642379

`or(1, A048724(2*n))`
-/

namespace A114389.P12939533065553642379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A048724 (2 * n))

end

end A114389.P12939533065553642379

namespace A114389

/-- `or(1, A048724(2*n))` -/
def P12939533065553642379.Spec : Prop :=
  ∀ n, P12939533065553642379.a n = A114389 (n + 1)

end A114389

/-! ## A114389.P4473187032596609733

`A048724(A005843(n))+1`
-/

namespace A114389.P4473187032596609733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 (A005843 n).toNat + 1

end

end A114389.P4473187032596609733

namespace A114389

/-- `A048724(A005843(n))+1` -/
def P4473187032596609733.Spec : Prop :=
  ∀ n, P4473187032596609733.a n = A114389 (n + 1)

end A114389

/-! ## A114389.P3767141944555885570

`A000265(A065621(2*n+1))`
-/

namespace A114389.P3767141944555885570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A065621 (2 * n + 1)).toNat

end

end A114389.P3767141944555885570

namespace A114389

/-- `A000265(A065621(2*n+1))` -/
def P3767141944555885570.Spec : Prop :=
  ∀ n, P3767141944555885570.a n = A114389 (n + 1)

end A114389

/-! ## A114389.P5819969688721665336

`A268669(A277823(2*n+1))`
-/

namespace A114389.P5819969688721665336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (A277823 (2 * n + 1)).toNat

end

end A114389.P5819969688721665336

namespace A114389

/-- `A268669(A277823(2*n+1))` -/
def P5819969688721665336.Spec : Prop :=
  ∀ n, P5819969688721665336.a n = A114389 (n + 1)

end A114389

/-!
# A114390: a(n) = A065621(n^2).

The programs for A114390, the canonical program `A114390.P4338198483781003028` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114390 has offset 1).

The definition of A114390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114390.P4338198483781003028

`A065621((n+1)²)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114390

/-- `A065621((n+1)²)` -/
def P4338198483781003028.Spec : Prop :=
  ∀ n, P4338198483781003028.a n = A114390 (n + 1)

theorem P4338198483781003028.correct : P4338198483781003028.Spec := by
  intro n
  simp only [A114390, Nat.add_sub_cancel]

end A114390

/-! ## A114390.P15981419946413023151

`xor(-(2*(n+1)²), -(n+1)²)`
-/

namespace A114390.P15981419946413023151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(2 * (n + 1) ^ 2 : ℤ)) (-((n + 1) ^ 2 : ℤ))

end

end A114390.P15981419946413023151

namespace A114390

/-- `xor(-(2*(n+1)²), -(n+1)²)` -/
def P15981419946413023151.Spec : Prop :=
  ∀ n, P15981419946413023151.a n = A114390 (n + 1)

end A114390

/-! ## A114390.P984116939141261853

`xor(∑[4*n+1]+n, (n+1)²)+1`
-/

namespace A114390.P984116939141261853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (∑ j ∈ Finset.range (n + 1), f1 j + n) ((n + 1) ^ 2) + 1

end

end A114390.P984116939141261853

namespace A114390

/-- `xor(∑[4*n+1]+n, (n+1)²)+1` -/
def P984116939141261853.Spec : Prop :=
  ∀ n, (P984116939141261853.a n : ℤ) = A114390 (n + 1)

end A114390

/-! ## A114390.P12167857225815864638

`xor((2*(n+1))²-3, 8*(n+1)²-3)/4`
-/

namespace A114390.P12167857225815864638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (((2 * (n + 1)) ^ 2 : ℤ) - 3) ((8 * (n + 1) ^ 2 : ℤ) - 3) : ℚ) / 4

end

end A114390.P12167857225815864638

namespace A114390

/-- `xor((2*(n+1))²-3, 8*(n+1)²-3)/4` -/
def P12167857225815864638.Spec : Prop :=
  ∀ n, P12167857225815864638.a n = (A114390 (n + 1) : ℚ)

end A114390

/-! ## A114390.P775424566142408760

`A003188(2*(n+1)²-1)`
-/

namespace A114390.P775424566142408760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (2 * (n + 1) ^ 2 - 1)

end

end A114390.P775424566142408760

namespace A114390

/-- `A003188(2*(n+1)²-1)` -/
def P775424566142408760.Spec : Prop :=
  ∀ n, P775424566142408760.a n = A114390 (n + 1)

end A114390

/-! ## A114390.P9850855138533644201

`A010051(2*(n+2))+A003188(A056220(n+1))`
-/

namespace A114390.P9850855138533644201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 2)) + A003188 (A056220 (n + 1)).toNat

end

end A114390.P9850855138533644201

namespace A114390

/-- `A010051(2*(n+2))+A003188(A056220(n+1))` -/
def P9850855138533644201.Spec : Prop :=
  ∀ n, P9850855138533644201.a n = A114390 (n + 1)

end A114390

/-! ## A114390.P15035994072538931650

`A073122((n+1)²)`
-/

namespace A114390.P15035994072538931650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073122 ((n + 1) ^ 2)

end

end A114390.P15035994072538931650

namespace A114390

/-- `A073122((n+1)²)` -/
def P15035994072538931650.Spec : Prop :=
  ∀ n, P15035994072538931650.a n = A114390 (n + 1)

end A114390

/-! ## A114390.P7246313961259440314

`A268669(A277823((n+1)²))`
-/

namespace A114390.P7246313961259440314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (A277823 ((n + 1) ^ 2)).toNat

end

end A114390.P7246313961259440314

namespace A114390

/-- `A268669(A277823((n+1)²))` -/
def P7246313961259440314.Spec : Prop :=
  ∀ n, P7246313961259440314.a n = A114390 (n + 1)

end A114390

/-! ## A114390.P2940700769140418650

`A000069(A105081((n+1)²))`
-/

namespace A114390.P2940700769140418650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A105081 ((n + 1) ^ 2)).toNat

end

end A114390.P2940700769140418650

namespace A114390

/-- `A000069(A105081((n+1)²))` -/
def P2940700769140418650.Spec : Prop :=
  ∀ n, P2940700769140418650.a n = A114390 (n + 1)

end A114390

/-! ## A114390.P5540428037265345391

`A277901(A000069((n+1)²))`
-/

namespace A114390.P5540428037265345391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277901 (A000069 ((n + 1) ^ 2)).toNat

end

end A114390.P5540428037265345391

namespace A114390

/-- `A277901(A000069((n+1)²))` -/
def P5540428037265345391.Spec : Prop :=
  ∀ n, P5540428037265345391.a n = A114390 (n + 1)

end A114390

/-!
# A114391: Positions where A114390 is a square.

The programs for A114391, there is no canonical definition to state claims against.
-/

/-! ## A114391.P18213490403695490630

`∑[A114394(round(acot(n)+n))]`
-/

namespace A114391.P18213490403695490630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114394 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114391.P18213490403695490630

/-! ## A114391.P7725405319301787499

`A114394(n)+a(n-1)` with `a(0)=1`
-/

namespace A114391.P7725405319301787499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A114394 n + a (n - 1)

end

end A114391.P7725405319301787499

/-! ## A114391.P14008211867973323308

`∑[A114394(abs(1-n)+1)]`
-/

namespace A114391.P14008211867973323308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114394 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114391.P14008211867973323308

/-! ## A114391.P9677664332846829340

`∑[A114394(n+1)]+1-A114394(n+1)`
-/

namespace A114391.P9677664332846829340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A114394 (n + 1))

end

end A114391.P9677664332846829340

/-!
# A114392: Squares in A114390, in order of appearance.

The programs for A114392, there is no canonical definition to state claims against.
-/

/-! ## A114392.P5944270625869739840

`A114390(A114391(n+1))`
-/

namespace A114392.P5944270625869739840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114390 (A114391 (n + 1)).toNat

end

end A114392.P5944270625869739840

/-! ## A114392.P10424022337806752103

`A114393(n+1)²`
-/

namespace A114392.P10424022337806752103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114393 (n + 1) ^ 2

end

end A114392.P10424022337806752103

/-! ## A114392.P16199187236396014489

`A114393(A000027(1+n))^2`
-/

namespace A114392.P16199187236396014489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114393 (A000027 (1 + n)).toNat ^ 2

end

end A114392.P16199187236396014489

/-! ## A114392.P15898586804374849871

`A114393(n+1)^(A057427(n)+1)`
-/

namespace A114392.P15898586804374849871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114393 (n + 1) : ℚ) ^ (A057427 n + 1 : ℤ)

end

end A114392.P15898586804374849871

/-!
# A114393: Square roots of A114392.

The programs for A114393, there is no canonical definition to state claims against.
-/

/-! ## A114393.P332113177877882532

`sqrt(A114392(n+1))`
-/

namespace A114393.P332113177877882532
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A114392 (n + 1) : ℝ)

end

end A114393.P332113177877882532

/-! ## A114393.P11591846742247558560

`A184617(A114391(n+1))`
-/

namespace A114393.P11591846742247558560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 (A114391 (n + 1)).toNat

end

end A114393.P11591846742247558560

/-! ## A114393.P13640373217231230173

`A184617(∑[A114394(round(acot(n)+n))])`
-/

namespace A114393.P13640373217231230173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114394 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114393.P13640373217231230173

/-! ## A114393.P4758025024200926897

`A184617(∑[A114394(abs(1-n)+1)])`
-/

namespace A114393.P4758025024200926897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114394 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114393.P4758025024200926897

/-! ## A114393.P2754438832084959594

`A184617(∑[A114394(n+1)]+1-A114394(n+1))`
-/

namespace A114393.P2754438832084959594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A114394 (n + 1))).toNat

end

end A114393.P2754438832084959594

/-!
# A114394: First differences of A114391.

The programs for A114394, there is no canonical definition to state claims against.
-/

/-! ## A114394.P15817809355793094258

`Δ[A114391(n+1)]`
-/

namespace A114394.P15817809355793094258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114394.P15817809355793094258

/-! ## A114394.P12001712081192724023

`Δ[record[A114391(A022446(n))]]`
-/

namespace A114394.P12001712081192724023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114391 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114394.P12001712081192724023

/-! ## A114394.P4052986216255462774

`Δ[record[A114391(A117910(n))]]`
-/

namespace A114394.P4052986216255462774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114391 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114394.P4052986216255462774

/-! ## A114394.P5738059434108298542

`Δ[record[A114391(A126759(n))]]`
-/

namespace A114394.P5738059434108298542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114391 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114394.P5738059434108298542

/-! ## A114394.P17688750472001337033

`Δ[record[A114391(A134478(n))]]`
-/

namespace A114394.P17688750472001337033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114391 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114394.P17688750472001337033

/-! ## A114394.P8312473532928552749

`Δ[record[A114391(A137735(n))]]`
-/

namespace A114394.P8312473532928552749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114391 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114394.P8312473532928552749

/-! ## A114394.P17075005919152712820

`Δ[record[A114391(A193739(n))]]`
-/

namespace A114394.P17075005919152712820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114391 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114394.P17075005919152712820

/-! ## A114394.P3953485980514426084

`Δ[record[A114391(A274640(n))]]`
-/

namespace A114394.P3953485980514426084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114391 (A274640 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114394.P3953485980514426084

/-! ## A114394.P1221995839864205244

`Δ[record[A114391(A324346(n))]]`
-/

namespace A114394.P1221995839864205244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114391 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114394.P1221995839864205244

/-! ## A114394.P8656099040728225566

`A114391(n+2)-A114391(n+1)`
-/

namespace A114394.P8656099040728225566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114391 (n + 2) - A114391 (n + 1)

end

end A114394.P8656099040728225566

/-!
# A114395: Positions where A115873 takes for the first time a value distinct from any of its earlier values.

The programs for A114395, there is no canonical definition to state claims against.
-/

/-! ## A114395.P4162130677010276148

`∑[∑{d}[(A349796(2*n+1)+2)*(2^n+n), #%2]]`
-/

namespace A114395.P4162130677010276148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A349796 (2 * n + 1) + 2) * (2 ^ n + n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114395.P4162130677010276148

/-! ## A114395.P14857634486525835006

`lt[A239931(n+1), A040924(n)]+1`
-/

namespace A114395.P14857634486525835006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A114395.P14857634486525835006

/-! ## A114395.P18193973176493210860

`∑[∑{d}[A166062(A050045(n+1)), #%2]]`
-/

namespace A114395.P18193973176493210860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166062 (A050045 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114395.P18193973176493210860

/-! ## A114395.P4604492998959975869

`A109613(lt[A239931(n+1), A040924(n)])`
-/

namespace A114395.P4604492998959975869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A114395.P4604492998959975869

/-! ## A114395.P11055259372632768476

`∑[A220495(∑[A100953(n)])]`
-/

namespace A114395.P11055259372632768476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100953 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220495 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114395.P11055259372632768476

/-!
# A114396: Distinct values in A115873, in order of appearance.

The programs for A114396, there is no canonical definition to state claims against.
-/

/-! ## A114396.P2919272531938008456

`A115873(A114395(n+1))`
-/

namespace A114396.P2919272531938008456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115873 (A114395 (n + 1)).toNat

end

end A114396.P2919272531938008456

/-! ## A114396.P11135686840179761345

`A115872(C(A114395(n+1)+1, 2))`
-/

namespace A114396.P11135686840179761345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115872 (Nat.choose (A114395 (n + 1) + 1).toNat 2)

end

end A114396.P11135686840179761345

/-! ## A114396.P11293350469153043324

`A292849(A114395(A114388(∑[n+1])))`
-/

namespace A114396.P11293350469153043324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292849 (A114395 (A114388 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A114396.P11293350469153043324

/-! ## A114396.P14367782638916292256

`A292849(A016116(n)*A114395(n+1))`
-/

namespace A114396.P14367782638916292256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292849 (A016116 n * A114395 (n + 1)).toNat

end

end A114396.P14367782638916292256

/-! ## A114396.P15303284531932706255

`A292849(lcm(A016116(n), A114395(n+1)))`
-/

namespace A114396.P15303284531932706255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292849 (Int.lcm (A016116 n) (A114395 (n + 1)))

end

end A114396.P15303284531932706255

/-!
# A114397: Sequence A114396 in binary.

The programs for A114397, there is no canonical definition to state claims against.
-/

/-! ## A114397.P5160901971672834479

`A007088(A114396(n+1))`
-/

namespace A114397.P5160901971672834479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A114396 (n + 1)).toNat

end

end A114397.P5160901971672834479

/-! ## A114397.P2107924823640726952

`A185544(2*A114396(n+1))`
-/

namespace A114397.P2107924823640726952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A114396 (n + 1)).toNat

end

end A114397.P2107924823640726952

/-! ## A114397.P11308303199684387386

`A185544(lcm(2, A114396(n+1)))`
-/

namespace A114397.P11308303199684387386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A114396 (n + 1)))

end

end A114397.P11308303199684387386

/-! ## A114397.P9289898193949887309

`A169965(A114396(n+1)+1)/2`
-/

namespace A114397.P9289898193949887309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169965 (A114396 (n + 1) + 1).toNat : ℚ) / 2

end

end A114397.P9289898193949887309

/-! ## A114397.P5528831565072039453

`A007088(A115873(A114395(n+1)))`
-/

namespace A114397.P5528831565072039453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115873 (A114395 (n + 1)).toNat).toNat

end

end A114397.P5528831565072039453

/-!
# A114398: Positions where A000695 is a square.

The programs for A114398, there is no canonical definition to state claims against.
-/

/-! ## A114398.P3338088333616380663

`A114401(n)+A114400(n)`
-/

namespace A114398.P3338088333616380663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114401 n + A114400 n

end

end A114398.P3338088333616380663

/-! ## A114398.P15830003393388989488

`A114401(n)+sqrt(A114399(n))`
-/

namespace A114398.P15830003393388989488
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A114401 n : ℝ) + Real.sqrt (A114399 n : ℝ)

end

end A114398.P15830003393388989488

/-! ## A114398.P4479422058818482330

`A114400(n)+2*A114402(n)`
-/

namespace A114398.P4479422058818482330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114400 n + 2 * A114402 n

end

end A114398.P4479422058818482330

/-! ## A114398.P17833042860769878070

`A114400(n)+A114402(abs(1-n)+1)/sqrt(1-3/4)`
-/

namespace A114398.P17833042860769878070
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A114400 n : ℝ) + (A114402 (|1 - (n : ℤ)| + 1).toNat : ℝ) / Real.sqrt (1 - (3 : ℚ) / 4 : ℝ)

end

end A114398.P17833042860769878070

/-! ## A114398.P7889161709637010765

`A114400(n)+A005843(A114402(n))`
-/

namespace A114398.P7889161709637010765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114400 n + A005843 (A114402 n).toNat

end

end A114398.P7889161709637010765

/-! ## A114398.P7278104614864445089

`A114400(n)+A005408(A114402(char[1]+n))-1`
-/

namespace A114398.P7278104614864445089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114400 n + (A005408 (A114402 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat - 1)

end

end A114398.P7278104614864445089

/-!
# A114399: Squares in A000695.

The programs for A114399, there is no canonical definition to state claims against.
-/

/-! ## A114399.P10443414673410039011

`A114400(n)²`
-/

namespace A114399.P10443414673410039011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114400 n ^ 2

end

end A114399.P10443414673410039011

/-! ## A114399.P13038546811273111699

`A114400(A028310(n))*A114400(n)`
-/

namespace A114399.P13038546811273111699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114400 (A028310 n).toNat * A114400 n

end

end A114399.P13038546811273111699

/-! ## A114399.P13812336241607920077

`A114400(n)^A000005(A007918(n))`
-/

namespace A114399.P13812336241607920077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114400 n : ℚ) ^ (A000005 (A007918 n).toNat : ℤ)

end

end A114399.P13812336241607920077

/-! ## A114399.P14929734322982264201

`A114400(n)^A000005(A106756(n+1))`
-/

namespace A114399.P14929734322982264201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114400 n : ℚ) ^ (A000005 (A106756 (n + 1)).toNat : ℤ)

end

end A114399.P14929734322982264201

/-! ## A114399.P10401365092297886147

`(A114398(n)-A114401(n))²`
-/

namespace A114399.P10401365092297886147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A114398 n - A114401 n) ^ 2

end

end A114399.P10401365092297886147

/-! ## A114399.P15750526605400408747

`(A114398(n)-A114401(n))*A114400(n)`
-/

namespace A114399.P15750526605400408747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A114398 n - A114401 n) * A114400 n

end

end A114399.P15750526605400408747

/-! ## A114399.P9262744728046770213

`A000290(A114398(n)-A114401(n))`
-/

namespace A114399.P9262744728046770213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A114398 n - A114401 n).toNat

end

end A114399.P9262744728046770213

/-! ## A114399.P17451108710855321270

`∩[n², A000695(n)]`
-/

namespace A114399.P17451108710855321270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114399.P17451108710855321270

/-! ## A114399.P1240256479807637263

`∩[n², A098871(n)-1]`
-/

namespace A114399.P1240256479807637263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114399.P1240256479807637263

