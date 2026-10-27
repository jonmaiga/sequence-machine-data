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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C013
import Seq.Opaque.C014
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
# A115100: Mayan calendar periods in days.

The programs for A115100, there is no canonical definition to state claims against.
-/

/-! ## A115100.P8048656099712382429

`20*A101684(a(n-1))` with `a(0)=1`
-/

namespace A115100.P8048656099712382429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  20 * A101684 (a (n - 1)).toNat

end

end A115100.P8048656099712382429

/-!
# A115102: a(0)=2, a(1)=8, a(n) = a(n-1) + 2*a(n-2).

The programs for A115102, the canonical program `A115102.P11806885197962319711` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115102 has offset 0).

The definition of A115102 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)` (program `A115102.P11806885197962319711`, by `A115102.P11806885197962319711.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115102.P11806885197962319711

`a(n-1)+2*a(n-2)` with `a(0)=2, a(1)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115102

/-- `a(n-1)+2*a(n-2)` -/
def P11806885197962319711.Spec : Prop :=
  ∀ n, (P11806885197962319711.a n : ℤ) = A115102 n

theorem P11806885197962319711.correct : P11806885197962319711.Spec := by
  intro n
  simp only [A115102]

end A115102

/-! ## A115102.P1752921795044415927

`2*A084214(n+1)`
-/

namespace A115102.P1752921795044415927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084214 (n + 1)

end

end A115102.P1752921795044415927

namespace A115102

/-- `2*A084214(n+1)` -/
def P1752921795044415927.Spec : Prop :=
  ∀ n, P1752921795044415927.a n = A115102 n

end A115102

/-! ## A115102.P4989554416020738235

`ogf((2+6x)/(1-x-2x^2))`
-/

namespace A115102.P4989554416020738235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6] [1, -1, -2] n

end

end A115102.P4989554416020738235

namespace A115102

/-- `ogf((2+6x)/(1-x-2x^2))` -/
def P4989554416020738235.Spec : Prop :=
  ∀ n, P4989554416020738235.a n = A115102 n

end A115102

/-! ## A115102.P12712489141710839533

`abs(3-5*∑[(-2)^n])`
-/

namespace A115102.P12712489141710839533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - 5 * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A115102.P12712489141710839533

namespace A115102

/-- `abs(3-5*∑[(-2)^n])` -/
def P12712489141710839533.Spec : Prop :=
  ∀ n, P12712489141710839533.a n = A115102 n

end A115102

/-! ## A115102.P15988299961024984367

`lcm(2, Δ[2*(2*n-a(n-1))])` with `a(0)=2`
-/

namespace A115102.P15988299961024984367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * ((2 * n : ℤ) - f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (f1 (n + 1) - f1 n)

end

end A115102.P15988299961024984367

namespace A115102

/-- `lcm(2, Δ[2*(2*n-a(n-1))])` -/
def P15988299961024984367.Spec : Prop :=
  ∀ n, (P15988299961024984367.a n : ℤ) = A115102 n

end A115102

/-! ## A115102.P9050402550424301603

`a(n-2)+a(n-1)+a(n-2)` with `a(0)=2, a(1)=8`
-/

namespace A115102.P9050402550424301603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A115102.P9050402550424301603

namespace A115102

/-- `a(n-2)+a(n-1)+a(n-2)` -/
def P9050402550424301603.Spec : Prop :=
  ∀ n, (P9050402550424301603.a n : ℤ) = A115102 n

end A115102

/-! ## A115102.P6334470914394523751

`3*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=2, a(1)=8`
-/

namespace A115102.P6334470914394523751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  3 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A115102.P6334470914394523751

namespace A115102

/-- `3*a(n-2)-(a(n-2)-a(n-1))` -/
def P6334470914394523751.Spec : Prop :=
  ∀ n, P6334470914394523751.a n = A115102 n

end A115102

/-! ## A115102.P13826109945509037584

`2*Δ[A048573(n)]`
-/

namespace A115102.P13826109945509037584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A115102.P13826109945509037584

namespace A115102

/-- `2*Δ[A048573(n)]` -/
def P13826109945509037584.Spec : Prop :=
  ∀ n, P13826109945509037584.a n = A115102 n

end A115102

/-! ## A115102.P16306596681631005467

`2*Δ[A084170(n)]`
-/

namespace A115102.P16306596681631005467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A115102.P16306596681631005467

namespace A115102

/-- `2*Δ[A084170(n)]` -/
def P16306596681631005467.Spec : Prop :=
  ∀ n, P16306596681631005467.a n = A115102 n

end A115102

/-! ## A115102.P11557902640326286709

`2*Δ[A084640(n)]`
-/

namespace A115102.P11557902640326286709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A115102.P11557902640326286709

namespace A115102

/-- `2*Δ[A084640(n)]` -/
def P11557902640326286709.Spec : Prop :=
  ∀ n, P11557902640326286709.a n = A115102 n

end A115102

/-! ## A115102.P7758405257653358743

`∑[lcm(2, A083581(n))]`
-/

namespace A115102.P7758405257653358743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A083581 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115102.P7758405257653358743

namespace A115102

/-- `∑[lcm(2, A083581(n))]` -/
def P7758405257653358743.Spec : Prop :=
  ∀ n, (P7758405257653358743.a n : ℤ) = A115102 n

end A115102

/-! ## A115102.P9284025161104483216

`A083595(n)+2^n`
-/

namespace A115102.P9284025161104483216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083595 n + (2 ^ n : ℤ)

end

end A115102.P9284025161104483216

namespace A115102

/-- `A083595(n)+2^n` -/
def P9284025161104483216.Spec : Prop :=
  ∀ n, P9284025161104483216.a n = A115102 n

end A115102

/-! ## A115102.P3330848122930998160

`2*A356050(Δ[n²])`
-/

namespace A115102.P3330848122930998160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A356050 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A115102.P3330848122930998160

namespace A115102

/-- `2*A356050(Δ[n²])` -/
def P3330848122930998160.Spec : Prop :=
  ∀ n, P3330848122930998160.a n = A115102 n

end A115102

/-! ## A115102.P10400351822821326708

`or(1, A140359(n+1))+1`
-/

namespace A115102.P10400351822821326708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A140359 (n + 1)) + 1

end

end A115102.P10400351822821326708

namespace A115102

/-- `or(1, A140359(n+1))+1` -/
def P10400351822821326708.Spec : Prop :=
  ∀ n, P10400351822821326708.a n = A115102 n

end A115102

/-! ## A115102.P5298742702383994739

`A097073(n+1)+2^(n+1)`
-/

namespace A115102.P5298742702383994739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097073 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A115102.P5298742702383994739

namespace A115102

/-- `A097073(n+1)+2^(n+1)` -/
def P5298742702383994739.Spec : Prop :=
  ∀ n, P5298742702383994739.a n = A115102 n

end A115102

/-! ## A115102.P2669259181677798844

`A062510(n)+A062092(n)`
-/

namespace A115102.P2669259181677798844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 n + A062092 n

end

end A115102.P2669259181677798844

namespace A115102

/-- `A062510(n)+A062092(n)` -/
def P2669259181677798844.Spec : Prop :=
  ∀ n, P2669259181677798844.a n = A115102 n

end A115102

/-! ## A115102.P82036040501281542

`A201630(n)+A001045(n)`
-/

namespace A115102.P82036040501281542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201630 n + A001045 n

end

end A115102.P82036040501281542

namespace A115102

/-- `A201630(n)+A001045(n)` -/
def P82036040501281542.Spec : Prop :=
  ∀ n, P82036040501281542.a n = A115102 n

end A115102

/-! ## A115102.P3534182801524151390

`A280173(n)+A005578(n)`
-/

namespace A115102.P3534182801524151390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280173 n + A005578 n

end

end A115102.P3534182801524151390

namespace A115102

/-- `A280173(n)+A005578(n)` -/
def P3534182801524151390.Spec : Prop :=
  ∀ n, P3534182801524151390.a n = A115102 n

end A115102

/-! ## A115102.P14784370329426133038

`A171160(n)+A135440(n)`
-/

namespace A115102.P14784370329426133038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171160 n + A135440 n

end

end A115102.P14784370329426133038

namespace A115102

/-- `A171160(n)+A135440(n)` -/
def P14784370329426133038.Spec : Prop :=
  ∀ n, P14784370329426133038.a n = A115102 n

end A115102

/-! ## A115102.P13985237713633908904

`A259713(n)+A078008(n)`
-/

namespace A115102.P13985237713633908904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259713 n + A078008 n

end

end A115102.P13985237713633908904

namespace A115102

/-- `A259713(n)+A078008(n)` -/
def P13985237713633908904.Spec : Prop :=
  ∀ n, P13985237713633908904.a n = A115102 n

end A115102

/-!
# A115103: Primes p such that p-1 and p+1 have the same number of prime factors with multiplicity.

The programs for A115103, the canonical program `A115103.P964529951982915055` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115103 has offset 1).

The definition of A115103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1850 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115103.P964529951982915055

`p?[A115167(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A115103

/-- `p?[A115167(n+1)]` -/
def P964529951982915055.Spec : Prop :=
  ∀ n, P964529951982915055.a n = A115103 (n + 1)

theorem P964529951982915055.correct : P964529951982915055.Spec := by
  intro n
  simp only [A115103, Nat.add_sub_cancel]

end A115103

/-! ## A115103.P15533961270417123070

`p?[2*A045920(n+1)+1]`
-/

namespace A115103.P15533961270417123070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045920 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115103.P15533961270417123070

namespace A115103

/-- `p?[2*A045920(n+1)+1]` -/
def P15533961270417123070.Spec : Prop :=
  ∀ n, P15533961270417123070.a n = A115103 (n + 1)

end A115103

/-! ## A115103.P11021306761970569109

`p?[2*A278291(n+1)-1]`
-/

namespace A115103.P11021306761970569109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A278291 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A115103.P11021306761970569109

namespace A115103

/-- `p?[2*A278291(n+1)-1]` -/
def P11021306761970569109.Spec : Prop :=
  ∀ n, P11021306761970569109.a n = A115103 (n + 1)

end A115103

/-! ## A115103.P703636887584134195

`∩[A009087(n+1), A115167(n+1)]`
-/

namespace A115103.P703636887584134195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115103.P703636887584134195

namespace A115103

/-- `∩[A009087(n+1), A115167(n+1)]` -/
def P703636887584134195.Spec : Prop :=
  ∀ n, (P703636887584134195.a n : ℤ) = A115103 (n + 1)

end A115103

/-! ## A115103.P15106995752068506136

`∩[A115167(n+1), A167915(n+1)]`
-/

namespace A115103.P15106995752068506136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115103.P15106995752068506136

namespace A115103

/-- `∩[A115167(n+1), A167915(n+1)]` -/
def P15106995752068506136.Spec : Prop :=
  ∀ n, (P15106995752068506136.a n : ℤ) = A115103 (n + 1)

end A115103

/-! ## A115103.P7923178988643195601

`∩[A000040(n+1), A115167(n+1)]`
-/

namespace A115103.P7923178988643195601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115103.P7923178988643195601

namespace A115103

/-- `∩[A000040(n+1), A115167(n+1)]` -/
def P7923178988643195601.Spec : Prop :=
  ∀ n, (P7923178988643195601.a n : ℤ) = A115103 (n + 1)

end A115103

/-! ## A115103.P11646425594367576448

`∩[A006005(n+1), A115167(n+1)]`
-/

namespace A115103.P11646425594367576448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115103.P11646425594367576448

namespace A115103

/-- `∩[A006005(n+1), A115167(n+1)]` -/
def P11646425594367576448.Spec : Prop :=
  ∀ n, (P11646425594367576448.a n : ℤ) = A115103 (n + 1)

end A115103

/-! ## A115103.P7867285053704312252

`∩[A008578(n+1), A115167(n+1)]`
-/

namespace A115103.P7867285053704312252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115103.P7867285053704312252

namespace A115103

/-- `∩[A008578(n+1), A115167(n+1)]` -/
def P7867285053704312252.Spec : Prop :=
  ∀ n, (P7867285053704312252.a n : ℤ) = A115103 (n + 1)

end A115103

/-! ## A115103.P14574045747322384396

`∩[A045344(n+1), A115167(n+1)]`
-/

namespace A115103.P14574045747322384396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115103.P14574045747322384396

namespace A115103

/-- `∩[A045344(n+1), A115167(n+1)]` -/
def P14574045747322384396.Spec : Prop :=
  ∀ n, (P14574045747322384396.a n : ℤ) = A115103 (n + 1)

end A115103

/-! ## A115103.P4231888377477343657

`∩[A046022(n+1), A115167(n+1)]`
-/

namespace A115103.P4231888377477343657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115103.P4231888377477343657

namespace A115103

/-- `∩[A046022(n+1), A115167(n+1)]` -/
def P4231888377477343657.Spec : Prop :=
  ∀ n, (P4231888377477343657.a n : ℤ) = A115103 (n + 1)

end A115103

/-! ## A115103.P6297345487079503738

`∩[A065091(n+1), A115167(n+1)]`
-/

namespace A115103.P6297345487079503738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115103.P6297345487079503738

namespace A115103

/-- `∩[A065091(n+1), A115167(n+1)]` -/
def P6297345487079503738.Spec : Prop :=
  ∀ n, (P6297345487079503738.a n : ℤ) = A115103 (n + 1)

end A115103

/-! ## A115103.P13227936188773297183

`∩[A065396(n+1), A115167(n+1)]`
-/

namespace A115103.P13227936188773297183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115103.P13227936188773297183

namespace A115103

/-- `∩[A065396(n+1), A115167(n+1)]` -/
def P13227936188773297183.Spec : Prop :=
  ∀ n, (P13227936188773297183.a n : ℤ) = A115103 (n + 1)

end A115103

/-! ## A115103.P2980767529317839558

`∩[A083249(n+1), A115167(n+1)]`
-/

namespace A115103.P2980767529317839558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115103.P2980767529317839558

namespace A115103

/-- `∩[A083249(n+1), A115167(n+1)]` -/
def P2980767529317839558.Spec : Prop :=
  ∀ n, (P2980767529317839558.a n : ℤ) = A115103 (n + 1)

end A115103

/-! ## A115103.P6539505685226728729

`∩[A093515(n+1), A115167(n+1)]`
-/

namespace A115103.P6539505685226728729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115103.P6539505685226728729

namespace A115103

/-- `∩[A093515(n+1), A115167(n+1)]` -/
def P6539505685226728729.Spec : Prop :=
  ∀ n, (P6539505685226728729.a n : ℤ) = A115103 (n + 1)

end A115103

/-! ## A115103.P1208367876820624405

`∩[A115167(n+1), A161346(n+1)]`
-/

namespace A115103.P1208367876820624405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115103.P1208367876820624405

namespace A115103

/-- `∩[A115167(n+1), A161346(n+1)]` -/
def P1208367876820624405.Spec : Prop :=
  ∀ n, (P1208367876820624405.a n : ℤ) = A115103 (n + 1)

end A115103

/-! ## A115103.P1421595512088532588

`∩[A115167(n+1), A193339(n+1)]`
-/

namespace A115103.P1421595512088532588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115103.P1421595512088532588

namespace A115103

/-- `∩[A115167(n+1), A193339(n+1)]` -/
def P1421595512088532588.Spec : Prop :=
  ∀ n, (P1421595512088532588.a n : ℤ) = A115103 (n + 1)

end A115103

/-! ## A115103.P7814221540237944385

`∩[A033946(n+1), A115167(n+1)]`
-/

namespace A115103.P7814221540237944385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115103.P7814221540237944385

namespace A115103

/-- `∩[A033946(n+1), A115167(n+1)]` -/
def P7814221540237944385.Spec : Prop :=
  ∀ n, (P7814221540237944385.a n : ℤ) = A115103 (n + 1)

end A115103

/-! ## A115103.P10988680444400663536

`∩[A051948(n+1), A115167(n+1)]`
-/

namespace A115103.P10988680444400663536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115103.P10988680444400663536

namespace A115103

/-- `∩[A051948(n+1), A115167(n+1)]` -/
def P10988680444400663536.Spec : Prop :=
  ∀ n, (P10988680444400663536.a n : ℤ) = A115103 (n + 1)

end A115103

/-! ## A115103.P4009944988565826461

`∩[A053813(n+1), A115167(n+1)]`
-/

namespace A115103.P4009944988565826461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115103.P4009944988565826461

namespace A115103

/-- `∩[A053813(n+1), A115167(n+1)]` -/
def P4009944988565826461.Spec : Prop :=
  ∀ n, (P4009944988565826461.a n : ℤ) = A115103 (n + 1)

end A115103

/-! ## A115103.P16785370390770381858

`∩[A062972(n+1), A115167(n+1)]`
-/

namespace A115103.P16785370390770381858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115103.P16785370390770381858

namespace A115103

/-- `∩[A062972(n+1), A115167(n+1)]` -/
def P16785370390770381858.Spec : Prop :=
  ∀ n, (P16785370390770381858.a n : ℤ) = A115103 (n + 1)

end A115103

/-!
# A115104: Numbers k such that 4*k^3 + 1 is prime.

The programs for A115104, there is no canonical definition to state claims against.
-/

/-! ## A115104.P12564243312865846008

`(eq[A274324(n+1), A321069(n+1)]+1)/2`
-/

namespace A115104.P12564243312865846008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321069 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1 : ℚ) / 2

end

end A115104.P12564243312865846008

/-! ## A115104.P18276311575984269352

`A000463(eq[A274324(n+1), A321069(n+1)])`
-/

namespace A115104.P18276311575984269352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115104.P18276311575984269352

/-! ## A115104.P11460562517941854402

`A008619(eq[A274324(n+1), A321069(n+1)])`
-/

namespace A115104.P11460562517941854402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115104.P11460562517941854402

/-! ## A115104.P3179868620085831534

`A110654(eq[A274324(n+1), A321069(n+1)])`
-/

namespace A115104.P3179868620085831534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115104.P3179868620085831534

/-! ## A115104.P11594200950134371430

`A280497(eq[A274324(n+1), A321069(n+1)]+1)`
-/

namespace A115104.P11594200950134371430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280497 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A115104.P11594200950134371430

/-!
# A115105: Numbers of the form p^F(i)*q^F(j), where p and q are distinct primes; F(i) and F(j) are Fibonacci numbers.

The programs for A115105, the canonical program `A115105.P6138202386834025871` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115105 has offset 1).

The definition of A115105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5369 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115105.P6138202386834025871

`∩[A070915(n+1), A115063(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A115105

/-- `∩[A070915(n+1), A115063(n+1)]` -/
def P6138202386834025871.Spec : Prop :=
  ∀ n, (P6138202386834025871.a n : ℤ) = A115105 (n + 1)

theorem P6138202386834025871.correct : P6138202386834025871.Spec := by
  intro n
  simp only [A115105, Nat.add_sub_cancel]

end A115105

/-! ## A115105.P16430968393863973784

`eq[1, A007318(A001462(A337525(n+1)+1))]+1`
-/

namespace A115105.P16430968393863973784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A001462 (A337525 (n + 1) + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115105.P16430968393863973784

namespace A115105

/-- `eq[1, A007318(A001462(A337525(n+1)+1))]+1` -/
def P16430968393863973784.Spec : Prop :=
  ∀ n, (P16430968393863973784.a n : ℤ) = A115105 (n + 1)

end A115105

/-! ## A115105.P2008726846918050633

`eq[1, A011973(A335519(n+1))]+1`
-/

namespace A115105.P2008726846918050633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A335519 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115105.P2008726846918050633

namespace A115105

/-- `eq[1, A011973(A335519(n+1))]+1` -/
def P2008726846918050633.Spec : Prop :=
  ∀ n, (P2008726846918050633.a n : ℤ) = A115105 (n + 1)

end A115105

/-! ## A115105.P9374408107975348682

`lt[n*A186748(A166974(n)), n]`
-/

namespace A115105.P9374408107975348682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A186748 (A166974 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A115105.P9374408107975348682

namespace A115105

/-- `lt[n*A186748(A166974(n)), n]` -/
def P9374408107975348682.Spec : Prop :=
  ∀ n, (P9374408107975348682.a n : ℤ) = A115105 (n + 1)

end A115105

/-! ## A115105.P16583817214846277213

`lt[A186748(A166974(n)), A178334(n)]`
-/

namespace A115105.P16583817214846277213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186748 (A166974 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115105.P16583817214846277213

namespace A115105

/-- `lt[A186748(A166974(n)), A178334(n)]` -/
def P16583817214846277213.Spec : Prop :=
  ∀ n, (P16583817214846277213.a n : ℤ) = A115105 (n + 1)

end A115105

/-! ## A115105.P12178707926343949949

`record[A028310(n)-A186748(A166974(n))]`
-/

namespace A115105.P12178707926343949949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A186748 (A166974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115105.P12178707926343949949

namespace A115105

/-- `record[A028310(n)-A186748(A166974(n))]` -/
def P12178707926343949949.Spec : Prop :=
  ∀ n, P12178707926343949949.a n = A115105 (n + 1)

end A115105

/-! ## A115105.P17763809000667073566

`∑[A071044(A015159(n)%A071044(n))]`
-/

namespace A115105.P17763809000667073566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (Int.tmod (A015159 n) (A071044 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115105.P17763809000667073566

namespace A115105

/-- `∑[A071044(A015159(n)%A071044(n))]` -/
def P17763809000667073566.Spec : Prop :=
  ∀ n, P17763809000667073566.a n = A115105 (n + 1)

end A115105

/-!
# A115106: Let M0 = {{2, 2, 0}, {1, 0, 1}, {0, 2, 2}}; M1 = {{1, 0, 1}, {2, 2, 0}, {0, 2, 2}}; M2 = {{2, 2, 0}, {0, 2, 2}, {1, 0, 1}}; M[n_] := M[n] = If[Mod[v[n][[1]], 3] == 0, M1, If[Mod[v[n][[2]], 3] == 0, M0, M2]] v[0] = {1, 1, 1}; M[0] = {{2, 2, 0}, {1, 0, 1}, {0, 2, 2}}; v[n_] := v[n] = M[n - 1].v[n - 1]. Then a(n) =v[n][[1]].

The programs for A115106, there is no canonical definition to state claims against.
-/

/-! ## A115106.P18266665104414726951

`A274581(A024744(n+1))+A237667(3*n+1)`
-/

namespace A115106.P18266665104414726951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274581 (A024744 (n + 1)).toNat + A237667 (3 * n + 1)

end

end A115106.P18266665104414726951

/-!
# A115107: Numerator of q_n = -4*n + 2*(1+n)*HarmonicNumber(n).

The programs for A115107, there is no canonical definition to state claims against.
-/

/-! ## A115107.P11720409265896216550

`A093418(n)-n*A096620(n)`
-/

namespace A115107.P11720409265896216550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093418 n - (n : ℤ) * A096620 n

end

end A115107.P11720409265896216550

/-! ## A115107.P14285133871206895524

`A093418(n)-n*A027611(n+1)/A043529(n)`
-/

namespace A115107.P14285133871206895524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093418 n : ℚ) - (n : ℚ) * ((A027611 (n + 1) : ℚ) / (A043529 n : ℚ))

end

end A115107.P14285133871206895524

/-! ## A115107.P5081355249938892253

`2*A093418(n)-A160048(n+1)`
-/

namespace A115107.P5081355249938892253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093418 n - A160048 (n + 1)

end

end A115107.P5081355249938892253

/-! ## A115107.P16369558342806219567

`A160048(n+1)-2*n*A096620(n)`
-/

namespace A115107.P16369558342806219567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160048 (n + 1) - 2 * ((n : ℤ) * A096620 n)

end

end A115107.P16369558342806219567

/-! ## A115107.P3856586885865544750

`A096620(n)/A000142(n)*A288964(n)`
-/

namespace A115107.P3856586885865544750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096620 n : ℚ) / (A000142 n : ℚ) * (A288964 n : ℚ)

end

end A115107.P3856586885865544750

/-!
# A115108: Expansion of -(9520*x^9 -11504*x^8 +2840*x^7 -1040*x^6 +248*x^5 +36*x^4 -1) / ((2*x -1)*(4*x^2 +2*x -1)).

The programs for A115108, there is no canonical definition to state claims against.
-/

/-! ## A115108.P16855952961660866313

`A220501(A050342(n)*A359267(n+1))`
-/

namespace A115108.P16855952961660866313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220501 (A050342 n * A359267 (n + 1)).toNat

end

end A115108.P16855952961660866313

/-!
# A115109: Expansion of (1 -2*x +4*x^2 -22*x^3 +6*x^4 +268*x^5 -854*x^6 +3596*x^7 -3100*x^8)/((1 -2*x)/(1 -2*x -4*x^2)).

The programs for A115109, there is no canonical definition to state claims against.
-/

/-! ## A115109.P15838651047103285206

`A123317(A350446(n))*A150053(n)`
-/

namespace A115109.P15838651047103285206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123317 (A350446 n).toNat * A150053 n

end

end A115109.P15838651047103285206

/-!
# A115110: Expansion of q^(-1/24) * eta(q)^3 / eta(q^2) in powers of q.

The programs for A115110, there is no canonical definition to state claims against.
-/

/-! ## A115110.P9705470475984632349

`(-1)^n*A107033(n)`
-/

namespace A115110.P9705470475984632349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A107033 n

end

end A115110.P9705470475984632349

/-! ## A115110.P17667608102611449711

`A107033(n)/A009531(A005408(n))`
-/

namespace A115110.P17667608102611449711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107033 n : ℚ) / (A009531 (A005408 n).toNat : ℚ)

end

end A115110.P17667608102611449711

/-! ## A115110.P6156103753145809234

`A107033(n)/A057077(2*n)`
-/

namespace A115110.P6156103753145809234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107033 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A115110.P6156103753145809234

/-!
# A115111: Number of different ways to select n elements from four sets of n elements under the precondition of choosing at least one element from each set.

The programs for A115111, the canonical program `A115111.P3685284126419676235` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115111 has offset 1).

The definition of A115111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115111.P3685284126419676235

`C(4*(n+1), n+1)-4*(C(3*(n+1), n+1)+1)+6*C(2*(n+1), n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115111

/-- `C(4*(n+1), n+1)-4*(C(3*(n+1), n+1)+1)+6*C(2*(n+1), n+1)` -/
def P3685284126419676235.Spec : Prop :=
  ∀ n, P3685284126419676235.a n = A115111 (n + 1)

theorem P3685284126419676235.correct : P3685284126419676235.Spec := by
  intro n
  simp only [A115111, Nat.add_sub_cancel]

end A115111

/-!
# A115112: Number of different ways to select n elements from two sets of n elements under the precondition of choosing at least one element from each set.

The programs for A115112, the canonical program `A115112.P11405233874723568779` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115112 has offset 1).

The definition of A115112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115112.P11405233874723568779

