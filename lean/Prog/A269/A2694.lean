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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
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
# A269400: Number of ordered ways to write n as w^2 + x^2 + y^2 + z^2 with 6*w^2*x^2 + 12*x^2*y^2 + 52*y^2*z^2 + 27*z^2*w^2 a square, where w,x,y are nonnegative integers and z is a positive integer.

The programs for A269400, there is no canonical definition to state claims against.
-/

/-! ## A269400.P5414000021484231772

`A231813(xor(A014681(n), A232955(n+1)))`
-/

namespace A269400.P5414000021484231772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (Int.xor (A014681 n) (A232955 (n + 1))).toNat

end

end A269400.P5414000021484231772

/-!
# A269401: Permutation of natural numbers: a(1) = 1, a(A179016(1+n)) = 2*a(n), a(A213713(n)) = 1 + 2*a(n), where A179016 is the infinite trunk of binary beanstalk and A213713 is its complement.

The programs for A269401, there is no canonical definition to state claims against.
-/

/-! ## A269401.P6894092163529376428

`A269391(A269398(n+1))`
-/

namespace A269401.P6894092163529376428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269391 (A269398 (n + 1)).toNat

end

end A269401.P6894092163529376428

/-! ## A269401.P13560329420522237829

`A003188(lt[A296159(n+1), n])`
-/

namespace A269401.P13560329420522237829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296159 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A269401.P13560329420522237829

/-! ## A269401.P699259295802540825

`A003188(lt[A320348(n+1), n+1])`
-/

namespace A269401.P699259295802540825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320348 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A269401.P699259295802540825

/-! ## A269401.P1477538462421697016

`A003188(lt[A007690(n), A034448(n+1)])`
-/

namespace A269401.P1477538462421697016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007690 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A269401.P1477538462421697016

/-! ## A269401.P12795599079277689322

`A003188(lt[A054907(n), A007413(n+1)])`
-/

namespace A269401.P12795599079277689322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A269401.P12795599079277689322

/-!
# A269402: Permutation of natural numbers: a(1) = 1, a(2n) = A179016(1+a(n)), a(2n+1) = A213713(a(n)).

The programs for A269402, there is no canonical definition to state claims against.
-/

/-! ## A269402.P4555485843143476324

`A269397(A269392(n+1))`
-/

namespace A269402.P4555485843143476324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269397 (A269392 (n + 1)).toNat

end

end A269402.P4555485843143476324

/-!
# A269403: Expansion of x*(2 - x + 2*x^2 + x^3)/((1 - x)^3*(1 + x + x^2 + x^3)).

The programs for A269403, the canonical program `A269403.P14476150001914930723` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269403 has offset 0).

The definition of A269403 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x-x^2+2x^3+x^4)/(1-2x+x^2-x^4+2x^5-x^6))` (program `A269403.P14476150001914930723`, by `A269403.P14476150001914930723.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269403.P14476150001914930723

`ogf((2x-x^2+2x^3+x^4)/(1-2x+x^2-x^4+2x^5-x^6))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269403

/-- `ogf((2x-x^2+2x^3+x^4)/(1-2x+x^2-x^4+2x^5-x^6))` -/
def P14476150001914930723.Spec : Prop :=
  ∀ n, P14476150001914930723.a n = A269403 n

theorem P14476150001914930723.correct : P14476150001914930723.Spec := by
  intro n
  simp only [A269403]

end A269403

/-! ## A269403.P3616215563859346854

`(2*n²+2*n+2*sin(π*n/2)-(-1)^n+1)/4`
-/

namespace A269403.P3616215563859346854
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 2 + 2 * n : ℝ) + 2 * Real.sin (Real.pi * (n : ℝ) / 2) - ((-1) ^ n : ℝ) + 1) / 4

end

end A269403.P3616215563859346854

namespace A269403

/-- `(2*n²+2*n+2*sin(π*n/2)-(-1)^n+1)/4` -/
def P3616215563859346854.Spec : Prop :=
  ∀ n, P3616215563859346854.a n = (A269403 n : ℝ)

end A269403

/-! ## A269403.P12302437823632036260

`2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=6, a(4)=10, a(5)=16`
-/

namespace A269403.P12302437823632036260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 6, 10, 16] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 4) - 2 * a (n - 5) + a (n - 6)

end

end A269403.P12302437823632036260

namespace A269403

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P12302437823632036260.Spec : Prop :=
  ∀ n, P12302437823632036260.a n = A269403 n

end A269403

/-! ## A269403.P4321309271313587248

`∑[n]+∑[∑[n]]%2`
-/

namespace A269403.P4321309271313587248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) % 2

end

end A269403.P4321309271313587248

namespace A269403

/-- `∑[n]+∑[∑[n]]%2` -/
def P4321309271313587248.Spec : Prop :=
  ∀ n, (P4321309271313587248.a n : ℤ) = A269403 n

end A269403

/-! ## A269403.P7782041686092941796

`∑[n]+and(1, ∑[∑[n]])`
-/

namespace A269403.P7782041686092941796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A269403.P7782041686092941796

namespace A269403

/-- `∑[n]+and(1, ∑[∑[n]])` -/
def P7782041686092941796.Spec : Prop :=
  ∀ n, (P7782041686092941796.a n : ℤ) = A269403 n

end A269403

/-! ## A269403.P7101478105475160847

`or(n%2, C(n, 2))+n`
-/

namespace A269403.P7101478105475160847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n % 2) (Nat.choose n 2) + n

end

end A269403.P7101478105475160847

namespace A269403

/-- `or(n%2, C(n, 2))+n` -/
def P7101478105475160847.Spec : Prop :=
  ∀ n, (P7101478105475160847.a n : ℤ) = A269403 n

end A269403

/-! ## A269403.P12917891437047199542

`or(C(n, 2), and(1, n))+n`
-/

namespace A269403.P12917891437047199542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.choose n 2) (Nat.land 1 n) + n

end

end A269403.P12917891437047199542

namespace A269403

/-- `or(C(n, 2), and(1, n))+n` -/
def P12917891437047199542.Spec : Prop :=
  ∀ n, (P12917891437047199542.a n : ℤ) = A269403 n

end A269403

/-! ## A269403.P4683014000375019918

`char[4*n+1]+∑[n]`
-/

namespace A269403.P4683014000375019918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A269403.P4683014000375019918

namespace A269403

/-- `char[4*n+1]+∑[n]` -/
def P4683014000375019918.Spec : Prop :=
  ∀ n, (P4683014000375019918.a n : ℤ) = A269403 n

end A269403

/-! ## A269403.P1107130303426502739

`∑[xor(n, 3*∑[n]%2)]`
-/

namespace A269403.P1107130303426502739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (3 * ((∑ j ∈ Finset.range (n + 1), f2 j) % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269403.P1107130303426502739

namespace A269403

/-- `∑[xor(n, 3*∑[n]%2)]` -/
def P1107130303426502739.Spec : Prop :=
  ∀ n, (P1107130303426502739.a n : ℤ) = A269403 n

end A269403

/-! ## A269403.P2891010730512874217

`∑[a(n-4)+4]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A269403.P2891010730512874217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 3] fun n f1 =>
  f1 (n - 4) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269403.P2891010730512874217

namespace A269403

/-- `∑[a(n-4)+4]` -/
def P2891010730512874217.Spec : Prop :=
  ∀ n, (P2891010730512874217.a n : ℤ) = A269403 n

end A269403

/-! ## A269403.P11996609930028107521

`∑[∑[floor(a(n-4))]]` with `a(0)=0, a(1)=2, a(2)=-1, a(3)=2, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A269403.P11996609930028107521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, -1, 2, 1] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269403.P11996609930028107521

namespace A269403

/-- `∑[∑[floor(a(n-4))]]` -/
def P11996609930028107521.Spec : Prop :=
  ∀ n, P11996609930028107521.a n = A269403 n

end A269403

/-! ## A269403.P16773280839096602976

`∑[∑[2-gcd(n+2, n-2)]+n]`
-/

namespace A269403.P16773280839096602976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 2) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269403.P16773280839096602976

namespace A269403

/-- `∑[∑[2-gcd(n+2, n-2)]+n]` -/
def P16773280839096602976.Spec : Prop :=
  ∀ n, P16773280839096602976.a n = A269403 n

end A269403

/-! ## A269403.P11516474979451712603

`∑[2-((-1)^a(n-2)-a(n-2))]` with `a(0)=0, a(1)=2`
-/

namespace A269403.P11516474979451712603
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 - ((-1 : ℝ) ^ (f1 (n - 2)) - f1 (n - 2))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269403.P11516474979451712603

namespace A269403

/-- `∑[2-((-1)^a(n-2)-a(n-2))]` -/
def P11516474979451712603.Spec : Prop :=
  ∀ n, P11516474979451712603.a n = (A269403 n : ℝ)

end A269403

/-! ## A269403.P9806948875176674201

`∑[A080412(n)]`
-/

namespace A269403.P9806948875176674201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269403.P9806948875176674201

namespace A269403

/-- `∑[A080412(n)]` -/
def P9806948875176674201.Spec : Prop :=
  ∀ n, P9806948875176674201.a n = A269403 n

end A269403

/-! ## A269403.P5223020629864303069

`∑[A116966(n)-1]`
-/

namespace A269403.P5223020629864303069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269403.P5223020629864303069

namespace A269403

/-- `∑[A116966(n)-1]` -/
def P5223020629864303069.Spec : Prop :=
  ∀ n, P5223020629864303069.a n = A269403 n

end A269403

/-! ## A269403.P14671813066984864209

`∑[xor(1, xor(n, A014695(n)))]`
-/

namespace A269403.P14671813066984864209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor (n : ℤ) (A014695 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269403.P14671813066984864209

namespace A269403

/-- `∑[xor(1, xor(n, A014695(n)))]` -/
def P14671813066984864209.Spec : Prop :=
  ∀ n, P14671813066984864209.a n = A269403 n

end A269403

/-! ## A269403.P2526505458771268369

`∑[2-A157810(n+1)+n]`
-/

namespace A269403.P2526505458771268369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A157810 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269403.P2526505458771268369

namespace A269403

/-- `∑[2-A157810(n+1)+n]` -/
def P2526505458771268369.Spec : Prop :=
  ∀ n, P2526505458771268369.a n = A269403 n

end A269403

/-! ## A269403.P16900958308853119652

`∑[A133256(n+2)-2]`
-/

namespace A269403.P16900958308853119652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269403.P16900958308853119652

namespace A269403

/-- `∑[A133256(n+2)-2]` -/
def P16900958308853119652.Spec : Prop :=
  ∀ n, P16900958308853119652.a n = A269403 n

end A269403

/-! ## A269403.P3346212230647097662

`∑[n-A102560(n+2)]`
-/

namespace A269403.P3346212230647097662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A102560 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269403.P3346212230647097662

namespace A269403

/-- `∑[n-A102560(n+2)]` -/
def P3346212230647097662.Spec : Prop :=
  ∀ n, P3346212230647097662.a n = A269403 n

end A269403

/-! ## A269403.P12458866958495053425

`∑[A140081(n+2)+n-1]`
-/

namespace A269403.P12458866958495053425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 (n + 2) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269403.P12458866958495053425

namespace A269403

/-- `∑[A140081(n+2)+n-1]` -/
def P12458866958495053425.Spec : Prop :=
  ∀ n, P12458866958495053425.a n = A269403 n

end A269403

/-!
# A269405: Number of length-n 0..4 arrays with no repeated value greater than or equal to the previous repeated value.

The programs for A269405, there is no canonical definition to state claims against.
-/

/-! ## A269405.P18372879386151789562

`A269409(∑[n+4]+3)`
-/

namespace A269405.P18372879386151789562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A269405.P18372879386151789562

/-! ## A269405.P3493986627533521139

`lcm(A087960(n), A269409(A027379(n+2)))`
-/

namespace A269405.P3493986627533521139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A269409 (A027379 (n + 2)).toNat)

end

end A269405.P3493986627533521139

/-! ## A269405.P10943673712617164173

`or(A025465(n), A269409(A027379(n+2)))`
-/

namespace A269405.P10943673712617164173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025465 n) (A269409 (A027379 (n + 2)).toNat)

end

end A269405.P10943673712617164173

/-! ## A269405.P13562800091476424155

`A269409(A027379(n+2))%A269638(n+1)`
-/

namespace A269405.P13562800091476424155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269409 (A027379 (n + 2)).toNat) (A269638 (n + 1))

end

end A269405.P13562800091476424155

/-! ## A269405.P9089553980740391867

`A019429(A062355(2*(n+1)+1))*A269409(A027379(n+2))`
-/

namespace A269405.P9089553980740391867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (A062355 (2 * (n + 1) + 1)).toNat * A269409 (A027379 (n + 2)).toNat

end

end A269405.P9089553980740391867

/-!
# A269406: Number of length-n 0..5 arrays with no repeated value greater than or equal to the previous repeated value.

The programs for A269406, there is no canonical definition to state claims against.
-/

/-! ## A269406.P13536852801334694336

`A269409(A046691(n+3))`
-/

namespace A269406.P13536852801334694336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A046691 (n + 3)).toNat

end

end A269406.P13536852801334694336

/-! ## A269406.P14387311051779478482

`A269409(Δ[A023545(n+1)])`
-/

namespace A269406.P14387311051779478482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (f1 (n + 1) - f1 n).toNat

end

end A269406.P14387311051779478482

/-! ## A269406.P18205686084390439922

`A269409(A052905(n+2)+1)`
-/

namespace A269406.P18205686084390439922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A052905 (n + 2) + 1).toNat

end

end A269406.P18205686084390439922

/-! ## A269406.P3057388893988521815

`A269409(A027379(n+3)-1)`
-/

namespace A269406.P3057388893988521815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A027379 (n + 3) - 1).toNat

end

end A269406.P3057388893988521815

/-! ## A269406.P5801157093051639427

`A269409(A000124(n+5)-5)`
-/

namespace A269406.P5801157093051639427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A000124 (n + 5) - 5).toNat

end

end A269406.P5801157093051639427

/-! ## A269406.P11741020236370226613

`A269409(A238531(n+5)-A024000(n))`
-/

namespace A269406.P11741020236370226613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A238531 (n + 5) - A024000 n).toNat

end

end A269406.P11741020236370226613

/-! ## A269406.P18083229914473405528

`A269409(A167614(n+2)+A005843(n+1))`
-/

namespace A269406.P18083229914473405528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A167614 (n + 2) + A005843 (n + 1)).toNat

end

end A269406.P18083229914473405528

/-!
# A269407: Number of length-n 0..6 arrays with no repeated value greater than or equal to the previous repeated value.

The programs for A269407, there is no canonical definition to state claims against.
-/

/-! ## A269407.P18381317718617656144

`A269409(A052905(n+3))`
-/

namespace A269407.P18381317718617656144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A052905 (n + 3)).toNat

end

end A269407.P18381317718617656144

/-! ## A269407.P17940237194494528120

`A269409(A027379(n+4)-2)`
-/

namespace A269407.P17940237194494528120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A027379 (n + 4) - 2).toNat

end

end A269407.P17940237194494528120

/-! ## A269407.P17694077770453471397

`A269409(A000124(n+6)-6)`
-/

namespace A269407.P17694077770453471397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A000124 (n + 6) - 6).toNat

end

end A269407.P17694077770453471397

/-! ## A269407.P3954876137964934539

`A269409(Δ[A023545(n+2)]-1)`
-/

namespace A269407.P3954876137964934539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (f1 (n + 1) - f1 n - 1).toNat

end

end A269407.P3954876137964934539

/-! ## A269407.P12498238574454132256

`A269409(A238531(n+6)-A024000(n))`
-/

namespace A269407.P12498238574454132256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A238531 (n + 6) - A024000 n).toNat

end

end A269407.P12498238574454132256

/-! ## A269407.P11921996435610167365

`A269409(A238531(n+3)+A004767(n+2))`
-/

namespace A269407.P11921996435610167365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A238531 (n + 3) + A004767 (n + 2)).toNat

end

end A269407.P11921996435610167365

/-!
# A269408: Number of length-n 0..7 arrays with no repeated value greater than or equal to the previous repeated value.

The programs for A269408, there is no canonical definition to state claims against.
-/

/-! ## A269408.P249438975120171357

`A269409(A055999(n+4))`
-/

namespace A269408.P249438975120171357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A055999 (n + 4)).toNat

end

end A269408.P249438975120171357

/-! ## A269408.P7670758577281778117

`A269409(A052905(n+4)-1)`
-/

namespace A269408.P7670758577281778117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A052905 (n + 4) - 1).toNat

end

end A269408.P7670758577281778117

/-! ## A269408.P2936490789482868115

`A269409(A027379(n+5)-3)`
-/

namespace A269408.P2936490789482868115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A027379 (n + 5) - 3).toNat

end

end A269408.P2936490789482868115

/-! ## A269408.P7748257639896660435

`A269409(A000124(n+7)-7)`
-/

namespace A269408.P7748257639896660435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A000124 (n + 7) - 7).toNat

end

end A269408.P7748257639896660435

/-! ## A269408.P13039390808012547325

`A269409(A238531(n+7)-A024000(n))`
-/

namespace A269408.P13039390808012547325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A238531 (n + 7) - A024000 n).toNat

end

end A269408.P13039390808012547325

/-! ## A269408.P2621135126712221406

`A269409(A167499(n+3)+A016777(n+2))`
-/

namespace A269408.P2621135126712221406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A167499 (n + 3) + A016777 (n + 2)).toNat

end

end A269408.P2621135126712221406

/-! ## A269408.P14525197207544466328

`A269409(A167614(n+4)+A005843(n+2))`
-/

namespace A269408.P14525197207544466328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A167614 (n + 4) + A005843 (n + 2)).toNat

end

end A269408.P14525197207544466328

/-!
# A269409: T(n,k)=Number of length-n 0..k arrays with no repeated value greater than or equal to the previous repeated value.

The programs for A269409, there is no canonical definition to state claims against.
-/

/-! ## A269409.P18140315320606895692

`A269640(n+1)+A033483(A208673(n))`
-/

namespace A269409.P18140315320606895692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (n + 1) + A033483 (A208673 n).toNat

end

end A269409.P18140315320606895692

/-! ## A269409.P13503822748114252857

`A269640(n+1)+A033483(A238010(n))`
-/

namespace A269409.P13503822748114252857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (n + 1) + A033483 (A238010 n).toNat

end

end A269409.P13503822748114252857

/-! ## A269409.P17317089213313583820

`A269640(n+1)+A185238(A098446(n))`
-/

namespace A269409.P17317089213313583820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (n + 1) + A185238 (A098446 n).toNat

end

end A269409.P17317089213313583820

/-! ## A269409.P14206623528411987595

`A269640(n+1)+A025465(A355007(n))`
-/

namespace A269409.P14206623528411987595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (n + 1) + A025465 (A355007 n).toNat

end

end A269409.P14206623528411987595

/-! ## A269409.P15511507980286625964

`A269640(n+1)+A184993(A341981(n))`
-/

namespace A269409.P15511507980286625964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (n + 1) + A184993 (A341981 (n + 101)).toNat

end

end A269409.P15511507980286625964

/-!
# A269410: Number of length-4 0..n arrays with no repeated value greater than or equal to the previous repeated value.

The programs for A269410, the canonical program `A269410.P13250916374159938660` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269410 has offset 1).

The definition of A269410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269410.P13250916374159938660

`∑[∑[12*(n+1)²-3]]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269410

/-- `∑[∑[12*(n+1)²-3]]` -/
def P13250916374159938660.Spec : Prop :=
  ∀ n, P13250916374159938660.a n = A269410 (n + 1)

theorem P13250916374159938660.correct : P13250916374159938660.Spec := by
  intro n
  simp only [A269410, Nat.add_sub_cancel]

end A269410

/-! ## A269410.P1031630999614099856

`record[(1-(2-n)²)²]-∑[n]`
-/

namespace A269410.P1031630999614099856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 - (n : ℤ)) ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A269410.P1031630999614099856

namespace A269410

/-- `record[(1-(2-n)²)²]-∑[n]` -/
def P1031630999614099856.Spec : Prop :=
  ∀ n, P1031630999614099856.a n = A269410 (n + 1)

end A269410

/-! ## A269410.P6001524763720741686

`(1-(n+2)²)²-C(n+1, 2)`
-/

namespace A269410.P6001524763720741686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((n + 2) ^ 2 : ℤ)) ^ 2 - (Nat.choose (n + 1) 2 : ℤ)

end

end A269410.P6001524763720741686

namespace A269410

/-- `(1-(n+2)²)²-C(n+1, 2)` -/
def P6001524763720741686.Spec : Prop :=
  ∀ n, P6001524763720741686.a n = A269410 (n + 1)

end A269410

/-! ## A269410.P5954669199303213591

`or(1, ∑[4*(n+2)])*∑[n+1]`
-/

namespace A269410.P5954669199303213591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A269410.P5954669199303213591

namespace A269410

/-- `or(1, ∑[4*(n+2)])*∑[n+1]` -/
def P5954669199303213591.Spec : Prop :=
  ∀ n, (P5954669199303213591.a n : ℤ) = A269410 (n + 1)

end A269410

/-! ## A269410.P11761081196882147025

`3*∑[∑[∑[ogf((3+6x-x^2)/(1-2x+x^2))]]]`
-/

namespace A269410.P11761081196882147025
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, -1] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269410.P11761081196882147025

namespace A269410

/-- `3*∑[∑[∑[ogf((3+6x-x^2)/(1-2x+x^2))]]]` -/
def P11761081196882147025.Spec : Prop :=
  ∀ n, P11761081196882147025.a n = A269410 (n + 1)

end A269410

/-! ## A269410.P2712309061805738253

`3*∑[∑[lcm(2*n+1, 2*n+3)]]`
-/

namespace A269410.P2712309061805738253
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269410.P2712309061805738253

namespace A269410

/-- `3*∑[∑[lcm(2*n+1, 2*n+3)]]` -/
def P2712309061805738253.Spec : Prop :=
  ∀ n, (P2712309061805738253.a n : ℤ) = A269410 (n + 1)

end A269410

/-! ## A269410.P2637520731666375554

`A269468(n+1)-∑[n+1]`
-/

namespace A269410.P2637520731666375554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269468 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A269410.P2637520731666375554

namespace A269410

/-- `A269468(n+1)-∑[n+1]` -/
def P2637520731666375554.Spec : Prop :=
  ∀ n, P2637520731666375554.a n = A269410 (n + 1)

end A269410

/-! ## A269410.P13693974962377415173

`A269538(n+1)+∑[n-1]`
-/

namespace A269410.P13693974962377415173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269538 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269410.P13693974962377415173

namespace A269410

/-- `A269538(n+1)+∑[n-1]` -/
def P13693974962377415173.Spec : Prop :=
  ∀ n, P13693974962377415173.a n = A269410 (n + 1)

end A269410

/-! ## A269410.P4471614365774154108

`A269607(n+1)+∑[1-n]`
-/

namespace A269410.P4471614365774154108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269607 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269410.P4471614365774154108

namespace A269410

/-- `A269607(n+1)+∑[1-n]` -/
def P4471614365774154108.Spec : Prop :=
  ∀ n, P4471614365774154108.a n = A269410 (n + 1)

end A269410

/-! ## A269410.P2986174962646621656

`∑[A144396(n+1)]²-∑[n]`
-/

namespace A269410.P2986174962646621656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A269410.P2986174962646621656

namespace A269410

/-- `∑[A144396(n+1)]²-∑[n]` -/
def P2986174962646621656.Spec : Prop :=
  ∀ n, P2986174962646621656.a n = A269410 (n + 1)

end A269410

/-! ## A269410.P8010630930920353580

`((n+2)²-1)²-A000217(n)`
-/

namespace A269410.P8010630930920353580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 : ℤ) - 1) ^ 2 - A000217 n

end

end A269410.P8010630930920353580

namespace A269410

/-- `((n+2)²-1)²-A000217(n)` -/
def P8010630930920353580.Spec : Prop :=
  ∀ n, P8010630930920353580.a n = A269410 (n + 1)

end A269410

/-! ## A269410.P3835429722507286466

`A269641(n+1)+A161680(n)`
-/

namespace A269410.P3835429722507286466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269641 (n + 1) + A161680 n

end

end A269410.P3835429722507286466

namespace A269410

/-- `A269641(n+1)+A161680(n)` -/
def P3835429722507286466.Spec : Prop :=
  ∀ n, P3835429722507286466.a n = A269410 (n + 1)

end A269410

/-! ## A269410.P16244513360193112009

`A152390(n)-A162262(n+1)`
-/

namespace A269410.P16244513360193112009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152390 n - A162262 (n + 1)

end

end A269410.P16244513360193112009

namespace A269410

/-- `A152390(n)-A162262(n+1)` -/
def P16244513360193112009.Spec : Prop :=
  ∀ n, P16244513360193112009.a n = A269410 (n + 1)

end A269410

/-! ## A269410.P6872671031450400782

`A024391(n+1)-A004255(n+1)`
-/

namespace A269410.P6872671031450400782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024391 (n + 1) - A004255 (n + 1)

end

end A269410.P6872671031450400782

namespace A269410

/-- `A024391(n+1)-A004255(n+1)` -/
def P6872671031450400782.Spec : Prop :=
  ∀ n, P6872671031450400782.a n = A269410 (n + 1)

end A269410

