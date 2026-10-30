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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
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
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A300901: Number of closed meanders with 2n crossings and 5 digons.

The programs for A300901, there is no canonical definition to state claims against.
-/

/-! ## A300901.P2782322176072636727

`A046668(A002182(n+1))*A161424(n+1)`
-/

namespace A300901.P2782322176072636727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046668 (A002182 (n + 1)).toNat * A161424 (n + 1)

end

end A300901.P2782322176072636727

/-!
# A300902: a(n) = n! / Product_{p prime < n}.

The programs for A300902, there is no canonical definition to state claims against.
-/

/-! ## A300902.P3799348084191928852

`lcm(round(1/acot(n)), A049614(n))`
-/

namespace A300902.P3799348084191928852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))) (A049614 n)

end

end A300902.P3799348084191928852

/-! ## A300902.P2791572160905538618

`lcm(A028310(n), A049614(n))`
-/

namespace A300902.P2791572160905538618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A049614 n)

end

end A300902.P2791572160905538618

/-! ## A300902.P1183890023848703398

`gcd(n, A030664(n))*A049614(n)`
-/

namespace A300902.P1183890023848703398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A030664 n) : ℤ) * A049614 n

end

end A300902.P1183890023848703398

/-! ## A300902.P4306173982866981698

`n*a(A113638(A113638(n-1)))` with `a(0)=1`
-/

namespace A300902.P4306173982866981698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * a (A113638 (A113638 (n - 1)).toNat).toNat

end

end A300902.P4306173982866981698

/-! ## A300902.P8370768646839376426

`A014963(A030664(n))*A049614(n)`
-/

namespace A300902.P8370768646839376426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A030664 n).toNat * A049614 n

end

end A300902.P8370768646839376426

/-! ## A300902.P9754354485962795476

`A028310(n)*A049614(A028310(n)-1)`
-/

namespace A300902.P9754354485962795476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A049614 (A028310 n - 1).toNat

end

end A300902.P9754354485962795476

/-! ## A300902.P16786757974395142672

`A000142(n)/A300951(A004273(n))`
-/

namespace A300902.P16786757974395142672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A300951 (A004273 n).toNat : ℚ)

end

end A300902.P16786757974395142672

/-!
# A300904: Decimal expansion of the positive solution to Pi^x = Pi + x.

The programs for A300904, there is no canonical definition to state claims against.
-/

/-! ## A300904.P7865055234617939941

`or(A074650(n+1), A321791(A000792(n)))`
-/

namespace A300904.P7865055234617939941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074650 (n + 1)) (A321791 (A000792 n).toNat)

end

end A300904.P7865055234617939941

/-! ## A300904.P17907251134844621507

`or(A276550(n+1), A321791(A000792(n)))`
-/

namespace A300904.P17907251134844621507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A276550 (n + 1)) (A321791 (A000792 n).toNat)

end

end A300904.P17907251134844621507

/-! ## A300904.P18061366264917869091

`or(A284856(n+1), A321791(A000792(n)))`
-/

namespace A300904.P18061366264917869091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A284856 (n + 1)) (A321791 (A000792 n).toNat)

end

end A300904.P18061366264917869091

/-!
# A300905: a(n) = n^sigma(n) mod sigma(n)^n.

The programs for A300905, the canonical program `A300905.P9758388862821370311` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300905 has offset 1).

The definition of A300905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300905.P9758388862821370311

`A100879(n+1)%A217872(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A300905

/-- `A100879(n+1)%A217872(n+1)` -/
def P9758388862821370311.Spec : Prop :=
  ∀ n, P9758388862821370311.a n = A300905 (n + 1)

theorem P9758388862821370311.correct : P9758388862821370311.Spec := by
  intro n
  simp only [A300905, Nat.add_sub_cancel]

end A300905

/-! ## A300905.P6725969612229307112

`((n+1)^A000203(n+1))%(A000203(n+1)^(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300905.P6725969612229307112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A000203 (n + 1) : ℤ))) (A000203 (n + 1) ^ (n + 1))

end

end A300905.P6725969612229307112

namespace A300905

/-- `((n+1)^A000203(n+1))%(A000203(n+1)^(n+1))` -/
def P6725969612229307112.Spec : Prop :=
  ∀ n, P6725969612229307112.a n = A300905 (n + 1)

end A300905

/-! ## A300905.P8696740505152593123

`A100879(n+1)%(∑{d}[n+1, #]^(n+1))`
-/

namespace A300905.P8696740505152593123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100879 (n + 1)) (((∑ d ∈ Nat.divisors (f1 n), d) ^ (n + 1) : ℕ) : ℤ)

end

end A300905.P8696740505152593123

namespace A300905

/-- `A100879(n+1)%(∑{d}[n+1, #]^(n+1))` -/
def P8696740505152593123.Spec : Prop :=
  ∀ n, P8696740505152593123.a n = A300905 (n + 1)

theorem P8696740505152593123.correct : P8696740505152593123.Spec := by
  intro n
  simp only [A300905, Nat.add_sub_cancel, A300905.P8696740505152593123.f1, A300905.P8696740505152593123.a, A300905.P9758388862821370311.a, A100879, A100879.P18333379165810020226.a, A217872, A217872.P13109514654712081140.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A300905

/-!
# A300906: Numbers k such that sigma(k)^k divides k^sigma(k).

The programs for A300906, there is no canonical definition to state claims against.
-/

/-! ## A300906.P17842325461495216649

`record[C(A114925(n), A120007(n+1))]`
-/

namespace A300906.P17842325461495216649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A114925 n).toNat (A120007 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300906.P17842325461495216649

/-! ## A300906.P870616824602302187

`C(A323644(n+1), A277013(A002028(n)))`
-/

namespace A300906.P870616824602302187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A323644 (n + 1)).toNat (A277013 (A002028 n).toNat).toNat

end

end A300906.P870616824602302187

/-!
# A300909: Sum of 4th powers dividing n.

The programs for A300909, the canonical program `A300909.P640743007146312883` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300909 has offset 1).

The definition of A300909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300909.P640743007146312883

`∑{d}[n+1, #*A374016(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A300909

/-- `∑{d}[n+1, #*A374016(#)]` -/
def P640743007146312883.Spec : Prop :=
  ∀ n, P640743007146312883.a n = A300909 (n + 1)

theorem P640743007146312883.correct : P640743007146312883.Spec := by
  intro n
  simp only [A300909, Nat.add_sub_cancel]

end A300909

/-! ## A300909.P9053691179779219773

`A351307(A000188(n+1))`
-/

namespace A300909.P9053691179779219773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351307 (A000188 (n + 1)).toNat

end

end A300909.P9053691179779219773

namespace A300909

/-- `A351307(A000188(n+1))` -/
def P9053691179779219773.Spec : Prop :=
  ∀ n, P9053691179779219773.a n = A300909 (n + 1)

end A300909

/-! ## A300909.P8428696017515119412

`A351307(sqrt(A008833(n+1)))`
-/

namespace A300909.P8428696017515119412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351307 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

end

end A300909.P8428696017515119412

namespace A300909

/-- `A351307(sqrt(A008833(n+1)))` -/
def P8428696017515119412.Spec : Prop :=
  ∀ n, P8428696017515119412.a n = A300909 (n + 1)

end A300909

/-! ## A300909.P636449726950657495

`A351307(A057918(n+1)+1)`
-/

namespace A300909.P636449726950657495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351307 (A057918 (n + 1) + 1).toNat

end

end A300909.P636449726950657495

namespace A300909

/-- `A351307(A057918(n+1)+1)` -/
def P636449726950657495.Spec : Prop :=
  ∀ n, P636449726950657495.a n = A300909 (n + 1)

end A300909

/-! ## A300909.P12859628094307431592

`A351307(root(A008833(n+1), 2))`
-/

namespace A300909.P12859628094307431592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351307 (SequenceMachineLib.roundAway ((A008833 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A300909.P12859628094307431592

namespace A300909

/-- `A351307(root(A008833(n+1), 2))` -/
def P12859628094307431592.Spec : Prop :=
  ∀ n, P12859628094307431592.a n = A300909 (n + 1)

end A300909

/-! ## A300909.P14258601039960838770

`A365404(A008835(n+1)²)`
-/

namespace A300909.P14258601039960838770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365404 (A008835 (n + 1) ^ 2).toNat

end

end A300909.P14258601039960838770

namespace A300909

/-- `A365404(A008835(n+1)²)` -/
def P14258601039960838770.Spec : Prop :=
  ∀ n, P14258601039960838770.a n = A300909 (n + 1)

end A300909

/-! ## A300909.P2565435316781610509

`A286685(A008835(n+1)²)+A008835(n+1)`
-/

namespace A300909.P2565435316781610509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286685 (A008835 (n + 1) ^ 2).toNat + A008835 (n + 1)

end

end A300909.P2565435316781610509

namespace A300909

/-- `A286685(A008835(n+1)²)+A008835(n+1)` -/
def P2565435316781610509.Spec : Prop :=
  ∀ n, P2565435316781610509.a n = A300909 (n + 1)

end A300909

/-! ## A300909.P6581495160113447284

`A125999(A008835(n+1)+8)+A008835(n+1)`
-/

namespace A300909.P6581495160113447284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125999 (A008835 (n + 1) + 8).toNat + A008835 (n + 1)

end

end A300909.P6581495160113447284

namespace A300909

/-- `A125999(A008835(n+1)+8)+A008835(n+1)` -/
def P6581495160113447284.Spec : Prop :=
  ∀ n, P6581495160113447284.a n = A300909 (n + 1)

end A300909

/-! ## A300909.P774494392166147791

`A000005(A008835(n+1)^4)`
-/

namespace A300909.P774494392166147791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008835 (n + 1) ^ 4).toNat

end

end A300909.P774494392166147791

namespace A300909

/-- `A000005(A008835(n+1)^4)` -/
def P774494392166147791.Spec : Prop :=
  ∀ n, P774494392166147791.a n = A300909 (n + 1)

end A300909

/-! ## A300909.P11074761095454394679

`A000005(A008835(n+1)²²)`
-/

namespace A300909.P11074761095454394679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((A008835 (n + 1) ^ 2) ^ 2).toNat

end

end A300909.P11074761095454394679

namespace A300909

/-- `A000005(A008835(n+1)²²)` -/
def P11074761095454394679.Spec : Prop :=
  ∀ n, P11074761095454394679.a n = A300909 (n + 1)

end A300909

/-!
# A300910: Expansion of e.g.f. 1/(1 - x)^(x/(1 - x)^2).

The programs for A300910, there is no canonical definition to state claims against.
-/

/-! ## A300910.P1539437179037213739

`A355718(n)-A001221(A056982(n))`
-/

namespace A300910.P1539437179037213739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355718 n - A001221 (A056982 n).toNat

end

end A300910.P1539437179037213739

/-! ## A300910.P12763468417802047767

`A028310(A355718(n))-A057427(n)`
-/

namespace A300910.P12763468417802047767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A355718 n).toNat - A057427 n

end

end A300910.P12763468417802047767

/-!
# A300912: Numbers of the form prime(x)*prime(y) where x and y are relatively prime.

The programs for A300912, there is no canonical definition to state claims against.
-/

/-! ## A300912.P1176275501682556398

`record[A316437(A001358(n+1))]`
-/

namespace A300912.P1176275501682556398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A001358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300912.P1176275501682556398

/-! ## A300912.P8833884108919926774

`filter[A001358(n+1), A327532(#)]`
-/

namespace A300912.P8833884108919926774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327532 (f1 j).toNat = 1) n)

end

end A300912.P8833884108919926774

/-! ## A300912.P6103735275094223752

`record[A316437(A186621(n+1)+1)]`
-/

namespace A300912.P6103735275094223752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A186621 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300912.P6103735275094223752

/-! ## A300912.P6042602088749776660

`filter[A176540(n+1), A327532(#)]`
-/

namespace A300912.P6042602088749776660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327532 (f1 j).toNat = 1) n)

end

end A300912.P6042602088749776660

/-! ## A300912.P14987969561577958190

`filter[A037143(n+3), A327532(#)]`
-/

namespace A300912.P14987969561577958190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327532 (f1 j).toNat = 1) n)

end

end A300912.P14987969561577958190

/-! ## A300912.P9399122233376144427

`filter[A289509(n+1), A064911(#)]`
-/

namespace A300912.P9399122233376144427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A300912.P9399122233376144427

/-! ## A300912.P2388357953930661513

`filter[A289509(n+2), A101040(#)]`
-/

namespace A300912.P2388357953930661513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A300912.P2388357953930661513

/-! ## A300912.P12057848954436626658

`∩[A001358(n+1), A289509(n+1)]`
-/

namespace A300912.P12057848954436626658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300912.P12057848954436626658

/-! ## A300912.P16558092364588656973

`∩[A176540(n+1), A289509(n+1)]`
-/

namespace A300912.P16558092364588656973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300912.P16558092364588656973

/-! ## A300912.P11741315784667577282

`filter[A302696(n+1), A064911(#)]`
-/

namespace A300912.P11741315784667577282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A300912.P11741315784667577282

/-! ## A300912.P8954434777707221661

`filter[A302696(n+3), A101040(#)]`
-/

namespace A300912.P8954434777707221661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A300912.P8954434777707221661

/-! ## A300912.P17538623755222923297

`∩[A001358(n+1), A302696(n+1)]`
-/

namespace A300912.P17538623755222923297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300912.P17538623755222923297

/-! ## A300912.P13725951779331837936

`filter[A001358(n+1), A289508(#)]`
-/

namespace A300912.P13725951779331837936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289508 (f1 j).toNat = 1) n)

end

end A300912.P13725951779331837936

/-! ## A300912.P14872370508620108205

`record[A327512(sqrt(A074985(n+1)))]`
-/

namespace A300912.P14872370508620108205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300912.P14872370508620108205

/-! ## A300912.P13391506183870883361

`filter[A129767(n+2), A327532(#)]`
-/

