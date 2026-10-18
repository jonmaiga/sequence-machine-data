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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
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
# A051200: Except for initial term, primes of form "n 3's followed by 1".

The programs for A051200, there is no canonical definition to state claims against.
-/

/-! ## A051200.P6563978750492483657

`A000122(floor(10^((n+1)/2)/3))+(10^(n+1)-7)/3`
-/

namespace A051200.P6563978750492483657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 ⌊(10 : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ) / 3⌋.toNat : ℚ) + ((10 ^ (n + 1) : ℤ) - 7 : ℚ) / 3

end

end A051200.P6563978750492483657

/-! ## A051200.P17579741026299293103

`or(2, A007284(A083584(n)))`
-/

namespace A051200.P17579741026299293103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A007284 (A083584 n).toNat)

end

end A051200.P17579741026299293103

/-! ## A051200.P6784298078470777995

`A136024(A099146(n+1)+1)`
-/

namespace A051200.P6784298078470777995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136024 (A099146 (n + 1) + 1).toNat

end

end A051200.P6784298078470777995

/-! ## A051200.P3594253687098651517

`∩[A020451(n+1), A024636(n)]`
-/

namespace A051200.P3594253687098651517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024636 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051200.P3594253687098651517

/-!
# A051201: Sum of elements of the set { [ n/k ] : 1 <= k <= n }.

The programs for A051201, the canonical program `A051201.P10278196116176951271` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051201 has offset 1).

The definition of A051201 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051201.P10278196116176951271