/-! ## A269410.P9222964620821978278

`A268458(n+1)-(A000096(n)+2)`
-/

namespace A269410.P9222964620821978278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268458 (n + 1) - (A000096 n + 2)

end

end A269410.P9222964620821978278

namespace A269410

/-- `A268458(n+1)-(A000096(n)+2)` -/
def P9222964620821978278.Spec : Prop :=
  ∀ n, P9222964620821978278.a n = A269410 (n + 1)

end A269410

/-! ## A269410.P6296088254823436770

`A253724(n+2)%A269436(n+1)`
-/

namespace A269410.P6296088254823436770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253724 (n + 2)) (A269436 (n + 1))

end

end A269410.P6296088254823436770

namespace A269410

/-- `A253724(n+2)%A269436(n+1)` -/
def P6296088254823436770.Spec : Prop :=
  ∀ n, P6296088254823436770.a n = A269410 (n + 1)

end A269410

/-! ## A269410.P4617586255894658867

`A000217(n+1)+A000096(n+1)*A046092(n+1)`
-/

namespace A269410.P4617586255894658867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A000096 (n + 1) * A046092 (n + 1)

end

end A269410.P4617586255894658867

namespace A269410

/-- `A000217(n+1)+A000096(n+1)*A046092(n+1)` -/
def P4617586255894658867.Spec : Prop :=
  ∀ n, P4617586255894658867.a n = A269410 (n + 1)

end A269410

/-! ## A269410.P11212032945695626377

`A099761(n+1)-∑[n]`
-/

namespace A269410.P11212032945695626377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099761 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A269410.P11212032945695626377

namespace A269410

/-- `A099761(n+1)-∑[n]` -/
def P11212032945695626377.Spec : Prop :=
  ∀ n, P11212032945695626377.a n = A269410 (n + 1)

end A269410

/-! ## A269410.P8222250113120616281

`A005563(n+1)²-∑[n]`
-/

namespace A269410.P8222250113120616281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1) ^ 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A269410.P8222250113120616281

namespace A269410

/-- `A005563(n+1)²-∑[n]` -/
def P8222250113120616281.Spec : Prop :=
  ∀ n, P8222250113120616281.a n = A269410 (n + 1)

end A269410

/-! ## A269410.P16412373669563952773

`∑[n+1]*A059993(n+1)`
-/

namespace A269410.P16412373669563952773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A059993 (n + 1)

end

end A269410.P16412373669563952773

namespace A269410

/-- `∑[n+1]*A059993(n+1)` -/
def P16412373669563952773.Spec : Prop :=
  ∀ n, P16412373669563952773.a n = A269410 (n + 1)

end A269410

/-!
# A269411: Number of length-5 0..n arrays with no repeated value greater than or equal to the previous repeated value.

The programs for A269411, the canonical program `A269411.P12250528922254136388` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269411 has offset 1).

The definition of A269411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269411.P12250528922254136388

`(n+1)^5+5*(n+1)^4+11*(n+1)^3/2+(n+1)²-(n+1)/2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269411

/-- `(n+1)^5+5*(n+1)^4+11*(n+1)^3/2+(n+1)²-(n+1)/2` -/
def P12250528922254136388.Spec : Prop :=
  ∀ n, P12250528922254136388.a n = (A269411 (n + 1) : ℚ)

end A269411

/-! ## A269411.P18270724813511090663

`A269409(A167499(n+3))`
-/

namespace A269411.P18270724813511090663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A167499 (n + 3)).toNat

end

end A269411.P18270724813511090663

namespace A269411

/-- `A269409(A167499(n+3))` -/
def P18270724813511090663.Spec : Prop :=
  ∀ n, P18270724813511090663.a n = A269411 (n + 1)

end A269411

/-! ## A269411.P14872982303174090828

`A269409(A167614(n+3)+2)`
-/

namespace A269411.P14872982303174090828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A167614 (n + 3) + 2).toNat

end

end A269411.P14872982303174090828

namespace A269411

/-- `A269409(A167614(n+3)+2)` -/
def P14872982303174090828.Spec : Prop :=
  ∀ n, P14872982303174090828.a n = A269411 (n + 1)

end A269411

/-! ## A269411.P10654662956274201020

`A269409(A000124(n+4)+4)`
-/

namespace A269411.P10654662956274201020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A000124 (n + 4) + 4).toNat

end

end A269411.P10654662956274201020

namespace A269411

/-- `A269409(A000124(n+4)+4)` -/
def P10654662956274201020.Spec : Prop :=
  ∀ n, P10654662956274201020.a n = A269411 (n + 1)

end A269411

/-! ## A269411.P1473663994924934325

`A269409(A238531(n+5)+3)`
-/

namespace A269411.P1473663994924934325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A238531 (n + 5) + 3).toNat

end

end A269411.P1473663994924934325

namespace A269411

/-- `A269409(A238531(n+5)+3)` -/
def P1473663994924934325.Spec : Prop :=
  ∀ n, P1473663994924934325.a n = A269411 (n + 1)

end A269411

/-!
# A269412: Number of length-6 0..n arrays with no repeated value greater than or equal to the previous repeated value.

The programs for A269412, the canonical program `A269412.P18152212169199057876` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269412 has offset 1).

The definition of A269412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269412.P18152212169199057876

`(n+1)^6+6*(n+1)^5+8*(n+1)^4+5*(n+1)^3/3-(n+1)²+(n+1)/3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269412

/-- `(n+1)^6+6*(n+1)^5+8*(n+1)^4+5*(n+1)^3/3-(n+1)²+(n+1)/3` -/
def P18152212169199057876.Spec : Prop :=
  ∀ n, P18152212169199057876.a n = (A269412 (n + 1) : ℚ)

end A269412

/-! ## A269412.P15246963579609629508

`A269409(A167499(n+4)+1)`
-/

namespace A269412.P15246963579609629508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A167499 (n + 4) + 1).toNat

end

end A269412.P15246963579609629508

namespace A269412

/-- `A269409(A167499(n+4)+1)` -/
def P15246963579609629508.Spec : Prop :=
  ∀ n, P15246963579609629508.a n = A269412 (n + 1)

end A269412

/-! ## A269412.P11696144184545249055

`A269409(A167614(n+4)+3)`
-/

namespace A269412.P11696144184545249055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A167614 (n + 4) + 3).toNat

end

end A269412.P11696144184545249055

namespace A269412

/-- `A269409(A167614(n+4)+3)` -/
def P11696144184545249055.Spec : Prop :=
  ∀ n, P11696144184545249055.a n = A269412 (n + 1)

end A269412

/-! ## A269412.P6930090625406829205

`A269409(A000124(n+5)+5)`
-/

namespace A269412.P6930090625406829205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A000124 (n + 5) + 5).toNat

end

end A269412.P6930090625406829205

namespace A269412

/-- `A269409(A000124(n+5)+5)` -/
def P6930090625406829205.Spec : Prop :=
  ∀ n, P6930090625406829205.a n = A269412 (n + 1)

end A269412

/-! ## A269412.P2459399184487927205

`A269409(A000217(n+5)+6)`
-/

namespace A269412.P2459399184487927205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A000217 (n + 5) + 6).toNat

end

end A269412.P2459399184487927205

namespace A269412

/-- `A269409(A000217(n+5)+6)` -/
def P2459399184487927205.Spec : Prop :=
  ∀ n, P2459399184487927205.a n = A269412 (n + 1)

end A269412

/-! ## A269412.P17816465168216085183

`A269409(A027379(n+5)-A103517(n+1))`
-/

namespace A269412.P17816465168216085183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A027379 (n + 5) - A103517 (n + 1)).toNat

end

end A269412.P17816465168216085183

namespace A269412

/-- `A269409(A027379(n+5)-A103517(n+1))` -/
def P17816465168216085183.Spec : Prop :=
  ∀ n, P17816465168216085183.a n = A269412 (n + 1)

end A269412

/-! ## A269412.P13565245949887855942

`A269409(A103517(n+8)+A027379(n+1))`
-/

namespace A269412.P13565245949887855942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A103517 (n + 8) + A027379 (n + 1)).toNat

end

end A269412.P13565245949887855942

namespace A269412

/-- `A269409(A103517(n+8)+A027379(n+1))` -/
def P13565245949887855942.Spec : Prop :=
  ∀ n, P13565245949887855942.a n = A269412 (n + 1)

end A269412

/-! ## A269412.P8240736444290694394

`A269409(A238531(n+7)+A024000(n+3))`
-/

namespace A269412.P8240736444290694394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A238531 (n + 7) + A024000 (n + 3)).toNat

end

end A269412.P8240736444290694394

namespace A269412

/-- `A269409(A238531(n+7)+A024000(n+3))` -/
def P8240736444290694394.Spec : Prop :=
  ∀ n, P8240736444290694394.a n = A269412 (n + 1)

end A269412

/-! ## A269412.P9334375031149035174

`A269409(A002620(n+2)+A002620(n+9))`
-/

namespace A269412.P9334375031149035174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A269412.P9334375031149035174

namespace A269412

/-- `A269409(A002620(n+2)+A002620(n+9))` -/
def P9334375031149035174.Spec : Prop :=
  ∀ n, P9334375031149035174.a n = A269412 (n + 1)

end A269412

/-!
# A269413: Number of length-7 0..n arrays with no repeated value greater than or equal to the previous repeated value.

The programs for A269413, there is no canonical definition to state claims against.
-/

/-! ## A269413.P594448815779006125

`A269409(A167499(n+5)+2)`
-/

namespace A269413.P594448815779006125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A167499 (n + 5) + 2).toNat

end

end A269413.P594448815779006125

/-! ## A269413.P9627654745334560743

`A269409(A167614(n+5)+4)`
-/

namespace A269413.P9627654745334560743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A167614 (n + 5) + 4).toNat

end

end A269413.P9627654745334560743

/-! ## A269413.P171862924225437273

`A269409(A000124(n+6)+6)`
-/

namespace A269413.P171862924225437273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A000124 (n + 6) + 6).toNat

end

end A269413.P171862924225437273

/-! ## A269413.P2344735339842969622

`A269409(A238531(n+7)+5)`
-/

namespace A269413.P2344735339842969622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A238531 (n + 7) + 5).toNat

end

end A269413.P2344735339842969622

/-! ## A269413.P2506128327284256542

`A269409(A000217(n+6)+7)`
-/

namespace A269413.P2506128327284256542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A000217 (n + 6) + 7).toNat

end

end A269413.P2506128327284256542

/-! ## A269413.P13929213046026438142

`A269409(A161680(n+7)+7)`
-/

namespace A269413.P13929213046026438142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (A161680 (n + 7) + 7).toNat

end

end A269413.P13929213046026438142

/-!
# A269414: Prime numbers that are the sum of one or more consecutive triangular numbers.

The programs for A269414, there is no canonical definition to state claims against.
-/

/-! ## A269414.P4195888218575295085

`p?[A034706(n+1)]`
-/

namespace A269414.P4195888218575295085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269414.P4195888218575295085

/-! ## A269414.P16145744235375150645

`∩[A034706(n+1), A040116(n+1)]`
-/

namespace A269414.P16145744235375150645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269414.P16145744235375150645

/-! ## A269414.P608882438746566072

`∩[A034706(n+1), A045405(n+1)]`
-/

namespace A269414.P608882438746566072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269414.P608882438746566072

/-! ## A269414.P6412341571928977565

`∩[A034706(n+1), A045428(n+1)]`
-/

namespace A269414.P6412341571928977565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269414.P6412341571928977565

/-! ## A269414.P3572704429005378453

`∩[A034706(n+1), A045393(n+1)]`
-/

namespace A269414.P3572704429005378453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269414.P3572704429005378453

/-! ## A269414.P8090536916383343951

`∩[A034706(n+1), A045402(n+1)]`
-/

namespace A269414.P8090536916383343951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269414.P8090536916383343951

/-! ## A269414.P4241787970090416885

`∩[A000040(n+1), A034706(n+1)]`
-/

namespace A269414.P4241787970090416885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269414.P4241787970090416885

/-! ## A269414.P18371015101706049239

`∩[A004139(n+1), A034706(n+1)]`
-/

namespace A269414.P18371015101706049239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269414.P18371015101706049239

/-! ## A269414.P3293973009334087437

`∩[A034706(n+1), A045319(n+1)]`
-/

namespace A269414.P3293973009334087437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269414.P3293973009334087437

/-! ## A269414.P12578611501631335966

`∩[A034706(n+1), A049585(n+1)]`
-/

namespace A269414.P12578611501631335966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269414.P12578611501631335966

/-!
# A269416: Expansion of 3*(2 - x)/((1 - x)*(1 + x)^2).

The programs for A269416, the canonical program `A269416.P693326480443807211` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269416 has offset 0).

The definition of A269416 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((6-3x)/(1+x-x^2-x^3))` (program `A269416.P693326480443807211`, by `A269416.P693326480443807211.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269416.P693326480443807211

`ogf((6-3x)/(1+x-x^2-x^3))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269416

/-- `ogf((6-3x)/(1+x-x^2-x^3))` -/
def P693326480443807211.Spec : Prop :=
  ∀ n, P693326480443807211.a n = A269416 n

theorem P693326480443807211.correct : P693326480443807211.Spec := by
  intro n
  simp only [A269416]

end A269416

/-! ## A269416.P10366128756945429574

`3*((-1)^n*6*n+(-1)^n*7+1)/4`
-/

namespace A269416.P10366128756945429574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((-1) ^ n * 6 * (n : ℤ) + (-1) ^ n * 7 + 1) : ℚ) / 4

end

end A269416.P10366128756945429574

namespace A269416

/-- `3*((-1)^n*6*n+(-1)^n*7+1)/4` -/
def P10366128756945429574.Spec : Prop :=
  ∀ n, P10366128756945429574.a n = (A269416 n : ℚ)

end A269416

/-! ## A269416.P16477501567053400882

`3*(-1)^n*A007494(n+1)`
-/

namespace A269416.P16477501567053400882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (-1) ^ n * A007494 (n + 1)

end

end A269416.P16477501567053400882

namespace A269416

/-- `3*(-1)^n*A007494(n+1)` -/
def P16477501567053400882.Spec : Prop :=
  ∀ n, P16477501567053400882.a n = A269416 n

end A269416

/-! ## A269416.P867821047586402129

`(-1)^n*∑[3*gcd(2, n)]`
-/

namespace A269416.P867821047586402129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A269416.P867821047586402129

namespace A269416

/-- `(-1)^n*∑[3*gcd(2, n)]` -/
def P867821047586402129.Spec : Prop :=
  ∀ n, P867821047586402129.a n = A269416 n

end A269416

/-! ## A269416.P4664357231631435738

`6-(a(n-1)+9*and(1, n))` with `a(0)=6`
-/

namespace A269416.P4664357231631435738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  6 - (a (n - 1) + (9 * Nat.land 1 n : ℤ))

end

end A269416.P4664357231631435738

namespace A269416

/-- `6-(a(n-1)+9*and(1, n))` -/
def P4664357231631435738.Spec : Prop :=
  ∀ n, P4664357231631435738.a n = A269416 n

end A269416

/-! ## A269416.P1814905974339233147

`6-9*and(1, n)-a(n-1)` with `a(0)=6`
-/

namespace A269416.P1814905974339233147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  6 - (9 * Nat.land 1 n : ℤ) - a (n - 1)

end

end A269416.P1814905974339233147

namespace A269416

/-- `6-9*and(1, n)-a(n-1)` -/
def P1814905974339233147.Spec : Prop :=
  ∀ n, P1814905974339233147.a n = A269416 n

end A269416

/-! ## A269416.P7227862908747912005

`3*(-1)^n*∑[2-and(1, n)]`
-/

namespace A269416.P7227862908747912005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269416.P7227862908747912005

namespace A269416

/-- `3*(-1)^n*∑[2-and(1, n)]` -/
def P7227862908747912005.Spec : Prop :=
  ∀ n, P7227862908747912005.a n = A269416 n

end A269416

/-! ## A269416.P232209634331299212

`A040033(n)-(a(n-1)+6)` with `a(0)=6`
-/

namespace A269416.P232209634331299212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A040033 n - (a (n - 1) + 6)

end

end A269416.P232209634331299212

namespace A269416

/-- `A040033(n)-(a(n-1)+6)` -/
def P232209634331299212.Spec : Prop :=
  ∀ n, P232209634331299212.a n = A269416 n

end A269416

/-! ## A269416.P10922316771176049942

`A168233(n+1)*A174971(n)+3`
-/

namespace A269416.P10922316771176049942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168233 (n + 1) * A174971 n + 3

end

end A269416.P10922316771176049942

namespace A269416

/-- `A168233(n+1)*A174971(n)+3` -/
def P10922316771176049942.Spec : Prop :=
  ∀ n, P10922316771176049942.a n = A269416 n

end A269416

/-! ## A269416.P9334852296726244419

`A084060(n+1)+A084060(n+1)+A084056(n)`
-/

namespace A269416.P9334852296726244419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084060 (n + 1) + (A084060 (n + 1) + A084056 n)

end

end A269416.P9334852296726244419

namespace A269416

/-- `A084060(n+1)+A084060(n+1)+A084056(n)` -/
def P9334852296726244419.Spec : Prop :=
  ∀ n, P9334852296726244419.a n = A269416 n

end A269416

/-! ## A269416.P2717897365974393288

`A084060(n+1)-A084056(n+2)`
-/

namespace A269416.P2717897365974393288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084060 (n + 1) - A084056 (n + 2)

end

end A269416.P2717897365974393288

namespace A269416

/-- `A084060(n+1)-A084056(n+2)` -/
def P2717897365974393288.Spec : Prop :=
  ∀ n, P2717897365974393288.a n = A269416 n

end A269416

/-! ## A269416.P8077783716892250967

`3*A133131(2*n+3)`
-/

namespace A269416.P8077783716892250967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A133131 (2 * n + 3)

end

end A269416.P8077783716892250967

namespace A269416

/-- `3*A133131(2*n+3)` -/
def P8077783716892250967.Spec : Prop :=
  ∀ n, P8077783716892250967.a n = A269416 n

end A269416

/-! ## A269416.P5007623068355972971

`Δ[A131742(2*n+1)-Δ[A131742(2*n+1)]]`
-/

namespace A269416.P5007623068355972971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131742 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131742 (2 * n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269416.P5007623068355972971

namespace A269416

/-- `Δ[A131742(2*n+1)-Δ[A131742(2*n+1)]]` -/
def P5007623068355972971.Spec : Prop :=
  ∀ n, P5007623068355972971.a n = A269416 n

end A269416

/-! ## A269416.P1266127417276334139

`Δ[A174390(3*n)]`
-/

namespace A269416.P1266127417276334139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174390 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269416.P1266127417276334139

namespace A269416

/-- `Δ[A174390(3*n)]` -/
def P1266127417276334139.Spec : Prop :=
  ∀ n, P1266127417276334139.a n = A269416 n

end A269416

/-! ## A269416.P17564722392354566824

`A319674(3*(n+1))`
-/

namespace A269416.P17564722392354566824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319674 (3 * (n + 1))

end

end A269416.P17564722392354566824

namespace A269416

/-- `A319674(3*(n+1))` -/
def P17564722392354566824.Spec : Prop :=
  ∀ n, P17564722392354566824.a n = A269416 n

end A269416

/-! ## A269416.P6114185555491848559

`3*A001057(3*(n+1))`
-/

namespace A269416.P6114185555491848559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001057 (3 * (n + 1))

end

end A269416.P6114185555491848559

namespace A269416

/-- `3*A001057(3*(n+1))` -/
def P6114185555491848559.Spec : Prop :=
  ∀ n, P6114185555491848559.a n = A269416 n

end A269416

/-! ## A269416.P11092696958328790442

`A097140(A017197(n+1))`
-/

namespace A269416.P11092696958328790442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A017197 (n + 1)).toNat

end

end A269416.P11092696958328790442

namespace A269416

/-- `A097140(A017197(n+1))` -/
def P11092696958328790442.Spec : Prop :=
  ∀ n, P11092696958328790442.a n = A269416 n

end A269416

/-! ## A269416.P4769143754344728008

`A001057(A014681(A047264(A047264(n+2))))`
-/

namespace A269416.P4769143754344728008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A014681 (A047264 (A047264 (n + 2)).toNat).toNat).toNat

end

end A269416.P4769143754344728008

namespace A269416

/-- `A001057(A014681(A047264(A047264(n+2))))` -/
def P4769143754344728008.Spec : Prop :=
  ∀ n, P4769143754344728008.a n = A269416 n

end A269416

/-!
# A269420: Record (maximal) gaps between primes of the form 8k + 3.

The programs for A269420, there is no canonical definition to state claims against.
-/

/-! ## A269420.P1274618130077171447

`A269422(n+1)-A269421(n+1)`
-/

namespace A269420.P1274618130077171447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269422 (n + 1) - A269421 (n + 1)

end

end A269420.P1274618130077171447

/-! ## A269420.P15977936190481741034

`record[Δ[p?[8*n+11]]]`
-/

namespace A269420.P15977936190481741034
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 11

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269420.P15977936190481741034

/-! ## A269420.P5776090461233907485

`record[Δ[A007520(n+1)]]`
-/

namespace A269420.P5776090461233907485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269420.P5776090461233907485

/-! ## A269420.P17360633487917838513

`record[A007520(n+2)-A007520(n+1)]`
-/

namespace A269420.P17360633487917838513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 2) - A007520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269420.P17360633487917838513

/-! ## A269420.P16375182290118559923

`record[A186298(n+2)-A186298(n+1)]`
-/

namespace A269420.P16375182290118559923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186298 (n + 2) - A186298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269420.P16375182290118559923

/-!
# A269421: Primes 8k + 3 preceding the maximal gaps in A269420.

The programs for A269421, there is no canonical definition to state claims against.
-/

/-! ## A269421.P13039765041910263816

`A269422(n+1)-A269420(n+1)`
-/

namespace A269421.P13039765041910263816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269422 (n + 1) - A269420 (n + 1)

end

end A269421.P13039765041910263816

/-! ## A269421.P7942210990273876579

`A269422(n+1)-record[Δ[A007520(n+1)]]`
-/

namespace A269421.P7942210990273876579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269422 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269421.P7942210990273876579

/-! ## A269421.P9855852751801791906

`A269422(n+1)-record[Δ[A186298(n+1)]]`
-/

namespace A269421.P9855852751801791906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186298 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269422 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269421.P9855852751801791906

/-! ## A269421.P7064773047543684194

`A269422(n+1)-record[A007520(n+2)-A007520(n+1)]`
-/

namespace A269421.P7064773047543684194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 2) - A007520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269422 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269421.P7064773047543684194

/-! ## A269421.P5159244457747237764

`A269422(n+1)-record[A186298(n+2)-A186298(n+1)]`
-/

namespace A269421.P5159244457747237764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186298 (n + 2) - A186298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269422 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269421.P5159244457747237764

/-!
# A269422: Primes 8k + 3 at the end of the maximal gaps in A269420.

The programs for A269422, there is no canonical definition to state claims against.
-/

/-! ## A269422.P10873114161941891762

`A269421(n+1)+A269420(n+1)`
-/

namespace A269422.P10873114161941891762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269421 (n + 1) + A269420 (n + 1)

end

end A269422.P10873114161941891762

/-! ## A269422.P2509508715593051433

`A269421(n+1)+record[Δ[A007520(n+1)]]`
-/

namespace A269422.P2509508715593051433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269421 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269422.P2509508715593051433

/-! ## A269422.P10838257779220028173

`A269421(n+1)+record[A007520(n+2)-A007520(n+1)]`
-/

namespace A269422.P10838257779220028173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 2) - A007520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269421 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269422.P10838257779220028173

/-! ## A269422.P8868343238416884312

`A269421(n+1)+record[A186298(n+2)-A186298(n+1)]`
-/

namespace A269422.P8868343238416884312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186298 (n + 2) - A186298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269421 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269422.P8868343238416884312

/-!
# A269424: Record (maximal) gaps between primes of the form 8k + 1.

The programs for A269424, there is no canonical definition to state claims against.
-/

/-! ## A269424.P13064910651492110647

`A269426(n+1)-A269425(n+1)`
-/

namespace A269424.P13064910651492110647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269426 (n + 1) - A269425 (n + 1)

end

end A269424.P13064910651492110647

/-! ## A269424.P15559925539745621232

`record[A007519(n+2)-A007519(n+1)]`
-/

namespace A269424.P15559925539745621232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 2) - A007519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269424.P15559925539745621232

/-! ## A269424.P12122760299663689411

`record[A186295(n+2)-A186295(n+1)]`
-/

namespace A269424.P12122760299663689411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186295 (n + 2) - A186295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269424.P12122760299663689411

/-! ## A269424.P1256110427323643173

`record[A045390(n+3)-A045390(n+2)]`
-/

namespace A269424.P1256110427323643173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 3) - A045390 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269424.P1256110427323643173

/-! ## A269424.P9060118515260751054

`record[A007519(n+2)-A157115(A016813(n))]`
-/

namespace A269424.P9060118515260751054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 2) - A157115 (A016813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269424.P9060118515260751054

/-!
# A269425: Primes 8k + 1 preceding the maximal gaps in A269424.

The programs for A269425, there is no canonical definition to state claims against.
-/

/-! ## A269425.P7879251544926970221

`A269426(n+1)-A269424(n+1)`
-/

namespace A269425.P7879251544926970221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269426 (n + 1) - A269424 (n + 1)

end

end A269425.P7879251544926970221

/-! ## A269425.P4752347578867197849

`A269426(n+1)-record[Δ[A007519(n+1)]]`
-/

namespace A269425.P4752347578867197849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269426 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269425.P4752347578867197849

/-! ## A269425.P14176103170856573440

`A269426(n+1)-record[A007519(n+2)-A007519(n+1)]`
-/

namespace A269425.P14176103170856573440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 2) - A007519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269426 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269425.P14176103170856573440

/-! ## A269425.P3962044026683253402

`A269426(n+1)-record[A186295(n+2)-A186295(n+1)]`
-/

namespace A269425.P3962044026683253402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186295 (n + 2) - A186295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269426 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269425.P3962044026683253402

/-! ## A269425.P16189970943032128878

`A269426(n+1)-record[A045390(n+3)-A045390(n+2)]`
-/

namespace A269425.P16189970943032128878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 3) - A045390 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269426 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269425.P16189970943032128878

/-!
# A269426: Primes 8k + 1 at the end of the maximal gaps in A269424.

The programs for A269426, there is no canonical definition to state claims against.
-/

/-! ## A269426.P7140731354166338637

`A269425(n+1)+A269424(n+1)`
-/

namespace A269426.P7140731354166338637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269425 (n + 1) + A269424 (n + 1)

end

end A269426.P7140731354166338637

/-! ## A269426.P16460376528765441892

`A269425(n+1)+record[Δ[A007519(n+1)]]`
-/

namespace A269426.P16460376528765441892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269425 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269426.P16460376528765441892

/-! ## A269426.P2948320694005144992

`A269425(n+1)+record[A007519(n+2)-A007519(n+1)]`
-/

namespace A269426.P2948320694005144992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 2) - A007519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269425 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269426.P2948320694005144992

/-! ## A269426.P10290637783692318026

`A269425(n+1)+record[A186295(n+2)-A186295(n+1)]`
-/

namespace A269426.P10290637783692318026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186295 (n + 2) - A186295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269425 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269426.P10290637783692318026

/-! ## A269426.P7100235994205890156

`A269425(n+1)+record[A045390(n+3)-A045390(n+2)]`
-/

namespace A269426.P7100235994205890156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 3) - A045390 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269425 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269426.P7100235994205890156

/-!
# A269427: a(1) = 1, a(n) counts m < n for which n == a(m) (mod m).

The programs for A269427, there is no canonical definition to state claims against.
-/

/-! ## A269427.P1893671567780839225

`A322156(C(A243346(n+1), A183935(n+1)))`
-/

namespace A269427.P1893671567780839225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322156 (Nat.choose (A243346 (n + 1)).toNat (A183935 (n + 1)).toNat)

end

end A269427.P1893671567780839225

/-! ## A269427.P14822361330947564983

`A327657(A090752(2*n+1)+A090706(n))-and(1, n)`
-/

namespace A269427.P14822361330947564983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327657 (A090752 (2 * n + 1) + A090706 n).toNat - (Nat.land 1 n : ℤ)

end

end A269427.P14822361330947564983

/-! ## A269427.P12155325668900665333

`∑{e}[A176621(n), A006530(#)]`
-/

namespace A269427.P12155325668900665333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 (Nat.factorization (f1 n).natAbs p)

end

end A269427.P12155325668900665333

/-! ## A269427.P1994135816613780249

`∑{e}[A176621(n), A007947(#)]`
-/

namespace A269427.P1994135816613780249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007947 (Nat.factorization (f1 n).natAbs p)

end

end A269427.P1994135816613780249

/-! ## A269427.P5581244112392848231

`∑{e}[A176621(n), A020639(#)]`
-/

namespace A269427.P5581244112392848231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 (Nat.factorization (f1 n).natAbs p)

end

end A269427.P5581244112392848231

/-!
# A269428: Alternating sum of heptagonal pyramidal numbers.

The programs for A269428, the canonical program `A269428.P3562931660101514607` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269428 has offset 0).

The definition of A269428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269428.P3562931660101514607

`((20*n^3+42*n²+4*n-9)*(-1)^n+9)/48`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269428

/-- `((20*n^3+42*n²+4*n-9)*(-1)^n+9)/48` -/
def P3562931660101514607.Spec : Prop :=
  ∀ n, P3562931660101514607.a n = (A269428 n : ℚ)

end A269428

/-! ## A269428.P9538816502052093462

`∑[(n^3-C(n, 3))*(-1)^n]`
-/

namespace A269428.P9538816502052093462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 3 : ℤ) - (Nat.choose n 3 : ℤ)) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269428.P9538816502052093462