`A000984(n+1)-2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A115112

/-- `A000984(n+1)-2` -/
def P11405233874723568779.Spec : Prop :=
  ∀ n, P11405233874723568779.a n = A115112 (n + 1)

theorem P11405233874723568779.correct : P11405233874723568779.Spec := by
  intro n
  simp only [A115112, Nat.add_sub_cancel]

end A115112

/-! ## A115112.P4233606058812113306

`C(2*(n+1), n+1)-2`
-/

namespace A115112.P4233606058812113306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 1)) (n + 1) : ℤ) - 2

end

end A115112.P4233606058812113306

namespace A115112

/-- `C(2*(n+1), n+1)-2` -/
def P4233606058812113306.Spec : Prop :=
  ∀ n, P4233606058812113306.a n = A115112 (n + 1)

end A115112

/-! ## A115112.P11313054592754661552

`∏[4-2/(n+1)]-2`
-/

namespace A115112.P11313054592754661552
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 2

end

end A115112.P11313054592754661552

namespace A115112

/-- `∏[4-2/(n+1)]-2` -/
def P11313054592754661552.Spec : Prop :=
  ∀ n, P11313054592754661552.a n = (A115112 (n + 1) : ℚ)

end A115112

/-! ## A115112.P13871225808037485060

`2*A010763(n)`
-/

namespace A115112.P13871225808037485060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010763 n

end

end A115112.P13871225808037485060

namespace A115112

/-- `2*A010763(n)` -/
def P13871225808037485060.Spec : Prop :=
  ∀ n, P13871225808037485060.a n = A115112 (n + 1)

end A115112

/-! ## A115112.P2714429533913270707

`A218008(Δ[n²])`
-/

namespace A115112.P2714429533913270707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218008 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A115112.P2714429533913270707

namespace A115112

/-- `A218008(Δ[n²])` -/
def P2714429533913270707.Spec : Prop :=
  ∀ n, P2714429533913270707.a n = A115112 (n + 1)

end A115112

/-! ## A115112.P384058829689895977

`A201686(2*(n+1))`
-/

namespace A115112.P384058829689895977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 (2 * (n + 1))

end

end A115112.P384058829689895977

namespace A115112

/-- `A201686(2*(n+1))` -/
def P384058829689895977.Spec : Prop :=
  ∀ n, P384058829689895977.a n = A115112 (n + 1)

end A115112

/-! ## A115112.P8568751584011049414

`A395396(2*(n+1))`
-/

namespace A115112.P8568751584011049414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395396 (2 * (n + 1))

end

end A115112.P8568751584011049414

namespace A115112

/-- `A395396(2*(n+1))` -/
def P8568751584011049414.Spec : Prop :=
  ∀ n, P8568751584011049414.a n = A115112 (n + 1)

end A115112

/-! ## A115112.P8621927440657286266

`2*(A001700(n)-1)`
-/

namespace A115112.P8621927440657286266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001700 n - 1)

end

end A115112.P8621927440657286266

namespace A115112

/-- `2*(A001700(n)-1)` -/
def P8621927440657286266.Spec : Prop :=
  ∀ n, P8621927440657286266.a n = A115112 (n + 1)

end A115112

/-! ## A115112.P16076446935981881722

`xor(1, A030662(n+1))`
-/

namespace A115112.P16076446935981881722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A030662 (n + 1))

end

end A115112.P16076446935981881722

namespace A115112

/-- `xor(1, A030662(n+1))` -/
def P16076446935981881722.Spec : Prop :=
  ∀ n, P16076446935981881722.a n = A115112 (n + 1)

end A115112

/-! ## A115112.P3961486313407719346

`2*A014495(Δ[n²])`
-/

namespace A115112.P3961486313407719346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014495 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A115112.P3961486313407719346

namespace A115112

/-- `2*A014495(Δ[n²])` -/
def P3961486313407719346.Spec : Prop :=
  ∀ n, P3961486313407719346.a n = A115112 (n + 1)

end A115112

/-! ## A115112.P14626163507028548807

`2*A047171(Δ[n²])`
-/

namespace A115112.P14626163507028548807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047171 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A115112.P14626163507028548807

namespace A115112

/-- `2*A047171(Δ[n²])` -/
def P14626163507028548807.Spec : Prop :=
  ∀ n, P14626163507028548807.a n = A115112 (n + 1)

end A115112

/-! ## A115112.P17662411108674156303

`2*A395396(Δ[n²])`
-/

namespace A115112.P17662411108674156303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A395396 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A115112.P17662411108674156303

namespace A115112

/-- `2*A395396(Δ[n²])` -/
def P17662411108674156303.Spec : Prop :=
  ∀ n, P17662411108674156303.a n = A115112 (n + 1)

end A115112

/-! ## A115112.P7996867677186408367

`record[Δ[A081668(n+1)]]`
-/

namespace A115112.P7996867677186408367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115112.P7996867677186408367

namespace A115112

/-- `record[Δ[A081668(n+1)]]` -/
def P7996867677186408367.Spec : Prop :=
  ∀ n, P7996867677186408367.a n = A115112 (n + 1)

end A115112

/-! ## A115112.P15966323960931382981

`2*(Δ[A024718(n)]-1)`
-/

namespace A115112.P15966323960931382981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - 1)

end

end A115112.P15966323960931382981

namespace A115112

/-- `2*(Δ[A024718(n)]-1)` -/
def P15966323960931382981.Spec : Prop :=
  ∀ n, P15966323960931382981.a n = A115112 (n + 1)

end A115112

/-! ## A115112.P12270563568496876735

`record[2*(A057977(n)-1)]`
-/

namespace A115112.P12270563568496876735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A057977 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115112.P12270563568496876735

namespace A115112

/-- `record[2*(A057977(n)-1)]` -/
def P12270563568496876735.Spec : Prop :=
  ∀ n, P12270563568496876735.a n = A115112 (n + 1)

end A115112

/-! ## A115112.P2496248115521658401

`xor(1, ∑[A051924(n+1)])`
-/

namespace A115112.P2496248115521658401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115112.P2496248115521658401

namespace A115112

/-- `xor(1, ∑[A051924(n+1)])` -/
def P2496248115521658401.Spec : Prop :=
  ∀ n, P2496248115521658401.a n = A115112 (n + 1)

end A115112

/-! ## A115112.P1788995519163249127

`2*(A088218(n+1)-1)`
-/

namespace A115112.P1788995519163249127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A088218 (n + 1) - 1)

end

end A115112.P1788995519163249127

namespace A115112

/-- `2*(A088218(n+1)-1)` -/
def P1788995519163249127.Spec : Prop :=
  ∀ n, P1788995519163249127.a n = A115112 (n + 1)

end A115112

/-! ## A115112.P7309210826445572539

`lcm(2, A218008(2*n+1))`
-/

namespace A115112.P7309210826445572539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A218008 (2 * n + 1))

end

end A115112.P7309210826445572539

namespace A115112

/-- `lcm(2, A218008(2*n+1))` -/
def P7309210826445572539.Spec : Prop :=
  ∀ n, (P7309210826445572539.a n : ℤ) = A115112 (n + 1)

end A115112

/-! ## A115112.P5676028416636094701

`record[Δ[A126869(n+1)]-2]`
-/

namespace A115112.P5676028416636094701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115112.P5676028416636094701

namespace A115112

/-- `record[Δ[A126869(n+1)]-2]` -/
def P5676028416636094701.Spec : Prop :=
  ∀ n, P5676028416636094701.a n = A115112 (n + 1)

end A115112

/-! ## A115112.P9683189444116380861

`2*(A001405(2*n+1)-1)`
-/

namespace A115112.P9683189444116380861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001405 (2 * n + 1) - 1)

end

end A115112.P9683189444116380861

namespace A115112

/-- `2*(A001405(2*n+1)-1)` -/
def P9683189444116380861.Spec : Prop :=
  ∀ n, P9683189444116380861.a n = A115112 (n + 1)

end A115112

/-!
# A115113: a(n) = 3*a(n-1) + 4*a(n-2), with a(0) = 2, a(1) = 6, a(2) = 10.

The programs for A115113, the canonical program `A115113.P3617820357427782385` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115113 has offset 0).

The definition of A115113 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+4*a(n-2)` (program `A115113.P3617820357427782385`, by `A115113.P3617820357427782385.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115113.P3617820357427782385

`3*a(n-1)+4*a(n-2)` with `a(0)=2, a(1)=6, a(2)=10`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115113

/-- `3*a(n-1)+4*a(n-2)` -/
def P3617820357427782385.Spec : Prop :=
  ∀ n, (P3617820357427782385.a n : ℤ) = A115113 n

theorem P3617820357427782385.correct : P3617820357427782385.Spec := by
  intro n
  simp only [A115113]

end A115113

/-! ## A115113.P13196999100900855691

`abs(3-∑[(-4)^n])`
-/

namespace A115113.P13196999100900855691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A115113.P13196999100900855691

namespace A115113

/-- `abs(3-∑[(-4)^n])` -/
def P13196999100900855691.Spec : Prop :=
  ∀ n, P13196999100900855691.a n = A115113 n

end A115113

/-! ## A115113.P16383245050026874100

`lcm(2, 3-∑[(-4)^n])`
-/

namespace A115113.P16383245050026874100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (3 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115113.P16383245050026874100

namespace A115113

/-- `lcm(2, 3-∑[(-4)^n])` -/
def P16383245050026874100.Spec : Prop :=
  ∀ n, (P16383245050026874100.a n : ℤ) = A115113 n

end A115113

/-! ## A115113.P9589235486688422532

`4^n-a(n-1)` with `a(0)=2, a(1)=6`
-/

namespace A115113.P9589235486688422532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  (4 ^ n : ℤ) - a (n - 1)

end

end A115113.P9589235486688422532

namespace A115113

/-- `4^n-a(n-1)` -/
def P9589235486688422532.Spec : Prop :=
  ∀ n, P9589235486688422532.a n = A115113 n

end A115113

/-! ## A115113.P16243299383623316718

`A115164(n)-A165326(n)`
-/

namespace A115113.P16243299383623316718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115164 n - A165326 n

end

end A115113.P16243299383623316718

namespace A115113

/-- `A115164(n)-A165326(n)` -/
def P16243299383623316718.Spec : Prop :=
  ∀ n, P16243299383623316718.a n = A115113 n

end A115113

/-! ## A115113.P7010969390009703518

`xor(A115164(n), A153284(n+1))`
-/

namespace A115113.P7010969390009703518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A115164 n) (A153284 (n + 1))

end

end A115113.P7010969390009703518

namespace A115113

/-- `xor(A115164(n), A153284(n+1))` -/
def P7010969390009703518.Spec : Prop :=
  ∀ n, P7010969390009703518.a n = A115113 n

end A115113

/-! ## A115113.P191205874208450267

`A015521(n+1)+A115341(n)-A001045(n+1)`
-/

namespace A115113.P191205874208450267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 (n + 1) + (A115341 n - A001045 (n + 1))

end

end A115113.P191205874208450267

namespace A115113

/-- `A015521(n+1)+A115341(n)-A001045(n+1)` -/
def P191205874208450267.Spec : Prop :=
  ∀ n, P191205874208450267.a n = A115113 n

end A115113

/-! ## A115113.P2396280482093141457

`A109499(n+1)+A115341(n)-A078008(n+1)`
-/

namespace A115113.P2396280482093141457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109499 (n + 1) + (A115341 n - A078008 (n + 1))

end

end A115113.P2396280482093141457

namespace A115113

/-- `A109499(n+1)+A115341(n)-A078008(n+1)` -/
def P2396280482093141457.Spec : Prop :=
  ∀ n, P2396280482093141457.a n = A115113 n

end A115113

/-! ## A115113.P279164195338500200

`xor(A007909(2*n), A014113(2*n+1))-A007909(2*n)`
-/

namespace A115113.P279164195338500200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007909 (2 * n)) (A014113 (2 * n + 1)) - A007909 (2 * n)

end

end A115113.P279164195338500200

namespace A115113

/-- `xor(A007909(2*n), A014113(2*n+1))-A007909(2*n)` -/
def P279164195338500200.Spec : Prop :=
  ∀ n, P279164195338500200.a n = A115113 n

end A115113

/-!
# A115114: Asymmetric rhythm cycles (patterns): binary necklaces of length 2n subject to the restriction that for any k if the k-th bead is of color 1 then the (k+n)-th bead (modulo 2n) is of color 0.

The programs for A115114, there is no canonical definition to state claims against.
-/

/-! ## A115114.P1048780732615335943

`∑{d}[n+1, A133267(#)]`
-/

namespace A115114.P1048780732615335943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133267 d

end

end A115114.P1048780732615335943

/-! ## A115114.P940303405054381407

`record[∑{d}[A008611(n), A133267(#)]]`
-/

namespace A115114.P940303405054381407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A133267 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115114.P940303405054381407

/-! ## A115114.P10647378575319773436

`record[∑{d}[A023443(n), A133267(#)]]`
-/

namespace A115114.P10647378575319773436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A133267 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115114.P10647378575319773436

/-! ## A115114.P9615478769343522854

`record[∑{d}[A028242(n), A133267(#)]]`
-/

namespace A115114.P9615478769343522854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A133267 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115114.P9615478769343522854

/-! ## A115114.P13689093259493407000

`record[∑{d}[A123108(n), A133267(#)]]`
-/

namespace A115114.P13689093259493407000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A133267 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115114.P13689093259493407000

/-!
# A115115: Number of 3-asymmetric rhythm cycles: binary necklaces of length 3n subject to the restriction that for any k if the k-th bead is of color 1 then the (k+n)-th and (k+2n)-th beads (modulo 3n) are of color 0.

The programs for A115115, there is no canonical definition to state claims against.
-/

/-! ## A115115.P10215974622182183373

`A016729(A306158(n+1))`
-/

namespace A115115.P10215974622182183373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016729 (A306158 (n + 1)).toNat

end

end A115115.P10215974622182183373

/-! ## A115115.P13964705747965546568

`A008611(A306158(n+1)+3)`
-/

namespace A115115.P13964705747965546568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A306158 (n + 1) + 3).toNat

end

end A115115.P13964705747965546568

/-! ## A115115.P5550403036695557854

`A008611(record[A306156(n+2)-A038067(n+2)])+1`
-/

namespace A115115.P5550403036695557854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306156 (n + 2) - A038067 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A115115.P5550403036695557854

/-! ## A115115.P16813064104996441685

`2*A103221(record[A306156(n+2)-A038067(n+2)])`
-/

namespace A115115.P16813064104996441685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306156 (n + 2) - A038067 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115115.P16813064104996441685

/-!
# A115116: Number of imprimitive (periodic) asymmetric rhythm cycles: ones having nontrivial shift automorphisms. Asymmetric rhythm cycles (A115114): binary necklaces of length 2n subject to the restriction that for any k if the k-th bead is of color 1 then the (k+n)-th bead (modulo 2n) is of color 0.

The programs for A115116, there is no canonical definition to state claims against.
-/

/-! ## A115116.P5789967204567720446

`A115114(n+1)-A006575(n+1)`
-/

namespace A115116.P5789967204567720446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115114 (n + 1) - A006575 (n + 1)

end

end A115116.P5789967204567720446

/-! ## A115116.P13557412129999816961

`∑{d}[n+1, A133267(#)]-A006575(n+1)`
-/

namespace A115116.P13557412129999816961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133267 d - A006575 (n + 1)

end

end A115116.P13557412129999816961

/-! ## A115116.P10421018583491692214

`∑{d}[n+1, A133267(#)]-(A027376(n+1)-A133267(n+1))`
-/

namespace A115116.P10421018583491692214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133267 d - (A027376 (n + 1) - A133267 (n + 1))

end

end A115116.P10421018583491692214

/-! ## A115116.P11992577024113929541

`A028310(∑{d}[n+1, A133267(#)]%A006575(n+1))`
-/

namespace A115116.P11992577024113929541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (∑ d ∈ Nat.divisors (f1 n), A133267 d) (A006575 (n + 1))).toNat

end

end A115116.P11992577024113929541

/-! ## A115116.P3483609724201333521

`A115114(n+1)-A098691(A000217(n+2))`
-/

namespace A115116.P3483609724201333521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115114 (n + 1) - A098691 (A000217 (n + 2)).toNat

end

end A115116.P3483609724201333521

/-!
# A115117: Number of primitive (aperiodic, or Lyndon) 3-asymmetric rhythm cycles: ones having no nontrivial shift automorphism. 3-asymmetric rhythm cycles (A115115): binary necklaces of length 3n subject to the restriction that for any k if the k-th bead is of color 1 then the (k+n)-th and (k+2n)-th beads (modulo 3n) are of color 0.

The programs for A115117, there is no canonical definition to state claims against.
-/

/-! ## A115117.P17391152569447941484

`A123919(A185172(n+1))`
-/

namespace A115117.P17391152569447941484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123919 (A185172 (n + 1)).toNat

end

end A115117.P17391152569447941484

/-! ## A115117.P5181269557985202461

`A189730(A131764(n+1))`
-/

namespace A115117.P5181269557985202461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189730 (A131764 (n + 1)).toNat

end

end A115117.P5181269557985202461

/-! ## A115117.P14383655401108549010

`A002264(A185172(n+1)+2)`
-/

namespace A115117.P14383655401108549010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A185172 (n + 1) + 2).toNat

end

end A115117.P14383655401108549010

/-! ## A115117.P14819208218870803074

`A008620(A185172(n+1)-1)`
-/

namespace A115117.P14819208218870803074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A185172 (n + 1) - 1).toNat

end

end A115117.P14819208218870803074

/-!
# A115118: Number of imprimitive (periodic) n-bead binary necklaces with beads of 2 colors where the colors may be swapped but turning over is not allowed.

The programs for A115118, the canonical program `A115118.P6546194884082821130` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115118 has offset 0).

The definition of A115118 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000013, A000048, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115118.P6546194884082821130

`A000013(n)-A000048(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A115118

/-- `A000013(n)-A000048(n)` -/
def P6546194884082821130.Spec : Prop :=
  ∀ n, P6546194884082821130.a n = A115118 n

theorem P6546194884082821130.correct : P6546194884082821130.Spec := by
  intro n
  simp only [A115118]

end A115118

/-! ## A115118.P6971966096113550693

`A115122(n)-A387130(n)`
-/

namespace A115118.P6971966096113550693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115122 n - A387130 n

end

end A115118.P6971966096113550693

namespace A115118

/-- `A115122(n)-A387130(n)` -/
def P6971966096113550693.Spec : Prop :=
  ∀ n, P6971966096113550693.a n = A115118 n

end A115118

/-! ## A115118.P4633713158985962884

`A386946(n)-2*A387130(n)`
-/

namespace A115118.P4633713158985962884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386946 n - 2 * A387130 n

end

end A115118.P4633713158985962884

namespace A115118

/-- `A386946(n)-2*A387130(n)` -/
def P4633713158985962884.Spec : Prop :=
  ∀ n, P4633713158985962884.a n = A115118 n

end A115118

/-! ## A115118.P11183100145692238356

`A000011(n)+A059053(n)-A000048(n)`
-/

namespace A115118.P11183100145692238356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 n + (A059053 n - A000048 n)

end

end A115118.P11183100145692238356

namespace A115118

/-- `A000011(n)+A059053(n)-A000048(n)` -/
def P11183100145692238356.Spec : Prop :=
  ∀ n, P11183100145692238356.a n = A115118 n

end A115118

/-! ## A115118.P10053146172492535277

`A000013(n)-(A045686(n)+A045683(n))`
-/

namespace A115118.P10053146172492535277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n - (A045686 n + A045683 n)

end

end A115118.P10053146172492535277

namespace A115118

/-- `A000013(n)-(A045686(n)+A045683(n))` -/
def P10053146172492535277.Spec : Prop :=
  ∀ n, P10053146172492535277.a n = A115118 n

theorem P10053146172492535277.correct : P10053146172492535277.Spec := by
  intro n
  simp only [A115118, Nat.add_sub_cancel, A115118.P10053146172492535277.a, A115118.P6546194884082821130.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A000048, A000048.P16452762028424782785.a, A045683, A045683.P14787099194818843150.a, A045686, A045686.P11325912773679884789.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A056476, A056476.P12632563156965169968.a, A233583, A233583.P15026547221992958741.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A056295, A056295.P9438402425658344231.a, A056481, A056481.P6036497099892352670.a, A000016, A000016.P8500875009608658723.a, A008965, A008965.P16924218572130557635.a, A028310, A028310.P18130301328277559831.a, A056463, A056463.P6786534809649954337.f1, A056463.P6786534809649954337.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A115118

/-! ## A115118.P18224909873250029089

`A045674(n)+A045677(n)-A000048(n)`
-/

namespace A115118.P18224909873250029089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045674 n + (A045677 n - A000048 n)

end

end A115118.P18224909873250029089

namespace A115118

/-- `A045674(n)+A045677(n)-A000048(n)` -/
def P18224909873250029089.Spec : Prop :=
  ∀ n, P18224909873250029089.a n = A115118 n

theorem P18224909873250029089.correct : P18224909873250029089.Spec := by
  intro n
  simp only [A115118, Nat.add_sub_cancel, A115118.P18224909873250029089.a, A115118.P6546194884082821130.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A000048, A000048.P16452762028424782785.a, A045674, A045674.P8510068775620534225.f1, A045674.P8510068775620534225.a, A045677, A045677.P7167331430785454104.a, A028310, A028310.P18130301328277559831.a, A045683, A045683.P14787099194818843150.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A233583, A233583.P15026547221992958741.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A045686, A045686.P11325912773679884789.a, A056295, A056295.P9438402425658344231.a, A000016, A000016.P8500875009608658723.a, A008965, A008965.P16924218572130557635.a, A056476, A056476.P12632563156965169968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A115118

/-! ## A115118.P17362978975552364875

`∑{d}[A028310(n), A000048(#)]-A000048(n)`
-/

namespace A115118.P17362978975552364875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000048 d - A000048 n

end

end A115118.P17362978975552364875

namespace A115118

/-- `∑{d}[A028310(n), A000048(#)]-A000048(n)` -/
def P17362978975552364875.Spec : Prop :=
  ∀ n, P17362978975552364875.a n = A115118 n

end A115118

/-! ## A115118.P15235676547968754836

`A216957(n+1)-(A011782(n)+A000048(n))`
-/

namespace A115118.P15235676547968754836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216957 (n + 1) - (A011782 n + A000048 n)

end

end A115118.P15235676547968754836

namespace A115118

/-- `A216957(n+1)-(A011782(n)+A000048(n))` -/
def P15235676547968754836.Spec : Prop :=
  ∀ n, P15235676547968754836.a n = A115118 n

end A115118

/-! ## A115118.P6311239728556450301

`A000013(n)-A053633(A152947(n+1))`
-/

namespace A115118.P6311239728556450301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n - A053633 (A152947 (n + 1)).toNat

end

end A115118.P6311239728556450301

namespace A115118

/-- `A000013(n)-A053633(A152947(n+1))` -/
def P6311239728556450301.Spec : Prop :=
  ∀ n, P6311239728556450301.a n = A115118 n

end A115118

/-! ## A115118.P3868341854385046626

`A000013(n)-A053633(A184218(n+1))`
-/

namespace A115118.P3868341854385046626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n - A053633 (A184218 (n + 1)).toNat

end

end A115118.P3868341854385046626

namespace A115118

/-- `A000013(n)-A053633(A184218(n+1))` -/
def P3868341854385046626.Spec : Prop :=
  ∀ n, P3868341854385046626.a n = A115118 n

end A115118

/-!
# A115119: Number of imprimitive (periodic) n-bead necklaces with beads of 2 colors when turning over is allowed.

The programs for A115119, there is no canonical definition to state claims against.
-/

/-! ## A115119.P14964906380626700337

`A000029(n)-A001371(n)`
-/

namespace A115119.P14964906380626700337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 n - A001371 n

end

end A115119.P14964906380626700337

/-! ## A115119.P10217065110898370695

`∑{d}[n+1, A054156(#-1)]-A001371(n)`
-/

namespace A115119.P10217065110898370695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054156 (d - 1) - A001371 n

end

end A115119.P10217065110898370695

/-! ## A115119.P9821909160963697063

`A029744(n+1)+A059076(n)-A001371(n)`
-/

namespace A115119.P9821909160963697063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1) + (A059076 n - A001371 n)

end

end A115119.P9821909160963697063

/-! ## A115119.P18004483837149435101

`∑{d}[n+1, A008683(#)*A054155((n+1)/#-1)]-A001371(n)`
-/

namespace A115119.P18004483837149435101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A054155 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat - A001371 n

end

end A115119.P18004483837149435101

/-! ## A115119.P14067792454539071390

`A000031(n)-(A059076(n)+A001371(n))`
-/

namespace A115119.P14067792454539071390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - (A059076 n + A001371 n)

end

end A115119.P14067792454539071390

/-! ## A115119.P16293556507649497491

`A266977(n)+A262232(n)-A059076(n)-A001371(n)`
-/

namespace A115119.P16293556507649497491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 n + A262232 n - A059076 n - A001371 n

end

end A115119.P16293556507649497491

/-! ## A115119.P17019319148450560792

`A052310(∑[n])-A001371(n)`
-/

namespace A115119.P17019319148450560792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052310 (∑ j ∈ Finset.range (n + 1), f1 j) - A001371 n

end

end A115119.P17019319148450560792

/-!
# A115120: Number of imprimitive (periodic) 2n-bead black-white reversible necklaces with n black beads.

The programs for A115120, there is no canonical definition to state claims against.
-/

/-! ## A115120.P4830439950238597876

`A005648(n)-A045628(n)`
-/

namespace A115120.P4830439950238597876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005648 n - A045628 n

end

end A115120.P4830439950238597876

/-! ## A115120.P16976920192422647326

`∑{d}[A028310(n), A045628(#)]-A045628(n)`
-/

namespace A115120.P16976920192422647326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045628 d - A045628 n

end

end A115120.P16976920192422647326

/-! ## A115120.P17407752625456210273

`A005648(n)-(A045680(n)+A022553(n))/2`
-/

namespace A115120.P17407752625456210273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005648 n : ℚ) - (A045680 n + A022553 n : ℚ) / 2

end

end A115120.P17407752625456210273

/-! ## A115120.P11820445781138992942

`A052307(∑[4*n])-A045628(n)`
-/

namespace A115120.P11820445781138992942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (∑ j ∈ Finset.range (n + 1), f1 j) - A045628 n

end

end A115120.P11820445781138992942

/-! ## A115120.P232895784509891174

`A052307(∑[4*n])-(A045680(n)+A022553(n))/2`
-/

namespace A115120.P232895784509891174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052307 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) - (A045680 n + A022553 n : ℚ) / 2

end

end A115120.P232895784509891174

/-! ## A115120.P11557340843248674173

`A052307((n+1)*(n+n))*A133707(n+1)-A045628(n)`
-/