namespace A300912.P13391506183870883361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327532 (f1 j).toNat = 1) n)

end

end A300912.P13391506183870883361

/-! ## A300912.P1338516372793379869

`record[A327512(A001358(A065033(n)))]`
-/

namespace A300912.P1338516372793379869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (A001358 (A065033 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300912.P1338516372793379869

/-! ## A300912.P14556186664266528518

`filter[A302569(n+1), A064911(#)]`
-/

namespace A300912.P14556186664266528518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A300912.P14556186664266528518

/-! ## A300912.P8195639241560430942

`∩[A001358(n+1), A302569(n+1)]`
-/

namespace A300912.P8195639241560430942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300912.P8195639241560430942

/-! ## A300912.P4364449717959765710

`∩[A176540(n+1), A302569(n+1)]`
-/

namespace A300912.P4364449717959765710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300912.P4364449717959765710

/-! ## A300912.P12093282382951526644

`filter[A302696(n+1), A028422(#)]`
-/

namespace A300912.P12093282382951526644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A028422 (f1 j).toNat = 1) n)

end

end A300912.P12093282382951526644

/-!
# A300913: Number of non-isomorphic connected set-systems of weight n.

The programs for A300913, there is no canonical definition to state claims against.
-/

/-! ## A300913.P3665712824518798339

`A283877(n)+A319792(n)-A319751(n)`
-/

namespace A300913.P3665712824518798339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283877 n + (A319792 n - A319751 n)

end

end A300913.P3665712824518798339

/-! ## A300913.P13856132101723387250

`A342339(A328597(n+2)-n)`
-/

namespace A300913.P13856132101723387250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342339 (A328597 (n + 2) - (n : ℤ)).toNat

end

end A300913.P13856132101723387250

/-! ## A300913.P3440761381843327041

`A081150(n)+A000035(A104448(n))`
-/

namespace A300913.P3440761381843327041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081150 n + A000035 (A104448 n).toNat

end

end A300913.P3440761381843327041

/-! ## A300913.P13227253566628541564

`A108549(A319755(n))-A004526(n)`
-/

namespace A300913.P13227253566628541564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108549 (A319755 n).toNat - A004526 n

end

end A300913.P13227253566628541564

/-! ## A300913.P3560123948694378411

`A225183(A284005(3*n+1))+A081150(n)`
-/

namespace A300913.P3560123948694378411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225183 (A284005 (3 * n + 1)).toNat + A081150 n

end

end A300913.P3560123948694378411

/-!
# A300914: Records in A045763.

The programs for A300914, the canonical program `A300914.P11875812938548948969` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300914 has offset 1).

The definition of A300914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300914.P3560859057423077856

`record[2-(A000010(n+1)+A000005(n+1))+n]`
-/

namespace A300914.P3560859057423077856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000010 (n + 1) + A000005 (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300914.P3560859057423077856

namespace A300914

/-- `record[2-(A000010(n+1)+A000005(n+1))+n]` -/
def P3560859057423077856.Spec : Prop :=
  ∀ n, P3560859057423077856.a n = A300914 (n + 1)

end A300914

/-! ## A300914.P11875812938548948969

`record[A046640(n+1)-1]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A300914

/-- `record[A046640(n+1)-1]` -/
def P11875812938548948969.Spec : Prop :=
  ∀ n, P11875812938548948969.a n = A300914 (n + 1)

theorem P11875812938548948969.correct : P11875812938548948969.Spec := by
  intro n
  simp only [A300914, Nat.add_sub_cancel]

end A300914

/-! ## A300914.P15678644257190083343

`A046640(A300859(n+1))-1`
-/

namespace A300914.P15678644257190083343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046640 (A300859 (n + 1)).toNat - 1

end

end A300914.P15678644257190083343

namespace A300914

/-- `A046640(A300859(n+1))-1` -/
def P15678644257190083343.Spec : Prop :=
  ∀ n, P15678644257190083343.a n = A300914 (n + 1)

end A300914

/-! ## A300914.P16194499306115521295

`A264441(A300859(n+1))%A100449(n)`
-/

namespace A300914.P16194499306115521295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264441 (A300859 (n + 1)).toNat) (A100449 n)

end

end A300914.P16194499306115521295

namespace A300914

/-- `A264441(A300859(n+1))%A100449(n)` -/
def P16194499306115521295.Spec : Prop :=
  ∀ n, P16194499306115521295.a n = A300914 (n + 1)

end A300914

/-! ## A300914.P9279312682789170926

`A062157(A118534(3*(n+1))+1)+A046640(A300859(n+1))`
-/

namespace A300914.P9279312682789170926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A118534 (3 * (n + 1)) + 1).toNat + A046640 (A300859 (n + 1)).toNat

end

end A300914.P9279312682789170926

namespace A300914

/-- `A062157(A118534(3*(n+1))+1)+A046640(A300859(n+1))` -/
def P9279312682789170926.Spec : Prop :=
  ∀ n, P9279312682789170926.a n = A300914 (n + 1)

end A300914

/-! ## A300914.P4473890495154971218

`record[A045763(n+1)]`
-/

namespace A300914.P4473890495154971218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300914.P4473890495154971218

namespace A300914

/-- `record[A045763(n+1)]` -/
def P4473890495154971218.Spec : Prop :=
  ∀ n, P4473890495154971218.a n = A300914 (n + 1)

end A300914

/-! ## A300914.P11067356295947623719

`record[1-A073757(n+1)+n]`
-/

namespace A300914.P11067356295947623719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A073757 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300914.P11067356295947623719

namespace A300914

/-- `record[1-A073757(n+1)+n]` -/
def P11067356295947623719.Spec : Prop :=
  ∀ n, P11067356295947623719.a n = A300914 (n + 1)

end A300914

/-! ## A300914.P10585496138709579010

`A045763(A300859(n+1))`
-/

namespace A300914.P10585496138709579010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (A300859 (n + 1)).toNat

end

end A300914.P10585496138709579010

namespace A300914

/-- `A045763(A300859(n+1))` -/
def P10585496138709579010.Spec : Prop :=
  ∀ n, P10585496138709579010.a n = A300914 (n + 1)

end A300914

/-! ## A300914.P5005437849546025931

`record[A243823(n+1)+A243822(n+1)]`
-/

namespace A300914.P5005437849546025931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1) + A243822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300914.P5005437849546025931

namespace A300914

/-- `record[A243823(n+1)+A243822(n+1)]` -/
def P5005437849546025931.Spec : Prop :=
  ∀ n, P5005437849546025931.a n = A300914 (n + 1)

end A300914

/-! ## A300914.P680081805312017732

`record[A049820(n+1)-A109606(n+1)]`
-/

namespace A300914.P680081805312017732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A109606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300914.P680081805312017732

namespace A300914

/-- `record[A049820(n+1)-A109606(n+1)]` -/
def P680081805312017732.Spec : Prop :=
  ∀ n, P680081805312017732.a n = A300914 (n + 1)

end A300914

/-! ## A300914.P7003854256775441000

`record[A300858(n+1)+2*A243822(n+1)]`
-/

namespace A300914.P7003854256775441000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300858 (n + 1) + 2 * A243822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300914.P7003854256775441000

namespace A300914

/-- `record[A300858(n+1)+2*A243822(n+1)]` -/
def P7003854256775441000.Spec : Prop :=
  ∀ n, P7003854256775441000.a n = A300914 (n + 1)

end A300914

/-! ## A300914.P9729849597509497775

`record[n+1-A000005(n+1)-A109606(n+1)]`
-/

namespace A300914.P9729849597509497775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000005 (n + 1) - A109606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300914.P9729849597509497775

namespace A300914

/-- `record[n+1-A000005(n+1)-A109606(n+1)]` -/
def P9729849597509497775.Spec : Prop :=
  ∀ n, P9729849597509497775.a n = A300914 (n + 1)

end A300914

/-!
# A300915: Order of the group PSL(2,Z_n).

The programs for A300915, the canonical program `A300915.P2814181824402378078` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300915 has offset 1).

The definition of A300915 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A300915.P2814181824402378078

`A000056(n+1)/A060594(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A300915

/-- `A000056(n+1)/A060594(n+1)` -/
def P2814181824402378078.Spec : Prop :=
  ∀ n, P2814181824402378078.a n = (A300915 (n + 1) : ℚ)

end A300915

/-! ## A300915.P939440530125786853

`A000082(n+1)*A046073(n+1)`
-/

namespace A300915.P939440530125786853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000082 (n + 1) * A046073 (n + 1)

end

end A300915.P939440530125786853

namespace A300915

/-- `A000082(n+1)*A046073(n+1)` -/
def P939440530125786853.Spec : Prop :=
  ∀ n, P939440530125786853.a n = A300915 (n + 1)

end A300915

/-! ## A300915.P12921640625513830095

`(n+1)*Δ[A321879(n)]/A060594(n+1)`
-/

namespace A300915.P12921640625513830095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321879 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / (A060594 (n + 1) : ℚ)

end

end A300915.P12921640625513830095

namespace A300915

/-- `(n+1)*Δ[A321879(n)]/A060594(n+1)` -/
def P12921640625513830095.Spec : Prop :=
  ∀ n, P12921640625513830095.a n = (A300915 (n + 1) : ℚ)

end A300915

/-! ## A300915.P7164033874799842616

`(n+1)*A007434(n+1)/A060594(n+1)`
-/

namespace A300915.P7164033874799842616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A007434 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ)

end

end A300915.P7164033874799842616

namespace A300915

/-- `(n+1)*A007434(n+1)/A060594(n+1)` -/
def P7164033874799842616.Spec : Prop :=
  ∀ n, P7164033874799842616.a n = (A300915 (n + 1) : ℚ)

end A300915

/-! ## A300915.P16906060051267261526

`(n+1)*((n+1)²-A064279(n+1))/A060594(n+1)`
-/

namespace A300915.P16906060051267261526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (((n + 1) ^ 2 : ℤ) - A064279 (n + 1)) : ℚ) / (A060594 (n + 1) : ℚ)

end

end A300915.P16906060051267261526

namespace A300915

/-- `(n+1)*((n+1)²-A064279(n+1))/A060594(n+1)` -/
def P16906060051267261526.Spec : Prop :=
  ∀ n, P16906060051267261526.a n = (A300915 (n + 1) : ℚ)

end A300915

/-! ## A300915.P8088620253682961148

`A001766(n+1)/A000010(A060594(n+1))`
-/

namespace A300915.P8088620253682961148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001766 (n + 1) : ℚ) / (A000010 (A060594 (n + 1)).toNat : ℚ)

end

end A300915.P8088620253682961148

namespace A300915

/-- `A001766(n+1)/A000010(A060594(n+1))` -/
def P8088620253682961148.Spec : Prop :=
  ∀ n, P8088620253682961148.a n = (A300915 (n + 1) : ℚ)

end A300915

/-! ## A300915.P9801975632590163134

`A000010(n+1)*A000082(n+1)/A060594(n+1)`
-/

namespace A300915.P9801975632590163134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A000082 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ)

end

end A300915.P9801975632590163134

namespace A300915

/-- `A000010(n+1)*A000082(n+1)/A060594(n+1)` -/
def P9801975632590163134.Spec : Prop :=
  ∀ n, P9801975632590163134.a n = (A300915 (n + 1) : ℚ)

end A300915

/-! ## A300915.P9021480909952941322

`A000252(n+1)/(A000010(n+1)*A060594(n+1))`
-/

namespace A300915.P9021480909952941322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A000010 (n + 1) * A060594 (n + 1) : ℚ)

end

end A300915.P9021480909952941322

namespace A300915

/-- `A000252(n+1)/(A000010(n+1)*A060594(n+1))` -/
def P9021480909952941322.Spec : Prop :=
  ∀ n, P9021480909952941322.a n = (A300915 (n + 1) : ℚ)

end A300915

/-! ## A300915.P3459995575437319905

`A001615(n+1)*A002618(n+1)/A060594(n+1)`
-/

namespace A300915.P3459995575437319905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) * A002618 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ)

end

end A300915.P3459995575437319905

namespace A300915

/-- `A001615(n+1)*A002618(n+1)/A060594(n+1)` -/
def P3459995575437319905.Spec : Prop :=
  ∀ n, P3459995575437319905.a n = (A300915 (n + 1) : ℚ)

end A300915

/-! ## A300915.P8370697505674664575

`A062570(n+1)/A060594(n+1)*A070732(n+1)`
-/

namespace A300915.P8370697505674664575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062570 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ) * (A070732 (n + 1) : ℚ)

end

end A300915.P8370697505674664575

namespace A300915

/-- `A062570(n+1)/A060594(n+1)*A070732(n+1)` -/
def P8370697505674664575.Spec : Prop :=
  ∀ n, P8370697505674664575.a n = (A300915 (n + 1) : ℚ)

end A300915

/-! ## A300915.P9954382889405504921

`A000010(2*(n+1))*A070732(n+1)/A060594(n+1)`
-/

namespace A300915.P9954382889405504921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * (n + 1)) * A070732 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ)

end

end A300915.P9954382889405504921

namespace A300915

/-- `A000010(2*(n+1))*A070732(n+1)/A060594(n+1)` -/
def P9954382889405504921.Spec : Prop :=
  ∀ n, P9954382889405504921.a n = (A300915 (n + 1) : ℚ)

end A300915

/-! ## A300915.P7054825157290856174

`(n+1)*A000010(n+1)*A001615(n+1)/A060594(n+1)`
-/

namespace A300915.P7054825157290856174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000010 (n + 1) * A001615 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ)

end

end A300915.P7054825157290856174

namespace A300915

/-- `(n+1)*A000010(n+1)*A001615(n+1)/A060594(n+1)` -/
def P7054825157290856174.Spec : Prop :=
  ∀ n, P7054825157290856174.a n = (A300915 (n + 1) : ℚ)

end A300915

/-! ## A300915.P14480098140090847906