`1/4*A000267(n+1)*A055086(n+1)+1/2*A006218(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051201

/-- `1/4*A000267(n+1)*A055086(n+1)+1/2*A006218(n+1)` -/
def P10278196116176951271.Spec : Prop :=
  ∀ n, P10278196116176951271.a n = (A051201 (n + 1) : ℚ)

end A051201

/-! ## A051201.P16312144351522316459

`A210256(n)+a(n-1)` with `a(0)=1`
-/

namespace A051201.P16312144351522316459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A210256 n + a (n - 1)

end

end A051201.P16312144351522316459

namespace A051201

/-- `A210256(n)+a(n-1)` -/
def P16312144351522316459.Spec : Prop :=
  ∀ n, P16312144351522316459.a n = A051201 (n + 1)

end A051201

/-! ## A051201.P1476478602458409496

`∑[A210256(A028310(n))]-1`
-/

namespace A051201.P1476478602458409496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210256 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A051201.P1476478602458409496

namespace A051201

/-- `∑[A210256(A028310(n))]-1` -/
def P1476478602458409496.Spec : Prop :=
  ∀ n, P1476478602458409496.a n = A051201 (n + 1)

end A051201

/-! ## A051201.P755594479239003341

`∑[A210256(A000038(n)+n)]`
-/

namespace A051201.P755594479239003341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210256 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051201.P755594479239003341

namespace A051201

/-- `∑[A210256(A000038(n)+n)]` -/
def P755594479239003341.Spec : Prop :=
  ∀ n, P755594479239003341.a n = A051201 (n + 1)

end A051201

/-! ## A051201.P15744811076010596691

`∑[A210256(or(n, A000038(n)))]`
-/

namespace A051201.P15744811076010596691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210256 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051201.P15744811076010596691

namespace A051201

/-- `∑[A210256(or(n, A000038(n)))]` -/
def P15744811076010596691.Spec : Prop :=
  ∀ n, P15744811076010596691.a n = A051201 (n + 1)

end A051201

/-! ## A051201.P14964566875092433916

`∑[A210256(xor(n, A000038(n)))]`
-/

namespace A051201.P14964566875092433916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210256 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051201.P14964566875092433916

namespace A051201

/-- `∑[A210256(xor(n, A000038(n)))]` -/
def P14964566875092433916.Spec : Prop :=
  ∀ n, P14964566875092433916.a n = A051201 (n + 1)

end A051201

/-! ## A051201.P16325027803593646639

`A078153(n+1)+Δ[A160664(n)]`
-/

namespace A051201.P16325027803593646639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078153 (n + 1) + (f1 (n + 1) - f1 n)

end

end A051201.P16325027803593646639

namespace A051201

/-- `A078153(n+1)+Δ[A160664(n)]` -/
def P16325027803593646639.Spec : Prop :=
  ∀ n, P16325027803593646639.a n = A051201 (n + 1)

end A051201

/-! ## A051201.P14782781253290610121

`A078153(n+1)+A000203(n+1)`
-/

namespace A051201.P14782781253290610121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078153 (n + 1) + A000203 (n + 1)

end

end A051201.P14782781253290610121

namespace A051201

/-- `A078153(n+1)+A000203(n+1)` -/
def P14782781253290610121.Spec : Prop :=
  ∀ n, P14782781253290610121.a n = A051201 (n + 1)

end A051201

/-! ## A051201.P2030694802962838113

`A078153(n+1)+A088580(n+1)-1`
-/

namespace A051201.P2030694802962838113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078153 (n + 1) + (A088580 (n + 1) - 1)

end

end A051201.P2030694802962838113

namespace A051201

/-- `A078153(n+1)+A088580(n+1)-1` -/
def P2030694802962838113.Spec : Prop :=
  ∀ n, P2030694802962838113.a n = A051201 (n + 1)

end A051201

/-! ## A051201.P8985652511044735203

`∑[A210256(n+1)]+1-A210256(n+1)`
-/

namespace A051201.P8985652511044735203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A210256 (n + 1))

end

end A051201.P8985652511044735203

namespace A051201

/-- `∑[A210256(n+1)]+1-A210256(n+1)` -/
def P8985652511044735203.Spec : Prop :=
  ∀ n, P8985652511044735203.a n = A051201 (n + 1)

end A051201

/-! ## A051201.P487464307342961648

`A326065(A103517(n))+A078153(n+1)`
-/

namespace A051201.P487464307342961648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A103517 n).toNat + A078153 (n + 1)

end

end A051201.P487464307342961648

namespace A051201

/-- `A326065(A103517(n))+A078153(n+1)` -/
def P487464307342961648.Spec : Prop :=
  ∀ n, P487464307342961648.a n = A051201 (n + 1)

end A051201

/-! ## A051201.P16306460876648797008

`∑[A210256(gcd(n, A233583(n+1)))]`
-/

namespace A051201.P16306460876648797008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210256 (Int.gcd (n : ℤ) (A233583 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051201.P16306460876648797008

namespace A051201

/-- `∑[A210256(gcd(n, A233583(n+1)))]` -/
def P16306460876648797008.Spec : Prop :=
  ∀ n, P16306460876648797008.a n = A051201 (n + 1)

end A051201

/-! ## A051201.P5773790213209201794

`∑[A210256(A233583(2*n+1)-n)]`
-/

namespace A051201.P5773790213209201794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210256 (A233583 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051201.P5773790213209201794

namespace A051201

/-- `∑[A210256(A233583(2*n+1)-n)]` -/
def P5773790213209201794.Spec : Prop :=
  ∀ n, P5773790213209201794.a n = A051201 (n + 1)

end A051201

/-!
# A051202: Numbers n such that A005210(n) = 0.

The programs for A051202, there is no canonical definition to state claims against.
-/

/-! ## A051202.P11112682160796159848

`1+eq[0, A005210(n+1)]`
-/

namespace A051202.P11112682160796159848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051202.P11112682160796159848

/-! ## A051202.P13919234033737089697

`eq[0, A005210(A028310(n))]`
-/

namespace A051202.P13919234033737089697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051202.P13919234033737089697

/-! ## A051202.P12634066095717112945

`A020725(eq[0, A005210(n+1)])`
-/

namespace A051202.P12634066095717112945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051202.P12634066095717112945

/-! ## A051202.P15320332982940198941

`A322015(eq[0, A005210(n+1)])`
-/

namespace A051202.P15320332982940198941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051202.P15320332982940198941

/-! ## A051202.P3750521472139215211

`A020725(lt[A005210(n+1), 1])`
-/

namespace A051202.P3750521472139215211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A051202.P3750521472139215211

/-!
# A051204: Nonnegative numbers of the form x^2-2^y.

The programs for A051204, there is no canonical definition to state claims against.
-/

/-! ## A051204.P4563165593016798571

`eq[0, A200512(n)]`
-/

namespace A051204.P4563165593016798571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051204.P4563165593016798571

/-! ## A051204.P17958924706067396540

`lt[A200512(round(acot(n)+n)), 1]`
-/

namespace A051204.P17958924706067396540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200512 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051204.P17958924706067396540

/-! ## A051204.P10550619441602628606

`lt[A200512(A028310(n)), 1]`
-/

namespace A051204.P10550619441602628606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200512 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051204.P10550619441602628606

/-! ## A051204.P3471517794163335997

`lt[A200512(A254667(n)), 1]`
-/

namespace A051204.P3471517794163335997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200512 (A254667 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051204.P3471517794163335997

/-! ## A051204.P10177250752404763022

`lt[A200512(n), A000034(n)]`
-/

namespace A051204.P10177250752404763022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200512 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051204.P10177250752404763022

/-! ## A051204.P16988874979799512220

`lt[A200512(n), A010882(n)]`
-/

namespace A051204.P16988874979799512220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200512 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051204.P16988874979799512220

/-! ## A051204.P4296806203589085676

`lt[A200512(n), A010887(n)]`
-/

namespace A051204.P4296806203589085676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200512 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051204.P4296806203589085676

/-! ## A051204.P9750562313612775857

`lt[A200512(n), A036584(n)]`
-/

namespace A051204.P9750562313612775857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200512 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051204.P9750562313612775857

/-! ## A051204.P14098497374213005485

`lt[A200512(n), abs(A280560(n))]`
-/

namespace A051204.P14098497374213005485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200512 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A280560 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051204.P14098497374213005485

/-! ## A051204.P10805000643174570944

`lt[A200512(n)², A102251(n)]`
-/

namespace A051204.P10805000643174570944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200512 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051204.P10805000643174570944

/-! ## A051204.P16373324251486903647

`lt[A200512(n)², A145154(n)]`
-/

namespace A051204.P16373324251486903647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200512 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051204.P16373324251486903647

/-! ## A051204.P4228133934453755898

`lt[A200512(n)², A286533(n)]`
-/

namespace A051204.P4228133934453755898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200512 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286533 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051204.P4228133934453755898

/-! ## A051204.P7330507688186135710

`lt[A200512(n), log2(A016789(n))]`
-/

namespace A051204.P7330507688186135710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200512 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A016789 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A051204.P7330507688186135710

/-! ## A051204.P17085869147363832416

`lt[A200512(n), log2(A252358(n))]`
-/

namespace A051204.P17085869147363832416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200512 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A252358 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A051204.P17085869147363832416

/-! ## A051204.P14491467832771750300

`lt[A200512(n), A000038(n)!]`
-/

namespace A051204.P14491467832771750300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200512 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051204.P14491467832771750300

/-! ## A051204.P17772738232334419739

`lt[A001221(A200512(n)+1), 1]`
-/

namespace A051204.P17772738232334419739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A200512 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051204.P17772738232334419739

/-! ## A051204.P4288715061439303328

`lt[A000005(A200512(n)+1), 2]`
-/

namespace A051204.P4288715061439303328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A200512 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051204.P4288715061439303328

/-! ## A051204.P15995311036345996299

`lt[A000010(A200512(n)+1), 2]`
-/

namespace A051204.P15995311036345996299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A200512 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051204.P15995311036345996299

/-! ## A051204.P1782682857413134554

`lt[A000203(A200512(n)+1), 2]`
-/

namespace A051204.P1782682857413134554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A200512 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051204.P1782682857413134554

/-! ## A051204.P16388656130212308546

`lt[A006530(A200512(n)+1), 2]`
-/

namespace A051204.P16388656130212308546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A200512 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051204.P16388656130212308546

/-!
# A051205: Numbers of the form x^2-3^y >= 0.

The programs for A051205, there is no canonical definition to state claims against.
-/

/-! ## A051205.P8289223298982760919

`eq[0, A200513(n)]`
-/

namespace A051205.P8289223298982760919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051205.P8289223298982760919

/-! ## A051205.P7880730429173784363

`lt[A200513(A028310(n)), 1]`
-/

namespace A051205.P7880730429173784363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200513 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051205.P7880730429173784363

/-! ## A051205.P507932138529963936

`lt[A200513(n), A070939(n)]`
-/

namespace A051205.P507932138529963936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200513 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051205.P507932138529963936

/-! ## A051205.P12809476523212850317

`lt[A200513(n), A110551(n)]`
-/

namespace A051205.P12809476523212850317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200513 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110551 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051205.P12809476523212850317

/-! ## A051205.P3841470230989867974

`lt[A200513(n), A206244(n)]`
-/

namespace A051205.P3841470230989867974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200513 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051205.P3841470230989867974

/-!
# A051206: Numbers of the form x^2-4^y >= 0.

The programs for A051206, there is no canonical definition to state claims against.
-/

/-! ## A051206.P9959188383268410183

`eq[0, A200514(n)]`
-/

namespace A051206.P9959188383268410183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200514 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051206.P9959188383268410183

/-! ## A051206.P1524677370779117235

`lt[A200514(2*n-n), 1]`
-/

namespace A051206.P1524677370779117235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200514 (2 * n - n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051206.P1524677370779117235

/-! ## A051206.P7874362727802316101

`A254667(lt[A200514(n), 1])`
-/

namespace A051206.P7874362727802316101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200514 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A051206.P7874362727802316101

/-! ## A051206.P17156180324831655630

`lt[A200514(n)², A010882(n)]`
-/

namespace A051206.P17156180324831655630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200514 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051206.P17156180324831655630

/-! ## A051206.P351059533264776564

`lt[A200514(n)², A010887(n)]`
-/

namespace A051206.P351059533264776564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200514 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051206.P351059533264776564

/-! ## A051206.P18128298193693698179

`lt[A200514(n)², A036584(n)]`
-/

namespace A051206.P18128298193693698179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200514 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051206.P18128298193693698179

/-! ## A051206.P727897785003501741

`lt[A200514(n)², A060576(n)]`
-/

namespace A051206.P727897785003501741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200514 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051206.P727897785003501741

/-! ## A051206.P17093694771252807224

`lt[A004442(A200514(n)+1), 1]`
-/

namespace A051206.P17093694771252807224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A200514 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051206.P17093694771252807224

/-! ## A051206.P12626241433249703078

`lt[A023820(A200514(n)+1), 1]`
-/

namespace A051206.P12626241433249703078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023820 (A200514 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051206.P12626241433249703078

/-! ## A051206.P6145772187983872691

`lt[A000203(A200514(n)+1), 2]`
-/

namespace A051206.P6145772187983872691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A200514 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051206.P6145772187983872691

/-! ## A051206.P14154401305946487558

`lt[A000040(A200514(n)+1), 3]`
-/

namespace A051206.P14154401305946487558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A200514 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051206.P14154401305946487558

/-! ## A051206.P4173356070049101245

`∑{d}[lt[A200514(n), 1], A000010(#)]`
-/

namespace A051206.P4173356070049101245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200514 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d

end

end A051206.P4173356070049101245

/-! ## A051206.P7744415978789890418

`record[or(-A200514(n), A254667(n))]`
-/

namespace A051206.P7744415978789890418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A200514 n) (A254667 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051206.P7744415978789890418

/-! ## A051206.P10365586019640185363

`record[n-A000330(2*A200514(n))]`
-/

namespace A051206.P10365586019640185363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000330 (2 * A200514 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051206.P10365586019640185363

/-! ## A051206.P4790137748420530877

`record[n-A008458(n)*A200514(n)]`
-/

namespace A051206.P4790137748420530877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008458 n * A200514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051206.P4790137748420530877

/-! ## A051206.P7130316911515860453

`record[n-A079097(n)*A200514(n)]`
-/

namespace A051206.P7130316911515860453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A079097 n * A200514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051206.P7130316911515860453

/-! ## A051206.P12541621308425352843

`record[n-A200514(n)*A301132(n)]`
-/

namespace A051206.P12541621308425352843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A200514 n * A301132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051206.P12541621308425352843

/-! ## A051206.P8083509535224354627

`lt[A000005(n+5)*A200514(n), 1]`
-/

namespace A051206.P8083509535224354627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 5) * A200514 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051206.P8083509535224354627

/-! ## A051206.P8870903468283846875

`lt[A200514(n), 1]%lt[1, A007318(n)]²`
-/

namespace A051206.P8870903468283846875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200514 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n % SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n ^ 2

end

end A051206.P8870903468283846875

/-!
# A051207: Numbers of the form x^2-5^y >= 0.

The programs for A051207, there is no canonical definition to state claims against.
-/

/-! ## A051207.P9541950590413872186

`eq[0, A200515(n)]`
-/

namespace A051207.P9541950590413872186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200515 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051207.P9541950590413872186

/-! ## A051207.P464853595567794179

`lt[A200515(A118759(n)), 1]`
-/

namespace A051207.P464853595567794179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200515 (A118759 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051207.P464853595567794179

/-! ## A051207.P9608985868196828542

`A254667(lt[A200515(n), 1])`
-/

namespace A051207.P9608985868196828542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200515 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A051207.P9608985868196828542

/-! ## A051207.P4261872243726547922

`lt[A200515(n), A010882(n)]`
-/

namespace A051207.P4261872243726547922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200515 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051207.P4261872243726547922

/-! ## A051207.P10226786564135694350

`lt[A200515(n), A087960(n)]`
-/

namespace A051207.P10226786564135694350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200515 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051207.P10226786564135694350

/-!
# A051208: Numbers of the form x^2-6^y >= 0.

The programs for A051208, there is no canonical definition to state claims against.
-/

/-! ## A051208.P268894286094003606

`eq[0, A200516(n)]`
-/

namespace A051208.P268894286094003606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051208.P268894286094003606

/-! ## A051208.P11666330748275508882

`A254667(lt[A200516(n), 1])`
-/

namespace A051208.P11666330748275508882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200516 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A051208.P11666330748275508882

/-! ## A051208.P17431496504770459464

`lt[A200516(n), A036584(n)]`
-/

namespace A051208.P17431496504770459464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200516 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051208.P17431496504770459464

/-! ## A051208.P8217651502635604965

`record[n-A051204(n+1)*A200516(n)]`
-/

namespace A051208.P8217651502635604965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A051204 (n + 1) * A200516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051208.P8217651502635604965

/-! ## A051208.P12081621427431919491

`record[n-A051205(n+1)*A200516(n)]`
-/

namespace A051208.P12081621427431919491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A051205 (n + 1) * A200516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051208.P12081621427431919491

/-! ## A051208.P5810964938360054408

`record[n-A200516(n)*A248344(n+1)]`
-/

namespace A051208.P5810964938360054408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A200516 n * A248344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051208.P5810964938360054408

/-! ## A051208.P674620655833015503

`record[A135477(A050873(n+1))%A005408(n)]`
-/

namespace A051208.P674620655833015503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135477 (A050873 (n + 1)).toNat) (A005408 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051208.P674620655833015503

/-! ## A051208.P917290728775193547

`record[A135477(n+1)%A135477(n+2)]`
-/

namespace A051208.P917290728775193547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135477 (n + 1)) (A135477 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051208.P917290728775193547

/-!
# A051209: Nonnegative numbers of the form x^2-7^y.

The programs for A051209, there is no canonical definition to state claims against.
-/

/-! ## A051209.P12307686098326415865

`eq[0, A200517(n)]`
-/

namespace A051209.P12307686098326415865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051209.P12307686098326415865

/-! ## A051209.P5973616076284097436

`A254667(lt[A200517(n), 1])`
-/

namespace A051209.P5973616076284097436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200517 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A051209.P5973616076284097436

/-! ## A051209.P5296151739440001880

`lt[A200517(n), A036584(n)]`
-/

namespace A051209.P5296151739440001880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051209.P5296151739440001880

/-! ## A051209.P9848463819219854012

`record[A254667(gcd(n, A200517(n)))]`
-/

namespace A051209.P9848463819219854012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (Int.gcd (n : ℤ) (A200517 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051209.P9848463819219854012

/-! ## A051209.P12458205095969072850

`lt[A200517(n), A000038(n)!]`
-/

namespace A051209.P12458205095969072850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200517 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051209.P12458205095969072850

/-! ## A051209.P17098598463963567007

`record[A254667(n)/(1-A200517(n))]`
-/

namespace A051209.P17098598463963567007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254667 n : ℚ) / (1 - A200517 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051209.P17098598463963567007

/-! ## A051209.P8812846745546602653

`lt[A200517(n), A000005(A252358(n))]`
-/

namespace A051209.P8812846745546602653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A252358 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051209.P8812846745546602653

/-! ## A051209.P5667335735916115508

`lt[A200517(n), atan(A327516(n))]`
-/

namespace A051209.P5667335735916115508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200517 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A327516 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A051209.P5667335735916115508

/-!
# A051210: Numbers of the form x^2-8^y >= 0.

The programs for A051210, there is no canonical definition to state claims against.
-/

/-! ## A051210.P10785207906650251601

`eq[0, A200518(n)]`
-/

namespace A051210.P10785207906650251601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200518 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051210.P10785207906650251601

/-! ## A051210.P8384313941464305561

`record[n-A037250(A200518(n)+1)]`
-/

namespace A051210.P8384313941464305561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A037250 (A200518 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051210.P8384313941464305561

/-! ## A051210.P1933676920115618302

`record[n/A000010(A200518(n)+1)]`
-/

namespace A051210.P1933676920115618302
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000010 (A200518 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051210.P1933676920115618302

/-! ## A051210.P1707317473085949045

`record[n/A000203(A200518(n)+1)]`
-/

namespace A051210.P1707317473085949045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000203 (A200518 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051210.P1707317473085949045

/-! ## A051210.P16415013043968067827

`record[n/A000217(A200518(n)+1)]`
-/

namespace A051210.P16415013043968067827
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000217 (A200518 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051210.P16415013043968067827

/-! ## A051210.P2320124200014675388

`record[n/A001399(A200518(n)+1)]`
-/

namespace A051210.P2320124200014675388
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A001399 (A200518 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051210.P2320124200014675388

/-! ## A051210.P424689257219713801

`record[n/A005117(A200518(n)+1)]`
-/

namespace A051210.P424689257219713801
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A005117 (A200518 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051210.P424689257219713801

/-! ## A051210.P16757041200602079074

`record[n/A006530(A200518(n)+1)]`
-/

namespace A051210.P16757041200602079074
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A006530 (A200518 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051210.P16757041200602079074

/-! ## A051210.P16325609614347896966

`record[n-A002620(9*A200518(n))]`
-/

namespace A051210.P16325609614347896966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002620 (9 * A200518 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051210.P16325609614347896966

/-! ## A051210.P15501674768040206735

`record[n-A001399(n)*A200518(n)]`
-/

namespace A051210.P15501674768040206735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001399 n * A200518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051210.P15501674768040206735

/-!
# A051211: Numbers of the form x^2-9^y >= 0.

The programs for A051211, there is no canonical definition to state claims against.
-/

/-! ## A051211.P8183084786539926549

`∩[A047528(n+1), A051205(n+1)]`
-/

namespace A051211.P8183084786539926549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051211.P8183084786539926549

/-! ## A051211.P7649792208172354818

`∩[A051205(n+1), A014601(n)]`
-/

namespace A051211.P7649792208172354818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051211.P7649792208172354818

/-! ## A051211.P10279124646146002490

`∩[A047532(n+1), A051205(n+1)]`
-/

namespace A051211.P10279124646146002490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051211.P10279124646146002490

/-! ## A051211.P4169390606211977637

`∩[A047547(n+1), A051205(n+1)]`
-/

namespace A051211.P4169390606211977637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051211.P4169390606211977637

/-! ## A051211.P523452763008363470

`∩[Δ[A011848(2*n)], A051205(n+1)]`
-/

namespace A051211.P523452763008363470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A051211.P523452763008363470

/-!
# A051212: Numbers of the form x^2-10^y >= 0.

The programs for A051212, there is no canonical definition to state claims against.
-/

/-! ## A051212.P14553366273744109250

`eq[0, A200520(n)]`
-/

namespace A051212.P14553366273744109250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200520 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051212.P14553366273744109250

/-! ## A051212.P6240483510086436587

`A254667(lt[A200520(n), 1])`
-/

namespace A051212.P6240483510086436587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200520 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A051212.P6240483510086436587

/-! ## A051212.P10118947377761488280

`lt[A200520(n), A036584(n)]`
-/

namespace A051212.P10118947377761488280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200520 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051212.P10118947377761488280

/-! ## A051212.P3072372306971193434

`lt[A200520(n), atan(A017041(n))]`
-/

namespace A051212.P3072372306971193434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200520 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A017041 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A051212.P3072372306971193434

/-! ## A051212.P9654287424286906405

`record[or(-A200520(n), A254667(n))]`
-/

namespace A051212.P9654287424286906405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A200520 n) (A254667 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051212.P9654287424286906405

/-! ## A051212.P11183212941053317778

`record[gcd(A199969(n+1), A200520(n))]`
-/

namespace A051212.P11183212941053317778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A199969 (n + 1)) (A200520 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051212.P11183212941053317778

/-! ## A051212.P10885680643302235547

`lt[A200520(n), A020639(3*(n+2))]`
-/

namespace A051212.P10885680643302235547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200520 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051212.P10885680643302235547

/-! ## A051212.P10756378215246368429

`lt[A200520(n), A014963(A310477(n))]`
-/

namespace A051212.P10756378215246368429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200520 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A310477 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051212.P10756378215246368429

/-! ## A051212.P13067687029816551578

`lt[A200520(n), A014963(A310533(n))]`
-/

namespace A051212.P13067687029816551578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200520 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A310533 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051212.P13067687029816551578

/-! ## A051212.P7218238959997137979

`lt[A200520(n), A014963(A316316(n))]`
-/

namespace A051212.P7218238959997137979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200520 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A316316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051212.P7218238959997137979

/-!
# A051213: Numbers of the form 2^x-y^2 >= 0.

The programs for A051213, there is no canonical definition to state claims against.
-/

/-! ## A051213.P2021586585365055058

`eq[0, A200522(n)]`
-/

namespace A051213.P2021586585365055058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200522 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051213.P2021586585365055058

/-! ## A051213.P10473779783963873657

`lt[A200522(n), atan(A052905(n))]`
-/

namespace A051213.P10473779783963873657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200522 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A052905 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A051213.P10473779783963873657

/-! ## A051213.P7897609290206663571

`lt[A200522(n), acot(A055999(n))]`
-/

namespace A051213.P7897609290206663571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200522 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A055999 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A051213.P7897609290206663571

/-! ## A051213.P7722327225240247132

`lt[A000041(n)*A200522(n), 1]`
-/

namespace A051213.P7722327225240247132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A200522 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051213.P7722327225240247132

/-! ## A051213.P8480305585724950729

`record[n-A000124(n)*A200522(n)]`
-/

namespace A051213.P8480305585724950729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000124 n * A200522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051213.P8480305585724950729

/-! ## A051213.P13953291030110784982

`record[n-A005811(n)*A200522(n)]`
-/

namespace A051213.P13953291030110784982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005811 n * A200522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051213.P13953291030110784982

/-! ## A051213.P17382810455670092513

`lt[A200522(n), A001221(9*n+6)]`
-/

namespace A051213.P17382810455670092513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (9 * n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051213.P17382810455670092513

/-! ## A051213.P5290929598176041359

`lt[A200522(n), A000041(val(n+1, 2))]`
-/

namespace A051213.P5290929598176041359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051213.P5290929598176041359

/-! ## A051213.P7992297845745271078

`lt[A200522(n), A000045(val(n+1, 2)+1)]`
-/

namespace A051213.P7992297845745271078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (n + 1) 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051213.P7992297845745271078

/-!
# A051214: Numbers of the form 3^x-y^2 >= 0.

The programs for A051214, there is no canonical definition to state claims against.
-/

/-! ## A051214.P16886901060984373983

`eq[0, A200523(n)]`
-/

namespace A051214.P16886901060984373983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051214.P16886901060984373983

/-! ## A051214.P2823409515533344736

`lt[A200523(n)², A102251(n)]`
-/

namespace A051214.P2823409515533344736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200523 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051214.P2823409515533344736

/-! ## A051214.P15776048889464943894

`lt[A200523(n), atan(A093178(n))]`
-/

namespace A051214.P15776048889464943894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200523 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A093178 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A051214.P15776048889464943894

/-! ## A051214.P6608476450160189980

`lt[A200523(n), acot(A000217(n))]`
-/

namespace A051214.P6608476450160189980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200523 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000217 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A051214.P6608476450160189980

/-! ## A051214.P7746533446879865534

`lt[A200523(n), acot(A033581(n))]`
-/

namespace A051214.P7746533446879865534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200523 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A033581 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A051214.P7746533446879865534

/-! ## A051214.P9729303516981962890

`lt[A200523(n), acot(A051874(n))]`
-/

namespace A051214.P9729303516981962890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200523 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A051874 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A051214.P9729303516981962890

/-! ## A051214.P10375674542575204494

`lt[A200523(n), acot(A070169(n))]`
-/

namespace A051214.P10375674542575204494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200523 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A070169 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A051214.P10375674542575204494

/-! ## A051214.P14004837071738933651

`lt[A200523(n), A020639(3*(n+2))]`
-/

namespace A051214.P14004837071738933651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200523 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051214.P14004837071738933651

/-! ## A051214.P2413727251721085907

`lt[A200523(n), A001221(9*n+6)]`
-/

namespace A051214.P2413727251721085907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200523 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (9 * n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051214.P2413727251721085907

/-! ## A051214.P15826153529021384884

`lt[A200523(n), A014963(A312497(n))]`
-/

namespace A051214.P15826153529021384884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200523 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A312497 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051214.P15826153529021384884

/-!
# A051215: Numbers of the form 4^x-y^2 >= 0.

The programs for A051215, there is no canonical definition to state claims against.
-/

/-! ## A051215.P9477567631255654241

`eq[0, A200524(n)]`
-/

namespace A051215.P9477567631255654241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200524 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051215.P9477567631255654241

/-! ## A051215.P3917549716246797878

`record[gcd(A038608(n), A200524(n))]`
-/

namespace A051215.P3917549716246797878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038608 n) (A200524 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051215.P3917549716246797878

/-! ## A051215.P16763424834155013578

`lt[A200524(n), atan(A017041(n))]`
-/

namespace A051215.P16763424834155013578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200524 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A017041 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A051215.P16763424834155013578

/-! ## A051215.P10930288612990812434

`lt[A200524(n), atan(A200535(n))]`
-/

namespace A051215.P10930288612990812434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200524 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A200535 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A051215.P10930288612990812434

/-! ## A051215.P11049309500046110819

`lt[A200524(n), A020639(3*(n+2))]`
-/

namespace A051215.P11049309500046110819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051215.P11049309500046110819

/-!
# A051216: Numbers of the form 5^x-y^2 >= 0.

The programs for A051216, there is no canonical definition to state claims against.
-/

/-! ## A051216.P4318554243967429048

`eq[0, A200505(n)]`
-/

namespace A051216.P4318554243967429048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200505 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051216.P4318554243967429048

/-! ## A051216.P13180795015569897731

`lt[A200505(gcd(n, 4*n)), 1]`
-/

namespace A051216.P13180795015569897731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200505 (Nat.gcd n (4 * n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051216.P13180795015569897731

/-! ## A051216.P1077235223332810799

`lt[A200505(round(sqrt(n²+1))), 1]`
-/

namespace A051216.P1077235223332810799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200505 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051216.P1077235223332810799

/-! ## A051216.P8085472913916988809

`lt[A200505(n)², A000034(n)]`
-/

namespace A051216.P8085472913916988809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200505 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051216.P8085472913916988809

/-! ## A051216.P9043744721087781906

`lt[A200505(n)², A003842(n)]`
-/

namespace A051216.P9043744721087781906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200505 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051216.P9043744721087781906

/-!
# A051217: Nonnegative numbers of the form 6^x - y^2.

The programs for A051217, there is no canonical definition to state claims against.
-/

/-! ## A051217.P13743187407326464819

`eq[0, A200506(n)]`
-/

namespace A051217.P13743187407326464819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200506 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051217.P13743187407326464819

/-! ## A051217.P7353502631568828653

`record[n/A031161(A200506(n)+1)]`
-/

namespace A051217.P7353502631568828653
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A031161 (A200506 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051217.P7353502631568828653

/-! ## A051217.P6421271243663875806

`record[n/A031161(or(1, A200506(n)))]`
-/

namespace A051217.P6421271243663875806
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A031161 (Int.lor 1 (A200506 n)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051217.P6421271243663875806

/-! ## A051217.P8347956050829262165

`record[n-A006579(n+1)*A200506(n)]`
-/

namespace A051217.P8347956050829262165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A006579 (n + 1) * A200506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051217.P8347956050829262165

/-! ## A051217.P6946778553240269414

`record[n-A031161(n+1)*A200506(n)]`
-/

namespace A051217.P6946778553240269414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A031161 (n + 1) * A200506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051217.P6946778553240269414

/-!
# A051218: Numbers of the form 7^x-y^2 >= 0.

The programs for A051218, there is no canonical definition to state claims against.
-/

/-! ## A051218.P13137827131644034902

`eq[0, A200507(n)]`
-/

namespace A051218.P13137827131644034902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200507 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051218.P13137827131644034902

/-! ## A051218.P9945796925318960833

`lt[A200507(n), acot(A001844(n))]`
-/

namespace A051218.P9945796925318960833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200507 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A001844 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A051218.P9945796925318960833

/-! ## A051218.P4317948426164345544

`record[n/A000203(A200507(n)+1)]`
-/

namespace A051218.P4317948426164345544
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000203 (A200507 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051218.P4317948426164345544

/-! ## A051218.P1160147114298153772

`lt[A200507(n), A007318(C(2, n+2))]`
-/

namespace A051218.P1160147114298153772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200507 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051218.P1160147114298153772

/-! ## A051218.P15579689179851312857

`lt[A200507(n), A001222(A007918(n))]`
-/

namespace A051218.P15579689179851312857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200507 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051218.P15579689179851312857

/-!
# A051219: Numbers of the form 8^x-y^2 >= 0.

The programs for A051219, there is no canonical definition to state claims against.
-/

/-! ## A051219.P17479150620804887560

`eq[0, A200508(n)]`
-/

namespace A051219.P17479150620804887560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200508 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051219.P17479150620804887560

/-! ## A051219.P2531437996012458261

`A004525(record[n*(2-A200508(n))])`
-/

namespace A051219.P2531437996012458261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A200508 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051219.P2531437996012458261

/-! ## A051219.P10390294984160292690

`record[A005843(n)/(A200508(n)+2)]`
-/

namespace A051219.P10390294984160292690
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (A200508 n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051219.P10390294984160292690

/-! ## A051219.P17597647738252630924

`record[n-A073137(n)*A200508(n)]`
-/

namespace A051219.P17597647738252630924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A073137 n * A200508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051219.P17597647738252630924

/-! ## A051219.P7392118159325214493

`record[n*(2-A200508(n))]/A006530(A137688(n))`
-/

namespace A051219.P7392118159325214493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A200508 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A006530 (A137688 n).toNat : ℚ)

end

end A051219.P7392118159325214493

/-!
# A051220: Numbers of the form 9^x-y^2 >= 0.

The programs for A051220, there is no canonical definition to state claims against.
-/

/-! ## A051220.P15978711341828797473

`filter[A051214(n+1), A133872(#)]`
-/

namespace A051220.P15978711341828797473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A051220.P15978711341828797473

/-! ## A051220.P4643470768329552099

`∩[A051214(n+1), A042948(n)]`
-/

namespace A051220.P4643470768329552099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051220.P4643470768329552099

/-! ## A051220.P5195102429334955846

`∩[A047432(n+1), A051214(n+1)]`
-/

namespace A051220.P5195102429334955846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051220.P5195102429334955846

/-! ## A051220.P6822743815231438685

`∩[A047439(n+1), A051214(n+1)]`
-/

namespace A051220.P6822743815231438685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051220.P6822743815231438685

/-! ## A051220.P3705035565084836676

`∩[A047616(n+1), A051214(n+1)]`
-/

namespace A051220.P3705035565084836676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051220.P3705035565084836676

/-!
# A051221: Numbers of the form 10^x-y^2 >= 0.

The programs for A051221, there is no canonical definition to state claims against.
-/

/-! ## A051221.P11152363616435152903

`eq[0, A200510(n)]`
-/

namespace A051221.P11152363616435152903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200510 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051221.P11152363616435152903

/-! ## A051221.P8252047091403895261

`lt[A200510(A028310(n)), 1]`
-/

namespace A051221.P8252047091403895261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200510 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051221.P8252047091403895261

/-! ## A051221.P11577779282813489672

`lt[A200510(n), A036584(n)]`
-/

namespace A051221.P11577779282813489672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200510 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051221.P11577779282813489672

/-! ## A051221.P841425901291298943

`lt[A200510(n), abs(A280560(n))]`
-/

namespace A051221.P841425901291298943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200510 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A280560 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051221.P841425901291298943

/-! ## A051221.P6182171254138843378

`lt[A200510(n), atan(A018252(n+2))]`
-/

namespace A051221.P6182171254138843378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200510 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A018252 (n + 2) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A051221.P6182171254138843378

/-!
# A051222: Numbers k such that Bernoulli number B_{k} has denominator 6.

The programs for A051222, the canonical program `A051222.P2891263857057906711` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051222 has offset 1).

The definition of A051222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051222.P4380306231593634953

`eq[3, A166333(n)]`
-/

namespace A051222.P4380306231593634953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051222.P4380306231593634953

namespace A051222

/-- `eq[3, A166333(n)]` -/
def P4380306231593634953.Spec : Prop :=
  ∀ n, (P4380306231593634953.a n : ℤ) = A051222 (n + 1)

end A051222

/-! ## A051222.P3033838422276960171

`eq[6, A106458(n)]`
-/

namespace A051222.P3033838422276960171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051222.P3033838422276960171

namespace A051222

/-- `eq[6, A106458(n)]` -/
def P3033838422276960171.Spec : Prop :=
  ∀ n, (P3033838422276960171.a n : ℤ) = A051222 (n + 1)

end A051222

/-! ## A051222.P2891263857057906711

`2*A045979(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A051222

/-- `2*A045979(n+1)` -/
def P2891263857057906711.Spec : Prop :=
  ∀ n, P2891263857057906711.a n = A051222 (n + 1)

theorem P2891263857057906711.correct : P2891263857057906711.Spec := by
  intro n
  simp only [A051222, Nat.add_sub_cancel]

end A051222

/-! ## A051222.P14972356858382687400

`2*eq[2, A277087(n)]`
-/

namespace A051222.P14972356858382687400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051222.P14972356858382687400

namespace A051222

/-- `2*eq[2, A277087(n)]` -/
def P14972356858382687400.Spec : Prop :=
  ∀ n, (P14972356858382687400.a n : ℤ) = A051222 (n + 1)

end A051222

/-! ## A051222.P2317934765167335118

`eq[1, A355452(n+1)]+1`
-/

namespace A051222.P2317934765167335118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051222.P2317934765167335118

namespace A051222

/-- `eq[1, A355452(n+1)]+1` -/
def P2317934765167335118.Spec : Prop :=
  ∀ n, (P2317934765167335118.a n : ℤ) = A051222 (n + 1)

end A051222

/-! ## A051222.P16595806880273822364

`eq[2, A322313(n+1)]+1`
-/

namespace A051222.P16595806880273822364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322313 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051222.P16595806880273822364

namespace A051222

/-- `eq[2, A322313(n+1)]+1` -/
def P16595806880273822364.Spec : Prop :=
  ∀ n, (P16595806880273822364.a n : ℤ) = A051222 (n + 1)

end A051222

/-! ## A051222.P15248375801866561269

`eq[2, A322315(n+1)]+1`
-/

namespace A051222.P15248375801866561269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322315 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051222.P15248375801866561269

namespace A051222

/-- `eq[2, A322315(n+1)]+1` -/
def P15248375801866561269.Spec : Prop :=
  ∀ n, (P15248375801866561269.a n : ℤ) = A051222 (n + 1)

end A051222

/-! ## A051222.P12956900505102943569

`A004277(A045979(n+1))`
-/

namespace A051222.P12956900505102943569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A045979 (n + 1)).toNat

end

end A051222.P12956900505102943569

namespace A051222

/-- `A004277(A045979(n+1))` -/
def P12956900505102943569.Spec : Prop :=
  ∀ n, P12956900505102943569.a n = A051222 (n + 1)

end A051222

/-! ## A051222.P14358087333003092270

`filter[A004277(n), A355452(#)]`
-/

namespace A051222.P14358087333003092270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A051222.P14358087333003092270

namespace A051222

/-- `filter[A004277(n), A355452(#)]` -/
def P14358087333003092270.Spec : Prop :=
  ∀ n, P14358087333003092270.a n = A051222 (n + 1)

end A051222

/-! ## A051222.P12600911219040686407

`filter[A004279(n), A355452(#)]`
-/

namespace A051222.P12600911219040686407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A051222.P12600911219040686407

namespace A051222

/-- `filter[A004279(n), A355452(#)]` -/
def P12600911219040686407.Spec : Prop :=
  ∀ n, P12600911219040686407.a n = A051222 (n + 1)

end A051222

/-! ## A051222.P11526445030716613252

`filter[A016825(n), A355452(#)]`
-/

namespace A051222.P11526445030716613252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A051222.P11526445030716613252

namespace A051222

/-- `filter[A016825(n), A355452(#)]` -/
def P11526445030716613252.Spec : Prop :=
  ∀ n, P11526445030716613252.a n = A051222 (n + 1)

end A051222

/-! ## A051222.P13593800708023945414

`filter[A035877(n), A355452(#)]`
-/

namespace A051222.P13593800708023945414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A051222.P13593800708023945414

namespace A051222

/-- `filter[A035877(n), A355452(#)]` -/
def P13593800708023945414.Spec : Prop :=
  ∀ n, P13593800708023945414.a n = A051222 (n + 1)

end A051222

/-! ## A051222.P12371851046860873535

`filter[A053438(n), A355452(#)]`
-/

namespace A051222.P12371851046860873535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A051222.P12371851046860873535

namespace A051222

/-- `filter[A053438(n), A355452(#)]` -/
def P12371851046860873535.Spec : Prop :=
  ∀ n, P12371851046860873535.a n = A051222 (n + 1)

end A051222

/-! ## A051222.P1372797837000566858

`filter[A057543(n), A355452(#)]`
-/

namespace A051222.P1372797837000566858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A051222.P1372797837000566858

namespace A051222

/-- `filter[A057543(n), A355452(#)]` -/
def P1372797837000566858.Spec : Prop :=
  ∀ n, P1372797837000566858.a n = A051222 (n + 1)

end A051222

/-! ## A051222.P14063941450574392665

`filter[A130319(n), A355452(#)]`
-/

namespace A051222.P14063941450574392665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A051222.P14063941450574392665

namespace A051222

/-- `filter[A130319(n), A355452(#)]` -/
def P14063941450574392665.Spec : Prop :=
  ∀ n, P14063941450574392665.a n = A051222 (n + 1)

end A051222

/-! ## A051222.P11209438390230503411

`filter[A173773(n), A355452(#)]`
-/

namespace A051222.P11209438390230503411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A051222.P11209438390230503411

namespace A051222

/-- `filter[A173773(n), A355452(#)]` -/
def P11209438390230503411.Spec : Prop :=
  ∀ n, P11209438390230503411.a n = A051222 (n + 1)

end A051222

/-! ## A051222.P119954724021762313

`filter[A184418(n), A355452(#)]`
-/

namespace A051222.P119954724021762313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A051222.P119954724021762313

namespace A051222

/-- `filter[A184418(n), A355452(#)]` -/
def P119954724021762313.Spec : Prop :=
  ∀ n, P119954724021762313.a n = A051222 (n + 1)

end A051222

/-! ## A051222.P18183468902229945297

`filter[A255068(n), A355452(#)]`
-/

namespace A051222.P18183468902229945297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A051222.P18183468902229945297

namespace A051222

/-- `filter[A255068(n), A355452(#)]` -/
def P18183468902229945297.Spec : Prop :=
  ∀ n, P18183468902229945297.a n = A051222 (n + 1)

end A051222

/-! ## A051222.P14110097112435333647

`filter[A266303(n), A355452(#)]`
-/

namespace A051222.P14110097112435333647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A051222.P14110097112435333647

namespace A051222

/-- `filter[A266303(n), A355452(#)]` -/
def P14110097112435333647.Spec : Prop :=
  ∀ n, P14110097112435333647.a n = A051222 (n + 1)

end A051222

/-! ## A051222.P7126898044078671577

`filter[A266447(n), A355452(#)]`
-/

namespace A051222.P7126898044078671577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355452 (f1 j).toNat = 1) n)

end

end A051222.P7126898044078671577

namespace A051222

/-- `filter[A266447(n), A355452(#)]` -/
def P7126898044078671577.Spec : Prop :=
  ∀ n, P7126898044078671577.a n = A051222 (n + 1)

end A051222

/-!
# A051223: Number of ways of placing n nonattacking superqueens on an n X n board.

The programs for A051223, there is no canonical definition to state claims against.
-/

/-! ## A051223.P5434171068709268653

`A102388(n+1)*A329750(A157275(n))`
-/

namespace A051223.P5434171068709268653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102388 (n + 1) * A329750 (A157275 n).toNat

end

end A051223.P5434171068709268653

/-! ## A051223.P17699894338175156833

`A102388(n+1)*A102419(A102429(n+2))`
-/

namespace A051223.P17699894338175156833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102388 (n + 1) * A102419 (A102429 (n + 2)).toNat

end

end A051223.P17699894338175156833

/-! ## A051223.P11752491784731396404

`A102388(C(n+1, ∑{digits}[n, #]))`
-/

namespace A051223.P11752491784731396404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102388 (Nat.choose (n + 1) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A051223.P11752491784731396404

/-! ## A051223.P5117933214235677127

`A147045(a(n-1)+n)-1` with `a(0)=1`
-/

namespace A051223.P5117933214235677127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A147045 (a (n - 1) + (n : ℤ)).toNat - 1

end

end A051223.P5117933214235677127

/-! ## A051223.P7436728877195631755

`A102388(A043316(n+1))`
-/

namespace A051223.P7436728877195631755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102388 (A043316 (n + 1)).toNat

end

end A051223.P7436728877195631755

/-!
# A051225: Numbers m such that the Bernoulli number B_{2*m} has denominator 30.

The programs for A051225, the canonical program `A051225.P4105070610435366321` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051225 has offset 1).

The definition of A051225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051225.P16128411063766025161

`A051226(n+1)/2`
-/

namespace A051225.P16128411063766025161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051226 (n + 1) : ℚ) / 2

end

end A051225.P16128411063766025161

namespace A051225

/-- `A051226(n+1)/2` -/
def P16128411063766025161.Spec : Prop :=
  ∀ n, P16128411063766025161.a n = (A051225 (n + 1) : ℚ)

end A051225

/-! ## A051225.P4105070610435366321

`2*A119480(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A051225

/-- `2*A119480(n+1)` -/
def P4105070610435366321.Spec : Prop :=
  ∀ n, P4105070610435366321.a n = A051225 (n + 1)

theorem P4105070610435366321.correct : P4105070610435366321.Spec := by
  intro n
  simp only [A051225, Nat.add_sub_cancel]

end A051225

/-! ## A051225.P4750777622539141078

`2*eq[1, A180315(2*n)]`
-/

namespace A051225.P4750777622539141078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051225.P4750777622539141078

namespace A051225

/-- `2*eq[1, A180315(2*n)]` -/
def P4750777622539141078.Spec : Prop :=
  ∀ n, (P4750777622539141078.a n : ℤ) = A051225 (n + 1)

end A051225

/-! ## A051225.P17836902832690190709

`A004277(A119480(n+1))`
-/

namespace A051225.P17836902832690190709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A119480 (n + 1)).toNat

end

end A051225.P17836902832690190709

namespace A051225

/-- `A004277(A119480(n+1))` -/
def P17836902832690190709.Spec : Prop :=
  ∀ n, P17836902832690190709.a n = A051225 (n + 1)

end A051225

/-! ## A051225.P4633530403757168105

`A273943(A051226(n+1))`
-/

namespace A051225.P4633530403757168105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A051226 (n + 1)).toNat

end

end A051225.P4633530403757168105

namespace A051225

/-- `A273943(A051226(n+1))` -/
def P4633530403757168105.Spec : Prop :=
  ∀ n, P4633530403757168105.a n = A051225 (n + 1)

end A051225

/-! ## A051225.P13264780436223911270

`eq[A010124(n), A180315(n)]`
-/

namespace A051225.P13264780436223911270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051225.P13264780436223911270

namespace A051225

/-- `eq[A010124(n), A180315(n)]` -/
def P13264780436223911270.Spec : Prop :=
  ∀ n, (P13264780436223911270.a n : ℤ) = A051225 (n + 1)

end A051225

/-! ## A051225.P1663619976932108215

`eq[A010138(n), A180315(n)]`
-/

namespace A051225.P1663619976932108215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010138 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051225.P1663619976932108215

namespace A051225

/-- `eq[A010138(n), A180315(n)]` -/
def P1663619976932108215.Spec : Prop :=
  ∀ n, (P1663619976932108215.a n : ℤ) = A051225 (n + 1)

end A051225

/-! ## A051225.P6115883142578329289

`eq[A010140(n), A180315(n)]`
-/

namespace A051225.P6115883142578329289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010140 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051225.P6115883142578329289

namespace A051225

/-- `eq[A010140(n), A180315(n)]` -/
def P6115883142578329289.Spec : Prop :=
  ∀ n, (P6115883142578329289.a n : ℤ) = A051225 (n + 1)

end A051225

/-! ## A051225.P7017650426619336216

`eq[A010149(n), A180315(n)]`
-/

namespace A051225.P7017650426619336216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051225.P7017650426619336216

namespace A051225

/-- `eq[A010149(n), A180315(n)]` -/
def P7017650426619336216.Spec : Prop :=
  ∀ n, (P7017650426619336216.a n : ℤ) = A051225 (n + 1)

end A051225

/-! ## A051225.P7880598972094792468

`eq[A075180(n), A180315(n)]`
-/

namespace A051225.P7880598972094792468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051225.P7880598972094792468

namespace A051225

/-- `eq[A075180(n), A180315(n)]` -/
def P7880598972094792468.Spec : Prop :=
  ∀ n, (P7880598972094792468.a n : ℤ) = A051225 (n + 1)

end A051225

/-! ## A051225.P17633342829037679704

`eq[A165886(n), A180315(n)]`
-/

namespace A051225.P17633342829037679704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165886 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051225.P17633342829037679704

namespace A051225

/-- `eq[A165886(n), A180315(n)]` -/
def P17633342829037679704.Spec : Prop :=
  ∀ n, (P17633342829037679704.a n : ℤ) = A051225 (n + 1)

end A051225

/-! ## A051225.P5418692555997198631

`eq[A180315(n), A328570(n)]`
-/

namespace A051225.P5418692555997198631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051225.P5418692555997198631

namespace A051225

/-- `eq[A180315(n), A328570(n)]` -/
def P5418692555997198631.Spec : Prop :=
  ∀ n, (P5418692555997198631.a n : ℤ) = A051225 (n + 1)

end A051225

/-! ## A051225.P7768902815361440213

`eq[A180315(n)+1, A010126(n)]`
-/

namespace A051225.P7768902815361440213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051225.P7768902815361440213

namespace A051225

/-- `eq[A180315(n)+1, A010126(n)]` -/
def P7768902815361440213.Spec : Prop :=
  ∀ n, (P7768902815361440213.a n : ℤ) = A051225 (n + 1)

end A051225

/-! ## A051225.P3089114432803842796

`eq[A180315(n)+1, A010144(n)]`
-/

namespace A051225.P3089114432803842796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010144 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051225.P3089114432803842796

namespace A051225

/-- `eq[A180315(n)+1, A010144(n)]` -/
def P3089114432803842796.Spec : Prop :=
  ∀ n, (P3089114432803842796.a n : ℤ) = A051225 (n + 1)

end A051225

/-! ## A051225.P3590807075471802152

`eq[A180315(n)+2, A010155(n)]`
-/

namespace A051225.P3590807075471802152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010155 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051225.P3590807075471802152

namespace A051225

/-- `eq[A180315(n)+2, A010155(n)]` -/
def P3590807075471802152.Spec : Prop :=
  ∀ n, (P3590807075471802152.a n : ℤ) = A051225 (n + 1)

end A051225

/-! ## A051225.P14727954427407984540

`eq[A055770(n+1), A180315(n)]`
-/

namespace A051225.P14727954427407984540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051225.P14727954427407984540

namespace A051225

/-- `eq[A055770(n+1), A180315(n)]` -/
def P14727954427407984540.Spec : Prop :=
  ∀ n, (P14727954427407984540.a n : ℤ) = A051225 (n + 1)

end A051225

/-! ## A051225.P12009121684751875088

`eq[A055874(n+1), A180315(n)]`
-/

namespace A051225.P12009121684751875088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051225.P12009121684751875088

namespace A051225

/-- `eq[A055874(n+1), A180315(n)]` -/
def P12009121684751875088.Spec : Prop :=
  ∀ n, (P12009121684751875088.a n : ℤ) = A051225 (n + 1)

end A051225

/-! ## A051225.P7581533382146576416

`eq[A055881(n+1), A180315(n)]`
-/

namespace A051225.P7581533382146576416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051225.P7581533382146576416

namespace A051225

/-- `eq[A055881(n+1), A180315(n)]` -/
def P7581533382146576416.Spec : Prop :=
  ∀ n, (P7581533382146576416.a n : ℤ) = A051225 (n + 1)

end A051225

/-! ## A051225.P15165402689545779562

`eq[10, A277087(n)]`
-/

namespace A051225.P15165402689545779562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051225.P15165402689545779562

namespace A051225

/-- `eq[10, A277087(n)]` -/
def P15165402689545779562.Spec : Prop :=
  ∀ n, (P15165402689545779562.a n : ℤ) = A051225 (n + 1)

end A051225

/-! ## A051225.P8019674104362617917

`2*eq[2, A138705(2*n)]`
-/

namespace A051225.P8019674104362617917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138705 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051225.P8019674104362617917

namespace A051225

/-- `2*eq[2, A138705(2*n)]` -/
def P8019674104362617917.Spec : Prop :=
  ∀ n, (P8019674104362617917.a n : ℤ) = A051225 (n + 1)

end A051225

/-!
# A051226: Numbers m such that the Bernoulli number B_m has denominator 30.

The programs for A051226, the canonical program `A051226.P497692568898990968` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051226 has offset 1).

The definition of A051226 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051225, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051226.P497692568898990968

`2*A051225(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A051226

/-- `2*A051225(n+1)` -/
def P497692568898990968.Spec : Prop :=
  ∀ n, P497692568898990968.a n = A051226 (n + 1)

theorem P497692568898990968.correct : P497692568898990968.Spec := by
  intro n
  simp only [A051226, Nat.add_sub_cancel]

end A051226

/-! ## A051226.P14423931616888416249

`4*A119480(n+1)`
-/

namespace A051226.P14423931616888416249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A119480 (n + 1)

end

end A051226.P14423931616888416249

namespace A051226

/-- `4*A119480(n+1)` -/
def P14423931616888416249.Spec : Prop :=
  ∀ n, P14423931616888416249.a n = A051226 (n + 1)

end A051226

/-! ## A051226.P12969707860618700266

`A008574(A119480(n+1))`
-/

namespace A051226.P12969707860618700266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A119480 (n + 1)).toNat

end

end A051226.P12969707860618700266

namespace A051226

/-- `A008574(A119480(n+1))` -/
def P12969707860618700266.Spec : Prop :=
  ∀ n, P12969707860618700266.a n = A051226 (n + 1)

end A051226

/-! ## A051226.P10885768565198893093

`A008574(A051225(n+1)/2)`
-/

namespace A051226.P10885768565198893093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.roundAway ((A051225 (n + 1) : ℚ) / 2)).toNat

end

end A051226.P10885768565198893093

namespace A051226

/-- `A008574(A051225(n+1)/2)` -/
def P10885768565198893093.Spec : Prop :=
  ∀ n, P10885768565198893093.a n = A051226 (n + 1)

end A051226

/-! ## A051226.P4689046066493728391

`2*eq[A010124(n), A180315(n)]`
-/

namespace A051226.P4689046066493728391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051226.P4689046066493728391

namespace A051226

/-- `2*eq[A010124(n), A180315(n)]` -/
def P4689046066493728391.Spec : Prop :=
  ∀ n, (P4689046066493728391.a n : ℤ) = A051226 (n + 1)

end A051226

/-! ## A051226.P2361116169834156883

`2*eq[A010138(n), A180315(n)]`
-/

namespace A051226.P2361116169834156883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010138 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051226.P2361116169834156883

namespace A051226

/-- `2*eq[A010138(n), A180315(n)]` -/
def P2361116169834156883.Spec : Prop :=
  ∀ n, (P2361116169834156883.a n : ℤ) = A051226 (n + 1)

end A051226

/-! ## A051226.P3008936120453795271

`2*eq[A010140(n), A180315(n)]`
-/

namespace A051226.P3008936120453795271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010140 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051226.P3008936120453795271

namespace A051226

/-- `2*eq[A010140(n), A180315(n)]` -/
def P3008936120453795271.Spec : Prop :=
  ∀ n, (P3008936120453795271.a n : ℤ) = A051226 (n + 1)

end A051226

/-! ## A051226.P13086736304747169285

`2*eq[A010149(n), A180315(n)]`
-/

namespace A051226.P13086736304747169285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051226.P13086736304747169285

namespace A051226

/-- `2*eq[A010149(n), A180315(n)]` -/
def P13086736304747169285.Spec : Prop :=
  ∀ n, (P13086736304747169285.a n : ℤ) = A051226 (n + 1)

end A051226

/-! ## A051226.P16193107196472017882

`2*eq[A075180(n), A180315(n)]`
-/

namespace A051226.P16193107196472017882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051226.P16193107196472017882

namespace A051226

/-- `2*eq[A075180(n), A180315(n)]` -/
def P16193107196472017882.Spec : Prop :=
  ∀ n, (P16193107196472017882.a n : ℤ) = A051226 (n + 1)

end A051226

/-! ## A051226.P3418465768849964848

`2*eq[A165886(n), A180315(n)]`
-/

namespace A051226.P3418465768849964848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165886 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051226.P3418465768849964848

namespace A051226

/-- `2*eq[A165886(n), A180315(n)]` -/
def P3418465768849964848.Spec : Prop :=
  ∀ n, (P3418465768849964848.a n : ℤ) = A051226 (n + 1)

end A051226

/-! ## A051226.P2695935712194560346

`2*eq[A180315(n), A328570(n)]`
-/

namespace A051226.P2695935712194560346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051226.P2695935712194560346

namespace A051226

/-- `2*eq[A180315(n), A328570(n)]` -/
def P2695935712194560346.Spec : Prop :=
  ∀ n, (P2695935712194560346.a n : ℤ) = A051226 (n + 1)

end A051226

/-! ## A051226.P8270307354719763662

`A051225(n+1)²/A119480(n+1)`
-/

namespace A051226.P8270307354719763662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051225 (n + 1) ^ 2 : ℚ) / (A119480 (n + 1) : ℚ)

end

end A051226.P8270307354719763662

namespace A051226

/-- `A051225(n+1)²/A119480(n+1)` -/
def P8270307354719763662.Spec : Prop :=
  ∀ n, P8270307354719763662.a n = (A051226 (n + 1) : ℚ)

end A051226

/-! ## A051226.P13147447553458461004

`A051225(n+1)+A005843(A051225(n+1)/2)`
-/

namespace A051226.P13147447553458461004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051225 (n + 1) + A005843 (SequenceMachineLib.roundAway ((A051225 (n + 1) : ℚ) / 2)).toNat

end

end A051226.P13147447553458461004

namespace A051226

/-- `A051225(n+1)+A005843(A051225(n+1)/2)` -/
def P13147447553458461004.Spec : Prop :=
  ∀ n, P13147447553458461004.a n = A051226 (n + 1)

end A051226

/-! ## A051226.P7664789774368676561

`A051225(n+1)+A051225((n+1)%A051222(n+1))`
-/

namespace A051226.P7664789774368676561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051225 (n + 1) + A051225 (Int.tmod (n + 1 : ℤ) (A051222 (n + 1))).toNat

end

end A051226.P7664789774368676561

namespace A051226

/-- `A051225(n+1)+A051225((n+1)%A051222(n+1))` -/
def P7664789774368676561.Spec : Prop :=
  ∀ n, P7664789774368676561.a n = A051226 (n + 1)

end A051226

/-! ## A051226.P2575268096381192828

`2*eq[A055770(n+1), A180315(n)]`
-/

namespace A051226.P2575268096381192828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051226.P2575268096381192828

namespace A051226

/-- `2*eq[A055770(n+1), A180315(n)]` -/
def P2575268096381192828.Spec : Prop :=
  ∀ n, (P2575268096381192828.a n : ℤ) = A051226 (n + 1)

end A051226

/-! ## A051226.P6457242058865009190

`2*eq[A055874(n+1), A180315(n)]`
-/

namespace A051226.P6457242058865009190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051226.P6457242058865009190

namespace A051226

/-- `2*eq[A055874(n+1), A180315(n)]` -/
def P6457242058865009190.Spec : Prop :=
  ∀ n, (P6457242058865009190.a n : ℤ) = A051226 (n + 1)

end A051226

/-! ## A051226.P8842641998719182349

`2*eq[A055881(n+1), A180315(n)]`
-/

namespace A051226.P8842641998719182349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051226.P8842641998719182349

namespace A051226

/-- `2*eq[A055881(n+1), A180315(n)]` -/
def P8842641998719182349.Spec : Prop :=
  ∀ n, (P8842641998719182349.a n : ℤ) = A051226 (n + 1)

end A051226

/-! ## A051226.P1208824942515225881

`A004277(A051225(n+1))`
-/

namespace A051226.P1208824942515225881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A051225 (n + 1)).toNat

end

end A051226.P1208824942515225881

namespace A051226

/-- `A004277(A051225(n+1))` -/
def P1208824942515225881.Spec : Prop :=
  ∀ n, P1208824942515225881.a n = A051226 (n + 1)

end A051226

/-! ## A051226.P5212134655090809118

`2*eq[A002445(n), A040210(n)]`
-/

namespace A051226.P5212134655090809118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040210 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051226.P5212134655090809118

namespace A051226

/-- `2*eq[A002445(n), A040210(n)]` -/
def P5212134655090809118.Spec : Prop :=
  ∀ n, (P5212134655090809118.a n : ℤ) = A051226 (n + 1)

end A051226

/-! ## A051226.P15741404336529936225

`2*eq[A002445(n), A040211(n)]`
-/

namespace A051226.P15741404336529936225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040211 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051226.P15741404336529936225

namespace A051226

/-- `2*eq[A002445(n), A040211(n)]` -/
def P15741404336529936225.Spec : Prop :=
  ∀ n, (P15741404336529936225.a n : ℤ) = A051226 (n + 1)

end A051226

/-!
# A051227: Numbers m such that the Bernoulli number B_{2*m} has denominator 42.

The programs for A051227, there is no canonical definition to state claims against.
-/

/-! ## A051227.P9486945591034120475

`A051228(n+1)/2`
-/

namespace A051227.P9486945591034120475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051228 (n + 1) : ℚ) / 2

end

end A051227.P9486945591034120475

/-! ## A051227.P15777300747306204979

`3*A043298(n+1)`
-/

namespace A051227.P15777300747306204979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A043298 (n + 1)

end

end A051227.P15777300747306204979

/-! ## A051227.P5677255522292970852

`A000265(A051228(n+1))`
-/

namespace A051227.P5677255522292970852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A051228 (n + 1)).toNat

end

end A051227.P5677255522292970852

/-! ## A051227.P2166584502643849557

`A014682(lcm(2, A051228(n+1)))`
-/

namespace A051227.P2166584502643849557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A051228 (n + 1)))

end

end A051227.P2166584502643849557

/-! ## A051227.P5090430109141644267

`lcm(A043298(n+1), A174971(n))`
-/

namespace A051227.P5090430109141644267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A043298 (n + 1)) (A174971 n)

end

end A051227.P5090430109141644267

/-! ## A051227.P15052104124728409716

`A008486(A043298(n+1))`
-/

namespace A051227.P15052104124728409716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A043298 (n + 1)).toNat

end

end A051227.P15052104124728409716

/-! ## A051227.P16182571912423597540

`eq[A040616(n), A396683(n)]`
-/

namespace A051227.P16182571912423597540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040616 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051227.P16182571912423597540

/-! ## A051227.P4371123972895800315

`eq[A118521(n+1), A396683(n)]`
-/

namespace A051227.P4371123972895800315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051227.P4371123972895800315

/-! ## A051227.P8398239137958996664

`eq[7, A166333(2*n)]`
-/

namespace A051227.P8398239137958996664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051227.P8398239137958996664

/-! ## A051227.P523030554773548932

`eq[6, A346467(2*n+1)]`
-/

namespace A051227.P523030554773548932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346467 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051227.P523030554773548932

/-! ## A051227.P10601555355774218080

`eq[A010704(n), A112828(n)]`
-/

namespace A051227.P10601555355774218080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010704 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051227.P10601555355774218080

/-! ## A051227.P609332807177099060

`eq[A010717(n), A112828(n)]`
-/

namespace A051227.P609332807177099060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010717 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051227.P609332807177099060

/-! ## A051227.P14135341330924430409

`eq[A040031(n), A112828(n)]`
-/

namespace A051227.P14135341330924430409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040031 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051227.P14135341330924430409

/-! ## A051227.P2658853677506574053

`eq[A040135(n), A112828(n)]`
-/

namespace A051227.P2658853677506574053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040135 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051227.P2658853677506574053

/-! ## A051227.P732845668440092758

`eq[A040214(n), A112828(n)]`
-/

namespace A051227.P732845668440092758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051227.P732845668440092758

/-! ## A051227.P10407992924819169715

`eq[A040311(n), A112828(n)]`
-/

namespace A051227.P10407992924819169715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040311 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051227.P10407992924819169715

/-! ## A051227.P7069203894629688567

`eq[A040426(n), A112828(n)]`
-/

namespace A051227.P7069203894629688567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051227.P7069203894629688567

/-! ## A051227.P16720465918754357500

`eq[A040710(n), A112828(n)]`
-/

namespace A051227.P16720465918754357500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040710 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051227.P16720465918754357500

/-! ## A051227.P1969121948864106733

`eq[A112828(n), A129000(n+1)]`
-/

namespace A051227.P1969121948864106733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112828 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129000 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051227.P1969121948864106733

/-! ## A051227.P4089430290087978466

`eq[A112828(n), A269226(n+1)]`
-/

namespace A051227.P4089430290087978466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112828 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269226 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051227.P4089430290087978466

/-!
# A051228: Numbers m such that the Bernoulli number B_m has denominator 42.

The programs for A051228, there is no canonical definition to state claims against.
-/

/-! ## A051228.P17872167824130828616

`2*A051227(n+1)`
-/

namespace A051228.P17872167824130828616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051227 (n + 1)

end

end A051228.P17872167824130828616

/-! ## A051228.P15740535120910238510

`6*A043298(n+1)`
-/

namespace A051228.P15740535120910238510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A043298 (n + 1)

end

end A051228.P15740535120910238510

/-! ## A051228.P6312437358562519063

`lcm(2, A051227(A000027(n+1)))`
-/

namespace A051228.P6312437358562519063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A051227 (A000027 (n + 1)).toNat)

end

end A051228.P6312437358562519063

/-! ## A051228.P15799280743067932203

`lcm(A010696(n), A051227(n+1))`
-/

namespace A051228.P15799280743067932203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010696 n) (A051227 (n + 1))

end

end A051228.P15799280743067932203

/-! ## A051228.P3379840254956807865

`A051227(n+1)+A051227(Δ[n²]-n)`
-/

namespace A051228.P3379840254956807865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051227 (n + 1) + A051227 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A051228.P3379840254956807865

/-! ## A051228.P3737372246477177155

`A051227(n+1)+A051227(n+1)%A295587(n+1)`
-/

namespace A051228.P3737372246477177155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051227 (n + 1) + Int.tmod (A051227 (n + 1)) (A295587 (n + 1))

end

end A051228.P3737372246477177155

/-! ## A051228.P251224300836167553

`A008458(A043298(n+1))`
-/

namespace A051228.P251224300836167553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A043298 (n + 1)).toNat

end

end A051228.P251224300836167553

/-! ## A051228.P8997340826815825423

`A004277(A051227(n+1))`
-/

namespace A051228.P8997340826815825423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A051227 (n + 1)).toNat

end

end A051228.P8997340826815825423

/-!
# A051229: Numbers m such that the Bernoulli number B_{2*m} has denominator 66.

The programs for A051229, there is no canonical definition to state claims against.
-/

/-! ## A051229.P18184632336832180571

`5*A119456(n+1)`
-/

namespace A051229.P18184632336832180571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A119456 (n + 1)

end

end A051229.P18184632336832180571

/-! ## A051229.P17234673967147284296

`A051230(n+1)/2`
-/

namespace A051229.P17234673967147284296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051230 (n + 1) : ℚ) / 2

end

end A051229.P17234673967147284296

/-! ## A051229.P7755038081347519913

`A000265(A051230(n+1))`
-/

namespace A051229.P7755038081347519913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A051230 (n + 1)).toNat

end

end A051229.P7755038081347519913

/-! ## A051229.P17909523342505363722

`A008587(A119456(n+1))`
-/

namespace A051229.P17909523342505363722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A119456 (n + 1)).toNat

end

end A051229.P17909523342505363722

/-! ## A051229.P13987481489834933096

`A008592(A119456(n+1))/A000005(A000040(n+1))`
-/

namespace A051229.P13987481489834933096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 (A119456 (n + 1)).toNat : ℚ) / (A000005 (A000040 (n + 1)).toNat : ℚ)

end

end A051229.P13987481489834933096

/-! ## A051229.P12271804466591757620

`A008592(A119456(n+1))/A000005(A007510(n+1))`
-/

namespace A051229.P12271804466591757620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 (A119456 (n + 1)).toNat : ℚ) / (A000005 (A007510 (n + 1)).toNat : ℚ)