namespace A115120.P11557340843248674173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 ((n + 1) * (n + n)) * A133707 (n + 1) - A045628 n

end

end A115120.P11557340843248674173

/-! ## A115120.P17845438287694731552

`A052307(A106232(n+1))%A077413(n)-A045628(n)`
-/

namespace A115120.P17845438287694731552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052307 (A106232 (n + 1)).toNat) (A077413 n) - A045628 n

end

end A115120.P17845438287694731552

/-!
# A115121: Number of imprimitive (periodic) bracelets (or necklaces) with n red or blue beads such that the beads switch colors when bracelet is turned over.

The programs for A115121, the canonical program `A115121.P9466641686521263943` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115121 has offset 1).

The definition of A115121 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053656, A066313, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115121.P9466641686521263943

`A053656(n+1)-A066313(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A115121

/-- `A053656(n+1)-A066313(n+1)` -/
def P9466641686521263943.Spec : Prop :=
  ∀ n, P9466641686521263943.a n = A115121 (n + 1)

theorem P9466641686521263943.correct : P9466641686521263943.Spec := by
  intro n
  simp only [A115121, Nat.add_sub_cancel]

end A115121

/-! ## A115121.P13943319799510257067

`∑{d}[n+1, A066313(#)]-A066313(n+1)`
-/

namespace A115121.P13943319799510257067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066313 d - A066313 (n + 1)

end

end A115121.P13943319799510257067

namespace A115121

/-- `∑{d}[n+1, A066313(#)]-A066313(n+1)` -/
def P13943319799510257067.Spec : Prop :=
  ∀ n, P13943319799510257067.a n = A115121 (n + 1)

end A115121

/-! ## A115121.P3087918581291587761

`∑{d}[n+1, A053656(#)*A157658((n+1)/#)]`
-/

namespace A115121.P3087918581291587761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053656 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A115121.P3087918581291587761

namespace A115121

/-- `∑{d}[n+1, A053656(#)*A157658((n+1)/#)]` -/
def P3087918581291587761.Spec : Prop :=
  ∀ n, P3087918581291587761.a n = A115121 (n + 1)

end A115121

/-! ## A115121.P10860304367090401036

`A000029(n+1)-A016116(n)-A066313(n+1)`
-/

namespace A115121.P10860304367090401036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 1) - A016116 n - A066313 (n + 1)

end

end A115121.P10860304367090401036

namespace A115121

/-- `A000029(n+1)-A016116(n)-A066313(n+1)` -/
def P10860304367090401036.Spec : Prop :=
  ∀ n, P10860304367090401036.a n = A115121 (n + 1)

end A115121

/-! ## A115121.P16326327634066361073

`A000011(n+1)+A256216(n+1)-A066313(n+1)`
-/

namespace A115121.P16326327634066361073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 1) + (A256216 (n + 1) - A066313 (n + 1))

end

end A115121.P16326327634066361073

namespace A115121

/-- `A000011(n+1)+A256216(n+1)-A066313(n+1)` -/
def P16326327634066361073.Spec : Prop :=
  ∀ n, P16326327634066361073.a n = A115121 (n + 1)

theorem P16326327634066361073.correct : P16326327634066361073.Spec := by
  intro n
  simp only [A115121, Nat.add_sub_cancel, A115121.P16326327634066361073.a, A115121.P9466641686521263943.a, A000011, A000011.P276434732339544012.a, A053656, A053656.P15777476116109761211.a, A066313, A066313.P13030330147732847872.f1, A066313.P13030330147732847872.a, A256216, A256216.P6411215166490644162.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A000029, A000029.P13945956715463538310.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A016116, A016116.P661627231399665482.a, A029744, A029744.P1115822501332250061.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A059076, A059076.P1559801332482280449.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A056295, A056295.P9438402425658344231.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A115121

/-!
# A115122: Number of imprimitive (periodic) 2n-bead black-white complementable necklaces with n black beads.

The programs for A115122, there is no canonical definition to state claims against.
-/

/-! ## A115122.P14045382125373155297

`A045629(n)-A045632(n)`
-/

namespace A115122.P14045382125373155297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045629 n - A045632 n

end

end A115122.P14045382125373155297

/-! ## A115122.P17437084930743662200

`A387130(n)+A115118(n)`
-/

namespace A115122.P17437084930743662200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387130 n + A115118 n

end

end A115122.P17437084930743662200

/-! ## A115122.P12667888123863770650

`A386946(n)-A387130(n)`
-/

namespace A115122.P12667888123863770650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386946 n - A387130 n

end

end A115122.P12667888123863770650

/-! ## A115122.P1042512940968150891

`A383904(n)+A386946(n)-A386388(n)`
-/

namespace A115122.P1042512940968150891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383904 n + (A386946 n - A386388 n)

end

end A115122.P1042512940968150891

/-! ## A115122.P9837495096836165643

`∑{d}[A028310(n), A045632(#)]-A045632(n)`
-/

namespace A115122.P9837495096836165643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045632 d - A045632 n

end

end A115122.P9837495096836165643

/-! ## A115122.P9955653162169369039

`A006080(n+1)-(A059078(n)+A045632(n))`
-/

namespace A115122.P9955653162169369039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006080 (n + 1) - (A059078 n + A045632 n)

end

end A115122.P9955653162169369039

/-! ## A115122.P6971738500234854012

`A003239(n)-(A387130(n)+A022553(n))`
-/

namespace A115122.P6971738500234854012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 n - (A387130 n + A022553 n)

end

end A115122.P6971738500234854012

/-! ## A115122.P14945941475493826248

`(A003239(n)+A000013(n))/2-A045632(n)`
-/

namespace A115122.P14945941475493826248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003239 n + A000013 n : ℚ) / 2 - (A045632 n : ℚ)

end

end A115122.P14945941475493826248

/-! ## A115122.P16373560761468840809

`A045629(n)-(A022553(n)+A000048(n))/2`
-/

namespace A115122.P16373560761468840809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045629 n : ℚ) - (A022553 n + A000048 n : ℚ) / 2

end

end A115122.P16373560761468840809

/-!
# A115123: Number of imprimitive (periodic) bracelets (or necklaces) with n red and blue beads such that the beads switch colors when bracelet is turned over.

The programs for A115123, there is no canonical definition to state claims against.
-/

/-! ## A115123.P13880935494952291538

`A006080(n+2)-A066315(n+1)`
-/

namespace A115123.P13880935494952291538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006080 (n + 2) - A066315 (n + 1)

end

end A115123.P13880935494952291538

/-!
# A115124: Number of imprimitive (periodic) 2n-bead black-white reversible complementable necklaces with n black beads.

The programs for A115124, there is no canonical definition to state claims against.
-/

/-! ## A115124.P11496585499107946736

`A006840(n)-A045633(n)`
-/

namespace A115124.P11496585499107946736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006840 n - A045633 n

end

end A115124.P11496585499107946736

/-! ## A115124.P2735534777770128491

`∑{d}[A028310(n), A045633(#)]-A045633(n)`
-/

namespace A115124.P2735534777770128491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045633 d - A045633 n

end

end A115124.P2735534777770128491

/-! ## A115124.P15002768666973958245

`∑{d}[A065033(2*n), A045633(#)]-A045633(n)`
-/

namespace A115124.P15002768666973958245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045633 d - A045633 n

end

end A115124.P15002768666973958245

/-! ## A115124.P15204923496232428693

`A000007(n)+∑{d}[n, A045633(#)]-A045633(n)`
-/

namespace A115124.P15204923496232428693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ d ∈ Nat.divisors (f1 n), A045633 d - A045633 n

end

end A115124.P15204923496232428693

/-! ## A115124.P2055474654045191839

`∑{d}[n-A004277(n), A045633(#)]-A045633(n)`
-/

namespace A115124.P2055474654045191839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045633 d - A045633 n

end

end A115124.P2055474654045191839

/-!
# A115125: A sequence related to Catalan numbers A000108.

The programs for A115125, the canonical program `A115125.P4477060475348718991` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115125 has offset 0).

The definition of A115125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115125.P4170273317752462137

`(2-3/n)*4*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A115125.P4170273317752462137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 - 3 / (n : ℚ)) * (4 * a (n - 1))

end

end A115125.P4170273317752462137

namespace A115125

/-- `(2-3/n)*4*a(n-1)` -/
def P4170273317752462137.Spec : Prop :=
  ∀ n, P4170273317752462137.a n = (A115125 n : ℚ)

end A115125

/-! ## A115125.P12835253585122056412

`2^n*A120588(n)`
-/

namespace A115125.P12835253585122056412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A120588 n

end

end A115125.P12835253585122056412

namespace A115125

/-- `2^n*A120588(n)` -/
def P12835253585122056412.Spec : Prop :=
  ∀ n, P12835253585122056412.a n = A115125 n

end A115125

/-! ## A115125.P15157237411831029732

`abs(2^n*A115140(n))`
-/

namespace A115125.P15157237411831029732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) * A115140 n|

end

end A115125.P15157237411831029732

namespace A115125

/-- `abs(2^n*A115140(n))` -/
def P15157237411831029732.Spec : Prop :=
  ∀ n, P15157237411831029732.a n = A115125 n

end A115125

/-! ## A115125.P4477060475348718991

`2^n*A000108(abs(1-n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A115125

/-- `2^n*A000108(abs(1-n))` -/
def P4477060475348718991.Spec : Prop :=
  ∀ n, P4477060475348718991.a n = A115125 n

theorem P4477060475348718991.correct : P4477060475348718991.Spec := by
  intro n
  simp only [A115125]

end A115125

/-! ## A115125.P8911698265080447801

`record[2^ceil(n/2)*A097331(n)]`
-/

namespace A115125.P8911698265080447801
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) * (A097331 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115125.P8911698265080447801

namespace A115125

/-- `record[2^ceil(n/2)*A097331(n)]` -/
def P8911698265080447801.Spec : Prop :=
  ∀ n, P8911698265080447801.a n = (A115125 n : ℚ)

end A115125

/-! ## A115125.P4402707051426363630

`abs(A002420(n)*A011782(n))`
-/

namespace A115125.P4402707051426363630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002420 n * A011782 n|

end

end A115125.P4402707051426363630

namespace A115125

/-- `abs(A002420(n)*A011782(n))` -/
def P4402707051426363630.Spec : Prop :=
  ∀ n, P4402707051426363630.a n = A115125 n

end A115125

/-! ## A115125.P14136905448390672107

`abs(A120588(n)*A120617(n))`
-/

namespace A115125.P14136905448390672107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120588 n * A120617 n|

end

end A115125.P14136905448390672107

namespace A115125

/-- `abs(A120588(n)*A120617(n))` -/
def P14136905448390672107.Spec : Prop :=
  ∀ n, P14136905448390672107.a n = A115125 n

end A115125

/-! ## A115125.P16978390957090962711

`A120588(n)*A131577(n+1)`
-/

namespace A115125.P16978390957090962711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n * A131577 (n + 1)

end

end A115125.P16978390957090962711

namespace A115125

/-- `A120588(n)*A131577(n+1)` -/
def P16978390957090962711.Spec : Prop :=
  ∀ n, P16978390957090962711.a n = A115125 n

end A115125

/-! ## A115125.P16461461322724356117

`A120588(n)*A166444(n+2)`
-/

namespace A115125.P16461461322724356117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n * A166444 (n + 2)

end

end A115125.P16461461322724356117

namespace A115125

/-- `A120588(n)*A166444(n+2)` -/
def P16461461322724356117.Spec : Prop :=
  ∀ n, P16461461322724356117.a n = A115125 n

end A115125

/-! ## A115125.P4432456980339686071

`A011782(n)*A089408(2*n)`
-/

namespace A115125.P4432456980339686071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A089408 (2 * n)

end

end A115125.P4432456980339686071

namespace A115125

/-- `A011782(n)*A089408(2*n)` -/
def P4432456980339686071.Spec : Prop :=
  ∀ n, P4432456980339686071.a n = A115125 n

end A115125

/-! ## A115125.P5470091074496770608

`A000108(abs(1-n))*A000079(n)`
-/

namespace A115125.P5470091074496770608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 |1 - (n : ℤ)|.toNat * A000079 n

end

end A115125.P5470091074496770608

namespace A115125

/-- `A000108(abs(1-n))*A000079(n)` -/
def P5470091074496770608.Spec : Prop :=
  ∀ n, P5470091074496770608.a n = A115125 n

theorem P5470091074496770608.correct : P5470091074496770608.Spec := by
  intro n
  simp only [A115125, Nat.add_sub_cancel, A115125.P5470091074496770608.a, A115125.P4477060475348718991.a, A000079, A000079.P10855139691139572931.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A115125

/-! ## A115125.P5025140891271010527

`record[A097331(n)*A131572(n+1)]`
-/

namespace A115125.P5025140891271010527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n * A131572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115125.P5025140891271010527

namespace A115125

/-- `record[A097331(n)*A131572(n+1)]` -/
def P5025140891271010527.Spec : Prop :=
  ∀ n, P5025140891271010527.a n = A115125 n

end A115125

/-! ## A115125.P1528663971667011131

`A000079(n)*A208355(A004275(n))`
-/

namespace A115125.P1528663971667011131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A208355 (A004275 n).toNat

end

end A115125.P1528663971667011131

namespace A115125

/-- `A000079(n)*A208355(A004275(n))` -/
def P1528663971667011131.Spec : Prop :=
  ∀ n, P1528663971667011131.a n = A115125 n

end A115125

/-! ## A115125.P10283259802093000652

`record[A077957(n)]*A097331(A004273(n))`
-/

namespace A115125.P10283259802093000652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A097331 (A004273 n).toNat

end

end A115125.P10283259802093000652

namespace A115125

/-- `record[A077957(n)]*A097331(A004273(n))` -/
def P10283259802093000652.Spec : Prop :=
  ∀ n, P10283259802093000652.a n = A115125 n

end A115125

/-! ## A115125.P185725295072010483

`A077957(2*n)*A097331(A004273(n))`
-/

namespace A115125.P185725295072010483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * n) * A097331 (A004273 n).toNat

end

end A115125.P185725295072010483

namespace A115125

/-- `A077957(2*n)*A097331(A004273(n))` -/
def P185725295072010483.Spec : Prop :=
  ∀ n, P185725295072010483.a n = A115125 n

end A115125

/-! ## A115125.P2021493007821182967

`abs(A122440(∑[n]))`
-/

namespace A115125.P2021493007821182967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122440 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A115125.P2021493007821182967

namespace A115125

/-- `abs(A122440(∑[n]))` -/
def P2021493007821182967.Spec : Prop :=
  ∀ n, P2021493007821182967.a n = A115125 n

end A115125

/-! ## A115125.P14962335596422276203

`record[abs(A100225(n))]`
-/

namespace A115125.P14962335596422276203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100225 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115125.P14962335596422276203

namespace A115125

/-- `record[abs(A100225(n))]` -/
def P14962335596422276203.Spec : Prop :=
  ∀ n, P14962335596422276203.a n = A115125 n

end A115125

/-! ## A115125.P15240848778421849478

`record[abs(A122440(n))]`
-/

namespace A115125.P15240848778421849478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122440 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115125.P15240848778421849478

namespace A115125

/-- `record[abs(A122440(n))]` -/
def P15240848778421849478.Spec : Prop :=
  ∀ n, P15240848778421849478.a n = A115125 n

end A115125

/-! ## A115125.P15592154199481800475

`abs(A100225(2*n))`
-/

namespace A115125.P15592154199481800475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100225 (2 * n)|

end

end A115125.P15592154199481800475

namespace A115125

/-- `abs(A100225(2*n))` -/
def P15592154199481800475.Spec : Prop :=
  ∀ n, P15592154199481800475.a n = A115125 n

end A115125

/-! ## A115125.P14888598704232491421

`A103973(A004273(n))`
-/

namespace A115125.P14888598704232491421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103973 (A004273 n).toNat

end

end A115125.P14888598704232491421

namespace A115125

/-- `A103973(A004273(n))` -/
def P14888598704232491421.Spec : Prop :=
  ∀ n, P14888598704232491421.a n = A115125 n

end A115125

/-!
# A115126: First (k=1) triangle of numbers related to totally asymmetric exclusion process (case alpha=1, beta=1).

The programs for A115126, the canonical program `A115126.P18305659817422248974` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115126 has offset 1).

The definition of A115126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115126.P18305659817422248974

`A030237(char[comp[∑[n-1]]]+n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A115126

/-- `A030237(char[comp[∑[n-1]]]+n+1)` -/
def P18305659817422248974.Spec : Prop :=
  ∀ n, P18305659817422248974.a n = A115126 (n + 1)

theorem P18305659817422248974.correct : P18305659817422248974.Spec := by
  intro n
  simp only [A115126, Nat.add_sub_cancel]

end A115126

/-! ## A115126.P1041244167758711956

`A009766(comp[∑[n]])`
-/

namespace A115126.P1041244167758711956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A115126.P1041244167758711956

namespace A115126

/-- `A009766(comp[∑[n]])` -/
def P1041244167758711956.Spec : Prop :=
  ∀ n, P1041244167758711956.a n = A115126 (n + 1)

end A115126

/-! ## A115126.P14122123605339311529

`abs((-1)^n)*A009766(∑[char[∑[n]]+1])`
-/

namespace A115126.P14122123605339311529
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-1) ^ n| * A009766 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115126.P14122123605339311529

namespace A115126

/-- `abs((-1)^n)*A009766(∑[char[∑[n]]+1])` -/
def P14122123605339311529.Spec : Prop :=
  ∀ n, P14122123605339311529.a n = A115126 (n + 1)

end A115126

/-! ## A115126.P6640903368478141917

`A355173(A014132(A023532(n)+n+1))`
-/

namespace A115126.P6640903368478141917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355173 (A014132 (A023532 n + (n + 1 : ℤ)).toNat).toNat

end

end A115126.P6640903368478141917

namespace A115126

/-- `A355173(A014132(A023532(n)+n+1))` -/
def P6640903368478141917.Spec : Prop :=
  ∀ n, P6640903368478141917.a n = A115126 (n + 1)

end A115126

/-! ## A115126.P5695301405587793154

`A355173(A014132(A123110(n+1)+n+1))`
-/

namespace A115126.P5695301405587793154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355173 (A014132 (A123110 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A115126.P5695301405587793154

namespace A115126

/-- `A355173(A014132(A123110(n+1)+n+1))` -/
def P5695301405587793154.Spec : Prop :=
  ∀ n, P5695301405587793154.a n = A115126 (n + 1)

end A115126

/-! ## A115126.P4210003941824305036

`A106566((n-comp[∑[n]])²-n)`
-/

namespace A115126.P4210003941824305036
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A115126.P4210003941824305036

namespace A115126

/-- `A106566((n-comp[∑[n]])²-n)` -/
def P4210003941824305036.Spec : Prop :=
  ∀ n, P4210003941824305036.a n = A115126 (n + 1)

end A115126

/-! ## A115126.P14176661610577178367

`A033184(∑[char[∑[n]]]+∑[char[∑[n]]]²-n)`
-/

namespace A115126.P14176661610577178367
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A115126.P14176661610577178367

namespace A115126

/-- `A033184(∑[char[∑[n]]]+∑[char[∑[n]]]²-n)` -/
def P14176661610577178367.Spec : Prop :=
  ∀ n, P14176661610577178367.a n = A115126 (n + 1)

end A115126

/-! ## A115126.P6038797364334519895

`A059365((n-comp[∑[n]])²-n)`
-/

namespace A115126.P6038797364334519895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A115126.P6038797364334519895

namespace A115126

/-- `A059365((n-comp[∑[n]])²-n)` -/
def P6038797364334519895.Spec : Prop :=
  ∀ n, P6038797364334519895.a n = A115126 (n + 1)

end A115126

/-! ## A115126.P14484173140046942565

`A074909(n+1)/A001263(n+1)*A033282(n+3)`
-/

namespace A115126.P14484173140046942565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ) * (A033282 (n + 3) : ℚ)

end

end A115126.P14484173140046942565

namespace A115126

/-- `A074909(n+1)/A001263(n+1)*A033282(n+3)` -/
def P14484173140046942565.Spec : Prop :=
  ∀ n, P14484173140046942565.a n = (A115126 (n + 1) : ℚ)

end A115126

/-! ## A115126.P706489395269894807

`A283054(comp[A000217(n)])-A283054(n)`
-/

namespace A115126.P706489395269894807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - A283054 n

end

end A115126.P706489395269894807

namespace A115126

/-- `A283054(comp[A000217(n)])-A283054(n)` -/
def P706489395269894807.Spec : Prop :=
  ∀ n, P706489395269894807.a n = A115126 (n + 1)

end A115126

/-! ## A115126.P6096926127641183078

`A153452(A087112(n+1))`
-/

namespace A115126.P6096926127641183078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (A087112 (n + 1)).toNat

end

end A115126.P6096926127641183078

namespace A115126

/-- `A153452(A087112(n+1))` -/
def P6096926127641183078.Spec : Prop :=
  ∀ n, P6096926127641183078.a n = A115126 (n + 1)

end A115126

/-!
# A115128: Row sums of triangle A115127.

The programs for A115128, there is no canonical definition to state claims against.
-/

/-! ## A115128.P8010487813250957748

`∑[A220902(n+3)-1]`
-/

namespace A115128.P8010487813250957748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220902 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115128.P8010487813250957748

/-! ## A115128.P4388565257625486342

`A246604(n+3)+A014138(n+1)`
-/

namespace A115128.P4388565257625486342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 (n + 3) + A014138 (n + 1)

end

end A115128.P4388565257625486342

/-! ## A115128.P7452117364489812876

`A284968(n+1)+A120304(n+3)`
-/

namespace A115128.P7452117364489812876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284968 (n + 1) + A120304 (n + 3)

end

end A115128.P7452117364489812876

/-! ## A115128.P12084381769917711905

`A284968(n+3)-A000108(n+2)`
-/

namespace A115128.P12084381769917711905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284968 (n + 3) - A000108 (n + 2)

end

end A115128.P12084381769917711905

/-! ## A115128.P11271035168518395312

`∑[A000245(n+2)+∑[A000245(n)]]`
-/

namespace A115128.P11271035168518395312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 2) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115128.P11271035168518395312

/-!
# A115129: Partial sums of A005587. Fourth column of triangle A115127.

The programs for A115129, the canonical program `A115129.P6168053686963980364` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115129 has offset 0).

The definition of A115129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115129.P6168053686963980364

`A051746(n+1)+A024183(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A115129

/-- `A051746(n+1)+A024183(n+1)` -/
def P6168053686963980364.Spec : Prop :=
  ∀ n, P6168053686963980364.a n = A115129 n

theorem P6168053686963980364.correct : P6168053686963980364.Spec := by
  intro n
  simp only [A115129]

end A115129

/-! ## A115129.P5590065170967089303

`∑[A005587(n+1)]`
-/

namespace A115129.P5590065170967089303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115129.P5590065170967089303

namespace A115129

/-- `∑[A005587(n+1)]` -/
def P5590065170967089303.Spec : Prop :=
  ∀ n, P5590065170967089303.a n = A115129 n

end A115129

/-! ## A115129.P5996505542051286882

`∑[A024191(n+2)-5]`
-/

namespace A115129.P5996505542051286882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 2) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115129.P5996505542051286882

namespace A115129

/-- `∑[A024191(n+2)-5]` -/
def P5996505542051286882.Spec : Prop :=
  ∀ n, P5996505542051286882.a n = A115129 n

end A115129

/-! ## A115129.P7223665707486705680

`∑[A323220(n+1)-A323221(n+1)]`
-/

namespace A115129.P7223665707486705680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323220 (n + 1) - A323221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115129.P7223665707486705680

namespace A115129

/-- `∑[A323220(n+1)-A323221(n+1)]` -/
def P7223665707486705680.Spec : Prop :=
  ∀ n, P7223665707486705680.a n = A115129 n

end A115129

/-! ## A115129.P1524216288518473380

`∑[∑[A005586(n+2)]]`
-/

namespace A115129.P1524216288518473380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115129.P1524216288518473380

namespace A115129

/-- `∑[∑[A005586(n+2)]]` -/
def P1524216288518473380.Spec : Prop :=
  ∀ n, P1524216288518473380.a n = A115129 n

end A115129

/-! ## A115129.P18277682331507611653

`∑[∑[A005286(n+2)-1]]`
-/

namespace A115129.P18277682331507611653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (n + 2) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115129.P18277682331507611653

namespace A115129

/-- `∑[∑[A005286(n+2)-1]]` -/
def P18277682331507611653.Spec : Prop :=
  ∀ n, P18277682331507611653.a n = A115129 n

end A115129

/-! ## A115129.P6563835983539091802

`∑[∑[A129936(n+4)]]`
-/

namespace A115129.P6563835983539091802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129936 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115129.P6563835983539091802

namespace A115129

/-- `∑[∑[A129936(n+4)]]` -/
def P6563835983539091802.Spec : Prop :=
  ∀ n, P6563835983539091802.a n = A115129 n

end A115129

/-!
# A115130: Partial sums of A005557.

The programs for A115130, the canonical program `A115130.P13471891084799493355` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115130 has offset 0).

The definition of A115130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115130.P13471891084799493355