`(n+1)*(A039649(n+1)-1)*A001615(n+1)/A060594(n+1)`
-/

namespace A300915.P14480098140090847906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (A039649 (n + 1) - 1) * A001615 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ)

end

end A300915.P14480098140090847906

namespace A300915

/-- `(n+1)*(A039649(n+1)-1)*A001615(n+1)/A060594(n+1)` -/
def P14480098140090847906.Spec : Prop :=
  ∀ n, P14480098140090847906.a n = (A300915 (n + 1) : ℚ)

end A300915

/-! ## A300915.P18031282591009267274

`A000010((n+1)²)*A001615(n+1)/A060594(n+1)`
-/

namespace A300915.P18031282591009267274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((n + 1) ^ 2) * A001615 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ)

end

end A300915.P18031282591009267274

namespace A300915

/-- `A000010((n+1)²)*A001615(n+1)/A060594(n+1)` -/
def P18031282591009267274.Spec : Prop :=
  ∀ n, P18031282591009267274.a n = (A300915 (n + 1) : ℚ)

end A300915

/-!
# A300917: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300917, there is no canonical definition to state claims against.
-/

/-! ## A300917.P1960937843382317903

`A300923(∑[4*n]+1)`
-/

namespace A300917.P1960937843382317903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300917.P1960937843382317903

/-! ## A300917.P10467457513105328881

`record[gcd(A214292(n), A300923(n+1))]`
-/

namespace A300917.P10467457513105328881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214292 n) (A300923 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300917.P10467457513105328881

/-! ## A300917.P1879385532178553518

`record[A077606(n+1)*A300923(n+1)]`
-/

namespace A300917.P1879385532178553518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A300923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300917.P1879385532178553518

/-! ## A300917.P13236985777597674908

`A300923(A001844(n))+A243833(n)`
-/

namespace A300917.P13236985777597674908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (A001844 n).toNat + A243833 n

end

end A300917.P13236985777597674908

/-! ## A300917.P4322578067920537704

`A300923(A001844(n))+A299905(n)`
-/

namespace A300917.P4322578067920537704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (A001844 n).toNat + A299905 n

end

end A300917.P4322578067920537704

/-!
# A300918: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300918, there is no canonical definition to state claims against.
-/

/-! ## A300918.P10085032167478142840

`A300923(∑[n+2]+4)`
-/

namespace A300918.P10085032167478142840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300918.P10085032167478142840

/-! ## A300918.P13224080814317219208

`A300923(A167614(n+1))^(n-abs(1-n))`
-/

namespace A300918.P13224080814317219208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300923 (A167614 (n + 1)).toNat : ℚ) ^ ((n : ℤ) - |1 - (n : ℤ)| : ℤ)

end

end A300918.P13224080814317219208

/-! ## A300918.P2238257859204865546

`record[A300923(A167614(∏{p}[n+1, #^val(n+1, #²)]))]`
-/

namespace A300918.P2238257859204865546
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (A167614 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300918.P2238257859204865546

/-! ## A300918.P10665565437112389129

`or(A300923(A167614(n+1)), A316869(n))`
-/

namespace A300918.P10665565437112389129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A300923 (A167614 (n + 1)).toNat) (A316869 n)

end

end A300918.P10665565437112389129

/-! ## A300918.P13559593822782782157

`A300923(A167614(n+1))%A300926(n+1)`
-/

namespace A300918.P13559593822782782157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300923 (A167614 (n + 1)).toNat) (A300926 (n + 1))

end

end A300918.P13559593822782782157

/-!
# A300919: Number of n X 4 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300919, there is no canonical definition to state claims against.
-/

/-! ## A300919.P8796858726280605703

`A300923(A141214(n)+7)`
-/

namespace A300919.P8796858726280605703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (A141214 n + 7).toNat

end

end A300919.P8796858726280605703

/-! ## A300919.P12221291032802906722

`A300923(A055999(n)+10)`
-/

namespace A300919.P12221291032802906722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (A055999 n + 10).toNat

end

end A300919.P12221291032802906722

/-! ## A300919.P14281326361354562178

`A300923(A167614(n+2)+1)`
-/

namespace A300919.P14281326361354562178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (A167614 (n + 2) + 1).toNat

end

end A300919.P14281326361354562178

/-! ## A300919.P11892852668160915419

`A300923(eq[5, A131818(n+1)])`
-/

namespace A300919.P11892852668160915419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300919.P11892852668160915419

/-! ## A300919.P3060805917661325176

`A300923(Δ[A023545(n+1)-n²])`
-/

namespace A300919.P3060805917661325176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (f1 (n + 1) - f1 n).toNat

end

end A300919.P3060805917661325176

/-!
# A300920: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300920, there is no canonical definition to state claims against.
-/

/-! ## A300920.P870779292160513621

`A300923(A167499(n+3))`
-/

namespace A300920.P870779292160513621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (A167499 (n + 3)).toNat

end

end A300920.P870779292160513621

/-! ## A300920.P13315152687199533392

`A300923(A056000(n)+15)`
-/

namespace A300920.P13315152687199533392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (A056000 n + 15).toNat

end

end A300920.P13315152687199533392

/-! ## A300920.P9747417019471249423

`A300923(A374005(n+1))`
-/

namespace A300920.P9747417019471249423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (A374005 (n + 1)).toNat

end

end A300920.P9747417019471249423

/-! ## A300920.P12353769421132233296

`A300923(A046691(n+3))`
-/

namespace A300920.P12353769421132233296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (A046691 (n + 3)).toNat

end

end A300920.P12353769421132233296

/-! ## A300920.P12280672449790734874

`A300923(eq[4, A193592(n)])`
-/

namespace A300920.P12280672449790734874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300920.P12280672449790734874

/-!
# A300921: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300921, there is no canonical definition to state claims against.
-/

/-! ## A300921.P16094006448078468816

`A300923(eq[7, A131818(n+1)])`
-/

namespace A300921.P16094006448078468816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300921.P16094006448078468816

/-! ## A300921.P15128962142352597935

`A300923(Δ[A023545(n+1)]+10)`
-/

namespace A300921.P15128962142352597935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (f1 (n + 1) - f1 n + 10).toNat

end

end A300921.P15128962142352597935

/-! ## A300921.P15417595018515611550

`A300923(A374007(n+1))`
-/

namespace A300921.P15417595018515611550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (A374007 (n + 1)).toNat

end

end A300921.P15417595018515611550

/-! ## A300921.P6510014427926470578

`A300923(A052905(n+3))`
-/

namespace A300921.P6510014427926470578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (A052905 (n + 3)).toNat

end

end A300921.P6510014427926470578

/-! ## A300921.P12988220277859543151

`A300923(A056119(n)+16)`
-/

namespace A300921.P12988220277859543151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (A056119 n + 16).toNat

end

end A300921.P12988220277859543151

/-!
# A300922: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300922, there is no canonical definition to state claims against.
-/

/-! ## A300922.P663843219434430055

`A300923(eq[8, A131818(n+1)])`
-/

namespace A300922.P663843219434430055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300922.P663843219434430055

/-! ## A300922.P14388357686940348790

`A300923(A374008(n+1))`
-/

namespace A300922.P14388357686940348790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (A374008 (n + 1)).toNat

end

end A300922.P14388357686940348790

/-! ## A300922.P4365009377082911441

`A300923(A055999(n+4))`
-/

namespace A300922.P4365009377082911441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (A055999 (n + 4)).toNat

end

end A300922.P4365009377082911441

/-! ## A300922.P13303817204912470185

`A300923(eq[4, A219347(n)])`
-/

namespace A300922.P13303817204912470185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300922.P13303817204912470185

/-! ## A300922.P2772015760685250494

`A300923(eq[6, A193592(n)])`
-/

namespace A300922.P2772015760685250494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300922.P2772015760685250494

/-!
# A300923: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300923, there is no canonical definition to state claims against.
-/

/-! ## A300923.P14605930443469381818

`A301531(n+1)+A111829(A299905(n))`
-/

namespace A300923.P14605930443469381818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (n + 1) + A111829 (A299905 n).toNat

end

end A300923.P14605930443469381818

/-! ## A300923.P12976754265577377831

`A300966(n+1)-A111829(A299905(n))`
-/

namespace A300923.P12976754265577377831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (n + 1) - A111829 (A299905 n).toNat

end

end A300923.P12976754265577377831

/-! ## A300923.P7360807044357435470

`A300539(A273712(n)!+n)+A299905(n)²`
-/

namespace A300923.P7360807044357435470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (Nat.factorial (A273712 n).toNat + n) + A299905 n ^ 2

end

end A300923.P7360807044357435470

/-! ## A300923.P11613405091057742973

`A299905(n)²+A300539(n+1)-A111829(A299905(n))`
-/

namespace A300923.P11613405091057742973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 n ^ 2 + (A300539 (n + 1) - A111829 (A299905 n).toNat)

end

end A300923.P11613405091057742973

/-!
# A300924: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300924, there is no canonical definition to state claims against.
-/

/-! ## A300924.P13150743935999678448

`A300930(∑[4*n]+1)`
-/

namespace A300924.P13150743935999678448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300924.P13150743935999678448

/-! ## A300924.P12802217986677924

`record[A003982(n)*A300930(n+1)]`
-/

namespace A300924.P12802217986677924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300924.P12802217986677924

/-! ## A300924.P13211880190633901976

`A300930(A001844(n))+A025438(n)`
-/

namespace A300924.P13211880190633901976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (A001844 n).toNat + A025438 n

end

end A300924.P13211880190633901976

/-! ## A300924.P587661325473232737

`A300930(A001844(n))+A054908(n)`
-/

namespace A300924.P587661325473232737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (A001844 n).toNat + A054908 n

end

end A300924.P587661325473232737

/-! ## A300924.P4629745100110648552

`A300930(A001844(n))+A185284(n)`
-/

namespace A300924.P4629745100110648552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (A001844 n).toNat + A185284 n

end

end A300924.P4629745100110648552

/-!
# A300925: Number of nX3 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300925, there is no canonical definition to state claims against.
-/

/-! ## A300925.P213609197737987504

`A300930(∑[n+2]+4)`
-/

namespace A300925.P213609197737987504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300925.P213609197737987504

/-! ## A300925.P12977779696748414126

`record[A300930(A167614(∏{p}[n+1, #^val(n+1, #²)]))]`
-/

namespace A300925.P12977779696748414126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (A167614 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300925.P12977779696748414126

/-! ## A300925.P9045053174003170248

`gcd(A000038(n), A300930(A167614(n+1)))`
-/

namespace A300925.P9045053174003170248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A300930 (A167614 (n + 1)).toNat)

end

end A300925.P9045053174003170248

/-! ## A300925.P6885887644724400525

`lcm(A033999(n), A300930(A167614(n+1)))`
-/

namespace A300925.P6885887644724400525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A300930 (A167614 (n + 1)).toNat)

end

end A300925.P6885887644724400525

/-! ## A300925.P9608905991585583878

`or(A000007(n), A300930(A167614(n+1)))`
-/

namespace A300925.P9608905991585583878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A300930 (A167614 (n + 1)).toNat)

end

end A300925.P9608905991585583878

/-!
# A300926: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300926, there is no canonical definition to state claims against.
-/

/-! ## A300926.P3073899775779255875

`A300930(A374004(n+1))`
-/

namespace A300926.P3073899775779255875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (A374004 (n + 1)).toNat

end

end A300926.P3073899775779255875

/-! ## A300926.P14333985556106039037

`A300930(A141214(n)+7)`
-/

namespace A300926.P14333985556106039037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (A141214 n + 7).toNat

end

end A300926.P14333985556106039037

/-! ## A300926.P5628754160818686594

`A300930(A167614(n+2)+1)`
-/

namespace A300926.P5628754160818686594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (A167614 (n + 2) + 1).toNat

end

end A300926.P5628754160818686594

/-! ## A300926.P15875771677293608487

`A300930(Δ[A023545(n+1)-n²])`
-/

namespace A300926.P15875771677293608487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (f1 (n + 1) - f1 n).toNat

end

end A300926.P15875771677293608487

/-! ## A300926.P12160787293679541450

`A300930(A141214(n+1))`
-/

namespace A300926.P12160787293679541450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (A141214 (n + 1)).toNat

end

end A300926.P12160787293679541450

/-!
# A300927: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300927, there is no canonical definition to state claims against.
-/

/-! ## A300927.P6000994857086860763

`A300930(A374005(n+1))`
-/

namespace A300927.P6000994857086860763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (A374005 (n + 1)).toNat

end

end A300927.P6000994857086860763

/-! ## A300927.P1890704361934028260

`A300930(A167499(n+3))`
-/

namespace A300927.P1890704361934028260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (A167499 (n + 3)).toNat

end

end A300927.P1890704361934028260

/-! ## A300927.P718169350334782377

`A300930(eq[7, A066657(n)])`
-/

namespace A300927.P718169350334782377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300927.P718169350334782377

/-! ## A300927.P15041848288552520803

`A300930(A000124(n+5)-(n+1))`
-/

namespace A300927.P15041848288552520803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A300927.P15041848288552520803

/-! ## A300927.P10957862081814349139

`A300930(A046691(n+3))`
-/

namespace A300927.P10957862081814349139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (A046691 (n + 3)).toNat

end

end A300927.P10957862081814349139

/-!
# A300928: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300928, there is no canonical definition to state claims against.
-/

/-! ## A300928.P2035802603121919884

`A300930(A374007(n+1))`
-/

namespace A300928.P2035802603121919884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (A374007 (n + 1)).toNat

end

end A300928.P2035802603121919884

/-! ## A300928.P5625590757086721496

`A300930(A000124(n+5)+5)`
-/

namespace A300928.P5625590757086721496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (A000124 (n + 5) + 5).toNat

end

end A300928.P5625590757086721496

/-! ## A300928.P17110024836316533959

`A300930(eq[7, A131818(n+1)])`
-/

namespace A300928.P17110024836316533959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300928.P17110024836316533959