namespace A269428

/-- `∑[(n^3-C(n, 3))*(-1)^n]` -/
def P9538816502052093462.Spec : Prop :=
  ∀ n, P9538816502052093462.a n = A269428 n

end A269428

/-! ## A269428.P15888183124935833622

`∑[(n^3-C(n, 3))/(-1)^n]`
-/

namespace A269428.P15888183124935833622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 3 : ℤ) - (Nat.choose n 3 : ℤ) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269428.P15888183124935833622

namespace A269428

/-- `∑[(n^3-C(n, 3))/(-1)^n]` -/
def P15888183124935833622.Spec : Prop :=
  ∀ n, P15888183124935833622.a n = (A269428 n : ℚ)

end A269428

/-! ## A269428.P16519214911461023216

`A266085(n)-a(n-1)` with `a(0)=0`
-/

namespace A269428.P16519214911461023216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A266085 n - a (n - 1)

end

end A269428.P16519214911461023216

namespace A269428

/-- `A266085(n)-a(n-1)` -/
def P16519214911461023216.Spec : Prop :=
  ∀ n, P16519214911461023216.a n = A269428 n

end A269428

/-! ## A269428.P15133141857732116601

`∑[(-1)^n*A002413(n)]`
-/

namespace A269428.P15133141857732116601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269428.P15133141857732116601

namespace A269428

/-- `∑[(-1)^n*A002413(n)]` -/
def P15133141857732116601.Spec : Prop :=
  ∀ n, P15133141857732116601.a n = A269428 n

end A269428

/-! ## A269428.P11711672302416858895

`2*A269429(n)-A269440(n)`
-/

namespace A269428.P11711672302416858895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A269429 n - A269440 n

end

end A269428.P11711672302416858895

namespace A269428

/-- `2*A269429(n)-A269440(n)` -/
def P11711672302416858895.Spec : Prop :=
  ∀ n, P11711672302416858895.a n = A269428 n

end A269428

/-! ## A269428.P8973228207098054802

`∑[∑[A000566(n)]*A033999(n)]`
-/

namespace A269428.P8973228207098054802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269428.P8973228207098054802

namespace A269428

/-- `∑[∑[A000566(n)]*A033999(n)]` -/
def P8973228207098054802.Spec : Prop :=
  ∀ n, P8973228207098054802.a n = A269428 n

end A269428

/-! ## A269428.P1051902443246548379

`A266677(n)+A269440(n)-A269429(n)`
-/

namespace A269428.P1051902443246548379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266677 n + (A269440 n - A269429 n)

end

end A269428.P1051902443246548379

namespace A269428

/-- `A266677(n)+A269440(n)-A269429(n)` -/
def P1051902443246548379.Spec : Prop :=
  ∀ n, P1051902443246548379.a n = A269428 n

end A269428

/-! ## A269428.P428166037486754104

`A266677(n)+A269441(n)-A269440(n)`
-/

namespace A269428.P428166037486754104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266677 n + (A269441 n - A269440 n)

end

end A269428.P428166037486754104

namespace A269428

/-- `A266677(n)+A269441(n)-A269440(n)` -/
def P428166037486754104.Spec : Prop :=
  ∀ n, P428166037486754104.a n = A269428 n

end A269428

/-! ## A269428.P1872137673189149859

`A269429(n)+A269440(n)-A269441(n)`
-/

namespace A269428.P1872137673189149859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269429 n + (A269440 n - A269441 n)

end

end A269428.P1872137673189149859

namespace A269428

/-- `A269429(n)+A269440(n)-A269441(n)` -/
def P1872137673189149859.Spec : Prop :=
  ∀ n, P1872137673189149859.a n = A269428 n

end A269428

/-!
# A269429: Alternating sum of octagonal pyramidal numbers.

The programs for A269429, the canonical program `A269429.P1628284324470888317` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269429 has offset 0).

The definition of A269429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269429.P1628284324470888317

`((2*n^3+4*n²-1)*(-1)^n+1)/4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269429

/-- `((2*n^3+4*n²-1)*(-1)^n+1)/4` -/
def P1628284324470888317.Spec : Prop :=
  ∀ n, P1628284324470888317.a n = (A269429 n : ℚ)

end A269429

/-! ## A269429.P16065213521445406843

`∑[(-1)^n*∑[A000567(n)]]`
-/

namespace A269429.P16065213521445406843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269429.P16065213521445406843

namespace A269429

/-- `∑[(-1)^n*∑[A000567(n)]]` -/
def P16065213521445406843.Spec : Prop :=
  ∀ n, P16065213521445406843.a n = A269429 n

end A269429

/-! ## A269429.P1569235966174272534

`∑[C(2*n, 2)/2*A131738(n)]`
-/

namespace A269429.P1569235966174272534
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 : ℚ) / 2 * (A131738 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269429.P1569235966174272534

namespace A269429

/-- `∑[C(2*n, 2)/2*A131738(n)]` -/
def P1569235966174272534.Spec : Prop :=
  ∀ n, P1569235966174272534.a n = (A269429 n : ℚ)

end A269429

/-! ## A269429.P6157609877378514300

`∑[(-1)^n*∑[n]*A004273(n)]`
-/

namespace A269429.P6157609877378514300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269429.P6157609877378514300

namespace A269429

/-- `∑[(-1)^n*∑[n]*A004273(n)]` -/
def P6157609877378514300.Spec : Prop :=
  ∀ n, P6157609877378514300.a n = A269429 n

end A269429

/-! ## A269429.P14995142889142895817

`2*A269428(n)-A266677(n)`
-/

namespace A269429.P14995142889142895817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A269428 n - A266677 n

end

end A269429.P14995142889142895817

namespace A269429

/-- `2*A269428(n)-A266677(n)` -/
def P14995142889142895817.Spec : Prop :=
  ∀ n, P14995142889142895817.a n = A269429 n

end A269429

/-! ## A269429.P2641602786733255326

`2*A269440(n)-A269441(n)`
-/

namespace A269429.P2641602786733255326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A269440 n - A269441 n

end

end A269429.P2641602786733255326

namespace A269429

/-- `2*A269440(n)-A269441(n)` -/
def P2641602786733255326.Spec : Prop :=
  ∀ n, P2641602786733255326.a n = A269429 n

end A269429

/-! ## A269429.P3041508879543699932

`ceil(∑[A007588(n)]/A274922(n))`
-/

namespace A269429.P3041508879543699932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A274922 n : ℚ)⌉

end

end A269429.P3041508879543699932

namespace A269429

/-- `ceil(∑[A007588(n)]/A274922(n))` -/
def P3041508879543699932.Spec : Prop :=
  ∀ n, P3041508879543699932.a n = A269429 n

end A269429

/-! ## A269429.P1318180562111106616

`∑[∑[A000567(n)]*A033999(n)]`
-/

namespace A269429.P1318180562111106616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269429.P1318180562111106616

namespace A269429

/-- `∑[∑[A000567(n)]*A033999(n)]` -/
def P1318180562111106616.Spec : Prop :=
  ∀ n, P1318180562111106616.a n = A269429 n

end A269429

/-! ## A269429.P5296481914720875795

`∑[∑[A033999(n)*A059722(n)]]`
-/

namespace A269429.P5296481914720875795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A059722 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269429.P5296481914720875795

namespace A269429

/-- `∑[∑[A033999(n)*A059722(n)]]` -/
def P5296481914720875795.Spec : Prop :=
  ∀ n, P5296481914720875795.a n = A269429 n

end A269429

/-! ## A269429.P11117263493334948365

`∑[∑[A000567(n)]*A009001(2*n)]`
-/

namespace A269429.P11117263493334948365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A009001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269429.P11117263493334948365

namespace A269429

/-- `∑[∑[A000567(n)]*A009001(2*n)]` -/
def P11117263493334948365.Spec : Prop :=
  ∀ n, P11117263493334948365.a n = A269429 n

end A269429

/-! ## A269429.P10305636443588045403

`A269428(n)+A269441(n)-A269440(n)`
-/

namespace A269429.P10305636443588045403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269428 n + (A269441 n - A269440 n)

end

end A269429.P10305636443588045403

namespace A269429

/-- `A269428(n)+A269441(n)-A269440(n)` -/
def P10305636443588045403.Spec : Prop :=
  ∀ n, P10305636443588045403.a n = A269429 n

end A269429

/-! ## A269429.P538554842857709754

`A266677(n)-(A269428(n)-A269440(n))`
-/

namespace A269429.P538554842857709754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266677 n - (A269428 n - A269440 n)

end

end A269429.P538554842857709754

namespace A269429

/-- `A266677(n)-(A269428(n)-A269440(n))` -/
def P538554842857709754.Spec : Prop :=
  ∀ n, P538554842857709754.a n = A269429 n

end A269429

/-! ## A269429.P9363478882420128311

`A266085(n+1)-A232599(n+1)`
-/

namespace A269429.P9363478882420128311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266085 (n + 1) - A232599 (n + 1)

end

end A269429.P9363478882420128311

namespace A269429

/-- `A266085(n+1)-A232599(n+1)` -/
def P9363478882420128311.Spec : Prop :=
  ∀ n, P9363478882420128311.a n = A269429 n

end A269429

/-! ## A269429.P1493890881100914307

`∑[∑[A000567(n)]*A056594(2*n)]`
-/

namespace A269429.P1493890881100914307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269429.P1493890881100914307

namespace A269429

/-- `∑[∑[A000567(n)]*A056594(2*n)]` -/
def P1493890881100914307.Spec : Prop :=
  ∀ n, P1493890881100914307.a n = A269429 n

end A269429

/-!
# A269430: Decimal expansion of (1 + Pi)/2.

The programs for A269430, there is no canonical definition to state claims against.
-/

/-! ## A269430.P6469969195339971161

`A096444(n)+A010051(2*(n+1))`
-/

namespace A269430.P6469969195339971161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096444 (n + 1) + A010051 (2 * (n + 1))

end

end A269430.P6469969195339971161

/-! ## A269430.P9764044219244594381

`A096444(n)+char[A089320(n+1)%(n+1)]`
-/

namespace A269430.P9764044219244594381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089320 (n + 1)) (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096444 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A269430.P9764044219244594381

/-!
# A269431: Number of length-n 0..4 arrays with no repeated value greater than the previous repeated value.

The programs for A269431, there is no canonical definition to state claims against.
-/

/-! ## A269431.P12487424731111052591

`A269435(A027379(n+2))`
-/

namespace A269431.P12487424731111052591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A027379 (n + 2)).toNat

end

end A269431.P12487424731111052591

/-! ## A269431.P10345086217374361723

`A269435(A055998(n+2))`
-/

namespace A269431.P10345086217374361723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A055998 (n + 2)).toNat

end

end A269431.P10345086217374361723

/-! ## A269431.P6038975926996934665

`A269435(A155212(n)+5)`
-/

namespace A269431.P6038975926996934665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A155212 n + 5).toNat

end

end A269431.P6038975926996934665

/-! ## A269431.P8600719690106654765

`A269435(Δ[A034857(n+1)])`
-/

namespace A269431.P8600719690106654765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (f1 (n + 1) - f1 n).toNat

end

end A269431.P8600719690106654765

/-! ## A269431.P12505754563896086611

`A269435(Δ[A006416(n+2)])`
-/

namespace A269431.P12505754563896086611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (f1 (n + 1) - f1 n).toNat

end

end A269431.P12505754563896086611

/-! ## A269431.P1612501062417956291

`A269435(A052905(n+1)+2)`
-/

namespace A269431.P1612501062417956291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A052905 (n + 1) + 2).toNat

end

end A269431.P1612501062417956291

/-! ## A269431.P5163944849379929071

`A269435(A167499(n+3)-8)`
-/

namespace A269431.P5163944849379929071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A167499 (n + 3) - 8).toNat

end

end A269431.P5163944849379929071

/-! ## A269431.P3309599268264729732

`A269435(Δ[A008778(n+1)]-1)`
-/

namespace A269431.P3309599268264729732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (f1 (n + 1) - f1 n - 1).toNat

end

end A269431.P3309599268264729732

/-! ## A269431.P823155520447172646

`A269435(Δ[A005286(n+1)]-2)`
-/

namespace A269431.P823155520447172646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (f1 (n + 1) - f1 n - 2).toNat

end

end A269431.P823155520447172646

/-! ## A269431.P17477784322325878118

`A269435(Δ[A167499(n)+A005286(n)])`
-/

namespace A269431.P17477784322325878118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 n + A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (f1 (n + 1) - f1 n).toNat

end

end A269431.P17477784322325878118

/-!
# A269432: Number of length-n 0..5 arrays with no repeated value greater than the previous repeated value.

The programs for A269432, there is no canonical definition to state claims against.
-/

/-! ## A269432.P14645359878759414948

`A269435(A046691(n+3))`
-/

namespace A269432.P14645359878759414948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A046691 (n + 3)).toNat

end

end A269432.P14645359878759414948

/-! ## A269432.P749917786994707361

`A269435(A056115(n)+11)`
-/

namespace A269432.P749917786994707361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A056115 n + 11).toNat

end

end A269432.P749917786994707361

/-! ## A269432.P2373938225836641590

`A269435(Δ[A023545(n+1)])`
-/

namespace A269432.P2373938225836641590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (f1 (n + 1) - f1 n).toNat

end

end A269432.P2373938225836641590

/-! ## A269432.P1383584593625971648

`A269435(A052905(n+2)+1)`
-/

namespace A269432.P1383584593625971648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A052905 (n + 2) + 1).toNat

end

end A269432.P1383584593625971648

/-! ## A269432.P8102534534866446986

`A269435(A055998(n+3)-1)`
-/

namespace A269432.P8102534534866446986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A055998 (n + 3) - 1).toNat

end

end A269432.P8102534534866446986

/-! ## A269432.P10087339433509274751

`A269435(A000217(n+5)-4)`
-/

namespace A269432.P10087339433509274751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A000217 (n + 5) - 4).toNat

end

end A269432.P10087339433509274751

/-! ## A269432.P3048122790415308646

`A269435(A000124(n+5)-5)`
-/

namespace A269432.P3048122790415308646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A000124 (n + 5) - 5).toNat

end

end A269432.P3048122790415308646

/-! ## A269432.P13003072046145075925

`A269435(A167614(n+4)-7)`
-/

namespace A269432.P13003072046145075925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A167614 (n + 4) - 7).toNat

end

end A269432.P13003072046145075925

/-! ## A269432.P10755843945768715380

`A269435(Δ[A034857(n+2)]-1)`
-/

namespace A269432.P10755843945768715380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (f1 (n + 1) - f1 n - 1).toNat

end

end A269432.P10755843945768715380

/-! ## A269432.P15640767286685466915

`A269435(Δ[A006416(n+3)]-1)`
-/

namespace A269432.P15640767286685466915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (f1 (n + 1) - f1 n - 1).toNat

end

end A269432.P15640767286685466915

/-!
# A269433: Number of length-n 0..6 arrays with no repeated value greater than the previous repeated value.

The programs for A269433, there is no canonical definition to state claims against.
-/

/-! ## A269433.P12533869685905133203

`A269435(A052905(n+3))`
-/

namespace A269433.P12533869685905133203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A052905 (n + 3)).toNat

end

end A269433.P12533869685905133203

/-! ## A269433.P1981293990338866473

`A269435(A055999(n+3)+1)`
-/

namespace A269433.P1981293990338866473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A055999 (n + 3) + 1).toNat

end

end A269433.P1981293990338866473

/-! ## A269433.P15764299721424240073

`A269435(A000096(n+5)-4)`
-/

namespace A269433.P15764299721424240073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A000096 (n + 5) - 4).toNat

end

end A269433.P15764299721424240073

/-! ## A269433.P4200942459507519829

`A269435(A000124(n+6)-6)`
-/

namespace A269433.P4200942459507519829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A000124 (n + 6) - 6).toNat

end

end A269433.P4200942459507519829

/-! ## A269433.P14721677461395882810

`A269435(Δ[A023545(n+2)]-1)`
-/

namespace A269433.P14721677461395882810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (f1 (n + 1) - f1 n - 1).toNat

end

end A269433.P14721677461395882810

/-! ## A269433.P2550063871838316109

`A269435(A000217(n+5)+n+1)`
-/

namespace A269433.P2550063871838316109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A269433.P2550063871838316109

/-!
# A269434: Number of length-n 0..7 arrays with no repeated value greater than the previous repeated value.

The programs for A269434, there is no canonical definition to state claims against.
-/

/-! ## A269434.P1904244130333783897

`A269435(A055999(n+4))`
-/

namespace A269434.P1904244130333783897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A055999 (n + 4)).toNat

end

end A269434.P1904244130333783897

/-! ## A269434.P13177414957908605489

`A269435(A052905(n+4)-1)`
-/

namespace A269434.P13177414957908605489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A052905 (n + 4) - 1).toNat

end

end A269434.P13177414957908605489

/-! ## A269434.P6798460015536664118

`A269435(A000124(n+7)-7)`
-/

namespace A269434.P6798460015536664118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A000124 (n + 7) - 7).toNat

end

end A269434.P6798460015536664118

/-! ## A269434.P4260080111388599078

`A269435(A000217(n+6)+n+1)`
-/

namespace A269434.P4260080111388599078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A269434.P4260080111388599078

/-! ## A269434.P1092097082452329938

`A269435(Δ[A101853(n+3)]-(n+5))`
-/

namespace A269434.P1092097082452329938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (f1 (n + 1) - f1 n - (n + 5 : ℤ)).toNat

end

end A269434.P1092097082452329938

/-! ## A269434.P17383290954034827927

`A269435(Δ[n²]+A000124(n+5)+5)`
-/

namespace A269434.P17383290954034827927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000124 (n + 5) + 5)).toNat

end

end A269434.P17383290954034827927

/-! ## A269434.P877045317107644729

`A269435(A016993(n+3)+A000217(n))`
-/

namespace A269434.P877045317107644729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A016993 (n + 3) + A000217 n).toNat

end

end A269434.P877045317107644729

/-! ## A269434.P13784560893202860456

`A269435(A005408(n)+A056115(n)+21)`
-/

namespace A269434.P13784560893202860456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A005408 n + (A056115 n + 21)).toNat

end

end A269434.P13784560893202860456

/-!
# A269435: T(n,k)=Number of length-n 0..k arrays with no repeated value greater than the previous repeated value.

The programs for A269435, there is no canonical definition to state claims against.
-/

/-! ## A269435.P3422585367241569751

`A269619(n+1)+A185238(A098446(n))`
-/

namespace A269435.P3422585367241569751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (n + 1) + A185238 (A098446 n).toNat

end

end A269435.P3422585367241569751

/-! ## A269435.P11050162677663756231

`A337380(A000032(n))+A269619(n+1)`
-/

namespace A269435.P11050162677663756231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337380 (A000032 n).toNat + A269619 (n + 1)

end

end A269435.P11050162677663756231

/-! ## A269435.P4270762567893563965

`A335460(A005709(n))+A269619(n+1)`
-/

namespace A269435.P4270762567893563965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335460 (A005709 n).toNat + A269619 (n + 1)

end

end A269435.P4270762567893563965

/-! ## A269435.P12129436375161992773

`A277007(A288972(n))+A269619(n+1)`
-/

namespace A269435.P12129436375161992773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277007 (A288972 n).toNat + A269619 (n + 1)

end

end A269435.P12129436375161992773

/-! ## A269435.P15611467943170294215

`A269619(n+1)+A011719(A320606(n+1))`
-/

namespace A269435.P15611467943170294215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (n + 1) + A011719 (A320606 (n + 1)).toNat

end

end A269435.P15611467943170294215

/-!
# A269436: Number of length-4 0..n arrays with no repeated value greater than the previous repeated value.

The programs for A269436, the canonical program `A269436.P565102386397055118` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269436 has offset 1).

The definition of A269436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269436.P565102386397055118

`(n+2)^4-∑[n+1]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269436

/-- `(n+2)^4-∑[n+1]` -/
def P565102386397055118.Spec : Prop :=
  ∀ n, P565102386397055118.a n = A269436 (n + 1)

theorem P565102386397055118.correct : P565102386397055118.Spec := by
  intro n
  simp only [A269436, Nat.add_sub_cancel]

end A269436

/-! ## A269436.P601824487737081033

`abs(C(n+2, 2)-(n+2)^4)`
-/

namespace A269436.P601824487737081033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (n + 2) 2 : ℤ) - ((n + 2) ^ 4 : ℤ)|

end

end A269436.P601824487737081033

namespace A269436

/-- `abs(C(n+2, 2)-(n+2)^4)` -/
def P601824487737081033.Spec : Prop :=
  ∀ n, P601824487737081033.a n = A269436 (n + 1)

end A269436

/-! ## A269436.P16792545497310009454

`abs((n+2)²²-C(n+2, 2))`
-/