`∑[A005557(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A115130

/-- `∑[A005557(n)]` -/
def P13471891084799493355.Spec : Prop :=
  ∀ n, P13471891084799493355.a n = A115130 n

theorem P13471891084799493355.correct : P13471891084799493355.Spec := by
  intro n
  simp only [A115130]

end A115130

/-! ## A115130.P9990104508038618694

`∑[A115129(n+1)-14]`
-/

namespace A115130.P9990104508038618694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115129 (n + 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115130.P9990104508038618694

namespace A115130

/-- `∑[A115129(n+1)-14]` -/
def P9990104508038618694.Spec : Prop :=
  ∀ n, P9990104508038618694.a n = A115130 n

end A115130

/-! ## A115130.P12308728768570771289

`∑[∑[A005587(n+2)]]`
-/

namespace A115130.P12308728768570771289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005587 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115130.P12308728768570771289

namespace A115130

/-- `∑[∑[A005587(n+2)]]` -/
def P12308728768570771289.Spec : Prop :=
  ∀ n, P12308728768570771289.a n = A115130 n

end A115130

/-! ## A115130.P6251693292785326404

`∑[∑[A323221(n+3)+A323220(n)]]`
-/

namespace A115130.P6251693292785326404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323221 (n + 3) + A323220 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115130.P6251693292785326404

namespace A115130

/-- `∑[∑[A323221(n+3)+A323220(n)]]` -/
def P6251693292785326404.Spec : Prop :=
  ∀ n, P6251693292785326404.a n = A115130 n

end A115130

/-! ## A115130.P13984094589309851218

`∑[A000389(n+10)-Δ[A000389(n+10)]]`
-/

namespace A115130.P13984094589309851218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 10)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 10) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115130.P13984094589309851218

namespace A115130

/-- `∑[A000389(n+10)-Δ[A000389(n+10)]]` -/
def P13984094589309851218.Spec : Prop :=
  ∀ n, P13984094589309851218.a n = A115130 n

end A115130

/-! ## A115130.P16371716507308898650

`∑[A037012(A167499(n+10))]`
-/

namespace A115130.P16371716507308898650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (A167499 (n + 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115130.P16371716507308898650

namespace A115130

/-- `∑[A037012(A167499(n+10))]` -/
def P16371716507308898650.Spec : Prop :=
  ∀ n, P16371716507308898650.a n = A115130 n

end A115130

/-! ## A115130.P243510110388248434

`∑[A008482(A055999(n+9))]`
-/

namespace A115130.P243510110388248434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 (A055999 (n + 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115130.P243510110388248434

namespace A115130

/-- `∑[A008482(A055999(n+9))]` -/
def P243510110388248434.Spec : Prop :=
  ∀ n, P243510110388248434.a n = A115130 n

end A115130

/-!
# A115131: Waring numbers for power sums functions in terms of elementary symmetric functions; irregular triangle T(n,k), read by rows, for n >= 1 and 1 <= k <= A000041(n).

The programs for A115131, there is no canonical definition to state claims against.
-/

/-! ## A115131.P16753679435426672385

`A330417(A185974(n+1))`
-/

namespace A115131.P16753679435426672385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330417 (A185974 (n + 1)).toNat

end

end A115131.P16753679435426672385

/-!
# A115132: Partial sums of A064059.

The programs for A115132, the canonical program `A115132.P4697064797982571806` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115132 has offset 0).

The definition of A115132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115132.P4697064797982571806

`∑[A064059(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A115132

/-- `∑[A064059(n)]` -/
def P4697064797982571806.Spec : Prop :=
  ∀ n, P4697064797982571806.a n = A115132 n

theorem P4697064797982571806.correct : P4697064797982571806.Spec := by
  intro n
  simp only [A115132]

end A115132

/-! ## A115132.P14173654877657487106

`∑[∑[A005557(n+1)]]`
-/

namespace A115132.P14173654877657487106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005557 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115132.P14173654877657487106

namespace A115132

/-- `∑[∑[A005557(n+1)]]` -/
def P14173654877657487106.Spec : Prop :=
  ∀ n, P14173654877657487106.a n = A115132 n

end A115132

/-! ## A115132.P13077971163614690250

`∑[∑[A000389(n+11)-Δ[A000389(n+11)]]]`
-/

namespace A115132.P13077971163614690250
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 11) - (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115132.P13077971163614690250

namespace A115132

/-- `∑[∑[A000389(n+11)-Δ[A000389(n+11)]]]` -/
def P13077971163614690250.Spec : Prop :=
  ∀ n, P13077971163614690250.a n = A115132 n

end A115132

/-! ## A115132.P10773822435626951347

`∑[A000579(n+12)-Δ[A000579(n+12)]]`
-/

namespace A115132.P10773822435626951347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 12)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 12) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115132.P10773822435626951347

namespace A115132

/-- `∑[A000579(n+12)-Δ[A000579(n+12)]]` -/
def P10773822435626951347.Spec : Prop :=
  ∀ n, P10773822435626951347.a n = A115132 n

end A115132

/-! ## A115132.P13554053160800548010

`∑[∑[record[A005557(A008611(n))]]]`
-/

namespace A115132.P13554053160800548010
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005557 (A008611 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115132.P13554053160800548010

namespace A115132

/-- `∑[∑[record[A005557(A008611(n))]]]` -/
def P13554053160800548010.Spec : Prop :=
  ∀ n, P13554053160800548010.a n = A115132 n

end A115132

/-! ## A115132.P7523726665381928025

`∑[∑[record[A005557(A008612(n))]]]`
-/

namespace A115132.P7523726665381928025
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005557 (A008612 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115132.P7523726665381928025

namespace A115132

/-- `∑[∑[record[A005557(A008612(n))]]]` -/
def P7523726665381928025.Spec : Prop :=
  ∀ n, P7523726665381928025.a n = A115132 n

end A115132

/-! ## A115132.P3210012247464251027

`∑[A009766(A000217(n+6)+6)]`
-/

namespace A115132.P3210012247464251027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A000217 (n + 6) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115132.P3210012247464251027

namespace A115132

/-- `∑[A009766(A000217(n+6)+6)]` -/
def P3210012247464251027.Spec : Prop :=
  ∀ n, P3210012247464251027.a n = A115132 n

end A115132

/-! ## A115132.P14723055889331384806

`∑[A033184(A055999(n+4))]`
-/

namespace A115132.P14723055889331384806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (A055999 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115132.P14723055889331384806

namespace A115132

/-- `∑[A033184(A055999(n+4))]` -/
def P14723055889331384806.Spec : Prop :=
  ∀ n, P14723055889331384806.a n = A115132 n

end A115132

/-! ## A115132.P15256134395711298212

`∑[A033184(A000124(n+7)-7)]`
-/

namespace A115132.P15256134395711298212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (A000124 (n + 7) - 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115132.P15256134395711298212

namespace A115132

/-- `∑[A033184(A000124(n+7)-7)]` -/
def P15256134395711298212.Spec : Prop :=
  ∀ n, P15256134395711298212.a n = A115132 n

end A115132

/-! ## A115132.P17001754742082802758

`∑[A033184(A152947(n+9)-7)]`
-/

namespace A115132.P17001754742082802758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (A152947 (n + 9) - 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115132.P17001754742082802758

namespace A115132

/-- `∑[A033184(A152947(n+9)-7)]` -/
def P17001754742082802758.Spec : Prop :=
  ∀ n, P17001754742082802758.a n = A115132 n

end A115132

/-!
# A115133: Partial sums of A064061.

The programs for A115133, the canonical program `A115133.P10984329347776227416` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115133 has offset 0).

The definition of A115133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115133.P10984329347776227416

`∑[A064061(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A115133

/-- `∑[A064061(n)]` -/
def P10984329347776227416.Spec : Prop :=
  ∀ n, P10984329347776227416.a n = A115133 n

theorem P10984329347776227416.correct : P10984329347776227416.Spec := by
  intro n
  simp only [A115133]

end A115133

/-! ## A115133.P8132878263336251982

`∑[∑[A064059(n+1)]]`
-/

namespace A115133.P8132878263336251982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064059 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115133.P8132878263336251982

namespace A115133

/-- `∑[∑[A064059(n+1)]]` -/
def P8132878263336251982.Spec : Prop :=
  ∀ n, P8132878263336251982.a n = A115133 n

end A115133

/-! ## A115133.P916306706301089600

`∑[∑[record[A064059(abs(1-n))]]]`
-/

namespace A115133.P916306706301089600
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064059 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115133.P916306706301089600

namespace A115133

/-- `∑[∑[record[A064059(abs(1-n))]]]` -/
def P916306706301089600.Spec : Prop :=
  ∀ n, P916306706301089600.a n = A115133 n

end A115133

/-! ## A115133.P9018337130025827117

`∑[∑[Δ[A115132(n)]%A124087(n)]]`
-/

namespace A115133.P9018337130025827117
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f3 (n + 1) - f3 n) (A124087 (n + 15))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115133.P9018337130025827117

namespace A115133

/-- `∑[∑[Δ[A115132(n)]%A124087(n)]]` -/
def P9018337130025827117.Spec : Prop :=
  ∀ n, P9018337130025827117.a n = A115133 n

end A115133

/-! ## A115133.P10200013429104984365

`∑[∑[A115132(n+1)-A115132(n)]]`
-/

namespace A115133.P10200013429104984365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115132 (n + 1) - A115132 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115133.P10200013429104984365

namespace A115133

/-- `∑[∑[A115132(n+1)-A115132(n)]]` -/
def P10200013429104984365.Spec : Prop :=
  ∀ n, P10200013429104984365.a n = A115133 n

end A115133

/-! ## A115133.P3697634231638090538

`∑[∑[A030237(A000096(n+5)+8)]]`
-/

namespace A115133.P3697634231638090538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030237 (A000096 (n + 5) + 8).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115133.P3697634231638090538

namespace A115133

/-- `∑[∑[A030237(A000096(n+5)+8)]]` -/
def P3697634231638090538.Spec : Prop :=
  ∀ n, P3697634231638090538.a n = A115133 n

end A115133

/-! ## A115133.P2611365416768209618

`∑[A009766(A167499(n+6)+2)]`
-/

namespace A115133.P2611365416768209618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A167499 (n + 6) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115133.P2611365416768209618

namespace A115133

/-- `∑[A009766(A167499(n+6)+2)]` -/
def P2611365416768209618.Spec : Prop :=
  ∀ n, P2611365416768209618.a n = A115133 n

end A115133

/-! ## A115133.P13690195503219872697

`∑[A009766(A000217(n+8)-(n+1))]`
-/

namespace A115133.P13690195503219872697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A000217 (n + 8) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115133.P13690195503219872697

namespace A115133

/-- `∑[A009766(A000217(n+8)-(n+1))]` -/
def P13690195503219872697.Spec : Prop :=
  ∀ n, P13690195503219872697.a n = A115133 n

end A115133

/-!
# A115134: Third diagonal sequence of triangle A115127.

The programs for A115134, the canonical program `A115134.P11426993813072874618` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115134 has offset 4).

The definition of A115134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115134.P11426993813072874618

`A000245(n+3)+∑[A071724(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A115134

/-- `A000245(n+3)+∑[A071724(n)]` -/
def P11426993813072874618.Spec : Prop :=
  ∀ n, P11426993813072874618.a n = A115134 (n + 4)

theorem P11426993813072874618.correct : P11426993813072874618.Spec := by
  intro n
  simp only [A115134, Nat.add_sub_cancel]

end A115134

/-! ## A115134.P11241631281112293804

`A071724(n+3)+∑[A071724(n)]`
-/

namespace A115134.P11241631281112293804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115134.P11241631281112293804

namespace A115134

/-- `A071724(n+3)+∑[A071724(n)]` -/
def P11241631281112293804.Spec : Prop :=
  ∀ n, P11241631281112293804.a n = A115134 (n + 4)

theorem P11241631281112293804.correct : P11241631281112293804.Spec := by
  intro n
  simp only [A115134, Nat.add_sub_cancel, A115134.P11241631281112293804.f1, A115134.P11241631281112293804.a, A115134.P11426993813072874618.f1, A115134.P11426993813072874618.a, A000245, A000245.P15461013057778681831.a, A071724, A071724.P13075293376280166576.f1, A071724.P13075293376280166576.a, A000108, A000108.P17551949696095299361.a, A141351, A141351.P15521239837132020654.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A115134

/-! ## A115134.P10379247111356489024

`Δ[A014137(n)+A000108(n+3)]`
-/

namespace A115134.P10379247111356489024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n + A000108 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115134.P10379247111356489024

namespace A115134

/-- `Δ[A014137(n)+A000108(n+3)]` -/
def P10379247111356489024.Spec : Prop :=
  ∀ n, P10379247111356489024.a n = A115134 (n + 4)

end A115134

/-! ## A115134.P7852254197118512339

`Δ[A014138(n)+A000108(n+3)]`
-/

namespace A115134.P7852254197118512339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n + A000108 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115134.P7852254197118512339

namespace A115134

/-- `Δ[A014138(n)+A000108(n+3)]` -/
def P7852254197118512339.Spec : Prop :=
  ∀ n, P7852254197118512339.a n = A115134 (n + 4)

end A115134

/-! ## A115134.P16574457055881972631

`A000245(n+3)+Δ[A014137(n)]`
-/

namespace A115134.P16574457055881972631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 3) + (f1 (n + 1) - f1 n)

end

end A115134.P16574457055881972631

namespace A115134

/-- `A000245(n+3)+Δ[A014137(n)]` -/
def P16574457055881972631.Spec : Prop :=
  ∀ n, P16574457055881972631.a n = A115134 (n + 4)

end A115134

/-! ## A115134.P15278081324303096274

`A067324(n+1)+A005807(n+1)`
-/

namespace A115134.P15278081324303096274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067324 (n + 1) + A005807 (n + 1)

end

end A115134.P15278081324303096274

namespace A115134

/-- `A067324(n+1)+A005807(n+1)` -/
def P15278081324303096274.Spec : Prop :=
  ∀ n, P15278081324303096274.a n = A115134 (n + 4)

end A115134

/-! ## A115134.P475607055638879345

`A228404(n+2)+A026012(n+1)`
-/

namespace A115134.P475607055638879345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228404 (n + 2) + A026012 (n + 1)

end

end A115134.P475607055638879345

namespace A115134

/-- `A228404(n+2)+A026012(n+1)` -/
def P475607055638879345.Spec : Prop :=
  ∀ n, P475607055638879345.a n = A115134 (n + 4)

end A115134

/-! ## A115134.P14621953373845744004

`A220902(n+4)-A000245(n+1)`
-/

namespace A115134.P14621953373845744004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220902 (n + 4) - A000245 (n + 1)

end

end A115134.P14621953373845744004

namespace A115134

/-- `A220902(n+4)-A000245(n+1)` -/
def P14621953373845744004.Spec : Prop :=
  ∀ n, P14621953373845744004.a n = A115134 (n + 4)

end A115134

/-! ## A115134.P5603570813434862289

`A220902(n+4)-A071724(n+1)`
-/

namespace A115134.P5603570813434862289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220902 (n + 4) - A071724 (n + 1)

end

end A115134.P5603570813434862289

namespace A115134

/-- `A220902(n+4)-A071724(n+1)` -/
def P5603570813434862289.Spec : Prop :=
  ∀ n, P5603570813434862289.a n = A115134 (n + 4)

end A115134

/-! ## A115134.P17813562014283055423

`Δ[A081293(n+1)+A071718(n+1)]`
-/

namespace A115134.P17813562014283055423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081293 (n + 1) + A071718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115134.P17813562014283055423

namespace A115134

/-- `Δ[A081293(n+1)+A071718(n+1)]` -/
def P17813562014283055423.Spec : Prop :=
  ∀ n, P17813562014283055423.a n = A115134 (n + 4)

end A115134

/-! ## A115134.P13061308253566272364

`A000782(n+2)+Δ[A071718(n+1)]`
-/

namespace A115134.P13061308253566272364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000782 (n + 2) + (f1 (n + 1) - f1 n)

end

end A115134.P13061308253566272364

namespace A115134

/-- `A000782(n+2)+Δ[A071718(n+1)]` -/
def P13061308253566272364.Spec : Prop :=
  ∀ n, P13061308253566272364.a n = A115134 (n + 4)

end A115134

/-! ## A115134.P16409877190586948513

`A067295(n+1)-2*A067294(n+1)`
-/

namespace A115134.P16409877190586948513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067295 (n + 1) - 2 * A067294 (n + 1)

end

end A115134.P16409877190586948513

namespace A115134

/-- `A067295(n+1)-2*A067294(n+1)` -/
def P16409877190586948513.Spec : Prop :=
  ∀ n, P16409877190586948513.a n = A115134 (n + 4)

end A115134

/-!
# A115135: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2+(x+617)^2 = y^2.

The programs for A115135, there is no canonical definition to state claims against.
-/

/-! ## A115135.P16355339267337344981

`A129725(n+1)+A129992(n+1)-A118674(n+1)`
-/

namespace A115135.P16355339267337344981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129725 (n + 1) + (A129992 (n + 1) - A118674 (n + 1))

end

end A115135.P16355339267337344981

/-!
# A115136: Row sums of triangle A113647.

The programs for A115136, there is no canonical definition to state claims against.
-/

/-! ## A115136.P14435800247670188420

`ceil(A115137(n+1)/2)`
-/

namespace A115136.P14435800247670188420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A115137 (n + 1) : ℚ) / 2⌉

end

end A115136.P14435800247670188420

/-! ## A115136.P12512026027365114894

`Δ[A062992(n)]-∑[A084076(n)]`
-/

namespace A115136.P12512026027365114894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062992 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A115136.P12512026027365114894

/-! ## A115136.P5678750738671029061

`∑[A084076(n)-Δ[A064062(n)]]`
-/

namespace A115136.P5678750738671029061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084076 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115136.P5678750738671029061

/-! ## A115136.P2196545847620835755

`floor(A007318(C(2, n))+A115137(n+1)/2)`
-/

namespace A115136.P2196545847620835755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (Nat.choose 2 n) : ℚ) + (A115137 (n + 1) : ℚ) / 2⌋

end

end A115136.P2196545847620835755

/-! ## A115136.P10380516230364784501

`floor(A001222(A001359(n+1))+A115137(n+1)/2)`
-/

namespace A115136.P10380516230364784501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001222 (A001359 (n + 1)).toNat : ℚ) + (A115137 (n + 1) : ℚ) / 2⌋

end

end A115136.P10380516230364784501

/-!
# A115137: Second diagonal of triangle A113647 (called Y(2,1)).

The programs for A115137, the canonical program `A115137.P16976045627159990475` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115137 has offset 0).

The definition of A115137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115137.P16976045627159990475

`abs(A064062(n)-Δ[A064062(n)])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A115137

/-- `abs(A064062(n)-Δ[A064062(n)])` -/
def P16976045627159990475.Spec : Prop :=
  ∀ n, P16976045627159990475.a n = A115137 n

theorem P16976045627159990475.correct : P16976045627159990475.Spec := by
  intro n
  simp only [A115137]

end A115137

/-! ## A115137.P6977940708814063650

`A116880(abs(1-A000096(n)))`
-/

namespace A115137.P6977940708814063650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116880 |1 - A000096 n|.toNat

end

end A115137.P6977940708814063650

namespace A115137

/-- `A116880(abs(1-A000096(n)))` -/
def P6977940708814063650.Spec : Prop :=
  ∀ n, P6977940708814063650.a n = A115137 n

end A115137

/-! ## A115137.P12425354770247068401

`A116880(eq[1, A209279(n+1)])`
-/

namespace A115137.P12425354770247068401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115137.P12425354770247068401

namespace A115137

/-- `A116880(eq[1, A209279(n+1)])` -/
def P12425354770247068401.Spec : Prop :=
  ∀ n, P12425354770247068401.a n = A115137 n

end A115137

/-! ## A115137.P5198643303647368109

`A116880(A027379(n)-(n+1))`
-/

namespace A115137.P5198643303647368109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116880 (A027379 n - (n + 1 : ℤ)).toNat

end

end A115137.P5198643303647368109

namespace A115137

/-- `A116880(A027379(n)-(n+1))` -/
def P5198643303647368109.Spec : Prop :=
  ∀ n, P5198643303647368109.a n = A115137 n

end A115137

/-! ## A115137.P8163646754070207070

`A116880(A027379(n)-1-n)`
-/

namespace A115137.P8163646754070207070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116880 (A027379 n - 1 - (n : ℤ)).toNat

end

end A115137.P8163646754070207070

namespace A115137

/-- `A116880(A027379(n)-1-n)` -/
def P8163646754070207070.Spec : Prop :=
  ∀ n, P8163646754070207070.a n = A115137 n

end A115137

/-! ## A115137.P939685207870544421

`A116880(A161680(n)+A004273(n))`
-/

namespace A115137.P939685207870544421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116880 (A161680 n + A004273 n).toNat

end

end A115137.P939685207870544421

namespace A115137

/-- `A116880(A161680(n)+A004273(n))` -/
def P939685207870544421.Spec : Prop :=
  ∀ n, P939685207870544421.a n = A115137 n

end A115137

/-! ## A115137.P12011730777379004954

`A116880(A000096(n)-A060576(n+1))`
-/

namespace A115137.P12011730777379004954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116880 (A000096 n - A060576 (n + 1)).toNat

end

end A115137.P12011730777379004954

namespace A115137

/-- `A116880(A000096(n)-A060576(n+1))` -/
def P12011730777379004954.Spec : Prop :=
  ∀ n, P12011730777379004954.a n = A115137 n

end A115137

/-! ## A115137.P6804345139744268294

`A116880(A052905(n)-A163300(n+1))`
-/

namespace A115137.P6804345139744268294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116880 (A052905 n - A163300 (n + 1)).toNat

end

end A115137.P6804345139744268294

namespace A115137

/-- `A116880(A052905(n)-A163300(n+1))` -/
def P6804345139744268294.Spec : Prop :=
  ∀ n, P6804345139744268294.a n = A115137 n

end A115137

/-!
# A115138: A sequence related to Catalan numbers A000108.

The programs for A115138, the canonical program `A115138.P4364659728970173853` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115138 has offset 0).

The definition of A115138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115138.P4364659728970173853

`A115137(n)+A115137(n)-A062992(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A115138

/-- `A115137(n)+A115137(n)-A062992(n)` -/
def P4364659728970173853.Spec : Prop :=
  ∀ n, P4364659728970173853.a n = A115138 n

theorem P4364659728970173853.correct : P4364659728970173853.Spec := by
  intro n
  simp only [A115138]

end A115138

/-! ## A115138.P12153036567970728542

`A115137(n)+A115137(n)-A064062(n+1)`
-/

namespace A115138.P12153036567970728542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115137 n + (A115137 n - A064062 (n + 1))

end

end A115138.P12153036567970728542

namespace A115138

/-- `A115137(n)+A115137(n)-A064062(n+1)` -/
def P12153036567970728542.Spec : Prop :=
  ∀ n, P12153036567970728542.a n = A115138 n

end A115138

/-! ## A115138.P1152924787790407175

`2*A115137(n)-A062992(n)`
-/

namespace A115138.P1152924787790407175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115137 n - A062992 n

end

end A115138.P1152924787790407175

namespace A115138

/-- `2*A115137(n)-A062992(n)` -/
def P1152924787790407175.Spec : Prop :=
  ∀ n, P1152924787790407175.a n = A115138 n

theorem P1152924787790407175.correct : P1152924787790407175.Spec := by
  intro n
  simp only [A115138, Nat.add_sub_cancel, A115138.P1152924787790407175.a, A115138.P4364659728970173853.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A115138

/-!
# A115139: Array of coefficients of polynomials related to integer powers of the generating function of Catalan numbers A000108.

The programs for A115139, the canonical program `A115139.P5752333722651218289` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115139 has offset 1).

The definition of A115139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5035 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115139.P6591821857874701731

`A011973(n)*A034807(n)/A213234(n)`
-/

namespace A115139.P6591821857874701731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011973 n * A034807 n : ℚ) / (A213234 n : ℚ)

end

end A115139.P6591821857874701731

namespace A115139

/-- `A011973(n)*A034807(n)/A213234(n)` -/
def P6591821857874701731.Spec : Prop :=
  ∀ n, P6591821857874701731.a n = (A115139 (n + 1) : ℚ)

end A115139

/-! ## A115139.P18020363297181124104

`A108299(A028391(n)+n)`
-/

namespace A115139.P18020363297181124104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 (A028391 n + (n : ℤ)).toNat

end

end A115139.P18020363297181124104

namespace A115139

/-- `A108299(A028391(n)+n)` -/
def P18020363297181124104.Spec : Prop :=
  ∀ n, P18020363297181124104.a n = A115139 (n + 1)

end A115139

/-! ## A115139.P5752333722651218289

`A053119(A028391(n)+n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A115139

/-- `A053119(A028391(n)+n)` -/
def P5752333722651218289.Spec : Prop :=
  ∀ n, P5752333722651218289.a n = A115139 (n + 1)

theorem P5752333722651218289.correct : P5752333722651218289.Spec := by
  intro n
  simp only [A115139, Nat.add_sub_cancel]

end A115139

/-! ## A115139.P18280106570219941476

`A053119(record[1-abs(A053119(n))+n])`
-/

namespace A115139.P18280106570219941476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A053119 n| + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115139.P18280106570219941476

namespace A115139

/-- `A053119(record[1-abs(A053119(n))+n])` -/
def P18280106570219941476.Spec : Prop :=
  ∀ n, P18280106570219941476.a n = A115139 (n + 1)

end A115139

/-! ## A115139.P5789978859125670576

`A053119(record[1-A053119(n)²+n])`
-/

namespace A115139.P5789978859125670576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A053119 n ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115139.P5789978859125670576

namespace A115139

/-- `A053119(record[1-A053119(n)²+n])` -/
def P5789978859125670576.Spec : Prop :=
  ∀ n, P5789978859125670576.a n = A115139 (n + 1)

end A115139

/-! ## A115139.P18179229709952393297

`A053119(eq[1, A053119(n*a(n-1))])` with `a(0)=1`
-/

namespace A115139.P18179229709952393297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A053119 ((n : ℤ) * f2 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115139.P18179229709952393297

namespace A115139

/-- `A053119(eq[1, A053119(n*a(n-1))])` -/
def P18179229709952393297.Spec : Prop :=
  ∀ n, P18179229709952393297.a n = A115139 (n + 1)

end A115139

/-! ## A115139.P59819453557518625

`A133607(comp[n²]+n)`
-/

namespace A115139.P59819453557518625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133607 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A115139.P59819453557518625

namespace A115139

/-- `A133607(comp[n²]+n)` -/
def P59819453557518625.Spec : Prop :=
  ∀ n, P59819453557518625.a n = A115139 (n + 1)

end A115139

/-! ## A115139.P12277825775755763435

`A053119(lt[0, A053125(n)])`
-/

namespace A115139.P12277825775755763435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A115139.P12277825775755763435

namespace A115139

/-- `A053119(lt[0, A053125(n)])` -/
def P12277825775755763435.Spec : Prop :=
  ∀ n, P12277825775755763435.a n = A115139 (n + 1)

end A115139

/-! ## A115139.P16795764098390941860

`A053119(record[n+1-A053119(n)^6])`
-/

namespace A115139.P16795764098390941860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A053119 n ^ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115139.P16795764098390941860

namespace A115139

/-- `A053119(record[n+1-A053119(n)^6])` -/
def P16795764098390941860.Spec : Prop :=
  ∀ n, P16795764098390941860.a n = A115139 (n + 1)

end A115139

/-! ## A115139.P8444746687753818461

`A128502(n)/A199474(n+1)`
-/

namespace A115139.P8444746687753818461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128502 n : ℚ) / (A199474 (n + 1) : ℚ)

end

end A115139.P8444746687753818461

namespace A115139

/-- `A128502(n)/A199474(n+1)` -/
def P8444746687753818461.Spec : Prop :=
  ∀ n, P8444746687753818461.a n = (A115139 (n + 1) : ℚ)

end A115139

/-!
# A115140: O.g.f. inverse of Catalan A000108 o.g.f.

The programs for A115140, the canonical program `A115140.P12775726939612743797` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115140 has offset 0).

The definition of A115140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115140.P13695838613708269775

`(4-6/n)*a(n-1)` with `a(0)=1, a(1)=-1`
-/

namespace A115140.P13695838613708269775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -1] fun n a =>
  (4 - 6 / (n : ℚ)) * a (n - 1)

end

end A115140.P13695838613708269775

namespace A115140

/-- `(4-6/n)*a(n-1)` -/
def P13695838613708269775.Spec : Prop :=
  ∀ n, P13695838613708269775.a n = (A115140 n : ℚ)

end A115140

/-! ## A115140.P12981999815560768381

`A115141(char[1]+n)`
-/

namespace A115140.P12981999815560768381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115141 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A115140.P12981999815560768381

namespace A115140

/-- `A115141(char[1]+n)` -/
def P12981999815560768381.Spec : Prop :=
  ∀ n, P12981999815560768381.a n = A115140 n

end A115140

/-! ## A115140.P337567101404246578

`A246432(char[1]+n)`
-/

namespace A115140.P337567101404246578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246432 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A115140.P337567101404246578

namespace A115140

/-- `A246432(char[1]+n)` -/
def P337567101404246578.Spec : Prop :=
  ∀ n, P337567101404246578.a n = A115140 n

end A115140

/-! ## A115140.P9869549009946281473

`or(char[1], A115141(n))`
-/

namespace A115140.P9869549009946281473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A115141 n)

end

end A115140.P9869549009946281473

namespace A115140

/-- `or(char[1], A115141(n))` -/
def P9869549009946281473.Spec : Prop :=
  ∀ n, P9869549009946281473.a n = A115140 n

end A115140

/-! ## A115140.P3282487616208193655

`or(-char[1], A246432(n))`
-/

namespace A115140.P3282487616208193655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A246432 n)

end

end A115140.P3282487616208193655

namespace A115140

/-- `or(-char[1], A246432(n))` -/
def P3282487616208193655.Spec : Prop :=
  ∀ n, P3282487616208193655.a n = A115140 n

end A115140

/-! ## A115140.P12871323309924127631

`floor(acot(n)²-A120588(n))`
-/

namespace A115140.P12871323309924127631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) ^ 2 - (A120588 n : ℝ)⌋

end

end A115140.P12871323309924127631

namespace A115140

/-- `floor(acot(n)²-A120588(n))` -/
def P12871323309924127631.Spec : Prop :=
  ∀ n, P12871323309924127631.a n = A115140 n

end A115140

/-! ## A115140.P7151140907593231974

`A210628(n-(1-n)%(n+1))`
-/

namespace A115140.P7151140907593231974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A115140.P7151140907593231974

namespace A115140

/-- `A210628(n-(1-n)%(n+1))` -/
def P7151140907593231974.Spec : Prop :=
  ∀ n, P7151140907593231974.a n = A115140 n

end A115140

/-! ## A115140.P12775726939612743797

`floor(2/3^n)-A000108(abs(1-n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A115140

/-- `floor(2/3^n)-A000108(abs(1-n))` -/
def P12775726939612743797.Spec : Prop :=
  ∀ n, P12775726939612743797.a n = A115140 n

theorem P12775726939612743797.correct : P12775726939612743797.Spec := by
  intro n
  simp only [A115140]

end A115140

/-! ## A115140.P3716953857948713450

`-(A000108(n-1)%(4*a(n-1)))` with `a(0)=1`
-/

namespace A115140.P3716953857948713450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -Int.tmod (A000108 (n - 1)) (4 * a (n - 1))

end

end A115140.P3716953857948713450

namespace A115140

/-- `-(A000108(n-1)%(4*a(n-1)))` -/
def P3716953857948713450.Spec : Prop :=
  ∀ n, P3716953857948713450.a n = A115140 n

end A115140

/-! ## A115140.P11057143469669533885

`A210628(A004273(n))`
-/

namespace A115140.P11057143469669533885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (A004273 n).toNat

end

end A115140.P11057143469669533885

namespace A115140

/-- `A210628(A004273(n))` -/
def P11057143469669533885.Spec : Prop :=
  ∀ n, P11057143469669533885.a n = A115140 n

end A115140

/-! ## A115140.P1199214010722702310

`A210628(record[A026741(n)])`
-/

namespace A115140.P1199214010722702310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115140.P1199214010722702310

namespace A115140

/-- `A210628(record[A026741(n)])` -/
def P1199214010722702310.Spec : Prop :=
  ∀ n, P1199214010722702310.a n = A115140 n

end A115140

/-! ## A115140.P11469749295190347627

`A115141(n)+A063524(n)`
-/

namespace A115140.P11469749295190347627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115141 n + A063524 n

end

end A115140.P11469749295190347627

namespace A115140

/-- `A115141(n)+A063524(n)` -/
def P11469749295190347627.Spec : Prop :=
  ∀ n, P11469749295190347627.a n = A115140 n

end A115140

/-! ## A115140.P3452372349886216431

`A000038(n)-A120588(n)`
-/

namespace A115140.P3452372349886216431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A120588 n

end

end A115140.P3452372349886216431

namespace A115140

/-- `A000038(n)-A120588(n)` -/
def P3452372349886216431.Spec : Prop :=
  ∀ n, P3452372349886216431.a n = A115140 n

end A115140

/-! ## A115140.P6052395181583231884

`A115141(n)-A159075(n)`
-/

namespace A115140.P6052395181583231884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115141 n - A159075 n

end

end A115140.P6052395181583231884

namespace A115140

/-- `A115141(n)-A159075(n)` -/
def P6052395181583231884.Spec : Prop :=
  ∀ n, P6052395181583231884.a n = A115140 n

end A115140

/-! ## A115140.P13081672380004165131

`A115141(n)/A373565(n)`
-/

namespace A115140.P13081672380004165131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115141 n : ℚ) / (A373565 n : ℚ)

end

end A115140.P13081672380004165131

namespace A115140

/-- `A115141(n)/A373565(n)` -/
def P13081672380004165131.Spec : Prop :=
  ∀ n, P13081672380004165131.a n = (A115140 n : ℚ)

end A115140

/-! ## A115140.P4158593122820158591

`A210628(eq[n, A026741(n)])`
-/

namespace A115140.P4158593122820158591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115140.P4158593122820158591

namespace A115140

/-- `A210628(eq[n, A026741(n)])` -/
def P4158593122820158591.Spec : Prop :=
  ∀ n, P4158593122820158591.a n = A115140 n

end A115140

/-! ## A115140.P7112172051378863264

`A210628(log2(A011782(n))+n)`
-/

namespace A115140.P7112172051378863264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ) + (n : ℝ))).toNat