end

end A051229.P12271804466591757620

/-! ## A051229.P1318308603484182523

`eq[5, A169980(n)]`
-/

namespace A051229.P1318308603484182523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169980 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051229.P1318308603484182523

/-! ## A051229.P15490259275419256068

`A117358(2*2*A051230(n+1))`
-/

namespace A051229.P15490259275419256068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * (2 * A051230 (n + 1))).toNat

end

end A051229.P15490259275419256068

/-! ## A051229.P5711862651033495969

`eq[A220130(2*n)+2, A166333(2*n)]`
-/

namespace A051229.P5711862651033495969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220130 (2 * n) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051229.P5711862651033495969

/-!
# A051230: Numbers m such that the Bernoulli number B_m has denominator 66.

The programs for A051230, there is no canonical definition to state claims against.
-/

/-! ## A051230.P14524839390076615857

`2*A051229(n+1)`
-/

namespace A051230.P14524839390076615857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051229 (n + 1)

end

end A051230.P14524839390076615857

/-! ## A051230.P15961167113605789162

`10*A119456(n+1)`
-/

namespace A051230.P15961167113605789162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A119456 (n + 1)

end

end A051230.P15961167113605789162

/-! ## A051230.P7102611650966535523

`A008592(A119456(n+1))`
-/

namespace A051230.P7102611650966535523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A119456 (n + 1)).toNat

end

end A051230.P7102611650966535523

/-! ## A051230.P15546156988445511453

`lcm(2, A051229(A000027(n+1)))`
-/

namespace A051230.P15546156988445511453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A051229 (A000027 (n + 1)).toNat)

end

end A051230.P15546156988445511453

/-! ## A051230.P13528795371201004265

`lcm(A010700(n), A051229(n+1))`
-/

namespace A051230.P13528795371201004265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010700 n) (A051229 (n + 1))

end

end A051230.P13528795371201004265

/-! ## A051230.P3095835355297097537

`A051229(A000027(n+1))+A051229(n+1)`
-/

namespace A051230.P3095835355297097537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051229 (A000027 (n + 1)).toNat + A051229 (n + 1)

end

end A051230.P3095835355297097537

/-! ## A051230.P11217968026462997141

`A051229(n+1)+A051229((n+1)%A051222(n+1))`
-/

namespace A051230.P11217968026462997141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051229 (n + 1) + A051229 (Int.tmod (n + 1 : ℤ) (A051222 (n + 1))).toNat

end

end A051230.P11217968026462997141

/-! ## A051230.P6606706676115875287

`A051229(n+1)+A051229(n+1)%A051228(n+1)`
-/

namespace A051230.P6606706676115875287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051229 (n + 1) + Int.tmod (A051229 (n + 1)) (A051228 (n + 1))

end

end A051230.P6606706676115875287

/-! ## A051230.P12654365722025342822

`(A051229(n+1)+A051229(n+1))%A272138(n+1)`
-/

namespace A051230.P12654365722025342822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051229 (n + 1) + A051229 (n + 1)) (A272138 (n + 1))

end

end A051230.P12654365722025342822

/-! ## A051230.P7201898617003152896

`A004277(A051229(n+1))`
-/

namespace A051230.P7201898617003152896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A051229 (n + 1)).toNat

end

end A051230.P7201898617003152896

/-!
# A051231: Triangle read by rows: T(n, m) = S1(n, m)*9^(n-m), where S1 are the signed Stirling numbers of first kind A008275 (n >= 1, 1 <= m <= n).

The programs for A051231, there is no canonical definition to state claims against.
-/

/-! ## A051231.P5941531805339827623

`A051141(n+1)*A140303(n)`
-/

namespace A051231.P5941531805339827623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051141 (n + 1) * A140303 n

end

end A051231.P5941531805339827623

/-! ## A051231.P11633934417779425494

`A140303(n)²*A008275(n+1)`
-/

namespace A051231.P11633934417779425494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n ^ 2 * A008275 (n + 1)

end

end A051231.P11633934417779425494

/-! ## A051231.P235859200155941916

`A000244(A025581(n))²*A008275(n+1)`
-/

namespace A051231.P235859200155941916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A025581 n).toNat ^ 2 * A008275 (n + 1)

end

end A051231.P235859200155941916

/-! ## A051231.P12218122108399235475

`A108411(A099375(n))²*A008275(n+1)`
-/

namespace A051231.P12218122108399235475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (A099375 n).toNat ^ 2 * A008275 (n + 1)

end

end A051231.P12218122108399235475

/-! ## A051231.P12929267875795069548

`A000244(2*A025581(n))*A008275(n+1)`
-/

namespace A051231.P12929267875795069548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * A025581 n).toNat * A008275 (n + 1)

end

end A051231.P12929267875795069548

/-! ## A051231.P9456163658304023599

`A133494(A004736(n+1))²*A008275(n+1)`
-/

namespace A051231.P9456163658304023599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (A004736 (n + 1)).toNat ^ 2 * A008275 (n + 1)

end

end A051231.P9456163658304023599

/-! ## A051231.P7361619055235343155

`A051141(n+1)/A008275(n+1)*A051141(n+1)`
-/

namespace A051231.P7361619055235343155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051141 (n + 1) : ℚ) / (A008275 (n + 1) : ℚ) * (A051141 (n + 1) : ℚ)

end

end A051231.P7361619055235343155

/-! ## A051231.P18301829307727509397

`A051141(n+1)/A039683(n+1)*A051151(n+1)`
-/

namespace A051231.P18301829307727509397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051141 (n + 1) : ℚ) / (A039683 (n + 1) : ℚ) * (A051151 (n + 1) : ℚ)

end

end A051231.P18301829307727509397

/-! ## A051231.P16924314180833868644

`A051151(n+1)/A051142(n+1)*A051151(n+1)`
-/

namespace A051231.P16924314180833868644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051151 (n + 1) : ℚ) / (A051142 (n + 1) : ℚ) * (A051151 (n + 1) : ℚ)

end

end A051231.P16924314180833868644

/-! ## A051231.P4728659702770966114

`(A051151(n+1)/A039683(n+1))²*A008275(n+1)`
-/

namespace A051231.P4728659702770966114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A051151 (n + 1) : ℚ) / (A039683 (n + 1) : ℚ)) ^ 2 * (A008275 (n + 1) : ℚ)

end

end A051231.P4728659702770966114

/-! ## A051231.P6484556624780826679

`(A051141(n+1)/A039683(n+1))²*A051142(n+1)`
-/

namespace A051231.P6484556624780826679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A051141 (n + 1) : ℚ) / (A039683 (n + 1) : ℚ)) ^ 2 * (A051142 (n + 1) : ℚ)

end

end A051231.P6484556624780826679

/-! ## A051231.P16117520174815051638

`(A075501(n+1)/A075497(n+1))²*A008275(n+1)`
-/

namespace A051231.P16117520174815051638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A075501 (n + 1) : ℚ) / (A075497 (n + 1) : ℚ)) ^ 2 * (A008275 (n + 1) : ℚ)

end

end A051231.P16117520174815051638

/-! ## A051231.P1999241255827195709

`A051141(n+1)²/A008275(n+1)`
-/

namespace A051231.P1999241255827195709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051141 (n + 1) ^ 2 : ℚ) / (A008275 (n + 1) : ℚ)

end

end A051231.P1999241255827195709

/-! ## A051231.P2795326356964439348

`A051151(n+1)²/A051142(n+1)`
-/

namespace A051231.P2795326356964439348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051151 (n + 1) ^ 2 : ℚ) / (A051142 (n + 1) : ℚ)

end

end A051231.P2795326356964439348

/-! ## A051231.P14486553832098114202

`A061898(A130321(n))²*A008275(n+1)`
-/

namespace A051231.P14486553832098114202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A130321 n).toNat ^ 2 * A008275 (n + 1)

end

end A051231.P14486553832098114202

/-! ## A051231.P15934212468530064868

`A051141(n+1)*A165824(A130321(n))`
-/

namespace A051231.P15934212468530064868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051141 (n + 1) * A165824 (A130321 n).toNat

end

end A051231.P15934212468530064868

/-! ## A051231.P17620819842204983061

`A165824(A130321(n))²*A008276(A038722(n+1))`
-/

namespace A051231.P17620819842204983061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (A130321 n).toNat ^ 2 * A008276 (A038722 (n + 1)).toNat

end

end A051231.P17620819842204983061

/-!
# A051232: 9-factorial numbers.

The programs for A051232, the canonical program `A051232.P14744879620529247211` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051232 has offset 0).

The definition of A051232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051232.P14744879620529247211

`9^n*n!`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051232