namespace A269436.P16792545497310009454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((n + 2) ^ 2) ^ 2 : ℤ) - (Nat.choose (n + 2) 2 : ℤ)|

end

end A269436.P16792545497310009454

namespace A269436

/-- `abs((n+2)²²-C(n+2, 2))` -/
def P16792545497310009454.Spec : Prop :=
  ∀ n, P16792545497310009454.a n = A269436 (n + 1)

end A269436

/-! ## A269436.P9108727033104289372

`abs(record[(2-n)²²]-∑[n+1])`
-/

namespace A269436.P9108727033104289372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - (n : ℤ)) ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|

end

end A269436.P9108727033104289372

namespace A269436

/-- `abs(record[(2-n)²²]-∑[n+1])` -/
def P9108727033104289372.Spec : Prop :=
  ∀ n, P9108727033104289372.a n = A269436 (n + 1)

end A269436

/-! ## A269436.P8084573315729532540

`((n+1)²+(n+2)²)*C(n+3, 2)`
-/

namespace A269436.P8084573315729532540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + (n + 2) ^ 2) * Nat.choose (n + 3) 2

end

end A269436.P8084573315729532540

namespace A269436

/-- `((n+1)²+(n+2)²)*C(n+3, 2)` -/
def P8084573315729532540.Spec : Prop :=
  ∀ n, (P8084573315729532540.a n : ℤ) = A269436 (n + 1)

end A269436

/-! ## A269436.P8537864870899638759

`(n+2)/2*A193608(n+1)`
-/

namespace A269436.P8537864870899638759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A193608 (n + 1) : ℚ)

end

end A269436.P8537864870899638759

namespace A269436

/-- `(n+2)/2*A193608(n+1)` -/
def P8537864870899638759.Spec : Prop :=
  ∀ n, P8537864870899638759.a n = (A269436 (n + 1) : ℚ)

end A269436

/-! ## A269436.P3071734118940996098

`(n+3)/(n+1)*A219086(n+1)`
-/

namespace A269436.P3071734118940996098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (n + 1 : ℚ) * (A219086 (n + 1) : ℚ)

end

end A269436.P3071734118940996098

namespace A269436

/-- `(n+3)/(n+1)*A219086(n+1)` -/
def P3071734118940996098.Spec : Prop :=
  ∀ n, P3071734118940996098.a n = (A269436 (n + 1) : ℚ)

end A269436

/-! ## A269436.P2423274163173446471

`lcm(∑[n+1]-(n+2)²², A006530(n+3))`
-/

namespace A269436.P2423274163173446471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (((n + 2) ^ 2) ^ 2 : ℤ)) (A006530 (n + 3))

end

end A269436.P2423274163173446471

namespace A269436

/-- `lcm(∑[n+1]-(n+2)²², A006530(n+3))` -/
def P2423274163173446471.Spec : Prop :=
  ∀ n, (P2423274163173446471.a n : ℤ) = A269436 (n + 1)

end A269436

/-! ## A269436.P227707800721647882

`A000217(n+2)*A099776(n+1)`
-/

namespace A269436.P227707800721647882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) * A099776 (n + 1)

end

end A269436.P227707800721647882

namespace A269436

/-- `A000217(n+2)*A099776(n+1)` -/
def P227707800721647882.Spec : Prop :=
  ∀ n, P227707800721647882.a n = A269436 (n + 1)

end A269436

/-! ## A269436.P5508047327161315605

`(A002593(n+2)+n+2)/2`
-/

namespace A269436.P5508047327161315605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002593 (n + 2) + (n + 2 : ℤ) : ℚ) / 2

end

end A269436.P5508047327161315605

namespace A269436

/-- `(A002593(n+2)+n+2)/2` -/
def P5508047327161315605.Spec : Prop :=
  ∀ n, P5508047327161315605.a n = (A269436 (n + 1) : ℚ)

end A269436

/-! ## A269436.P1846135833609336672

`A000217(n+2)*A001844(n+1)`
-/

namespace A269436.P1846135833609336672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) * A001844 (n + 1)

end

end A269436.P1846135833609336672

namespace A269436

/-- `A000217(n+2)*A001844(n+1)` -/
def P1846135833609336672.Spec : Prop :=
  ∀ n, P1846135833609336672.a n = A269436 (n + 1)

end A269436

/-! ## A269436.P9201779220086556381

`(A055998(n)+3)*A001844(n+1)`
-/

namespace A269436.P9201779220086556381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055998 n + 3) * A001844 (n + 1)

end

end A269436.P9201779220086556381

namespace A269436

/-- `(A055998(n)+3)*A001844(n+1)` -/
def P9201779220086556381.Spec : Prop :=
  ∀ n, P9201779220086556381.a n = A269436 (n + 1)

end A269436

/-! ## A269436.P261005216512211040

`(A000096(n+1)+1)*A001844(n+1)`
-/

namespace A269436.P261005216512211040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000096 (n + 1) + 1) * A001844 (n + 1)

end

end A269436.P261005216512211040

namespace A269436

/-- `(A000096(n+1)+1)*A001844(n+1)` -/
def P261005216512211040.Spec : Prop :=
  ∀ n, P261005216512211040.a n = A269436 (n + 1)

end A269436

/-! ## A269436.P2271385488085415420

`(A133263(n+1)+n)*A001844(n+1)`
-/

namespace A269436.P2271385488085415420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133263 (n + 1) + (n : ℤ)) * A001844 (n + 1)

end

end A269436.P2271385488085415420

namespace A269436

/-- `(A133263(n+1)+n)*A001844(n+1)` -/
def P2271385488085415420.Spec : Prop :=
  ∀ n, P2271385488085415420.a n = A269436 (n + 1)

end A269436

/-! ## A269436.P14921143105554056404

`(A001844(n+1)-A005449(n+1))*A001844(n+1)`
-/

namespace A269436.P14921143105554056404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001844 (n + 1) - A005449 (n + 1)) * A001844 (n + 1)

end

end A269436.P14921143105554056404

namespace A269436

/-- `(A001844(n+1)-A005449(n+1))*A001844(n+1)` -/
def P14921143105554056404.Spec : Prop :=
  ∀ n, P14921143105554056404.a n = A269436 (n + 1)

end A269436

/-! ## A269436.P7697706020470377693

`A001844(n+1)*A059977(n+1)/A059827(n+2)`
-/

namespace A269436.P7697706020470377693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001844 (n + 1) * A059977 (n + 1) : ℚ) / (A059827 (n + 2) : ℚ)

end

end A269436.P7697706020470377693

namespace A269436

/-- `A001844(n+1)*A059977(n+1)/A059827(n+2)` -/
def P7697706020470377693.Spec : Prop :=
  ∀ n, P7697706020470377693.a n = (A269436 (n + 1) : ℚ)

end A269436

/-! ## A269436.P5317127552953049234

`A001844(n+1)/A059977(n+1)*A059860(n+2)`
-/

namespace A269436.P5317127552953049234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001844 (n + 1) : ℚ) / (A059977 (n + 1) : ℚ) * (A059860 (n + 2) : ℚ)

end

end A269436.P5317127552953049234

namespace A269436

/-- `A001844(n+1)/A059977(n+1)*A059860(n+2)` -/
def P5317127552953049234.Spec : Prop :=
  ∀ n, P5317127552953049234.a n = (A269436 (n + 1) : ℚ)

end A269436

/-! ## A269436.P1043383984897444293

`(n+3)/2*A059722(n+2)`
-/

namespace A269436.P1043383984897444293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 2 * (A059722 (n + 2) : ℚ)

end

end A269436.P1043383984897444293

namespace A269436

/-- `(n+3)/2*A059722(n+2)` -/
def P1043383984897444293.Spec : Prop :=
  ∀ n, P1043383984897444293.a n = (A269436 (n + 1) : ℚ)

end A269436

/-! ## A269436.P17174477330852767063

`A000217(n+2)*A099392(2*(n+2))`
-/

namespace A269436.P17174477330852767063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) * A099392 (2 * (n + 2))

end

end A269436.P17174477330852767063

namespace A269436

/-- `A000217(n+2)*A099392(2*(n+2))` -/
def P17174477330852767063.Spec : Prop :=
  ∀ n, P17174477330852767063.a n = A269436 (n + 1)

end A269436

/-! ## A269436.P2521382156524255602

`A140152(2*(n+2))/2`
-/

namespace A269436.P2521382156524255602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140152 (2 * (n + 2)) : ℚ) / 2

end

end A269436.P2521382156524255602

namespace A269436

/-- `A140152(2*(n+2))/2` -/
def P2521382156524255602.Spec : Prop :=
  ∀ n, P2521382156524255602.a n = (A269436 (n + 1) : ℚ)

end A269436

/-!
# A269437: Number of length-5 0..n arrays with no repeated value greater than the previous repeated value.

The programs for A269437, the canonical program `A269437.P2153338991453722051` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269437 has offset 1).

The definition of A269437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269437.P2285991542024921766

`(n+1)^5+5*(n+1)^4+17/2*(n+1)^3+8*(n+1)²+9/2*(n+1)+1`
-/

namespace A269437.P2285991542024921766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 5 + 5 * (n + 1) ^ 4 : ℚ) + (17 : ℚ) / 2 * ((n + 1) ^ 3 : ℚ) + (8 * (n + 1) ^ 2 : ℚ) + (9 : ℚ) / 2 * (n + 1 : ℚ) + 1

end

end A269437.P2285991542024921766

namespace A269437

/-- `(n+1)^5+5*(n+1)^4+17/2*(n+1)^3+8*(n+1)²+9/2*(n+1)+1` -/
def P2285991542024921766.Spec : Prop :=
  ∀ n, P2285991542024921766.a n = (A269437 (n + 1) : ℚ)

end A269437

/-! ## A269437.P2153338991453722051

`(n+2)*(A269436(n+1)-(n+1)²)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A269437

/-- `(n+2)*(A269436(n+1)-(n+1)²)` -/
def P2153338991453722051.Spec : Prop :=
  ∀ n, P2153338991453722051.a n = A269437 (n + 1)

theorem P2153338991453722051.correct : P2153338991453722051.Spec := by
  intro n
  simp only [A269437, Nat.add_sub_cancel]

end A269437

/-! ## A269437.P6529827427888785483

`A269435(A167499(n+3))`
-/

namespace A269437.P6529827427888785483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A167499 (n + 3)).toNat

end

end A269437.P6529827427888785483

namespace A269437

/-- `A269435(A167499(n+3))` -/
def P6529827427888785483.Spec : Prop :=
  ∀ n, P6529827427888785483.a n = A269437 (n + 1)

end A269437

/-! ## A269437.P6713699788599383563

`A269435(A155212(n)+13)`
-/

namespace A269437.P6713699788599383563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A155212 n + 13).toNat

end

end A269437.P6713699788599383563

namespace A269437

/-- `A269435(A155212(n)+13)` -/
def P6713699788599383563.Spec : Prop :=
  ∀ n, P6713699788599383563.a n = A269437 (n + 1)

end A269437

/-! ## A269437.P16769130226001610992

`A269435(A000124(n+4)+4)`
-/

namespace A269437.P16769130226001610992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A000124 (n + 4) + 4).toNat

end

end A269437.P16769130226001610992

namespace A269437

/-- `A269435(A000124(n+4)+4)` -/
def P16769130226001610992.Spec : Prop :=
  ∀ n, P16769130226001610992.a n = A269437 (n + 1)

end A269437

/-! ## A269437.P7161817965340479471

`A269435(A000217(n+4)+5)`
-/

namespace A269437.P7161817965340479471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A000217 (n + 4) + 5).toNat

end

end A269437.P7161817965340479471

namespace A269437

/-- `A269435(A000217(n+4)+5)` -/
def P7161817965340479471.Spec : Prop :=
  ∀ n, P7161817965340479471.a n = A269437 (n + 1)

end A269437

/-!
# A269438: Number of length-6 0..n arrays with no repeated value greater than the previous repeated value.

The programs for A269438, there is no canonical definition to state claims against.
-/

/-! ## A269438.P17693363107339453993

`A269435(A166136(n+4))`
-/

namespace A269438.P17693363107339453993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A166136 (n + 4)).toNat

end

end A269438.P17693363107339453993

/-! ## A269438.P5469863984555070855

`A269435(A167499(n+4)+1)`
-/

namespace A269438.P5469863984555070855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A167499 (n + 4) + 1).toNat

end

end A269438.P5469863984555070855

/-! ## A269438.P3181683469526796938

`A269435(A167614(n+4)+3)`
-/

namespace A269438.P3181683469526796938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A167614 (n + 4) + 3).toNat

end

end A269438.P3181683469526796938

/-! ## A269438.P3864388023963912046

`A269435(A000124(n+5)+5)`
-/

namespace A269438.P3864388023963912046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A000124 (n + 5) + 5).toNat

end

end A269438.P3864388023963912046

/-! ## A269438.P17897773439063887122

`A269435(A000217(n+5)+6)`
-/

namespace A269438.P17897773439063887122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A000217 (n + 5) + 6).toNat

end

end A269438.P17897773439063887122

/-! ## A269438.P13284515737451965717

`A269435(A133263(n+4)+n+9)`
-/

namespace A269438.P13284515737451965717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A133263 (n + 4) + (n + 9 : ℤ)).toNat

end

end A269438.P13284515737451965717

/-! ## A269438.P5539014290808048319

`A269435(A055999(n+4)-A005408(n))`
-/

namespace A269438.P5539014290808048319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A055999 (n + 4) - A005408 n).toNat

end

end A269438.P5539014290808048319

/-!
# A269439: Number of length-7 0..n arrays with no repeated value greater than the previous repeated value.

The programs for A269439, there is no canonical definition to state claims against.
-/

/-! ## A269439.P5605461600631998054

`A269435(A167499(n+5)+2)`
-/

namespace A269439.P5605461600631998054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A167499 (n + 5) + 2).toNat

end

end A269439.P5605461600631998054

/-! ## A269439.P3774333951214182562

`A269435(A000124(n+6)+6)`
-/

namespace A269439.P3774333951214182562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A000124 (n + 6) + 6).toNat

end

end A269439.P3774333951214182562

/-! ## A269439.P3875497323674956749

`A269435(A000096(n+5)+8)`
-/

namespace A269439.P3875497323674956749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A000096 (n + 5) + 8).toNat

end

end A269439.P3875497323674956749

/-! ## A269439.P6514374189786540656

`A269435(A000217(n+6)+7)`
-/

namespace A269439.P6514374189786540656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A000217 (n + 6) + 7).toNat

end

end A269439.P6514374189786540656

/-! ## A269439.P2060495796236073225

`A269435(A155212(n+2)+15)`
-/

namespace A269439.P2060495796236073225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A155212 (n + 2) + 15).toNat

end

end A269439.P2060495796236073225

/-!
# A269440: Alternating sum of 9-gonal (or decagonal) pyramidal numbers.

The programs for A269440, the canonical program `A269440.P17388955782527111667` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269440 has offset 0).

The definition of A269440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269440.P17388955782527111667

`(-1)^n*(2*n-1)*(14*n²+34*n+15)/48+5/16`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269440

/-- `(-1)^n*(2*n-1)*(14*n²+34*n+15)/48+5/16` -/
def P17388955782527111667.Spec : Prop :=
  ∀ n, P17388955782527111667.a n = (A269440 n : ℚ)

end A269440

/-! ## A269440.P3444184307448019018

`∑[(-1)^n*A007584(n)]`
-/

namespace A269440.P3444184307448019018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A007584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269440.P3444184307448019018

namespace A269440

/-- `∑[(-1)^n*A007584(n)]` -/
def P3444184307448019018.Spec : Prop :=
  ∀ n, P3444184307448019018.a n = A269440 n

end A269440

/-! ## A269440.P2168664101738693177

`∑[(-1)^n*∑[A001106(n)]]`
-/

namespace A269440.P2168664101738693177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269440.P2168664101738693177

namespace A269440

/-- `∑[(-1)^n*∑[A001106(n)]]` -/
def P2168664101738693177.Spec : Prop :=
  ∀ n, P2168664101738693177.a n = A269440 n

end A269440

/-! ## A269440.P4248645485655225959

`∑[A007584(n)*A033999(n)]`
-/

namespace A269440.P4248645485655225959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007584 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269440.P4248645485655225959

namespace A269440

/-- `∑[A007584(n)*A033999(n)]` -/
def P4248645485655225959.Spec : Prop :=
  ∀ n, P4248645485655225959.a n = A269440 n

end A269440

/-! ## A269440.P16232361259568170757

`(A269441(n)+A269429(n))/2`
-/

namespace A269440.P16232361259568170757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269441 n + A269429 n : ℚ) / 2

end

end A269440.P16232361259568170757

namespace A269440

/-- `(A269441(n)+A269429(n))/2` -/
def P16232361259568170757.Spec : Prop :=
  ∀ n, P16232361259568170757.a n = (A269440 n : ℚ)

end A269440

/-! ## A269440.P7250990309237972458

`∑[∑[A001106(n)]*A033999(n)]`
-/

namespace A269440.P7250990309237972458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269440.P7250990309237972458

namespace A269440

/-- `∑[∑[A001106(n)]*A033999(n)]` -/
def P7250990309237972458.Spec : Prop :=
  ∀ n, P7250990309237972458.a n = A269440 n

end A269440

/-! ## A269440.P5611168744510284526

`∑[∑[A047274(n+1)]]*A033999(n)`
-/

namespace A269440.P5611168744510284526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047274 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A269440.P5611168744510284526

namespace A269440

/-- `∑[∑[A047274(n+1)]]*A033999(n)` -/
def P5611168744510284526.Spec : Prop :=
  ∀ n, P5611168744510284526.a n = A269440 n

end A269440

/-!
# A269441: Alternating sum of 10-gonal (or decagonal) pyramidal numbers.

The programs for A269441, the canonical program `A269441.P6044820714139515567` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269441 has offset 0).

The definition of A269441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269441.P6044820714139515567

`((-1)^n*(16*n^3+30*n²-4*n-9)+9)/24`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269441

/-- `((-1)^n*(16*n^3+30*n²-4*n-9)+9)/24` -/
def P6044820714139515567.Spec : Prop :=
  ∀ n, P6044820714139515567.a n = (A269441 n : ℚ)

end A269441

/-! ## A269441.P10625909146281043509

`(-1)^n*∑[∑[record[or(6, n)-6]]]`
-/

namespace A269441.P10625909146281043509
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 n : ℤ) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269441.P10625909146281043509

namespace A269441

/-- `(-1)^n*∑[∑[record[or(6, n)-6]]]` -/
def P10625909146281043509.Spec : Prop :=
  ∀ n, P10625909146281043509.a n = A269441 n

end A269441

/-! ## A269441.P9426924913468140039

`(-1)^n*∑[A139591(n)]`
-/

namespace A269441.P9426924913468140039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269441.P9426924913468140039

namespace A269441

/-- `(-1)^n*∑[A139591(n)]` -/
def P9426924913468140039.Spec : Prop :=
  ∀ n, P9426924913468140039.a n = A269441 n

end A269441

/-! ## A269441.P12630705173518788831

`∑[A007585(n)*A033999(n)]`
-/

namespace A269441.P12630705173518788831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269441.P12630705173518788831

namespace A269441

/-- `∑[A007585(n)*A033999(n)]` -/
def P12630705173518788831.Spec : Prop :=
  ∀ n, P12630705173518788831.a n = A269441 n

end A269441

/-! ## A269441.P1278642686456409370

`2*A269429(n)-A266677(n)`
-/

namespace A269441.P1278642686456409370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A269429 n - A266677 n

end

end A269441.P1278642686456409370

namespace A269441

/-- `2*A269429(n)-A266677(n)` -/
def P1278642686456409370.Spec : Prop :=
  ∀ n, P1278642686456409370.a n = A269441 n

end A269441

/-! ## A269441.P9891722567129599464

`2*A269440(n)-A269429(n)`
-/

namespace A269441.P9891722567129599464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A269440 n - A269429 n

end

end A269441.P9891722567129599464

namespace A269441

/-- `2*A269440(n)-A269429(n)` -/
def P9891722567129599464.Spec : Prop :=
  ∀ n, P9891722567129599464.a n = A269441 n

end A269441

/-! ## A269441.P1272594076717588494

`A269428(n)+A269440(n)-A266677(n)`
-/

namespace A269441.P1272594076717588494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269428 n + (A269440 n - A266677 n)

end

end A269441.P1272594076717588494

namespace A269441

/-- `A269428(n)+A269440(n)-A266677(n)` -/
def P1272594076717588494.Spec : Prop :=
  ∀ n, P1272594076717588494.a n = A269441 n

end A269441

/-! ## A269441.P11714631960524578128

`A269429(n)+A269440(n)-A269428(n)`
-/

namespace A269441.P11714631960524578128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269429 n + (A269440 n - A269428 n)

end

end A269441.P11714631960524578128

namespace A269441

/-- `A269429(n)+A269440(n)-A269428(n)` -/
def P11714631960524578128.Spec : Prop :=
  ∀ n, P11714631960524578128.a n = A269441 n

end A269441

/-!
# A269442: a(n) = n*(n^8 + 1)*(n^4 + 1)*(n^2 + 1)*(n + 1) + 1.

The programs for A269442, the canonical program `A269442.P12983990812869124283` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269442 has offset 0).

The definition of A269442 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n^8+1)*(n^4+1)*(n²+1)*(n+1)+1` (program `A269442.P12983990812869124283`, by `A269442.P12983990812869124283.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269442.P12983990812869124283

`n*(n^8+1)*(n^4+1)*(n²+1)*(n+1)+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269442

/-- `n*(n^8+1)*(n^4+1)*(n²+1)*(n+1)+1` -/
def P12983990812869124283.Spec : Prop :=
  ∀ n, (P12983990812869124283.a n : ℤ) = A269442 n

theorem P12983990812869124283.correct : P12983990812869124283.Spec := by
  intro n
  simp only [A269442]

end A269442

/-! ## A269442.P16244205459762640802

`or(1, n*A105312(n))`
-/

namespace A269442.P16244205459762640802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * A105312 n)

end

end A269442.P16244205459762640802

namespace A269442

/-- `or(1, n*A105312(n))` -/
def P16244205459762640802.Spec : Prop :=
  ∀ n, P16244205459762640802.a n = A269442 n

end A269442

/-! ## A269442.P13699238870174036256

`A253240(eq[17, A002262(n)])`
-/

namespace A269442.P13699238870174036256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269442.P13699238870174036256

namespace A269442

/-- `A253240(eq[17, A002262(n)])` -/
def P13699238870174036256.Spec : Prop :=
  ∀ n, P13699238870174036256.a n = A269442 n

end A269442

/-! ## A269442.P11483039061546661629

`A104881(eq[16, A002262(n)])`
-/

namespace A269442.P11483039061546661629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269442.P11483039061546661629

namespace A269442

/-- `A104881(eq[16, A002262(n)])` -/
def P11483039061546661629.Spec : Prop :=
  ∀ n, P11483039061546661629.a n = A269442 n

end A269442

/-!
# A269445: a(n) = Sum_{k=0..n} floor(k/13).

The programs for A269445, the canonical program `A269445.P661642234774233245` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269445 has offset 0).

The definition of A269445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269445.P661642234774233245