end

end A115140.P7112172051378863264

namespace A115140

/-- `A210628(log2(A011782(n))+n)` -/
def P7112172051378863264.Spec : Prop :=
  ∀ n, P7112172051378863264.a n = A115140 n

end A115140

/-! ## A115140.P597072739052084881

`A130706(n+1)-A120588(n)`
-/

namespace A115140.P597072739052084881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (n + 1) - A120588 n

end

end A115140.P597072739052084881

namespace A115140

/-- `A130706(n+1)-A120588(n)` -/
def P597072739052084881.Spec : Prop :=
  ∀ n, P597072739052084881.a n = A115140 n

end A115140

/-! ## A115140.P3962904449785167733

`A120588(n)*A153881(n+1)`
-/

namespace A115140.P3962904449785167733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n * A153881 (n + 1)

end

end A115140.P3962904449785167733

namespace A115140

/-- `A120588(n)*A153881(n+1)` -/
def P3962904449785167733.Spec : Prop :=
  ∀ n, P3962904449785167733.a n = A115140 n

end A115140

/-! ## A115140.P3174452642127205441

`A120588(n)*A260196(2*n)`
-/

namespace A115140.P3174452642127205441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n * A260196 (2 * n)

end

end A115140.P3174452642127205441

namespace A115140

/-- `A120588(n)*A260196(2*n)` -/
def P3174452642127205441.Spec : Prop :=
  ∀ n, P3174452642127205441.a n = A115140 n

end A115140

/-!
# A115141: Convolution of A115140 with itself.

The programs for A115141, the canonical program `A115141.P16815087321721103220` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115141 has offset 0).

The definition of A115141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115141.P14022011123481258198

`(4-6/n)*a(n-1)` with `a(0)=1, a(1)=-2, a(2)=-1`
-/

namespace A115141.P14022011123481258198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -2, -1] fun n a =>
  (4 - 6 / (n : ℚ)) * a (n - 1)

end

end A115141.P14022011123481258198

namespace A115141

/-- `(4-6/n)*a(n-1)` -/
def P14022011123481258198.Spec : Prop :=
  ∀ n, P14022011123481258198.a n = (A115141 n : ℚ)

end A115141

/-! ## A115141.P14357178042589953912

`A246432(n)+char[1]`
-/

namespace A115141.P14357178042589953912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246432 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A115141.P14357178042589953912

namespace A115141

/-- `A246432(n)+char[1]` -/
def P14357178042589953912.Spec : Prop :=
  ∀ n, P14357178042589953912.a n = A115141 n

end A115141

/-! ## A115141.P3065599224582246095

`A115140(n)-char[1]`
-/

namespace A115141.P3065599224582246095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A115141.P3065599224582246095

namespace A115141

/-- `A115140(n)-char[1]` -/
def P3065599224582246095.Spec : Prop :=
  ∀ n, P3065599224582246095.a n = A115141 n

end A115141

/-! ## A115141.P9283607683539224666

`A246432(lcm(n, floor(1/(γ-n))))`
-/

namespace A115141.P9283607683539224666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246432 (Int.lcm (n : ℤ) ⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋)

end

end A115141.P9283607683539224666

namespace A115141

/-- `A246432(lcm(n, floor(1/(γ-n))))` -/
def P9283607683539224666.Spec : Prop :=
  ∀ n, P9283607683539224666.a n = A115141 n

end A115141

/-! ## A115141.P15452198439260751180

`A159075(n)+A115140(n)`
-/

namespace A115141.P15452198439260751180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A115140 n

end

end A115141.P15452198439260751180

namespace A115141

/-- `A159075(n)+A115140(n)` -/
def P15452198439260751180.Spec : Prop :=
  ∀ n, P15452198439260751180.a n = A115141 n

end A115141

/-! ## A115141.P10634205487551330395

`A115140(n)*A373565(n)`
-/

namespace A115141.P10634205487551330395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 n * A373565 n

end

end A115141.P10634205487551330395

namespace A115141

/-- `A115140(n)*A373565(n)` -/
def P10634205487551330395.Spec : Prop :=
  ∀ n, P10634205487551330395.a n = A115141 n

end A115141

/-! ## A115141.P16815087321721103220

`xor(A063524(n), A115140(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A115141

/-- `xor(A063524(n), A115140(n))` -/
def P16815087321721103220.Spec : Prop :=
  ∀ n, P16815087321721103220.a n = A115141 n

theorem P16815087321721103220.correct : P16815087321721103220.Spec := by
  intro n
  simp only [A115141]

end A115141

/-! ## A115141.P13567115190820516242

`and(-A000034(n), A115140(n))`
-/

namespace A115141.P13567115190820516242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000034 n) (A115140 n)

end

end A115141.P13567115190820516242

namespace A115141

/-- `and(-A000034(n), A115140(n))` -/
def P13567115190820516242.Spec : Prop :=
  ∀ n, P13567115190820516242.a n = A115141 n

end A115141

/-! ## A115141.P15060928349761967185

`xor(char[A002420(n)], A115140(n))`
-/

namespace A115141.P15060928349761967185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A115140 n)

end

end A115141.P15060928349761967185

namespace A115141

/-- `xor(char[A002420(n)], A115140(n))` -/
def P15060928349761967185.Spec : Prop :=
  ∀ n, P15060928349761967185.a n = A115141 n

end A115141

/-! ## A115141.P8481329283448477747

`xor(char[A004984(n)], A115140(n))`
-/

namespace A115141.P8481329283448477747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004984 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A115140 n)

end

end A115141.P8481329283448477747

namespace A115141

/-- `xor(char[A004984(n)], A115140(n))` -/
def P8481329283448477747.Spec : Prop :=
  ∀ n, P8481329283448477747.a n = A115141 n

end A115141

/-! ## A115141.P1523729164777142228

`xor(char[A004990(n)], A115140(n))`
-/

namespace A115141.P1523729164777142228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004990 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A115140 n)

end

end A115141.P1523729164777142228

namespace A115141

/-- `xor(char[A004990(n)], A115140(n))` -/
def P1523729164777142228.Spec : Prop :=
  ∀ n, P1523729164777142228.a n = A115141 n

end A115141

/-! ## A115141.P8967775033245641821

`xor(char[A004996(n)], A115140(n))`
-/

namespace A115141.P8967775033245641821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004996 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A115140 n)

end

end A115141.P8967775033245641821

namespace A115141

/-- `xor(char[A004996(n)], A115140(n))` -/
def P8967775033245641821.Spec : Prop :=
  ∀ n, P8967775033245641821.a n = A115141 n

end A115141

/-! ## A115141.P901984454404965924

`xor(char[A106270(n)], A115140(n))`
-/

namespace A115141.P901984454404965924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106270 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A115140 n)

end

end A115141.P901984454404965924

namespace A115141

/-- `xor(char[A106270(n)], A115140(n))` -/
def P901984454404965924.Spec : Prop :=
  ∀ n, P901984454404965924.a n = A115141 n

end A115141

/-! ## A115141.P3777263464774267946

`xor(char[A292440(n)], A115140(n))`
-/

namespace A115141.P3777263464774267946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A115140 n)

end

end A115141.P3777263464774267946

namespace A115141

/-- `xor(char[A292440(n)], A115140(n))` -/
def P3777263464774267946.Spec : Prop :=
  ∀ n, P3777263464774267946.a n = A115141 n

end A115141

/-! ## A115141.P773793507658134016

`A246432(n*(A130706(n)+1))`
-/

namespace A115141.P773793507658134016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246432 ((n : ℤ) * (A130706 n + 1)).toNat

end

end A115141.P773793507658134016

namespace A115141

/-- `A246432(n*(A130706(n)+1))` -/
def P773793507658134016.Spec : Prop :=
  ∀ n, P773793507658134016.a n = A115141 n

end A115141

/-! ## A115141.P10534119685468124720

`A115140(2*A063524(n)+n)`
-/

namespace A115141.P10534119685468124720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (2 * A063524 n + (n : ℤ)).toNat

end

end A115141.P10534119685468124720

namespace A115141

/-- `A115140(2*A063524(n)+n)` -/
def P10534119685468124720.Spec : Prop :=
  ∀ n, P10534119685468124720.a n = A115141 n

end A115141

/-! ## A115141.P121072127849364579

`A246432(2*A063524(n)+n)`
-/

namespace A115141.P121072127849364579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246432 (2 * A063524 n + (n : ℤ)).toNat

end

end A115141.P121072127849364579

namespace A115141

/-- `A246432(2*A063524(n)+n)` -/
def P121072127849364579.Spec : Prop :=
  ∀ n, P121072127849364579.a n = A115141 n

end A115141

/-! ## A115141.P15876664617181873315

`A115140(n-2*A159075(n))`
-/

namespace A115141.P15876664617181873315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 ((n : ℤ) - 2 * A159075 n).toNat

end

end A115141.P15876664617181873315

namespace A115141

/-- `A115140(n-2*A159075(n))` -/
def P15876664617181873315.Spec : Prop :=
  ∀ n, P15876664617181873315.a n = A115141 n

end A115141

/-! ## A115141.P9244739704822515308

`A246432(n-2*A159075(n))`
-/

namespace A115141.P9244739704822515308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246432 ((n : ℤ) - 2 * A159075 n).toNat

end

end A115141.P9244739704822515308

namespace A115141

/-- `A246432(n-2*A159075(n))` -/
def P9244739704822515308.Spec : Prop :=
  ∀ n, P9244739704822515308.a n = A115141 n

end A115141

/-! ## A115141.P220913848306091125

`A071222(A002088(n))*A115140(n)`
-/

namespace A115141.P220913848306091125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 (A002088 n).toNat * A115140 n

end

end A115141.P220913848306091125

namespace A115141

/-- `A071222(A002088(n))*A115140(n)` -/
def P220913848306091125.Spec : Prop :=
  ∀ n, P220913848306091125.a n = A115141 n

end A115141

/-!
# A115142: Third convolution of A115140.

The programs for A115142, there is no canonical definition to state claims against.
-/

/-! ## A115142.P3560238023686262379

`A115143(n+1)-A115144(n+1)`
-/

namespace A115142.P3560238023686262379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115143 (n + 1) - A115144 (n + 1)

end

end A115142.P3560238023686262379

/-! ## A115142.P931333027314245546

`A115143(n+1)-(A115145(n+1)+A115143(n))`
-/

namespace A115142.P931333027314245546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115143 (n + 1) - (A115145 (n + 1) + A115143 n)

end

end A115142.P931333027314245546

/-! ## A115142.P10594251290669133068

`A271875(∑[n+2]+4)`
-/

namespace A115142.P10594251290669133068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A115142.P10594251290669133068

/-! ## A115142.P17085444908233528032

`A271875(A055998(n)+6)%A006659(n+1)`
-/

namespace A115142.P17085444908233528032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271875 (A055998 n + 6).toNat) (A006659 (n + 1))

end

end A115142.P17085444908233528032

/-! ## A115142.P12420868339400551154

`A271875(A167614(n+1))*A274651(A001844(n))`
-/

namespace A115142.P12420868339400551154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A167614 (n + 1)).toNat * A274651 (A001844 n).toNat

end

end A115142.P12420868339400551154

/-!
# A115143: a(n) = -4*binomial(2*n-5, n-4)/n for n > 0 and a(0) = 1.

The programs for A115143, the canonical program `A115143.P17301981336238266836` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115143 has offset 0).

The definition of A115143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115143.P17301981336238266836

`A126079(n)/A329683(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A115143

/-- `A126079(n)/A329683(n)` -/
def P17301981336238266836.Spec : Prop :=
  ∀ n, P17301981336238266836.a n = (A115143 n : ℚ)

end A115143

/-! ## A115143.P10285271774425423795

`A115144(n+1)-A115145(n+1)`
-/

namespace A115143.P10285271774425423795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115144 (n + 1) - A115145 (n + 1)

end

end A115143.P10285271774425423795

namespace A115143

/-- `A115144(n+1)-A115145(n+1)` -/
def P10285271774425423795.Spec : Prop :=
  ∀ n, P10285271774425423795.a n = A115143 n

end A115143

/-! ## A115143.P7603630772857023430

`A115144(n+1)-(A115146(n+1)+A115144(n))`
-/

namespace A115143.P7603630772857023430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115144 (n + 1) - (A115146 (n + 1) + A115144 n)

end

end A115143.P7603630772857023430

namespace A115143

/-- `A115144(n+1)-(A115146(n+1)+A115144(n))` -/
def P7603630772857023430.Spec : Prop :=
  ∀ n, P7603630772857023430.a n = A115143 n

end A115143

/-! ## A115143.P15480407739855155856

`A271875(A052905(n)+9)`
-/

namespace A115143.P15480407739855155856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A052905 n + 9).toNat

end

end A115143.P15480407739855155856

namespace A115143

/-- `A271875(A052905(n)+9)` -/
def P15480407739855155856.Spec : Prop :=
  ∀ n, P15480407739855155856.a n = A115143 n

end A115143

/-! ## A115143.P5833779197483905013

`A271875(A167614(n+2)+1)`
-/

namespace A115143.P5833779197483905013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A167614 (n + 2) + 1).toNat

end

end A115143.P5833779197483905013

namespace A115143

/-- `A271875(A167614(n+2)+1)` -/
def P5833779197483905013.Spec : Prop :=
  ∀ n, P5833779197483905013.a n = A115143 n

end A115143

/-! ## A115143.P6119648900524440979

`A271875(A000096(n+2)+5)`
-/

namespace A115143.P6119648900524440979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A000096 (n + 2) + 5).toNat

end

end A115143.P6119648900524440979

namespace A115143

/-- `A271875(A000096(n+2)+5)` -/
def P6119648900524440979.Spec : Prop :=
  ∀ n, P6119648900524440979.a n = A115143 n

end A115143

/-! ## A115143.P460265090417834384

`A271875(Δ[A023545(n+1)-n²])`
-/

namespace A115143.P460265090417834384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (f1 (n + 1) - f1 n).toNat

end

end A115143.P460265090417834384

namespace A115143

/-- `A271875(Δ[A023545(n+1)-n²])` -/
def P460265090417834384.Spec : Prop :=
  ∀ n, P460265090417834384.a n = A115143 n

end A115143

/-! ## A115143.P16866037162699318180

`A126079(n)/A000032(A094497(n))`
-/

namespace A115143.P16866037162699318180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126079 n : ℚ) / (A000032 (A094497 n).toNat : ℚ)

end

end A115143.P16866037162699318180

namespace A115143

/-- `A126079(n)/A000032(A094497(n))` -/
def P16866037162699318180.Spec : Prop :=
  ∀ n, P16866037162699318180.a n = (A115143 n : ℚ)

end A115143

/-!
# A115144: Fifth convolution of A115140.

The programs for A115144, there is no canonical definition to state claims against.
-/

/-! ## A115144.P1238005939538900625

`Δ[A115145(n)-∑[A115147(n)]]`
-/

namespace A115144.P1238005939538900625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115147 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115145 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115144.P1238005939538900625

/-! ## A115144.P18387225395149264673

`Δ[A115145(n)]-A115147(n+1)`
-/

namespace A115144.P18387225395149264673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A115147 (n + 1)

end

end A115144.P18387225395149264673

/-! ## A115144.P12013742871498393002

`A115145(n+1)-A115146(n+1)`
-/

namespace A115144.P12013742871498393002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115145 (n + 1) - A115146 (n + 1)

end

end A115144.P12013742871498393002

/-! ## A115144.P9033789216139067753

`A115145(n+1)-(A115147(n+1)+A115145(n))`
-/

namespace A115144.P9033789216139067753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115145 (n + 1) - (A115147 (n + 1) + A115145 n)

end

end A115144.P9033789216139067753

/-! ## A115144.P1020823395559246768

`A271875(A167499(n+3))`
-/

namespace A115144.P1020823395559246768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A167499 (n + 3)).toNat

end

end A115144.P1020823395559246768

/-! ## A115144.P12466682353838119319

`A271875(A167614(n+3)+2)`
-/

namespace A115144.P12466682353838119319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A167614 (n + 3) + 2).toNat

end

end A115144.P12466682353838119319

/-! ## A115144.P13648529195914235737

`A271875(A038722(Δ[A023545(n+1)]))`
-/

namespace A115144.P13648529195914235737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A115144.P13648529195914235737

/-!
# A115145: Sixth convolution of A115140.

The programs for A115145, there is no canonical definition to state claims against.
-/

/-! ## A115145.P4216611026828631557

`Δ[A115146(n)-∑[A115148(n)]]`
-/

namespace A115145.P4216611026828631557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115148 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115146 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115145.P4216611026828631557

/-! ## A115145.P1098522062615260604

`Δ[A115146(n)]-A115148(n+1)`
-/

namespace A115145.P1098522062615260604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A115148 (n + 1)

end

end A115145.P1098522062615260604

/-! ## A115145.P10037862148527195699

`A115146(n+1)-A115147(n+1)`
-/

namespace A115145.P10037862148527195699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115146 (n + 1) - A115147 (n + 1)

end

end A115145.P10037862148527195699

/-! ## A115145.P17518634400657946079

`A115146(n+1)-(A115148(n+1)+A115146(n))`
-/

namespace A115145.P17518634400657946079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115146 (n + 1) - (A115148 (n + 1) + A115146 n)

end

end A115145.P17518634400657946079

/-! ## A115145.P3812086074135094737

`A271875(A167499(n+4)+1)`
-/

namespace A115145.P3812086074135094737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A167499 (n + 4) + 1).toNat

end

end A115145.P3812086074135094737

/-! ## A115145.P10973218229397850087

`A271875(A000124(n+5)+5)`
-/

namespace A115145.P10973218229397850087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A000124 (n + 5) + 5).toNat

end

end A115145.P10973218229397850087

/-! ## A115145.P7044774958466557965

`A271875(A000217(n+5)+6)`
-/

namespace A115145.P7044774958466557965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A000217 (n + 5) + 6).toNat

end

end A115145.P7044774958466557965

/-! ## A115145.P10802837570941813732

`A271875(A161680(n+6)+6)`
-/

namespace A115145.P10802837570941813732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A161680 (n + 6) + 6).toNat

end

end A115145.P10802837570941813732

/-! ## A115145.P12187823415539371455

`A271875(A052905(n)+A005843(n+10))`
-/

namespace A115145.P12187823415539371455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A052905 n + A005843 (n + 10)).toNat

end

end A115145.P12187823415539371455

/-! ## A115145.P9301081920449973480

`A271875(A046691(n+5)-A004273(n+2))`
-/

namespace A115145.P9301081920449973480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A046691 (n + 5) - A004273 (n + 2)).toNat

end

end A115145.P9301081920449973480

/-!
# A115146: Seventh convolution of A115140.

The programs for A115146, there is no canonical definition to state claims against.
-/

/-! ## A115146.P13293970118577120636

`Δ[A115147(n)-∑[A115149(n)]]`
-/

namespace A115146.P13293970118577120636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115149 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115147 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115146.P13293970118577120636

/-! ## A115146.P6603298343511065587

`Δ[A115147(n)]-A115149(n+1)`
-/

namespace A115146.P6603298343511065587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A115149 (n + 1)

end

end A115146.P6603298343511065587

/-! ## A115146.P10437650987089441994

`A115147(n+1)-A115148(n+1)`
-/

namespace A115146.P10437650987089441994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115147 (n + 1) - A115148 (n + 1)

end

end A115146.P10437650987089441994

/-! ## A115146.P17072597417900501913

`A115147(n+1)-(A115149(n+1)+A115147(n))`
-/

namespace A115146.P17072597417900501913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115147 (n + 1) - (A115149 (n + 1) + A115147 n)

end

end A115146.P17072597417900501913

/-! ## A115146.P468594479124774961

`A271875(A167499(n+5)+2)`
-/

namespace A115146.P468594479124774961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A167499 (n + 5) + 2).toNat

end

end A115146.P468594479124774961

/-! ## A115146.P1177621944072400515

`A271875(A000124(n+6)+6)`
-/

namespace A115146.P1177621944072400515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A000124 (n + 6) + 6).toNat

end

end A115146.P1177621944072400515

/-! ## A115146.P7878044830627216671

`A271875(A000217(n+6)+7)`
-/

namespace A115146.P7878044830627216671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A000217 (n + 6) + 7).toNat

end

end A115146.P7878044830627216671

/-! ## A115146.P132507551050178450

`A271875(A000096(n+7)-A004273(n+4))`
-/

namespace A115146.P132507551050178450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A000096 (n + 7) - A004273 (n + 4)).toNat

end

end A115146.P132507551050178450

/-!
# A115147: Eighth convolution of A115140.