/-! ## A300928.P11295080690443673181

`A300930(Δ[A023545(n+1)]+10)`
-/

namespace A300928.P11295080690443673181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (f1 (n + 1) - f1 n + 10).toNat

end

end A300928.P11295080690443673181

/-! ## A300928.P1857912386345475440

`A300930(A052905(n+3))`
-/

namespace A300928.P1857912386345475440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (A052905 (n + 3)).toNat

end

end A300928.P1857912386345475440

/-!
# A300929: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300929, there is no canonical definition to state claims against.
-/

/-! ## A300929.P10999108858447907664

`A300930(A374008(n+1))`
-/

namespace A300929.P10999108858447907664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (A374008 (n + 1)).toNat

end

end A300929.P10999108858447907664

/-! ## A300929.P7260219660059591736

`A300930(A056119(n)+28)`
-/

namespace A300929.P7260219660059591736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (A056119 n + 28).toNat

end

end A300929.P7260219660059591736

/-! ## A300929.P15481153789128403937

`A300930(eq[8, A131818(n+1)])`
-/

namespace A300929.P15481153789128403937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300929.P15481153789128403937

/-! ## A300929.P6558354197028690114

`A300930(A055999(n+4))`
-/

namespace A300929.P6558354197028690114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (A055999 (n + 4)).toNat

end

end A300929.P6558354197028690114

/-! ## A300929.P1557406165407675373

`A300930(eq[4, A219347(n)])`
-/

namespace A300929.P1557406165407675373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300929.P1557406165407675373

/-!
# A300930: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300930, there is no canonical definition to state claims against.
-/

/-! ## A300930.P440123846980110303

`A300546(n+1)+A174875(A157177(n))²`
-/

namespace A300930.P440123846980110303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (n + 1) + A174875 (A157177 n).toNat ^ 2

end

end A300930.P440123846980110303

/-! ## A300930.P17793120735046538198

`A300973(n+1)+A007814(A157156(n)+2)`
-/

namespace A300930.P17793120735046538198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (n + 1) + A007814 (A157156 n + 2).toNat

end

end A300930.P17793120735046538198

/-! ## A300930.P3679470069065232182

`or(A073780(A211709(n+1)), A300973(n+1))`
-/

namespace A300930.P3679470069065232182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073780 (A211709 (n + 1)).toNat) (A300973 (n + 1))

end

end A300930.P3679470069065232182

/-! ## A300930.P5095172608165425274

`xor(A249422(A008292(n+1)), A300546(n+1))`
-/

namespace A300930.P5095172608165425274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A249422 (A008292 (n + 1)).toNat) (A300546 (n + 1))

end

end A300930.P5095172608165425274

/-! ## A300930.P16266101344808758781

`A072088(A300546(n+1))`
-/

namespace A300930.P16266101344808758781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A300546 (n + 1)).toNat

end

end A300930.P16266101344808758781

/-!
# A300931: a(n) is the number of Klein four orbits of permutations generated by the operations of inverse permutation and conjugation by w_0 = [n, n-1, ..., 1].

The programs for A300931, there is no canonical definition to state claims against.
-/

/-! ## A300931.P13224539636310178712

`(A113247(n)+A000085(n))/2`
-/

namespace A300931.P13224539636310178712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113247 n + A000085 n : ℚ) / 2

end

end A300931.P13224539636310178712

/-! ## A300931.P9447352482887813732

`A262480(n)+A142150(A000085(n))`
-/

namespace A300931.P9447352482887813732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262480 n + A142150 (A000085 n).toNat

end

end A300931.P9447352482887813732

/-! ## A300931.P4861638065408617529

`A065033(A113247(n)+A000085(n))`
-/

namespace A300931.P4861638065408617529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A113247 n + A000085 n).toNat

end

end A300931.P4861638065408617529

/-!
# A300932: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300932, there is no canonical definition to state claims against.
-/

/-! ## A300932.P12151123487963756852

`A300937(∑[4*n]+1)`
-/

namespace A300932.P12151123487963756852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300932.P12151123487963756852

/-! ## A300932.P9544760002915210635

`record[A300937(Δ[A235355(n)])]`
-/

namespace A300932.P9544760002915210635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300932.P9544760002915210635

/-! ## A300932.P1467430048391234670

`A300937(A001844(n))+char[10]`
-/

namespace A300932.P1467430048391234670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300932.P1467430048391234670

/-! ## A300932.P8596668661196413081

`record[A003982(n)*A300937(n+1)]`
-/

namespace A300932.P8596668661196413081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300932.P8596668661196413081

/-! ## A300932.P4623721233188282108

`record[gcd(A008482(n), A300937(n+1))]`
-/

namespace A300932.P4623721233188282108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A300937 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300932.P4623721233188282108

/-!
# A300933: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300933, there is no canonical definition to state claims against.
-/

/-! ## A300933.P13330577927298878677

`A300937(∑[n+3]+7)`
-/

namespace A300933.P13330577927298878677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A300933.P13330577927298878677

/-! ## A300933.P2510187160082139713

`or(char[2], A300937(A167614(n+2)+1))`
-/

namespace A300933.P2510187160082139713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A300937 (A167614 (n + 2) + 1).toNat)

end

end A300933.P2510187160082139713

/-! ## A300933.P1067189962597778655

`A007318(C(2, n))*A300937(A167614(n+2)+1)`
-/

namespace A300933.P1067189962597778655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A300937 (A167614 (n + 2) + 1).toNat

end

end A300933.P1067189962597778655

/-! ## A300933.P2500340834670368096

`A000041(C(2, n+2))*A300937(A167614(n+2)+1)`
-/

namespace A300933.P2500340834670368096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A300937 (A167614 (n + 2) + 1).toNat

end

end A300933.P2500340834670368096

/-! ## A300933.P2546874599251571226

`A000041(val(n+1, 7))*A300937(A167614(n+2)+1)`
-/

namespace A300933.P2546874599251571226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (n + 1) 7) * A300937 (A167614 (n + 2) + 1).toNat

end

end A300933.P2546874599251571226

/-!
# A300934: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300934, there is no canonical definition to state claims against.
-/

/-! ## A300934.P2948284991120610118

`A300937(A374005(n+1))`
-/

namespace A300934.P2948284991120610118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (A374005 (n + 1)).toNat

end

end A300934.P2948284991120610118

/-! ## A300934.P2897519827882092672

`A300937(A167499(n+3))`
-/

namespace A300934.P2897519827882092672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (A167499 (n + 3)).toNat

end

end A300934.P2897519827882092672

/-! ## A300934.P15291550689369170911

`A300937(A155212(n)+13)`
-/

namespace A300934.P15291550689369170911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (A155212 n + 13).toNat

end

end A300934.P15291550689369170911

/-! ## A300934.P10264363123692888468

`A300937(A056000(n)+15)`
-/

namespace A300934.P10264363123692888468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (A056000 n + 15).toNat

end

end A300934.P10264363123692888468

/-! ## A300934.P13801500815035049813

`A300937(eq[7, A066657(n)])`
-/

namespace A300934.P13801500815035049813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300934.P13801500815035049813

/-!
# A300935: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300935, there is no canonical definition to state claims against.
-/

/-! ## A300935.P7649796345262634358

`A300937(∑[n+5]+16)`
-/

namespace A300935.P7649796345262634358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A300935.P7649796345262634358

/-! ## A300935.P11568053300839335577

`A300937(A046691(n+3)+10)+char[16]`
-/

namespace A300935.P11568053300839335577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (A046691 (n + 3) + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300935.P11568053300839335577

/-! ## A300935.P2394406083273479931

`lcm((-1)^n, A300937(A161680(n+6)+6))`
-/

namespace A300935.P2394406083273479931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A300937 (A161680 (n + 6) + 6).toNat)

end

end A300935.P2394406083273479931

/-! ## A300935.P8247869313030699321

`((-1)^∑{e}[n+1, #])²*A300937(A166136(n+4))`
-/

namespace A300935.P8247869313030699321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) ^ 2 * A300937 (A166136 (n + 4)).toNat

end

end A300935.P8247869313030699321

/-! ## A300935.P10064572364955621421

`A300937(eq[5, A002262(n)]+1)-A326680(n)`
-/

namespace A300935.P10064572364955621421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - A326680 n

end

end A300935.P10064572364955621421

/-!
# A300936: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300936, there is no canonical definition to state claims against.
-/

/-! ## A300936.P15563947471408429223

`A300937(A374008(n+1))`
-/

namespace A300936.P15563947471408429223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (A374008 (n + 1)).toNat

end

end A300936.P15563947471408429223

/-! ## A300936.P369316802950962281

`A300937(A056119(n)+28)`
-/

namespace A300936.P369316802950962281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (A056119 n + 28).toNat

end

end A300936.P369316802950962281

/-! ## A300936.P990289451569133583

`A300937(eq[11, A066657(n)])`
-/

namespace A300936.P990289451569133583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300936.P990289451569133583

/-! ## A300936.P16990681872032884087

`A300937(A000124(n+6)+6)`
-/

namespace A300936.P16990681872032884087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (A000124 (n + 6) + 6).toNat

end

end A300936.P16990681872032884087

/-! ## A300936.P14900390270139027887

`A300937(A000217(n+6)+7)`
-/

namespace A300936.P14900390270139027887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300937 (A000217 (n + 6) + 7).toNat

end

end A300936.P14900390270139027887

/-!
# A300938: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300938, there is no canonical definition to state claims against.
-/

/-! ## A300938.P11878198340663030579

`A300944(∑[4*n]+1)`
-/

namespace A300938.P11878198340663030579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300938.P11878198340663030579

/-! ## A300938.P10508793534083177644

`and(-1, A300944(A001844(n)))`
-/

namespace A300938.P10508793534083177644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A300944 (A001844 n).toNat)

end

end A300938.P10508793534083177644

/-! ## A300938.P14761257299035400750

`record[A300944(A330613(n+1))]`
-/

namespace A300938.P14761257299035400750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300938.P14761257299035400750

/-! ## A300938.P10790139507315345870

`record[A003982(n)*A300944(n+1)]`
-/

namespace A300938.P10790139507315345870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300938.P10790139507315345870

/-! ## A300938.P3032189957690179709

`A300944(A001844(n))+A185284(n)`
-/

namespace A300938.P3032189957690179709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (A001844 n).toNat + A185284 n

end

end A300938.P3032189957690179709

/-!
# A300939: Number of nX3 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300939, there is no canonical definition to state claims against.
-/

/-! ## A300939.P6056297372169002639

`A300944(∑[n+2]+4)`
-/

namespace A300939.P6056297372169002639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300939.P6056297372169002639

/-! ## A300939.P9130206066680507943

`or(char[2], A300944(A167614(n+1)))`
-/

namespace A300939.P9130206066680507943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A300944 (A167614 (n + 1)).toNat)

end

end A300939.P9130206066680507943

/-! ## A300939.P18001853118646157134

`or(char[2], A300944(A034856(n+1)+5))`
-/

namespace A300939.P18001853118646157134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A300944 (A034856 (n + 1) + 5).toNat)

end

end A300939.P18001853118646157134

/-! ## A300939.P16334295911248687128

`A300944(A167614(n+1))+A025469(n)`
-/

namespace A300939.P16334295911248687128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (A167614 (n + 1)).toNat + A025469 n

end

end A300939.P16334295911248687128

/-! ## A300939.P1676139130309441766

`A300944(A167614(n+1))+A178780(n)`
-/

namespace A300939.P1676139130309441766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (A167614 (n + 1)).toNat + A178780 n

end

end A300939.P1676139130309441766

/-!
# A300940: Number of nX4 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300940, there is no canonical definition to state claims against.
-/

/-! ## A300940.P2623946409712801043

`A300944(∑[n+3]+7)`
-/

namespace A300940.P2623946409712801043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A300940.P2623946409712801043

/-! ## A300940.P166764352372265831

`A300944(A000096(n+2)+5)+char[19]`
-/