`∑[floor(n/13)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269445

/-- `∑[floor(n/13)]` -/
def P661642234774233245.Spec : Prop :=
  ∀ n, P661642234774233245.a n = A269445 n

theorem P661642234774233245.correct : P661642234774233245.Spec := by
  intro n
  simp only [A269445]

end A269445

/-! ## A269445.P5564299956583900013

`∑[n-n%13]/13`
-/

namespace A269445.P5564299956583900013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % 13 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 13

end

end A269445.P5564299956583900013

namespace A269445

/-- `∑[n-n%13]/13` -/
def P5564299956583900013.Spec : Prop :=
  ∀ n, P5564299956583900013.a n = (A269445 n : ℚ)

end A269445

/-! ## A269445.P13932295568838716397

`floor(a(n-1)+n/13)` with `a(0)=0`
-/

namespace A269445.P13932295568838716397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) / 13⌋

end

end A269445.P13932295568838716397

namespace A269445

/-- `floor(a(n-1)+n/13)` -/
def P13932295568838716397.Spec : Prop :=
  ∀ n, P13932295568838716397.a n = A269445 n

end A269445

/-! ## A269445.P17768484841226322698

`∑[∑[char[lcm(13, n)]]]-(n+1)`
-/

namespace A269445.P17768484841226322698
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 13 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A269445.P17768484841226322698

namespace A269445

/-- `∑[∑[char[lcm(13, n)]]]-(n+1)` -/
def P17768484841226322698.Spec : Prop :=
  ∀ n, P17768484841226322698.a n = A269445 n

end A269445

/-! ## A269445.P10751670053108850630

`∑[∑[(gcd(13, n)-1)/12]]-(n+1)`
-/

namespace A269445.P10751670053108850630
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 13 n : ℤ) - 1 : ℚ) / 12

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℚ)

end

end A269445.P10751670053108850630

namespace A269445

/-- `∑[∑[(gcd(13, n)-1)/12]]-(n+1)` -/
def P10751670053108850630.Spec : Prop :=
  ∀ n, P10751670053108850630.a n = (A269445 n : ℚ)

end A269445

/-! ## A269445.P14776688978887865343

`∑[∑[char[A008595(n)]]]-(n+1)`
-/

namespace A269445.P14776688978887865343
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A269445.P14776688978887865343

namespace A269445

/-- `∑[∑[char[A008595(n)]]]-(n+1)` -/
def P14776688978887865343.Spec : Prop :=
  ∀ n, P14776688978887865343.a n = A269445 n

end A269445

/-! ## A269445.P9389504925858833765

`∑[A090620(n)]%A090606(n+1)`
-/

namespace A269445.P9389504925858833765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A090606 (n + 1))

end

end A269445.P9389504925858833765

namespace A269445

/-- `∑[A090620(n)]%A090606(n+1)` -/
def P9389504925858833765.Spec : Prop :=
  ∀ n, P9389504925858833765.a n = A269445 n

end A269445

/-! ## A269445.P12480195204456736805

`∑[A090620(n)]%A090632(n)`
-/

namespace A269445.P12480195204456736805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A090632 n)

end

end A269445.P12480195204456736805

namespace A269445

/-- `∑[A090620(n)]%A090632(n)` -/
def P12480195204456736805.Spec : Prop :=
  ∀ n, P12480195204456736805.a n = A269445 n

end A269445

/-!
# A269446: a(n) = n*(n^6 + n^3 + 1)*(n^6 - n^3 + 1)*(n^2 + n + 1)*(n^2 - n + 1)*(n + 1) + 1.

The programs for A269446, the canonical program `A269446.P368293158704612363` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269446 has offset 0).

The definition of A269446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269446.P368293158704612363

`(n*(n²+1+n)*(n^3+n^6+1)+1)*n^9+(n²+1+n)*(n^3+n^6+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269446

/-- `(n*(n²+1+n)*(n^3+n^6+1)+1)*n^9+(n²+1+n)*(n^3+n^6+1)` -/
def P368293158704612363.Spec : Prop :=
  ∀ n, (P368293158704612363.a n : ℤ) = A269446 n

theorem P368293158704612363.correct : P368293158704612363.Spec := by
  intro n
  simp only [A269446]

end A269446

/-! ## A269446.P7713156494650717671

`or(1, (n²+1+n)*(n^3+n^6+1)*A196292(n))`
-/

namespace A269446.P7713156494650717671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n ^ 2 + 1 + n) * (n ^ 3 + n ^ 6 + 1) : ℤ) * A196292 n)

end

end A269446.P7713156494650717671

namespace A269446

/-- `or(1, (n²+1+n)*(n^3+n^6+1)*A196292(n))` -/
def P7713156494650717671.Spec : Prop :=
  ∀ n, P7713156494650717671.a n = A269446 n

end A269446

/-!
# A269449: The first of 33 consecutive positive integers the sum of the squares of which is a square.

The programs for A269449, there is no canonical definition to state claims against.
-/

/-! ## A269449.P15937456823423606007

`A126571(xor(A000265(n+1), A023194(3*(n+1))))`
-/

namespace A269449.P15937456823423606007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (Int.xor (A000265 (n + 1)) (A023194 (3 * (n + 1)))).toNat

end

end A269449.P15937456823423606007

/-!
# A269450: a(n) = (n-1)*a(n-1) - a(n-2) + (n-2)*a(n-3) with a(0)=0, a(1)=a(2)=1.

The programs for A269450, the canonical program `A269450.P1575096954788912391` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269450 has offset 0).

The definition of A269450 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*a(n-1)-a(n-2)+(n-2)*a(n-3)` (program `A269450.P1575096954788912391`, by `A269450.P1575096954788912391.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269450.P1575096954788912391

`(n-1)*a(n-1)-a(n-2)+(n-2)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269450

/-- `(n-1)*a(n-1)-a(n-2)+(n-2)*a(n-3)` -/
def P1575096954788912391.Spec : Prop :=
  ∀ n, P1575096954788912391.a n = A269450 n

theorem P1575096954788912391.correct : P1575096954788912391.Spec := by
  intro n
  simp only [A269450]

end A269450

/-!
# A269451: The first of 50 consecutive positive integers the sum of the squares of which is a square.

The programs for A269451, there is no canonical definition to state claims against.
-/

/-! ## A269451.P10323447390540900890

`A245098(2*n+1)+A235088(n+2)`
-/

namespace A269451.P10323447390540900890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245098 (2 * n + 1) + A235088 (n + 2)

end

end A269451.P10323447390540900890

/-!
# A269452: phi(A157352(n)), n >= 1, where phi is Euler's totient function A000010, and A157352 gives the products of two distinct safe primes.

The programs for A269452, there is no canonical definition to state claims against.
-/

/-! ## A269452.P7105315061826754538

`A000010(A157352(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269452.P7105315061826754538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A157352 (n + 1)).toNat

end

end A269452.P7105315061826754538

/-! ## A269452.P2698426264143716284

`A086664(A157352(n+1))+A000034(2*n)`
-/

namespace A269452.P2698426264143716284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086664 (A157352 (n + 1)).toNat + A000034 (2 * n)

end

end A269452.P2698426264143716284

/-! ## A269452.P11365137380570494759

`A286361(A286361(n+1))+A086664(A157352(n+1))`
-/

namespace A269452.P11365137380570494759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286361 (A286361 (n + 1)).toNat + A086664 (A157352 (n + 1)).toNat

end

end A269452.P11365137380570494759

/-! ## A269452.P5561343603813117399

`A322382(A001359(n+1))+A086664(A157352(n+1))`
-/

namespace A269452.P5561343603813117399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (A001359 (n + 1)).toNat + A086664 (A157352 (n + 1)).toNat

end

end A269452.P5561343603813117399

/-! ## A269452.P658059264122281538

`A281626(A157352(2*n+1-n))`
-/

namespace A269452.P658059264122281538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281626 (A157352 (2 * n + 1 - n)).toNat

end

end A269452.P658059264122281538

/-! ## A269452.P8686633790053890883

`lcm(A043542(n+1), A326305(A157352(n+1)))`
-/

namespace A269452.P8686633790053890883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A043542 (n + 1)) (A326305 (A157352 (n + 1)).toNat)

end

end A269452.P8686633790053890883

/-! ## A269452.P8738672254504374335

`A086664(A157352(n+1))+A008279(A205133(n+1))`
-/

namespace A269452.P8738672254504374335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086664 (A157352 (n + 1)).toNat + A008279 (A205133 (n + 1)).toNat

end

end A269452.P8738672254504374335

/-! ## A269452.P18105274756291571715

`A322382(A327346(n+1))+A086664(A157352(n+1))`
-/

namespace A269452.P18105274756291571715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (A327346 (n + 1)).toNat + A086664 (A157352 (n + 1)).toNat

end

end A269452.P18105274756291571715

/-! ## A269452.P9072779527783996420

`A382154(A269453(n+1))`
-/

namespace A269452.P9072779527783996420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382154 (A269453 (n + 1)).toNat

end

end A269452.P9072779527783996420

/-!
# A269453: The order of 2 mod m when m is the product of two distinct safe primes.

The programs for A269453, there is no canonical definition to state claims against.
-/

/-! ## A269453.P8760276565498350303

`A007733(A157352(n+1))`
-/

namespace A269453.P8760276565498350303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A157352 (n + 1)).toNat

end

end A269453.P8760276565498350303

/-! ## A269453.P17814337969781913371

`A024222(A157352(n+1)+1)`
-/

namespace A269453.P17814337969781913371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (A157352 (n + 1) + 1).toNat

end

end A269453.P17814337969781913371

/-! ## A269453.P15161403556723159583

`A054703(or(1, A157352(n+1)))`
-/

namespace A269453.P15161403556723159583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (Int.lor 1 (A157352 (n + 1))).toNat

end

end A269453.P15161403556723159583

/-! ## A269453.P4047138497078443187

`A002326(floor(A157352(n+1)/2))`
-/

namespace A269453.P4047138497078443187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 ⌊(A157352 (n + 1) : ℚ) / 2⌋.toNat

end

end A269453.P4047138497078443187

/-! ## A269453.P16206818882421997384

`A054703(2*A157352(n+1))-1`
-/

namespace A269453.P16206818882421997384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (2 * A157352 (n + 1)).toNat - 1

end

end A269453.P16206818882421997384

/-! ## A269453.P14738326354303295985

`A002326((A157352(n+1)-1)/2)`
-/

namespace A269453.P14738326354303295985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.roundAway ((A157352 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A269453.P14738326354303295985

/-! ## A269453.P6432249557291849920

`A204987(A157352(n+1))-A007318(∑[n])`
-/

namespace A269453.P6432249557291849920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (A157352 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269453.P6432249557291849920

/-! ## A269453.P17870574696721971710

`A204987(A157352(n+1))-A007318(C(2, n))²`
-/

namespace A269453.P17870574696721971710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (A157352 (n + 1)).toNat - A007318 (Nat.choose 2 n) ^ 2

end

end A269453.P17870574696721971710

/-! ## A269453.P13850953751165182543

`A204987(A157352(n+1))-A000010(C(2, n)!)`
-/

namespace A269453.P13850953751165182543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (A157352 (n + 1)).toNat - A000010 (Nat.factorial (Nat.choose 2 n))

end

end A269453.P13850953751165182543

/-!
# A269454: Safe primes that are not congruent to -1 mod 8.

The programs for A269454, the canonical program `A269454.P4242820123996942999` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269454 has offset 1).

The definition of A269454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269454.P222472625495986134

`∩[A005385(n+1), A079545(n+1)]`
-/

namespace A269454.P222472625495986134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269454.P222472625495986134

namespace A269454

/-- `∩[A005385(n+1), A079545(n+1)]` -/
def P222472625495986134.Spec : Prop :=
  ∀ n, (P222472625495986134.a n : ℤ) = A269454 (n + 1)

end A269454

/-! ## A269454.P17505428681289636057

`∩[A065966(n+1), A079545(n+1)]`
-/

namespace A269454.P17505428681289636057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269454.P17505428681289636057

namespace A269454

/-- `∩[A065966(n+1), A079545(n+1)]` -/
def P17505428681289636057.Spec : Prop :=
  ∀ n, (P17505428681289636057.a n : ℤ) = A269454 (n + 1)

end A269454

/-! ## A269454.P6773531922274252963

`∩[A079545(n+1), A266233(n+1)]`
-/

namespace A269454.P6773531922274252963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269454.P6773531922274252963

namespace A269454

/-- `∩[A079545(n+1), A266233(n+1)]` -/
def P6773531922274252963.Spec : Prop :=
  ∀ n, (P6773531922274252963.a n : ℤ) = A269454 (n + 1)

end A269454

/-! ## A269454.P1554312409017131464

`∩[A005385(n+1), A084865(n+1)]`
-/

namespace A269454.P1554312409017131464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269454.P1554312409017131464

namespace A269454

/-- `∩[A005385(n+1), A084865(n+1)]` -/
def P1554312409017131464.Spec : Prop :=
  ∀ n, (P1554312409017131464.a n : ℤ) = A269454 (n + 1)

end A269454

/-! ## A269454.P15963807352122019496

`∩[A065966(n+1), A084865(n+1)]`
-/

namespace A269454.P15963807352122019496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269454.P15963807352122019496

namespace A269454

/-- `∩[A065966(n+1), A084865(n+1)]` -/
def P15963807352122019496.Spec : Prop :=
  ∀ n, (P15963807352122019496.a n : ℤ) = A269454 (n + 1)

end A269454

/-! ## A269454.P9324576865333655554

`∩[A084865(n+1), A266233(n+1)]`
-/

namespace A269454.P9324576865333655554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269454.P9324576865333655554

namespace A269454

/-- `∩[A084865(n+1), A266233(n+1)]` -/
def P9324576865333655554.Spec : Prop :=
  ∀ n, (P9324576865333655554.a n : ℤ) = A269454 (n + 1)

end A269454

/-! ## A269454.P6228751254940911879

`∩[A084865(n+1), A391049(n+1)]`
-/

namespace A269454.P6228751254940911879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269454.P6228751254940911879

namespace A269454

/-- `∩[A084865(n+1), A391049(n+1)]` -/
def P6228751254940911879.Spec : Prop :=
  ∀ n, (P6228751254940911879.a n : ℤ) = A269454 (n + 1)

end A269454

/-! ## A269454.P4242820123996942999

`p?[A294091(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A269454

/-- `p?[A294091(n+1)]` -/
def P4242820123996942999.Spec : Prop :=
  ∀ n, P4242820123996942999.a n = A269454 (n + 1)

theorem P4242820123996942999.correct : P4242820123996942999.Spec := by
  intro n
  simp only [A269454, Nat.add_sub_cancel]

end A269454

/-! ## A269454.P9542996465914761884

`p?[2*A002313(n+1)+1]`
-/

namespace A269454.P9542996465914761884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002313 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269454.P9542996465914761884

namespace A269454

/-- `p?[2*A002313(n+1)+1]` -/
def P9542996465914761884.Spec : Prop :=
  ∀ n, P9542996465914761884.a n = A269454 (n + 1)

end A269454

/-! ## A269454.P10479502335002142137

`∩[A005385(n+1), A294091(n+1)]`
-/

namespace A269454.P10479502335002142137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269454.P10479502335002142137

namespace A269454

/-- `∩[A005385(n+1), A294091(n+1)]` -/
def P10479502335002142137.Spec : Prop :=
  ∀ n, (P10479502335002142137.a n : ℤ) = A269454 (n + 1)

end A269454

/-! ## A269454.P16708444332340944760

`∩[A048184(n+1), A294091(n+1)]`
-/

namespace A269454.P16708444332340944760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269454.P16708444332340944760

namespace A269454

/-- `∩[A048184(n+1), A294091(n+1)]` -/
def P16708444332340944760.Spec : Prop :=
  ∀ n, (P16708444332340944760.a n : ℤ) = A269454 (n + 1)

end A269454

/-! ## A269454.P10554458453046316476

`∩[A065966(n+1), A294091(n+1)]`
-/

namespace A269454.P10554458453046316476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269454.P10554458453046316476

namespace A269454

/-- `∩[A065966(n+1), A294091(n+1)]` -/
def P10554458453046316476.Spec : Prop :=
  ∀ n, (P10554458453046316476.a n : ℤ) = A269454 (n + 1)

end A269454

/-! ## A269454.P16305036077553274503

`∩[A074781(n+1), A294091(n+1)]`
-/

namespace A269454.P16305036077553274503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269454.P16305036077553274503

namespace A269454

/-- `∩[A074781(n+1), A294091(n+1)]` -/
def P16305036077553274503.Spec : Prop :=
  ∀ n, (P16305036077553274503.a n : ℤ) = A269454 (n + 1)

end A269454

/-! ## A269454.P17743235000822586226

`∩[A077500(n+1), A294091(n+1)]`
-/

namespace A269454.P17743235000822586226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269454.P17743235000822586226

namespace A269454

/-- `∩[A077500(n+1), A294091(n+1)]` -/
def P17743235000822586226.Spec : Prop :=
  ∀ n, (P17743235000822586226.a n : ℤ) = A269454 (n + 1)

end A269454

/-! ## A269454.P17374871560776289475

`∩[A079148(n+1), A294091(n+1)]`
-/

namespace A269454.P17374871560776289475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269454.P17374871560776289475

namespace A269454

/-- `∩[A079148(n+1), A294091(n+1)]` -/
def P17374871560776289475.Spec : Prop :=
  ∀ n, (P17374871560776289475.a n : ℤ) = A269454 (n + 1)

end A269454

/-! ## A269454.P10568857099508820434

`∩[A079149(n+1), A294091(n+1)]`
-/

namespace A269454.P10568857099508820434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269454.P10568857099508820434

namespace A269454

/-- `∩[A079149(n+1), A294091(n+1)]` -/
def P10568857099508820434.Spec : Prop :=
  ∀ n, (P10568857099508820434.a n : ℤ) = A269454 (n + 1)

end A269454

/-! ## A269454.P2103233163914440796

`∩[A079151(n+1), A294091(n+1)]`
-/

namespace A269454.P2103233163914440796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269454.P2103233163914440796

namespace A269454

/-- `∩[A079151(n+1), A294091(n+1)]` -/
def P2103233163914440796.Spec : Prop :=
  ∀ n, (P2103233163914440796.a n : ℤ) = A269454 (n + 1)

end A269454

/-! ## A269454.P7432657911841455622

`∩[A079545(n+1), A294091(n+1)]`
-/

namespace A269454.P7432657911841455622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269454.P7432657911841455622

namespace A269454

/-- `∩[A079545(n+1), A294091(n+1)]` -/
def P7432657911841455622.Spec : Prop :=
  ∀ n, (P7432657911841455622.a n : ℤ) = A269454 (n + 1)

end A269454

/-! ## A269454.P12679860663688775975

`∩[A084441(n+1), A294091(n+1)]`
-/

namespace A269454.P12679860663688775975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269454.P12679860663688775975

namespace A269454

/-- `∩[A084441(n+1), A294091(n+1)]` -/
def P12679860663688775975.Spec : Prop :=
  ∀ n, (P12679860663688775975.a n : ℤ) = A269454 (n + 1)

end A269454

/-! ## A269454.P12868081870699833963

`∩[A084865(n+1), A294091(n+1)]`
-/

namespace A269454.P12868081870699833963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269454.P12868081870699833963

namespace A269454

/-- `∩[A084865(n+1), A294091(n+1)]` -/
def P12868081870699833963.Spec : Prop :=
  ∀ n, (P12868081870699833963.a n : ℤ) = A269454 (n + 1)

end A269454

/-!
# A269455: Number of Type I (singly-even) self-dual binary codes of length 2n.

The programs for A269455, there is no canonical definition to state claims against.
-/

/-! ## A269455.P6767759087421389056

`A374199(A000778(n))`
-/

namespace A269455.P6767759087421389056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374199 (A000778 n).toNat

end

end A269455.P6767759087421389056

/-!
# A269457: a(n) = 5*(n + 1)*(n + 4)/2.

The programs for A269457, the canonical program `A269457.P16808935252261852584` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269457 has offset 0).

The definition of A269457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269457.P12878290590523934548

`5*(n+1)*(n+4)/2`
-/

namespace A269457.P12878290590523934548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℚ) * ((n + 4 : ℚ) / 2)

end

end A269457.P12878290590523934548

namespace A269457

/-- `5*(n+1)*(n+4)/2` -/
def P12878290590523934548.Spec : Prop :=
  ∀ n, P12878290590523934548.a n = (A269457 n : ℚ)

theorem P12878290590523934548.correct : P12878290590523934548.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A269457, Nat.add_sub_cancel, A269457.P12878290590523934548.a, A269457.P16808935252261852584.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A269457, Nat.add_sub_cancel, A269457.P12878290590523934548.a, A269457.P16808935252261852584.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A269457

/-! ## A269457.P16808935252261852584

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=10, a(1)=25, a(2)=45`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269457

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P16808935252261852584.Spec : Prop :=
  ∀ n, P16808935252261852584.a n = A269457 n

theorem P16808935252261852584.correct : P16808935252261852584.Spec := by
  intro n
  simp only [A269457]

end A269457

/-! ## A269457.P6602033366212493870

`A055998(2*n+2)+A055998(n+1)`
-/

namespace A269457.P6602033366212493870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (2 * n + 2) + A055998 (n + 1)

end

end A269457.P6602033366212493870

namespace A269457

/-- `A055998(2*n+2)+A055998(n+1)` -/
def P6602033366212493870.Spec : Prop :=
  ∀ n, P6602033366212493870.a n = A269457 n

end A269457

/-! ## A269457.P2291979979203049280

`∑[a(n-1)+5]` with `a(0)=10`
-/

namespace A269457.P2291979979203049280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269457.P2291979979203049280

namespace A269457

/-- `∑[a(n-1)+5]` -/
def P2291979979203049280.Spec : Prop :=
  ∀ n, (P2291979979203049280.a n : ℤ) = A269457 n

end A269457

/-! ## A269457.P3673683324784380869

`floor(5/acot(∑[n+2]))`
-/

namespace A269457.P3673683324784380869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A269457.P3673683324784380869

namespace A269457

/-- `floor(5/acot(∑[n+2]))` -/
def P3673683324784380869.Spec : Prop :=
  ∀ n, P3673683324784380869.a n = A269457 n

end A269457

/-! ## A269457.P9333796075956929688

`∑[ogf((10-5x)/(1-2x+x^2))]`
-/

namespace A269457.P9333796075956929688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269457.P9333796075956929688

namespace A269457

/-- `∑[ogf((10-5x)/(1-2x+x^2))]` -/
def P9333796075956929688.Spec : Prop :=
  ∀ n, P9333796075956929688.a n = A269457 n

end A269457

/-! ## A269457.P12377540388971307893

`ogf((10-5x)/(1-3x+3x^2-x^3))`
-/

namespace A269457.P12377540388971307893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -5] [1, -3, 3, -1] n

end

end A269457.P12377540388971307893

namespace A269457

/-- `ogf((10-5x)/(1-3x+3x^2-x^3))` -/
def P12377540388971307893.Spec : Prop :=
  ∀ n, P12377540388971307893.a n = A269457 n

end A269457

/-! ## A269457.P8264830600740276611

`lcm(5, 1-∑[n+2])+5`
-/

namespace A269457.P8264830600740276611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) + 5

end

end A269457.P8264830600740276611

namespace A269457

/-- `lcm(5, 1-∑[n+2])+5` -/
def P8264830600740276611.Spec : Prop :=
  ∀ n, (P8264830600740276611.a n : ℤ) = A269457 n

end A269457

/-! ## A269457.P296406418294612173

`a(n-1)+5*(n+2)` with `a(0)=10`
-/

namespace A269457.P296406418294612173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) + 5 * (n + 2)

end

end A269457.P296406418294612173

namespace A269457

/-- `a(n-1)+5*(n+2)` -/
def P296406418294612173.Spec : Prop :=
  ∀ n, (P296406418294612173.a n : ℤ) = A269457 n

end A269457

/-! ## A269457.P17080718990094672919

`A067728(n+1)+∑[n]`
-/

namespace A269457.P17080718990094672919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067728 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A269457.P17080718990094672919

namespace A269457

/-- `A067728(n+1)+∑[n]` -/
def P17080718990094672919.Spec : Prop :=
  ∀ n, P17080718990094672919.a n = A269457 n

end A269457

/-!
# A269458: Primes p such that the numbers of negabinary evil primes and negabinary odious primes not exceeding p are equal (see comment).

The programs for A269458, there is no canonical definition to state claims against.
-/

/-! ## A269458.P1097938780840517068

`p?[∪[A340603(3*n+2), ∑[n]]]`
-/

namespace A269458.P1097938780840517068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340603 (3 * n + 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A269458.P1097938780840517068

/-! ## A269458.P10332992269270892458

`∩[A038900(n+1), A376601(n+1)]`
-/

namespace A269458.P10332992269270892458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269458.P10332992269270892458

/-!
# A269460: Number of length-n 0..n arrays with no repeated value equal to the previous repeated value.

The programs for A269460, there is no canonical definition to state claims against.
-/

/-! ## A269460.P15110031580476188665

`A269467(∑[4*n]+1)`
-/

namespace A269460.P15110031580476188665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269460.P15110031580476188665

/-! ## A269460.P4419627619852725814

`record[A003982(n)*A269467(n+1)]`
-/

namespace A269460.P4419627619852725814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A269467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269460.P4419627619852725814

/-! ## A269460.P13492867537916410684

`gcd(A000038(n), A269467(A001844(n)))`
-/

namespace A269460.P13492867537916410684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A269467 (A001844 n).toNat)

end

end A269460.P13492867537916410684

/-! ## A269460.P5696523422386353949

`A269467(A001844(n))%A236744(n+1)`
-/

namespace A269460.P5696523422386353949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269467 (A001844 n).toNat) (A236744 (n + 1))

end

end A269460.P5696523422386353949

/-! ## A269460.P13805109017673080263

`lcm(A000188(n+1), A269467(A001844(n)))`
-/

namespace A269460.P13805109017673080263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000188 (n + 1)) (A269467 (A001844 n).toNat)

end

end A269460.P13805109017673080263

/-!
# A269461: Number of length-n 0..2 arrays with no repeated value equal to the previous repeated value.

The programs for A269461, the canonical program `A269461.P16063441463586305270` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269461 has offset 1).

The definition of A269461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269461.P15476812274502698650

`ogf((3-9x^2)/(1-3x-2x^2+8x^3))`
-/

namespace A269461.P15476812274502698650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -9] [1, -3, -2, 8] n

end

end A269461.P15476812274502698650

namespace A269461

/-- `ogf((3-9x^2)/(1-3x-2x^2+8x^3))` -/
def P15476812274502698650.Spec : Prop :=
  ∀ n, P15476812274502698650.a n = A269461 (n + 1)

end A269461

/-! ## A269461.P16063441463586305270

`3*a(n-1)+2*a(n-2)-8*a(n-3)` with `a(0)=3, a(1)=9, a(2)=24`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269461

/-- `3*a(n-1)+2*a(n-2)-8*a(n-3)` -/
def P16063441463586305270.Spec : Prop :=
  ∀ n, P16063441463586305270.a n = A269461 (n + 1)

theorem P16063441463586305270.correct : P16063441463586305270.Spec := by
  intro n
  simp only [A269461, Nat.add_sub_cancel]

end A269461

/-! ## A269461.P17845757254091169743

`A269467(∑[n+2])`
-/

namespace A269461.P17845757254091169743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269461.P17845757254091169743

namespace A269461