The programs for A115147, there is no canonical definition to state claims against.
-/

/-! ## A115147.P13534913615472204789

`A115148(n+1)-A115149(n+1)`
-/

namespace A115147.P13534913615472204789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115148 (n + 1) - A115149 (n + 1)

end

end A115147.P13534913615472204789

/-! ## A115147.P17202858437083379662

`A271875(A000217(n+7)+8)`
-/

namespace A115147.P17202858437083379662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A000217 (n + 7) + 8).toNat

end

end A115147.P17202858437083379662

/-! ## A115147.P12658403159031877507

`A271875(A161680(n+8)+8)`
-/

namespace A115147.P12658403159031877507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A161680 (n + 8) + 8).toNat

end

end A115147.P12658403159031877507

/-! ## A115147.P18323202136811156064

`A271875(A052905(n+6)-A005843(n+2))`
-/

namespace A115147.P18323202136811156064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A052905 (n + 6) - A005843 (n + 2)).toNat

end

end A115147.P18323202136811156064

/-! ## A115147.P4157339265487350312

`A271875(A046691(n+7)-A004273(n+3))`
-/

namespace A115147.P4157339265487350312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A046691 (n + 7) - A004273 (n + 3)).toNat

end

end A115147.P4157339265487350312

/-! ## A115147.P7349679433895292023

`A271875(A167499(n+4)+A005843(n+8))`
-/

namespace A115147.P7349679433895292023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A167499 (n + 4) + A005843 (n + 8)).toNat

end

end A115147.P7349679433895292023

/-! ## A115147.P17143392408359446759

`A271875(A000124(n+9)-A005843(n+5))`
-/

namespace A115147.P17143392408359446759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A000124 (n + 9) - A005843 (n + 5)).toNat

end

end A115147.P17143392408359446759

/-!
# A115148: Ninth convolution of A115140.

The programs for A115148, there is no canonical definition to state claims against.
-/

/-! ## A115148.P8046356781755333451

`A271875(A000217(n+8)+9)`
-/

namespace A115148.P8046356781755333451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A000217 (n + 8) + 9).toNat

end

end A115148.P8046356781755333451

/-! ## A115148.P3022557806320792019

`A271875(A027379(n+6)+12)`
-/

namespace A115148.P3022557806320792019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A027379 (n + 6) + 12).toNat

end

end A115148.P3022557806320792019

/-! ## A115148.P14176982095758386071

`A271875(A161680(n+9)+9)`
-/

namespace A115148.P14176982095758386071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A161680 (n + 9) + 9).toNat

end

end A115148.P14176982095758386071

/-! ## A115148.P479937646900682640

`A271875(eq[10, A131818(n+1)])`
-/

namespace A115148.P479937646900682640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115148.P479937646900682640

/-! ## A115148.P13028869902310022580

`A271875(A000096(n+8)-(n-1))`
-/

namespace A115148.P13028869902310022580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A000096 (n + 8) - ((n : ℤ) - 1)).toNat

end

end A115148.P13028869902310022580

/-!
# A115149: Tenth convolution of A115140.

The programs for A115149, there is no canonical definition to state claims against.
-/

/-! ## A115149.P15502376429402462758

`A271875(A000217(n+9)+10)`
-/

namespace A115149.P15502376429402462758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A000217 (n + 9) + 10).toNat

end

end A115149.P15502376429402462758

/-! ## A115149.P733629102083884058

`A271875(A161680(n+10)+10)`
-/

namespace A115149.P733629102083884058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A161680 (n + 10) + 10).toNat

end

end A115149.P733629102083884058

/-! ## A115149.P15338961593862510913

`A271875(A052905(n+8)-A005843(n+3))`
-/

namespace A115149.P15338961593862510913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A052905 (n + 8) - A005843 (n + 3)).toNat

end

end A115149.P15338961593862510913

/-! ## A115149.P178149563500906481

`A271875(A046691(n+9)-A004273(n+4))`
-/

namespace A115149.P178149563500906481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A046691 (n + 9) - A004273 (n + 4)).toNat

end

end A115149.P178149563500906481

/-! ## A115149.P10083525698645869019

`A271875(A167499(n+6)+A005843(n+11))`
-/

namespace A115149.P10083525698645869019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A167499 (n + 6) + A005843 (n + 11)).toNat

end

end A115149.P10083525698645869019

/-! ## A115149.P5965424279877062724

`A271875(A000096(n+12)-A004767(n+8))`
-/

namespace A115149.P5965424279877062724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (A000096 (n + 12) - A004767 (n + 8)).toNat

end

end A115149.P5965424279877062724

/-!
# A115150: Third diagonal (M=3) sequence of triangle A113647, called Y(2,1).

The programs for A115150, the canonical program `A115150.P14078774331538153993` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115150 has offset 0).

The definition of A115150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115150.P14078774331538153993

`record[A115138(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A115150

/-- `record[A115138(n)]` -/
def P14078774331538153993.Spec : Prop :=
  ∀ n, P14078774331538153993.a n = A115150 n

theorem P14078774331538153993.correct : P14078774331538153993.Spec := by
  intro n
  simp only [A115150]

end A115150

/-! ## A115150.P2011811148743456924

`A115138(n+2)`
-/

namespace A115150.P2011811148743456924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115138 (n + 2)

end

end A115150.P2011811148743456924

namespace A115150

/-- `A115138(n+2)` -/
def P2011811148743456924.Spec : Prop :=
  ∀ n, P2011811148743456924.a n = A115150 n

end A115150

/-! ## A115150.P966965565299701790

`record[A115137(n)+A115137(n)-A062992(n)]`
-/

namespace A115150.P966965565299701790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115137 n + (A115137 n - A062992 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115150.P966965565299701790

namespace A115150

/-- `record[A115137(n)+A115137(n)-A062992(n)]` -/
def P966965565299701790.Spec : Prop :=
  ∀ n, P966965565299701790.a n = A115150 n

end A115150

/-! ## A115150.P870970449341380171

`record[A115137(n)+A115137(n)-A064062(n+1)]`
-/

namespace A115150.P870970449341380171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115137 n + (A115137 n - A064062 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115150.P870970449341380171

namespace A115150

/-- `record[A115137(n)+A115137(n)-A064062(n+1)]` -/
def P870970449341380171.Spec : Prop :=
  ∀ n, P870970449341380171.a n = A115150 n

end A115150

/-! ## A115150.P14724644646628607615

`record[2*A115137(n)-A062992(n)]`
-/

namespace A115150.P14724644646628607615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115137 n - A062992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115150.P14724644646628607615

namespace A115150

/-- `record[2*A115137(n)-A062992(n)]` -/
def P14724644646628607615.Spec : Prop :=
  ∀ n, P14724644646628607615.a n = A115150 n

end A115150

/-!
# A115151: Fourth diagonal (M=4) sequence of triangle A113647, called Y(2,1).

The programs for A115151, there is no canonical definition to state claims against.
-/

/-! ## A115151.P14646773810662218787

`A113647(∑[n+4]+2)`
-/

namespace A115151.P14646773810662218787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113647 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A115151.P14646773810662218787

/-!
# A115152: Fifth diagonal (M=5) sequence of triangle A113647, called Y(2,1).

The programs for A115152, there is no canonical definition to state claims against.
-/

/-! ## A115152.P18308607413232803115

`A115151(n+1)-2*A115150(n+1)`
-/

namespace A115152.P18308607413232803115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115151 (n + 1) - 2 * A115150 (n + 1)

end

end A115152.P18308607413232803115

/-!
# A115153: Sixth diagonal (M=6) sequence of triangle A113647, called Y(2,1).

The programs for A115153, there is no canonical definition to state claims against.
-/

/-! ## A115153.P6219104695619072425

`A115152(n+1)-2*A115151(n+1)`
-/

namespace A115153.P6219104695619072425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115152 (n + 1) - 2 * A115151 (n + 1)

end

end A115153.P6219104695619072425

/-!
# A115155: Expansion of (eta(q^3) * eta(q^5))^3 + (eta(q) * eta(q^15))^3 in powers of q.

The programs for A115155, there is no canonical definition to state claims against.
-/

/-! ## A115155.P4743407694592958787

`2*A030220(n+1)-A136549(n+1)`
-/

namespace A115155.P4743407694592958787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030220 (n + 1) - A136549 (n + 1)

end

end A115155.P4743407694592958787

/-! ## A115155.P8274728432292752338

`or(A030220(n+1), A136599(A254667(n+1)))`
-/

namespace A115155.P8274728432292752338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030220 (n + 1)) (A136599 (A254667 (n + 1)).toNat)

end

end A115155.P8274728432292752338

/-! ## A115155.P2484750024938570378

`A030220(n+1)-A030220(3*(n+1))/3`
-/

namespace A115155.P2484750024938570378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030220 (n + 1) : ℚ) - (A030220 (3 * (n + 1)) : ℚ) / 3

end

end A115155.P2484750024938570378

/-! ## A115155.P13807661175380231140

`or(-(A136599(3*(n+1))/3), A136599(A254667(n+1)))`
-/

namespace A115155.P13807661175380231140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (-((A136599 (3 * (n + 1)) : ℚ) / 3))) (A136599 (A254667 (n + 1)).toNat)

end

end A115155.P13807661175380231140

/-! ## A115155.P3567656266479100098

`or(A136599(A008706(n+1))/5, A136599(A254667(n+1)))`
-/

namespace A115155.P3567656266479100098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A136599 (A008706 (n + 1)).toNat : ℚ) / 5)) (A136599 (A254667 (n + 1)).toNat)

end

end A115155.P3567656266479100098

/-!
# A115156: Smallest number having exactly n ones in binary representation and also exactly n prime factors (counted with multiplicity).

The programs for A115156, there is no canonical definition to state claims against.
-/

/-! ## A115156.P13184807464167456766

`A126315((n+1)^n)+floor(3/acot(n))`
-/

namespace A115156.P13184807464167456766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126315 ((n + 1) ^ n) + ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A115156.P13184807464167456766

/-!
# A115159: Numbers that are not the sum of a triangular number, a square and a fourth power.

The programs for A115159, there is no canonical definition to state claims against.
-/

/-! ## A115159.P16173951624830525853

`A262959(A061497(n+2))`
-/

namespace A115159.P16173951624830525853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262959 (A061497 (n + 2)).toNat

end

end A115159.P16173951624830525853

/-! ## A115159.P12715038208896654132

`A262959(A077741(n+2))`
-/

namespace A115159.P12715038208896654132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262959 (A077741 (n + 2)).toNat

end

end A115159.P12715038208896654132

/-! ## A115159.P7802987025619808526

`A262959(A032555(n+2))`
-/

namespace A115159.P7802987025619808526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262959 (A032555 (n + 2)).toNat

end

end A115159.P7802987025619808526

/-! ## A115159.P8531007281168935007

`A262959(A032557(n+2))`
-/

namespace A115159.P8531007281168935007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262959 (A032557 (n + 2)).toNat

end

end A115159.P8531007281168935007

/-!
# A115162: Positive numbers that are not the sum of a triangular number, a square and a cube, all of them greater than or equal to 1.

The programs for A115162, there is no canonical definition to state claims against.
-/

/-! ## A115162.P13561858816771760149

`lt[n*A260411(n), n]`
-/

namespace A115162.P13561858816771760149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A260411 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A115162.P13561858816771760149

/-! ## A115162.P15597827854888939336

`lt[A260411(n+1), 1]+1`
-/

namespace A115162.P15597827854888939336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260411 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A115162.P15597827854888939336

/-! ## A115162.P16787561658582147120

`eq[A000007(n), A260411(n)]`
-/

namespace A115162.P16787561658582147120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260411 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115162.P16787561658582147120

/-! ## A115162.P4415912383221375900

`eq[A000038(n), A260411(n)]`
-/

namespace A115162.P4415912383221375900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260411 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115162.P4415912383221375900

/-! ## A115162.P12297415832543021069

`eq[A014034(n), A260411(n)]`
-/

namespace A115162.P12297415832543021069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260411 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115162.P12297415832543021069

/-!
# A115164: a(n) = 3*a(n-1) + 4*a(n-2), with a(0) = 3, a(1) = 7, a(3) = 9, for n > 2.

The programs for A115164, the canonical program `A115164.P3089304404252024683` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115164 has offset 0).

The definition of A115164 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+4*a(n-2)` (program `A115164.P3089304404252024683`, by `A115164.P3089304404252024683.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A115164.P3089304404252024683

`3*a(n-1)+4*a(n-2)` with `a(0)=3, a(1)=7, a(2)=9`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115164

/-- `3*a(n-1)+4*a(n-2)` -/
def P3089304404252024683.Spec : Prop :=
  ∀ n, (P3089304404252024683.a n : ℤ) = A115164 n

theorem P3089304404252024683.correct : P3089304404252024683.Spec := by
  intro n
  simp only [A115164]

end A115164

/-! ## A115164.P17852275816385027465

`A115113(n)+A165326(n)`
-/

namespace A115164.P17852275816385027465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115113 n + A165326 n

end

end A115164.P17852275816385027465

namespace A115164

/-- `A115113(n)+A165326(n)` -/
def P17852275816385027465.Spec : Prop :=
  ∀ n, P17852275816385027465.a n = A115164 n

end A115164

/-! ## A115164.P13879511358262264882

`abs(4-∑[(-4)^n])`
-/

namespace A115164.P13879511358262264882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A115164.P13879511358262264882

namespace A115164

/-- `abs(4-∑[(-4)^n])` -/
def P13879511358262264882.Spec : Prop :=
  ∀ n, P13879511358262264882.a n = A115164 n

end A115164

/-! ## A115164.P5941120400806453137

`4^n-a(n-1)` with `a(0)=3, a(1)=7`
-/

namespace A115164.P5941120400806453137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n a =>
  (4 ^ n : ℤ) - a (n - 1)

end

end A115164.P5941120400806453137

namespace A115164

/-- `4^n-a(n-1)` -/
def P5941120400806453137.Spec : Prop :=
  ∀ n, P5941120400806453137.a n = A115164 n

end A115164

/-! ## A115164.P5049841070891023684

`xor(A115113(n), A153284(n+1))`
-/

namespace A115164.P5049841070891023684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A115113 n) (A153284 (n + 1))

end

end A115164.P5049841070891023684

namespace A115164

/-- `xor(A115113(n), A153284(n+1))` -/
def P5049841070891023684.Spec : Prop :=
  ∀ n, P5049841070891023684.a n = A115164 n

end A115164

/-! ## A115164.P15812289788282685943

`xor(A007909(2*n+1), A040002(n))`
-/

namespace A115164.P15812289788282685943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007909 (2 * n + 1)) (A040002 n)

end

end A115164.P15812289788282685943

namespace A115164

/-- `xor(A007909(2*n+1), A040002(n))` -/
def P15812289788282685943.Spec : Prop :=
  ∀ n, P15812289788282685943.a n = A115164 n

end A115164

/-! ## A115164.P13102175758683553560

`gcd(4-A014985(n+1), A119522(n+4))`
-/

namespace A115164.P13102175758683553560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 - A014985 (n + 1)) (A119522 (n + 4))

end

end A115164.P13102175758683553560

namespace A115164

/-- `gcd(4-A014985(n+1), A119522(n+4))` -/
def P13102175758683553560.Spec : Prop :=
  ∀ n, (P13102175758683553560.a n : ℤ) = A115164 n

end A115164

/-!
# A115165: Odd numbers k such that k-1 and k+1 have the same number of distinct prime divisors.

The programs for A115165, the canonical program `A115165.P1467438550897619179` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115165 has offset 1).

The definition of A115165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115165.P6115016861273233083

`∩[2*n+1, A088070(n+1)]`
-/

namespace A115165.P6115016861273233083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115165.P6115016861273233083

namespace A115165

/-- `∩[2*n+1, A088070(n+1)]` -/
def P6115016861273233083.Spec : Prop :=
  ∀ n, (P6115016861273233083.a n : ℤ) = A115165 (n + 1)

end A115165

/-! ## A115165.P1467438550897619179

`A088070(eq[1, A088070(n+1)%2]+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A115165

/-- `A088070(eq[1, A088070(n+1)%2]+1)` -/
def P1467438550897619179.Spec : Prop :=
  ∀ n, P1467438550897619179.a n = A115165 (n + 1)

theorem P1467438550897619179.correct : P1467438550897619179.Spec := by
  intro n
  simp only [A115165, Nat.add_sub_cancel]

end A115165

/-! ## A115165.P4499665426674584682

`A088070(eq[2, gcd(2, A063464(n+1))]+1)`
-/

namespace A115165.P4499665426674584682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A063464 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A115165.P4499665426674584682

namespace A115165

/-- `A088070(eq[2, gcd(2, A063464(n+1))]+1)` -/
def P4499665426674584682.Spec : Prop :=
  ∀ n, P4499665426674584682.a n = A115165 (n + 1)

end A115165

/-! ## A115165.P5236425953227888616

`A088070(eq[0, val(A088070(n+1), 2)]+1)`
-/

namespace A115165.P5236425953227888616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A088070 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A115165.P5236425953227888616

namespace A115165

/-- `A088070(eq[0, val(A088070(n+1), 2)]+1)` -/
def P5236425953227888616.Spec : Prop :=
  ∀ n, P5236425953227888616.a n = A115165 (n + 1)

end A115165

/-! ## A115165.P4505275628360646637

`A088070(record[(n+1)*and(1, A088070(n+1))])`
-/

namespace A115165.P4505275628360646637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A088070 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A115165.P4505275628360646637

namespace A115165

/-- `A088070(record[(n+1)*and(1, A088070(n+1))])` -/
def P4505275628360646637.Spec : Prop :=
  ∀ n, P4505275628360646637.a n = A115165 (n + 1)

end A115165

/-! ## A115165.P16597412704320931839

`record[A093178(A088070(n+1))]`
-/

namespace A115165.P16597412704320931839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A088070 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115165.P16597412704320931839

namespace A115165

/-- `record[A093178(A088070(n+1))]` -/
def P16597412704320931839.Spec : Prop :=
  ∀ n, P16597412704320931839.a n = A115165 (n + 1)

end A115165

/-! ## A115165.P11649761940788930259

`∩[A088070(n+1), A004273(n)]`
-/

namespace A115165.P11649761940788930259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115165.P11649761940788930259

namespace A115165

/-- `∩[A088070(n+1), A004273(n)]` -/
def P11649761940788930259.Spec : Prop :=
  ∀ n, (P11649761940788930259.a n : ℤ) = A115165 (n + 1)

end A115165

/-! ## A115165.P13445118323707009215

`∩[A088070(n+1), A004274(n)]`
-/

namespace A115165.P13445118323707009215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115165.P13445118323707009215

namespace A115165

/-- `∩[A088070(n+1), A004274(n)]` -/
def P13445118323707009215.Spec : Prop :=
  ∀ n, (P13445118323707009215.a n : ℤ) = A115165 (n + 1)

end A115165

/-! ## A115165.P2070076042651018525

`∩[A088070(n+1), A060747(n)]`
-/

namespace A115165.P2070076042651018525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115165.P2070076042651018525

namespace A115165

/-- `∩[A088070(n+1), A060747(n)]` -/
def P2070076042651018525.Spec : Prop :=
  ∀ n, (P2070076042651018525.a n : ℤ) = A115165 (n + 1)

end A115165

/-! ## A115165.P7979948531079756929

`∩[A088070(n+1), A144396(n+1)]`
-/

namespace A115165.P7979948531079756929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115165.P7979948531079756929

namespace A115165

/-- `∩[A088070(n+1), A144396(n+1)]` -/
def P7979948531079756929.Spec : Prop :=
  ∀ n, (P7979948531079756929.a n : ℤ) = A115165 (n + 1)

end A115165

/-! ## A115165.P3071091954884058247

`filter[A088070(n+1), A000035(#)]`
-/

namespace A115165.P3071091954884058247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A115165.P3071091954884058247

namespace A115165

/-- `filter[A088070(n+1), A000035(#)]` -/
def P3071091954884058247.Spec : Prop :=
  ∀ n, P3071091954884058247.a n = A115165 (n + 1)

end A115165

/-! ## A115165.P2557915528686246516

`filter[A088070(n+1), A266070(#)]`
-/

namespace A115165.P2557915528686246516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A115165.P2557915528686246516

namespace A115165

/-- `filter[A088070(n+1), A266070(#)]` -/
def P2557915528686246516.Spec : Prop :=
  ∀ n, P2557915528686246516.a n = A115165 (n + 1)

end A115165

/-! ## A115165.P1708098237752813842

`filter[A088070(n+1), A266719(#)]`
-/

namespace A115165.P1708098237752813842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A115165.P1708098237752813842

namespace A115165

/-- `filter[A088070(n+1), A266719(#)]` -/
def P1708098237752813842.Spec : Prop :=
  ∀ n, P1708098237752813842.a n = A115165 (n + 1)

end A115165

/-! ## A115165.P4024896463273946668

`filter[A088070(n+1), A296066(#)]`
-/

namespace A115165.P4024896463273946668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A115165.P4024896463273946668

namespace A115165

/-- `filter[A088070(n+1), A296066(#)]` -/
def P4024896463273946668.Spec : Prop :=
  ∀ n, P4024896463273946668.a n = A115165 (n + 1)

end A115165

/-!
# A115166: Even numbers k such that k-2 and k+2 have the same number of distinct prime factors.

The programs for A115166, the canonical program `A115166.P634160909117266982` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115166 has offset 1).

The definition of A115166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115166.P634160909117266982

`2*A088070(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A115166

/-- `2*A088070(n+1)` -/
def P634160909117266982.Spec : Prop :=
  ∀ n, P634160909117266982.a n = A115166 (n + 1)

theorem P634160909117266982.correct : P634160909117266982.Spec := by
  intro n
  simp only [A115166, Nat.add_sub_cancel]

end A115166

/-! ## A115166.P8614393420479946753

`2*(A063464(n+1)+1)`
-/

namespace A115166.P8614393420479946753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A063464 (n + 1) + 1)

end

end A115166.P8614393420479946753

namespace A115166

/-- `2*(A063464(n+1)+1)` -/
def P8614393420479946753.Spec : Prop :=
  ∀ n, P8614393420479946753.a n = A115166 (n + 1)

end A115166

/-! ## A115166.P2429881338026906714

`A063464(n+1)+A088070(n+1)+1`
-/

namespace A115166.P2429881338026906714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063464 (n + 1) + (A088070 (n + 1) + 1)

end

end A115166.P2429881338026906714

namespace A115166

/-- `A063464(n+1)+A088070(n+1)+1` -/
def P2429881338026906714.Spec : Prop :=
  ∀ n, P2429881338026906714.a n = A115166 (n + 1)

theorem P2429881338026906714.correct : P2429881338026906714.Spec := by
  intro n
  simp only [A115166, Nat.add_sub_cancel, A115166.P2429881338026906714.a, A115166.P634160909117266982.a, A063464, A063464.P10174242227482092936.f1, A063464.P10174242227482092936.f2, A063464.P10174242227482092936.a, A088070, A088070.P18152770894034870490.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A115166

/-! ## A115166.P11630481754472396155

`A088070(∑[n+1]-∑[n])+A088070(n+1)`
-/

namespace A115166.P11630481754472396155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j) + A088070 (n + 1)

end

end A115166.P11630481754472396155

namespace A115166

/-- `A088070(∑[n+1]-∑[n])+A088070(n+1)` -/
def P11630481754472396155.Spec : Prop :=
  ∀ n, P11630481754472396155.a n = A115166 (n + 1)

end A115166

/-! ## A115166.P7222746372796637419

`A004277(A088070(n+1))`
-/

namespace A115166.P7222746372796637419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A088070 (n + 1)).toNat

end

end A115166.P7222746372796637419

namespace A115166

/-- `A004277(A088070(n+1))` -/
def P7222746372796637419.Spec : Prop :=
  ∀ n, P7222746372796637419.a n = A115166 (n + 1)

end A115166

/-! ## A115166.P9075007562031088127

`A103517(A063464(n+1))`
-/

namespace A115166.P9075007562031088127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A063464 (n + 1)).toNat

end

end A115166.P9075007562031088127

namespace A115166

/-- `A103517(A063464(n+1))` -/
def P9075007562031088127.Spec : Prop :=
  ∀ n, P9075007562031088127.a n = A115166 (n + 1)

end A115166

/-! ## A115166.P4453248224669468637

`A004280(A088070(n+1)+1)+1`
-/

namespace A115166.P4453248224669468637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A088070 (n + 1) + 1).toNat + 1

end

end A115166.P4453248224669468637

namespace A115166

/-- `A004280(A088070(n+1)+1)+1` -/
def P4453248224669468637.Spec : Prop :=
  ∀ n, P4453248224669468637.a n = A115166 (n + 1)

end A115166

/-! ## A115166.P13816742968857189742

`A144396(A088070(n+1)-1)+1`
-/

namespace A115166.P13816742968857189742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A088070 (n + 1) - 1).toNat + 1

end

end A115166.P13816742968857189742

namespace A115166

/-- `A144396(A088070(n+1)-1)+1` -/
def P13816742968857189742.Spec : Prop :=
  ∀ n, P13816742968857189742.a n = A115166 (n + 1)

end A115166

/-! ## A115166.P2559242235444898671

`A005818(A088070(n+1)-1)-1`
-/

namespace A115166.P2559242235444898671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (A088070 (n + 1) - 1).toNat - 1

end

end A115166.P2559242235444898671

namespace A115166

/-- `A005818(A088070(n+1)-1)-1` -/
def P2559242235444898671.Spec : Prop :=
  ∀ n, P2559242235444898671.a n = A115166 (n + 1)

end A115166

/-! ## A115166.P18144425272003121217

`A004274(A088070(n+1)+1)+1`
-/

namespace A115166.P18144425272003121217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A088070 (n + 1) + 1).toNat + 1

end

end A115166.P18144425272003121217

namespace A115166

/-- `A004274(A088070(n+1)+1)+1` -/
def P18144425272003121217.Spec : Prop :=
  ∀ n, P18144425272003121217.a n = A115166 (n + 1)

end A115166

/-! ## A115166.P13265171066442363673

`A060747(A088070(n+1)+1)-1`
-/

namespace A115166.P13265171066442363673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A088070 (n + 1) + 1).toNat - 1

end

end A115166.P13265171066442363673

namespace A115166

/-- `A060747(A088070(n+1)+1)-1` -/
def P13265171066442363673.Spec : Prop :=
  ∀ n, P13265171066442363673.a n = A115166 (n + 1)

end A115166

/-! ## A115166.P5435958231649767931

`A020725(A063464(n+1)+A063464(n+1)+1)`
-/

namespace A115166.P5435958231649767931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A063464 (n + 1) + (A063464 (n + 1) + 1)).toNat

end

end A115166.P5435958231649767931

namespace A115166

/-- `A020725(A063464(n+1)+A063464(n+1)+1)` -/
def P5435958231649767931.Spec : Prop :=
  ∀ n, P5435958231649767931.a n = A115166 (n + 1)

end A115166

/-!
# A115167: Odd numbers k such that k-1 and k+1 have the same number of prime divisors with multiplicity.

The programs for A115167, the canonical program `A115167.P14839111821241790743` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115167 has offset 1).

The definition of A115167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7027 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115167.P14959488240796447937

`2*A045920(n+1)+1`
-/

namespace A115167.P14959488240796447937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045920 (n + 1) + 1

end

end A115167.P14959488240796447937

namespace A115167

/-- `2*A045920(n+1)+1` -/
def P14959488240796447937.Spec : Prop :=
  ∀ n, P14959488240796447937.a n = A115167 (n + 1)

end A115167

/-! ## A115167.P17630376314931068505

`2*A278291(n+1)-1`
-/

namespace A115167.P17630376314931068505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A278291 (n + 1) - 1

end

end A115167.P17630376314931068505

namespace A115167

/-- `2*A278291(n+1)-1` -/
def P17630376314931068505.Spec : Prop :=
  ∀ n, P17630376314931068505.a n = A115167 (n + 1)

end A115167

/-! ## A115167.P7389262685920232028

`A278291(n+1)+A045920(n+1)`
-/

namespace A115167.P7389262685920232028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 1) + A045920 (n + 1)

end

end A115167.P7389262685920232028

namespace A115167

/-- `A278291(n+1)+A045920(n+1)` -/
def P7389262685920232028.Spec : Prop :=
  ∀ n, P7389262685920232028.a n = A115167 (n + 1)

end A115167

/-! ## A115167.P9719535343141480173

`A045920(A000027(n+1))+A045920(n+1)+1`
-/

namespace A115167.P9719535343141480173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (A000027 (n + 1)).toNat + (A045920 (n + 1) + 1)

end

end A115167.P9719535343141480173

namespace A115167

/-- `A045920(A000027(n+1))+A045920(n+1)+1` -/
def P9719535343141480173.Spec : Prop :=
  ∀ n, P9719535343141480173.a n = A115167 (n + 1)

end A115167

/-! ## A115167.P985433403678403035

`A278291(A000027(n+1))+A278291(n+1)-1`
-/

namespace A115167.P985433403678403035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (A000027 (n + 1)).toNat + (A278291 (n + 1) - 1)

end

end A115167.P985433403678403035

namespace A115167

/-- `A278291(A000027(n+1))+A278291(n+1)-1` -/
def P985433403678403035.Spec : Prop :=
  ∀ n, P985433403678403035.a n = A115167 (n + 1)

end A115167

/-! ## A115167.P5831637563598981933

`A045920(n+1)+A058933(A061142(n+1))+A045920(n+1)`
-/

namespace A115167.P5831637563598981933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1) + (A058933 (A061142 (n + 1)).toNat + A045920 (n + 1))

end

end A115167.P5831637563598981933

namespace A115167

/-- `A045920(n+1)+A058933(A061142(n+1))+A045920(n+1)` -/
def P5831637563598981933.Spec : Prop :=
  ∀ n, P5831637563598981933.a n = A115167 (n + 1)

end A115167

/-! ## A115167.P16635426114739663992

`A278291(n+1)+A278291(n+1)-A038712(A038712(n+1))`
-/

namespace A115167.P16635426114739663992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 1) + (A278291 (n + 1) - A038712 (A038712 (n + 1)).toNat)

end

end A115167.P16635426114739663992

namespace A115167

/-- `A278291(n+1)+A278291(n+1)-A038712(A038712(n+1))` -/
def P16635426114739663992.Spec : Prop :=
  ∀ n, P16635426114739663992.a n = A115167 (n + 1)

end A115167

/-! ## A115167.P14839111821241790743

`2*(eq[A001222(n+1), A001222(n+2)]+1)+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A115167

/-- `2*(eq[A001222(n+1), A001222(n+2)]+1)+1` -/
def P14839111821241790743.Spec : Prop :=
  ∀ n, (P14839111821241790743.a n : ℤ) = A115167 (n + 1)

theorem P14839111821241790743.correct : P14839111821241790743.Spec := by
  intro n
  simp only [A115167, Nat.add_sub_cancel]

end A115167

/-! ## A115167.P12696083897925496313

`A000265(A045920(n+1)+A045920(n+1)+1)`
-/

namespace A115167.P12696083897925496313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A045920 (n + 1) + (A045920 (n + 1) + 1)).toNat