namespace A300940.P166764352372265831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (A000096 (n + 2) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300940.P166764352372265831

/-! ## A300940.P5917110100883164419

`A300944(A374004(n+1))+A000038(3*n+4)`
-/

namespace A300940.P5917110100883164419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (A374004 (n + 1)).toNat + A000038 (3 * n + 4)

end

end A300940.P5917110100883164419

/-! ## A300940.P10820767171482587006

`A007318(C(n, 2))*A300944(A000096(n+2)+5)`
-/

namespace A300940.P10820767171482587006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A300944 (A000096 (n + 2) + 5).toNat

end

end A300940.P10820767171482587006

/-! ## A300940.P6597533188229305969

`A300944(A000096(n+2)+5)/A007318(C(3, n))`
-/

namespace A300940.P6597533188229305969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300944 (A000096 (n + 2) + 5).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A300940.P6597533188229305969

/-!
# A300941: Number of nX5 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300941, there is no canonical definition to state claims against.
-/

/-! ## A300941.P929524896224796723

`A300944(∑[n+4]+11)`
-/

namespace A300941.P929524896224796723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A300941.P929524896224796723

/-!
# A300942: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300942, there is no canonical definition to state claims against.
-/

/-! ## A300942.P3477048482092909944

`A300944(A374007(n+1))`
-/

namespace A300942.P3477048482092909944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (A374007 (n + 1)).toNat

end

end A300942.P3477048482092909944

/-! ## A300942.P5972423187997494505

`A300944(A056115(n)+21)`
-/

namespace A300942.P5972423187997494505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (A056115 n + 21).toNat

end

end A300942.P5972423187997494505

/-! ## A300942.P10610523218170653248

`A300944(A167499(n+4)+1)`
-/

namespace A300942.P10610523218170653248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (A167499 (n + 4) + 1).toNat

end

end A300942.P10610523218170653248

/-! ## A300942.P2613300729195023898

`A300944(A077169(n+6)+1)`
-/

namespace A300942.P2613300729195023898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (A077169 (n + 6) + 1).toNat

end

end A300942.P2613300729195023898

/-! ## A300942.P14721122235129194708

`A300944(A167614(n+4)+3)`
-/

namespace A300942.P14721122235129194708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (A167614 (n + 4) + 3).toNat

end

end A300942.P14721122235129194708

/-!
# A300943: Number of nX7 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300943, there is no canonical definition to state claims against.
-/

/-! ## A300943.P3090253198567240111

`A300944(A374008(n+1))`
-/

namespace A300943.P3090253198567240111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (A374008 (n + 1)).toNat

end

end A300943.P3090253198567240111

/-! ## A300943.P7970248023966219743

`A300944(A167487(n+5))`
-/

namespace A300943.P7970248023966219743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (A167487 (n + 5)).toNat

end

end A300943.P7970248023966219743

/-! ## A300943.P5129199954684462046

`A300944(A056119(n)+28)`
-/

namespace A300943.P5129199954684462046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (A056119 n + 28).toNat

end

end A300943.P5129199954684462046

/-! ## A300943.P12006598298655626225

`A300944(eq[11, A066657(n)])`
-/

namespace A300943.P12006598298655626225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300943.P12006598298655626225

/-! ## A300943.P8035980421751608323

`A300944(A167499(n+5)+2)`
-/

namespace A300943.P8035980421751608323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300944 (A167499 (n + 5) + 2).toNat

end

end A300943.P8035980421751608323

/-!
# A300944: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300944, there is no canonical definition to state claims against.
-/

/-! ## A300944.P11351599939352852573

`A300888(n+1)+A173636(A174545(n))`
-/

namespace A300944.P11351599939352852573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300888 (n + 1) + A173636 (A174545 n).toNat

end

end A300944.P11351599939352852573

/-! ## A300944.P1752088691101741241

`A301498(n+1)-A285006(A059922(n))`
-/

namespace A300944.P1752088691101741241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (n + 1) - A285006 (A059922 n).toNat

end

end A300944.P1752088691101741241

/-! ## A300944.P15441875241679615294

`A301498(n+1)-A326291(A174545(n))`
-/

namespace A300944.P15441875241679615294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (n + 1) - A326291 (A174545 n).toNat

end

end A300944.P15441875241679615294

/-! ## A300944.P283989799402316908

`A301498(n+1)-A178780(A001263(n+1))`
-/

namespace A300944.P283989799402316908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301498 (n + 1) - A178780 (A001263 (n + 1)).toNat

end

end A300944.P283989799402316908

/-! ## A300944.P7349067699887648543

`A321936(A174545(n)+2)+A300888(n+1)`
-/

namespace A300944.P7349067699887648543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A174545 n + 2).toNat + A300888 (n + 1)

end

end A300944.P7349067699887648543

/-!
# A300945: Rectangular array A(n, k) = hypergeom([-k, k + n/2 - 1], [1], -4) with row n >= 0 and k >= 0, read by ascending antidiagonals.

The programs for A300945, there is no canonical definition to state claims against.
-/

/-! ## A300945.P2853465524272031238

`A052126(A063886(∑{d}[n+1, #])+1)`
-/

namespace A300945.P2853465524272031238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A063886 (∑ d ∈ Nat.divisors (f1 n), d) + 1).toNat

end

end A300945.P2853465524272031238

/-! ## A300945.P14125262550981572775

`A264482((char[4*n]+2*n)^A002262(n))`
-/

namespace A300945.P14125262550981572775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264482 (SequenceMachineLib.roundAway ((((if ∃ j, f1 j = n then 1 else 0) + 2 * n : ℕ) : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A300945.P14125262550981572775

/-! ## A300945.P7063315485764025191

`A274222(A316353(n+1)^A180662(n))`
-/

namespace A300945.P7063315485764025191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274222 (SequenceMachineLib.roundAway ((A316353 (n + 1) : ℚ) ^ (A180662 n : ℤ))).toNat

end

end A300945.P7063315485764025191

/-!
# A300946: Rectangular array A(n, k) = (-1)^k*hypergeom([-k, k + n/2 - 1/2], [1], 4) with row n >= 0 and k >= 0, read by ascending antidiagonals.

The programs for A300946, there is no canonical definition to state claims against.
-/

/-! ## A300946.P5444520858644409620

`A167595(A375854(n))`
-/

namespace A300946.P5444520858644409620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167595 (A375854 n).toNat

end

end A300946.P5444520858644409620

/-! ## A300946.P13729499287269543794

`A309293(round(2*n/3)^A112367(n))`
-/

namespace A300946.P13729499287269543794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309293 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) : ℚ) ^ (A112367 n : ℤ))).toNat

end

end A300946.P13729499287269543794

/-! ## A300946.P5656950942580372904

`A151991(A004525(n)^A002262(n))`
-/