/-- `9^n*n!` -/
def P14744879620529247211.Spec : Prop :=
  ∀ n, (P14744879620529247211.a n : ℤ) = A051232 n

theorem P14744879620529247211.correct : P14744879620529247211.Spec := by
  intro n
  simp only [A051232]

end A051232

/-! ## A051232.P2475041828003113216

`n!/9^-n`
-/

namespace A051232.P2475041828003113216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (9 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A051232.P2475041828003113216

namespace A051232

/-- `n!/9^-n` -/
def P2475041828003113216.Spec : Prop :=
  ∀ n, P2475041828003113216.a n = (A051232 n : ℚ)

theorem P2475041828003113216.correct : P2475041828003113216.Spec := by
  intro n
  simp only [A051232, Nat.add_sub_cancel, A051232.P2475041828003113216.a, A051232.P14744879620529247211.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A051232

/-! ## A051232.P3668005974325076783

`∏[round(1/acot(9*n))]`
-/

namespace A051232.P3668005974325076783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (9 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051232.P3668005974325076783

namespace A051232

/-- `∏[round(1/acot(9*n))]` -/
def P3668005974325076783.Spec : Prop :=
  ∀ n, P3668005974325076783.a n = A051232 n

end A051232

/-! ## A051232.P15124030871299495086

`∏[floor(acot(n))+9*n]`
-/

namespace A051232.P15124030871299495086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (9 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051232.P15124030871299495086

namespace A051232

/-- `∏[floor(acot(n))+9*n]` -/
def P15124030871299495086.Spec : Prop :=
  ∀ n, P15124030871299495086.a n = A051232 n

end A051232

/-! ## A051232.P2154610813063961178

`∏[(9*n)^ceil(tanh(n))]`
-/

namespace A051232.P2154610813063961178
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * n : ℚ) ^ (⌈Real.tanh (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051232.P2154610813063961178

namespace A051232

/-- `∏[(9*n)^ceil(tanh(n))]` -/
def P2154610813063961178.Spec : Prop :=
  ∀ n, P2154610813063961178.a n = (A051232 n : ℚ)

end A051232

/-!
# A051234: Possible orders of central factor groups of groups.

The programs for A051234, there is no canonical definition to state claims against.
-/

/-! ## A051234.P16738563574683296179

`comp[A069161(n+1)-1]+1`
-/

namespace A051234.P16738563574683296179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069161 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A051234.P16738563574683296179

/-! ## A051234.P14034053020653109590

`∪[(n+1)², A060652(n+1)]`
-/

namespace A051234.P14034053020653109590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051234.P14034053020653109590

/-! ## A051234.P10436825981421229597

`lt[∏{e}[n, #+1]-1, A000001(n)²]`
-/

namespace A051234.P10436825981421229597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A051234.P10436825981421229597

/-! ## A051234.P12018392356828097097

`lt[A032741(n), A000001(n)²]`
-/

namespace A051234.P12018392356828097097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051234.P12018392356828097097

/-! ## A051234.P11583572373472850981

`∪[A060652(n+1), A025741(n)]`
-/

namespace A051234.P11583572373472850981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025741 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051234.P11583572373472850981

/-!
# A051236: Largest integer a(n) for which the integer interval [ 0,a(n) ] is a subset of the set of determinants of all n X n 0-1 matrices.

The programs for A051236, there is no canonical definition to state claims against.
-/

/-! ## A051236.P2991372740906747593

`A013588(n+1)-1`
-/

namespace A051236.P2991372740906747593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013588 (n + 1) - 1

end

end A051236.P2991372740906747593

/-! ## A051236.P10628153576138426975

`A023443(A013588(n+1))`
-/

namespace A051236.P10628153576138426975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A013588 (n + 1)).toNat

end

end A051236.P10628153576138426975

/-! ## A051236.P10484660466803187093

`A333321(n)+A130581(n)`
-/

namespace A051236.P10484660466803187093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333321 n + A130581 n

end

end A051236.P10484660466803187093

/-! ## A051236.P15335253326698833594

`∑[or(A171367(n), A332284(n))]`
-/

namespace A051236.P15335253326698833594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A171367 n) (A332284 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051236.P15335253326698833594

/-! ## A051236.P13263063893716030072

`A023444(A013588(n+1)+1)`
-/

namespace A051236.P13263063893716030072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A013588 (n + 1) + 1).toNat

end

end A051236.P13263063893716030072

/-!
# A051237: Lexicographically earliest prime pyramid, read by rows.

The programs for A051237, there is no canonical definition to state claims against.
-/

/-! ## A051237.P5769930007202850454

`A088643(A038722(n+1))%A088614(n+1)`
-/

namespace A051237.P5769930007202850454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088643 (A038722 (n + 1)).toNat) (A088614 (n + 1))

end

end A051237.P5769930007202850454

/-! ## A051237.P2132565612474214067

`A088643(A038722(n+1)%A107977(n+1))`
-/

namespace A051237.P2132565612474214067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088643 (Int.tmod (A038722 (n + 1)) (A107977 (n + 1))).toNat

end

end A051237.P2132565612474214067

/-! ## A051237.P8130105553566556875

`A088643((A061579(n)+1)%A152078(n+1))`
-/

namespace A051237.P8130105553566556875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088643 (Int.tmod (A061579 n + 1) (A152078 (n + 1))).toNat

end

end A051237.P8130105553566556875

/-! ## A051237.P683393966352919740

`A088643((A093995(n+1)-n)%A088614(n+1))`
-/

namespace A051237.P683393966352919740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088643 (Int.tmod (A093995 (n + 1) - (n : ℤ)) (A088614 (n + 1))).toNat

end

end A051237.P683393966352919740

/-! ## A051237.P11527833452420458351

`A014963(A107982(n+1))*A088643(A038722(n+1))`
-/

namespace A051237.P11527833452420458351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A107982 (n + 1)).toNat * A088643 (A038722 (n + 1)).toNat

end

end A051237.P11527833452420458351

/-! ## A051237.P7395717035357107843

`A001222(A249077(n+1))*A088643(A038722(n+1))`
-/

namespace A051237.P7395717035357107843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A249077 (n + 1)).toNat * A088643 (A038722 (n + 1)).toNat

end

end A051237.P7395717035357107843

/-! ## A051237.P5926760719517524680

`A088643(A061579(n)+1)%A000217(A206987(n+1))`
-/

namespace A051237.P5926760719517524680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088643 (A061579 n + 1).toNat) (A000217 (A206987 (n + 1)).toNat)

end

end A051237.P5926760719517524680

/-! ## A051237.P6625846928716478261

`A014963(A118904(n+1))*A088643(A038722(n+1))`
-/

namespace A051237.P6625846928716478261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A118904 (n + 1)).toNat * A088643 (A038722 (n + 1)).toNat

end

end A051237.P6625846928716478261

/-! ## A051237.P11406303021199906269

`A274011(A088643(A038722(n+1))²)`
-/

namespace A051237.P11406303021199906269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274011 (A088643 (A038722 (n + 1)).toNat ^ 2).toNat

end

end A051237.P11406303021199906269

/-!
# A051238: First appearance of string n in e.

The programs for A051238, there is no canonical definition to state claims against.
-/

/-! ## A051238.P13809396282860523551

`A088576(n+1)`
-/

namespace A051238.P13809396282860523551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088576 (n + 1)

end

end A051238.P13809396282860523551

/-! ## A051238.P12533476675216891410

`ratio[A088576(n)]*A088576(n)`
-/

namespace A051238.P12533476675216891410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088576 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A088576 n : ℚ)

end

end A051238.P12533476675216891410

/-! ## A051238.P12516062939924202913

`or(char[1], A088576(A110514(2*n)))`
-/

namespace A051238.P12516062939924202913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A088576 (A110514 (2 * n)).toNat)

end

end A051238.P12516062939924202913

/-! ## A051238.P6481997452920208065

`A088576(A110514(2*n))%A017223(n)`
-/

namespace A051238.P6481997452920208065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088576 (A110514 (2 * n)).toNat) (A017223 n)

end

end A051238.P6481997452920208065

/-! ## A051238.P7099646290107854169

`A057979(2*n)*A088576(A110514(2*n))`
-/

namespace A051238.P7099646290107854169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A088576 (A110514 (2 * n)).toNat

end

end A051238.P7099646290107854169

/-! ## A051238.P1128903939277448147

`A281092(n+1)+1`
-/

namespace A051238.P1128903939277448147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281092 (n + 1) + 1

end

end A051238.P1128903939277448147

/-! ## A051238.P3627996087872694797

`A088576(n)-Δ[-A281092(n)]`
-/

namespace A051238.P3627996087872694797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A281092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088576 n - (f1 (n + 1) - f1 n)

end

end A051238.P3627996087872694797

/-!
# A051239: Number of ways to arrange integers 1 through n so that the sum of each adjacent pair is prime, not counting reversals.

The programs for A051239, there is no canonical definition to state claims against.
-/

/-! ## A051239.P2182528429983419789

`A064821(ceil(acot(n)+n))`
-/

namespace A051239.P2182528429983419789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064821 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A051239.P2182528429983419789

/-! ## A051239.P2054497088540260377

`A064821(abs(1-n)+2)`
-/

namespace A051239.P2054497088540260377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064821 (|1 - (n : ℤ)| + 2).toNat

end

end A051239.P2054497088540260377

/-! ## A051239.P5896648434726902489

`ceil(A103839(n+1)/2)`
-/

namespace A051239.P5896648434726902489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A103839 (n + 1) : ℚ) / 2⌉

end

end A051239.P5896648434726902489

/-! ## A051239.P6277453231232925269

`gcd(C(2, n), A064821(n+1))`
-/

namespace A051239.P6277453231232925269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A064821 (n + 1))

end

end A051239.P6277453231232925269

/-! ## A051239.P12451702633655524687

`A103839(A233583(n+2))/2`
-/

namespace A051239.P12451702633655524687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103839 (A233583 (n + 2)).toNat : ℚ) / 2

end

end A051239.P12451702633655524687

/-!
# A051240: Number of 4-uniform hypergraphs on n unlabeled nodes, or equivalently pure 3-dimensional simplicial complexes on n unlabeled nodes.

The programs for A051240, there is no canonical definition to state claims against.
-/

/-! ## A051240.P9359758484683910845

`A309858(eq[4, A025581(n)])`
-/

namespace A051240.P9359758484683910845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051240.P9359758484683910845

/-! ## A051240.P5202186444318232457

`A309858(eq[5, A193739(n)])`
-/

namespace A051240.P5202186444318232457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051240.P5202186444318232457

/-! ## A051240.P13529908749202150076

`A309858(eq[9, A099375(n)])`
-/

namespace A051240.P13529908749202150076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051240.P13529908749202150076

/-! ## A051240.P9192143128595013383

`A309858(A000217(n+5)-5)`
-/

namespace A051240.P9192143128595013383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309858 (A000217 (n + 5) - 5).toNat

end

end A051240.P9192143128595013383

/-! ## A051240.P8016891576331212006

`A309858(eq[4, A025669(n+1)])`
-/

namespace A051240.P8016891576331212006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051240.P8016891576331212006

/-!
# A051244: Binary numbers d(1)...d(j) such that d(i) = d(j+1-i) for all but two values of i.

The programs for A051244, the canonical program `A051244.P1245185252982384370` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051244 has offset 1).

The definition of A051244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1061 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051244.P16168233201162668743

`eq[1, A000120(A175298(n)-n)]`
-/

namespace A051244.P16168233201162668743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A175298 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051244.P16168233201162668743

namespace A051244

/-- `eq[1, A000120(A175298(n)-n)]` -/
def P16168233201162668743.Spec : Prop :=
  ∀ n, (P16168233201162668743.a n : ℤ) = A051244 (n + 1)

end A051244

/-! ## A051244.P4487128511719004282

`eq[1, A008687(A175298(n)-n)]`
-/

namespace A051244.P4487128511719004282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A175298 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051244.P4487128511719004282

namespace A051244

/-- `eq[1, A008687(A175298(n)-n)]` -/
def P4487128511719004282.Spec : Prop :=
  ∀ n, (P4487128511719004282.a n : ℤ) = A051244 (n + 1)

end A051244

/-! ## A051244.P11104547552152156393

`eq[1, A030101(A175298(n)-n)]`
-/

namespace A051244.P11104547552152156393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A175298 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051244.P11104547552152156393

namespace A051244

/-- `eq[1, A030101(A175298(n)-n)]` -/
def P11104547552152156393.Spec : Prop :=
  ∀ n, (P11104547552152156393.a n : ℤ) = A051244 (n + 1)

end A051244

/-! ## A051244.P8637022823508313030

`eq[1, A000120(and(n, A175919(n)))]`
-/

namespace A051244.P8637022823508313030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (n : ℤ) (A175919 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051244.P8637022823508313030

namespace A051244

/-- `eq[1, A000120(and(n, A175919(n)))]` -/
def P8637022823508313030.Spec : Prop :=
  ∀ n, (P8637022823508313030.a n : ℤ) = A051244 (n + 1)

end A051244

/-! ## A051244.P1245185252982384370

`eq[1, A037888(n+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A051244

/-- `eq[1, A037888(n+1)]+1` -/
def P1245185252982384370.Spec : Prop :=
  ∀ n, (P1245185252982384370.a n : ℤ) = A051244 (n + 1)

theorem P1245185252982384370.correct : P1245185252982384370.Spec := by
  intro n
  simp only [A051244, Nat.add_sub_cancel]

end A051244

/-! ## A051244.P15163443948347494444

`eq[1, A037888(A000007(n)+n)]`
-/

namespace A051244.P15163443948347494444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051244.P15163443948347494444

namespace A051244

/-- `eq[1, A037888(A000007(n)+n)]` -/
def P15163443948347494444.Spec : Prop :=
  ∀ n, (P15163443948347494444.a n : ℤ) = A051244 (n + 1)

end A051244

/-! ## A051244.P11243219562920107677

`eq[A159780(n)+1, A000120(n)]`
-/

namespace A051244.P11243219562920107677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159780 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051244.P11243219562920107677

namespace A051244

/-- `eq[A159780(n)+1, A000120(n)]` -/
def P11243219562920107677.Spec : Prop :=
  ∀ n, (P11243219562920107677.a n : ℤ) = A051244 (n + 1)

end A051244

/-! ## A051244.P4745461298522107949

`eq[1, A137331(A175919(n))]`
-/

namespace A051244.P4745461298522107949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137331 (A175919 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051244.P4745461298522107949

namespace A051244

/-- `eq[1, A137331(A175919(n))]` -/
def P4745461298522107949.Spec : Prop :=
  ∀ n, (P4745461298522107949.a n : ℤ) = A051244 (n + 1)

end A051244

/-! ## A051244.P9042409911759413252

`eq[A000120(n)+1, A000120(A175298(n))]`
-/

namespace A051244.P9042409911759413252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A175298 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051244.P9042409911759413252

namespace A051244

/-- `eq[A000120(n)+1, A000120(A175298(n))]` -/
def P9042409911759413252.Spec : Prop :=
  ∀ n, (P9042409911759413252.a n : ℤ) = A051244 (n + 1)

end A051244

/-! ## A051244.P17610448735492313142

`eq[A023416(A175298(n))+1, A023416(n)]`
-/

namespace A051244.P17610448735492313142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A175298 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051244.P17610448735492313142

namespace A051244

/-- `eq[A023416(A175298(n))+1, A023416(n)]` -/
def P17610448735492313142.Spec : Prop :=
  ∀ n, (P17610448735492313142.a n : ℤ) = A051244 (n + 1)

end A051244

/-! ## A051244.P18285531905030324375

`eq[1, A000120(A344220(n))]`
-/

namespace A051244.P18285531905030324375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A344220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051244.P18285531905030324375

namespace A051244

/-- `eq[1, A000120(A344220(n))]` -/
def P18285531905030324375.Spec : Prop :=
  ∀ n, (P18285531905030324375.a n : ℤ) = A051244 (n + 1)

end A051244

/-! ## A051244.P16089742787078052447

`eq[1, A002487(A344220(n)²)]`
-/

namespace A051244.P16089742787078052447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A344220 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051244.P16089742787078052447

namespace A051244

/-- `eq[1, A002487(A344220(n)²)]` -/
def P16089742787078052447.Spec : Prop :=
  ∀ n, (P16089742787078052447.a n : ℤ) = A051244 (n + 1)

end A051244

/-! ## A051244.P14816847632634028547

`eq[1, A030101(A344220(n)²)]`
-/

namespace A051244.P14816847632634028547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A344220 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051244.P14816847632634028547

namespace A051244

/-- `eq[1, A030101(A344220(n)²)]` -/
def P14816847632634028547.Spec : Prop :=
  ∀ n, (P14816847632634028547.a n : ℤ) = A051244 (n + 1)

end A051244

/-! ## A051244.P10365265491751579298

`eq[1, A038573(A344220(n)²)]`
-/

namespace A051244.P10365265491751579298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A344220 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051244.P10365265491751579298

namespace A051244

/-- `eq[1, A038573(A344220(n)²)]` -/
def P10365265491751579298.Spec : Prop :=
  ∀ n, (P10365265491751579298.a n : ℤ) = A051244 (n + 1)

end A051244

/-! ## A051244.P8950798552245265977

`eq[2, A001316(A344220(n)²)]`
-/

namespace A051244.P8950798552245265977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A344220 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051244.P8950798552245265977

namespace A051244

/-- `eq[2, A001316(A344220(n)²)]` -/
def P8950798552245265977.Spec : Prop :=
  ∀ n, (P8950798552245265977.a n : ℤ) = A051244 (n + 1)

end A051244

/-! ## A051244.P640387642828277658

`eq[4, A102376(A344220(n)²)]`
-/

namespace A051244.P640387642828277658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 (A344220 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051244.P640387642828277658

namespace A051244

/-- `eq[4, A102376(A344220(n)²)]` -/
def P640387642828277658.Spec : Prop :=
  ∀ n, (P640387642828277658.a n : ℤ) = A051244 (n + 1)

end A051244

/-! ## A051244.P11768400908558158229

`eq[1, A030101(2*A344220(n))]`
-/

namespace A051244.P11768400908558158229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * A344220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051244.P11768400908558158229

namespace A051244

/-- `eq[1, A030101(2*A344220(n))]` -/
def P11768400908558158229.Spec : Prop :=
  ∀ n, (P11768400908558158229.a n : ℤ) = A051244 (n + 1)

end A051244

/-! ## A051244.P10951111265050373451

`eq[1, A038573(2*A344220(n))]`
-/

namespace A051244.P10951111265050373451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (2 * A344220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051244.P10951111265050373451

namespace A051244

/-- `eq[1, A038573(2*A344220(n))]` -/
def P10951111265050373451.Spec : Prop :=
  ∀ n, (P10951111265050373451.a n : ℤ) = A051244 (n + 1)

end A051244

/-! ## A051244.P16883676567954841775

`eq[2, A001316(2*A344220(n))]`
-/

namespace A051244.P16883676567954841775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (2 * A344220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051244.P16883676567954841775

namespace A051244

/-- `eq[2, A001316(2*A344220(n))]` -/
def P16883676567954841775.Spec : Prop :=
  ∀ n, (P16883676567954841775.a n : ℤ) = A051244 (n + 1)

end A051244

/-! ## A051244.P576928360915955702

`eq[2, A000120(2*A175919(n))]`
-/

namespace A051244.P576928360915955702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * A175919 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051244.P576928360915955702

namespace A051244

/-- `eq[2, A000120(2*A175919(n))]` -/
def P576928360915955702.Spec : Prop :=
  ∀ n, (P576928360915955702.a n : ℤ) = A051244 (n + 1)

end A051244

/-!
# A051245: Binary numbers d(1)...d(j) such that d(i) != d(j+1-i) for all but two values of i.

The programs for A051245, there is no canonical definition to state claims against.
-/

/-! ## A051245.P7988294703915634807

`eq[2, A274036(A175920(n))]`
-/

namespace A051245.P7988294703915634807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 (A175920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051245.P7988294703915634807

/-! ## A051245.P6180974543807549376

`eq[A001316(A175920(n)), A040002(n)]`
-/

namespace A051245.P6180974543807549376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A175920 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051245.P6180974543807549376

/-! ## A051245.P13802778770142576305

`eq[A001316(A175920(n))², A040056(n)]`
-/

namespace A051245.P13802778770142576305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A175920 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051245.P13802778770142576305

/-! ## A051245.P2087839046110990299

`eq[A040056(n), A102376(A175920(n))]`
-/

namespace A051245.P2087839046110990299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 (A175920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051245.P2087839046110990299

/-! ## A051245.P9349207293287647146

`eq[A000120(A175920(n)), A036453(n+1)]`
-/

namespace A051245.P9349207293287647146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A175920 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051245.P9349207293287647146

/-!
# A051246: Binary numbers d(1)...d(j) such that d(i) != d(j+1-i) for all but 4 values of i.

The programs for A051246, there is no canonical definition to state claims against.
-/

/-! ## A051246.P13659956894271648664

`eq[4, A274036(A175920(n))]`
-/

namespace A051246.P13659956894271648664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 (A175920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051246.P13659956894271648664

/-! ## A051246.P4317919909643210972

`eq[A001316(A175920(n)), A040056(n)]`
-/

namespace A051246.P4317919909643210972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A175920 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051246.P4317919909643210972

/-! ## A051246.P9197237743808660337

`eq[A040002(n)², A001316(A175920(n))]`
-/

namespace A051246.P9197237743808660337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A175920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051246.P9197237743808660337

/-! ## A051246.P16701613739559702156

`eq[A001316(A175920(n)), A040071(2*n)]`
-/

namespace A051246.P16701613739559702156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A175920 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040071 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051246.P16701613739559702156

/-! ## A051246.P12601760778827432243

`eq[A000120(A175920(n)), A040002(n)]`
-/

namespace A051246.P12601760778827432243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A175920 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051246.P12601760778827432243

/-! ## A051246.P11350290551194041810

`eq[A036453(n+1)², A000120(A175920(n))]`
-/

namespace A051246.P11350290551194041810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A175920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051246.P11350290551194041810

/-!
# A051247: Binary numbers d(1)...d(j) such that d(i) = d(j+1-i) for all but 4 values of i.

The programs for A051247, the canonical program `A051247.P10908392662730010603` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051247 has offset 1).

The definition of A051247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051247.P14634796646116237137

`eq[2, A000120(A175298(n)-n)]`
-/

namespace A051247.P14634796646116237137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A175298 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051247.P14634796646116237137

namespace A051247

/-- `eq[2, A000120(A175298(n)-n)]` -/
def P14634796646116237137.Spec : Prop :=
  ∀ n, (P14634796646116237137.a n : ℤ) = A051247 (n + 1)

end A051247

/-! ## A051247.P3163845553321421449

`eq[2, A000120(and(n, A175919(n)))]`
-/

namespace A051247.P3163845553321421449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (n : ℤ) (A175919 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051247.P3163845553321421449

namespace A051247

/-- `eq[2, A000120(and(n, A175919(n)))]` -/
def P3163845553321421449.Spec : Prop :=
  ∀ n, (P3163845553321421449.a n : ℤ) = A051247 (n + 1)

end A051247

/-! ## A051247.P10908392662730010603

`eq[2, A037888(n+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A051247

/-- `eq[2, A037888(n+1)]+1` -/
def P10908392662730010603.Spec : Prop :=
  ∀ n, (P10908392662730010603.a n : ℤ) = A051247 (n + 1)

theorem P10908392662730010603.correct : P10908392662730010603.Spec := by
  intro n
  simp only [A051247, Nat.add_sub_cancel]

end A051247

/-! ## A051247.P2024400779619958363

`A153152(eq[2, A037888(n+1)])`
-/

namespace A051247.P2024400779619958363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051247.P2024400779619958363

namespace A051247

/-- `A153152(eq[2, A037888(n+1)])` -/
def P2024400779619958363.Spec : Prop :=
  ∀ n, P2024400779619958363.a n = A051247 (n + 1)

end A051247

/-! ## A051247.P8756652301222758839

`eq[2, A037888(A000007(n)+n)]`
-/

namespace A051247.P8756652301222758839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051247.P8756652301222758839

namespace A051247

/-- `eq[2, A037888(A000007(n)+n)]` -/
def P8756652301222758839.Spec : Prop :=
  ∀ n, (P8756652301222758839.a n : ℤ) = A051247 (n + 1)

end A051247

/-! ## A051247.P8838969506297719928

`eq[A159780(n)+2, A000120(n)]`
-/

namespace A051247.P8838969506297719928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159780 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051247.P8838969506297719928

namespace A051247

/-- `eq[A159780(n)+2, A000120(n)]` -/
def P8838969506297719928.Spec : Prop :=
  ∀ n, (P8838969506297719928.a n : ℤ) = A051247 (n + 1)

end A051247

/-! ## A051247.P18078343603385210317

`eq[A000034(n), A037888(A109613(n))]`
-/

namespace A051247.P18078343603385210317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A109613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051247.P18078343603385210317

namespace A051247

/-- `eq[A000034(n), A037888(A109613(n))]` -/
def P18078343603385210317.Spec : Prop :=
  ∀ n, (P18078343603385210317.a n : ℤ) = A051247 (n + 1)

end A051247

/-! ## A051247.P9058082913596037238

`eq[A000120(n), A058321(A159780(n))]`
-/

namespace A051247.P9058082913596037238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058321 (A159780 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051247.P9058082913596037238

namespace A051247

/-- `eq[A000120(n), A058321(A159780(n))]` -/
def P9058082913596037238.Spec : Prop :=
  ∀ n, (P9058082913596037238.a n : ℤ) = A051247 (n + 1)

end A051247

/-! ## A051247.P5730864314598170057

`eq[2, A000120(A344220(n))]`
-/

namespace A051247.P5730864314598170057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A344220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051247.P5730864314598170057

namespace A051247

/-- `eq[2, A000120(A344220(n))]` -/
def P5730864314598170057.Spec : Prop :=
  ∀ n, (P5730864314598170057.a n : ℤ) = A051247 (n + 1)

end A051247

/-! ## A051247.P15678232546304935027

`eq[4, A000120(A175919(n))]`
-/

namespace A051247.P15678232546304935027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A175919 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051247.P15678232546304935027

namespace A051247

/-- `eq[4, A000120(A175919(n))]` -/
def P15678232546304935027.Spec : Prop :=
  ∀ n, (P15678232546304935027.a n : ℤ) = A051247 (n + 1)

end A051247

/-! ## A051247.P7570482433326064541

`eq[A008687(A175298(n)), A023416(n)]`
-/

namespace A051247.P7570482433326064541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A175298 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051247.P7570482433326064541

namespace A051247

/-- `eq[A008687(A175298(n)), A023416(n)]` -/
def P7570482433326064541.Spec : Prop :=
  ∀ n, (P7570482433326064541.a n : ℤ) = A051247 (n + 1)

end A051247

/-! ## A051247.P16295540443567291797

`eq[A000120(n)+2, A000120(A175298(n))]`
-/

namespace A051247.P16295540443567291797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A175298 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051247.P16295540443567291797

namespace A051247

/-- `eq[A000120(n)+2, A000120(A175298(n))]` -/
def P16295540443567291797.Spec : Prop :=
  ∀ n, (P16295540443567291797.a n : ℤ) = A051247 (n + 1)

end A051247

/-! ## A051247.P15156310616682425030

`eq[2, A037888(A060000(n+1))]`
-/

namespace A051247.P15156310616682425030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051247.P15156310616682425030

namespace A051247

/-- `eq[2, A037888(A060000(n+1))]` -/
def P15156310616682425030.Spec : Prop :=
  ∀ n, (P15156310616682425030.a n : ℤ) = A051247 (n + 1)

end A051247

/-! ## A051247.P15083433449274795011

`eq[2, A037888(A008621(A130824(n)))]`
-/

namespace A051247.P15083433449274795011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A008621 (A130824 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051247.P15083433449274795011

namespace A051247

/-- `eq[2, A037888(A008621(A130824(n)))]` -/
def P15083433449274795011.Spec : Prop :=
  ∀ n, (P15083433449274795011.a n : ℤ) = A051247 (n + 1)

end A051247

/-! ## A051247.P3190053066734951475

`eq[4, A144078(n+1)]+1`
-/

namespace A051247.P3190053066734951475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051247.P3190053066734951475

namespace A051247

/-- `eq[4, A144078(n+1)]+1` -/
def P3190053066734951475.Spec : Prop :=
  ∀ n, (P3190053066734951475.a n : ℤ) = A051247 (n + 1)

end A051247

/-! ## A051247.P10620080136885169616

`eq[2, A037888(A233583(n+1))]`
-/

namespace A051247.P10620080136885169616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051247.P10620080136885169616

namespace A051247

/-- `eq[2, A037888(A233583(n+1))]` -/
def P10620080136885169616.Spec : Prop :=
  ∀ n, (P10620080136885169616.a n : ℤ) = A051247 (n + 1)

end A051247

/-!
# A051249: Pure 4-dimensional simplicial complexes on n unlabeled nodes.

The programs for A051249, there is no canonical definition to state claims against.
-/

/-! ## A051249.P9945893831936426701

`A309858(eq[5, A025581(n)])`
-/

namespace A051249.P9945893831936426701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051249.P9945893831936426701

/-! ## A051249.P12284620245105665402

`A309858(eq[6, A193739(n)])`
-/

namespace A051249.P12284620245105665402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051249.P12284620245105665402

/-! ## A051249.P715215938658179232

`A309858(eq[10, A113678(n)])`
-/

namespace A051249.P715215938658179232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051249.P715215938658179232

/-! ## A051249.P11011776285783993931

`A309858(eq[11, A099375(n)])`
-/

namespace A051249.P11011776285783993931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051249.P11011776285783993931

/-! ## A051249.P4278709270868384839

`A309858(eq[5, A025669(n+1)])`
-/

namespace A051249.P4278709270868384839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051249.P4278709270868384839

/-!
# A051250: Numbers whose reduced residue system consists of 1 and prime powers only.

The programs for A051250, there is no canonical definition to state claims against.
-/

/-! ## A051250.P7731943353919680334

`lt[A051265(n+1), 2]+1`
-/

namespace A051250.P7731943353919680334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A051250.P7731943353919680334

/-! ## A051250.P11846445133949966532

`lt[A144740(n+1), 2]+1`
-/

namespace A051250.P11846445133949966532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144740 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A051250.P11846445133949966532

/-! ## A051250.P13310814234943059525

`lt[A164297(n+1), 4]+1`
-/

namespace A051250.P13310814234943059525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164297 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A051250.P13310814234943059525

/-! ## A051250.P6643523426642304110

`lt[n, A381805(n+1)]+1`
-/

namespace A051250.P6643523426642304110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381805 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A051250.P6643523426642304110

/-! ## A051250.P4378081324669022241

`eq[1, A051265(C(2, n)+n)]`
-/

namespace A051250.P4378081324669022241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (Nat.choose 2 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051250.P4378081324669022241

/-!
# A051251: Number of self-complementary 3-plexes.

The programs for A051251, there is no canonical definition to state claims against.
-/

/-! ## A051251.P7694365610688566036

`((A005429(n+1)^n)²%7)^n`
-/

namespace A051251.P7694365610688566036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A005429 (n + 1) ^ n) ^ 2) 7 ^ n

end

end A051251.P7694365610688566036

/-! ## A051251.P17344708404795292817

`A116683(A026117(n))^7`
-/

namespace A051251.P17344708404795292817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116683 (A026117 n).toNat ^ 7

end

end A051251.P17344708404795292817

/-! ## A051251.P15575503651322622256

`A166301(A187258(n))^7`
-/

namespace A051251.P15575503651322622256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166301 (A187258 n).toNat ^ 7

end

end A051251.P15575503651322622256

/-! ## A051251.P12015002874089850324

`A179961(A192804(n))^7`
-/

namespace A051251.P12015002874089850324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179961 (A192804 n).toNat ^ 7

end

end A051251.P12015002874089850324

/-!
# A051252: Number of essentially different ways of arranging numbers 1 through 2n around a circle so that sum of each pair of adjacent numbers is prime.

The programs for A051252, there is no canonical definition to state claims against.
-/

/-! ## A051252.P6825765466722878208

`ceil(A294184(n+1)/2)`
-/

namespace A051252.P6825765466722878208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A294184 (n + 1) : ℚ) / 2⌉

end

end A051252.P6825765466722878208

/-! ## A051252.P16501914486511443143

`A294184(A233583(n+2))/2`
-/

namespace A051252.P16501914486511443143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294184 (A233583 (n + 2)).toNat : ℚ) / 2

end

end A051252.P16501914486511443143

/-! ## A051252.P15546454029984933989

`A294184(n+1)/A036452(n+1)`
-/

namespace A051252.P15546454029984933989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294184 (n + 1) : ℚ) / (A036452 (n + 1) : ℚ)

end

end A051252.P15546454029984933989

/-! ## A051252.P15515101970357948850

`A294184(n+1)/gcd(2, A000079(n))`
-/

namespace A051252.P15515101970357948850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294184 (n + 1) : ℚ) / (Int.gcd 2 (A000079 n) : ℚ)