end

end A115167.P12696083897925496313

namespace A115167

/-- `A000265(A045920(n+1)+A045920(n+1)+1)` -/
def P12696083897925496313.Spec : Prop :=
  ∀ n, P12696083897925496313.a n = A115167 (n + 1)

end A115167

/-! ## A115167.P15806219248608993329

`∩[2*n+1, A280382(n+1)]`
-/

namespace A115167.P15806219248608993329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115167.P15806219248608993329

namespace A115167

/-- `∩[2*n+1, A280382(n+1)]` -/
def P15806219248608993329.Spec : Prop :=
  ∀ n, (P15806219248608993329.a n : ℤ) = A115167 (n + 1)

end A115167

/-! ## A115167.P18080382728621395617

`filter[A280382(n+1), A324908(#)]`
-/

namespace A115167.P18080382728621395617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A115167.P18080382728621395617

namespace A115167

/-- `filter[A280382(n+1), A324908(#)]` -/
def P18080382728621395617.Spec : Prop :=
  ∀ n, P18080382728621395617.a n = A115167 (n + 1)

end A115167

/-! ## A115167.P758288420672863833

`A130773(A045920(n+1))`
-/

namespace A115167.P758288420672863833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A045920 (n + 1)).toNat

end

end A115167.P758288420672863833

namespace A115167

/-- `A130773(A045920(n+1))` -/
def P758288420672863833.Spec : Prop :=
  ∀ n, P758288420672863833.a n = A115167 (n + 1)

end A115167

/-! ## A115167.P16439884261166705959

`A004273(A278291(n+1))`
-/

namespace A115167.P16439884261166705959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A278291 (n + 1)).toNat

end

end A115167.P16439884261166705959

namespace A115167

/-- `A004273(A278291(n+1))` -/
def P16439884261166705959.Spec : Prop :=
  ∀ n, P16439884261166705959.a n = A115167 (n + 1)

end A115167

/-! ## A115167.P14535077311578870623

`∩[A280382(n+1), A004273(n)]`
-/

namespace A115167.P14535077311578870623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115167.P14535077311578870623

namespace A115167

/-- `∩[A280382(n+1), A004273(n)]` -/
def P14535077311578870623.Spec : Prop :=
  ∀ n, (P14535077311578870623.a n : ℤ) = A115167 (n + 1)

end A115167

/-! ## A115167.P5252461996359901496

`∩[A280382(n+1), A004274(n)]`
-/

namespace A115167.P5252461996359901496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115167.P5252461996359901496

namespace A115167

/-- `∩[A280382(n+1), A004274(n)]` -/
def P5252461996359901496.Spec : Prop :=
  ∀ n, (P5252461996359901496.a n : ℤ) = A115167 (n + 1)

end A115167

/-! ## A115167.P7949341645686250480

`∩[A280382(n+1), A060747(n)]`
-/

namespace A115167.P7949341645686250480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115167.P7949341645686250480

namespace A115167

/-- `∩[A280382(n+1), A060747(n)]` -/
def P7949341645686250480.Spec : Prop :=
  ∀ n, (P7949341645686250480.a n : ℤ) = A115167 (n + 1)

end A115167

/-! ## A115167.P8834791809694268846

`∩[A280382(n+1), A062545(n)]`
-/

namespace A115167.P8834791809694268846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115167.P8834791809694268846

namespace A115167

/-- `∩[A280382(n+1), A062545(n)]` -/
def P8834791809694268846.Spec : Prop :=
  ∀ n, (P8834791809694268846.a n : ℤ) = A115167 (n + 1)

end A115167

/-! ## A115167.P17446362365265633414

`∩[A280382(n+1), A130773(n)]`
-/

namespace A115167.P17446362365265633414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115167.P17446362365265633414

namespace A115167

/-- `∩[A280382(n+1), A130773(n)]` -/
def P17446362365265633414.Spec : Prop :=
  ∀ n, (P17446362365265633414.a n : ℤ) = A115167 (n + 1)

end A115167

/-! ## A115167.P14245628059830566662

`filter[A280382(n+1), A000035(#)]`
-/

namespace A115167.P14245628059830566662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A115167.P14245628059830566662

namespace A115167

/-- `filter[A280382(n+1), A000035(#)]` -/
def P14245628059830566662.Spec : Prop :=
  ∀ n, P14245628059830566662.a n = A115167 (n + 1)

end A115167

/-!
# A115168: Even numbers n such that n-2 and n+2 have the same number of prime divisors with multiplicity.

The programs for A115168, the canonical program `A115168.P15497853147863272993` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115168 has offset 1).

The definition of A115168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115168.P15497853147863272993

`2*A280382(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A115168

/-- `2*A280382(n+1)` -/
def P15497853147863272993.Spec : Prop :=
  ∀ n, P15497853147863272993.a n = A115168 (n + 1)

theorem P15497853147863272993.correct : P15497853147863272993.Spec := by
  intro n
  simp only [A115168, Nat.add_sub_cancel]

end A115168

/-! ## A115168.P7611382078276570422

`A280382(n+1)+A280382(Δ[n²]-n)`
-/

namespace A115168.P7611382078276570422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1) + A280382 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A115168.P7611382078276570422

namespace A115168

/-- `A280382(n+1)+A280382(Δ[n²]-n)` -/
def P7611382078276570422.Spec : Prop :=
  ∀ n, P7611382078276570422.a n = A115168 (n + 1)

end A115168

/-! ## A115168.P6114081564309096800

`A280382(n+1)+A280382(n+1)%A162292(n+1)`
-/

namespace A115168.P6114081564309096800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1) + Int.tmod (A280382 (n + 1)) (A162292 (n + 1))

end

end A115168.P6114081564309096800

namespace A115168

/-- `A280382(n+1)+A280382(n+1)%A162292(n+1)` -/
def P6114081564309096800.Spec : Prop :=
  ∀ n, P6114081564309096800.a n = A115168 (n + 1)

end A115168

/-! ## A115168.P5698821951455178925

`2*(eq[A001222(n+1), A001222(n+3)]+2)`
-/

namespace A115168.P5698821951455178925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A115168.P5698821951455178925

namespace A115168

/-- `2*(eq[A001222(n+1), A001222(n+3)]+2)` -/
def P5698821951455178925.Spec : Prop :=
  ∀ n, (P5698821951455178925.a n : ℤ) = A115168 (n + 1)

theorem P5698821951455178925.correct : P5698821951455178925.Spec := by
  intro n
  simp only [A115168, Nat.add_sub_cancel, A115168.P5698821951455178925.f1, A115168.P5698821951455178925.f2, A115168.P5698821951455178925.a, A115168.P15497853147863272993.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A280382, A280382.P9861939106869173717.f1, A280382.P9861939106869173717.f2, A280382.P9861939106869173717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A115168

/-! ## A115168.P6915931949120137616

`A280382(n+1)+eq[A001222(n+1), A001222(n+3)]+2`
-/

namespace A115168.P6915931949120137616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1) + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2 : ℤ)

end

end A115168.P6915931949120137616

namespace A115168

/-- `A280382(n+1)+eq[A001222(n+1), A001222(n+3)]+2` -/
def P6915931949120137616.Spec : Prop :=
  ∀ n, P6915931949120137616.a n = A115168 (n + 1)

theorem P6915931949120137616.correct : P6915931949120137616.Spec := by
  intro n
  simp only [A115168, Nat.add_sub_cancel, A115168.P6915931949120137616.f1, A115168.P6915931949120137616.f2, A115168.P6915931949120137616.a, A115168.P15497853147863272993.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A280382, A280382.P9861939106869173717.f1, A280382.P9861939106869173717.f2, A280382.P9861939106869173717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A115168

/-! ## A115168.P16176038600801984889

`∩[2*n, A371656(n+1)]`
-/

namespace A115168.P16176038600801984889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115168.P16176038600801984889

namespace A115168

/-- `∩[2*n, A371656(n+1)]` -/
def P16176038600801984889.Spec : Prop :=
  ∀ n, (P16176038600801984889.a n : ℤ) = A115168 (n + 1)

end A115168

/-! ## A115168.P8816117552672436351

`2*(eq[A069904(n+2), A069904(n+1)]+2)`
-/

namespace A115168.P8816117552672436351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A115168.P8816117552672436351

namespace A115168

/-- `2*(eq[A069904(n+2), A069904(n+1)]+2)` -/
def P8816117552672436351.Spec : Prop :=
  ∀ n, (P8816117552672436351.a n : ℤ) = A115168 (n + 1)

end A115168

/-! ## A115168.P16427516363365627951

`∩[A371656(n+1), A020739(n)]`
-/

namespace A115168.P16427516363365627951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115168.P16427516363365627951

namespace A115168

/-- `∩[A371656(n+1), A020739(n)]` -/
def P16427516363365627951.Spec : Prop :=
  ∀ n, (P16427516363365627951.a n : ℤ) = A115168 (n + 1)

end A115168

/-! ## A115168.P5328442413923351877

`∩[A371656(n+1), A020744(n)]`
-/

namespace A115168.P5328442413923351877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115168.P5328442413923351877

namespace A115168

/-- `∩[A371656(n+1), A020744(n)]` -/
def P5328442413923351877.Spec : Prop :=
  ∀ n, (P5328442413923351877.a n : ℤ) = A115168 (n + 1)

end A115168

/-! ## A115168.P5206185128375883911

`A004277(A280382(n+1))`
-/

namespace A115168.P5206185128375883911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A280382 (n + 1)).toNat

end

end A115168.P5206185128375883911

namespace A115168

/-- `A004277(A280382(n+1))` -/
def P5206185128375883911.Spec : Prop :=
  ∀ n, P5206185128375883911.a n = A115168 (n + 1)

end A115168

/-! ## A115168.P17861225102788925459

`A004275(A280382(n+1)+1)`
-/

namespace A115168.P17861225102788925459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A280382 (n + 1) + 1).toNat

end

end A115168.P17861225102788925459

namespace A115168

/-- `A004275(A280382(n+1)+1)` -/
def P17861225102788925459.Spec : Prop :=
  ∀ n, P17861225102788925459.a n = A115168 (n + 1)

end A115168

/-! ## A115168.P6737970913170734752

`A004271(A280382(n+1)+2)`
-/

namespace A115168.P6737970913170734752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (A280382 (n + 1) + 2).toNat

end

end A115168.P6737970913170734752

namespace A115168

/-- `A004271(A280382(n+1)+2)` -/
def P6737970913170734752.Spec : Prop :=
  ∀ n, P6737970913170734752.a n = A115168 (n + 1)

end A115168

/-! ## A115168.P10969808860473641254

`∩[A371656(n+1), A004271(n)]`
-/

namespace A115168.P10969808860473641254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115168.P10969808860473641254

namespace A115168

/-- `∩[A371656(n+1), A004271(n)]` -/
def P10969808860473641254.Spec : Prop :=
  ∀ n, (P10969808860473641254.a n : ℤ) = A115168 (n + 1)

end A115168

/-! ## A115168.P4284283283093388156

`∩[A371656(n+1), A004275(n)]`
-/

namespace A115168.P4284283283093388156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115168.P4284283283093388156

namespace A115168

/-- `∩[A371656(n+1), A004275(n)]` -/
def P4284283283093388156.Spec : Prop :=
  ∀ n, (P4284283283093388156.a n : ℤ) = A115168 (n + 1)

end A115168

/-! ## A115168.P2506463976832293159

`∩[A371656(n+1), A004277(n)]`
-/

namespace A115168.P2506463976832293159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115168.P2506463976832293159

namespace A115168

/-- `∩[A371656(n+1), A004277(n)]` -/
def P2506463976832293159.Spec : Prop :=
  ∀ n, (P2506463976832293159.a n : ℤ) = A115168 (n + 1)

end A115168

/-! ## A115168.P6345717448622818663

`∩[A371656(n+1), A005843(n)]`
-/

namespace A115168.P6345717448622818663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115168.P6345717448622818663

namespace A115168

/-- `∩[A371656(n+1), A005843(n)]` -/
def P6345717448622818663.Spec : Prop :=
  ∀ n, (P6345717448622818663.a n : ℤ) = A115168 (n + 1)

end A115168

/-! ## A115168.P18431906145518629295

`∩[A371656(n+1), A103517(n)]`
-/

namespace A115168.P18431906145518629295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115168.P18431906145518629295

namespace A115168

/-- `∩[A371656(n+1), A103517(n)]` -/
def P18431906145518629295.Spec : Prop :=
  ∀ n, (P18431906145518629295.a n : ℤ) = A115168 (n + 1)

end A115168

/-! ## A115168.P428572874293371973

`A004274(A280382(n+1)+1)+1`
-/

namespace A115168.P428572874293371973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A280382 (n + 1) + 1).toNat + 1

end

end A115168.P428572874293371973

namespace A115168

/-- `A004274(A280382(n+1)+1)+1` -/
def P428572874293371973.Spec : Prop :=
  ∀ n, P428572874293371973.a n = A115168 (n + 1)

end A115168

/-! ## A115168.P1634727372509668689

`A004273(A280382(n+1)+1)-1`
-/

namespace A115168.P1634727372509668689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A280382 (n + 1) + 1).toNat - 1

end

end A115168.P1634727372509668689

namespace A115168

/-- `A004273(A280382(n+1)+1)-1` -/
def P1634727372509668689.Spec : Prop :=
  ∀ n, P1634727372509668689.a n = A115168 (n + 1)

end A115168

/-! ## A115168.P3959760186990917829

`A060747(A280382(n+1)+1)-1`
-/

namespace A115168.P3959760186990917829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A280382 (n + 1) + 1).toNat - 1

end

end A115168.P3959760186990917829

namespace A115168

/-- `A060747(A280382(n+1)+1)-1` -/
def P3959760186990917829.Spec : Prop :=
  ∀ n, P3959760186990917829.a n = A115168 (n + 1)

end A115168

/-!
# A115169: Integers b > 0 for which there exists a positive integer a <= b such that (a^2 + b^2) / (1 + a*b) is an integer.

The programs for A115169, there is no canonical definition to state claims against.
-/

/-! ## A115169.P8786642319429909337

`A335127(or(A000384(n), A024916(n+1)))`
-/

namespace A115169.P8786642319429909337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335127 (Int.lor (A000384 n) (A024916 (n + 1))).toNat

end

end A115169.P8786642319429909337

/-! ## A115169.P7325457868242159961

`∪[A052045(n+1), A102823(A052045(n+1))]`
-/

namespace A115169.P7325457868242159961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102823 (A052045 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115169.P7325457868242159961

/-!
# A115178: Expansion of c(x^2+x^3), c(x) the g.f. of A000108.

The programs for A115178, there is no canonical definition to state claims against.
-/

/-! ## A115178.P16151410890668442078

`abs(1-A349015(n+1))`
-/

namespace A115178.P16151410890668442078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A349015 (n + 1)|

end

end A115178.P16151410890668442078

/-! ## A115178.P12397006831980375298

`A007477(n)-a(n-1)` with `a(0)=1`
-/

namespace A115178.P12397006831980375298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007477 n - a (n - 1)

end

end A115178.P12397006831980375298

/-! ## A115178.P8457196537305131568

`abs(∑[A007477(n)*A033999(n)])`
-/

namespace A115178.P8457196537305131568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007477 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A115178.P8457196537305131568

/-! ## A115178.P14184741092433316270

`∑[A007477(n)*A033999(n)]*A033999(n+2)`
-/

namespace A115178.P14184741092433316270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007477 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (n + 2)

end

end A115178.P14184741092433316270

/-! ## A115178.P14273053811820847578

`∑[A007477(n)*A033999(n)]*A009001(2*n)`
-/

namespace A115178.P14273053811820847578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007477 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009001 (2 * n)

end

end A115178.P14273053811820847578

/-! ## A115178.P16809461839990235569

`(1-2*A000035(n))*∑[A007477(n)*A033999(n)]`
-/

namespace A115178.P16809461839990235569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007477 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115178.P16809461839990235569

/-!
# A115179: Expansion of c(x*y*(1-x)), c(x) the g.f. of A000108.

The programs for A115179, the canonical program `A115179.P15795559577367493968` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115179 has offset 0).

The definition of A115179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115179.P15795559577367493968

`(-1)^(row(n)-col(n))*C(col(n), row(n)-col(n))*A000108(col(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A115179

/-- `(-1)^(row(n)-col(n))*C(col(n), row(n)-col(n))*A000108(col(n))` -/
def P15795559577367493968.Spec : Prop :=
  ∀ n, P15795559577367493968.a n = (A115179 n : ℚ)

end A115179

/-! ## A115179.P3678560820478291844

`A097807(n)*A117434(n)`
-/

namespace A115179.P3678560820478291844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A117434 n

end

end A115179.P3678560820478291844

namespace A115179

/-- `A097807(n)*A117434(n)` -/
def P3678560820478291844.Spec : Prop :=
  ∀ n, P3678560820478291844.a n = A115179 n

end A115179

/-! ## A115179.P16363334453555053672

`A117434(n)*A128257(n)`
-/

namespace A115179.P16363334453555053672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117434 n * A128257 n

end

end A115179.P16363334453555053672

namespace A115179

/-- `A117434(n)*A128257(n)` -/
def P16363334453555053672.Spec : Prop :=
  ∀ n, P16363334453555053672.a n = A115179 n

end A115179

/-! ## A115179.P9151701449050559369

`A117434(n)*A187034(n)`
-/

namespace A115179.P9151701449050559369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117434 n * A187034 n

end

end A115179.P9151701449050559369

namespace A115179

/-- `A117434(n)*A187034(n)` -/
def P9151701449050559369.Spec : Prop :=
  ∀ n, P9151701449050559369.a n = A115179 n

end A115179

/-! ## A115179.P7096632811839628806

`A115951(n)/A140756(n+1)`
-/

namespace A115179.P7096632811839628806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115951 n : ℚ) / (A140756 (n + 1) : ℚ)

end

end A115179.P7096632811839628806

namespace A115179

/-- `A115951(n)/A140756(n+1)` -/
def P7096632811839628806.Spec : Prop :=
  ∀ n, P7096632811839628806.a n = (A115179 n : ℚ)

end A115179

/-! ## A115179.P9847563319288302022

`A033999(A004197(n))*A117434(n)`
-/

namespace A115179.P9847563319288302022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A004197 n).toNat * A117434 n

end

end A115179.P9847563319288302022

namespace A115179

/-- `A033999(A004197(n))*A117434(n)` -/
def P9847563319288302022.Spec : Prop :=
  ∀ n, P9847563319288302022.a n = A115179 n

end A115179

/-! ## A115179.P8786532529412825779

`A033999(A025581(n))*A117434(n)`
-/

namespace A115179.P8786532529412825779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A117434 n

end

end A115179.P8786532529412825779

namespace A115179

/-- `A033999(A025581(n))*A117434(n)` -/
def P8786532529412825779.Spec : Prop :=
  ∀ n, P8786532529412825779.a n = A115179 n

end A115179

/-! ## A115179.P499005231159158398

`A033999(A051162(n))*A117434(n)`
-/

namespace A115179.P499005231159158398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A117434 n

end

end A115179.P499005231159158398

namespace A115179

/-- `A033999(A051162(n))*A117434(n)` -/
def P499005231159158398.Spec : Prop :=
  ∀ n, P499005231159158398.a n = A115179 n

end A115179

/-! ## A115179.P8265866341814215348

`A117434(n)*A117569(A099375(n))`
-/

namespace A115179.P8265866341814215348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117434 n * A117569 (A099375 n).toNat

end

end A115179.P8265866341814215348

namespace A115179

/-- `A117434(n)*A117569(A099375(n))` -/
def P8265866341814215348.Spec : Prop :=
  ∀ n, P8265866341814215348.a n = A115179 n

end A115179

/-! ## A115179.P6038126076545682677

`A117434(n)/A033999(A004197(n)²)`
-/

namespace A115179.P6038126076545682677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117434 n : ℚ) / (A033999 (A004197 n ^ 2).toNat : ℚ)

end

end A115179.P6038126076545682677

namespace A115179

/-- `A117434(n)/A033999(A004197(n)²)` -/
def P6038126076545682677.Spec : Prop :=
  ∀ n, P6038126076545682677.a n = (A115179 n : ℚ)

end A115179

/-! ## A115179.P13989812462936904235

`A062157(A004736(n+1))*A117434(n)`
-/

namespace A115179.P13989812462936904235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A117434 n

end

end A115179.P13989812462936904235

namespace A115179

/-- `A062157(A004736(n+1))*A117434(n)` -/
def P13989812462936904235.Spec : Prop :=
  ∀ n, P13989812462936904235.a n = A115179 n

end A115179

/-! ## A115179.P6740507990901065486

`A117434(n)*A117569(A210535(n+1))`
-/

namespace A115179.P6740507990901065486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117434 n * A117569 (A210535 (n + 1)).toNat

end

end A115179.P6740507990901065486

namespace A115179

/-- `A117434(n)*A117569(A210535(n+1))` -/
def P6740507990901065486.Spec : Prop :=
  ∀ n, P6740507990901065486.a n = A115179 n

end A115179

/-! ## A115179.P13245908608680426097

`A098474(n)/A007318(n)*A109466(n)`
-/

namespace A115179.P13245908608680426097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098474 n : ℚ) / (A007318 n : ℚ) * (A109466 n : ℚ)

end

end A115179.P13245908608680426097

namespace A115179

/-- `A098474(n)/A007318(n)*A109466(n)` -/
def P13245908608680426097.Spec : Prop :=
  ∀ n, P13245908608680426097.a n = (A115179 n : ℚ)

end A115179

/-! ## A115179.P13998674190265470713

`A004718(A052509(n))*A117434(n)`
-/

namespace A115179.P13998674190265470713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A052509 n).toNat * A117434 n

end

end A115179.P13998674190265470713

namespace A115179

/-- `A004718(A052509(n))*A117434(n)` -/
def P13998674190265470713.Spec : Prop :=
  ∀ n, P13998674190265470713.a n = A115179 n

end A115179

/-! ## A115179.P12246538208201991151

`A114116(n)*A117434(n)`
-/

namespace A115179.P12246538208201991151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114116 n * A117434 n

end

end A115179.P12246538208201991151

namespace A115179

/-- `A114116(n)*A117434(n)` -/
def P12246538208201991151.Spec : Prop :=
  ∀ n, P12246538208201991151.a n = A115179 n

end A115179

/-! ## A115179.P4960969812078929639

`A117434(n)/or(A114116(n), A178334(n))`
-/