namespace A300946.P5656950942580372904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151991 (SequenceMachineLib.roundAway ((A004525 n : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A300946.P5656950942580372904

/-! ## A300946.P16296486672667387833

`A324761(A004525(n)^A002262(n))`
-/

namespace A300946.P16296486672667387833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324761 (SequenceMachineLib.roundAway ((A004525 n : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A300946.P16296486672667387833

/-! ## A300946.P9338692542360789773

`A089167(A352589(n))%A046092(A005811(3*n+2))`
-/

namespace A300946.P9338692542360789773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089167 (A352589 n).toNat) (A046092 (A005811 (3 * n + 2)).toNat)

end

end A300946.P9338692542360789773

/-!
# A300948: a(1) = 2, a(2) = 1, and for any n > 2 with binary expansion Sum_{i=0..k} b_i * 2^i, a(n) = Sum_{i=0..k} b_i * 2^(a(i+1)-1).

The programs for A300948, there is no canonical definition to state claims against.
-/

/-! ## A300948.P8197985409825794369

`A080412(∑[A034802(A033809(n+1))])`
-/

namespace A300948.P8197985409825794369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034802 (A033809 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300948.P8197985409825794369

/-! ## A300948.P14276021744113566249

`A219977(n)+∑[A034802(A033809(n+1))]`
-/

namespace A300948.P14276021744113566249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034802 (A033809 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300948.P14276021744113566249

/-! ## A300948.P16338033895667397826

`A080412(A000005(Δ[A050732(n+1)]))`
-/

namespace A300948.P16338033895667397826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A000005 (f1 (n + 1) - f1 n).toNat).toNat

end

end A300948.P16338033895667397826

/-! ## A300948.P17911485355911306049

`A219977(n)+A000005(Δ[A050732(n+1)])`
-/

namespace A300948.P17911485355911306049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n + A000005 (f1 (n + 1) - f1 n).toNat

end

end A300948.P17911485355911306049

/-! ## A300948.P17274226863538932901

`A080412(A187829(n+1))`
-/

namespace A300948.P17274226863538932901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A187829 (n + 1)).toNat

end

end A300948.P17274226863538932901

/-!
# A300949: Carmichael numbers whose prime factors form an arithmetic progression.

The programs for A300949, there is no canonical definition to state claims against.
-/

/-! ## A300949.P3957482355304827855

`∩[A002997(n+1), A262723(n+1)]`
-/

namespace A300949.P3957482355304827855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300949.P3957482355304827855

/-! ## A300949.P10074480967746281854

`∩[A087442(n+1), A262723(n+1)]`
-/

namespace A300949.P10074480967746281854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300949.P10074480967746281854

/-! ## A300949.P11493205268060850591

`∩[A087788(n+1), A262723(n+1)]`
-/

namespace A300949.P11493205268060850591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300949.P11493205268060850591

/-! ## A300949.P238778858752699868

`∩[A002997(n+1), A167629(n+1)]`
-/

namespace A300949.P238778858752699868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300949.P238778858752699868

/-!
# A300950: Fixed points of A300948.

The programs for A300950, there is no canonical definition to state claims against.
-/

/-! ## A300950.P7511626086027048158

`∑[gcd(33, 3-val(n+1, 2))]`
-/

namespace A300950.P7511626086027048158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 33 (3 - (SequenceMachineLib.valuation (n + 1) 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300950.P7511626086027048158

/-! ## A300950.P11540049507190791942

`record[or(n+1, 2*and(17, n+1))]`
-/

namespace A300950.P11540049507190791942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 1) (2 * Nat.land 17 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300950.P11540049507190791942

/-! ## A300950.P8959191677841483859

`record[xor(n+1, 2*and(17, n+1))]`
-/

namespace A300950.P8959191677841483859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (2 * Nat.land 17 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300950.P8959191677841483859

/-! ## A300950.P13752531760560944882

`record[xor(17, or(17, n+1)+n+1)]`
-/

namespace A300950.P13752531760560944882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 17 (Nat.lor 17 (n + 1) + (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300950.P13752531760560944882

/-! ## A300950.P15593943088366156448

`∑[gcd(33, 3-A007814(n+1))]`
-/

namespace A300950.P15593943088366156448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 33 (3 - A007814 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300950.P15593943088366156448

/-! ## A300950.P18389347584140452178

`eq[n+1, A300948(n+1)]+1`
-/

namespace A300950.P18389347584140452178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300948 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A300950.P18389347584140452178

/-! ## A300950.P17577098529287912421

`eq[A216060(n), A395958(n)]`
-/

namespace A300950.P17577098529287912421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A300950.P17577098529287912421

/-! ## A300950.P15920717663746474668

`∑[A066827(A090740(n+1))]`
-/

namespace A300950.P15920717663746474668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066827 (A090740 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300950.P15920717663746474668

/-! ## A300950.P17960007731874688080

`∑[A066827(A006530(xor(n, n+1)))]`
-/

namespace A300950.P17960007731874688080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066827 (A006530 (Nat.xor n (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300950.P17960007731874688080

/-! ## A300950.P1286630560321977606

`∩[A154708(n+1), A395959(n+1)]`
-/

namespace A300950.P1286630560321977606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300950.P1286630560321977606

/-!
# A300951: a(n) = Product_{j=1..floor(n/2)} p(j) where p(j) = j if j is prime else 1.

The programs for A300951, the canonical program `A300951.P16227161527495429065` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300951 has offset 0).

The definition of A300951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 502 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300951.P9329058778270769150

`A034386(floor(n/2))`
-/

namespace A300951.P9329058778270769150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 ⌊(n : ℚ) / 2⌋.toNat

end

end A300951.P9329058778270769150

namespace A300951

/-- `A034386(floor(n/2))` -/
def P9329058778270769150.Spec : Prop :=
  ∀ n, P9329058778270769150.a n = A300951 n

end A300951

/-! ## A300951.P16227161527495429065

`lcm(a(n-2), A014963(floor(n/2)))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A300951

/-- `lcm(a(n-2), A014963(floor(n/2)))` -/
def P16227161527495429065.Spec : Prop :=
  ∀ n, (P16227161527495429065.a n : ℤ) = A300951 n

theorem P16227161527495429065.correct : P16227161527495429065.Spec := by
  intro n
  simp only [A300951]

end A300951

/-! ## A300951.P9922492614010747793

`A066838(A308052(n+1))`
-/

namespace A300951.P9922492614010747793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066838 (A308052 (n + 1)).toNat

end

end A300951.P9922492614010747793

namespace A300951

/-- `A066838(A308052(n+1))` -/
def P9922492614010747793.Spec : Prop :=
  ∀ n, P9922492614010747793.a n = A300951 n

end A300951

/-! ## A300951.P16870113914644467296

`A002110(n-A282029(n))`
-/

namespace A300951.P16870113914644467296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 ((n : ℤ) - A282029 n).toNat

end

end A300951.P16870113914644467296

namespace A300951

/-- `A002110(n-A282029(n))` -/
def P16870113914644467296.Spec : Prop :=
  ∀ n, P16870113914644467296.a n = A300951 n

end A300951

/-! ## A300951.P1675543737857451533

`A002110(∑[char[A100484(n+1)]])`
-/

namespace A300951.P1675543737857451533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300951.P1675543737857451533

namespace A300951

/-- `A002110(∑[char[A100484(n+1)]])` -/
def P1675543737857451533.Spec : Prop :=
  ∀ n, P1675543737857451533.a n = A300951 n

end A300951

/-! ## A300951.P7306365563538745087

`A002110(∑[char[2*A151800(n)]])`
-/

namespace A300951.P7306365563538745087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151800 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300951.P7306365563538745087

namespace A300951

/-- `A002110(∑[char[2*A151800(n)]])` -/
def P7306365563538745087.Spec : Prop :=
  ∀ n, P7306365563538745087.a n = A300951 n

end A300951

/-! ## A300951.P5790613608962663345

`A181811(A151800(ceil((n-1)/2)))`
-/

namespace A300951.P5790613608962663345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181811 (A151800 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat).toNat

end

end A300951.P5790613608962663345

namespace A300951

/-- `A181811(A151800(ceil((n-1)/2)))` -/
def P5790613608962663345.Spec : Prop :=
  ∀ n, P5790613608962663345.a n = A300951 n

end A300951

/-! ## A300951.P9694659375811777634

`A002110(∑[char[2*A000040(n+1)]])`
-/

namespace A300951.P9694659375811777634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300951.P9694659375811777634

namespace A300951

/-- `A002110(∑[char[2*A000040(n+1)]])` -/
def P9694659375811777634.Spec : Prop :=
  ∀ n, P9694659375811777634.a n = A300951 n

end A300951

/-! ## A300951.P12502074552680314088

`A002110(A242096(n+1)+A242096(n))`
-/

namespace A300951.P12502074552680314088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A242096 (n + 1) + A242096 n).toNat

end

end A300951.P12502074552680314088

namespace A300951

/-- `A002110(A242096(n+1)+A242096(n))` -/
def P12502074552680314088.Spec : Prop :=
  ∀ n, P12502074552680314088.a n = A300951 n

end A300951

/-! ## A300951.P14958692287282998101

`A034386(n)/A055773(n)`
-/

namespace A300951.P14958692287282998101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (A055773 n : ℚ)

end

end A300951.P14958692287282998101

namespace A300951

/-- `A034386(n)/A055773(n)` -/
def P14958692287282998101.Spec : Prop :=
  ∀ n, P14958692287282998101.a n = (A300951 n : ℚ)

end A300951

/-! ## A300951.P1990888344345364905

`gcd(A034386(n), A139550(n))`
-/

namespace A300951.P1990888344345364905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n) (A139550 n)

end

end A300951.P1990888344345364905

namespace A300951

/-- `gcd(A034386(n), A139550(n))` -/
def P1990888344345364905.Spec : Prop :=
  ∀ n, (P1990888344345364905.a n : ℤ) = A300951 n

end A300951

/-! ## A300951.P5015680850281717970

`A034386(n)/A056040(n)*A182923(n)`
-/

namespace A300951.P5015680850281717970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (A056040 n : ℚ) * (A182923 n : ℚ)

end

end A300951.P5015680850281717970

namespace A300951

/-- `A034386(n)/A056040(n)*A182923(n)` -/
def P5015680850281717970.Spec : Prop :=
  ∀ n, P5015680850281717970.a n = (A300951 n : ℚ)

end A300951

/-! ## A300951.P4726434642766933116

`A104588(A033638(n))`
-/

namespace A300951.P4726434642766933116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104588 (A033638 n).toNat

end

end A300951.P4726434642766933116

namespace A300951

/-- `A104588(A033638(n))` -/
def P4726434642766933116.Spec : Prop :=
  ∀ n, P4726434642766933116.a n = A300951 n

end A300951

/-! ## A300951.P18043760289930996816

`A104588(A002620(n)+1)`
-/

namespace A300951.P18043760289930996816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104588 (A002620 n + 1).toNat

end

end A300951.P18043760289930996816

namespace A300951

/-- `A104588(A002620(n)+1)` -/
def P18043760289930996816.Spec : Prop :=
  ∀ n, P18043760289930996816.a n = A300951 n

end A300951

/-! ## A300951.P14832389116270494333

`gcd(A034386(n), A056038(n))`
-/

namespace A300951.P14832389116270494333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n) (A056038 n)

end

end A300951.P14832389116270494333

namespace A300951

/-- `gcd(A034386(n), A056038(n))` -/
def P14832389116270494333.Spec : Prop :=
  ∀ n, (P14832389116270494333.a n : ℤ) = A300951 n

end A300951

/-! ## A300951.P9683227948064940095

`gcd(A054641(n+1), A081123(n))`
-/

namespace A300951.P9683227948064940095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054641 (n + 1)) (A081123 n)

end

end A300951.P9683227948064940095

namespace A300951

/-- `gcd(A054641(n+1), A081123(n))` -/
def P9683227948064940095.Spec : Prop :=
  ∀ n, (P9683227948064940095.a n : ℤ) = A300951 n

end A300951

/-!
# A300952: Number of Dyck paths of semilength n having equal areas above the path and below the path, measured within the smallest enclosing rectangle based on the x-axis.

The programs for A300952, there is no canonical definition to state claims against.
-/

/-! ## A300952.P11515576453869021192

`A300953(A006503(n)-A001105(n))`
-/

namespace A300952.P11515576453869021192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300953 (A006503 n - A001105 n).toNat

end

end A300952.P11515576453869021192

/-!
# A300954: Number of Dyck paths whose sequence of ascent lengths is exactly n+1, n+2, ..., 2n.

The programs for A300954, there is no canonical definition to state claims against.
-/

/-! ## A300954.P10840609473441049981

`A107876(C(2*n+1, 2)+n)`
-/

namespace A300954.P10840609473441049981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107876 (Nat.choose (2 * n + 1) 2 + n)

end

end A300954.P10840609473441049981

/-! ## A300954.P8971760143915390385

`A107876(∑[4*n])`
-/

namespace A300954.P8971760143915390385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107876 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300954.P8971760143915390385

/-! ## A300954.P8852594481368429401

`A107876(A046092(n))^C(2, C(2, n²))`
-/

namespace A300954.P8852594481368429401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107876 (A046092 n).toNat ^ Nat.choose 2 (Nat.choose 2 (n ^ 2))

end

end A300954.P8852594481368429401

/-! ## A300954.P2522162927343328865

`A107876(A046092(n))%A053005(n)`
-/

namespace A300954.P2522162927343328865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107876 (A046092 n).toNat) (A053005 n)

end

end A300954.P2522162927343328865

/-! ## A300954.P17644548737278779561

`gcd(A000038(n), A107876(A046092(n)))`
-/

namespace A300954.P17644548737278779561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A107876 (A046092 n).toNat)

end

end A300954.P17644548737278779561

/-!
# A300957: Fixed points of A300955.

The programs for A300957, there is no canonical definition to state claims against.
-/

/-! ## A300957.P9167841878920272208

`eq[n, A300955(floor(acot(n)+n))]`
-/

namespace A300957.P9167841878920272208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300955 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A300957.P9167841878920272208

/-! ## A300957.P6105011935836507402

`eq[n, A300955(abs(1-n)+1)]`
-/

namespace A300957.P6105011935836507402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300955 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A300957.P6105011935836507402

/-! ## A300957.P18220312255336321843

`eq[n+1, A300955(n+1)]+1`
-/

namespace A300957.P18220312255336321843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A300957.P18220312255336321843

/-! ## A300957.P7017777176369879631

`∩[A005117(n+1), A339746(A187829(n+1))]`
-/

namespace A300957.P7017777176369879631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339746 (A187829 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300957.P7017777176369879631

/-!
# A300959: Number of prime factors of the n-th Lucas-Carmichael number.

The programs for A300959, there is no canonical definition to state claims against.
-/

/-! ## A300959.P18150720027525727672

`A001221(A006972(n+1))`
-/

namespace A300959.P18150720027525727672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006972 (n + 1)).toNat

end

end A300959.P18150720027525727672

/-! ## A300959.P1281094156013140772

`∑{e}[A006972(n+1), #]`
-/

namespace A300959.P1281094156013140772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A300959.P1281094156013140772

/-! ## A300959.P2440394035542101545

`∑{p}[A006972(n+1), A000035(#)]`
-/

namespace A300959.P2440394035542101545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000035 p

end

end A300959.P2440394035542101545

/-! ## A300959.P5580738189119871194

`∑{p}[A006972(n+1), A001055(#)]`
-/

namespace A300959.P5580738189119871194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001055 p

end

end A300959.P5580738189119871194

/-! ## A300959.P3616680788091952115

`∑{p}[A006972(n+1), A001065(#)]`
-/

namespace A300959.P3616680788091952115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001065 p

end

end A300959.P3616680788091952115

/-! ## A300959.P16098303217050946044

`∑{p}[A006972(n+1), A001222(#)]`
-/

namespace A300959.P16098303217050946044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A300959.P16098303217050946044

/-! ## A300959.P6331813125037730535

`∑{p}[A006972(n+1), A283991(#)]`
-/

namespace A300959.P6331813125037730535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A283991 p

end

end A300959.P6331813125037730535

/-! ## A300959.P12946785709964720571

`∑{p}[A006972(n+1), abs(A008683(#))]`
-/

namespace A300959.P12946785709964720571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, |A008683 p|

end

end A300959.P12946785709964720571

/-! ## A300959.P14473912358483274188

`∑{p}[A006972(n+1), log2(A000005(#))]`
-/

namespace A300959.P14473912358483274188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Real.logb 2 (A000005 p : ℝ)

end

end A300959.P14473912358483274188

/-! ## A300959.P3467620371213806266

`A001222(∏{e}[A006972(n+1), #+1])`
-/

namespace A300959.P3467620371213806266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A300959.P3467620371213806266

/-!
# A300960: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300960, there is no canonical definition to state claims against.
-/

/-! ## A300960.P13129009433396385834

`A300966(∑[4*n]+1)`
-/

namespace A300960.P13129009433396385834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300960.P13129009433396385834

/-! ## A300960.P14648253563603640102

`record[A003982(n)*A300966(n+1)]`
-/

namespace A300960.P14648253563603640102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300960.P14648253563603640102

/-! ## A300960.P16359650813756547625

`record[gcd(A114327(n), A300966(n+1))]`
-/

namespace A300960.P16359650813756547625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A300966 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300960.P16359650813756547625

/-! ## A300960.P1101914434243113208

`A300966(A001844(n))+A243833(n)`
-/

namespace A300960.P1101914434243113208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (A001844 n).toNat + A243833 n

end

end A300960.P1101914434243113208

/-! ## A300960.P3456935440111768164

`A300966(A001844(n))+A299905(n)`
-/

namespace A300960.P3456935440111768164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (A001844 n).toNat + A299905 n

end

end A300960.P3456935440111768164

/-!
# A300961: Number of n X 3 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300961, there is no canonical definition to state claims against.
-/

/-! ## A300961.P7100403144397338193

`A300966(∑[n+2]+4)`
-/

namespace A300961.P7100403144397338193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300961.P7100403144397338193

/-! ## A300961.P7731997817025042368

`or(char[1], A300966(A167499(n)+n))`
-/

namespace A300961.P7731997817025042368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A300966 (A167499 n + (n : ℤ)).toNat)

end

end A300961.P7731997817025042368

/-! ## A300961.P13713365654144678955

`A300966(A055998(n)+6)%(2*5^(n+2))`
-/

namespace A300961.P13713365654144678955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300966 (A055998 n + 6).toNat) (2 * 5 ^ (n + 2) : ℤ)

end

end A300961.P13713365654144678955

/-! ## A300961.P8658193065079938599

`A300966(A034856(n+1)+5)+char[A005586(n+4)]`
-/

namespace A300961.P8658193065079938599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (A034856 (n + 1) + 5).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A300961.P8658193065079938599

/-! ## A300961.P4416919888815597471

`A300966(A034856(n+1)+5)%A002805(2*(n+1))`
-/

namespace A300961.P4416919888815597471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300966 (A034856 (n + 1) + 5).toNat) (A002805 (2 * (n + 1)))

end

end A300961.P4416919888815597471

/-!
# A300962: Number of n X 4 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300962, there is no canonical definition to state claims against.
-/

/-! ## A300962.P5123127413426571282

`A300966(A055999(n)+10)`
-/

namespace A300962.P5123127413426571282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (A055999 n + 10).toNat

end

end A300962.P5123127413426571282

/-! ## A300962.P12940251769102533012

`A300966(A167614(n+2)+1)`
-/

namespace A300962.P12940251769102533012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (A167614 (n + 2) + 1).toNat

end

end A300962.P12940251769102533012

/-! ## A300962.P16825053999905836031

`A300966(A134227(n+1)+10)`
-/

namespace A300962.P16825053999905836031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (A134227 (n + 1) + 10).toNat

end

end A300962.P16825053999905836031

/-! ## A300962.P7693332157029179394

`A300966(eq[5, A131818(n+1)])`
-/

namespace A300962.P7693332157029179394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300962.P7693332157029179394

/-! ## A300962.P5341867053692687719

`A300966(A080036(A167614(n+1)))`
-/

namespace A300962.P5341867053692687719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A300962.P5341867053692687719

/-!
# A300963: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300963, there is no canonical definition to state claims against.
-/

/-! ## A300963.P9738338475066449766

`A300966(A167499(n+3))`
-/

namespace A300963.P9738338475066449766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (A167499 (n + 3)).toNat

end

end A300963.P9738338475066449766

/-! ## A300963.P7110925703946281952

`A300966(A056000(n)+15)`
-/

namespace A300963.P7110925703946281952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (A056000 n + 15).toNat

end

end A300963.P7110925703946281952

/-! ## A300963.P1116134815729882652

`A300966(A374005(n+1))`
-/

namespace A300963.P1116134815729882652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (A374005 (n + 1)).toNat

end

end A300963.P1116134815729882652

/-! ## A300963.P6223146560869775943

`A300966(A046691(n+3))`
-/

namespace A300963.P6223146560869775943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (A046691 (n + 3)).toNat

end

end A300963.P6223146560869775943

/-! ## A300963.P7589723581607751986

`A300966(eq[4, A193592(n)])`
-/

namespace A300963.P7589723581607751986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300963.P7589723581607751986

/-!
# A300964: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300964, there is no canonical definition to state claims against.
-/

/-! ## A300964.P6501604676395128155

`A300966(eq[7, A131818(n+1)])`
-/

namespace A300964.P6501604676395128155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300964.P6501604676395128155

/-! ## A300964.P6437877454467889943

`A300966(A374007(n+1))`
-/

namespace A300964.P6437877454467889943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (A374007 (n + 1)).toNat

end

end A300964.P6437877454467889943

/-! ## A300964.P8148965411078715908

`A300966(A052905(n+3))`
-/

namespace A300964.P8148965411078715908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (A052905 (n + 3)).toNat

end

end A300964.P8148965411078715908

/-! ## A300964.P15549082092619049769

`A300966(eq[3, A219347(n)])`
-/

namespace A300964.P15549082092619049769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300964.P15549082092619049769

/-! ## A300964.P5615588170504232864

`A300966(eq[5, A193592(n)])`
-/

namespace A300964.P5615588170504232864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300964.P5615588170504232864

/-!
# A300965: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300965, there is no canonical definition to state claims against.
-/

/-! ## A300965.P6100674616586888035

`A300966(A056119(n)+28)`
-/

namespace A300965.P6100674616586888035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (A056119 n + 28).toNat

end

end A300965.P6100674616586888035

/-! ## A300965.P10567660030814209445

`A300966(eq[8, A131818(n+1)])`
-/

namespace A300965.P10567660030814209445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300965.P10567660030814209445

/-! ## A300965.P6751567882794385786

`A300966(A374008(n+1))`
-/

namespace A300965.P6751567882794385786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (A374008 (n + 1)).toNat

end

end A300965.P6751567882794385786

/-! ## A300965.P12743038661496119486

`A300966(A055999(n+4))`
-/

namespace A300965.P12743038661496119486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (A055999 (n + 4)).toNat

end

end A300965.P12743038661496119486

/-! ## A300965.P113132906824302511

`A300966(eq[4, A219347(n)])`
-/

namespace A300965.P113132906824302511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300966 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300965.P113132906824302511

/-!
# A300966: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300966, there is no canonical definition to state claims against.
-/

/-! ## A300966.P16999833937532845138

`A300539(A273712(n)!+n)`
-/

namespace A300966.P16999833937532845138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (Nat.factorial (A273712 n).toNat + n)

end

end A300966.P16999833937532845138

/-! ## A300966.P5508029767477980569

`A300923(A273712(n)!+n)`
-/

namespace A300966.P5508029767477980569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (Nat.factorial (A273712 n).toNat + n)

end

end A300966.P5508029767477980569

/-! ## A300966.P15396943180479107458

`A300923(n+1)+A111829(A299905(n))`
-/

namespace A300966.P15396943180479107458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300923 (n + 1) + A111829 (A299905 n).toNat

end

end A300966.P15396943180479107458

/-! ## A300966.P9640228072685240320

`A300539(n+1)-A111829(A299905(n))`
-/

namespace A300966.P9640228072685240320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300539 (n + 1) - A111829 (A299905 n).toNat

end

end A300966.P9640228072685240320

/-! ## A300966.P6419896487122367944

`A301531(n+1)+A111829(A299905(n))-A299905(n)²`
-/

namespace A300966.P6419896487122367944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301531 (n + 1) + A111829 (A299905 n).toNat - A299905 n ^ 2

end

end A300966.P6419896487122367944

/-!
# A300967: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300967, there is no canonical definition to state claims against.
-/

/-! ## A300967.P16240588774110021740

`A300973(∑[4*n]+1)`
-/

namespace A300967.P16240588774110021740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300967.P16240588774110021740

/-! ## A300967.P11237700600634953720

`record[A003982(n)*A300973(n+1)]`
-/

namespace A300967.P11237700600634953720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300967.P11237700600634953720

/-! ## A300967.P12659832268791700138

`A300973(A001844(n))+A025438(n)`
-/

namespace A300967.P12659832268791700138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (A001844 n).toNat + A025438 n

end

end A300967.P12659832268791700138

/-! ## A300967.P8910396853805011185

`A300973(A001844(n))+A054908(n)`
-/

namespace A300967.P8910396853805011185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (A001844 n).toNat + A054908 n

end

end A300967.P8910396853805011185

/-! ## A300967.P7962617342924501636

`A300973(A001844(n))+A185284(n)`
-/

namespace A300967.P7962617342924501636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (A001844 n).toNat + A185284 n

end

end A300967.P7962617342924501636

/-!
# A300968: Number of n X 3 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300968, there is no canonical definition to state claims against.
-/

/-! ## A300968.P2559225318210879620

`A300973(∑[n+2]+4)`
-/

namespace A300968.P2559225318210879620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300968.P2559225318210879620

/-! ## A300968.P10033247218223072223

`A300973(A167614(n+1))%A017479(n)`
-/

namespace A300968.P10033247218223072223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300973 (A167614 (n + 1)).toNat) (A017479 n)

end

end A300968.P10033247218223072223

/-! ## A300968.P3719349007521027099

`gcd(A000038(n), A300973(A167614(n+1)))`
-/

namespace A300968.P3719349007521027099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A300973 (A167614 (n + 1)).toNat)

end

end A300968.P3719349007521027099

/-! ## A300968.P12030692215340517847

`lcm(A090629(n), A300973(A167614(n+1)))`
-/

namespace A300968.P12030692215340517847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A090629 n) (A300973 (A167614 (n + 1)).toNat)

end

end A300968.P12030692215340517847

/-! ## A300968.P15656801947140906179

`or(A063524(n), A300973(A167614(n+1)))`
-/

namespace A300968.P15656801947140906179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A300973 (A167614 (n + 1)).toNat)

end

end A300968.P15656801947140906179

/-!
# A300969: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300969, there is no canonical definition to state claims against.
-/

/-! ## A300969.P8810100246380023149

`A300973(A141214(n)+7)`
-/

namespace A300969.P8810100246380023149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (A141214 n + 7).toNat

end

end A300969.P8810100246380023149

/-! ## A300969.P11804607319411826516

`A300973(A052905(n)+9)`
-/

namespace A300969.P11804607319411826516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (A052905 n + 9).toNat

end

end A300969.P11804607319411826516

/-! ## A300969.P5407401938072339252

`A300973(A167614(n+2)+1)`
-/

namespace A300969.P5407401938072339252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (A167614 (n + 2) + 1).toNat

end

end A300969.P5407401938072339252

/-! ## A300969.P12761141469039787627

`A300973(Δ[A264443(n)-n²])`
-/

namespace A300969.P12761141469039787627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (f1 (n + 1) - f1 n).toNat

end

end A300969.P12761141469039787627

/-! ## A300969.P4959600149310683610

`A300973(A080036(A167614(n+1)))`
-/

namespace A300969.P4959600149310683610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A300969.P4959600149310683610

/-!
# A300970: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300970, there is no canonical definition to state claims against.
-/

/-! ## A300970.P11817464781257999065

`A300973(A167499(n+3))`
-/

namespace A300970.P11817464781257999065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (A167499 (n + 3)).toNat

end

end A300970.P11817464781257999065

/-! ## A300970.P3672686138727813238

`A300973(A056000(n)+15)`
-/

namespace A300970.P3672686138727813238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (A056000 n + 15).toNat

end

end A300970.P3672686138727813238

/-! ## A300970.P6874902292191738905

`A300973(eq[6, A131818(n+1)])`
-/

namespace A300970.P6874902292191738905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300970.P6874902292191738905

/-! ## A300970.P6962376128450832461

`A300973(A000124(n+5)-(n+1))`
-/

namespace A300970.P6962376128450832461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A300970.P6962376128450832461

/-! ## A300970.P13309677768737949766

`A300973(Δ[A264443(n)])`
-/

namespace A300970.P13309677768737949766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (f1 (n + 1) - f1 n).toNat

end

end A300970.P13309677768737949766

/-!
# A300971: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300971, there is no canonical definition to state claims against.
-/

/-! ## A300971.P14417658236537251261

`A300973(A056115(n)+21)`
-/

namespace A300971.P14417658236537251261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (A056115 n + 21).toNat

end

end A300971.P14417658236537251261

/-! ## A300971.P10179482441855638345

`A300973(A000124(n+5)+5)`
-/

namespace A300971.P10179482441855638345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (A000124 (n + 5) + 5).toNat

end

end A300971.P10179482441855638345

/-! ## A300971.P61515313985795858

`A300973(eq[7, A131818(n+1)])`
-/

namespace A300971.P61515313985795858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300971.P61515313985795858

/-! ## A300971.P13831205172711809473

`A300973(A374007(n+1))`
-/

namespace A300971.P13831205172711809473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (A374007 (n + 1)).toNat

end

end A300971.P13831205172711809473

/-! ## A300971.P3509607052615109482

`A300973(A056119(n)+16)`
-/

namespace A300971.P3509607052615109482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (A056119 n + 16).toNat

end

end A300971.P3509607052615109482

/-!
# A300972: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300972, there is no canonical definition to state claims against.
-/

/-! ## A300972.P14460237514387080853

`A300973(eq[8, A131818(n+1)])`
-/

namespace A300972.P14460237514387080853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300972.P14460237514387080853

/-! ## A300972.P12580161862425033881

`A300973(A374008(n+1))`
-/

namespace A300972.P12580161862425033881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (A374008 (n + 1)).toNat

end

end A300972.P12580161862425033881

/-! ## A300972.P3222147656896148973

`A300973(A055999(n+4))`
-/

namespace A300972.P3222147656896148973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (A055999 (n + 4)).toNat

end

end A300972.P3222147656896148973

/-! ## A300972.P15091003158040939797

`A300973(eq[4, A219347(n)])`
-/

namespace A300972.P15091003158040939797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300972.P15091003158040939797

/-! ## A300972.P2715553242687944157

`A300973(eq[6, A193592(n)])`
-/

namespace A300972.P2715553242687944157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300972.P2715553242687944157

/-!
# A300973: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300973, there is no canonical definition to state claims against.
-/

/-! ## A300973.P11898976653284832455

`A300546(n+1)+A016389(A086645(n))`
-/

namespace A300973.P11898976653284832455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (n + 1) + A016389 (A086645 n).toNat

end

end A300973.P11898976653284832455

/-! ## A300973.P2668734633541428820

`A300546(n+1)+A007814(A157156(n))`
-/

namespace A300973.P2668734633541428820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (n + 1) + A007814 (A157156 n).toNat

end

end A300973.P2668734633541428820

/-! ## A300973.P2197351846037923238

`A300546(n+1)+A060510(A131070(n))`
-/

namespace A300973.P2197351846037923238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (n + 1) + A060510 (A131070 n).toNat

end

end A300973.P2197351846037923238

/-! ## A300973.P13637505277042925248

`A300546(n+1)+A011695(A347811(n))`
-/

namespace A300973.P13637505277042925248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (n + 1) + A011695 (A347811 n).toNat

end

end A300973.P13637505277042925248

/-! ## A300973.P8250893007446403687

`A300546(n+1)-A016389(A022166(n))`
-/

namespace A300973.P8250893007446403687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (n + 1) - A016389 (A022166 n).toNat

end

end A300973.P8250893007446403687

/-!
# A300974: a(n) = [x^n] Product_{k>=1} 1/(1 - x^(k^2))^n.

The programs for A300974, there is no canonical definition to state claims against.
-/

/-! ## A300974.P17893961888562740780

`A254667(A000984(n))-A005725(n)`
-/

namespace A300974.P17893961888562740780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A000984 n).toNat - A005725 n

end

end A300974.P17893961888562740780

/-! ## A300974.P5601709330996361038

`A097992(A326212(n+1))`
-/

namespace A300974.P5601709330996361038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A326212 (n + 1)).toNat

end

end A300974.P5601709330996361038

/-! ## A300974.P16028913783147750901

`A256502(A257838(n)+1)`
-/

namespace A300974.P16028913783147750901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A257838 n + 1).toNat

end

end A300974.P16028913783147750901

/-!
# A300975: a(n) = [x^n] Product_{k>=1} 1/(1 - x^(k^3))^n.

The programs for A300975, there is no canonical definition to state claims against.
-/

/-! ## A300975.P3766252697134721251

`A184945(A000045(n))+A088218(n)`
-/

namespace A300975.P3766252697134721251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184945 (A000045 n).toNat + A088218 n

end

end A300975.P3766252697134721251

/-! ## A300975.P17125228969242665667

`A254605(A048855(n))+A088218(n)`
-/

namespace A300975.P17125228969242665667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254605 (A048855 n).toNat + A088218 n

end

end A300975.P17125228969242665667

/-! ## A300975.P13474942306261301406

`A088218(n)+A037035(A309861(n))`
-/

namespace A300975.P13474942306261301406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n + A037035 (A309861 n).toNat

end

end A300975.P13474942306261301406

/-! ## A300975.P16760084273652921140

`A004277(A088218(n))-A318115(n)`
-/

namespace A300975.P16760084273652921140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A088218 n).toNat - A318115 n

end

end A300975.P16760084273652921140

/-!
# A300977: Number of partitions of n into parts having the same number of divisors as n.

The programs for A300977, there is no canonical definition to state claims against.
-/

/-! ## A300977.P17399186373734618951

`A300982(n)-A083025(A257493(2*n+3))`
-/

namespace A300977.P17399186373734618951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300982 n - A083025 (A257493 (2 * n + 3)).toNat

end

end A300977.P17399186373734618951

/-! ## A300977.P17740289253707401534

`gcd(A226628(n+1), A243113(A121720(n+1)))`
-/

namespace A300977.P17740289253707401534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A226628 (n + 1)) (A243113 (A121720 (n + 1)).toNat)

end

end A300977.P17740289253707401534

/-! ## A300977.P17093329206685089283

`A130822(A301331(n))`
-/

namespace A300977.P17093329206685089283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130822 (A301331 n).toNat

end

end A300977.P17093329206685089283

/-! ## A300977.P17382675358864849717

`A306227(A301331(n)²)`
-/

namespace A300977.P17382675358864849717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306227 (A301331 n ^ 2).toNat

end

end A300977.P17382675358864849717

/-! ## A300977.P7394330774088139635

`A034463(A301331(n)+1)`
-/

namespace A300977.P7394330774088139635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (A301331 n + 1).toNat

end

end A300977.P7394330774088139635

/-!
# A300978: Number of partitions of n into distinct parts having the same number of divisors as n.

The programs for A300978, there is no canonical definition to state claims against.
-/

/-! ## A300978.P826709256146682387

`A005087(5*A301331(n))`
-/

namespace A300978.P826709256146682387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (5 * A301331 n).toNat

end

end A300978.P826709256146682387

/-! ## A300978.P14819537890204124146

`A005087(lcm(5, A301331(n)))`
-/

namespace A300978.P14819537890204124146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (Int.lcm 5 (A301331 n))

end

end A300978.P14819537890204124146

/-! ## A300978.P603817344624301592

`A001221(A106609(5*A301331(n)))`
-/

namespace A300978.P603817344624301592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A106609 (5 * A301331 n).toNat).toNat

end

end A300978.P603817344624301592

/-! ## A300978.P9981812940602612968

`A020639(gcd(A190611(n), A218543(n)))`
-/

namespace A300978.P9981812940602612968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A190611 n) (A218543 n))