end

end A051252.P15515101970357948850

/-!
# A051253: Weights of rotation-symmetric functions in n variables.

The programs for A051253, the canonical program `A051253.P14578079521010702026` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051253 has offset 3).

The definition of A051253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051253.P14578079521010702026

`2*a(n-1)+2*a(n-2)-2*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=18`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051253

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)-4*a(n-4)` -/
def P14578079521010702026.Spec : Prop :=
  ∀ n, P14578079521010702026.a n = A051253 (n + 3)

theorem P14578079521010702026.correct : P14578079521010702026.Spec := by
  intro n
  simp only [A051253, Nat.add_sub_cancel]

end A051253

/-! ## A051253.P14778156307967334186

`A004277(Δ[A000006((2^n+1)*(2^n+2)/6)])`
-/

namespace A051253.P14778156307967334186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (SequenceMachineLib.roundAway ((2 ^ n + 1 : ℚ) * ((2 ^ n + 2 : ℚ) / 6))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (f1 (n + 1) - f1 n).toNat

end

end A051253.P14778156307967334186

namespace A051253

/-- `A004277(Δ[A000006((2^n+1)*(2^n+2)/6)])` -/
def P14778156307967334186.Spec : Prop :=
  ∀ n, P14778156307967334186.a n = A051253 (n + 3)

end A051253

/-!
# A051255: Number of cyclically symmetric transpose complement plane partitions in a 2n X 2n X 2n box.

The programs for A051255, there is no canonical definition to state claims against.
-/

/-! ## A051255.P15020522359442678896

`A005161(2*n)/A005156(n)`
-/

namespace A051255.P15020522359442678896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005161 (2 * n) : ℚ) / (A005156 n : ℚ)

end

end A051255.P15020522359442678896

/-! ## A051255.P15695004283116521089

`A006366(2*n)/A059489(n)`
-/

namespace A051255.P15695004283116521089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006366 (2 * n) : ℚ) / (A059489 n : ℚ)

end

end A051255.P15695004283116521089

/-! ## A051255.P11451773923365742348

`A006366(2*n)/A005157(2*n)`
-/

namespace A051255.P11451773923365742348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006366 (2 * n) : ℚ) / (A005157 (2 * n) : ℚ)

end

end A051255.P11451773923365742348

/-! ## A051255.P5148137678664311432

`A181119(n)/A005130(2*n)`
-/

namespace A051255.P5148137678664311432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181119 n : ℚ) / (A005130 (2 * n) : ℚ)

end

end A051255.P5148137678664311432

/-! ## A051255.P3477222803000358060

`A078920(A022266(n))/A005130(A004277(n))`
-/

namespace A051255.P3477222803000358060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078920 (A022266 n).toNat : ℚ) / (A005130 (A004277 n).toNat : ℚ)

end

end A051255.P3477222803000358060

/-!
# A051256: Numbers formed from binomial coefficients (mod 2) interpreted as digits in factorial base.

The programs for A051256, there is no canonical definition to state claims against.
-/

/-! ## A051256.P1568063046192255534

`A059590(A001317(n))`
-/

namespace A051256.P1568063046192255534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (A001317 n).toNat

end

end A051256.P1568063046192255534

/-! ## A051256.P7624739905326309414

`A059590(A053576(n))`
-/

namespace A051256.P7624739905326309414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (A053576 n).toNat

end

end A051256.P7624739905326309414

/-! ## A051256.P17180129819785123392

`A059590(A276618(∑[n]))`
-/

namespace A051256.P17180129819785123392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (A276618 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A051256.P17180129819785123392

/-! ## A051256.P14533557211876153939

`A059590(record[A133179(n)])`
-/

namespace A051256.P14533557211876153939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051256.P14533557211876153939

/-! ## A051256.P13136907518233231912

`A059590(A193231(2^n))`
-/

namespace A051256.P13136907518233231912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (A193231 (2 ^ n)).toNat

end

end A051256.P13136907518233231912

/-!
# A051257: Numbers formed from binomial coefficients (mod 2+k) interpreted as digits in factorial base.

The programs for A051257, there is no canonical definition to state claims against.
-/

/-! ## A051257.P10134499870403664287

`A136548(A151374(n))+2*n`
-/

namespace A051257.P10134499870403664287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A151374 n).toNat + (2 * n : ℤ)

end

end A051257.P10134499870403664287

/-! ## A051257.P13337874915737623266

`A339589(2*n+5)+xor(1, A339589(n+4))`
-/

namespace A051257.P13337874915737623266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339589 (2 * n + 5) + Int.xor 1 (A339589 (n + 4))

end

end A051257.P13337874915737623266

/-!
# A051258: Fibocyclotomic numbers: numbers formed from cyclotomic polynomials and Fibonacci numbers (A000045).

The programs for A051258, there is no canonical definition to state claims against.
-/

/-! ## A051258.P12265940551918559017

`A063704(n)+A016389(A181995(n))`
-/

namespace A051258.P12265940551918559017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063704 n + A016389 (A181995 n).toNat

end

end A051258.P12265940551918559017

/-! ## A051258.P15296012004910280375

`A131038(A272463(n+1))+A063704(n)`
-/

namespace A051258.P15296012004910280375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131038 (A272463 (n + 1)).toNat + A063704 n

end

end A051258.P15296012004910280375

/-! ## A051258.P15272034343286585859

`A063708(n)+A016389(A181995(n))-1`
-/

namespace A051258.P15272034343286585859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063708 n + (A016389 (A181995 n).toNat - 1)

end

end A051258.P15272034343286585859

/-! ## A051258.P1723556191079650890

`gcd(A063704(n), A178401(A030494(n+1)))`
-/

namespace A051258.P1723556191079650890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063704 n) (A178401 (A030494 (n + 1)).toNat)

end

end A051258.P1723556191079650890

/-!
# A051261: Main diagonal of A018219, i.e., (n, n, a_n) is a winning position.

The programs for A051261, there is no canonical definition to state claims against.
-/

/-! ## A051261.P14243634988755413424

`A018219(∑[4*n])`
-/

namespace A051261.P14243634988755413424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018219 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051261.P14243634988755413424

/-! ## A051261.P12445837090325853229

`or(char[3], A018219(A046092(n)))`
-/

namespace A051261.P12445837090325853229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A018219 (A046092 n).toNat)

end

end A051261.P12445837090325853229

/-! ## A051261.P16265673439812506551

`A018219(A046092(n))*A057427(n)`
-/

namespace A051261.P16265673439812506551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018219 (A046092 n).toNat * A057427 n

end

end A051261.P16265673439812506551

/-! ## A051261.P16319346170847537254

`A018219(A046092(n))%A016825(n)`
-/

namespace A051261.P16319346170847537254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018219 (A046092 n).toNat) (A016825 n)

end

end A051261.P16319346170847537254

/-! ## A051261.P9898001780225062821

`∑{d}[A018219(A046092(n)), A000010(#)]`
-/

namespace A051261.P9898001780225062821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018219 (A046092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A051261.P9898001780225062821

/-! ## A051261.P13016118113950934486

`cosh(A000038(n))*A018219(A046092(n))`
-/

namespace A051261.P13016118113950934486
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (A000038 n : ℝ) * (A018219 (A046092 n).toNat : ℝ)

end

end A051261.P13016118113950934486

/-! ## A051261.P10958877454449626905

`A018219(A046092(n))+A000007(n+1)`
-/

namespace A051261.P10958877454449626905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018219 (A046092 n).toNat + A000007 (n + 1)

end

end A051261.P10958877454449626905

/-! ## A051261.P14014449553312230927

`A007318(C(2, n))*A018219(A046092(n))`
-/

namespace A051261.P14014449553312230927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A018219 (A046092 n).toNat

end

end A051261.P14014449553312230927

/-! ## A051261.P11197506429288690765

`A000108(C(2, n+2))*A018219(A046092(n))`
-/

namespace A051261.P11197506429288690765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A018219 (A046092 n).toNat

end

end A051261.P11197506429288690765

/-! ## A051261.P15310399566537766653

`∑{e}[A006530(n+1), #]*A018219(A046092(n))`
-/

namespace A051261.P15310399566537766653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A018219 (A046092 n).toNat

end

end A051261.P15310399566537766653

/-!
# A051262: 10-factorial numbers.

The programs for A051262, the canonical program `A051262.P2815637945179530644` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051262 has offset 0).

The definition of A051262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051262.P2815637945179530644

`10^n*n!`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051262

/-- `10^n*n!` -/
def P2815637945179530644.Spec : Prop :=
  ∀ n, (P2815637945179530644.a n : ℤ) = A051262 n

theorem P2815637945179530644.correct : P2815637945179530644.Spec := by
  intro n
  simp only [A051262]

end A051262

/-! ## A051262.P17534725370055175671

`n!/10^-n`
-/

namespace A051262.P17534725370055175671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (10 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A051262.P17534725370055175671

namespace A051262

/-- `n!/10^-n` -/
def P17534725370055175671.Spec : Prop :=
  ∀ n, P17534725370055175671.a n = (A051262 n : ℚ)

theorem P17534725370055175671.correct : P17534725370055175671.Spec := by
  intro n
  simp only [A051262, Nat.add_sub_cancel, A051262.P17534725370055175671.a, A051262.P2815637945179530644.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A051262

/-! ## A051262.P13550919927261946737

`∏[floor(acot(n))+10*n]`
-/

namespace A051262.P13550919927261946737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (10 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051262.P13550919927261946737

namespace A051262

/-- `∏[floor(acot(n))+10*n]` -/
def P13550919927261946737.Spec : Prop :=
  ∀ n, P13550919927261946737.a n = A051262 n

end A051262

/-! ## A051262.P1806108070634644840

`∏[gcd(10*n, floor(acot(n)))]`
-/

namespace A051262.P1806108070634644840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (10 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051262.P1806108070634644840

namespace A051262

/-- `∏[gcd(10*n, floor(acot(n)))]` -/
def P1806108070634644840.Spec : Prop :=
  ∀ n, (P1806108070634644840.a n : ℤ) = A051262 n

end A051262

/-! ## A051262.P644299498552867130

`∏[or(10*n, floor(acot(n)))]`
-/

namespace A051262.P644299498552867130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (10 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051262.P644299498552867130

namespace A051262

/-- `∏[or(10*n, floor(acot(n)))]` -/
def P644299498552867130.Spec : Prop :=
  ∀ n, P644299498552867130.a n = A051262 n

end A051262

/-!
# A051263: Expansion of 1/((1-x)*(1-x^3)^2*(1-x^5)).

The programs for A051263, the canonical program `A051263.P5956359654772244298` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051263 has offset 0).

The definition of A051263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051263.P5956359654772244298

`A008672(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A051263

/-- `A008672(n)+a(n-3)` -/
def P5956359654772244298.Spec : Prop :=
  ∀ n, P5956359654772244298.a n = A051263 n

theorem P5956359654772244298.correct : P5956359654772244298.Spec := by
  intro n
  simp only [A051263]

end A051263

/-! ## A051263.P7678144403942420237

`A029090(2*n)`
-/

namespace A051263.P7678144403942420237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029090 (2 * n)

end

end A051263.P7678144403942420237

namespace A051263

/-- `A029090(2*n)` -/
def P7678144403942420237.Spec : Prop :=
  ∀ n, P7678144403942420237.a n = A051263 n

end A051263

/-! ## A051263.P8231602704859770113

`A029153(2*n)`
-/

namespace A051263.P8231602704859770113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029153 (2 * n)

end

end A051263.P8231602704859770113

namespace A051263

/-- `A029153(2*n)` -/
def P8231602704859770113.Spec : Prop :=
  ∀ n, P8231602704859770113.a n = A051263 n

end A051263

/-! ## A051263.P14828270692738336240

`∑[A025843(2*n)]`
-/

namespace A051263.P14828270692738336240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025843 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051263.P14828270692738336240

namespace A051263

/-- `∑[A025843(2*n)]` -/
def P14828270692738336240.Spec : Prop :=
  ∀ n, P14828270692738336240.a n = A051263 n

end A051263

/-! ## A051263.P17093486149429120316

`A025843(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A051263.P17093486149429120316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025843 (n + n) + a (n - 1)

end

end A051263.P17093486149429120316

namespace A051263

/-- `A025843(n+n)+a(n-1)` -/
def P17093486149429120316.Spec : Prop :=
  ∀ n, P17093486149429120316.a n = A051263 n

end A051263

/-! ## A051263.P12369623647740544299

`gcd(C(2, n+1), A029090(A005843(n)))`
-/

namespace A051263.P12369623647740544299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 1) : ℤ) (A029090 (A005843 n).toNat)

end

end A051263.P12369623647740544299

namespace A051263

/-- `gcd(C(2, n+1), A029090(A005843(n)))` -/
def P12369623647740544299.Spec : Prop :=
  ∀ n, (P12369623647740544299.a n : ℤ) = A051263 n

end A051263

/-! ## A051263.P11118073103356001762

`A029254(2*n+1)+A029254(2*n)`
-/

namespace A051263.P11118073103356001762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029254 (2 * n + 1) + A029254 (2 * n)

end

end A051263.P11118073103356001762

namespace A051263

/-- `A029254(2*n+1)+A029254(2*n)` -/
def P11118073103356001762.Spec : Prop :=
  ∀ n, P11118073103356001762.a n = A051263 n

end A051263

/-! ## A051263.P7217037260672797237

`A029061(2*n)-A025881(2*n+1)`
-/

namespace A051263.P7217037260672797237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029061 (2 * n) - A025881 (2 * n + 1)

end

end A051263.P7217037260672797237

namespace A051263

/-- `A029061(2*n)-A025881(2*n+1)` -/
def P7217037260672797237.Spec : Prop :=
  ∀ n, P7217037260672797237.a n = A051263 n

end A051263

/-! ## A051263.P3406858423955165629

`(A029047(2*n+1)+A025843(2*n))/2`
-/

namespace A051263.P3406858423955165629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029047 (2 * n + 1) + A025843 (2 * n) : ℚ) / 2

end

end A051263.P3406858423955165629

namespace A051263

/-- `(A029047(2*n+1)+A025843(2*n))/2` -/
def P3406858423955165629.Spec : Prop :=
  ∀ n, P3406858423955165629.a n = (A051263 n : ℚ)

end A051263

/-! ## A051263.P5798231094155334509

`A029198(abs(A024000(2*n)))+A029198(2*n)`
-/

namespace A051263.P5798231094155334509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029198 |A024000 (2 * n)|.toNat + A029198 (2 * n)

end

end A051263.P5798231094155334509

namespace A051263

/-- `A029198(abs(A024000(2*n)))+A029198(2*n)` -/
def P5798231094155334509.Spec : Prop :=
  ∀ n, P5798231094155334509.a n = A051263 n

end A051263

/-! ## A051263.P5640913588803196389

`Δ[A037145(Δ[n²])]`
-/

namespace A051263.P5640913588803196389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051263.P5640913588803196389

namespace A051263

/-- `Δ[A037145(Δ[n²])]` -/
def P5640913588803196389.Spec : Prop :=
  ∀ n, P5640913588803196389.a n = A051263 n

end A051263

/-! ## A051263.P5924783816920251788

`A008681(2*n+3)`
-/

namespace A051263.P5924783816920251788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 (2 * n + 3)

end

end A051263.P5924783816920251788

namespace A051263

/-- `A008681(2*n+3)` -/
def P5924783816920251788.Spec : Prop :=
  ∀ n, P5924783816920251788.a n = A051263 n

end A051263

/-! ## A051263.P9505330080388258441

`Δ[A001402(2*n+1)-A001402(2*n)]`
-/

namespace A051263.P9505330080388258441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 (2 * n + 1) - A001402 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051263.P9505330080388258441

namespace A051263

/-- `Δ[A001402(2*n+1)-A001402(2*n)]` -/
def P9505330080388258441.Spec : Prop :=
  ∀ n, P9505330080388258441.a n = A051263 n

end A051263

/-! ## A051263.P15901172005953193601

`A037145(2*n+3)-A037145(2*n+1)`
-/

namespace A051263.P15901172005953193601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 (2 * n + 3) - A037145 (2 * n + 1)

end

end A051263.P15901172005953193601

namespace A051263

/-- `A037145(2*n+3)-A037145(2*n+1)` -/
def P15901172005953193601.Spec : Prop :=
  ∀ n, P15901172005953193601.a n = A051263 n

end A051263

/-! ## A051263.P7872067227568909159

`A029320(4*n+6)`
-/

namespace A051263.P7872067227568909159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029320 (4 * n + 6)

end

end A051263.P7872067227568909159

namespace A051263

/-- `A029320(4*n+6)` -/
def P7872067227568909159.Spec : Prop :=
  ∀ n, P7872067227568909159.a n = A051263 n

end A051263

/-! ## A051263.P3298499562845506790

`A029386(4*n+6)`
-/

namespace A051263.P3298499562845506790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029386 (4 * n + 6)

end

end A051263.P3298499562845506790

namespace A051263

/-- `A029386(4*n+6)` -/
def P3298499562845506790.Spec : Prop :=
  ∀ n, P3298499562845506790.a n = A051263 n

end A051263

/-!
# A051264: Numbers that are 1-persistent but not 2-persistent.

The programs for A051264, there is no canonical definition to state claims against.
-/

/-! ## A051264.P6355177198642740164

`record[A180618(n+2)/10]`
-/

namespace A051264.P6355177198642740164
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180618 (n + 2) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051264.P6355177198642740164

/-! ## A051264.P7756002915706263125

`A050278(eq[0, A051390(n+1)])`
-/

namespace A051264.P7756002915706263125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051264.P7756002915706263125

/-! ## A051264.P2285413887312902478

`A050278(lt[A321908(n+4), A293061(n+1)])`
-/

namespace A051264.P2285413887312902478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321908 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050278 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A051264.P2285413887312902478

/-! ## A051264.P8068408970962422167

`A050278(eq[2, A161593(n+1)])`
-/

namespace A051264.P8068408970962422167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051264.P8068408970962422167

/-!
# A051265: Maximal value of prime divisors of numbers in reduced residue system for n.

The programs for A051265, there is no canonical definition to state claims against.
-/

/-! ## A051265.P4778236743027713300

`round(atan(A002264(∏{e}[n, n*#+1])))`
-/

namespace A051265.P4778236743027713300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A002264 (∏ p ∈ Nat.primeFactors (f1 n), (n * Nat.factorization (f1 n) p + 1)) : ℝ))

end

end A051265.P4778236743027713300

/-! ## A051265.P1625482073475392849

`round(atan(A004524(∏{e}[n, n*#+1])))`
-/

namespace A051265.P1625482073475392849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A004524 (∏ p ∈ Nat.primeFactors (f1 n), (n * Nat.factorization (f1 n) p + 1)) : ℝ))

end

end A051265.P1625482073475392849

/-! ## A051265.P5997201400837834733

`round(atan(A025799(∏{e}[n, n*#+1])))`
-/

namespace A051265.P5997201400837834733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A025799 (∏ p ∈ Nat.primeFactors (f1 n), (n * Nat.factorization (f1 n) p + 1)) : ℝ))

end

end A051265.P5997201400837834733

/-! ## A051265.P8396077496811808249

`round(atan(A051274(∏{e}[n, n*#+1])))`
-/

namespace A051265.P8396077496811808249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A051274 (∏ p ∈ Nat.primeFactors (f1 n), (n * Nat.factorization (f1 n) p + 1)) : ℝ))

end

end A051265.P8396077496811808249

/-! ## A051265.P8303169169890606506

`round(atan(A057354(∏{e}[n, n*#+1])))`
-/

namespace A051265.P8303169169890606506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A057354 (∏ p ∈ Nat.primeFactors (f1 n), (n * Nat.factorization (f1 n) p + 1)) : ℝ))

end