namespace A115179.P4960969812078929639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117434 n : ℚ) / (Int.lor (A114116 n) (A178334 n) : ℚ)

end

end A115179.P4960969812078929639

namespace A115179

/-- `A117434(n)/or(A114116(n), A178334(n))` -/
def P4960969812078929639.Spec : Prop :=
  ∀ n, P4960969812078929639.a n = (A115179 n : ℚ)

end A115179

/-!
# A115180: Beatty sequence for (Champernowne constant)*10 = 1.234567891011121314....

The programs for A115180, there is no canonical definition to state claims against.
-/

/-! ## A115180.P14239193831435247245

`comp[floor(21*n/4)]`
-/

namespace A115180.P14239193831435247245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊21 * ((n : ℚ) / 4)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A115180.P14239193831435247245

/-! ## A115180.P13066013698202120869

`floor((n+1)*sqrt(atan(22)))`
-/

namespace A115180.P13066013698202120869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (Real.arctan (22 : ℝ))⌋

end

end A115180.P13066013698202120869

/-! ## A115180.P4322418874921396944

`floor((n+1)/cos(57)²)`
-/

namespace A115180.P4322418874921396944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.cos (57 : ℝ) ^ 2⌋

end

end A115180.P4322418874921396944

/-! ## A115180.P6128618804201466613

`floor((n+1)*(2-cos(37)))`
-/

namespace A115180.P6128618804201466613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (2 - Real.cos (37 : ℝ))⌋

end

end A115180.P6128618804201466613

/-! ## A115180.P5043483086851673697

`floor(2*(n+1)/tan(45))`
-/

namespace A115180.P5043483086851673697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (n + 1) : ℝ) / Real.tan (45 : ℝ)⌋

end

end A115180.P5043483086851673697

/-! ## A115180.P16621181843601691858

`floor((n+1)/2^sin(60))`
-/

namespace A115180.P16621181843601691858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (2 : ℝ) ^ (Real.sin (60 : ℝ))⌋

end

end A115180.P16621181843601691858

/-! ## A115180.P16664005278341496398

`ceil((cos(5)+2*n)/ϕ)`
-/

namespace A115180.P16664005278341496398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.cos (5 : ℝ) + (2 * n : ℝ)) / Real.goldenRatio⌉

end

end A115180.P16664005278341496398

/-! ## A115180.P12659609472750138314

`ceil((2*n-sin(6))/ϕ)`
-/

namespace A115180.P12659609472750138314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℝ) - Real.sin (6 : ℝ)) / Real.goldenRatio⌉

end

end A115180.P12659609472750138314

/-! ## A115180.P12749541970301489949

`ceil((2*n-tan(6))/ϕ)`
-/

namespace A115180.P12749541970301489949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℝ) - Real.tan (6 : ℝ)) / Real.goldenRatio⌉

end

end A115180.P12749541970301489949

/-! ## A115180.P2057695066584052879

`ceil((2*n-cot(5))/ϕ)`
-/

namespace A115180.P2057695066584052879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℝ) - Real.cot (5 : ℝ)) / Real.goldenRatio⌉

end

end A115180.P2057695066584052879

/-!
# A115181: Beatty sequence for (Cc/(Cc-1)) with Cc = 1.234567891011121314... = 10*(Champernowne constant).

The programs for A115181, there is no canonical definition to state claims against.
-/

/-! ## A115181.P16410328439756802017

`floor((n+1)*200/38)`
-/

namespace A115181.P16410328439756802017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) * 200 : ℚ) / 38⌋

end

end A115181.P16410328439756802017

/-! ## A115181.P5050270989261511840

`A110303(5*n+6)-1`
-/

namespace A115181.P5050270989261511840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110303 (5 * n + 6) - 1

end

end A115181.P5050270989261511840

/-! ## A115181.P6184331050953613914

`12*n+11-A226190(12*n+11)`
-/

namespace A115181.P6184331050953613914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 11 : ℤ) - A226190 (12 * n + 11)

end

end A115181.P6184331050953613914

/-! ## A115181.P6220703940972854295

`A017653(n)%A226190(A017653(n))`
-/

namespace A115181.P6220703940972854295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A226190 (A017653 n).toNat)

end

end A115181.P6220703940972854295

/-! ## A115181.P7490217721122018488

`A110514(A016813(n))+A110303(5*n+6)`
-/

namespace A115181.P7490217721122018488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A016813 n).toNat + A110303 (5 * n + 6)

end

end A115181.P7490217721122018488

/-! ## A115181.P6327751263854785556

`A257098(A020483(n))+A110303(5*n+6)`
-/

namespace A115181.P6327751263854785556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257098 (A020483 n).toNat + A110303 (5 * n + 6)

end

end A115181.P6327751263854785556

/-! ## A115181.P17028725506242821340

`A260460(A057979(2*n))+A110303(5*n+6)`
-/

namespace A115181.P17028725506242821340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260460 (A057979 (2 * n)).toNat + A110303 (5 * n + 6)

end

end A115181.P17028725506242821340

/-! ## A115181.P5041153346764827035

`record[A115182(n+1)]`
-/

namespace A115181.P5041153346764827035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115181.P5041153346764827035

/-! ## A115181.P9679482693637801550

`A115182(floor((n+1)*(2-cos(37))))`
-/

namespace A115181.P9679482693637801550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115182 ⌊(n + 1 : ℝ) * (2 - Real.cos (37 : ℝ))⌋.toNat

end

end A115181.P9679482693637801550

/-! ## A115181.P1990341541017595273

`A115182(floor((n+1)/2^sin(60)))`
-/

namespace A115181.P1990341541017595273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115182 ⌊(n + 1 : ℝ) / (2 : ℝ) ^ (Real.sin (60 : ℝ))⌋.toNat

end

end A115181.P1990341541017595273

/-!
# A115183: Numerator of coefficient of x^(2n-1) in series of 3*sin(x)/(2+cos(x)).

The programs for A115183, there is no canonical definition to state claims against.
-/

/-! ## A115183.P3852304799322551617

`A158303(floor(2^(n-1)))-comp[2*(n+1)]`
-/

namespace A115183.P3852304799322551617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158303 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A115183.P3852304799322551617

/-! ## A115183.P8136736233680851226

`A261553(A055998(a(n-1)-1)+8)` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=-1, a(4)=-1, a(5)=1`
-/

namespace A115183.P8136736233680851226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1, -1, -1, 1] fun n a =>
  A261553 (A055998 (a (n - 1) - 1).toNat + 8).toNat

end

end A115183.P8136736233680851226

/-!
# A115184: Denominator of coefficient of x^(2n-1) in series of 3*sin(x)/(2+cos(x)).

The programs for A115184, there is no canonical definition to state claims against.
-/

/-! ## A115184.P8504775066453783129

`∏{p}[A279215(n)^3+1, #-1]`
-/

namespace A115184.P8504775066453783129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279215 n ^ 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A115184.P8504775066453783129

/-!
# A115185: Minimum number of moves to solve a variant of the first Panex puzzle of order n of transferring a side tower to the center column.

The programs for A115185, there is no canonical definition to state claims against.
-/

/-! ## A115185.P4667931220642749723

`A109175(n+1)-A000035(A240707(n+1)+1)`
-/

namespace A115185.P4667931220642749723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109175 (n + 1) - A000035 (A240707 (n + 1) + 1).toNat

end

end A115185.P4667931220642749723

/-! ## A115185.P8937479919417958110

`or(A109175(n+1)-A000035(n), A185284(2*n+1))`
-/

namespace A115185.P8937479919417958110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A109175 (n + 1) - A000035 n) (A185284 (2 * n + 1))

end

end A115185.P8937479919417958110

/-! ## A115185.P10598791418594363625

`A109175(n+1)-(A000035(n)+A000007(A052952(n)))`
-/

namespace A115185.P10598791418594363625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109175 (n + 1) - (A000035 n + A000007 (A052952 n).toNat)

end

end A115185.P10598791418594363625

/-! ## A115185.P13872148576652649626

`A109175(n+1)-A000035(A007588(n*A000035(n)))`
-/

namespace A115185.P13872148576652649626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109175 (n + 1) - A000035 (A007588 ((n : ℤ) * A000035 n).toNat).toNat

end

end A115185.P13872148576652649626

/-! ## A115185.P8807062942784778178

`A109175(n+1)-A000035(A007588(n))`
-/

namespace A115185.P8807062942784778178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109175 (n + 1) - A000035 (A007588 n).toNat

end

end A115185.P8807062942784778178

/-!
# A115186: Smallest number m such that m and m+1 have exactly n prime factors (counted with multiplicity).

The programs for A115186, there is no canonical definition to state claims against.
-/

/-! ## A115186.P5017991640140935220

`floor(A154704(n+2)/2)`
-/

namespace A115186.P5017991640140935220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A154704 (n + 2) : ℚ) / 2⌋

end

end A115186.P5017991640140935220

/-! ## A115186.P12291513444926005402

`A278294(n+1)-1`
-/

namespace A115186.P12291513444926005402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278294 (n + 1) - 1

end

end A115186.P12291513444926005402

/-! ## A115186.P2861955442291603343

`A325142(A178334(n))+A278294(n+1)`
-/

namespace A115186.P2861955442291603343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A178334 n).toNat + A278294 (n + 1)

end

end A115186.P2861955442291603343

/-! ## A115186.P8272927212099460549

`abs(A278294(n+1)+A008683(A007918(n)))`
-/

namespace A115186.P8272927212099460549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A278294 (n + 1) + A008683 (A007918 n).toNat|

end

end A115186.P8272927212099460549

/-! ## A115186.P3750896766239065692

`A325142(A034495(n+1))+A278294(n+1)`
-/

namespace A115186.P3750896766239065692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A034495 (n + 1)).toNat + A278294 (n + 1)

end

end A115186.P3750896766239065692

/-!
# A115187: Row sums of triangle A115154 (called Y(3,1)).

The programs for A115187, there is no canonical definition to state claims against.
-/

/-! ## A115187.P16904511495197979915

`ceil(A115188(n)/3)`
-/

namespace A115187.P16904511495197979915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A115188 n : ℚ) / 3⌉

end

end A115187.P16904511495197979915

/-! ## A115187.P14861975910823295401

`∑[A116862(n)-Δ[A064063(n)]]`
-/

namespace A115187.P14861975910823295401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064063 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116862 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115187.P14861975910823295401

/-! ## A115187.P4007637361392141625

`ceil(A115154(∑[n+2]-1)/3)`
-/

namespace A115187.P4007637361392141625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A115154 (∑ j ∈ Finset.range (n + 1), f1 j - 1) : ℚ) / 3⌉

end

end A115187.P4007637361392141625

/-!
# A115188: Second diagonal (M=2) of triangle A115154 (called Y(3,1)).

The programs for A115188, there is no canonical definition to state claims against.
-/

/-! ## A115188.P7135130817028490646

`3*A115187(n)-2`
-/

namespace A115188.P7135130817028490646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A115187 n - 2

end

end A115188.P7135130817028490646

/-! ## A115188.P15185459327924384843

`A007427(A000040(n+1))+3*A115187(n)`
-/

namespace A115188.P15185459327924384843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A000040 (n + 1)).toNat + 3 * A115187 n

end

end A115188.P15185459327924384843

/-! ## A115188.P10971590309235992149

`A115154(∑[n+2]-1)`
-/

namespace A115188.P10971590309235992149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115154 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A115188.P10971590309235992149

/-!
# A115189: Third diagonal (M=3) of triangle A115154 (called Y(3,1)).

The programs for A115189, there is no canonical definition to state claims against.
-/

/-! ## A115189.P16500149231495540508

`A115154(∑[n+3])`
-/

namespace A115189.P16500149231495540508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115154 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115189.P16500149231495540508

/-! ## A115189.P12993519513396068699

`A115154(A141214(n))+char[7]`
-/

namespace A115189.P12993519513396068699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115154 (A141214 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A115189.P12993519513396068699

/-! ## A115189.P13894792853918249623

`record[A115154(n)/A199577(n+2)]`
-/

namespace A115189.P13894792853918249623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115154 n : ℚ) / (A199577 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115189.P13894792853918249623

/-!
# A115190: Fourth diagonal (M=4) of triangle A115154 (called Y(3,1)).

The programs for A115190, there is no canonical definition to state claims against.
-/

/-! ## A115190.P12861134917584241078

`A115154(∑[n+4]+2)`
-/

namespace A115190.P12861134917584241078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115154 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A115190.P12861134917584241078

/-!
# A115191: Fifth diagonal (M=5) of triangle A115154 (called Y(3,1)).

The programs for A115191, there is no canonical definition to state claims against.
-/

/-! ## A115191.P18049539986667371796

`A115154(A052905(n+2))`
-/

namespace A115191.P18049539986667371796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115154 (A052905 (n + 2)).toNat

end

end A115191.P18049539986667371796

/-!
# A115193: Generalized Catalan triangle of Riordan type, called C(1,2).

The programs for A115193, there is no canonical definition to state claims against.
-/

/-! ## A115193.P11469727676379701373

`A133116(A136158(n)+5)`
-/

namespace A115193.P11469727676379701373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133116 (A136158 n + 5).toNat

end

end A115193.P11469727676379701373

/-! ## A115193.P7315950219277946957

`A026569(A348840(n+2))%A348852(n+1)`
-/

namespace A115193.P7315950219277946957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026569 (A348840 (n + 2)).toNat) (A348852 (n + 1))

end

end A115193.P7315950219277946957

/-!
# A115194: A sequence related to A000108 (Catalan numbers).

The programs for A115194, the canonical program `A115194.P5467570277448193639` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115194 has offset 0).

The definition of A115194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115194.P11308902855094561788

`A115193(A167614(n+2))`
-/

namespace A115194.P11308902855094561788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (A167614 (n + 2)).toNat

end

end A115194.P11308902855094561788

namespace A115194

/-- `A115193(A167614(n+2))` -/
def P11308902855094561788.Spec : Prop :=
  ∀ n, P11308902855094561788.a n = A115194 n

end A115194

/-! ## A115194.P11123408346218442391

`A115193(A052905(n)+8)`
-/

namespace A115194.P11123408346218442391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (A052905 n + 8).toNat

end

end A115194.P11123408346218442391

namespace A115194

/-- `A115193(A052905(n)+8)` -/
def P11123408346218442391.Spec : Prop :=
  ∀ n, P11123408346218442391.a n = A115194 n

end A115194

/-! ## A115194.P13802558736591520544

`A115193(A055999(n)+9)`
-/

namespace A115194.P13802558736591520544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (A055999 n + 9).toNat

end

end A115194.P13802558736591520544

namespace A115194

/-- `A115193(A055999(n)+9)` -/
def P13802558736591520544.Spec : Prop :=
  ∀ n, P13802558736591520544.a n = A115194 n

end A115194

/-! ## A115194.P5288273865692542216

`A115193(eq[3, A002262(n)])`
-/

namespace A115194.P5288273865692542216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115194.P5288273865692542216

namespace A115194

/-- `A115193(eq[3, A002262(n)])` -/
def P5288273865692542216.Spec : Prop :=
  ∀ n, P5288273865692542216.a n = A115194 n

end A115194

/-! ## A115194.P15411369715252172701

`A115193(A166136(n+2)-3)`
-/

namespace A115194.P15411369715252172701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (A166136 (n + 2) - 3).toNat

end

end A115194.P15411369715252172701

namespace A115194

/-- `A115193(A166136(n+2)-3)` -/
def P15411369715252172701.Spec : Prop :=
  ∀ n, P15411369715252172701.a n = A115194 n

end A115194

/-! ## A115194.P12634223825558662118

`A115193(eq[2, A002260(n+1)-2])`
-/

namespace A115194.P12634223825558662118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115194.P12634223825558662118

namespace A115194

/-- `A115193(eq[2, A002260(n+1)-2])` -/
def P12634223825558662118.Spec : Prop :=
  ∀ n, P12634223825558662118.a n = A115194 n

end A115194

/-! ## A115194.P5467570277448193639

`A003645(n+1)-A062992(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A115194

/-- `A003645(n+1)-A062992(n+1)` -/
def P5467570277448193639.Spec : Prop :=
  ∀ n, P5467570277448193639.a n = A115194 n

theorem P5467570277448193639.correct : P5467570277448193639.Spec := by
  intro n
  simp only [A115194]

end A115194

/-! ## A115194.P5075928820390180924

`A084076(n+1)-A003645(n+1)`
-/

namespace A115194.P5075928820390180924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084076 (n + 1) - A003645 (n + 1)

end

end A115194.P5075928820390180924

namespace A115194

/-- `A084076(n+1)-A003645(n+1)` -/
def P5075928820390180924.Spec : Prop :=
  ∀ n, P5075928820390180924.a n = A115194 n

end A115194

/-! ## A115194.P12080832024171407369

`A003645(n+1)-A064062(n+2)`
-/

namespace A115194.P12080832024171407369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003645 (n + 1) - A064062 (n + 2)

end

end A115194.P12080832024171407369

namespace A115194

/-- `A003645(n+1)-A064062(n+2)` -/
def P12080832024171407369.Spec : Prop :=
  ∀ n, P12080832024171407369.a n = A115194 n

end A115194

/-! ## A115194.P5927745006647334341

`(A084076(n+1)-A062992(n+1))/2`
-/

namespace A115194.P5927745006647334341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084076 (n + 1) - A062992 (n + 1) : ℚ) / 2

end

end A115194.P5927745006647334341

namespace A115194

/-- `(A084076(n+1)-A062992(n+1))/2` -/
def P5927745006647334341.Spec : Prop :=
  ∀ n, P5927745006647334341.a n = (A115194 n : ℚ)

end A115194

/-!
# A115196: Triangle read by rows formed from nonzero entries in table of number of graphs on n nodes with clique number k.

The programs for A115196, there is no canonical definition to state claims against.
-/

/-! ## A115196.P10482845376582639823

`A287024(comp[∑[n]])`
-/

namespace A115196.P10482845376582639823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287024 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A115196.P10482845376582639823

/-! ## A115196.P8119288341983739424

`A263341(A038722(comp[∑[n]]))`
-/

namespace A115196.P8119288341983739424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263341 (A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A115196.P8119288341983739424

/-! ## A115196.P17982640437259524153

`or(char[1], A287024(A014132(n+1)))`
-/

namespace A115196.P17982640437259524153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A287024 (A014132 (n + 1)).toNat)

end

end A115196.P17982640437259524153

/-! ## A115196.P3383176635394916167

`A263341(A061579(comp[∑[n+1]])+1)`
-/

namespace A115196.P3383176635394916167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263341 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A115196.P3383176635394916167

/-! ## A115196.P15815599142427071846

`lcm(A287024(A014132(n+1)), A332433(n))`
-/

namespace A115196.P15815599142427071846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A287024 (A014132 (n + 1)).toNat) (A332433 n)

end

end A115196.P15815599142427071846

/-!
# A115197: Convolution of generalized Catalan numbers A064062 (called C(n;2)).

The programs for A115197, the canonical program `A115197.P2414366515164714952` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115197 has offset 0).

The definition of A115197 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, A178792, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115197.P2414366515164714952

`4*A178792(n)-3*(n+1)*A064062(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A115197

/-- `4*A178792(n)-3*(n+1)*A064062(n+1)` -/
def P2414366515164714952.Spec : Prop :=
  ∀ n, P2414366515164714952.a n = A115197 n

theorem P2414366515164714952.correct : P2414366515164714952.Spec := by
  intro n
  simp only [A115197]

end A115197

/-! ## A115197.P14251395058045045445

`3*A064062(n)-a(n-1)` with `a(0)=1`
-/

namespace A115197.P14251395058045045445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A064062 n - a (n - 1)

end

end A115197.P14251395058045045445

namespace A115197

/-- `3*A064062(n)-a(n-1)` -/
def P14251395058045045445.Spec : Prop :=
  ∀ n, P14251395058045045445.a n = A115197 n

end A115197

/-! ## A115197.P4987948169236200385

`A064340(n+1)/A011782(n+1)`
-/

namespace A115197.P4987948169236200385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064340 (n + 1) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A115197.P4987948169236200385

namespace A115197

/-- `A064340(n+1)/A011782(n+1)` -/
def P4987948169236200385.Spec : Prop :=
  ∀ n, P4987948169236200385.a n = (A115197 n : ℚ)

end A115197

/-! ## A115197.P18352134981254855593

`A064340(n+1)/A131577(n+1)`
-/

namespace A115197.P18352134981254855593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064340 (n + 1) : ℚ) / (A131577 (n + 1) : ℚ)

end

end A115197.P18352134981254855593

namespace A115197

/-- `A064340(n+1)/A131577(n+1)` -/
def P18352134981254855593.Spec : Prop :=
  ∀ n, P18352134981254855593.a n = (A115197 n : ℚ)

end A115197

/-! ## A115197.P6520763247642146610

`A064340(n+1)/A166444(n+2)`
-/

namespace A115197.P6520763247642146610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064340 (n + 1) : ℚ) / (A166444 (n + 2) : ℚ)

end

end A115197.P6520763247642146610

namespace A115197

/-- `A064340(n+1)/A166444(n+2)` -/
def P6520763247642146610.Spec : Prop :=
  ∀ n, P6520763247642146610.a n = (A115197 n : ℚ)

end A115197

/-! ## A115197.P13778886846879711792

`A003945(n+1)/A002001(n+1)*A064340(n+1)`
-/

namespace A115197.P13778886846879711792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003945 (n + 1) : ℚ) / (A002001 (n + 1) : ℚ) * (A064340 (n + 1) : ℚ)

end

end A115197.P13778886846879711792

namespace A115197

/-- `A003945(n+1)/A002001(n+1)*A064340(n+1)` -/
def P13778886846879711792.Spec : Prop :=
  ∀ n, P13778886846879711792.a n = (A115197 n : ℚ)

end A115197

/-! ## A115197.P2541624599427191918

`A003945(n+1)/A003945(2*n+1)*A064340(n+1)`
-/

namespace A115197.P2541624599427191918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003945 (n + 1) : ℚ) / (A003945 (2 * n + 1) : ℚ) * (A064340 (n + 1) : ℚ)

end

end A115197.P2541624599427191918

namespace A115197

/-- `A003945(n+1)/A003945(2*n+1)*A064340(n+1)` -/
def P2541624599427191918.Spec : Prop :=
  ∀ n, P2541624599427191918.a n = (A115197 n : ℚ)

end A115197

/-!
# A115198: Parity of partitions of n, with 1 for even, 0 for odd (!). The definition follows.

The programs for A115198, there is no canonical definition to state claims against.
-/

/-! ## A115198.P8130044316481395693

`1-A115199(n)`
-/

namespace A115198.P8130044316481395693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A115199 n

end

end A115198.P8130044316481395693

/-! ## A115198.P14738390512199351041

`log2(gcd(2, A115201(n)))`
-/

namespace A115198.P14738390512199351041
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A115201 n) : ℝ)

end

end A115198.P14738390512199351041

/-! ## A115198.P16383302702224479428

`ceil(acot(A111786(n+1)))`
-/

namespace A115198.P16383302702224479428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A111786 (n + 1) : ℝ)⌉

end

end A115198.P16383302702224479428

/-! ## A115198.P2728795151477224547

`ceil(acot(A115131(n+1)))`
-/

namespace A115198.P2728795151477224547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A115131 (n + 1) : ℝ)⌉

end

end A115198.P2728795151477224547

/-! ## A115198.P10905678880004016955

`ceil(1/A115131(C(n+1, n)))`
-/

namespace A115198.P10905678880004016955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A115131 (Nat.choose (n + 1) n) : ℚ)⌉

end

end A115198.P10905678880004016955

/-! ## A115198.P2628156700611426024

`xor(A115199(n), A262681(n))`
-/

namespace A115198.P2628156700611426024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A115199 n) (A262681 n)

end

end A115198.P2628156700611426024

/-! ## A115198.P4353918535052911266

`xor(A115199(n), A361338(n))`
-/

namespace A115198.P4353918535052911266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A115199 n) (A361338 n)

end

end A115198.P4353918535052911266

/-! ## A115198.P11075266430229553260

`A217586(A344122(n+3)/2)`
-/

namespace A115198.P11075266430229553260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217586 (SequenceMachineLib.roundAway ((A344122 (n + 3) : ℚ) / 2)).toNat

end

end A115198.P11075266430229553260

/-! ## A115198.P2811049632623029917

`A155972((n+1)*A115199(n))`
-/

namespace A115198.P2811049632623029917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155972 ((n + 1 : ℤ) * A115199 n).toNat

end

end A115198.P2811049632623029917

/-! ## A115198.P7552025832181038644

`1-and(A000337(n), A115201(n))`
-/

namespace A115198.P7552025832181038644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A000337 n) (A115201 n)

end

end A115198.P7552025832181038644

/-!
# A115199: Parity of partitions of n, with 0 for even, 1 for odd. The definition follows.

The programs for A115199, there is no canonical definition to state claims against.
-/

/-! ## A115199.P4840098642816363267

`1-A115198(n)`
-/

namespace A115199.P4840098642816363267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A115198 n

end

end A115199.P4840098642816363267

/-! ## A115199.P1596499828926715117

`A115201(n)%2`
-/

namespace A115199.P1596499828926715117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115201 n) 2

end

end A115199.P1596499828926715117

/-! ## A115199.P11473086252567066315

`char[lt[A111786(n+1), 0]]`
-/

namespace A115199.P11473086252567066315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111786 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A115199.P11473086252567066315

/-! ## A115199.P4902505505883301230

`char[lt[A115131(n+1), 0]]`
-/

namespace A115199.P4902505505883301230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115131 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A115199.P4902505505883301230

/-! ## A115199.P1906980055245808759

`1-ceil(1/A115131(C(n+1, n)))`
-/

namespace A115199.P1906980055245808759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈1 / (A115131 (Nat.choose (n + 1) n) : ℚ)⌉

end

end A115199.P1906980055245808759

/-! ## A115199.P11766905889943515828

`and(A000051(n), A115201(n))`
-/

namespace A115199.P11766905889943515828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A115201 n)

end

end A115199.P11766905889943515828

/-! ## A115199.P16515569010617649513

`and(A000322(n), A115201(n))`
-/

namespace A115199.P16515569010617649513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000322 n) (A115201 n)

end

end A115199.P16515569010617649513

/-! ## A115199.P8825697663869813746

`and(A000337(n), A115201(n))`
-/

namespace A115199.P8825697663869813746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000337 n) (A115201 n)

end

end A115199.P8825697663869813746

/-! ## A115199.P7334303303201742416

`and(A001535(n), A115201(n))`
-/

namespace A115199.P7334303303201742416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A115201 n)

end

end A115199.P7334303303201742416

/-! ## A115199.P1221513581228928416

`and(A001546(n), A115201(n))`
-/

namespace A115199.P1221513581228928416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A115201 n)

end

end A115199.P1221513581228928416