end

end A300978.P9981812940602612968

/-! ## A300978.P474459478347544943

`∑{e}[A106609(5*A301331(n)), A000045(#)]`
-/

namespace A300978.P474459478347544943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (5 * A301331 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p)

end

end A300978.P474459478347544943

/-!
# A300979: Number of partitions of n into parts having the same number of distinct prime divisors as n.

The programs for A300979, there is no canonical definition to state claims against.
-/

/-! ## A300979.P1346197055895253965

`gcd(A001057(A063699(n)), A059777(n))`
-/

namespace A300979.P1346197055895253965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001057 (A063699 n).toNat) (A059777 n)

end

end A300979.P1346197055895253965

/-!
# A300980: Number of partitions of n into distinct parts having the same number of distinct prime divisors as n.

The programs for A300980, there is no canonical definition to state claims against.
-/

/-! ## A300980.P5992468023477339297

`runs[C(A370461(3*(n+1)), A008287(3*n))]`
-/

namespace A300980.P5992468023477339297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A370461 (3 * (n + 1))).toNat (A008287 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A300980.P5992468023477339297

/-! ## A300980.P2881492412308071290

`gcd(A001222(A098615(n)), A103300(n))`
-/

namespace A300980.P2881492412308071290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A098615 n).toNat) (A103300 n)