/-- `A269467(∑[n+2])` -/
def P17845757254091169743.Spec : Prop :=
  ∀ n, P17845757254091169743.a n = A269461 (n + 1)

end A269461

/-! ## A269461.P9038534397728169696

`A269678(∑[n+2])`
-/

namespace A269461.P9038534397728169696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269461.P9038534397728169696

namespace A269461

/-- `A269678(∑[n+2])` -/
def P9038534397728169696.Spec : Prop :=
  ∀ n, P9038534397728169696.a n = A269461 (n + 1)

end A269461

/-! ## A269461.P1436249492920115018

`record[A269678(A000096(A324347(n)))]`
-/

namespace A269461.P1436249492920115018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A000096 (A324347 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269461.P1436249492920115018

namespace A269461

/-- `record[A269678(A000096(A324347(n)))]` -/
def P1436249492920115018.Spec : Prop :=
  ∀ n, P1436249492920115018.a n = A269461 (n + 1)

end A269461

/-! ## A269461.P6477557589633007241

`record[A269467(A000096(A101279(n+1)))]`
-/

namespace A269461.P6477557589633007241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A000096 (A101279 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269461.P6477557589633007241

namespace A269461

/-- `record[A269467(A000096(A101279(n+1)))]` -/
def P6477557589633007241.Spec : Prop :=
  ∀ n, P6477557589633007241.a n = A269461 (n + 1)

end A269461

/-! ## A269461.P14884516482901088574

`record[A269678(A000096(A120385(n+1)))]`
-/

namespace A269461.P14884516482901088574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A000096 (A120385 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269461.P14884516482901088574

namespace A269461

/-- `record[A269678(A000096(A120385(n+1)))]` -/
def P14884516482901088574.Spec : Prop :=
  ∀ n, P14884516482901088574.a n = A269461 (n + 1)

end A269461

/-! ## A269461.P6169096252433985059

`record[A269678(A000096(A263110(n+1)))]`
-/

namespace A269461.P6169096252433985059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A000096 (A263110 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269461.P6169096252433985059

namespace A269461

/-- `record[A269678(A000096(A263110(n+1)))]` -/
def P6169096252433985059.Spec : Prop :=
  ∀ n, P6169096252433985059.a n = A269461 (n + 1)

end A269461

/-!
# A269462: Number of length-n 0..3 arrays with no repeated value equal to the previous repeated value.

The programs for A269462, the canonical program `A269462.P6131428759149184364` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269462 has offset 1).

The definition of A269462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269462.P6131428759149184364

`5*a(n-1)-18*a(n-3)` with `a(0)=4, a(1)=16, a(2)=60`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269462

/-- `5*a(n-1)-18*a(n-3)` -/
def P6131428759149184364.Spec : Prop :=
  ∀ n, P6131428759149184364.a n = A269462 (n + 1)

theorem P6131428759149184364.correct : P6131428759149184364.Spec := by
  intro n
  simp only [A269462, Nat.add_sub_cancel]

end A269462

/-! ## A269462.P15220147989333542433

`A269467(∑[n+3]+1)`
-/

namespace A269462.P15220147989333542433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269462.P15220147989333542433

namespace A269462

/-- `A269467(∑[n+3]+1)` -/
def P15220147989333542433.Spec : Prop :=
  ∀ n, P15220147989333542433.a n = A269462 (n + 1)

end A269462

/-! ## A269462.P11180969234246178336

`A269467(Δ[A008778(n)])/A033999(n)²`
-/

namespace A269462.P11180969234246178336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269467 (f1 (n + 1) - f1 n).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A269462.P11180969234246178336

namespace A269462

/-- `A269467(Δ[A008778(n)])/A033999(n)²` -/
def P11180969234246178336.Spec : Prop :=
  ∀ n, P11180969234246178336.a n = (A269462 (n + 1) : ℚ)

end A269462

/-! ## A269462.P12262985443975163975

`A269467(Δ[A008778(n)])%A042682(n)²`
-/

namespace A269462.P12262985443975163975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269467 (f1 (n + 1) - f1 n).toNat) (A042682 n ^ 2)

end

end A269462.P12262985443975163975

namespace A269462

/-- `A269467(Δ[A008778(n)])%A042682(n)²` -/
def P12262985443975163975.Spec : Prop :=
  ∀ n, P12262985443975163975.a n = A269462 (n + 1)

end A269462

/-! ## A269462.P10805509972354499043

`A269467(Δ[A008778(n)])+n%A028310(n)`
-/

namespace A269462.P10805509972354499043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (f1 (n + 1) - f1 n).toNat + Int.tmod (n : ℤ) (A028310 n)

end

end A269462.P10805509972354499043

namespace A269462

/-- `A269467(Δ[A008778(n)])+n%A028310(n)` -/
def P10805509972354499043.Spec : Prop :=
  ∀ n, P10805509972354499043.a n = A269462 (n + 1)

end A269462

/-! ## A269462.P1694336935595281329

`A269467(Δ[A008778(n)])+(2*A004777(n+1))%2`
-/

namespace A269462.P1694336935595281329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (f1 (n + 1) - f1 n).toNat + Int.tmod (2 * A004777 (n + 1)) 2

end

end A269462.P1694336935595281329

namespace A269462

/-- `A269467(Δ[A008778(n)])+(2*A004777(n+1))%2` -/
def P1694336935595281329.Spec : Prop :=
  ∀ n, P1694336935595281329.a n = A269462 (n + 1)

end A269462

/-! ## A269462.P9095636784712262575

`A269467(Δ[A008778(n)])+(n+1)%A020639(n+1)`
-/

namespace A269462.P9095636784712262575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (f1 (n + 1) - f1 n).toNat + Int.tmod (n + 1 : ℤ) (A020639 (n + 1))

end

end A269462.P9095636784712262575

namespace A269462

/-- `A269467(Δ[A008778(n)])+(n+1)%A020639(n+1)` -/
def P9095636784712262575.Spec : Prop :=
  ∀ n, P9095636784712262575.a n = A269462 (n + 1)

end A269462

/-!
# A269463: Number of length-n 0..4 arrays with no repeated value equal to the previous repeated value.

The programs for A269463, the canonical program `A269463.P4821972210605650741` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269463 has offset 1).

The definition of A269463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269463.P4821972210605650741

`7*a(n-1)-4*a(n-2)-32*a(n-3)` with `a(0)=5, a(1)=25, a(2)=120`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269463

/-- `7*a(n-1)-4*a(n-2)-32*a(n-3)` -/
def P4821972210605650741.Spec : Prop :=
  ∀ n, P4821972210605650741.a n = A269463 (n + 1)

theorem P4821972210605650741.correct : P4821972210605650741.Spec := by
  intro n
  simp only [A269463, Nat.add_sub_cancel]

end A269463

/-! ## A269463.P13760450621003094960

`A269467(A027379(n+2))`
-/

namespace A269463.P13760450621003094960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A027379 (n + 2)).toNat

end

end A269463.P13760450621003094960

namespace A269463

/-- `A269467(A027379(n+2))` -/
def P13760450621003094960.Spec : Prop :=
  ∀ n, P13760450621003094960.a n = A269463 (n + 1)

end A269463

/-! ## A269463.P11968850468114937879

`A269467(A055998(n+2))`
-/

namespace A269463.P11968850468114937879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A055998 (n + 2)).toNat

end

end A269463.P11968850468114937879

namespace A269463

/-- `A269467(A055998(n+2))` -/
def P11968850468114937879.Spec : Prop :=
  ∀ n, P11968850468114937879.a n = A269463 (n + 1)

end A269463

/-! ## A269463.P7006476320775714535

`A269467(A155212(n)+5)`
-/

namespace A269463.P7006476320775714535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A155212 n + 5).toNat

end

end A269463.P7006476320775714535

namespace A269463

/-- `A269467(A155212(n)+5)` -/
def P7006476320775714535.Spec : Prop :=
  ∀ n, P7006476320775714535.a n = A269463 (n + 1)

end A269463

/-! ## A269463.P16899406353826714276

`A269467(Δ[A034857(n+1)])`
-/

namespace A269463.P16899406353826714276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (f1 (n + 1) - f1 n).toNat

end

end A269463.P16899406353826714276

namespace A269463

/-- `A269467(Δ[A034857(n+1)])` -/
def P16899406353826714276.Spec : Prop :=
  ∀ n, P16899406353826714276.a n = A269463 (n + 1)

end A269463

/-! ## A269463.P9835656466151591535

`A269467(A046691(n+2)+1)`
-/

namespace A269463.P9835656466151591535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A046691 (n + 2) + 1).toNat

end

end A269463.P9835656466151591535

namespace A269463

/-- `A269467(A046691(n+2)+1)` -/
def P9835656466151591535.Spec : Prop :=
  ∀ n, P9835656466151591535.a n = A269463 (n + 1)

end A269463

/-! ## A269463.P16003487281321021562

`A269467(A052905(n+1)+2)`
-/

namespace A269463.P16003487281321021562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A052905 (n + 1) + 2).toNat

end

end A269463.P16003487281321021562

namespace A269463

/-- `A269467(A052905(n+1)+2)` -/
def P16003487281321021562.Spec : Prop :=
  ∀ n, P16003487281321021562.a n = A269463 (n + 1)

end A269463

/-! ## A269463.P12737108368274135289

`A269467(Δ[A008778(n+1)]-1)`
-/

namespace A269463.P12737108368274135289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (f1 (n + 1) - f1 n - 1).toNat

end

end A269463.P12737108368274135289

namespace A269463

/-- `A269467(Δ[A008778(n+1)]-1)` -/
def P12737108368274135289.Spec : Prop :=
  ∀ n, P12737108368274135289.a n = A269463 (n + 1)

end A269463

/-! ## A269463.P12938967820164820934

`A269467(A000096(n+2)+n+2)`
-/

namespace A269463.P12938967820164820934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A000096 (n + 2) + (n + 2 : ℤ)).toNat

end

end A269463.P12938967820164820934

namespace A269463

/-- `A269467(A000096(n+2)+n+2)` -/
def P12938967820164820934.Spec : Prop :=
  ∀ n, P12938967820164820934.a n = A269463 (n + 1)

end A269463

/-! ## A269463.P1937079084120337381

`A269467(A167614(n+1)+2*n+1)`
-/

namespace A269463.P1937079084120337381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A167614 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A269463.P1937079084120337381

namespace A269463

/-- `A269467(A167614(n+1)+2*n+1)` -/
def P1937079084120337381.Spec : Prop :=
  ∀ n, P1937079084120337381.a n = A269463 (n + 1)

end A269463

/-!
# A269464: Number of length-n 0..5 arrays with no repeated value equal to the previous repeated value.

The programs for A269464, the canonical program `A269464.P13392978762067275364` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269464 has offset 1).

The definition of A269464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269464.P13392978762067275364

`9*a(n-1)-10*a(n-2)-50*a(n-3)` with `a(0)=6, a(1)=36, a(2)=210`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269464

/-- `9*a(n-1)-10*a(n-2)-50*a(n-3)` -/
def P13392978762067275364.Spec : Prop :=
  ∀ n, P13392978762067275364.a n = A269464 (n + 1)

theorem P13392978762067275364.correct : P13392978762067275364.Spec := by
  intro n
  simp only [A269464, Nat.add_sub_cancel]

end A269464

/-! ## A269464.P4419318327970386665

`A269467(A046691(n+3))`
-/

namespace A269464.P4419318327970386665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A046691 (n + 3)).toNat

end

end A269464.P4419318327970386665

namespace A269464

/-- `A269467(A046691(n+3))` -/
def P4419318327970386665.Spec : Prop :=
  ∀ n, P4419318327970386665.a n = A269464 (n + 1)

end A269464

/-! ## A269464.P10173465127987565967

`A269467(Δ[A023545(n+1)])`
-/

namespace A269464.P10173465127987565967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (f1 (n + 1) - f1 n).toNat

end

end A269464.P10173465127987565967

namespace A269464

/-- `A269467(Δ[A023545(n+1)])` -/
def P10173465127987565967.Spec : Prop :=
  ∀ n, P10173465127987565967.a n = A269464 (n + 1)

end A269464

/-! ## A269464.P5635203001148901428

`A269467(A052905(n+2)+1)`
-/

namespace A269464.P5635203001148901428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A052905 (n + 2) + 1).toNat

end

end A269464.P5635203001148901428

namespace A269464

/-- `A269467(A052905(n+2)+1)` -/
def P5635203001148901428.Spec : Prop :=
  ∀ n, P5635203001148901428.a n = A269464 (n + 1)

end A269464

/-! ## A269464.P10071310985835535141

`A269467(A000124(n+5)-5)`
-/

namespace A269464.P10071310985835535141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A000124 (n + 5) - 5).toNat

end

end A269464.P10071310985835535141

namespace A269464

/-- `A269467(A000124(n+5)-5)` -/
def P10071310985835535141.Spec : Prop :=
  ∀ n, P10071310985835535141.a n = A269464 (n + 1)

end A269464

/-! ## A269464.P4739316944943748868

`A269467(Δ[A034857(n+2)]-1)`
-/

namespace A269464.P4739316944943748868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (f1 (n + 1) - f1 n - 1).toNat

end

end A269464.P4739316944943748868

namespace A269464

/-- `A269467(Δ[A034857(n+2)]-1)` -/
def P4739316944943748868.Spec : Prop :=
  ∀ n, P4739316944943748868.a n = A269464 (n + 1)

end A269464

/-! ## A269464.P14527966090351944948

`record[A010054(n+10)*A269467(n+6)]`
-/

namespace A269464.P14527966090351944948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 10) * A269467 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269464.P14527966090351944948

namespace A269464

/-- `record[A010054(n+10)*A269467(n+6)]` -/
def P14527966090351944948.Spec : Prop :=
  ∀ n, P14527966090351944948.a n = A269464 (n + 1)

end A269464

/-!
# A269465: Number of length-n 0..6 arrays with no repeated value equal to the previous repeated value.

The programs for A269465, the canonical program `A269465.P4840219042355613150` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269465 has offset 1).

The definition of A269465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269465.P4840219042355613150

`11*a(n-1)-18*a(n-2)-72*a(n-3)` with `a(0)=7, a(1)=49, a(2)=336`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269465

/-- `11*a(n-1)-18*a(n-2)-72*a(n-3)` -/
def P4840219042355613150.Spec : Prop :=
  ∀ n, P4840219042355613150.a n = A269465 (n + 1)

theorem P4840219042355613150.correct : P4840219042355613150.Spec := by
  intro n
  simp only [A269465, Nat.add_sub_cancel]

end A269465

/-! ## A269465.P6039887437614158693

`A269467(A052905(n+3))`
-/

namespace A269465.P6039887437614158693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A052905 (n + 3)).toNat

end

end A269465.P6039887437614158693

namespace A269465

/-- `A269467(A052905(n+3))` -/
def P6039887437614158693.Spec : Prop :=
  ∀ n, P6039887437614158693.a n = A269465 (n + 1)

end A269465

/-! ## A269465.P12025829602227859163

`A269467(A055999(n+3)+1)`
-/

namespace A269465.P12025829602227859163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A055999 (n + 3) + 1).toNat

end

end A269465.P12025829602227859163

namespace A269465

/-- `A269467(A055999(n+3)+1)` -/
def P12025829602227859163.Spec : Prop :=
  ∀ n, P12025829602227859163.a n = A269465 (n + 1)

end A269465

/-! ## A269465.P9968718704161431403

`A269467(A046691(n+4)-1)`
-/

namespace A269465.P9968718704161431403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A046691 (n + 4) - 1).toNat

end

end A269465.P9968718704161431403

namespace A269465

/-- `A269467(A046691(n+4)-1)` -/
def P9968718704161431403.Spec : Prop :=
  ∀ n, P9968718704161431403.a n = A269465 (n + 1)

end A269465

/-! ## A269465.P2809109408410245737

`A269467(A000096(n+5)-4)`
-/

namespace A269465.P2809109408410245737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A000096 (n + 5) - 4).toNat

end

end A269465.P2809109408410245737

namespace A269465

/-- `A269467(A000096(n+5)-4)` -/
def P2809109408410245737.Spec : Prop :=
  ∀ n, P2809109408410245737.a n = A269465 (n + 1)

end A269465

/-! ## A269465.P10940107681038636818

`A269467(A000124(n+6)-6)`
-/

namespace A269465.P10940107681038636818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A000124 (n + 6) - 6).toNat

end

end A269465.P10940107681038636818

namespace A269465

/-- `A269467(A000124(n+6)-6)` -/
def P10940107681038636818.Spec : Prop :=
  ∀ n, P10940107681038636818.a n = A269465 (n + 1)

end A269465

/-! ## A269465.P11739114772371839136

`A269467(Δ[A023545(n+2)]-1)`
-/

namespace A269465.P11739114772371839136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (f1 (n + 1) - f1 n - 1).toNat

end

end A269465.P11739114772371839136

namespace A269465

/-- `A269467(Δ[A023545(n+2)]-1)` -/
def P11739114772371839136.Spec : Prop :=
  ∀ n, P11739114772371839136.a n = A269465 (n + 1)

end A269465

/-!
# A269466: Number of length-n 0..7 arrays with no repeated value equal to the previous repeated value.

The programs for A269466, the canonical program `A269466.P7930905477516427024` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269466 has offset 1).

The definition of A269466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269466.P7930905477516427024

`13*a(n-1)-28*a(n-2)-98*a(n-3)` with `a(0)=8, a(1)=64, a(2)=504`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269466

/-- `13*a(n-1)-28*a(n-2)-98*a(n-3)` -/
def P7930905477516427024.Spec : Prop :=
  ∀ n, P7930905477516427024.a n = A269466 (n + 1)

theorem P7930905477516427024.correct : P7930905477516427024.Spec := by
  intro n
  simp only [A269466, Nat.add_sub_cancel]

end A269466

/-! ## A269466.P17394446650191171181

`A269467(A055999(n+4))`
-/

namespace A269466.P17394446650191171181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A055999 (n + 4)).toNat

end

end A269466.P17394446650191171181

namespace A269466

/-- `A269467(A055999(n+4))` -/
def P17394446650191171181.Spec : Prop :=
  ∀ n, P17394446650191171181.a n = A269466 (n + 1)

end A269466

/-! ## A269466.P14129713743255672419

`A269467(A052905(n+4)-1)`
-/

namespace A269466.P14129713743255672419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A052905 (n + 4) - 1).toNat

end

end A269466.P14129713743255672419

namespace A269466

/-- `A269467(A052905(n+4)-1)` -/
def P14129713743255672419.Spec : Prop :=
  ∀ n, P14129713743255672419.a n = A269466 (n + 1)

end A269466

/-! ## A269466.P7864791578809040323

`A269467(A000217(n+7)-6)`
-/

namespace A269466.P7864791578809040323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A000217 (n + 7) - 6).toNat

end

end A269466.P7864791578809040323

namespace A269466

/-- `A269467(A000217(n+7)-6)` -/
def P7864791578809040323.Spec : Prop :=
  ∀ n, P7864791578809040323.a n = A269466 (n + 1)

end A269466

/-! ## A269466.P17873055054500756358

`A269467(A000124(n+7)-7)`
-/

namespace A269466.P17873055054500756358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A000124 (n + 7) - 7).toNat

end

end A269466.P17873055054500756358

namespace A269466

/-- `A269467(A000124(n+7)-7)` -/
def P17873055054500756358.Spec : Prop :=
  ∀ n, P17873055054500756358.a n = A269466 (n + 1)

end A269466

/-! ## A269466.P1916671873682010642

`A269467(A034856(n+5)+n+3)`
-/

namespace A269466.P1916671873682010642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A034856 (n + 5) + (n + 3 : ℤ)).toNat

end

end A269466.P1916671873682010642

namespace A269466

/-- `A269467(A034856(n+5)+n+3)` -/
def P1916671873682010642.Spec : Prop :=
  ∀ n, P1916671873682010642.a n = A269466 (n + 1)

end A269466

/-! ## A269466.P3616246470390475949

`A269467(A161680(n+7)+n+1)`
-/

namespace A269466.P3616246470390475949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A161680 (n + 7) + (n + 1 : ℤ)).toNat

end

end A269466.P3616246470390475949

namespace A269466

/-- `A269467(A161680(n+7)+n+1)` -/
def P3616246470390475949.Spec : Prop :=
  ∀ n, P3616246470390475949.a n = A269466 (n + 1)

end A269466

/-!
# A269467: T(n,k)=Number of length-n 0..k arrays with no repeated value equal to the previous repeated value.

The programs for A269467, there is no canonical definition to state claims against.
-/

/-! ## A269467.P17719326683161685272

`or(A105514(A320606(n+1)), A269678(n+1))`
-/

namespace A269467.P17719326683161685272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105514 (A320606 (n + 1)).toNat) (A269678 (n + 1))

end

end A269467.P17719326683161685272

/-! ## A269467.P12634627894945107999

`A285007(A326322(n))+A269678(n+1)`
-/

namespace A269467.P12634627894945107999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (A326322 n).toNat + A269678 (n + 1)

end

end A269467.P12634627894945107999

/-! ## A269467.P14399143815842490666

`A328177(A269678(n+1)²)`
-/

namespace A269467.P14399143815842490666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328177 (A269678 (n + 1) ^ 2).toNat

end

end A269467.P14399143815842490666

/-! ## A269467.P12841026369221838207

`A103516(C(A269678(n+1), 2))`
-/

namespace A269467.P12841026369221838207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 (Nat.choose (A269678 (n + 1)).toNat 2)

end

end A269467.P12841026369221838207

/-! ## A269467.P643701747881578554

`A269678(n+1)%A084293(n+1)`
-/

namespace A269467.P643701747881578554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269678 (n + 1)) (A084293 (n + 1))

end

end A269467.P643701747881578554

/-!
# A269468: Number of length-4 0..n arrays with no repeated value equal to the previous repeated value.

The programs for A269468, the canonical program `A269468.P17284504124353768566` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269468 has offset 1).

The definition of A269468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269468.P17284504124353768566