end A051265.P8303169169890606506

/-!
# A051266: Numbers n such that maximal value of prime divisors of reduced residue system for n is 2.

The programs for A051266, there is no canonical definition to state claims against.
-/

/-! ## A051266.P6845164803947558182

`eq[2, A051265(n+1)]+1`
-/

namespace A051266.P6845164803947558182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051266.P6845164803947558182

/-! ## A051266.P12562196301644307079

`eq[2, A051265(gcd(n, C(2, n)))]`
-/

namespace A051266.P12562196301644307079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051266.P12562196301644307079

/-! ## A051266.P12011271764514720978

`eq[2, A051265(A028310(n))]`
-/

namespace A051266.P12011271764514720978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051266.P12011271764514720978

/-! ## A051266.P8190080218248175446

`A020725(eq[2, A051265(n+1)])`
-/

namespace A051266.P8190080218248175446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051266.P8190080218248175446

/-! ## A051266.P17392639437951896862

`A065475(eq[2, A051265(n+1)])`
-/

namespace A051266.P17392639437951896862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051266.P17392639437951896862

/-! ## A051266.P8217744177661660737

`eq[2, A051265(A065033(2*n))]`
-/

namespace A051266.P8217744177661660737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051266.P8217744177661660737

/-! ## A051266.P1117472203967203552

`eq[2, A051265(A123108(2*n))]`
-/

namespace A051266.P1117472203967203552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051266.P1117472203967203552

/-! ## A051266.P14239559580306167605

`eq[2, A051265(A000007(n)+n)]`
-/

namespace A051266.P14239559580306167605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051266.P14239559580306167605

/-! ## A051266.P5218086275665780743

`eq[2, A051265(xor(n, A000007(n)))]`
-/

namespace A051266.P5218086275665780743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051266.P5218086275665780743

/-! ## A051266.P3083575699154817440

`eq[2, A051265(A233583(n+1))]`
-/

namespace A051266.P3083575699154817440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051266.P3083575699154817440

/-!
# A051267: Numbers n such that maximal value of prime divisors of reduced residue system for n is 3.

The programs for A051267, there is no canonical definition to state claims against.
-/

/-! ## A051267.P18314270085824566763

`eq[3, A051265(n+1)]+1`
-/

namespace A051267.P18314270085824566763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051267.P18314270085824566763

/-! ## A051267.P11792298055736275383

`eq[3, A051265(gcd(n, C(2, n)))]`
-/

namespace A051267.P11792298055736275383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051267.P11792298055736275383

/-! ## A051267.P16818568800372972696

`eq[1, A051265(A028310(n))-2]`
-/

namespace A051267.P16818568800372972696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051267.P16818568800372972696

/-! ## A051267.P11591281569914303802

`eq[3, A051265(A065033(2*n))]`
-/

namespace A051267.P11591281569914303802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051267.P11591281569914303802

/-! ## A051267.P15299106412464768707

`eq[3, A051265(A123108(2*n))]`
-/

namespace A051267.P15299106412464768707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051267.P15299106412464768707

/-! ## A051267.P13989172960903568952

`eq[3, A051265(A233583(n+1))]`
-/

namespace A051267.P13989172960903568952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051267.P13989172960903568952

/-! ## A051267.P8227284214636091026

`eq[3, A051265(xor(n, A088917(n²)))]`
-/

namespace A051267.P8227284214636091026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (Int.xor (n : ℤ) (A088917 (n ^ 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051267.P8227284214636091026

/-!
# A051268: Numbers n such that maximal value of prime divisors of reduced residue system for n is 4.

The programs for A051268, there is no canonical definition to state claims against.
-/

/-! ## A051268.P11186405734481366985

`eq[4, A051265(A028310(n))]`
-/

namespace A051268.P11186405734481366985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051268.P11186405734481366985

/-! ## A051268.P4089888142148837114

`A020725(eq[4, A051265(n+1)])`
-/

namespace A051268.P4089888142148837114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051268.P4089888142148837114

/-! ## A051268.P11067450319477622320

`A065475(eq[4, A051265(n+1)])`
-/

namespace A051268.P11067450319477622320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051268.P11067450319477622320

/-! ## A051268.P11922921947005013120

`lt[3, A051265(A233583(n+1))]`
-/

namespace A051268.P11922921947005013120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A051268.P11922921947005013120

/-! ## A051268.P13617622324416153493

`A008364(A285660(A007775(n+1))+n+1)`
-/

namespace A051268.P13617622324416153493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (A285660 (A007775 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A051268.P13617622324416153493

/-!
# A051270: Numbers that are divisible by exactly 5 different primes.

The programs for A051270, there is no canonical definition to state claims against.
-/

/-! ## A051270.P16714584897750742974

`A272596(n+1)/4`
-/

namespace A051270.P16714584897750742974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272596 (n + 1) : ℚ) / 4

end

end A051270.P16714584897750742974

/-! ## A051270.P5678280464041978907

`A110962(A272596(n+1))`
-/

namespace A051270.P5678280464041978907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A272596 (n + 1)).toNat

end

end A051270.P5678280464041978907

/-! ## A051270.P8674911351522658741

`A117358(2*A272596(n+1))`
-/

namespace A051270.P8674911351522658741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * A272596 (n + 1)).toNat

end

end A051270.P8674911351522658741

/-! ## A051270.P5037258949956390428

`A117358(A272596(n+1)+A272596(n+1))`
-/

namespace A051270.P5037258949956390428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A272596 (n + 1) + A272596 (n + 1)).toNat

end

end A051270.P5037258949956390428

/-!
# A051271: Number of numbers either relatively prime to or divisors of primorial number(n).

The programs for A051271, there is no canonical definition to state claims against.
-/

/-! ## A051271.P13278558174722187888

`A000005(A002110(n+1))+A000010(A002110(n+1))`
-/

namespace A051271.P13278558174722187888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002110 (n + 1)).toNat + A000010 (A002110 (n + 1)).toNat

end

end A051271.P13278558174722187888

/-! ## A051271.P3311999031770813134

`∏[A006093(n+1)]+2^(n+1)`
-/

namespace A051271.P3311999031770813134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (2 ^ (n + 1) : ℤ)

end

end A051271.P3311999031770813134

/-! ## A051271.P8800884474607197055

`∏[record[A000010(n+1)]]+2^(n+1)`
-/

namespace A051271.P8800884474607197055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (2 ^ (n + 1) : ℤ)

end

end A051271.P8800884474607197055

/-! ## A051271.P14893027604596042698

`A005867(n+1)+A000079(n+1)`
-/

namespace A051271.P14893027604596042698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005867 (n + 1) + A000079 (n + 1)

end

end A051271.P14893027604596042698

/-! ## A051271.P5940947366402448605

`A000079(n+1)+∏[A006093(n+1)]`
-/

namespace A051271.P5940947366402448605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051271.P5940947366402448605

/-! ## A051271.P3643654419391023119

`A011782(n+2)+∏[A006093(n+1)]`
-/

namespace A051271.P3643654419391023119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 2) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051271.P3643654419391023119

/-! ## A051271.P5943577870249760255

`A000225(n+1)+A005867(n+1)+1`
-/

namespace A051271.P5943577870249760255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A005867 (n + 1) + 1)

end

end A051271.P5943577870249760255

/-! ## A051271.P11336558403042001507

`A275465(2*(n+1))+A005867(n+1)`
-/

namespace A051271.P11336558403042001507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275465 (2 * (n + 1)) + A005867 (n + 1)

end

end A051271.P11336558403042001507

/-! ## A051271.P7662639220486980945

`A000079(n+1)+∏[record[A000010(n+1)]]`
-/

namespace A051271.P7662639220486980945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051271.P7662639220486980945

/-! ## A051271.P16599019628287080986

`A000079(n+1)+∏[A000040(n+1)-1]`
-/

namespace A051271.P16599019628287080986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051271.P16599019628287080986

/-!
# A051272: Number of numbers neither relatively prime to nor divisors of primorial number(n).

The programs for A051272, there is no canonical definition to state claims against.
-/

/-! ## A051272.P18037893678165894194

`A045763(A002110(n+1))`
-/

namespace A051272.P18037893678165894194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (A002110 (n + 1)).toNat

end

end A051272.P18037893678165894194

/-! ## A051272.P813725616394559618

`A053144(n+1)-A126646(n)`
-/

namespace A051272.P813725616394559618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053144 (n + 1) - A126646 n

end

end A051272.P813725616394559618

/-! ## A051272.P8302509561263046954

`A053144(n+1)-∑[∑[A011782(n)]]`
-/

namespace A051272.P8302509561263046954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053144 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051272.P8302509561263046954

/-! ## A051272.P17779553966419687858

`A053144(n+1)-∑[A135530(2*n+1)]`
-/

namespace A051272.P17779553966419687858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053144 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051272.P17779553966419687858

/-! ## A051272.P13210396815827254139

`A002783(n+1)+A053144(n+1)-A027649(n+1)`
-/

namespace A051272.P13210396815827254139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002783 (n + 1) + (A053144 (n + 1) - A027649 (n + 1))

end

end A051272.P13210396815827254139

/-!
# A051273: Expansion of q^(-1/3) * b(q) * c(q) / a(q)^2 in powers of q where a(), b(), c() are cubic AGM theta functions.

The programs for A051273, there is no canonical definition to state claims against.
-/

/-! ## A051273.P17155363629473439702

`3*A328785(n)`
-/

namespace A051273.P17155363629473439702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A328785 n

end

end A051273.P17155363629473439702

/-!
# A051274: Expansion of (1+x^4)/((1-x^2)*(1-x^3)).

The programs for A051274, the canonical program `A051274.P9170261909361057786` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051274 has offset 0).

The definition of A051274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051274.P9170261909361057786

`a(n-6)+2` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=2, a(5)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051274

/-- `a(n-6)+2` -/
def P9170261909361057786.Spec : Prop :=
  ∀ n, (P9170261909361057786.a n : ℤ) = A051274 n

theorem P9170261909361057786.correct : P9170261909361057786.Spec := by
  intro n
  simp only [A051274]

end A051274

/-! ## A051274.P9552465611765006310

`Δ[ceil(n²/6)]`
-/

namespace A051274.P9552465611765006310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051274.P9552465611765006310

namespace A051274

/-- `Δ[ceil(n²/6)]` -/
def P9552465611765006310.Spec : Prop :=
  ∀ n, P9552465611765006310.a n = A051274 n

end A051274

/-! ## A051274.P3652774398407184533

`floor(n/3)+log2(gcd(2, n))`
-/

namespace A051274.P3652774398407184533
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 3⌋ : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A051274.P3652774398407184533

namespace A051274

/-- `floor(n/3)+log2(gcd(2, n))` -/
def P3652774398407184533.Spec : Prop :=
  ∀ n, P3652774398407184533.a n = (A051274 n : ℝ)

end A051274

/-! ## A051274.P11926810893644495550

`or(1, n)-∑[n²%3]`
-/

namespace A051274.P11926810893644495550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051274.P11926810893644495550

namespace A051274

/-- `or(1, n)-∑[n²%3]` -/
def P11926810893644495550.Spec : Prop :=
  ∀ n, P11926810893644495550.a n = A051274 n

end A051274

/-! ## A051274.P4085181614564520684

`char[lcm(2, n)]+floor(n/3)`
-/

namespace A051274.P4085181614564520684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌊(n : ℚ) / 3⌋

end

end A051274.P4085181614564520684

namespace A051274

/-- `char[lcm(2, n)]+floor(n/3)` -/
def P4085181614564520684.Spec : Prop :=
  ∀ n, P4085181614564520684.a n = A051274 n

end A051274

/-! ## A051274.P2049352962224871607

`∑[char[3*n]]-n%2`
-/

namespace A051274.P2049352962224871607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A051274.P2049352962224871607

namespace A051274

/-- `∑[char[3*n]]-n%2` -/
def P2049352962224871607.Spec : Prop :=
  ∀ n, P2049352962224871607.a n = A051274 n

end A051274

/-! ## A051274.P3714423008460684880

`ceil(or(1, xor(1, n)-1)/3)`
-/

namespace A051274.P3714423008460684880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 1 ((Nat.xor 1 n : ℤ) - 1) : ℚ) / 3⌉

end

end A051274.P3714423008460684880

namespace A051274

/-- `ceil(or(1, xor(1, n)-1)/3)` -/
def P3714423008460684880.Spec : Prop :=
  ∀ n, P3714423008460684880.a n = A051274 n

end A051274

/-! ## A051274.P7924395227877685865

`floor((n+1)%2+n/3)`
-/

namespace A051274.P7924395227877685865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) % 2 : ℕ) : ℚ) + (n : ℚ) / 3⌋

end

end A051274.P7924395227877685865

namespace A051274

/-- `floor((n+1)%2+n/3)` -/
def P7924395227877685865.Spec : Prop :=
  ∀ n, P7924395227877685865.a n = A051274 n

end A051274

/-! ## A051274.P4289117010170884465

`floor(and(1, n+1)+n/3)`
-/

namespace A051274.P4289117010170884465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 1 (n + 1) : ℚ) + (n : ℚ) / 3⌋

end

end A051274.P4289117010170884465

namespace A051274

/-- `floor(and(1, n+1)+n/3)` -/
def P4289117010170884465.Spec : Prop :=
  ∀ n, P4289117010170884465.a n = A051274 n

end A051274

/-! ## A051274.P16176428986663817310

`ceil((n+1)/3-and(1, n))`
-/

namespace A051274.P16176428986663817310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 3 - (Nat.land 1 n : ℚ)⌉

end

end A051274.P16176428986663817310

namespace A051274

/-- `ceil((n+1)/3-and(1, n))` -/
def P16176428986663817310.Spec : Prop :=
  ∀ n, P16176428986663817310.a n = A051274 n

end A051274

/-! ## A051274.P14151809542321560171

`round((n+2)/3-and(1, n))`
-/

namespace A051274.P14151809542321560171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / 3 - (Nat.land 1 n : ℚ))

end

end A051274.P14151809542321560171

namespace A051274

/-- `round((n+2)/3-and(1, n))` -/
def P14151809542321560171.Spec : Prop :=
  ∀ n, P14151809542321560171.a n = A051274 n

end A051274

/-! ## A051274.P8602485270521397571

`floor(or(1, n)-2*n/3)`
-/

namespace A051274.P8602485270521397571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 n : ℚ) - (2 * n : ℚ) / 3⌋

end

end A051274.P8602485270521397571

namespace A051274

/-- `floor(or(1, n)-2*n/3)` -/
def P8602485270521397571.Spec : Prop :=
  ∀ n, P8602485270521397571.a n = A051274 n

end A051274

/-! ## A051274.P9156773895513596018

`or(1, n)-ceil(2*n/3)`
-/

namespace A051274.P9156773895513596018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - ⌈2 * ((n : ℚ) / 3)⌉

end

end A051274.P9156773895513596018

namespace A051274

/-- `or(1, n)-ceil(2*n/3)` -/
def P9156773895513596018.Spec : Prop :=
  ∀ n, P9156773895513596018.a n = A051274 n

end A051274

/-! ## A051274.P4229601007474227567

`round(or(1, n)-(2*n+1)/3)`
-/

namespace A051274.P4229601007474227567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 n : ℚ) - (2 * n + 1 : ℚ) / 3)

end

end A051274.P4229601007474227567

namespace A051274

/-- `round(or(1, n)-(2*n+1)/3)` -/
def P4229601007474227567.Spec : Prop :=
  ∀ n, P4229601007474227567.a n = A051274 n

end A051274

/-! ## A051274.P13372290791095246758

`round(2*n/3)-a(n-1)` with `a(0)=1`
-/

namespace A051274.P13372290791095246758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) - a (n - 1)

end

end A051274.P13372290791095246758

namespace A051274

/-- `round(2*n/3)-a(n-1)` -/
def P13372290791095246758.Spec : Prop :=
  ∀ n, P13372290791095246758.a n = A051274 n

end A051274

/-! ## A051274.P916969567481666941

`floor((∑[2-a(n-1)]-1)/3)` with `a(0)=4`
-/

namespace A051274.P916969567481666941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 3⌋

end

end A051274.P916969567481666941

namespace A051274

/-- `floor((∑[2-a(n-1)]-1)/3)` -/
def P916969567481666941.Spec : Prop :=
  ∀ n, P916969567481666941.a n = A051274 n

end A051274

/-! ## A051274.P4978135768917907497

`floor(n/2-floor(a(n-1)/2))` with `a(0)=1`
-/

namespace A051274.P4978135768917907497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) / 2 - (⌊(a (n - 1) : ℚ) / 2⌋ : ℚ)⌋

end

end A051274.P4978135768917907497

namespace A051274

/-- `floor(n/2-floor(a(n-1)/2))` -/
def P4978135768917907497.Spec : Prop :=
  ∀ n, P4978135768917907497.a n = A051274 n

end A051274

/-! ## A051274.P14622438717789586886

`1-(a(a(n-1)%2)-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A051274.P14622438717789586886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  1 - (a (Int.tmod (a (n - 1)) 2).toNat - a (n - 2))

end

end A051274.P14622438717789586886

namespace A051274

/-- `1-(a(a(n-1)%2)-a(n-2))` -/
def P14622438717789586886.Spec : Prop :=
  ∀ n, P14622438717789586886.a n = A051274 n

end A051274

/-! ## A051274.P14147129589753401420

`A004396(A028242(n))`
-/

namespace A051274.P14147129589753401420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A028242 n).toNat

end

end A051274.P14147129589753401420

namespace A051274

/-- `A004396(A028242(n))` -/
def P14147129589753401420.Spec : Prop :=
  ∀ n, P14147129589753401420.a n = A051274 n

end A051274

/-! ## A051274.P6912311556030186884

`A008615(n)+A008612(n)`
-/

namespace A051274.P6912311556030186884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n + A008612 n

end

end A051274.P6912311556030186884

namespace A051274

/-- `A008615(n)+A008612(n)` -/
def P6912311556030186884.Spec : Prop :=
  ∀ n, P6912311556030186884.a n = A051274 n

end A051274

/-!
# A051275: Expansion of (1+x^2)/((1-x^2)*(1-x^3)).

The programs for A051275, the canonical program `A051275.P12859601666256076836` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051275 has offset 0).

The definition of A051275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051275.P12859601666256076836

`2*floor(n/2)+floor((n+4)/3)-n`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051275

/-- `2*floor(n/2)+floor((n+4)/3)-n` -/
def P12859601666256076836.Spec : Prop :=
  ∀ n, P12859601666256076836.a n = A051275 n

theorem P12859601666256076836.correct : P12859601666256076836.Spec := by
  intro n
  simp only [A051275]

end A051275

/-! ## A051275.P3694493285245814776

`ceil(abs(Δ[lcm(2, n)]/3))`
-/

namespace A051275.P3694493285245814776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3|⌉

end

end A051275.P3694493285245814776

namespace A051275

/-- `ceil(abs(Δ[lcm(2, n)]/3))` -/
def P3694493285245814776.Spec : Prop :=
  ∀ n, P3694493285245814776.a n = A051275 n

end A051275

/-! ## A051275.P12491535578675584296

`floor((gcd(2, n)²+n)/3)`
-/

namespace A051275.P12491535578675584296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 2 n ^ 2 + n : ℚ) / 3⌋

end

end A051275.P12491535578675584296

namespace A051275

/-- `floor((gcd(2, n)²+n)/3)` -/
def P12491535578675584296.Spec : Prop :=
  ∀ n, P12491535578675584296.a n = A051275 n

end A051275

/-! ## A051275.P15624477558108639979

`round((n+1)%2+n/3)`
-/

namespace A051275.P15624477558108639979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1) % 2 : ℕ) : ℚ) + (n : ℚ) / 3)

end

end A051275.P15624477558108639979

namespace A051275

/-- `round((n+1)%2+n/3)` -/
def P15624477558108639979.Spec : Prop :=
  ∀ n, P15624477558108639979.a n = A051275 n

end A051275

/-! ## A051275.P8985466802457888157

`floor((n+4)/3-n%2)`
-/

namespace A051275.P8985466802457888157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 4 : ℚ) / 3 - ((n % 2 : ℕ) : ℚ)⌋

end

end A051275.P8985466802457888157

namespace A051275

/-- `floor((n+4)/3-n%2)` -/
def P8985466802457888157.Spec : Prop :=
  ∀ n, P8985466802457888157.a n = A051275 n

end A051275

/-! ## A051275.P7116944895917647374

`round(and(1, n+1)+n/3)`
-/

namespace A051275.P7116944895917647374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.land 1 (n + 1) : ℚ) + (n : ℚ) / 3)

end

end A051275.P7116944895917647374

namespace A051275

/-- `round(and(1, n+1)+n/3)` -/
def P7116944895917647374.Spec : Prop :=
  ∀ n, P7116944895917647374.a n = A051275 n

end A051275

/-! ## A051275.P9239555892291241525

`ceil((n+2)/3-and(1, n))`
-/

namespace A051275.P9239555892291241525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) / 3 - (Nat.land 1 n : ℚ)⌉

end

end A051275.P9239555892291241525

namespace A051275

/-- `ceil((n+2)/3-and(1, n))` -/
def P9239555892291241525.Spec : Prop :=
  ∀ n, P9239555892291241525.a n = A051275 n

end A051275

/-! ## A051275.P16483686686014193431

`round(or(1, n)-2*n/3)`
-/

namespace A051275.P16483686686014193431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 n : ℚ) - (2 * n : ℚ) / 3)

end

end A051275.P16483686686014193431

namespace A051275

/-- `round(or(1, n)-2*n/3)` -/
def P16483686686014193431.Spec : Prop :=
  ∀ n, P16483686686014193431.a n = A051275 n

end A051275

/-! ## A051275.P7383531685869597380

`floor((gcd(4, n*n)+n)/3)`
-/

namespace A051275.P7383531685869597380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 4 (n * n) + n : ℚ) / 3⌋

end

end A051275.P7383531685869597380

namespace A051275

/-- `floor((gcd(4, n*n)+n)/3)` -/
def P7383531685869597380.Spec : Prop :=
  ∀ n, P7383531685869597380.a n = A051275 n

end A051275

/-! ## A051275.P7192230887605601783

`floor(∑[2-a(n-1)]/3)` with `a(0)=4`
-/

namespace A051275.P7192230887605601783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A051275.P7192230887605601783

namespace A051275

/-- `floor(∑[2-a(n-1)]/3)` -/
def P7192230887605601783.Spec : Prop :=
  ∀ n, P7192230887605601783.a n = A051275 n

end A051275

/-! ## A051275.P11495213945824856209

`floor(and(1, n+1)+(n+1)/3)`
-/

namespace A051275.P11495213945824856209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 1 (n + 1) : ℚ) + (n + 1 : ℚ) / 3⌋

end

end A051275.P11495213945824856209

namespace A051275

/-- `floor(and(1, n+1)+(n+1)/3)` -/
def P11495213945824856209.Spec : Prop :=
  ∀ n, P11495213945824856209.a n = A051275 n

end A051275

/-! ## A051275.P7831258311520093814

`ceil(or(1, n)-(2*n+1)/3)`
-/

namespace A051275.P7831258311520093814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 n : ℚ) - (2 * n + 1 : ℚ) / 3⌉

end

end A051275.P7831258311520093814

namespace A051275

/-- `ceil(or(1, n)-(2*n+1)/3)` -/
def P7831258311520093814.Spec : Prop :=
  ∀ n, P7831258311520093814.a n = A051275 n

end A051275

/-! ## A051275.P14389702736282434606

`floor(2*n/3+1-a(n-1))` with `a(0)=1`
-/

namespace A051275.P14389702736282434606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊2 * ((n : ℚ) / 3) + (1 - a (n - 1) : ℚ)⌋

end

end A051275.P14389702736282434606

namespace A051275

/-- `floor(2*n/3+1-a(n-1))` -/
def P14389702736282434606.Spec : Prop :=
  ∀ n, P14389702736282434606.a n = A051275 n

end A051275

/-! ## A051275.P6051791780425570097

`ceil((2*n+1)/3-a(n-1))` with `a(0)=1`
-/

namespace A051275.P6051791780425570097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(2 * n + 1 : ℚ) / 3 - (a (n - 1) : ℚ)⌉

end

end A051275.P6051791780425570097

namespace A051275

/-- `ceil((2*n+1)/3-a(n-1))` -/
def P6051791780425570097.Spec : Prop :=
  ∀ n, P6051791780425570097.a n = A051275 n

end A051275

/-! ## A051275.P7643562792724526867

`floor(1-(a(n-1)+n/3)+n)` with `a(0)=1`
-/

namespace A051275.P7643562792724526867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊1 - ((a (n - 1) : ℚ) + (n : ℚ) / 3) + (n : ℚ)⌋

end

end A051275.P7643562792724526867

namespace A051275

/-- `floor(1-(a(n-1)+n/3)+n)` -/
def P7643562792724526867.Spec : Prop :=
  ∀ n, P7643562792724526867.a n = A051275 n

end A051275

/-! ## A051275.P15081595885674039851

`floor(1-a(n-1)-(n/3-n))` with `a(0)=1`
-/

namespace A051275.P15081595885674039851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(1 - a (n - 1) : ℚ) - ((n : ℚ) / 3 - (n : ℚ))⌋

end

end A051275.P15081595885674039851

namespace A051275

/-- `floor(1-a(n-1)-(n/3-n))` -/
def P15081595885674039851.Spec : Prop :=
  ∀ n, P15081595885674039851.a n = A051275 n

end A051275

/-! ## A051275.P8088986764461211055

`abs(∑[A168052(n)])`
-/

namespace A051275.P8088986764461211055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A051275.P8088986764461211055

namespace A051275

/-- `abs(∑[A168052(n)])` -/
def P8088986764461211055.Spec : Prop :=
  ∀ n, P8088986764461211055.a n = A051275 n

end A051275

/-! ## A051275.P16078136239682921472

`A004396(A117572(n))`
-/

namespace A051275.P16078136239682921472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A117572 n).toNat

end

end A051275.P16078136239682921472

namespace A051275

/-- `A004396(A117572(n))` -/
def P16078136239682921472.Spec : Prop :=
  ∀ n, P16078136239682921472.a n = A051275 n

end A051275

/-! ## A051275.P14061805679451964882

`A004523(A028242(n)+1)`
-/

namespace A051275.P14061805679451964882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A028242 n + 1).toNat

end

end A051275.P14061805679451964882

namespace A051275

/-- `A004523(A028242(n)+1)` -/
def P14061805679451964882.Spec : Prop :=
  ∀ n, P14061805679451964882.a n = A051275 n

end A051275

/-!
# A051276: Nonzero coefficients in one of the 5-adic expansions of sqrt(-1).

The programs for A051276, the canonical program `A051276.P61944378441826423` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051276 has offset 0).

The definition of A051276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051276.P61944378441826423

`gcd(12, Δ[A034935(n)])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A051276