end

end A300980.P2881492412308071290

/-! ## A300980.P10775797052104370126

`val(A316967(ceil(2^(n-1))), 2)`
-/

namespace A300980.P10775797052104370126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A316967 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat 2

end

end A300980.P10775797052104370126

/-! ## A300980.P9582024263366626908

`∏{e}[A196199(floor(2^(n-1))), #]`
-/

namespace A300980.P9582024263366626908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A300980.P9582024263366626908

/-! ## A300980.P16683757033110829309

`∏{e}[A003059(ceil(2^(n-1))), #]`
-/

namespace A300980.P16683757033110829309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A300980.P16683757033110829309

/-!
# A300982: Number of partitions of n into parts having the same number of prime divisors (counted with multiplicity) as n.

The programs for A300982, there is no canonical definition to state claims against.
-/

/-! ## A300982.P16809868643118539125

`∏{p}[A008554(n+1), A114372(#)]`
-/

namespace A300982.P16809868643118539125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A114372 p

end

end A300982.P16809868643118539125

/-! ## A300982.P10061632834419140844

`∏{p}[A167913(n+1), A000607(#)]`
-/

namespace A300982.P10061632834419140844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000607 p

end

end A300982.P10061632834419140844

/-! ## A300982.P8040846522865623185

`∏{p}[A167913(n+1), A114372(#)]`
-/

namespace A300982.P8040846522865623185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A114372 p

end

end A300982.P8040846522865623185

/-! ## A300982.P10714684794384671053

`∏{p}[A167913(n+1), A300977(#)]`
-/

namespace A300982.P10714684794384671053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A300977 p

end

end A300982.P10714684794384671053

/-! ## A300982.P8695404027062915294

`∏{p}[A033431(A195161(n)), A000607(#)]`
-/

namespace A300982.P8695404027062915294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (A195161 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000607 p

end

end A300982.P8695404027062915294

/-!
# A300983: Number of partitions of n into distinct parts having the same number of prime divisors (counted with multiplicity) as n.

The programs for A300983, there is no canonical definition to state claims against.
-/

/-! ## A300983.P9871219551794402126

`∏{p}[A016803(n), A000586(#)]`
-/

namespace A300983.P9871219551794402126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000586 p

end

end A300983.P9871219551794402126

/-! ## A300983.P12747854074816940389

`∏{p}[A219056(n), A000586(#)]`
-/

namespace A300983.P12747854074816940389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000586 p

end

end A300983.P12747854074816940389

/-! ## A300983.P14119282608666895081

`A300978(A006530(∏{d}[n, #]))`
-/

namespace A300983.P14119282608666895081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300978 (A006530 (∏ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A300983.P14119282608666895081

/-! ## A300983.P14053373882364401010

`∏{e}[A187941(n), A300978(#)]`
-/

namespace A300983.P14053373882364401010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A300978 (Nat.factorization (f1 n).natAbs p)

end

end A300983.P14053373882364401010

/-! ## A300983.P13935229768381009103

`A308188(A095062(n+1))`
-/

namespace A300983.P13935229768381009103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308188 (A095062 (n + 1)).toNat

end

end A300983.P13935229768381009103

/-!
# A300985: Number of isomorphism classes of n-elementary gammoids of rank 3.

The programs for A300985, there is no canonical definition to state claims against.
-/

/-! ## A300985.P10439568320673163170

`∑[A073188(A275753(n))-1]`
-/

namespace A300985.P10439568320673163170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A275753 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300985.P10439568320673163170

/-! ## A300985.P13941805057908215610

`A340763(A046721(n+2)-A000695(n))`
-/

namespace A300985.P13941805057908215610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (A046721 (n + 2) - A000695 n).toNat

end

end A300985.P13941805057908215610

/-!
# A300986: E.g.f. A(x) satisfies: [x^n] A(x)^(3*n) = (n + 2) * [x^(n-1)] A(x)^(3*n) for n>=1.

The programs for A300986, there is no canonical definition to state claims against.
-/

/-! ## A300986.P3766565895035554057

`A048103(3^C(n, 2))`
-/

namespace A300986.P3766565895035554057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (3 ^ Nat.choose n 2)

end

end A300986.P3766565895035554057

/-!
# A300987: O.g.f. A(x) satisfies: A(x) = x*(1 - 2*x*A'(x)) / (1 - 3*x*A'(x)).

The programs for A300987, there is no canonical definition to state claims against.
-/

/-! ## A300987.P5962349181337202780

`A345760(A000041(n))+A187827(n)`
-/

namespace A300987.P5962349181337202780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345760 (A000041 n).toNat + A187827 n

end

end A300987.P5962349181337202780

/-! ## A300987.P6235638481681836955

`A282897(A216583(n)+A185118(n+3))`
-/

namespace A300987.P6235638481681836955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282897 (A216583 n + A185118 (n + 3)).toNat

end

end A300987.P6235638481681836955

/-!
# A300988: E.g.f. A(x) satisfies: [x^n] A(x)^(4*n) = (n + 3) * [x^(n-1)] A(x)^(4*n) for n>=1.

The programs for A300988, there is no canonical definition to state claims against.
-/

/-! ## A300988.P13501712406427741688

`A026139(lcm(2^(n-1), a(n-1)))` with `a(0)=1`
-/

namespace A300988.P13501712406427741688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026139 (Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1)))

end

end A300988.P13501712406427741688

/-!
# A300989: O.g.f. A(x) satisfies: A(x) = x*(1 - 3*x*A'(x)) / (1 - 4*x*A'(x)).

The programs for A300989, there is no canonical definition to state claims against.
-/

/-! ## A300989.P2157239371874908040

`A028310(A216794(n)-A072034(n))`
-/

namespace A300989.P2157239371874908040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A216794 n - A072034 n).toNat

end

end A300989.P2157239371874908040

/-! ## A300989.P1218766360180353622

`A028310(ceil(A162314(n)/2)-A072034(n))`
-/

namespace A300989.P1218766360180353622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (⌈(A162314 n : ℚ) / 2⌉ - A072034 n).toNat

end

end A300989.P1218766360180353622

/-!
# A300990: E.g.f. A(x) satisfies: [x^n] A(x)^(5*n) = (n+4) * [x^(n-1)] A(x)^(5*n) for n>=1.

The programs for A300990, there is no canonical definition to state claims against.
-/

/-! ## A300990.P10294041491212474914

`A275335(A320415(n)²)`
-/

namespace A300990.P10294041491212474914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275335 (A320415 n ^ 2).toNat

end

end A300990.P10294041491212474914

/-!
# A300991: O.g.f. A(x) satisfies: A(x) = x * (1 - 4*x*A'(x)) / (1 - 5*x*A'(x)).

The programs for A300991, there is no canonical definition to state claims against.
-/

/-! ## A300991.P15137376371203066965

`A343389((1-2*n)²)-char[3]`
-/

namespace A300991.P15137376371203066965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343389 ((1 - (2 * n : ℤ)) ^ 2).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300991.P15137376371203066965

/-!
# A300992: E.g.f. A(x) satisfies: [x^n] A(x)^(6*n) = (n+5) * [x^(n-1)] A(x)^(6*n) for n>=1.

The programs for A300992, there is no canonical definition to state claims against.
-/

/-! ## A300992.P18183419740438706089

`A320045(A320957(n)²)`
-/

namespace A300992.P18183419740438706089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320045 (A320957 n ^ 2).toNat

end

end A300992.P18183419740438706089

/-!
# A300993: O.g.f. A(x) satisfies: A(x) = x * (1 - 5*x*A'(x)) / (1 - 6*x*A'(x)).

The programs for A300993, there is no canonical definition to state claims against.
-/

/-! ## A300993.P4690776816250765288

`A093006(A026641(n))`
-/

namespace A300993.P4690776816250765288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093006 (A026641 n).toNat

end

end A300993.P4690776816250765288

/-!
# A300994: G.f. A(x) satisfies: [x^n] A(x)^n / (x*A(x))' = 0 for n > 1.

The programs for A300994, there is no canonical definition to state claims against.
-/

/-! ## A300994.P654104391695573384

`A005229(A001063(n))`
-/

namespace A300994.P654104391695573384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (A001063 n).toNat

end

end A300994.P654104391695573384

/-! ## A300994.P8417005939049236910

`A008620(A263358(∑[n]))`
-/

namespace A300994.P8417005939049236910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A263358 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A300994.P8417005939049236910

/-! ## A300994.P940587299541753449

`A081753(n²*A322140(n))`
-/

namespace A300994.P940587299541753449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 ((n ^ 2 : ℤ) * A322140 n).toNat

end

end A300994.P940587299541753449

/-!
# A300995: G.f. A(x) satisfies: [x^n] A(x)^(n*(n+1)) / (x*A(x)^(n+1))' = 0 for n>1.

The programs for A300995, there is no canonical definition to state claims against.
-/

/-! ## A300995.P14259977457146653019

`A056536(∑[round(sqrt(n))]!)`
-/

namespace A300995.P14259977457146653019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056536 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A300995.P14259977457146653019

/-!
# A300996: Total sum of half the difference between the area above and the area below the path, measured within the smallest enclosing rectangle based on the x-axis, in all Dyck paths of semilength n.

The programs for A300996, there is no canonical definition to state claims against.
-/

/-! ## A300996.P11639136955888742065

`A054899(A149681(n))`
-/

namespace A300996.P11639136955888742065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A149681 n).toNat

end

end A300996.P11639136955888742065

/-! ## A300996.P4271381905128586180

`A054899(A185325(∑[n+4])-n)`
-/

namespace A300996.P4271381905128586180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A185325 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)).toNat

end

end A300996.P4271381905128586180

/-! ## A300996.P1912015870549333658

`A064458(A083691(n)-A000055(n))`
-/

namespace A300996.P1912015870549333658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A083691 n - A000055 n).toNat

end

end A300996.P1912015870549333658

/-! ## A300996.P14911773801734596437

`A064458(A083691(n)-A274938(n))`
-/

namespace A300996.P14911773801734596437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A083691 n - A274938 n).toNat

end

end A300996.P14911773801734596437

/-!
# A300997: a(n) is the number of steps needed to reach a stable configuration in the 1D cellular automaton initialized with one cell with mass n and based on the rule "each cell gives half of its mass, rounded down, to its right neighbor".

The programs for A300997, there is no canonical definition to state claims against.
-/

/-! ## A300997.P6890548863345778908

`lt[A118800(n+3), A280052(A153006(3*(n+1)))]`
-/

namespace A300997.P6890548863345778908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118800 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280052 (A153006 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300997.P6890548863345778908

/-! ## A300997.P12753436239861621014

`lt[A123319(n+3), A119502(A027709(n+2))]`
-/

namespace A300997.P12753436239861621014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123319 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A027709 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300997.P12753436239861621014

/-! ## A300997.P1955640299844164676

`lt[A123319(n+3), A050112(A121885(n+7))]`
-/

namespace A300997.P1955640299844164676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123319 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050112 (A121885 (n + 7)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300997.P1955640299844164676

/-! ## A300997.P2987217427465051852

`lt[A204128(n+3), A060118(A059759(n+1))]`
-/

namespace A300997.P2987217427465051852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204128 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060118 (A059759 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300997.P2987217427465051852

/-! ## A300997.P8719186215974309285

`lt[A103361(n+3), A278518(A013929(n+1))]`
-/

namespace A300997.P8719186215974309285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103361 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278518 (A013929 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300997.P8719186215974309285

/-!
# A300998: Number of close American football games: number of ways for the game to end after n points have been scored and never be separated by more than one score after each play.

The programs for A300998, there is no canonical definition to state claims against.
-/

/-! ## A300998.P6571035738210009285

`Δ[Δ[A001462(A261237(n))]]`
-/

namespace A300998.P6571035738210009285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A261237 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A300998.P6571035738210009285

/-! ## A300998.P7752387945691674977

`and(2^n-2, A003059(A026898(n)))`
-/

namespace A300998.P7752387945691674977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 ^ n : ℤ) - 2) (A003059 (A026898 n).toNat)

end

end A300998.P7752387945691674977

/-! ## A300998.P13754916991014481330

`and(2^n-2, A003059(A003101(n)+1))`
-/

namespace A300998.P13754916991014481330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 ^ n : ℤ) - 2) (A003059 (A003101 n + 1).toNat)

end

end A300998.P13754916991014481330

/-!
# A300999: Add to a(n) the first digit of a(n+1) to get a(n+2), with a(1) = 1 and a(2) = 2.

The programs for A300999, the canonical program `A300999.P4441876574690506784` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300999 has offset 1).

The definition of A300999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300999.P4441876574690506784

`A000030(a(n-1))+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A300999

/-- `A000030(a(n-1))+a(n-2)` -/
def P4441876574690506784.Spec : Prop :=
  ∀ n, P4441876574690506784.a n = A300999 (n + 1)

theorem P4441876574690506784.correct : P4441876574690506784.Spec := by
  intro n
  simp only [A300999, Nat.add_sub_cancel]

end A300999