`∑[∑[12*(n+1)²-2]]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269468

/-- `∑[∑[12*(n+1)²-2]]` -/
def P17284504124353768566.Spec : Prop :=
  ∀ n, P17284504124353768566.a n = A269468 (n + 1)

theorem P17284504124353768566.correct : P17284504124353768566.Spec := by
  intro n
  simp only [A269468, Nat.add_sub_cancel]

end A269468

/-! ## A269468.P16010838481568702111

`record[(1-(2-n)²)²]+n+1`
-/

namespace A269468.P16010838481568702111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 - (n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℤ)

end

end A269468.P16010838481568702111

namespace A269468

/-- `record[(1-(2-n)²)²]+n+1` -/
def P16010838481568702111.Spec : Prop :=
  ∀ n, P16010838481568702111.a n = A269468 (n + 1)

end A269468

/-! ## A269468.P8824947610200493858

`lcm(2, (1-(n+2)²)²+n+1)`
-/

namespace A269468.P8824947610200493858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((1 - ((n + 2) ^ 2 : ℤ)) ^ 2 + (n + 1 : ℤ))

end

end A269468.P8824947610200493858

namespace A269468

/-- `lcm(2, (1-(n+2)²)²+n+1)` -/
def P8824947610200493858.Spec : Prop :=
  ∀ n, (P8824947610200493858.a n : ℤ) = A269468 (n + 1)

end A269468

/-! ## A269468.P16022523170181562971

`xor(1, (1-(n+2)²)²+2+n)`
-/

namespace A269468.P16022523170181562971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((1 - ((n + 2) ^ 2 : ℤ)) ^ 2 + 2 + (n : ℤ))

end

end A269468.P16022523170181562971

namespace A269468

/-- `xor(1, (1-(n+2)²)²+2+n)` -/
def P16022523170181562971.Spec : Prop :=
  ∀ n, P16022523170181562971.a n = A269468 (n + 1)

end A269468

/-! ## A269468.P10676062090324630593

`(n+2)²²-C(2*(n+2), 2)`
-/

namespace A269468.P10676062090324630593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2) ^ 2 : ℤ) - (Nat.choose (2 * (n + 2)) 2 : ℤ)

end

end A269468.P10676062090324630593

namespace A269468

/-- `(n+2)²²-C(2*(n+2), 2)` -/
def P10676062090324630593.Spec : Prop :=
  ∀ n, P10676062090324630593.a n = A269468 (n + 1)

end A269468

/-! ## A269468.P18301171799124482924

`∑[a(n-1)+2]²+n+1` with `a(0)=3`
-/

namespace A269468.P18301171799124482924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n + 1)

end

end A269468.P18301171799124482924

namespace A269468

/-- `∑[a(n-1)+2]²+n+1` -/
def P18301171799124482924.Spec : Prop :=
  ∀ n, (P18301171799124482924.a n : ℤ) = A269468 (n + 1)

end A269468

/-! ## A269468.P15684178958898827824

`C(n+1, n)+(1-(n+2)²)²`
-/

namespace A269468.P15684178958898827824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) n : ℤ) + (1 - ((n + 2) ^ 2 : ℤ)) ^ 2

end

end A269468.P15684178958898827824

namespace A269468

/-- `C(n+1, n)+(1-(n+2)²)²` -/
def P15684178958898827824.Spec : Prop :=
  ∀ n, P15684178958898827824.a n = A269468 (n + 1)

end A269468

/-! ## A269468.P2655208588594221101

`or(2, ((n+1)*(n+3))²)+n-1`
-/

namespace A269468.P2655208588594221101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (((n + 1) * (n + 3)) ^ 2) : ℤ) + ((n : ℤ) - 1)

end

end A269468.P2655208588594221101

namespace A269468

/-- `or(2, ((n+1)*(n+3))²)+n-1` -/
def P2655208588594221101.Spec : Prop :=
  ∀ n, P2655208588594221101.a n = A269468 (n + 1)

end A269468

/-! ## A269468.P1551946372074596251

`((n+3)*C(n+1, n))²+n+1`
-/

namespace A269468.P1551946372074596251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 3) * Nat.choose (n + 1) n) ^ 2 + (n + 1)

end

end A269468.P1551946372074596251

namespace A269468

/-- `((n+3)*C(n+1, n))²+n+1` -/
def P1551946372074596251.Spec : Prop :=
  ∀ n, (P1551946372074596251.a n : ℤ) = A269468 (n + 1)

end A269468

/-! ## A269468.P7961108478390759917

`(n+2)*(6*C(n+3, 3)-(n+1))`
-/

namespace A269468.P7961108478390759917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((6 * Nat.choose (n + 3) 3 : ℤ) - (n + 1 : ℤ))

end

end A269468.P7961108478390759917

namespace A269468

/-- `(n+2)*(6*C(n+3, 3)-(n+1))` -/
def P7961108478390759917.Spec : Prop :=
  ∀ n, P7961108478390759917.a n = A269468 (n + 1)

end A269468

/-! ## A269468.P6846068375392688889

`2*lcm((n+2)²+n+1, ∑[n+1])`
-/

namespace A269468.P6846068375392688889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm ((n + 2) ^ 2 + (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269468.P6846068375392688889

namespace A269468

/-- `2*lcm((n+2)²+n+1, ∑[n+1])` -/
def P6846068375392688889.Spec : Prop :=
  ∀ n, (P6846068375392688889.a n : ℤ) = A269468 (n + 1)

end A269468

/-! ## A269468.P8287001615967667282

`(∑[n+2]+C(n+2, 2))²+n+1`
-/

namespace A269468.P8287001615967667282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 2) 2) ^ 2 + (n + 1)

end

end A269468.P8287001615967667282

namespace A269468

/-- `(∑[n+2]+C(n+2, 2))²+n+1` -/
def P8287001615967667282.Spec : Prop :=
  ∀ n, (P8287001615967667282.a n : ℤ) = A269468 (n + 1)

end A269468

/-! ## A269468.P4309289046001114129

`((n+2)²-gcd(n, n+1))²+n+1`
-/

namespace A269468.P4309289046001114129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 : ℤ) - (Nat.gcd n (n + 1) : ℤ)) ^ 2 + (n + 1 : ℤ)

end

end A269468.P4309289046001114129

namespace A269468

/-- `((n+2)²-gcd(n, n+1))²+n+1` -/
def P4309289046001114129.Spec : Prop :=
  ∀ n, P4309289046001114129.a n = A269468 (n + 1)

end A269468

/-! ## A269468.P9123407729023776947

`lcm(n+1, ∑[n+3+n]²)+n+1`
-/

namespace A269468.P9123407729023776947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) + (n + 1)

end

end A269468.P9123407729023776947

namespace A269468

/-- `lcm(n+1, ∑[n+3+n]²)+n+1` -/
def P9123407729023776947.Spec : Prop :=
  ∀ n, (P9123407729023776947.a n : ℤ) = A269468 (n + 1)

end A269468

/-! ## A269468.P17980763113533717981

`((n+3)*(n+1)%(n+3))²+n+1`
-/

namespace A269468.P17980763113533717981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 3) * ((n + 1) % (n + 3))) ^ 2 + (n + 1)

end

end A269468.P17980763113533717981

namespace A269468

/-- `((n+3)*(n+1)%(n+3))²+n+1` -/
def P17980763113533717981.Spec : Prop :=
  ∀ n, (P17980763113533717981.a n : ℤ) = A269468 (n + 1)

end A269468

/-! ## A269468.P16726589728208221168

`lcm(n+3, (n+1)*(n+3))²+n+1`
-/

namespace A269468.P16726589728208221168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 3) ((n + 1) * (n + 3)) ^ 2 + (n + 1)

end

end A269468.P16726589728208221168

namespace A269468

/-- `lcm(n+3, (n+1)*(n+3))²+n+1` -/
def P16726589728208221168.Spec : Prop :=
  ∀ n, (P16726589728208221168.a n : ℤ) = A269468 (n + 1)

end A269468

/-! ## A269468.P9619308568371114089

`(and(1, 2*n+1)-(n+2)²)²+n+1`
-/

namespace A269468.P9619308568371114089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 (2 * n + 1) : ℤ) - ((n + 2) ^ 2 : ℤ)) ^ 2 + (n + 1 : ℤ)

end

end A269468.P9619308568371114089

namespace A269468

/-- `(and(1, 2*n+1)-(n+2)²)²+n+1` -/
def P9619308568371114089.Spec : Prop :=
  ∀ n, P9619308568371114089.a n = A269468 (n + 1)

end A269468

/-! ## A269468.P14386106484161461287

`∑[gcd(2, 2*n)+2*n+1]²+n+1`
-/

namespace A269468.P14386106484161461287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (2 * n) + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n + 1)

end

end A269468.P14386106484161461287

namespace A269468

/-- `∑[gcd(2, 2*n)+2*n+1]²+n+1` -/
def P14386106484161461287.Spec : Prop :=
  ∀ n, (P14386106484161461287.a n : ℤ) = A269468 (n + 1)

end A269468

/-! ## A269468.P12613865974606331052

`(n+2)*(lcm(n+2, (n+3)*(n+1))-(n+1))`
-/

namespace A269468.P12613865974606331052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((Nat.lcm (n + 2) ((n + 3) * (n + 1)) : ℤ) - (n + 1 : ℤ))

end

end A269468.P12613865974606331052

namespace A269468

/-- `(n+2)*(lcm(n+2, (n+3)*(n+1))-(n+1))` -/
def P12613865974606331052.Spec : Prop :=
  ∀ n, P12613865974606331052.a n = A269468 (n + 1)

end A269468

/-! ## A269468.P9789870608179495908

`A268458(n+1)-1`
-/

namespace A269468.P9789870608179495908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268458 (n + 1) - 1

end

end A269468.P9789870608179495908

namespace A269468

/-- `A268458(n+1)-1` -/
def P9789870608179495908.Spec : Prop :=
  ∀ n, P9789870608179495908.a n = A269468 (n + 1)

end A269468

/-!
# A269469: Number of length-5 0..n arrays with no repeated value equal to the previous repeated value.

The programs for A269469, the canonical program `A269469.P2578020114568236256` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269469 has offset 1).

The definition of A269469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269469.P14529445361998482020

`(n+1)^5+5*(n+1)^4+7*(n+1)^3+2*(n+1)²-(n+1)`
-/

namespace A269469.P14529445361998482020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 5 + 5 * (n + 1) ^ 4 + 7 * (n + 1) ^ 3 + 2 * (n + 1) ^ 2 : ℤ) - (n + 1 : ℤ)

end

end A269469.P14529445361998482020

namespace A269469

/-- `(n+1)^5+5*(n+1)^4+7*(n+1)^3+2*(n+1)²-(n+1)` -/
def P14529445361998482020.Spec : Prop :=
  ∀ n, P14529445361998482020.a n = A269469 (n + 1)

theorem P14529445361998482020.correct : P14529445361998482020.Spec := by
  intro n
  simp only [A269469, Nat.add_sub_cancel, A269469.P14529445361998482020.a, A269469.P2578020114568236256.a, A061222, A061222.P12905291855604016356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269469

/-! ## A269469.P2578020114568236256

`(n+1)*(A061222(n)-3)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A269469

/-- `(n+1)*(A061222(n)-3)` -/
def P2578020114568236256.Spec : Prop :=
  ∀ n, P2578020114568236256.a n = A269469 (n + 1)

theorem P2578020114568236256.correct : P2578020114568236256.Spec := by
  intro n
  simp only [A269469, Nat.add_sub_cancel]

end A269469

/-! ## A269469.P10769824340048553760

`lcm(n+1, 3-A061222(n%(n+1)))`
-/

namespace A269469.P10769824340048553760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (3 - A061222 (n % (n + 1)))

end

end A269469.P10769824340048553760

namespace A269469

/-- `lcm(n+1, 3-A061222(n%(n+1)))` -/
def P10769824340048553760.Spec : Prop :=
  ∀ n, (P10769824340048553760.a n : ℤ) = A269469 (n + 1)

end A269469

/-! ## A269469.P3690844108008979345

`lcm(3-A061222(n), A000027(n+1))`
-/

namespace A269469.P3690844108008979345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 - A061222 n) (A000027 (n + 1))

end

end A269469.P3690844108008979345

namespace A269469

/-- `lcm(3-A061222(n), A000027(n+1))` -/
def P3690844108008979345.Spec : Prop :=
  ∀ n, (P3690844108008979345.a n : ℤ) = A269469 (n + 1)

end A269469

/-! ## A269469.P14906723659204068089

`A214945(n+2)/(n+3)`
-/

namespace A269469.P14906723659204068089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214945 (n + 2) : ℚ) / (n + 3 : ℚ)

end

end A269469.P14906723659204068089

namespace A269469

/-- `A214945(n+2)/(n+3)` -/
def P14906723659204068089.Spec : Prop :=
  ∀ n, P14906723659204068089.a n = (A269469 (n + 1) : ℚ)

end A269469

/-! ## A269469.P13059818012021472962

`lcm(A061222(n)-3, Δ[A001057(n)])`
-/

namespace A269469.P13059818012021472962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A061222 n - 3) (f1 (n + 1) - f1 n)

end

end A269469.P13059818012021472962

namespace A269469

/-- `lcm(A061222(n)-3, Δ[A001057(n)])` -/
def P13059818012021472962.Spec : Prop :=
  ∀ n, (P13059818012021472962.a n : ℤ) = A269469 (n + 1)

end A269469

/-! ## A269469.P6246274870472181698

`(A126420(n+2)+A002378(n+1))*A002378(n+1)`
-/

namespace A269469.P6246274870472181698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126420 (n + 2) + A002378 (n + 1)) * A002378 (n + 1)

end

end A269469.P6246274870472181698

namespace A269469

/-- `(A126420(n+2)+A002378(n+1))*A002378(n+1)` -/
def P6246274870472181698.Spec : Prop :=
  ∀ n, P6246274870472181698.a n = A269469 (n + 1)

theorem P6246274870472181698.correct : P6246274870472181698.Spec := by
  intro n
  simp only [A269469, Nat.add_sub_cancel, A269469.P6246274870472181698.a, A269469.P2578020114568236256.a, A002378, A002378.P6342434596694243671.a, A061222, A061222.P12905291855604016356.a, A126420, A126420.P400369601322111787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269469

/-! ## A269469.P15861480893805624403

`(n+2)*(A057722(n+2)+n+2)`
-/

namespace A269469.P15861480893805624403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A057722 (n + 2) + (n + 2 : ℤ))

end

end A269469.P15861480893805624403

namespace A269469

/-- `(n+2)*(A057722(n+2)+n+2)` -/
def P15861480893805624403.Spec : Prop :=
  ∀ n, P15861480893805624403.a n = A269469 (n + 1)

theorem P15861480893805624403.correct : P15861480893805624403.Spec := by
  intro n
  simp only [A269469, Nat.add_sub_cancel, A269469.P15861480893805624403.a, A269469.P2578020114568236256.a, A057722, A057722.P17503710663781687125.a, A061222, A061222.P12905291855604016356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269469

/-! ## A269469.P9592222868204836501

`Δ[(A064043(n+1)-4)*A000292(n)]`
-/

namespace A269469.P9592222868204836501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064043 (n + 1) - 4) * A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269469.P9592222868204836501

namespace A269469

/-- `Δ[(A064043(n+1)-4)*A000292(n)]` -/
def P9592222868204836501.Spec : Prop :=
  ∀ n, P9592222868204836501.a n = A269469 (n + 1)

theorem P9592222868204836501.correct : P9592222868204836501.Spec := by
  intro n
  simp only [A269469, Nat.add_sub_cancel, A269469.P9592222868204836501.f1, A269469.P9592222868204836501.a, A269469.P2578020114568236256.a, A000292, A000292.P18322089543142633594.a, A061222, A061222.P12905291855604016356.a, A064043, A064043.P3578565822102951633.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A269469

/-!
# A269470: Number of length-6 0..n arrays with no repeated value equal to the previous repeated value.

The programs for A269470, the canonical program `A269470.P5319185768845178275` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269470 has offset 1).

The definition of A269470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269470.P5319185768845178275

`(n+1)^6+6*(n+1)^5+11*(n+1)^4+4*(n+1)^3-(n+1)²+n+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269470

/-- `(n+1)^6+6*(n+1)^5+11*(n+1)^4+4*(n+1)^3-(n+1)²+n+1` -/
def P5319185768845178275.Spec : Prop :=
  ∀ n, P5319185768845178275.a n = A269470 (n + 1)

theorem P5319185768845178275.correct : P5319185768845178275.Spec := by
  intro n
  simp only [A269470, Nat.add_sub_cancel]

end A269470

/-! ## A269470.P13477532424858558564

`A269467(A167499(n+4)+1)`
-/

namespace A269470.P13477532424858558564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A167499 (n + 4) + 1).toNat

end

end A269470.P13477532424858558564

namespace A269470

/-- `A269467(A167499(n+4)+1)` -/
def P13477532424858558564.Spec : Prop :=
  ∀ n, P13477532424858558564.a n = A269470 (n + 1)

end A269470

/-! ## A269470.P10484510080315777338

`A269467(A133263(n+5)+4)`
-/

namespace A269470.P10484510080315777338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A133263 (n + 5) + 4).toNat

end

end A269470.P10484510080315777338

namespace A269470

/-- `A269467(A133263(n+5)+4)` -/
def P10484510080315777338.Spec : Prop :=
  ∀ n, P10484510080315777338.a n = A269470 (n + 1)

end A269470

/-! ## A269470.P1368066386046519018

`A269467(A000124(n+5)+5)`
-/

namespace A269470.P1368066386046519018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A000124 (n + 5) + 5).toNat

end

end A269470.P1368066386046519018

namespace A269470

/-- `A269467(A000124(n+5)+5)` -/
def P1368066386046519018.Spec : Prop :=
  ∀ n, P1368066386046519018.a n = A269470 (n + 1)

end A269470

/-! ## A269470.P322527487801619721

`A269467(A000217(n+5)+6)`
-/

namespace A269470.P322527487801619721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A000217 (n + 5) + 6).toNat

end

end A269470.P322527487801619721

namespace A269470

/-- `A269467(A000217(n+5)+6)` -/
def P322527487801619721.Spec : Prop :=
  ∀ n, P322527487801619721.a n = A269470 (n + 1)

end A269470

/-!
# A269471: Number of length-7 0..n arrays with no repeated value equal to the previous repeated value.

The programs for A269471, the canonical program `A269471.P5088706519964600705` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269471 has offset 1).

The definition of A269471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269471.P5088706519964600705

`(n+1)^7+7*(n+1)^6+16*(n+1)^5+8*(n+1)^4-(n+1)^3-(n+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269471

/-- `(n+1)^7+7*(n+1)^6+16*(n+1)^5+8*(n+1)^4-(n+1)^3-(n+1)` -/
def P5088706519964600705.Spec : Prop :=
  ∀ n, P5088706519964600705.a n = A269471 (n + 1)

theorem P5088706519964600705.correct : P5088706519964600705.Spec := by
  intro n
  simp only [A269471, Nat.add_sub_cancel]

end A269471

/-! ## A269471.P2515859586833021677

`A269467(A167499(n+5)+2)`
-/

namespace A269471.P2515859586833021677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A167499 (n + 5) + 2).toNat

end

end A269471.P2515859586833021677

namespace A269471

/-- `A269467(A167499(n+5)+2)` -/
def P2515859586833021677.Spec : Prop :=
  ∀ n, P2515859586833021677.a n = A269471 (n + 1)

end A269471

/-! ## A269471.P2517555747265480119

`A269467(A000124(n+6)+6)`
-/

namespace A269471.P2517555747265480119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A000124 (n + 6) + 6).toNat

end

end A269471.P2517555747265480119

namespace A269471

/-- `A269467(A000124(n+6)+6)` -/
def P2517555747265480119.Spec : Prop :=
  ∀ n, P2517555747265480119.a n = A269471 (n + 1)

end A269471

/-! ## A269471.P17406117384744665370

`A269467(A000217(n+6)+7)`
-/

namespace A269471.P17406117384744665370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A000217 (n + 6) + 7).toNat

end

end A269471.P17406117384744665370

namespace A269471

/-- `A269467(A000217(n+6)+7)` -/
def P17406117384744665370.Spec : Prop :=
  ∀ n, P17406117384744665370.a n = A269471 (n + 1)

end A269471

/-! ## A269471.P1226452097264608213

`A269467(A027379(n+4)+10)`
-/

namespace A269471.P1226452097264608213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (A027379 (n + 4) + 10).toNat

end

end A269471.P1226452097264608213

namespace A269471

/-- `A269467(A027379(n+4)+10)` -/
def P1226452097264608213.Spec : Prop :=
  ∀ n, P1226452097264608213.a n = A269471 (n + 1)

end A269471

/-! ## A269471.P12416133649060673540

`A269467(eq[6, A002260(n+1)]+n+8)`
-/

namespace A269471.P12416133649060673540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 8))

end

end A269471.P12416133649060673540

namespace A269471

/-- `A269467(eq[6, A002260(n+1)]+n+8)` -/
def P12416133649060673540.Spec : Prop :=
  ∀ n, P12416133649060673540.a n = A269471 (n + 1)

end A269471

/-!
# A269473: a(n) is the number of rooted 2n-face triangulations in an orientable surface of genus 1.

The programs for A269473, there is no canonical definition to state claims against.
-/

/-! ## A269473.P11397256184111485812

`A266240(Δ[A002623(n)])`
-/

namespace A269473.P11397256184111485812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266240 (f1 (n + 1) - f1 n).toNat

end

end A269473.P11397256184111485812

/-! ## A269473.P5358874620543817516

`A266240(A087811(n+2))`
-/

namespace A269473.P5358874620543817516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266240 (A087811 (n + 2)).toNat

end

end A269473.P5358874620543817516

/-! ## A269473.P17283609992829629036

`A266240(A002620(n+3))`
-/

namespace A269473.P17283609992829629036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266240 (A002620 (n + 3)).toNat

end

end A269473.P17283609992829629036

/-! ## A269473.P6792764952862379781

`A266240(A024206(n+2)+1)`
-/

namespace A269473.P6792764952862379781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266240 (A024206 (n + 2) + 1).toNat

end

end A269473.P6792764952862379781

/-! ## A269473.P3549505727470935071

`A266240(Δ[A266464(n+2)]-1)`
-/

namespace A269473.P3549505727470935071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266464 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266240 (f1 (n + 1) - f1 n - 1).toNat

end

end A269473.P3549505727470935071

/-!
# A269474: Column 2 of A266240.

The programs for A269474, there is no canonical definition to state claims against.
-/

/-! ## A269474.P2367180716575134157

`A266240(Δ[A266464(n+4)])`
-/

namespace A269474.P2367180716575134157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266464 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266240 (f1 (n + 1) - f1 n).toNat

end

end A269474.P2367180716575134157

/-! ## A269474.P13719696956965844271

`A266240(A024206(n+4)+2)`
-/

namespace A269474.P13719696956965844271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266240 (A024206 (n + 4) + 2).toNat

end

end A269474.P13719696956965844271

/-!
# A269477: Number of nX2 arrays containing 2 copies of 0..n-1 avoiding the pattern down-up in every row and equal-up in every column.

The programs for A269477, there is no canonical definition to state claims against.
-/

/-! ## A269477.P9697173587792805114

`A269505(∑[n+2])`
-/

namespace A269477.P9697173587792805114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269505 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269477.P9697173587792805114

/-! ## A269477.P3644322359415897359

`record[A269505(gcd(n, A262553(n)))]`
-/

namespace A269477.P3644322359415897359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269505 (Int.gcd (n : ℤ) (A262553 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269477.P3644322359415897359

/-! ## A269477.P11013426196380827216

`record[gcd(A008290(n), A269505(n+1))]`
-/

namespace A269477.P11013426196380827216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A269505 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269477.P11013426196380827216

/-! ## A269477.P8660553638946640391

`record[and(A167374(n), A269505(n+1))]`
-/

namespace A269477.P8660553638946640391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167374 n) (A269505 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269477.P8660553638946640391

/-!
# A269478: Number of n X 3 arrays containing 3 copies of 0..n-1 avoiding the pattern down-up in every row and equal-up in every column.

The programs for A269478, there is no canonical definition to state claims against.
-/

/-! ## A269478.P3554360346764110993

`A269479(∑[n+3]+1)`
-/

namespace A269478.P3554360346764110993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269479 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269478.P3554360346764110993

/-! ## A269478.P8783013461085622457

`record[A269479(A130297(n+1))]`
-/

namespace A269478.P8783013461085622457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269479 (A130297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269478.P8783013461085622457

/-!
# A269480: Number of 3Xn arrays containing n copies of 0..3-1 avoiding the pattern down-up in every row and equal-up in every column.

The programs for A269480, there is no canonical definition to state claims against.
-/

/-! ## A269480.P16943272250987779434

`A269479(∑[n+2]+4)`
-/

namespace A269480.P16943272250987779434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269479 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269480.P16943272250987779434

/-! ## A269480.P1071443693002035961

`and(-1, A269479(A167614(n+1)))`
-/

namespace A269480.P1071443693002035961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A269479 (A167614 (n + 1)).toNat)

end

end A269480.P1071443693002035961

/-! ## A269480.P15677643960801069093

`A269479(A167614(n+1))+A011738(n)`
-/

namespace A269480.P15677643960801069093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269479 (A167614 (n + 1)).toNat + A011738 n

end

end A269480.P15677643960801069093

/-!
# A269483: a(n) = n^12 - n^11 + n^9 - n^8 + n^6 - n^4 + n^3 - n + 1.

The programs for A269483, the canonical program `A269483.P17267424607268386351` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269483 has offset 0).

The definition of A269483 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^12-n^11+n^9-n^8+n^6-n^4+n^3-n+1` (program `A269483.P17267424607268386351`, by `A269483.P17267424607268386351.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269483.P17267424607268386351

`n^12-n^11+n^9-n^8+n^6-n^4+n^3-n+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269483

/-- `n^12-n^11+n^9-n^8+n^6-n^4+n^3-n+1` -/
def P17267424607268386351.Spec : Prop :=
  ∀ n, P17267424607268386351.a n = A269483 n

theorem P17267424607268386351.correct : P17267424607268386351.Spec := by
  intro n
  simp only [A269483]

end A269483

/-!
# A269484: Number of trees on n nodes with 2 forbidden limbs of sizes 7 and 8.

The programs for A269484, there is no canonical definition to state claims against.
-/

/-! ## A269484.P18378629120756051617

`A008620(A038060(n))-A145515(n)`
-/

namespace A269484.P18378629120756051617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A038060 n).toNat - A145515 n

end

end A269484.P18378629120756051617

/-! ## A269484.P3331002991144981083

`A008620(A038060(n))-A152157(n)`
-/

namespace A269484.P3331002991144981083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A038060 n).toNat - A152157 n

end

end A269484.P3331002991144981083

/-! ## A269484.P7920589605500806333

`A260316(A038060(n))-A308930(n)`
-/

namespace A269484.P7920589605500806333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260316 (A038060 n).toNat - A308930 n

end

end A269484.P7920589605500806333

/-! ## A269484.P972913423086351830

`A008620(A038060(n))-A000010(A007318(n))`
-/

namespace A269484.P972913423086351830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A038060 n).toNat - A000010 (A007318 n).toNat

end

end A269484.P972913423086351830

/-!
# A269486: a(n) = Sum_{j=0..10} (-n)^j.

The programs for A269486, the canonical program `A269486.P3485669575558773072` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269486 has offset 0).

The definition of A269486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269486.P11830121804077548506

`(n^11+1)/(n+1)`
-/

namespace A269486.P11830121804077548506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 11 + 1 : ℚ) / (n + 1 : ℚ)

end

end A269486.P11830121804077548506

namespace A269486

/-- `(n^11+1)/(n+1)` -/
def P11830121804077548506.Spec : Prop :=
  ∀ n, P11830121804077548506.a n = (A269486 n : ℚ)

end A269486

/-! ## A269486.P3485669575558773072

`ceil((A008455(n)+1)/(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A269486

/-- `ceil((A008455(n)+1)/(n+1))` -/
def P3485669575558773072.Spec : Prop :=
  ∀ n, P3485669575558773072.a n = A269486 n

theorem P3485669575558773072.correct : P3485669575558773072.Spec := by
  intro n
  simp only [A269486]

end A269486

/-! ## A269486.P9509719154948586542

`1-(n-n²)*A059839(n)`
-/

namespace A269486.P9509719154948586542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (n ^ 2 : ℤ)) * A059839 n

end

end A269486.P9509719154948586542

namespace A269486

/-- `1-(n-n²)*A059839(n)` -/
def P9509719154948586542.Spec : Prop :=
  ∀ n, P9509719154948586542.a n = A269486 n

end A269486

/-! ## A269486.P3716064883219214730

`A060884(n)*A131473(n)+1`
-/

namespace A269486.P3716064883219214730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 n * A131473 n + 1

end

end A269486.P3716064883219214730

namespace A269486

/-- `A060884(n)*A131473(n)+1` -/
def P3716064883219214730.Spec : Prop :=
  ∀ n, P3716064883219214730.a n = A269486 n

end A269486

/-! ## A269486.P11618487877245135968

`A008454(n)+A024008(n)/(n+1)`
-/

namespace A269486.P11618487877245135968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008454 n : ℚ) + (A024008 n : ℚ) / (n + 1 : ℚ)

end

end A269486.P11618487877245135968

namespace A269486

/-- `A008454(n)+A024008(n)/(n+1)` -/
def P11618487877245135968.Spec : Prop :=
  ∀ n, P11618487877245135968.a n = (A269486 n : ℚ)

end A269486

/-! ## A269486.P7126806539678848140

`A000007(n+1)+(A008455(n)+1)/(n+1)`
-/

namespace A269486.P7126806539678848140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℚ) + (A008455 n + 1 : ℚ) / (n + 1 : ℚ)