/-- `gcd(12, Δ[A034935(n)])` -/
def P61944378441826423.Spec : Prop :=
  ∀ n, (P61944378441826423.a n : ℤ) = A051276 n

theorem P61944378441826423.correct : P61944378441826423.Spec := by
  intro n
  simp only [A051276]

end A051276

/-! ## A051276.P10611734592748210682

`A210850(lt[0, A210850(n)])`
-/

namespace A051276.P10611734592748210682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A051276.P10611734592748210682

namespace A051276

/-- `A210850(lt[0, A210850(n)])` -/
def P10611734592748210682.Spec : Prop :=
  ∀ n, P10611734592748210682.a n = A051276 n

end A051276

/-! ## A051276.P12643628322133614423

`A210850(val(Δ[A034935(n)], 5))`
-/

namespace A051276.P12643628322133614423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 (SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 5)

end

end A051276.P12643628322133614423

namespace A051276

/-- `A210850(val(Δ[A034935(n)], 5))` -/
def P12643628322133614423.Spec : Prop :=
  ∀ n, P12643628322133614423.a n = A051276 n

end A051276

/-! ## A051276.P290904935113896024

`A210850(comp[eq[0, A210850(n)]])`
-/

namespace A051276.P290904935113896024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A051276.P290904935113896024

namespace A051276

/-- `A210850(comp[eq[0, A210850(n)]])` -/
def P290904935113896024.Spec : Prop :=
  ∀ n, P290904935113896024.a n = A051276 n

end A051276

/-! ## A051276.P5134925113776062031

`A210850(eq[1, gcd(5, A210850(n))])`
-/

namespace A051276.P5134925113776062031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A210850 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A051276.P5134925113776062031

namespace A051276

/-- `A210850(eq[1, gcd(5, A210850(n))])` -/
def P5134925113776062031.Spec : Prop :=
  ∀ n, P5134925113776062031.a n = A051276 n

end A051276

/-! ## A051276.P11755299665331868813

`A210850(eq[1, ceil(A210850(n)/4)])`
-/

namespace A051276.P11755299665331868813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A210850 n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051276.P11755299665331868813

namespace A051276

/-- `A210850(eq[1, ceil(A210850(n)/4)])` -/
def P11755299665331868813.Spec : Prop :=
  ∀ n, P11755299665331868813.a n = A051276 n

end A051276

/-!
# A051277: Coefficients in 7-adic expansion of sqrt(2).

The programs for A051277, there is no canonical definition to state claims against.
-/

/-! ## A051277.P1450230232853974246

`A000007(n)+6-A290558(n)`
-/

namespace A051277.P1450230232853974246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (6 - A290558 n)

end

end A051277.P1450230232853974246

/-! ## A051277.P2416039528913389432

`and(7, A040210(n)-A290558(n))`
-/

namespace A051277.P2416039528913389432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A040210 n - A290558 n)

end

end A051277.P2416039528913389432

/-! ## A051277.P6245163367456996093

`val(A000040(n+1), 2)+6-A290558(n)`
-/

namespace A051277.P6245163367456996093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ) + (6 - A290558 n)

end

end A051277.P6245163367456996093

/-! ## A051277.P4800693982098721612

`A290794(n)+A290795(n)-A290558(n)`
-/

namespace A051277.P4800693982098721612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290794 n + (A290795 n - A290558 n)

end

end A051277.P4800693982098721612

/-! ## A051277.P1252662104635393524

`A290798(n)+A290799(n)-A290558(n)`
-/

namespace A051277.P1252662104635393524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290798 n + (A290799 n - A290558 n)

end

end A051277.P1252662104635393524

/-! ## A051277.P3920589542494326305

`A290794(2*n)-(A290558(n)-A290795(2*n))`
-/

namespace A051277.P3920589542494326305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290794 (2 * n) - (A290558 n - A290795 (2 * n))

end

end A051277.P3920589542494326305

/-! ## A051277.P16116262712471235622

`A290796(n)+A290797(n)-A290558(n)`
-/

namespace A051277.P16116262712471235622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290796 n + (A290797 n - A290558 n)

end

end A051277.P16116262712471235622

/-!
# A051278: Numbers n such that n = k/d(k) has a unique solution, where d(k) = number of divisors of k.

The programs for A051278, there is no canonical definition to state claims against.
-/

/-! ## A051278.P4211973408830573419

`eq[1, A051521(n+1)]+1`
-/

namespace A051278.P4211973408830573419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051278.P4211973408830573419

/-! ## A051278.P10965666379032439230

`eq[1, A051521(A028310(n))]`
-/

namespace A051278.P10965666379032439230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051278.P10965666379032439230

/-! ## A051278.P8380980399695653460

`A020725(eq[1, A051521(n+1)])`
-/

namespace A051278.P8380980399695653460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051278.P8380980399695653460

/-! ## A051278.P13336805824092168304

`A114637(eq[1, A051521(n+1)])`
-/

namespace A051278.P13336805824092168304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051278.P13336805824092168304

/-! ## A051278.P1647165325988007585

`eq[1, A051521(A065033(2*n))]`
-/

namespace A051278.P1647165325988007585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051278.P1647165325988007585

/-! ## A051278.P14910566245626449050

`eq[1, A051521(A123108(2*n))]`
-/

namespace A051278.P14910566245626449050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051278.P14910566245626449050

/-! ## A051278.P15835479634963352786

`eq[1, A051521(A000007(n)+n)]`
-/

namespace A051278.P15835479634963352786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051278.P15835479634963352786

/-! ## A051278.P2727509724159466806

`A113484(eq[1, A051521(n+1)])`
-/

namespace A051278.P2727509724159466806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051278.P2727509724159466806

/-! ## A051278.P4670180584386602833

`eq[1, A051521(A233583(n+1))]`
-/

namespace A051278.P4670180584386602833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051278.P4670180584386602833

/-!
# A051279: Numbers n such that n = k/d(k) has exactly 2 solutions, where d(k) = number of divisors of k.

The programs for A051279, there is no canonical definition to state claims against.
-/

/-! ## A051279.P16537356745025596133

`eq[2, A051521(n+1)]+1`
-/

namespace A051279.P16537356745025596133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051279.P16537356745025596133

/-! ## A051279.P11931131858707405268

`eq[A040001(2*n), A051521(A028310(n))]`
-/

namespace A051279.P11931131858707405268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051279.P11931131858707405268

/-! ## A051279.P11457332099785474326

`eq[A051521(A028310(n)), A107279(2*n)]`
-/

namespace A051279.P11457332099785474326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051279.P11457332099785474326

/-! ## A051279.P1385730919703276293

`eq[A040001(2*n), A051521(A123108(2*n))]`
-/

namespace A051279.P1385730919703276293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051279.P1385730919703276293

/-!
# A051280: Numbers n such that n = k/d(k) has exactly 3 solutions, where d(k) = number of divisors of k.

The programs for A051280, there is no canonical definition to state claims against.
-/

/-! ## A051280.P5860565607502579876

`1+eq[3, A051521(n+1)]`
-/

namespace A051280.P5860565607502579876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051280.P5860565607502579876

/-! ## A051280.P5816713086512414130

`lt[2, A051521(A028310(n))]`
-/

namespace A051280.P5816713086512414130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A051280.P5816713086512414130

/-! ## A051280.P2729500609192964207

`A020725(lt[2, A051521(n+1)])`
-/

namespace A051280.P2729500609192964207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A051280.P2729500609192964207

/-! ## A051280.P14834640627606601248

`A020725(eq[3, A051521(n+1)])`
-/

namespace A051280.P14834640627606601248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051280.P14834640627606601248

/-! ## A051280.P4507844674526047706

`A114637(lt[2, A051521(n+1)])`
-/

namespace A051280.P4507844674526047706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A051280.P4507844674526047706

/-! ## A051280.P4232658556012459224

`A114637(eq[3, A051521(n+1)])`
-/

namespace A051280.P4232658556012459224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051280.P4232658556012459224

/-! ## A051280.P1048650280277940682

`eq[3, A051521(A123108(2*n))]`
-/

namespace A051280.P1048650280277940682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051280.P1048650280277940682

/-! ## A051280.P10578011396072488917

`eq[3, A051521(A000007(n)+n)]`
-/

namespace A051280.P10578011396072488917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051280.P10578011396072488917

/-!
# A051281: Sum of divisors of n, sigma(n) (A000203), is a power of number of divisors of n, d(n) (A000005).

The programs for A051281, there is no canonical definition to state claims against.
-/

/-! ## A051281.P17414417659552361982

`A046528(A228853(n+1))%A010348(3*n+5)`
-/

namespace A051281.P17414417659552361982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046528 (A228853 (n + 1)).toNat) (A010348 (3 * n + 5))

end

end A051281.P17414417659552361982

/-! ## A051281.P17480943954199851146

`A375228(A001901(n+1))`
-/

namespace A051281.P17480943954199851146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375228 (A001901 (n + 1)).toNat

end

end A051281.P17480943954199851146

/-! ## A051281.P14471450653795747973

`∑{d}[A227927(n+1), A319690(#)]`
-/

namespace A051281.P14471450653795747973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A319690 d

end

end A051281.P14471450653795747973

/-!
# A051282: 2-adic valuation of A025487: largest k such that 2^k divides A025487(n), where A025487 gives products of primorials.

The programs for A051282, there is no canonical definition to state claims against.
-/

/-! ## A051282.P15496661494719008890

`A051903(A025487(n+1))`
-/

namespace A051282.P15496661494719008890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A025487 (n + 1)).toNat

end

end A051282.P15496661494719008890

/-! ## A051282.P8928594075918277249

`val(A330681(n+1), 2)`
-/

namespace A051282.P8928594075918277249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A330681 (n + 1)).toNat 2

end

end A051282.P8928594075918277249

/-! ## A051282.P3094889248267916398

`val(A233819(n+1), 3)`
-/

namespace A051282.P3094889248267916398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A233819 (n + 1)).toNat 3

end

end A051282.P3094889248267916398

/-! ## A051282.P1633892852683181736

`A061395(A181820(n+1))`
-/

namespace A051282.P1633892852683181736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A181820 (n + 1)).toNat

end

end A051282.P1633892852683181736

/-! ## A051282.P18244754835291342573

`val(A181817(n+1)/A181816(n+1), 2)`
-/

namespace A051282.P18244754835291342573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ))).toNat 2

end

end A051282.P18244754835291342573

/-! ## A051282.P12142501452330523162

`val(record[A329899(n+1)], 2)`
-/

namespace A051282.P12142501452330523162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A051282.P12142501452330523162

/-! ## A051282.P10393576070029452166

`val(record[A051466(n+2)], 2)`
-/

namespace A051282.P10393576070029452166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A051282.P10393576070029452166

/-! ## A051282.P9588868045430340254

`val(A307107(A329898(n+1)), 2)`
-/

namespace A051282.P9588868045430340254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A307107 (A329898 (n + 1)).toNat).toNat 2

end

end A051282.P9588868045430340254

/-! ## A051282.P1205062605854312517

`val(gcd(A181817(n+1), A324577(n+1)), 2)`
-/

namespace A051282.P1205062605854312517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.gcd (A181817 (n + 1)) (A324577 (n + 1))) 2

end

end A051282.P1205062605854312517

/-! ## A051282.P7190338304214188609

`∑{e}[A181815(n+1), #]`
-/

namespace A051282.P7190338304214188609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A051282.P7190338304214188609

/-! ## A051282.P11557626703157822614

`A060826(A330683(n+1))`
-/

namespace A051282.P11557626703157822614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060826 (A330683 (n + 1)).toNat

end

end A051282.P11557626703157822614

/-! ## A051282.P14269119077280413701

`A290251(A329905(n+1))`
-/

namespace A051282.P14269119077280413701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A329905 (n + 1)).toNat

end

end A051282.P14269119077280413701

/-! ## A051282.P13173161583795520609

`A001222(A181815(n+1))`
-/

namespace A051282.P13173161583795520609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A181815 (n + 1)).toNat

end

end A051282.P13173161583795520609

/-! ## A051282.P2090169955459469844

`A001222(A329900(record[A051466(n+2)]))`
-/

namespace A051282.P2090169955459469844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A329900 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A051282.P2090169955459469844

/-!
# A051283: Numbers k such that if one writes k = Product p_i^e_i (p_i primes) and P = max p_i^e_i, then k/P > P.

The programs for A051283, the canonical program `A051283.P12676069233016146012` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051283 has offset 1).

The definition of A051283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051283.P12676069233016146012

`eq[1, A354996(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051283

/-- `eq[1, A354996(n+1)]+1` -/
def P12676069233016146012.Spec : Prop :=
  ∀ n, (P12676069233016146012.a n : ℤ) = A051283 (n + 1)

theorem P12676069233016146012.correct : P12676069233016146012.Spec := by
  intro n
  simp only [A051283, Nat.add_sub_cancel]

end A051283

/-! ## A051283.P7878445632337608637

`lt[A034699(n+1)², n]+1`
-/

namespace A051283.P7878445632337608637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A051283.P7878445632337608637

namespace A051283

/-- `lt[A034699(n+1)², n]+1` -/
def P7878445632337608637.Spec : Prop :=
  ∀ n, (P7878445632337608637.a n : ℤ) = A051283 (n + 1)

end A051283

/-! ## A051283.P12609492289400111212

`filter[A085236(n+1), A354996(#)]`
-/

namespace A051283.P12609492289400111212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A051283.P12609492289400111212

namespace A051283

/-- `filter[A085236(n+1), A354996(#)]` -/
def P12609492289400111212.Spec : Prop :=
  ∀ n, P12609492289400111212.a n = A051283 (n + 1)

end A051283

/-! ## A051283.P9623535513094546916

`filter[A027854(n+1), A354996(#)]`
-/

namespace A051283.P9623535513094546916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A051283.P9623535513094546916

namespace A051283

/-- `filter[A027854(n+1), A354996(#)]` -/
def P9623535513094546916.Spec : Prop :=
  ∀ n, P9623535513094546916.a n = A051283 (n + 1)

end A051283

/-! ## A051283.P12093138735224057177

`filter[A063539(n+2), A354996(#)]`
-/

namespace A051283.P12093138735224057177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A051283.P12093138735224057177

namespace A051283

/-- `filter[A063539(n+2), A354996(#)]` -/
def P12093138735224057177.Spec : Prop :=
  ∀ n, P12093138735224057177.a n = A051283 (n + 1)

end A051283

/-! ## A051283.P17340013096324917774

`filter[A048098(n+1), A354996(#)]`
-/

namespace A051283.P17340013096324917774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A051283.P17340013096324917774

namespace A051283

/-- `filter[A048098(n+1), A354996(#)]` -/
def P17340013096324917774.Spec : Prop :=
  ∀ n, P17340013096324917774.a n = A051283 (n + 1)

end A051283

/-! ## A051283.P4693401231805907675

`filter[A289484(n+1), A354996(#)]`
-/

namespace A051283.P4693401231805907675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A051283.P4693401231805907675

namespace A051283

/-- `filter[A289484(n+1), A354996(#)]` -/
def P4693401231805907675.Spec : Prop :=
  ∀ n, P4693401231805907675.a n = A051283 (n + 1)

end A051283

/-! ## A051283.P11055706390864093752

`filter[A000977(n+1), A354996(#)]`
-/

namespace A051283.P11055706390864093752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A051283.P11055706390864093752

namespace A051283

/-- `filter[A000977(n+1), A354996(#)]` -/
def P11055706390864093752.Spec : Prop :=
  ∀ n, P11055706390864093752.a n = A051283 (n + 1)

end A051283

/-! ## A051283.P3568192455786565453

`lt[1, A001221(A354933(n+1))]+1`
-/

namespace A051283.P3568192455786565453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A354933 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A051283.P3568192455786565453

namespace A051283

/-- `lt[1, A001221(A354933(n+1))]+1` -/
def P3568192455786565453.Spec : Prop :=
  ∀ n, (P3568192455786565453.a n : ℤ) = A051283 (n + 1)

end A051283

/-! ## A051283.P9246787665694481579

`filter[A122181(n+1), A354996(#)]`
-/

namespace A051283.P9246787665694481579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A051283.P9246787665694481579

namespace A051283

/-- `filter[A122181(n+1), A354996(#)]` -/
def P9246787665694481579.Spec : Prop :=
  ∀ n, P9246787665694481579.a n = A051283 (n + 1)

end A051283

/-! ## A051283.P15742960337343978658

`filter[A376384(n+1), A354996(#)]`
-/

namespace A051283.P15742960337343978658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A051283.P15742960337343978658

namespace A051283

/-- `filter[A376384(n+1), A354996(#)]` -/
def P15742960337343978658.Spec : Prop :=
  ∀ n, P15742960337343978658.a n = A051283 (n + 1)

end A051283

/-! ## A051283.P14213659625437455088

`filter[A307517(n+1), A354996(#)]`
-/

namespace A051283.P14213659625437455088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A051283.P14213659625437455088

namespace A051283

/-- `filter[A307517(n+1), A354996(#)]` -/
def P14213659625437455088.Spec : Prop :=
  ∀ n, P14213659625437455088.a n = A051283 (n + 1)

end A051283

/-! ## A051283.P13493518080296518452

`filter[A058080(n+1), A354996(#)]`
-/

namespace A051283.P13493518080296518452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A051283.P13493518080296518452

namespace A051283

/-- `filter[A058080(n+1), A354996(#)]` -/
def P13493518080296518452.Spec : Prop :=
  ∀ n, P13493518080296518452.a n = A051283 (n + 1)

end A051283

/-! ## A051283.P4220240597166108882

`filter[A033942(n+1), A354996(#)]`
-/

namespace A051283.P4220240597166108882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A051283.P4220240597166108882

namespace A051283

/-- `filter[A033942(n+1), A354996(#)]` -/
def P4220240597166108882.Spec : Prop :=
  ∀ n, P4220240597166108882.a n = A051283 (n + 1)

end A051283

/-! ## A051283.P4930182405890526917

`filter[A253235(n+1), A354996(#)]`
-/

namespace A051283.P4930182405890526917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A051283.P4930182405890526917

namespace A051283

/-- `filter[A253235(n+1), A354996(#)]` -/
def P4930182405890526917.Spec : Prop :=
  ∀ n, P4930182405890526917.a n = A051283 (n + 1)

end A051283

/-! ## A051283.P2499329937041612213

`filter[A070537(n+1), A354996(#)]`
-/

namespace A051283.P2499329937041612213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A051283.P2499329937041612213

namespace A051283

/-- `filter[A070537(n+1), A354996(#)]` -/
def P2499329937041612213.Spec : Prop :=
  ∀ n, P2499329937041612213.a n = A051283 (n + 1)

end A051283

/-! ## A051283.P17894505717518784446

`filter[A267894(n+1), A354996(#)]`
-/

namespace A051283.P17894505717518784446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A051283.P17894505717518784446

namespace A051283

/-- `filter[A267894(n+1), A354996(#)]` -/
def P17894505717518784446.Spec : Prop :=
  ∀ n, P17894505717518784446.a n = A051283 (n + 1)

end A051283

/-! ## A051283.P17116531939471064148

`filter[A093642(n+1), A354996(#)]`
-/

namespace A051283.P17116531939471064148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A051283.P17116531939471064148

namespace A051283

/-- `filter[A093642(n+1), A354996(#)]` -/
def P17116531939471064148.Spec : Prop :=
  ∀ n, P17116531939471064148.a n = A051283 (n + 1)

end A051283

/-! ## A051283.P17530306693156083082

`filter[A105441(n+1), A354996(#)]`
-/

namespace A051283.P17530306693156083082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354996 (f1 j).toNat = 1) n)

end

end A051283.P17530306693156083082

namespace A051283

/-- `filter[A105441(n+1), A354996(#)]` -/
def P17530306693156083082.Spec : Prop :=
  ∀ n, P17530306693156083082.a n = A051283 (n + 1)

end A051283

/-! ## A051283.P14953281560631391441

`record[A072504(n+30)]`
-/

namespace A051283.P14953281560631391441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 30)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051283.P14953281560631391441

namespace A051283

/-- `record[A072504(n+30)]` -/
def P14953281560631391441.Spec : Prop :=
  ∀ n, P14953281560631391441.a n = A051283 (n + 1)

end A051283

/-!
# A051284: a(n) is the number k, 2^n < k < 2^(n+1), such that k/c(k) is a minimum in the interval, where c(k) is Hofstadter-Conway sequence A004001.

The programs for A051284, there is no canonical definition to state claims against.
-/

/-! ## A051284.P8830251676126906825

`A243074(A007283(n)-A361801(n))`
-/

namespace A051284.P8830251676126906825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (A007283 n - A361801 n).toNat

end

end A051284.P8830251676126906825

/-! ## A051284.P13483014907245374297

`A064989(10*3^n)-A361801(n)`
-/

namespace A051284.P13483014907245374297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (10 * 3 ^ n) - A361801 n

end

end A051284.P13483014907245374297

/-! ## A051284.P11423657803041205219

`A120229(A000079(n))-A361801(n)`
-/

namespace A051284.P11423657803041205219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120229 (A000079 n).toNat - A361801 n

end

end A051284.P11423657803041205219

/-!
# A051285: a(1) = 1, a(2) = 2, a(n) = a(n-1)^a(n-2).

The programs for A051285, the canonical program `A051285.P3514926833785302795` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051285 has offset 1).

The definition of A051285 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^a(n-1)` (program `A051285.P3514926833785302795`, by `A051285.P3514926833785302795.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051285.P3514926833785302795

`2^a(n-1)` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051285

/-- `2^a(n-1)` -/
def P3514926833785302795.Spec : Prop :=
  ∀ n, (P3514926833785302795.a n : ℤ) = A051285 (n + 1)

theorem P3514926833785302795.correct : P3514926833785302795.Spec := by
  intro n
  simp only [A051285, Nat.add_sub_cancel]

end A051285

/-! ## A051285.P11535504292815756770

`root(a(n-1), 1/a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A051285.P11535504292815756770
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) ^ (1 / (1 / a (n - 2)))

end

end A051285.P11535504292815756770

namespace A051285

/-- `root(a(n-1), 1/a(n-2))` -/
def P11535504292815756770.Spec : Prop :=
  ∀ n, P11535504292815756770.a n = (A051285 (n + 1) : ℝ)

end A051285

/-! ## A051285.P8057191915670870650

`ratio[Δ[A000643(n+1)]]`
-/

namespace A051285.P8057191915670870650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000643 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A051285.P8057191915670870650

namespace A051285

/-- `ratio[Δ[A000643(n+1)]]` -/
def P8057191915670870650.Spec : Prop :=
  ∀ n, P8057191915670870650.a n = (A051285 (n + 1) : ℚ)

end A051285

/-!
# A051286: Whitney number of level n of the lattice of the ideals of the fence of order 2n.

The programs for A051286, there is no canonical definition to state claims against.
-/

/-! ## A051286.P14012707139124465373

`A077419(2*n)`
-/

namespace A051286.P14012707139124465373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077419 (2 * n)

end

end A051286.P14012707139124465373

/-! ## A051286.P14253051039215618034

`A081207(n)-a(n-1)` with `a(0)=1`
-/

namespace A051286.P14253051039215618034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081207 n - a (n - 1)

end

end A051286.P14253051039215618034

/-! ## A051286.P8586881295672812175

`A051292(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A051286.P8586881295672812175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A051292 n + a (n - 2)

end

end A051286.P8586881295672812175

/-! ## A051286.P10809147302948276053

`or(char[1], A077419(A004277(n)))`
-/

namespace A051286.P10809147302948276053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A077419 (A004277 n).toNat)

end

end A051286.P10809147302948276053

/-! ## A051286.P3021680689147834028

`A167639(n+2)+Δ[A167639(n)]`
-/

namespace A051286.P3021680689147834028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167639 (n + 2) + (f1 (n + 1) - f1 n)

end

end A051286.P3021680689147834028

/-! ## A051286.P12741240411157424646

`or(A000007(n), A077419(A005843(n)))`
-/

namespace A051286.P12741240411157424646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A077419 (A005843 n).toNat)

end

end A051286.P12741240411157424646

/-! ## A051286.P294361586095579421

`A107597(n)+A107597(n)-A000045(n+1)`
-/

namespace A051286.P294361586095579421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107597 n + (A107597 n - A000045 (n + 1))

end

end A051286.P294361586095579421

/-! ## A051286.P13145049693158202325

`A203611(n+1)+A203611(n+1)-A051292(n+1)`
-/

namespace A051286.P13145049693158202325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203611 (n + 1) + (A203611 (n + 1) - A051292 (n + 1))

end

end A051286.P13145049693158202325

/-! ## A051286.P9543353758783037804

`2*A203611(n+1)-A051292(n+1)`
-/

namespace A051286.P9543353758783037804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A203611 (n + 1) - A051292 (n + 1)

end

end A051286.P9543353758783037804

/-! ## A051286.P7722618581559785465

`A108479(n)-A182899(n)`
-/

namespace A051286.P7722618581559785465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108479 n - A182899 n

end

end A051286.P7722618581559785465

/-! ## A051286.P5734697587087524508

`Δ[A201631(n+1)-A091964(n)]`
-/

namespace A051286.P5734697587087524508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201631 (n + 1) - A091964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051286.P5734697587087524508

/-! ## A051286.P7783031500939459246

`A182884(n+1)-A182879(n)`
-/

namespace A051286.P7783031500939459246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182884 (n + 1) - A182879 n

end

end A051286.P7783031500939459246

/-!
# A051287: Triangular array T read by rows: T(n,k)=P(n,k,|n-2k|), where P(n,k,c)=number of vectors (x(1),x(2,),...,x(n)) of k 1's and n-k 0's such that x(i)=x(n+1-i) for exactly c values of i.

The programs for A051287, there is no canonical definition to state claims against.
-/

/-! ## A051287.P16451193184224312647

`A188440(A344646(n))`
-/

namespace A051287.P16451193184224312647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188440 (A344646 n).toNat

end

end A051287.P16451193184224312647