end

end A269486.P7126806539678848140

namespace A269486

/-- `A000007(n+1)+(A008455(n)+1)/(n+1)` -/
def P7126806539678848140.Spec : Prop :=
  ∀ n, P7126806539678848140.a n = (A269486 n : ℚ)

end A269486

/-!
# A269487: Number of length-n 0..n arrays with no repeated value differing from the previous repeated value by one.

The programs for A269487, there is no canonical definition to state claims against.
-/

/-! ## A269487.P808368287448744603

`A269494((n+1)²+n²)`
-/

namespace A269487.P808368287448744603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 ((n + 1) ^ 2 + n ^ 2)

end

end A269487.P808368287448744603

/-! ## A269487.P13681331181359565711

`record[root(A269494(n+1), A143182(n))]`
-/

namespace A269487.P13681331181359565711
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A269494 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269487.P13681331181359565711

/-! ## A269487.P10015906094450676577

`record[gcd(A003987(n), A269494(n+1))]`
-/

namespace A269487.P10015906094450676577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A269494 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269487.P10015906094450676577

/-! ## A269487.P829316519454003507

`record[char[A046092(n)]*A269494(n+1)]`
-/

namespace A269487.P829316519454003507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A269494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269487.P829316519454003507

/-! ## A269487.P14773617148863192084

`gcd(A000038(n), A269494(A001844(n)))`
-/

namespace A269487.P14773617148863192084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A269494 (A001844 n).toNat)

end

end A269487.P14773617148863192084

/-!
# A269488: Number of length-n 0..2 arrays with no repeated value differing from the previous repeated value by one.

The programs for A269488, the canonical program `A269488.P3891815757881610493` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269488 has offset 1).

The definition of A269488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269488.P3891815757881610493

`A028859(n+1)+A078057(n+1)-A003945(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A269488

/-- `A028859(n+1)+A078057(n+1)-A003945(n+1)` -/
def P3891815757881610493.Spec : Prop :=
  ∀ n, P3891815757881610493.a n = A269488 (n + 1)

theorem P3891815757881610493.correct : P3891815757881610493.Spec := by
  intro n
  simp only [A269488, Nat.add_sub_cancel]

end A269488

/-! ## A269488.P1853805287359093197

`A269494(∑[n+2])`
-/

namespace A269488.P1853805287359093197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269488.P1853805287359093197

namespace A269488

/-- `A269494(∑[n+2])` -/
def P1853805287359093197.Spec : Prop :=
  ∀ n, P1853805287359093197.a n = A269488 (n + 1)

end A269488

/-! ## A269488.P10983252780410763025

`A269494(A000096(n+1))%xor(1, 7*a(n-1))` with `a(0)=3`
-/

namespace A269488.P10983252780410763025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.tmod (A269494 (A000096 (n + 1)).toNat) (Int.xor 1 (7 * a (n - 1)))

end

end A269488.P10983252780410763025

namespace A269488

/-- `A269494(A000096(n+1))%xor(1, 7*a(n-1))` -/
def P10983252780410763025.Spec : Prop :=
  ∀ n, P10983252780410763025.a n = A269488 (n + 1)

end A269488

/-! ## A269488.P13305216688678029486

`record[A269494(A000096(A002260(n+1)))]`
-/

namespace A269488.P13305216688678029486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269488.P13305216688678029486

namespace A269488

/-- `record[A269494(A000096(A002260(n+1)))]` -/
def P13305216688678029486.Spec : Prop :=
  ∀ n, P13305216688678029486.a n = A269488 (n + 1)

end A269488

/-! ## A269488.P4776243278133016573

`record[A269494(A000096(A004736(n+1)))]`
-/

namespace A269488.P4776243278133016573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269488.P4776243278133016573

namespace A269488

/-- `record[A269494(A000096(A004736(n+1)))]` -/
def P4776243278133016573.Spec : Prop :=
  ∀ n, P4776243278133016573.a n = A269488 (n + 1)

end A269488

/-! ## A269488.P16369444626944280198

`record[A269494(A000096(A161908(n+1)))]`
-/

namespace A269488.P16369444626944280198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A000096 (A161908 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269488.P16369444626944280198

namespace A269488

/-- `record[A269494(A000096(A161908(n+1)))]` -/
def P16369444626944280198.Spec : Prop :=
  ∀ n, P16369444626944280198.a n = A269488 (n + 1)

end A269488

/-!
# A269489: Number of length-n 0..3 arrays with no repeated value differing from the previous repeated value by one.

The programs for A269489, there is no canonical definition to state claims against.
-/

/-! ## A269489.P11264953471152457300

`A269494(∑[n+3]+1)`
-/

namespace A269489.P11264953471152457300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269489.P11264953471152457300

/-! ## A269489.P15553806822088376630

`A269583(∑[n+3]+1)`
-/

namespace A269489.P15553806822088376630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269489.P15553806822088376630

/-! ## A269489.P16932521666765075170

`abs(A269583(A052905(n)+3)-n)+n`
-/

namespace A269489.P16932521666765075170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A269583 (A052905 n + 3).toNat - (n : ℤ)| + (n : ℤ)

end

end A269489.P16932521666765075170

/-! ## A269489.P13321667413143770994

`A269583(A052905(n)+3)+A000038(n+1)`
-/

namespace A269489.P13321667413143770994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A052905 n + 3).toNat + A000038 (n + 1)

end

end A269489.P13321667413143770994

/-! ## A269489.P16807486709447322903

`A269583(A052905(n)+3)%Δ[-A000420(n)]`
-/

namespace A269489.P16807486709447322903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269583 (A052905 n + 3).toNat) (f1 (n + 1) - f1 n)

end

end A269489.P16807486709447322903

/-! ## A269489.P15792871482155699916

`A269583(A052905(n)+3)+val(A163420(n+1), 2)`
-/

namespace A269489.P15792871482155699916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A052905 n + 3).toNat + (SequenceMachineLib.valuation (A163420 (n + 1)).toNat 2 : ℤ)

end

end A269489.P15792871482155699916

/-! ## A269489.P6236587348502832368

`A269583(A052905(n)+3)+C(n, A000040(n+1))`
-/

namespace A269489.P6236587348502832368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A052905 n + 3).toNat + (Nat.choose n (A000040 (n + 1)).toNat : ℤ)

end

end A269489.P6236587348502832368

/-! ## A269489.P10853387585567849247

`A269583(A052905(n)+3)+val(A000111(n), 3)`
-/

namespace A269489.P10853387585567849247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269583 (A052905 n + 3).toNat + (SequenceMachineLib.valuation (A000111 n).toNat 3 : ℤ)

end

end A269489.P10853387585567849247

/-!
# A269490: Number of length-n 0..4 arrays with no repeated value differing from the previous repeated value by one.

The programs for A269490, there is no canonical definition to state claims against.
-/

/-! ## A269490.P16186318461066475268

`A269494(A027379(n+2))`
-/

namespace A269490.P16186318461066475268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A027379 (n + 2)).toNat

end

end A269490.P16186318461066475268

/-! ## A269490.P1479840685931863818

`A269494(A055998(n+2))`
-/

namespace A269490.P1479840685931863818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A055998 (n + 2)).toNat

end

end A269490.P1479840685931863818

/-! ## A269490.P4356524054403722046

`A269494(A155212(n)+5)`
-/

namespace A269490.P4356524054403722046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A155212 n + 5).toNat

end

end A269490.P4356524054403722046

/-! ## A269490.P6450244648636492076

`A269494(A056000(n)+7)`
-/

namespace A269490.P6450244648636492076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A056000 n + 7).toNat

end

end A269490.P6450244648636492076

/-! ## A269490.P4608340769871718955

`A269494(Δ[A034857(n+1)])`
-/

namespace A269490.P4608340769871718955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (f1 (n + 1) - f1 n).toNat

end

end A269490.P4608340769871718955

/-! ## A269490.P15771647728339876073

`A269494(A052905(n+1)+2)`
-/

namespace A269490.P15771647728339876073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A052905 (n + 1) + 2).toNat

end

end A269490.P15771647728339876073

/-! ## A269490.P12747686327410073175

`A269494(A167614(n+1)+A005408(n))`
-/

namespace A269490.P12747686327410073175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A167614 (n + 1) + A005408 n).toNat

end

end A269490.P12747686327410073175

/-!
# A269491: Number of length-n 0..5 arrays with no repeated value differing from the previous repeated value by one.

The programs for A269491, there is no canonical definition to state claims against.
-/

/-! ## A269491.P837314958480725328

`A269494(A046691(n+3))`
-/

namespace A269491.P837314958480725328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A046691 (n + 3)).toNat

end

end A269491.P837314958480725328

/-! ## A269491.P2084596823784223324

`A269494(Δ[A023545(n+1)])`
-/

namespace A269491.P2084596823784223324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (f1 (n + 1) - f1 n).toNat

end

end A269491.P2084596823784223324

/-! ## A269491.P5792228700146728756

`A269494(A052905(n+2)+1)`
-/

namespace A269491.P5792228700146728756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A052905 (n + 2) + 1).toNat

end

end A269491.P5792228700146728756

/-! ## A269491.P8458698247337945786

`A269494(A000217(n+5)-4)`
-/

namespace A269491.P8458698247337945786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A000217 (n + 5) - 4).toNat

end

end A269491.P8458698247337945786

/-! ## A269491.P4522273338968295428

`A269494(A000124(n+5)-5)`
-/

namespace A269491.P4522273338968295428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A000124 (n + 5) - 5).toNat

end

end A269491.P4522273338968295428

/-! ## A269491.P7866718254717469461

`A269494(Δ[A034857(n+2)]-1)`
-/

namespace A269491.P7866718254717469461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (f1 (n + 1) - f1 n - 1).toNat

end

end A269491.P7866718254717469461

/-! ## A269491.P8790013918184690285

`A269494(Δ[A000125(n+4)]+n)`
-/

namespace A269491.P8790013918184690285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A269491.P8790013918184690285

/-!
# A269492: Number of length-n 0..6 arrays with no repeated value differing from the previous repeated value by one.

The programs for A269492, there is no canonical definition to state claims against.
-/

/-! ## A269492.P6175473070484513100

`A269494(A052905(n+3))`
-/

namespace A269492.P6175473070484513100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A052905 (n + 3)).toNat

end

end A269492.P6175473070484513100

/-! ## A269492.P1351263308108206967

`A269494(A000217(n+6)-5)`
-/

namespace A269492.P1351263308108206967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A000217 (n + 6) - 5).toNat

end

end A269492.P1351263308108206967

/-! ## A269492.P11043362710293301281

`A269494(A000124(n+6)-6)`
-/

namespace A269492.P11043362710293301281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A000124 (n + 6) - 6).toNat

end

end A269492.P11043362710293301281

/-! ## A269492.P11779844561784766061

`A269494(Δ[A023551(n+1)]+1)`
-/

namespace A269492.P11779844561784766061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (f1 (n + 1) - f1 n + 1).toNat

end

end A269492.P11779844561784766061

/-! ## A269492.P10955439617791072688

`A269494(Δ[A023545(n+2)]-1)`
-/

namespace A269492.P10955439617791072688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (f1 (n + 1) - f1 n - 1).toNat

end

end A269492.P10955439617791072688

/-! ## A269492.P12211023370539142613

`A269494(Δ[A000125(n+5)]+n)`
-/

namespace A269492.P12211023370539142613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A269492.P12211023370539142613

/-! ## A269492.P6641760652377729689

`A269494(A016777(2*n+5)+A000217(n))`
-/

namespace A269492.P6641760652377729689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A016777 (2 * n + 5) + A000217 n).toNat

end

end A269492.P6641760652377729689

/-!
# A269493: Number of length-n 0..7 arrays with no repeated value differing from the previous repeated value by one.

The programs for A269493, there is no canonical definition to state claims against.
-/

/-! ## A269493.P864469473441331301

`A269494(A055999(n+4))`
-/

namespace A269493.P864469473441331301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A055999 (n + 4)).toNat

end

end A269493.P864469473441331301

/-! ## A269493.P3917408001657168831

`A269494(Δ[A023551(n+2)])`
-/

namespace A269493.P3917408001657168831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (f1 (n + 1) - f1 n).toNat

end

end A269493.P3917408001657168831

/-! ## A269493.P11483243074746548080

`A269494(A052905(n+4)-1)`
-/

namespace A269493.P11483243074746548080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A052905 (n + 4) - 1).toNat

end

end A269493.P11483243074746548080

/-! ## A269493.P14640972852356172262

`A269494(A000217(n+7)-6)`
-/

namespace A269493.P14640972852356172262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A000217 (n + 7) - 6).toNat

end

end A269493.P14640972852356172262

/-! ## A269493.P2981399331157170221

`A269494(A000124(n+7)-7)`
-/

namespace A269493.P2981399331157170221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A000124 (n + 7) - 7).toNat

end

end A269493.P2981399331157170221

/-! ## A269493.P4332731302641584870

`A269494(Δ[A000125(n+6)]+n)`
-/

namespace A269493.P4332731302641584870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A269493.P4332731302641584870

/-!
# A269494: T(n,k)=Number of length-n 0..k arrays with no repeated value differing from the previous repeated value by one.

The programs for A269494, there is no canonical definition to state claims against.
-/

/-! ## A269494.P12109327867989282548

`A269690(n+1)+A198316(A143632(n))`
-/

namespace A269494.P12109327867989282548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (n + 1) + A198316 (A143632 n).toNat

end

end A269494.P12109327867989282548

/-! ## A269494.P11420761629788313417

`A269776(n+1)-A082859(A102480(n))`
-/

namespace A269494.P11420761629788313417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (n + 1) - A082859 (A102480 n).toNat

end

end A269494.P11420761629788313417

/-! ## A269494.P18404756991551883454

`A269776(n+1)-A082859(A143632(n))`
-/

namespace A269494.P18404756991551883454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (n + 1) - A082859 (A143632 n).toNat

end

end A269494.P18404756991551883454

/-! ## A269494.P10441581005187464113

`A269690(n+1)+A010893(A024462(n))`
-/

namespace A269494.P10441581005187464113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (n + 1) + A010893 ((A024462 n).toNat + 13)

end

end A269494.P10441581005187464113

/-! ## A269494.P9778168402941930910

`A269690(n+1)+A186745(A105868(n))`
-/

namespace A269494.P9778168402941930910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (n + 1) + A186745 (A105868 n).toNat

end

end A269494.P9778168402941930910

/-!
# A269495: Number of length-4 0..n arrays with no repeated value differing from the previous repeated value by one.

The programs for A269495, the canonical program `A269495.P17453572984529729438` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269495 has offset 1).

The definition of A269495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269495.P17453572984529729438

`(n+2)^4-2*(n+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269495

/-- `(n+2)^4-2*(n+1)` -/
def P17453572984529729438.Spec : Prop :=
  ∀ n, P17453572984529729438.a n = A269495 (n + 1)

theorem P17453572984529729438.correct : P17453572984529729438.Spec := by
  intro n
  simp only [A269495, Nat.add_sub_cancel]

end A269495

/-! ## A269495.P16376262223483246460

`ceil(((n+2)²-acot(n+3))²)`
-/

namespace A269495.P16376262223483246460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n + 2) ^ 2 : ℝ) - SequenceMachineLib.acot (n + 3 : ℝ)) ^ 2⌉

end

end A269495.P16376262223483246460

namespace A269495

/-- `ceil(((n+2)²-acot(n+3))²)` -/
def P16376262223483246460.Spec : Prop :=
  ∀ n, P16376262223483246460.a n = A269495 (n + 1)

end A269495

/-! ## A269495.P6280773686746481423

`round(((n+2)²-acot(n+3))²)`
-/

namespace A269495.P6280773686746481423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 2) ^ 2 : ℝ) - SequenceMachineLib.acot (n + 3 : ℝ)) ^ 2)

end

end A269495.P6280773686746481423

namespace A269495

/-- `round(((n+2)²-acot(n+3))²)` -/
def P6280773686746481423.Spec : Prop :=
  ∀ n, P6280773686746481423.a n = A269495 (n + 1)

end A269495

/-! ## A269495.P5086533997404905373

`abs(or(2, 2*n-(n+2)²²))`
-/

namespace A269495.P5086533997404905373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 ((2 * n : ℤ) - (((n + 2) ^ 2) ^ 2 : ℤ))|

end

end A269495.P5086533997404905373

namespace A269495

/-- `abs(or(2, 2*n-(n+2)²²))` -/
def P5086533997404905373.Spec : Prop :=
  ∀ n, P5086533997404905373.a n = A269495 (n + 1)

end A269495

/-! ## A269495.P7686701864097654938

`-or(2, 2*n-(n+2)²²)`
-/

namespace A269495.P7686701864097654938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 ((2 * n : ℤ) - (((n + 2) ^ 2) ^ 2 : ℤ))

end

end A269495.P7686701864097654938

namespace A269495

/-- `-or(2, 2*n-(n+2)²²)` -/
def P7686701864097654938.Spec : Prop :=
  ∀ n, P7686701864097654938.a n = A269495 (n + 1)

end A269495

/-! ## A269495.P1589092856424759820

`abs(xor(2, 2*n-(n+2)²²))`
-/

namespace A269495.P1589092856424759820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 2 ((2 * n : ℤ) - (((n + 2) ^ 2) ^ 2 : ℤ))|

end

end A269495.P1589092856424759820

namespace A269495

/-- `abs(xor(2, 2*n-(n+2)²²))` -/
def P1589092856424759820.Spec : Prop :=
  ∀ n, P1589092856424759820.a n = A269495 (n + 1)

end A269495

/-! ## A269495.P12307735510431312562

`-xor(2, 2*n-(n+2)²²)`
-/

namespace A269495.P12307735510431312562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 ((2 * n : ℤ) - (((n + 2) ^ 2) ^ 2 : ℤ))

end

end A269495.P12307735510431312562

namespace A269495

/-- `-xor(2, 2*n-(n+2)²²)` -/
def P12307735510431312562.Spec : Prop :=
  ∀ n, P12307735510431312562.a n = A269495 (n + 1)

end A269495

/-! ## A269495.P6055033174742794000

`Δ[(n+1)²²+a(n-1)-2*n]` with `a(0)=0`
-/

namespace A269495.P6055033174742794000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (((n + 1) ^ 2) ^ 2 : ℤ) + (f1 (n - 1) - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269495.P6055033174742794000

namespace A269495

/-- `Δ[(n+1)²²+a(n-1)-2*n]` -/
def P6055033174742794000.Spec : Prop :=
  ∀ n, P6055033174742794000.a n = A269495 (n + 1)

end A269495

/-! ## A269495.P15320675046790242087

`Δ[∑[(n+1)^4]-A002378(n)]`
-/

namespace A269495.P15320675046790242087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269495.P15320675046790242087

namespace A269495

/-- `Δ[∑[(n+1)^4]-A002378(n)]` -/
def P15320675046790242087.Spec : Prop :=
  ∀ n, P15320675046790242087.a n = A269495 (n + 1)

end A269495

/-! ## A269495.P4067975601993516485

`Δ[A000538(n+1)-∑[2*n]]`
-/

namespace A269495.P4067975601993516485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269495.P4067975601993516485

namespace A269495

/-- `Δ[A000538(n+1)-∑[2*n]]` -/
def P4067975601993516485.Spec : Prop :=
  ∀ n, P4067975601993516485.a n = A269495 (n + 1)

end A269495

/-!
# A269496: Number of length-5 0..n arrays with no repeated value differing from the previous repeated value by one.

The programs for A269496, the canonical program `A269496.P2996058020143637158` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269496 has offset 1).

The definition of A269496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269496.P2996058020143637158

`(n+1)^5+5*(n+1)^4+10*(n+1)^3+4*(n+1)²+3*(n+1)+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269496

/-- `(n+1)^5+5*(n+1)^4+10*(n+1)^3+4*(n+1)²+3*(n+1)+1` -/
def P2996058020143637158.Spec : Prop :=
  ∀ n, (P2996058020143637158.a n : ℤ) = A269496 (n + 1)

theorem P2996058020143637158.correct : P2996058020143637158.Spec := by
  intro n
  simp only [A269496, Nat.add_sub_cancel]

end A269496

/-! ## A269496.P8485581651334349149

`A269494(A000217(n+4)+5)`
-/

namespace A269496.P8485581651334349149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A000217 (n + 4) + 5).toNat

end

end A269496.P8485581651334349149

namespace A269496

/-- `A269494(A000217(n+4)+5)` -/
def P8485581651334349149.Spec : Prop :=
  ∀ n, P8485581651334349149.a n = A269496 (n + 1)

end A269496

/-!
# A269497: Number of length-6 0..n arrays with no repeated value differing from the previous repeated value by one.

The programs for A269497, the canonical program `A269497.P8626824486200604210` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269497 has offset 1).

The definition of A269497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269497.P8626824486200604210

`(n+1)^6+6*(n+1)^5+15*(n+1)^4+8*(n+1)^3+5*(n+1)²+6*(n+1)-1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269497

/-- `(n+1)^6+6*(n+1)^5+15*(n+1)^4+8*(n+1)^3+5*(n+1)²+6*(n+1)-1` -/
def P8626824486200604210.Spec : Prop :=
  ∀ n, P8626824486200604210.a n = A269497 (n + 1)

theorem P8626824486200604210.correct : P8626824486200604210.Spec := by
  intro n
  simp only [A269497, Nat.add_sub_cancel]

end A269497

/-! ## A269497.P817983025350325793

`A269494(A000124(n+5)+5)`
-/

namespace A269497.P817983025350325793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A000124 (n + 5) + 5).toNat

end

end A269497.P817983025350325793

namespace A269497

/-- `A269494(A000124(n+5)+5)` -/
def P817983025350325793.Spec : Prop :=
  ∀ n, P817983025350325793.a n = A269497 (n + 1)

end A269497

/-! ## A269497.P17638080670460135620

`A269494(A000217(n+5)+6)`
-/

namespace A269497.P17638080670460135620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A000217 (n + 5) + 6).toNat

end

end A269497.P17638080670460135620

namespace A269497

/-- `A269494(A000217(n+5)+6)` -/
def P17638080670460135620.Spec : Prop :=
  ∀ n, P17638080670460135620.a n = A269497 (n + 1)

end A269497

/-! ## A269497.P3096888502785360343

`A269494(A055999(n+4)-A005408(n))`
-/

namespace A269497.P3096888502785360343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A055999 (n + 4) - A005408 n).toNat

end

end A269497.P3096888502785360343

namespace A269497

/-- `A269494(A055999(n+4)-A005408(n))` -/
def P3096888502785360343.Spec : Prop :=
  ∀ n, P3096888502785360343.a n = A269497 (n + 1)

end A269497

/-! ## A269497.P2518219473518292887

`A269494(A133263(n+1)+A016825(n+4))`
-/

namespace A269497.P2518219473518292887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A133263 (n + 1) + A016825 (n + 4)).toNat

end

end A269497.P2518219473518292887

namespace A269497

/-- `A269494(A133263(n+1)+A016825(n+4))` -/
def P2518219473518292887.Spec : Prop :=
  ∀ n, P2518219473518292887.a n = A269497 (n + 1)

end A269497

/-!
# A269498: Number of length-7 0..n arrays with no repeated value differing from the previous repeated value by one.

The programs for A269498, there is no canonical definition to state claims against.
-/

/-! ## A269498.P14682252820104768724

`A269494(A167487(n+5))`
-/

namespace A269498.P14682252820104768724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A167487 (n + 5)).toNat

end

end A269498.P14682252820104768724

/-! ## A269498.P4687016601739443988

`A269494(A056119(n)+28)`
-/

namespace A269498.P4687016601739443988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A056119 n + 28).toNat

end

end A269498.P4687016601739443988

/-! ## A269498.P3976396791438232719

`A269494(A000124(n+6)+6)`
-/

namespace A269498.P3976396791438232719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A000124 (n + 6) + 6).toNat

end

end A269498.P3976396791438232719

/-! ## A269498.P11218828154184766955

`A269494(A000217(n+6)+7)`
-/

namespace A269498.P11218828154184766955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (A000217 (n + 6) + 7).toNat

end

end A269498.P11218828154184766955