/-! ## A051287.P8340803178242675602

`A188440(A128282(n)-1)`
-/

namespace A051287.P8340803178242675602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188440 (A128282 n - 1).toNat

end

end A051287.P8340803178242675602

/-! ## A051287.P8333791023056633521

`A173751(A173882(n))`
-/

namespace A051287.P8333791023056633521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173751 (A173882 n).toNat

end

end A051287.P8333791023056633521

/-! ## A051287.P1338965425220214171

`A173751(A174450(n))`
-/

namespace A051287.P1338965425220214171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173751 (A174450 n).toNat

end

end A051287.P1338965425220214171

/-! ## A051287.P14446579575878757824

`gcd(A002322(A174449(n)), A090788(n+2))`
-/

namespace A051287.P14446579575878757824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002322 (A174449 n).toNat) (A090788 (n + 2))

end

end A051287.P14446579575878757824

/-!
# A051288: Triangle read by rows: T(n,k) = number of paths of n upsteps U and n downsteps D that contain k UUDs.

The programs for A051288, the canonical program `A051288.P12667383771510004661` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051288 has offset 0).

The definition of A051288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7351 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051288.P12667383771510004661

`A034868(n)*A207538(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051288

/-- `A034868(n)*A207538(n+1)` -/
def P12667383771510004661.Spec : Prop :=
  ∀ n, P12667383771510004661.a n = A051288 n

theorem P12667383771510004661.correct : P12667383771510004661.Spec := by
  intro n
  simp only [A051288]

end A051288

/-! ## A051288.P11939010191169504928

`A091894(n+1)*A122197(n+1)`
-/

namespace A051288.P11939010191169504928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091894 (n + 1) * A122197 (n + 1)

end

end A051288.P11939010191169504928

namespace A051288

/-- `A091894(n+1)*A122197(n+1)` -/
def P11939010191169504928.Spec : Prop :=
  ∀ n, P11939010191169504928.a n = A051288 n

end A051288

/-! ## A051288.P16024290904200819881

`A046899(A091018(n))*A207538(n+1)`
-/

namespace A051288.P16024290904200819881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A091018 n).toNat * A207538 (n + 1)

end

end A051288.P16024290904200819881

namespace A051288

/-- `A046899(A091018(n))*A207538(n+1)` -/
def P16024290904200819881.Spec : Prop :=
  ∀ n, P16024290904200819881.a n = A051288 n

end A051288

/-! ## A051288.P14399356828841609297

`A213343(n+1)/A257241(n+1)*A034868(n)`
-/

namespace A051288.P14399356828841609297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213343 (n + 1) : ℚ) / (A257241 (n + 1) : ℚ) * (A034868 n : ℚ)

end

end A051288.P14399356828841609297

namespace A051288

/-- `A213343(n+1)/A257241(n+1)*A034868(n)` -/
def P14399356828841609297.Spec : Prop :=
  ∀ n, P14399356828841609297.a n = (A051288 n : ℚ)

end A051288

/-! ## A051288.P17479695279455098396

`A034868(n)*A038207(A091018(n))`
-/

namespace A051288.P17479695279455098396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 n * A038207 (A091018 n).toNat

end

end A051288.P17479695279455098396

namespace A051288

/-- `A034868(n)*A038207(A091018(n))` -/
def P17479695279455098396.Spec : Prop :=
  ∀ n, P17479695279455098396.a n = A051288 n

end A051288

/-!
# A051289: Triangular array T read by rows: T(n,k)=P(2n+1,n,2k+1), where P(n,k,c)=number of vectors (x(1),x(2,),...,x(n)) of k 1's and n-k 0's such that x(i)=x(n+1-i) for exactly c values of i.

The programs for A051289, there is no canonical definition to state claims against.
-/

/-! ## A051289.P13982562524381968105

`A143358(∑[2*n]%comp[∑[n]])`
-/

namespace A051289.P13982562524381968105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143358 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A051289.P13982562524381968105

/-! ## A051289.P10134197194589383369

`A143358(∑[char[∑[n]]]²-n-1)`
-/

namespace A051289.P10134197194589383369
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143358 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A051289.P10134197194589383369

/-! ## A051289.P16099950422953493339

`A001405(A002262(n))*A038207(n)`
-/

namespace A051289.P16099950422953493339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A002262 n).toNat * A038207 n

end

end A051289.P16099950422953493339

/-! ## A051289.P6228819072269123521

`A065109(n)*A126930(A002262(n))`
-/

namespace A051289.P6228819072269123521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065109 n * A126930 (A002262 n).toNat

end

end A051289.P6228819072269123521

/-! ## A051289.P18076111716448380219

`A038207(n)*A061554(A112367(n))`
-/

namespace A051289.P18076111716448380219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A061554 (A112367 n).toNat

end

end A051289.P18076111716448380219

/-! ## A051289.P4730328888165665057

`A107230(A061579(n))*A130321(n)`
-/

namespace A051289.P4730328888165665057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107230 (A061579 n).toNat * A130321 n

end

end A051289.P4730328888165665057

/-!
# A051290: Triangular array T read by rows: T(n,k)=P(2n+3,n,2k+3), where P(n,k,c)=number of vectors (x(1),x(2,),...,x(n)) of k 1's and n-k 0's such that x(i)=x(n+1-i) for exactly c values of i.

The programs for A051290, there is no canonical definition to state claims against.
-/

/-! ## A051290.P1218628771315265262

`∑[char[∑[n]]]/2*A121685(n+1)`
-/

namespace A051290.P1218628771315265262
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 * (A121685 (n + 1) : ℚ)

end

end A051290.P1218628771315265262

/-! ## A051290.P8607967275978772319

`A002024(n+1)*A121685(n+1)/2`
-/

namespace A051290.P8607967275978772319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) * A121685 (n + 1) : ℚ) / 2

end

end A051290.P8607967275978772319

/-! ## A051290.P15998750413889143556

`A014682(A002024(n+1)*A121685(n+1))`
-/

namespace A051290.P15998750413889143556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A002024 (n + 1) * A121685 (n + 1)).toNat

end

end A051290.P15998750413889143556

/-! ## A051290.P17474230734529740269

`A001281(A002024(n+1)*A121685(n+1))`
-/

namespace A051290.P17474230734529740269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A002024 (n + 1) * A121685 (n + 1)).toNat

end

end A051290.P17474230734529740269

/-! ## A051290.P2104336795503847184

`A004525(A002024(n+1)*A121685(n+1))`
-/

namespace A051290.P2104336795503847184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A002024 (n + 1) * A121685 (n + 1)).toNat

end

end A051290.P2104336795503847184

/-!
# A051291: Whitney number of level n of the lattice of the ideals of the fence of order 2 n + 1.

The programs for A051291, there is no canonical definition to state claims against.
-/

/-! ## A051291.P10235294047542107503

`A077419(Δ[n²])`
-/

namespace A051291.P10235294047542107503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077419 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A051291.P10235294047542107503

/-! ## A051291.P9288989306603969562

`record[A077419(A000265(n+1))]`
-/

namespace A051291.P9288989306603969562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077419 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051291.P9288989306603969562

/-! ## A051291.P7676634506660982342

`record[A077419(A005131(n)+1)]`
-/

namespace A051291.P7676634506660982342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077419 (A005131 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051291.P7676634506660982342

/-! ## A051291.P482237724442987659

`record[A077419(xor(1, A004526(n)))]`
-/

namespace A051291.P482237724442987659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077419 (Int.xor 1 (A004526 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051291.P482237724442987659

/-! ## A051291.P9809031522488820198

`record[A077419(and(n, A280193(n)))]`
-/

namespace A051291.P9809031522488820198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077419 (Int.land (n : ℤ) (A280193 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051291.P9809031522488820198

/-! ## A051291.P16009404215074118402

`record[A077419(n)/A280193(n)²]`
-/

namespace A051291.P16009404215074118402
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077419 n : ℚ) / (A280193 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051291.P16009404215074118402

/-! ## A051291.P7108526709007799798

`or(A000007(n), A077419(A005843(n)+1))`
-/

namespace A051291.P7108526709007799798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A077419 (A005843 n + 1).toNat)

end

end A051291.P7108526709007799798

/-! ## A051291.P512083126181270731

`A088518(2*n+1)+A088518(2*n)-A203611(n+1)`
-/

namespace A051291.P512083126181270731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n + 1) + (A088518 (2 * n) - A203611 (n + 1))

end

end A051291.P512083126181270731

/-! ## A051291.P11393536085727957645

`2*A077419(2*n+1)/A036453(n+2)`
-/

namespace A051291.P11393536085727957645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A077419 (2 * n + 1) : ℚ) / (A036453 (n + 2) : ℚ)

end

end A051291.P11393536085727957645

/-! ## A051291.P4585347717719125515

`A110236(n+1)+A004148(n)-A051286(n)`
-/

namespace A051291.P4585347717719125515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110236 (n + 1) + (A004148 n - A051286 n)

end

end A051291.P4585347717719125515

/-! ## A051291.P1429250903437003888

`A201631(n+1)+A203611(n)-A110198(n)`
-/

namespace A051291.P1429250903437003888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201631 (n + 1) + (A203611 n - A110198 n)

end

end A051291.P1429250903437003888

/-! ## A051291.P15800626773207854544

`A036453(2*(n+1))*A077419(2*n+1)-A077419(2*n+1)`
-/

namespace A051291.P15800626773207854544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (2 * (n + 1)) * A077419 (2 * n + 1) - A077419 (2 * n + 1)

end

end A051291.P15800626773207854544

/-! ## A051291.P12859209713497219079

`A077419(A000265(2*n+1))²/A077419(2*n+1)`
-/

namespace A051291.P12859209713497219079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077419 (A000265 (2 * n + 1)).toNat ^ 2 : ℚ) / (A077419 (2 * n + 1) : ℚ)

end

end A051291.P12859209713497219079

/-!
# A051292: Whitney number of level n of the lattice of the ideals of the crown of size 2 n.

The programs for A051292, there is no canonical definition to state claims against.
-/

/-! ## A051292.P3344056969568353936

`A088518(2*n)+A203611(n)-A202411(2*n+1)`
-/

namespace A051292.P3344056969568353936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n) + (A203611 n - A202411 (2 * n + 1))

end

end A051292.P3344056969568353936

/-! ## A051292.P3590506491118072837

`A088518(2*n)+A202411(2*n)-A202411(2*n+1)`
-/

namespace A051292.P3590506491118072837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n) + (A202411 (2 * n) - A202411 (2 * n + 1))

end

end A051292.P3590506491118072837

/-! ## A051292.P10706032404221674071

`A205810(∑[2*n])+C(2, n+2)`
-/

namespace A051292.P10706032404221674071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205810 (∑ j ∈ Finset.range (n + 1), f1 j) + (Nat.choose 2 (n + 2) : ℤ)

end

end A051292.P10706032404221674071

/-! ## A051292.P2847893451237513423

`A359780(A085362(n))+A001006(n)`
-/

namespace A051292.P2847893451237513423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359780 (A085362 n).toNat + A001006 n

end

end A051292.P2847893451237513423

/-!
# A051293: Number of nonempty subsets of {1,2,3,...,n} whose elements have an integer average.

The programs for A051293, the canonical program `A051293.P18428815694891853297` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051293 has offset 1).

The definition of A051293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051293.P18428815694891853297

`∑[A082550(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A051293

/-- `∑[A082550(n+1)]` -/
def P18428815694891853297.Spec : Prop :=
  ∀ n, P18428815694891853297.a n = A051293 (n + 1)

theorem P18428815694891853297.correct : P18428815694891853297.Spec := by
  intro n
  simp only [A051293, Nat.add_sub_cancel]

end A051293

/-! ## A051293.P7923572433205284007

`∑[abs(Δ[A327475(n)])]`
-/

namespace A051293.P7923572433205284007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327475 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051293.P7923572433205284007

namespace A051293

/-- `∑[abs(Δ[A327475(n)])]` -/
def P7923572433205284007.Spec : Prop :=
  ∀ n, P7923572433205284007.a n = A051293 (n + 1)

end A051293

/-! ## A051293.P3313753858631221802

`A327475(n+1)-1`
-/

namespace A051293.P3313753858631221802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327475 (n + 1) - 1

end

end A051293.P3313753858631221802

namespace A051293

/-- `A327475(n+1)-1` -/
def P3313753858631221802.Spec : Prop :=
  ∀ n, P3313753858631221802.a n = A051293 (n + 1)

end A051293

/-! ## A051293.P5756341953377207635

`∑[A063776(n+1)-1]`
-/

namespace A051293.P5756341953377207635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051293.P5756341953377207635

namespace A051293

/-- `∑[A063776(n+1)-1]` -/
def P5756341953377207635.Spec : Prop :=
  ∀ n, P5756341953377207635.a n = A051293 (n + 1)

end A051293

/-! ## A051293.P10240746280729700683

`∑[A283843(n+1)-2]`
-/

namespace A051293.P10240746280729700683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283843 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051293.P10240746280729700683

namespace A051293

/-- `∑[A283843(n+1)-2]` -/
def P10240746280729700683.Spec : Prop :=
  ∀ n, P10240746280729700683.a n = A051293 (n + 1)

end A051293

/-! ## A051293.P14596117754500762193

`∑[2*A000016(n+1)-1]`
-/

namespace A051293.P14596117754500762193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000016 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051293.P14596117754500762193

namespace A051293

/-- `∑[2*A000016(n+1)-1]` -/
def P14596117754500762193.Spec : Prop :=
  ∀ n, P14596117754500762193.a n = A051293 (n + 1)

end A051293

/-! ## A051293.P13334819372500156927

`2*A065795(n+1)-(n+1)`
-/

namespace A051293.P13334819372500156927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065795 (n + 1) - (n + 1 : ℤ)

end

end A051293.P13334819372500156927

namespace A051293

/-- `2*A065795(n+1)-(n+1)` -/
def P13334819372500156927.Spec : Prop :=
  ∀ n, P13334819372500156927.a n = A051293 (n + 1)

end A051293

/-! ## A051293.P4822396737537800405

`2*A133670(n+1)-(n+3)`
-/

namespace A051293.P4822396737537800405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133670 (n + 1) - (n + 3 : ℤ)

end

end A051293.P4822396737537800405

namespace A051293

/-- `2*A133670(n+1)-(n+3)` -/
def P4822396737537800405.Spec : Prop :=
  ∀ n, P4822396737537800405.a n = A051293 (n + 1)

end A051293

/-! ## A051293.P17299949302563446832

`A033999(2*n+1)+A033999(2*n)*A327475(n+1)`
-/

namespace A051293.P17299949302563446832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A033999 (2 * n) * A327475 (n + 1)

end

end A051293.P17299949302563446832

namespace A051293

/-- `A033999(2*n+1)+A033999(2*n)*A327475(n+1)` -/
def P17299949302563446832.Spec : Prop :=
  ∀ n, P17299949302563446832.a n = A051293 (n + 1)

end A051293

/-! ## A051293.P12484532783465376239

`∑[2*A053633(∑[n])-1]`
-/

namespace A051293.P12484532783465376239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053633 (∑ j ∈ Finset.range (n + 1), f2 j) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051293.P12484532783465376239

namespace A051293

/-- `∑[2*A053633(∑[n])-1]` -/
def P12484532783465376239.Spec : Prop :=
  ∀ n, P12484532783465376239.a n = A051293 (n + 1)

end A051293

/-! ## A051293.P9047263727646788456

`∑[∑[A147980(n+1)]]`
-/

namespace A051293.P9047263727646788456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147980 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051293.P9047263727646788456

namespace A051293

/-- `∑[∑[A147980(n+1)]]` -/
def P9047263727646788456.Spec : Prop :=
  ∀ n, P9047263727646788456.a n = A051293 (n + 1)

end A051293

/-!
# A051294: a(n) = F(n^2)/F(n), where F(n) = A000045(n) is the n-th Fibonacci number.

The programs for A051294, there is no canonical definition to state claims against.
-/

/-! ## A051294.P4996547060721593662

`A028412(∑[4*n])`
-/

namespace A051294.P4996547060721593662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051294.P4996547060721593662

/-! ## A051294.P3854799933699326694

`A214978((n+1)²+n²)`
-/

namespace A051294.P3854799933699326694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214978 ((n + 1) ^ 2 + n ^ 2)

end

end A051294.P3854799933699326694

/-! ## A051294.P1111251052548442483

`record[A003982(n)*A028412(n)]`
-/

namespace A051294.P1111251052548442483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A028412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051294.P1111251052548442483

/-! ## A051294.P3372880211864256169

`record[A028412(gcd(n, A114327(n)))]`
-/

namespace A051294.P3372880211864256169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051294.P3372880211864256169

/-! ## A051294.P1780795713351675330

`A054783(n+1)/A000045(n+1)`
-/

namespace A051294.P1780795713351675330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054783 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ)

end

end A051294.P1780795713351675330

/-!
# A051295: a(0)=1; thereafter, a(m+1) = Sum_{k=0..m} k!*a(m-k).

The programs for A051295, there is no canonical definition to state claims against.
-/

/-! ## A051295.P15913395262195554008

`A134379(∑[n])`
-/

namespace A051295.P15913395262195554008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134379 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051295.P15913395262195554008

/-! ## A051295.P8348505564101839808

`and(-1, A134379(A000217(n)))`
-/

namespace A051295.P8348505564101839808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A134379 (A000217 n).toNat)

end

end A051295.P8348505564101839808

/-! ## A051295.P14050595377777560510

`A134379(A000217(n))^A260190(6*n)²`
-/

namespace A051295.P14050595377777560510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134379 (A000217 n).toNat : ℚ) ^ (A260190 (6 * n) ^ 2 : ℤ)

end

end A051295.P14050595377777560510

/-! ## A051295.P14733319830291459726

`A134379(A000217(n))+A000122(A007528(n+1))`
-/

namespace A051295.P14733319830291459726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134379 (A000217 n).toNat + A000122 (A007528 (n + 1)).toNat

end

end A051295.P14733319830291459726

/-! ## A051295.P16449545845874603131

`A134379(A000217(n))+A000122(A139963(n+1))`
-/

namespace A051295.P16449545845874603131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134379 (A000217 n).toNat + A000122 (A139963 (n + 1)).toNat

end

end A051295.P16449545845874603131

/-! ## A051295.P5474195737471083652

`A134379(A000217(n))+A000122(A124486(n+1))`
-/

namespace A051295.P5474195737471083652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134379 (A000217 n).toNat + A000122 (A124486 (n + 1)).toNat

end

end A051295.P5474195737471083652

/-!
# A051296: INVERT transform of factorial numbers.

The programs for A051296, there is no canonical definition to state claims against.
-/

/-! ## A051296.P7025518507969616319

`ceil(A193763(n)/2)`
-/

namespace A051296.P7025518507969616319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A193763 n : ℚ) / 2⌉

end

end A051296.P7025518507969616319

/-! ## A051296.P4694002039722056199

`A193763(round(sqrt(n²+1)))/2`
-/

namespace A051296.P4694002039722056199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193763 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2

end

end A051296.P4694002039722056199

/-! ## A051296.P15356653250395662719

`(A193763(n)+A000007(n))/2`
-/

namespace A051296.P15356653250395662719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193763 n + A000007 n : ℚ) / 2

end

end A051296.P15356653250395662719

/-!
# A051297: (Terms in A028266)/2.

The programs for A051297, the canonical program `A051297.P15842795735754610719` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051297 has offset 0).

The definition of A051297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051297.P15842795735754610719

`A028266(n)/2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A051297

/-- `A028266(n)/2` -/
def P15842795735754610719.Spec : Prop :=
  ∀ n, P15842795735754610719.a n = (A051297 n : ℚ)

end A051297

/-! ## A051297.P8826896838348756493

`2^A008683(sqrt(A001248(n+1)))*A028266(n)`
-/

namespace A051297.P8826896838348756493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat : ℤ) * (A028266 n : ℚ)

end

end A051297.P8826896838348756493

namespace A051297

/-- `2^A008683(sqrt(A001248(n+1)))*A028266(n)` -/
def P8826896838348756493.Spec : Prop :=
  ∀ n, P8826896838348756493.a n = (A051297 n : ℚ)

end A051297

/-! ## A051297.P1437889786453009806

`2^A008683(∑[A054541(n+1)])*A028266(n)`
-/

namespace A051297.P1437889786453009806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℤ) * (A028266 n : ℚ)

end

end A051297.P1437889786453009806

namespace A051297

/-- `2^A008683(∑[A054541(n+1)])*A028266(n)` -/
def P1437889786453009806.Spec : Prop :=
  ∀ n, P1437889786453009806.a n = (A051297 n : ℚ)

end A051297

/-! ## A051297.P8474109355625191338

`2^A008683(A014688(n+1)-(n+1))*A028266(n)`
-/

namespace A051297.P8474109355625191338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A014688 (n + 1) - (n + 1 : ℤ)).toNat : ℤ) * (A028266 n : ℚ)

end

end A051297.P8474109355625191338

namespace A051297

/-- `2^A008683(A014688(n+1)-(n+1))*A028266(n)` -/
def P8474109355625191338.Spec : Prop :=
  ∀ n, P8474109355625191338.a n = (A051297 n : ℚ)

end A051297

/-! ## A051297.P3488301297820205194

`2^A008683(A014237(n+1)+A018252(n+1))*A028266(n)`
-/

namespace A051297.P3488301297820205194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A014237 (n + 1) + A018252 (n + 1)).toNat : ℤ) * (A028266 n : ℚ)

end

end A051297.P3488301297820205194

namespace A051297

/-- `2^A008683(A014237(n+1)+A018252(n+1))*A028266(n)` -/
def P3488301297820205194.Spec : Prop :=
  ∀ n, P3488301297820205194.a n = (A051297 n : ℚ)

end A051297

/-! ## A051297.P17876213986864044819

`2^A008683(A104192(n+1)+A000010(n+1))*A028266(n)`
-/

namespace A051297.P17876213986864044819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A104192 (n + 1) + A000010 (n + 1)).toNat : ℤ) * (A028266 n : ℚ)

end

end A051297.P17876213986864044819

namespace A051297

/-- `2^A008683(A104192(n+1)+A000010(n+1))*A028266(n)` -/
def P17876213986864044819.Spec : Prop :=
  ∀ n, P17876213986864044819.a n = (A051297 n : ℚ)

end A051297

/-! ## A051297.P982001167392346795

`2^A008683(A049561(n+1))*A028266(n)`
-/

namespace A051297.P982001167392346795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A049561 (n + 1)).toNat : ℤ) * (A028266 n : ℚ)

end

end A051297.P982001167392346795

namespace A051297

/-- `2^A008683(A049561(n+1))*A028266(n)` -/
def P982001167392346795.Spec : Prop :=
  ∀ n, P982001167392346795.a n = (A051297 n : ℚ)

end A051297

/-! ## A051297.P5444860900767614251

`2^A008683(A080191(n+1))*A028266(n)`
-/

namespace A051297.P5444860900767614251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A080191 (n + 1)).toNat : ℤ) * (A028266 n : ℚ)

end

end A051297.P5444860900767614251

namespace A051297

/-- `2^A008683(A080191(n+1))*A028266(n)` -/
def P5444860900767614251.Spec : Prop :=
  ∀ n, P5444860900767614251.a n = (A051297 n : ℚ)

end A051297

/-! ## A051297.P12066478163309045568

`2^A008683(A005382(n+1))*A028266(n)`
-/

namespace A051297.P12066478163309045568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A005382 (n + 1)).toNat : ℤ) * (A028266 n : ℚ)

end

end A051297.P12066478163309045568

namespace A051297

/-- `2^A008683(A005382(n+1))*A028266(n)` -/
def P12066478163309045568.Spec : Prop :=
  ∀ n, P12066478163309045568.a n = (A051297 n : ℚ)

end A051297

/-! ## A051297.P10403021771261614462

`2^A008683(A059256(n+1))*A028266(n)`
-/

namespace A051297.P10403021771261614462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A059256 (n + 1)).toNat : ℤ) * (A028266 n : ℚ)

end

end A051297.P10403021771261614462

namespace A051297

/-- `2^A008683(A059256(n+1))*A028266(n)` -/
def P10403021771261614462.Spec : Prop :=
  ∀ n, P10403021771261614462.a n = (A051297 n : ℚ)

end A051297

/-!
# A051298: (Terms in A028273)/2.

The programs for A051298, there is no canonical definition to state claims against.
-/

/-! ## A051298.P9114133405383473687

`A028273(n)/2`
-/

namespace A051298.P9114133405383473687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028273 n : ℚ) / 2

end

end A051298.P9114133405383473687

/-! ## A051298.P10472310258338979800

`A014682(A028273(n))`
-/

namespace A051298.P10472310258338979800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A028273 n).toNat

end

end A051298.P10472310258338979800

/-! ## A051298.P16208083453606675245

`A103391(A028273(n)-2)`
-/

namespace A051298.P16208083453606675245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A028273 n - 2).toNat

end

end A051298.P16208083453606675245

/-! ## A051298.P8414396601959415107

`A273943(lcm(2, A028273(n)))`
-/

namespace A051298.P8414396601959415107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A028273 n))

end

end A051298.P8414396601959415107

/-! ## A051298.P12077491807301553284

`A318518(A028273(n)+2)-1`
-/

namespace A051298.P12077491807301553284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A028273 n + 2).toNat - 1

end

end A051298.P12077491807301553284

/-!
# A051299: a(n) = a(n-1) + rotate( a(n-1), 1 digit left), a(1) = 1.

The programs for A051299, there is no canonical definition to state claims against.
-/

/-! ## A051299.P15468671679847140259

`A374734(A365822(n+1))`
-/

namespace A051299.P15468671679847140259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374734 (A365822 (n + 1)).toNat

end

end A051299.P15468671679847140259

/-! ## A051299.P3113941659771967418

`A374734(C(A084589(n+1), n))`
-/

namespace A051299.P3113941659771967418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374734 (Nat.choose (A084589 (n + 1)).toNat n)

end

end A051299.P3113941659771967418

/-! ## A051299.P692682136834814404

`filter[A396231(n+1), A011751(#)]`
-/

namespace A051299.P692682136834814404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011751 (f1 j).toNat = 1) n)

end

end A051299.P692682136834814404

/-! ## A051299.P3248697355625039436

`filter[A396231(n+1), A108358(#)]`
-/

namespace A051299.P3248697355625039436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108358 (f1 j).toNat = 1) n)

end

end A051299.P3248697355625039436

