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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A118000: a(0) = 0. a(n) = a(n-1) + (smallest integer >= n which is coprime to a(n-1)).

The programs for A118000, the canonical program `A118000.P9662010254820699721` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118000 has offset 0).

The definition of A118000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118000.P9662010254820699721

`(n+1)%gcd(n²+n, a(n-1))+a(n-1)+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A118000

/-- `(n+1)%gcd(n²+n, a(n-1))+a(n-1)+n` -/
def P9662010254820699721.Spec : Prop :=
  ∀ n, (P9662010254820699721.a n : ℤ) = A118000 n

theorem P9662010254820699721.correct : P9662010254820699721.Spec := by
  intro n
  simp only [A118000]

end A118000

/-! ## A118000.P5793835130463745728

`A118001(n)+a(n-1)` with `a(0)=0`
-/

namespace A118000.P5793835130463745728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A118001 n + a (n - 1)

end

end A118000.P5793835130463745728

namespace A118000

/-- `A118001(n)+a(n-1)` -/
def P5793835130463745728.Spec : Prop :=
  ∀ n, P5793835130463745728.a n = A118000 n

end A118000

/-! ## A118000.P18048721200188049150

`∑[A118001(abs(1-n)+1)]-2`
-/

namespace A118000.P18048721200188049150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118001 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A118000.P18048721200188049150

namespace A118000

/-- `∑[A118001(abs(1-n)+1)]-2` -/
def P18048721200188049150.Spec : Prop :=
  ∀ n, P18048721200188049150.a n = A118000 n

end A118000

/-! ## A118000.P12426099140914606616

`∑[A118001(A028310(n))%Δ[n²]]`
-/

namespace A118000.P12426099140914606616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118001 (A028310 n).toNat) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118000.P12426099140914606616

namespace A118000

/-- `∑[A118001(A028310(n))%Δ[n²]]` -/
def P12426099140914606616.Spec : Prop :=
  ∀ n, P12426099140914606616.a n = A118000 n

end A118000

/-! ## A118000.P2948322577090971483

`∑[A118001(n-a(A000034(2*n)-1))]` with `a(0)=0`
-/

namespace A118000.P2948322577090971483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A118001 ((n : ℤ) - f1 (A000034 (2 * n) - 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118000.P2948322577090971483

namespace A118000

/-- `∑[A118001(n-a(A000034(2*n)-1))]` -/
def P2948322577090971483.Spec : Prop :=
  ∀ n, P2948322577090971483.a n = A118000 n

end A118000

/-! ## A118000.P159734730784845293

`∑[A057427(n)*A118001(A028310(n))]`
-/

namespace A118000.P159734730784845293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A118001 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118000.P159734730784845293

namespace A118000

/-- `∑[A057427(n)*A118001(A028310(n))]` -/
def P159734730784845293.Spec : Prop :=
  ∀ n, P159734730784845293.a n = A118000 n

end A118000

/-! ## A118000.P14894645165009759353

`∑[A118001(A028310(n))*A178334(n)]`
-/

namespace A118000.P14894645165009759353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118001 (A028310 n).toNat * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118000.P14894645165009759353

namespace A118000

/-- `∑[A118001(A028310(n))*A178334(n)]` -/
def P14894645165009759353.Spec : Prop :=
  ∀ n, P14894645165009759353.a n = A118000 n

end A118000

/-! ## A118000.P803468296831680106

`∑[A011625(n²)*A118001(A028310(n))]`
-/

namespace A118000.P803468296831680106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011625 (n ^ 2) * A118001 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118000.P803468296831680106

namespace A118000

/-- `∑[A011625(n²)*A118001(A028310(n))]` -/
def P803468296831680106.Spec : Prop :=
  ∀ n, P803468296831680106.a n = A118000 n

end A118000

/-! ## A118000.P18196548005352416323

`∑[A118001(A028310(n))+A008683(4*(n+1))]-1`
-/

namespace A118000.P18196548005352416323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118001 (A028310 n).toNat + A008683 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A118000.P18196548005352416323

namespace A118000

/-- `∑[A118001(A028310(n))+A008683(4*(n+1))]-1` -/
def P18196548005352416323.Spec : Prop :=
  ∀ n, P18196548005352416323.a n = A118000 n

end A118000

/-!
# A118001: a(n) = smallest integer >= n which is coprime to A118000(n-1). a(n) = A118000(n) - A118000(n-1).

The programs for A118001, the canonical program `A118001.P7504210016249544694` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118001 has offset 1).

The definition of A118001 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A118000, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A118001.P7504210016249544694

`A118000(n+1)-A118000(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A118001

/-- `A118000(n+1)-A118000(n)` -/
def P7504210016249544694.Spec : Prop :=
  ∀ n, P7504210016249544694.a n = A118001 (n + 1)

theorem P7504210016249544694.correct : P7504210016249544694.Spec := by
  intro n
  simp only [A118001, Nat.add_sub_cancel]

end A118001

/-! ## A118001.P3435960446414436171

`Δ[(n+1)%gcd(n²+n, a(n-1))+a(n-1)+n]` with `a(0)=0`
-/

namespace A118001.P3435960446414436171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (n + 1) % Nat.gcd (n ^ 2 + n) (f1 (n - 1)) + (f1 (n - 1) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A118001.P3435960446414436171

namespace A118001

/-- `Δ[(n+1)%gcd(n²+n, a(n-1))+a(n-1)+n]` -/
def P3435960446414436171.Spec : Prop :=
  ∀ n, P3435960446414436171.a n = A118001 (n + 1)

end A118001

/-! ## A118001.P5799679007017899458

`Δ[A118000(n)]`
-/

namespace A118001.P5799679007017899458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118001.P5799679007017899458

namespace A118001

/-- `Δ[A118000(n)]` -/
def P5799679007017899458.Spec : Prop :=
  ∀ n, P5799679007017899458.a n = A118001 (n + 1)

theorem P5799679007017899458.correct : P5799679007017899458.Spec := by
  intro n
  simp only [A118001, Nat.add_sub_cancel, A118001.P5799679007017899458.f1, A118001.P5799679007017899458.a, A118001.P7504210016249544694.a, SequenceMachineLib.memo_apply]

end A118001

/-! ## A118001.P15586137220935288839

`abs(A118000(A008619(2*n))-A118000(n))`
-/

namespace A118001.P15586137220935288839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118000 (A008619 (2 * n)).toNat - A118000 n|

end

end A118001.P15586137220935288839

namespace A118001

/-- `abs(A118000(A008619(2*n))-A118000(n))` -/
def P15586137220935288839.Spec : Prop :=
  ∀ n, P15586137220935288839.a n = A118001 (n + 1)

end A118001

/-! ## A118001.P2704222726390503276

`A000045(val((A193361(n)+1)², 2))+1+n`
-/

namespace A118001.P2704222726390503276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation ((A193361 n + 1) ^ 2).toNat 2) + 1 + (n : ℤ)

end

end A118001.P2704222726390503276

namespace A118001

/-- `A000045(val((A193361(n)+1)², 2))+1+n` -/
def P2704222726390503276.Spec : Prop :=
  ∀ n, P2704222726390503276.a n = A118001 (n + 1)

end A118001

/-!
# A118002: a(0) = 0. a(n) = a(n-1) + (largest integer <= n which is coprime to a(n-1)).

The programs for A118002, the canonical program `A118002.P9533279578057153008` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118002 has offset 0).

The definition of A118002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118002.P9533279578057153008

`a(n-1)-floor(gcd(n, a(n-1))/2)+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A118002

/-- `a(n-1)-floor(gcd(n, a(n-1))/2)+n` -/
def P9533279578057153008.Spec : Prop :=
  ∀ n, P9533279578057153008.a n = A118002 n

theorem P9533279578057153008.correct : P9533279578057153008.Spec := by
  intro n
  simp only [A118002]

end A118002

/-! ## A118002.P12543939646202448897

`∑[n-char[A187326(n+3)]]`
-/

namespace A118002.P12543939646202448897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187326 (n + 3)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118002.P12543939646202448897

namespace A118002

/-- `∑[n-char[A187326(n+3)]]` -/
def P12543939646202448897.Spec : Prop :=
  ∀ n, P12543939646202448897.a n = A118002 n

end A118002

/-! ## A118002.P3573980449828941336

`∑[n-char[A047268(n+2)+1]]`
-/

namespace A118002.P3573980449828941336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (n + 2) + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118002.P3573980449828941336

namespace A118002

/-- `∑[n-char[A047268(n+2)+1]]` -/
def P3573980449828941336.Spec : Prop :=
  ∀ n, P3573980449828941336.a n = A118002 n

end A118002

/-! ## A118002.P11517396151474310663

`∑[n-char[A047271(n+1)+3]]`
-/

namespace A118002.P11517396151474310663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047271 (n + 1) + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118002.P11517396151474310663

namespace A118002

/-- `∑[n-char[A047271(n+1)+3]]` -/
def P11517396151474310663.Spec : Prop :=
  ∀ n, P11517396151474310663.a n = A118002 n

end A118002

/-! ## A118002.P2379165883348949707

`a(n-1)+n-A001222(gcd(n, a(n-1)))` with `a(0)=0`
-/

namespace A118002.P2379165883348949707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - A001222 (Int.gcd (n : ℤ) (a (n - 1))))

end

end A118002.P2379165883348949707

namespace A118002

/-- `a(n-1)+n-A001222(gcd(n, a(n-1)))` -/
def P2379165883348949707.Spec : Prop :=
  ∀ n, P2379165883348949707.a n = A118002 n

end A118002

/-! ## A118002.P13066024935552260619

`∑[n]-A140106(1-A011655(n)+n)`
-/

namespace A118002.P13066024935552260619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A140106 (1 - A011655 n + (n : ℤ)).toNat

end

end A118002.P13066024935552260619

namespace A118002

/-- `∑[n]-A140106(1-A011655(n)+n)` -/
def P13066024935552260619.Spec : Prop :=
  ∀ n, P13066024935552260619.a n = A118002 n

end A118002

/-! ## A118002.P12024756054663815814

`A300076(A160842(n))`
-/

namespace A118002.P12024756054663815814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 (A160842 n).toNat

end

end A118002.P12024756054663815814

namespace A118002

/-- `A300076(A160842(n))` -/
def P12024756054663815814.Spec : Prop :=
  ∀ n, P12024756054663815814.a n = A118002 n

end A118002

/-! ## A118002.P109658842427260266

`A004525(A131294(n)+n²)`
-/

namespace A118002.P109658842427260266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A131294 n + (n ^ 2 : ℤ)).toNat

end

end A118002.P109658842427260266

namespace A118002

/-- `A004525(A131294(n)+n²)` -/
def P109658842427260266.Spec : Prop :=
  ∀ n, P109658842427260266.a n = A118002 n

end A118002

/-! ## A118002.P2474450676738919648

`∑[A118003(n+1)]-A118003(n+1)`
-/

namespace A118002.P2474450676738919648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A118003 (n + 1)

end

end A118002.P2474450676738919648

namespace A118002

/-- `∑[A118003(n+1)]-A118003(n+1)` -/
def P2474450676738919648.Spec : Prop :=
  ∀ n, P2474450676738919648.a n = A118002 n

end A118002

/-!
# A118003: a(n) = largest integer <= n which is coprime to A118002(n-1). a(n) = A118002(n) - A118002(n-1).

The programs for A118003, the canonical program `A118003.P1087298648720468450` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118003 has offset 1).

The definition of A118003 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A118002, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A118003.P1087298648720468450

`A118002(n+1)-A118002(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A118003

/-- `A118002(n+1)-A118002(n)` -/
def P1087298648720468450.Spec : Prop :=
  ∀ n, P1087298648720468450.a n = A118003 (n + 1)

theorem P1087298648720468450.correct : P1087298648720468450.Spec := by
  intro n
  simp only [A118003, Nat.add_sub_cancel]

end A118003

/-! ## A118003.P13199695588517687458

`char[∑[and(3, char[3]+n)]]+n`
-/

namespace A118003.P13199695588517687458
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 ((if ∃ j, f3 j = n then 1 else 0) + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + n

end

end A118003.P13199695588517687458

namespace A118003

/-- `char[∑[and(3, char[3]+n)]]+n` -/
def P13199695588517687458.Spec : Prop :=
  ∀ n, (P13199695588517687458.a n : ℤ) = A118003 (n + 1)

end A118003

/-! ## A118003.P5107404189872592754

`round(acot(gcd(n+1, (n-2)%3))+n)`
-/

namespace A118003.P5107404189872592754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (Int.gcd (n + 1 : ℤ) (Int.tmod ((n : ℤ) - 2) 3) : ℝ) + (n : ℝ))

end

end A118003.P5107404189872592754

namespace A118003

/-- `round(acot(gcd(n+1, (n-2)%3))+n)` -/
def P5107404189872592754.Spec : Prop :=
  ∀ n, P5107404189872592754.a n = A118003 (n + 1)

end A118003

/-! ## A118003.P2407895266902562609

`char[comp[∑[3-a(n-2)]]]+n` with `a(0)=2, a(1)=3, a(2)=2`
-/

namespace A118003.P2407895266902562609
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 2] fun n f3 =>
  3 - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + n

end

end A118003.P2407895266902562609

namespace A118003

/-- `char[comp[∑[3-a(n-2)]]]+n` -/
def P2407895266902562609.Spec : Prop :=
  ∀ n, (P2407895266902562609.a n : ℤ) = A118003 (n + 1)

end A118003

/-! ## A118003.P214466762602286741

`char[∑[n]%3+2*n]+char[1]+n`
-/

namespace A118003.P214466762602286741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3 + 2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + ((if ∃ j, f3 j = n then 1 else 0) + n)

end

end A118003.P214466762602286741

namespace A118003

/-- `char[∑[n]%3+2*n]+char[1]+n` -/
def P214466762602286741.Spec : Prop :=
  ∀ n, (P214466762602286741.a n : ℤ) = A118003 (n + 1)

end A118003

/-! ## A118003.P14318927360801147814

`n--1%gcd(n, 3*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A118003.P14318927360801147814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) - Int.tmod (-1) (Int.gcd (n : ℤ) (3 * a (n - 2)) : ℤ)

end

end A118003.P14318927360801147814

namespace A118003

/-- `n--1%gcd(n, 3*a(n-2))` -/
def P14318927360801147814.Spec : Prop :=
  ∀ n, P14318927360801147814.a n = A118003 (n + 1)

end A118003

/-! ## A118003.P12071607000928458806

`abs(char[(n²+1)%3*(n+1)+1]-n)+1`
-/

namespace A118003.P12071607000928458806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1) % 3 * (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ)| + 1

end

end A118003.P12071607000928458806

namespace A118003

/-- `abs(char[(n²+1)%3*(n+1)+1]-n)+1` -/
def P12071607000928458806.Spec : Prop :=
  ∀ n, P12071607000928458806.a n = A118003 (n + 1)

end A118003

/-! ## A118003.P17437007436696622728

`Δ[A118002(n)]`
-/

namespace A118003.P17437007436696622728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118003.P17437007436696622728

namespace A118003

/-- `Δ[A118002(n)]` -/
def P17437007436696622728.Spec : Prop :=
  ∀ n, P17437007436696622728.a n = A118003 (n + 1)

theorem P17437007436696622728.correct : P17437007436696622728.Spec := by
  intro n
  simp only [A118003, Nat.add_sub_cancel, A118003.P17437007436696622728.f1, A118003.P17437007436696622728.a, A118003.P1087298648720468450.a, SequenceMachineLib.memo_apply]

end A118003

/-! ## A118003.P6458641143653463873

`A238642(n+1)²%3+n`
-/

namespace A118003.P6458641143653463873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238642 (n + 1) ^ 2) 3 + (n : ℤ)

end

end A118003.P6458641143653463873

namespace A118003

/-- `A238642(n+1)²%3+n` -/
def P6458641143653463873.Spec : Prop :=
  ∀ n, P6458641143653463873.a n = A118003 (n + 1)

end A118003

/-! ## A118003.P10809169073671307494

`1-char[A165355(n+1)]+n`
-/

namespace A118003.P10809169073671307494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

end

end A118003.P10809169073671307494

namespace A118003

/-- `1-char[A165355(n+1)]+n` -/
def P10809169073671307494.Spec : Prop :=
  ∀ n, P10809169073671307494.a n = A118003 (n + 1)

end A118003

/-!
# A118004: a(n) = 9^n - 4^n.

The programs for A118004, the canonical program `A118004.P9695028412421846656` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118004 has offset 0).

The definition of A118004 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-4^n` (program `A118004.P9695028412421846656`, by `A118004.P9695028412421846656.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A118004.P9695028412421846656

`9^n-4^n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A118004

/-- `9^n-4^n` -/
def P9695028412421846656.Spec : Prop :=
  ∀ n, P9695028412421846656.a n = A118004 n

theorem P9695028412421846656.correct : P9695028412421846656.Spec := by
  intro n
  simp only [A118004]

end A118004

/-! ## A118004.P6426996066633665165

`5*A016153(n)`
-/

namespace A118004.P6426996066633665165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A016153 n

end

end A118004.P6426996066633665165

namespace A118004

/-- `5*A016153(n)` -/
def P6426996066633665165.Spec : Prop :=
  ∀ n, P6426996066633665165.a n = A118004 n

end A118004

/-! ## A118004.P18052398664626821936

`A001047(n)*A007689(n)`
-/

namespace A118004.P18052398664626821936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n * A007689 n

end

end A118004.P18052398664626821936

namespace A118004

/-- `A001047(n)*A007689(n)` -/
def P18052398664626821936.Spec : Prop :=
  ∀ n, P18052398664626821936.a n = A118004 n

end A118004

/-! ## A118004.P11793879393036640318

`A001047(2*n)`
-/

namespace A118004.P11793879393036640318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (2 * n)

end

end A118004.P11793879393036640318

namespace A118004

/-- `A001047(2*n)` -/
def P11793879393036640318.Spec : Prop :=
  ∀ n, P11793879393036640318.a n = A118004 n

end A118004

/-! ## A118004.P15059753521768508684

`abs(1-A155630(n))`
-/

namespace A118004.P15059753521768508684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155630 n|

end

end A118004.P15059753521768508684

namespace A118004

/-- `abs(1-A155630(n))` -/
def P15059753521768508684.Spec : Prop :=
  ∀ n, P15059753521768508684.a n = A118004 n

end A118004

/-! ## A118004.P6441986186975604009

`A304973(4*n+1)`
-/

namespace A118004.P6441986186975604009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304973 (4 * n + 1)

end

end A118004.P6441986186975604009

namespace A118004

/-- `A304973(4*n+1)` -/
def P6441986186975604009.Spec : Prop :=
  ∀ n, P6441986186975604009.a n = A118004 n

end A118004

/-! ## A118004.P8315818823270626491

`A056182(2*n)/2`
-/

namespace A118004.P8315818823270626491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056182 (2 * n) : ℚ) / 2

end

end A118004.P8315818823270626491

namespace A118004

/-- `A056182(2*n)/2` -/
def P8315818823270626491.Spec : Prop :=
  ∀ n, P8315818823270626491.a n = (A118004 n : ℚ)

end A118004

/-! ## A118004.P14417836150350702340

`A210448(2*n)/3`
-/

namespace A118004.P14417836150350702340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210448 (2 * n) : ℚ) / 3

end

end A118004.P14417836150350702340

namespace A118004

/-- `A210448(2*n)/3` -/
def P14417836150350702340.Spec : Prop :=
  ∀ n, P14417836150350702340.a n = (A118004 n : ℚ)

end A118004

/-! ## A118004.P7589663566255598300

`5*A015441(2*n)`
-/

namespace A118004.P7589663566255598300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A015441 (2 * n)

end

end A118004.P7589663566255598300

namespace A118004

/-- `5*A015441(2*n)` -/
def P7589663566255598300.Spec : Prop :=
  ∀ n, P7589663566255598300.a n = A118004 n

end A118004

/-! ## A118004.P7993930995408817464

`A145563(2*n)/4`
-/

namespace A118004.P7993930995408817464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145563 (2 * n) : ℚ) / 4

end

end A118004.P7993930995408817464

namespace A118004

/-- `A145563(2*n)/4` -/
def P7993930995408817464.Spec : Prop :=
  ∀ n, P7993930995408817464.a n = (A118004 n : ℚ)

end A118004

/-! ## A118004.P7012401726037817840

`5*A167910(2*n)`
-/

namespace A118004.P7012401726037817840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A167910 (2 * n)

end

end A118004.P7012401726037817840

namespace A118004

/-- `5*A167910(2*n)` -/
def P7012401726037817840.Spec : Prop :=
  ∀ n, P7012401726037817840.a n = A118004 n

end A118004

/-! ## A118004.P9441381539049155596

`floor(A002783(2*n)/2)`
-/

namespace A118004.P9441381539049155596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002783 (2 * n) : ℚ) / 2⌋

end

end A118004.P9441381539049155596

namespace A118004

/-- `floor(A002783(2*n)/2)` -/
def P9441381539049155596.Spec : Prop :=
  ∀ n, P9441381539049155596.a n = A118004 n

end A118004

/-! ## A118004.P7506746654799452518

`abs(A024037(n)-A024102(n))`
-/

namespace A118004.P7506746654799452518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024037 n - A024102 n|

end

end A118004.P7506746654799452518

namespace A118004

/-- `abs(A024037(n)-A024102(n))` -/
def P7506746654799452518.Spec : Prop :=
  ∀ n, P7506746654799452518.a n = A118004 n

end A118004

/-! ## A118004.P14322316151783159303

`abs(A074535(n)-A074546(n))`
-/

namespace A118004.P14322316151783159303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074535 n - A074546 n|

end

end A118004.P14322316151783159303

namespace A118004

/-- `abs(A074535(n)-A074546(n))` -/
def P14322316151783159303.Spec : Prop :=
  ∀ n, P14322316151783159303.a n = A118004 n

end A118004

/-! ## A118004.P7969546935241155735

`abs(A020515(n)-A155600(n))`
-/

namespace A118004.P7969546935241155735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020515 n - A155600 n|

end

end A118004.P7969546935241155735

namespace A118004

/-- `abs(A020515(n)-A155600(n))` -/
def P7969546935241155735.Spec : Prop :=
  ∀ n, P7969546935241155735.a n = A118004 n

end A118004

/-! ## A118004.P2042033695414419084

`Δ[A002452(n)-A047849(n)]`
-/

namespace A118004.P2042033695414419084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n - A047849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118004.P2042033695414419084

namespace A118004

/-- `Δ[A002452(n)-A047849(n)]` -/
def P2042033695414419084.Spec : Prop :=
  ∀ n, P2042033695414419084.a n = A118004 n

end A118004

/-! ## A118004.P1071013419146587471

`record[A024023(A000265(n+1)-1)-A000225(n)]`
-/

namespace A118004.P1071013419146587471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 (A000265 (n + 1) - 1).toNat - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118004.P1071013419146587471

namespace A118004

/-- `record[A024023(A000265(n+1)-1)-A000225(n)]` -/
def P1071013419146587471.Spec : Prop :=
  ∀ n, P1071013419146587471.a n = A118004 n

end A118004

/-! ## A118004.P10433489404320383901

`A245804(2*n+1)/6`
-/

namespace A118004.P10433489404320383901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245804 (2 * n + 1) : ℚ) / 6

end

end A118004.P10433489404320383901

namespace A118004

/-- `A245804(2*n+1)/6` -/
def P10433489404320383901.Spec : Prop :=
  ∀ n, P10433489404320383901.a n = (A118004 n : ℚ)

end A118004

/-! ## A118004.P11566591529661232786

`record[A083323(n)-A083323(A272727(n))²]`
-/

namespace A118004.P11566591529661232786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083323 n - A083323 (A272727 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118004.P11566591529661232786

namespace A118004

/-- `record[A083323(n)-A083323(A272727(n))²]` -/
def P11566591529661232786.Spec : Prop :=
  ∀ n, P11566591529661232786.a n = A118004 n

end A118004

/-!
# A118005: a(n) = ((-1)^n*5^(n+1) + 9^(n+1))/14.

The programs for A118005, the canonical program `A118005.P18273519448180464238` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118005 has offset 0).

The definition of A118005 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((-1)^n*5^(n+1)+9^(n+1))/14` (program `A118005.P1226379915117340066`, by `A118005.P1226379915117340066.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A118005.P18273519448180464238

`4*a(n-1)+45*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A118005

/-- `4*a(n-1)+45*a(n-2)` -/
def P18273519448180464238.Spec : Prop :=
  ∀ n, (P18273519448180464238.a n : ℤ) = A118005 n

theorem P18273519448180464238.correct : P18273519448180464238.Spec := by
  intro n
  simp only [A118005]

end A118005

/-! ## A118005.P1226379915117340066

`((-1)^n*5^(n+1)+9^(n+1))/14`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A118005.P1226379915117340066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * (5 ^ (n + 1) : ℤ) + (9 ^ (n + 1) : ℤ) : ℚ) / 14

end

end A118005.P1226379915117340066

namespace A118005

/-- `((-1)^n*5^(n+1)+9^(n+1))/14` -/
def P1226379915117340066.Spec : Prop :=
  ∀ n, P1226379915117340066.a n = (A118005 n : ℚ)

theorem P1226379915117340066.correct : P1226379915117340066.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A118005, Nat.add_sub_cancel, A118005.P1226379915117340066.a, A118005.P18273519448180464238.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A118005, Nat.add_sub_cancel, A118005.P1226379915117340066.a, A118005.P18273519448180464238.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A118005

/-! ## A118005.P17315779113734048611

`9^n-5*a(n-1)` with `a(0)=1`
-/

namespace A118005.P17315779113734048611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (9 ^ n : ℤ) - 5 * a (n - 1)

end

end A118005.P17315779113734048611

namespace A118005

/-- `9^n-5*a(n-1)` -/
def P17315779113734048611.Spec : Prop :=
  ∀ n, P17315779113734048611.a n = A118005 n

end A118005

/-! ## A118005.P16244080632398489466

`9^n-lcm(5, a(n-1))` with `a(0)=1`
-/

namespace A118005.P16244080632398489466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (9 ^ n : ℤ) - (Int.lcm 5 (a (n - 1)) : ℤ)

end

end A118005.P16244080632398489466

namespace A118005

/-- `9^n-lcm(5, a(n-1))` -/
def P16244080632398489466.Spec : Prop :=
  ∀ n, P16244080632398489466.a n = A118005 n

end A118005

/-! ## A118005.P14142093884826000733

`abs(5*a(n-1)-A001019(n))` with `a(0)=1`
-/

namespace A118005.P14142093884826000733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |5 * a (n - 1) - A001019 n|

end

end A118005.P14142093884826000733

namespace A118005

/-- `abs(5*a(n-1)-A001019(n))` -/
def P14142093884826000733.Spec : Prop :=
  ∀ n, P14142093884826000733.a n = A118005 n

end A118005

/-! ## A118005.P14022036661805158816

`A024101(n)+1-5*a(n-1)` with `a(0)=1`
-/

namespace A118005.P14022036661805158816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024101 n + (1 - 5 * a (n - 1))

end

end A118005.P14022036661805158816

namespace A118005

/-- `A024101(n)+1-5*a(n-1)` -/
def P14022036661805158816.Spec : Prop :=
  ∀ n, P14022036661805158816.a n = A118005 n

end A118005

/-! ## A118005.P15922351683284787824

`abs(5*a(n-1)-A000244(n)²)` with `a(0)=1`
-/

namespace A118005.P15922351683284787824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |5 * a (n - 1) - A000244 n ^ 2|

end

end A118005.P15922351683284787824

namespace A118005

/-- `abs(5*a(n-1)-A000244(n)²)` -/
def P15922351683284787824.Spec : Prop :=
  ∀ n, P15922351683284787824.a n = A118005 n

end A118005

/-!
# A118006: Define a sequence of binary words by w(1) = 01 and w(n+1) = w(n)w(n)Reverse[w(n)]. Sequence gives the limiting word w(infinity).

The programs for A118006, the canonical program `A118006.P10735077424851259672` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118006 has offset 1).

The definition of A118006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118006.P315819691923200934

`char[Δ[lcm(2, n)]-((n+1)/3^val(n+1, 3))%3]`
-/

namespace A118006.P315819691923200934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A118006.P315819691923200934

namespace A118006

/-- `char[Δ[lcm(2, n)]-((n+1)/3^val(n+1, 3))%3]` -/
def P315819691923200934.Spec : Prop :=
  ∀ n, (P315819691923200934.a n : ℤ) = A118006 (n + 1)

end A118006

/-! ## A118006.P7016548194802432859

`1-A135022(n+1)`
-/

namespace A118006.P7016548194802432859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A135022 (n + 1)

end

end A118006.P7016548194802432859

namespace A118006

/-- `1-A135022(n+1)` -/
def P7016548194802432859.Spec : Prop :=
  ∀ n, P7016548194802432859.a n = A118006 (n + 1)

end A118006

/-! ## A118006.P8549581243945538285

`char[A136442(n)+2*n]`
-/

namespace A118006.P8549581243945538285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136442 n + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A118006.P8549581243945538285

namespace A118006

/-- `char[A136442(n)+2*n]` -/
def P8549581243945538285.Spec : Prop :=
  ∀ n, (P8549581243945538285.a n : ℤ) = A118006 (n + 1)

end A118006

/-! ## A118006.P3538293977064621808

`char[Δ[n²]-A116178(n)]`
-/

namespace A118006.P3538293977064621808
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A116178 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A118006.P3538293977064621808

namespace A118006

/-- `char[Δ[n²]-A116178(n)]` -/
def P3538293977064621808.Spec : Prop :=
  ∀ n, (P3538293977064621808.a n : ℤ) = A118006 (n + 1)

end A118006

/-! ## A118006.P10735077424851259672

`and(1, A080846(or(1, n))+n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A118006

/-- `and(1, A080846(or(1, n))+n)` -/
def P10735077424851259672.Spec : Prop :=
  ∀ n, P10735077424851259672.a n = A118006 (n + 1)

theorem P10735077424851259672.correct : P10735077424851259672.Spec := by
  intro n
  simp only [A118006, Nat.add_sub_cancel]

end A118006

/-! ## A118006.P5526433622897652714

`and(1, Δ[A026202(n+1)]+1)`
-/

namespace A118006.P5526433622897652714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n + 1)

end

end A118006.P5526433622897652714

namespace A118006

/-- `and(1, Δ[A026202(n+1)]+1)` -/
def P5526433622897652714.Spec : Prop :=
  ∀ n, P5526433622897652714.a n = A118006 (n + 1)

end A118006

/-! ## A118006.P188811065397974701

`char[A189673(2*(n+1))+2*n]`
-/

namespace A118006.P188811065397974701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (2 * (n + 1)) + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A118006.P188811065397974701

namespace A118006

/-- `char[A189673(2*(n+1))+2*n]` -/
def P188811065397974701.Spec : Prop :=
  ∀ n, (P188811065397974701.a n : ℤ) = A118006 (n + 1)

end A118006

/-! ## A118006.P6424325839535599130

`char[xor(2*n+1, A080846(Δ[n²]))]`
-/

namespace A118006.P6424325839535599130
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n + 1 : ℤ) (A080846 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A118006.P6424325839535599130

namespace A118006

/-- `char[xor(2*n+1, A080846(Δ[n²]))]` -/
def P6424325839535599130.Spec : Prop :=
  ∀ n, (P6424325839535599130.a n : ℤ) = A118006 (n + 1)

end A118006

/-! ## A118006.P11476743790649885379

`A080846(xor(1, n)%(n+1)+n+1)`
-/

namespace A118006.P11476743790649885379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (Nat.xor 1 n % (n + 1) + (n + 1))

end

end A118006.P11476743790649885379

namespace A118006

/-- `A080846(xor(1, n)%(n+1)+n+1)` -/
def P11476743790649885379.Spec : Prop :=
  ∀ n, P11476743790649885379.a n = A118006 (n + 1)

end A118006

/-! ## A118006.P7489325418988109227

`char[2*(n+1)-A060236(2*n+1)]`
-/

namespace A118006.P7489325418988109227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A060236 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A118006.P7489325418988109227

namespace A118006

/-- `char[2*(n+1)-A060236(2*n+1)]` -/
def P7489325418988109227.Spec : Prop :=
  ∀ n, (P7489325418988109227.a n : ℤ) = A118006 (n + 1)

end A118006

/-! ## A118006.P7058034673844182110

`char[2*n+1-A080846(2*n+1)]`
-/

namespace A118006.P7058034673844182110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A080846 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A118006.P7058034673844182110

namespace A118006

/-- `char[2*n+1-A080846(2*n+1)]` -/
def P7058034673844182110.Spec : Prop :=
  ∀ n, (P7058034673844182110.a n : ℤ) = A118006 (n + 1)

end A118006

/-! ## A118006.P8345673207753693180

`A080846(2*n+1-n^∑[(-1)^n])`
-/

namespace A118006.P8345673207753693180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) - (n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A118006.P8345673207753693180

namespace A118006

/-- `A080846(2*n+1-n^∑[(-1)^n])` -/
def P8345673207753693180.Spec : Prop :=
  ∀ n, P8345673207753693180.a n = A118006 (n + 1)

end A118006

/-! ## A118006.P2496685265016124732

`A189640(A321220(n))`
-/

namespace A118006.P2496685265016124732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (A321220 n).toNat

end

end A118006.P2496685265016124732

namespace A118006

/-- `A189640(A321220(n))` -/
def P2496685265016124732.Spec : Prop :=
  ∀ n, P2496685265016124732.a n = A118006 (n + 1)

end A118006

/-! ## A118006.P10247433352874719220

`A189673(A059029(n+1))`
-/

namespace A118006.P10247433352874719220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (A059029 (n + 1)).toNat

end

end A118006.P10247433352874719220

namespace A118006

/-- `A189673(A059029(n+1))` -/
def P10247433352874719220.Spec : Prop :=
  ∀ n, P10247433352874719220.a n = A118006 (n + 1)

end A118006

/-! ## A118006.P12756773964311866733

`1-A137893(A272708(n))`
-/

namespace A118006.P12756773964311866733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A137893 (A272708 n).toNat

end

end A118006.P12756773964311866733

namespace A118006

/-- `1-A137893(A272708(n))` -/
def P12756773964311866733.Spec : Prop :=
  ∀ n, P12756773964311866733.a n = A118006 (n + 1)

end A118006

/-! ## A118006.P2205842182120124971

`A137893(2*A272708(n))`
-/

namespace A118006.P2205842182120124971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (2 * A272708 n).toNat

end

end A118006.P2205842182120124971

namespace A118006

/-- `A137893(2*A272708(n))` -/
def P2205842182120124971.Spec : Prop :=
  ∀ n, P2205842182120124971.a n = A118006 (n + 1)

end A118006

/-! ## A118006.P7107636658189550024

`A137893(A272708(n)/2)`
-/

namespace A118006.P7107636658189550024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (SequenceMachineLib.roundAway ((A272708 n : ℚ) / 2)).toNat

end

end A118006.P7107636658189550024

namespace A118006

/-- `A137893(A272708(n)/2)` -/
def P7107636658189550024.Spec : Prop :=
  ∀ n, P7107636658189550024.a n = A118006 (n + 1)

end A118006

/-! ## A118006.P3747422999929115824

`char[xor(A005408(n), A116178(n))]`
-/

namespace A118006.P3747422999929115824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005408 n) (A116178 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A118006.P3747422999929115824

namespace A118006

/-- `char[xor(A005408(n), A116178(n))]` -/
def P3747422999929115824.Spec : Prop :=
  ∀ n, (P3747422999929115824.a n : ℤ) = A118006 (n + 1)

end A118006

/-! ## A118006.P473815144771954673

`1-A137893(A043547(n+1))`
-/

namespace A118006.P473815144771954673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A137893 (A043547 (n + 1)).toNat

end

end A118006.P473815144771954673

namespace A118006

/-- `1-A137893(A043547(n+1))` -/
def P473815144771954673.Spec : Prop :=
  ∀ n, P473815144771954673.a n = A118006 (n + 1)

end A118006

/-! ## A118006.P12462002661670330212

`A131719(n)*A285351(n+1)`
-/

namespace A118006.P12462002661670330212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131719 n * A285351 (n + 1)

end

end A118006.P12462002661670330212

namespace A118006

/-- `A131719(n)*A285351(n+1)` -/
def P12462002661670330212.Spec : Prop :=
  ∀ n, P12462002661670330212.a n = A118006 (n + 1)

end A118006

/-!
# A118007: Triangle, diagonals generated from Lucas polynomials.

The programs for A118007, there is no canonical definition to state claims against.
-/

/-! ## A118007.P3576865634527623398

`A299741(∑[2*n]%(comp[∑[n]]+1)+1+n)`
-/

namespace A118007.P3576865634527623398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299741 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 + n)

end

end A118007.P3576865634527623398

/-! ## A118007.P18062146569495807127

`A299741(2*(C(comp[∑[n]]-n, 2)-n)-1+n)`
-/

namespace A118007.P18062146569495807127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299741 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1 + (n : ℤ)).toNat

end

end A118007.P18062146569495807127

/-! ## A118007.P4622436205163417596

`A299741(A380649(n+1))`
-/

namespace A118007.P4622436205163417596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299741 (A380649 (n + 1)).toNat

end

end A118007.P4622436205163417596

/-! ## A118007.P7127282250445560178

`A060964(lt[2, A002262(n)])`
-/

namespace A118007.P7127282250445560178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A118007.P7127282250445560178

/-! ## A118007.P17571756104754222295

`A060964(lt[2, A096751(n)])`
-/

namespace A118007.P17571756104754222295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A118007.P17571756104754222295

/-! ## A118007.P3116761973784974182

`A060964(lt[2, A101124(n)])`
-/

namespace A118007.P3116761973784974182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A118007.P3116761973784974182

/-! ## A118007.P302185523524004036

`A060964(lt[2, A275043(n)])`
-/

namespace A118007.P302185523524004036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A118007.P302185523524004036

/-! ## A118007.P7913946918926350150

`A299741(A099375(n)+n)`
-/

namespace A118007.P7913946918926350150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299741 (A099375 n + (n : ℤ)).toNat

end

end A118007.P7913946918926350150

/-! ## A118007.P14672790907329130229

`A299741(A061579(comp[∑[n]]))`
-/

namespace A118007.P14672790907329130229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299741 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A118007.P14672790907329130229

/-! ## A118007.P17245161121679752035

`A299741(A061579(n)+A002024(n+1))`
-/

namespace A118007.P17245161121679752035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299741 (A061579 n + A002024 (n + 1)).toNat

end

end A118007.P17245161121679752035

/-!
# A118009: a(n) = 1 if at least one of decimal digits n or the concatenation of decimal digits of n is perfect power, otherwise a(n) = 0.

The programs for A118009, the canonical program `A118009.P14455406126264924193` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118009 has offset 1).

The definition of A118009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118009.P4384601634596167099

`floor(atan(A253641(n)+A117229(n)))`
-/

namespace A118009.P4384601634596167099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A253641 n + A117229 n : ℝ)⌋

end

end A118009.P4384601634596167099

namespace A118009

/-- `floor(atan(A253641(n)+A117229(n)))` -/
def P4384601634596167099.Spec : Prop :=
  ∀ n, P4384601634596167099.a n = A118009 (n + 1)

end A118009

/-! ## A118009.P9594645361321256576

`A156078(A253641(n)+A117229(n)+1)`
-/

namespace A118009.P9594645361321256576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156078 (A253641 n + A117229 n + 1).toNat

end

end A118009.P9594645361321256576

namespace A118009

/-- `A156078(A253641(n)+A117229(n)+1)` -/
def P9594645361321256576.Spec : Prop :=
  ∀ n, P9594645361321256576.a n = A118009 (n + 1)

end A118009

/-! ## A118009.P14455406126264924193

`A000040(A253641(n)+A117229(n))%2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A118009

/-- `A000040(A253641(n)+A117229(n))%2` -/
def P14455406126264924193.Spec : Prop :=
  ∀ n, P14455406126264924193.a n = A118009 (n + 1)

theorem P14455406126264924193.correct : P14455406126264924193.Spec := by
  intro n
  simp only [A118009, Nat.add_sub_cancel]

end A118009

/-! ## A118009.P11754012708242743668

`A000043(A253641(n)+A117229(n))%2`
-/

namespace A118009.P11754012708242743668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000043 (A253641 n + A117229 n).toNat) 2

end

end A118009.P11754012708242743668

namespace A118009

/-- `A000043(A253641(n)+A117229(n))%2` -/
def P11754012708242743668.Spec : Prop :=
  ∀ n, P11754012708242743668.a n = A118009 (n + 1)

end A118009

/-! ## A118009.P16843588300660753290

`A004023(A253641(n)+A117229(n))%2`
-/

namespace A118009.P16843588300660753290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004023 (A253641 n + A117229 n).toNat) 2

end

end A118009.P16843588300660753290

namespace A118009

/-- `A004023(A253641(n)+A117229(n))%2` -/
def P16843588300660753290.Spec : Prop :=
  ∀ n, P16843588300660753290.a n = A118009 (n + 1)

end A118009

/-! ## A118009.P6659605825480798108

`A057960(A253641(n)+A117229(n))%2`
-/

namespace A118009.P6659605825480798108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057960 (A253641 n + A117229 n).toNat) 2

end

end A118009.P6659605825480798108

namespace A118009

/-- `A057960(A253641(n)+A117229(n))%2` -/
def P6659605825480798108.Spec : Prop :=
  ∀ n, P6659605825480798108.a n = A118009 (n + 1)

end A118009

/-! ## A118009.P7334186239590787649

`5%A001223(A253641(n)+A117229(n))`
-/

namespace A118009.P7334186239590787649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A001223 (A253641 n + A117229 n).toNat)

end

end A118009.P7334186239590787649

namespace A118009

/-- `5%A001223(A253641(n)+A117229(n))` -/
def P7334186239590787649.Spec : Prop :=
  ∀ n, P7334186239590787649.a n = A118009 (n + 1)

end A118009

/-! ## A118009.P2227047688389343930

`A001221(or(1, A253641(n)+A117229(n)))`
-/

namespace A118009.P2227047688389343930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor 1 (A253641 n + A117229 n)).toNat

end

end A118009.P2227047688389343930

namespace A118009

/-- `A001221(or(1, A253641(n)+A117229(n)))` -/
def P2227047688389343930.Spec : Prop :=
  ∀ n, P2227047688389343930.a n = A118009 (n + 1)

end A118009

/-! ## A118009.P7240766959275279729

`A001222(or(1, A253641(n)+A117229(n)))`
-/

namespace A118009.P7240766959275279729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor 1 (A253641 n + A117229 n)).toNat

end

end A118009.P7240766959275279729

namespace A118009

/-- `A001222(or(1, A253641(n)+A117229(n)))` -/
def P7240766959275279729.Spec : Prop :=
  ∀ n, P7240766959275279729.a n = A118009 (n + 1)

end A118009

/-! ## A118009.P8450138058877471354

`13%A000005(A253641(n)+A117229(n))`
-/

namespace A118009.P8450138058877471354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 13 (A000005 (A253641 n + A117229 n).toNat)

end

end A118009.P8450138058877471354

namespace A118009

/-- `13%A000005(A253641(n)+A117229(n))` -/
def P8450138058877471354.Spec : Prop :=
  ∀ n, P8450138058877471354.a n = A118009 (n + 1)

end A118009

/-! ## A118009.P5946027360998379335

`A000045(∑{e}[A253641(n)+A117229(n), #])`
-/

namespace A118009.P5946027360998379335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n + A117229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A118009.P5946027360998379335

namespace A118009

/-- `A000045(∑{e}[A253641(n)+A117229(n), #])` -/
def P5946027360998379335.Spec : Prop :=
  ∀ n, P5946027360998379335.a n = A118009 (n + 1)

end A118009

/-! ## A118009.P9704957191225858404

`∑{e}[A006530(A253641(n)+A117229(n)), #]`
-/

namespace A118009.P9704957191225858404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A253641 n + A117229 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A118009.P9704957191225858404

namespace A118009

/-- `∑{e}[A006530(A253641(n)+A117229(n)), #]` -/
def P9704957191225858404.Spec : Prop :=
  ∀ n, (P9704957191225858404.a n : ℤ) = A118009 (n + 1)

end A118009

/-! ## A118009.P14660993886587450017

`∑{e}[A020639(A253641(n)+A117229(n)), #]`
-/

namespace A118009.P14660993886587450017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A253641 n + A117229 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A118009.P14660993886587450017

namespace A118009

/-- `∑{e}[A020639(A253641(n)+A117229(n)), #]` -/
def P14660993886587450017.Spec : Prop :=
  ∀ n, (P14660993886587450017.a n : ℤ) = A118009 (n + 1)

end A118009

/-! ## A118009.P13346817487113952553

`A026741(∑{e}[A253641(n)+A117229(n), #])`
-/

namespace A118009.P13346817487113952553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n + A117229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A118009.P13346817487113952553

namespace A118009

/-- `A026741(∑{e}[A253641(n)+A117229(n), #])` -/
def P13346817487113952553.Spec : Prop :=
  ∀ n, P13346817487113952553.a n = A118009 (n + 1)

end A118009

/-! ## A118009.P8899866658615414637

`and(1, A000040((A253641(n)+A117229(n))²))`
-/

namespace A118009.P8899866658615414637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 ((A253641 n + A117229 n) ^ 2).toNat)

end

end A118009.P8899866658615414637

namespace A118009

/-- `and(1, A000040((A253641(n)+A117229(n))²))` -/
def P8899866658615414637.Spec : Prop :=
  ∀ n, P8899866658615414637.a n = A118009 (n + 1)

end A118009

/-! ## A118009.P11168384004718183341

`A000005(or(1, A253641(n)+A117229(n)))-1`
-/

namespace A118009.P11168384004718183341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor 1 (A253641 n + A117229 n)).toNat - 1

end

end A118009.P11168384004718183341

namespace A118009

/-- `A000005(or(1, A253641(n)+A117229(n)))-1` -/
def P11168384004718183341.Spec : Prop :=
  ∀ n, P11168384004718183341.a n = A118009 (n + 1)

end A118009

/-! ## A118009.P2983975164291620506

`A001221(∑{e}[A253641(n)+A117229(n), #]+1)`
-/

namespace A118009.P2983975164291620506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n + A117229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1)

end

end A118009.P2983975164291620506

namespace A118009

/-- `A001221(∑{e}[A253641(n)+A117229(n), #]+1)` -/
def P2983975164291620506.Spec : Prop :=
  ∀ n, P2983975164291620506.a n = A118009 (n + 1)

end A118009

/-! ## A118009.P5643824933689651060

`A001222(∑{e}[A253641(n)+A117229(n), #]+1)`
-/

namespace A118009.P5643824933689651060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n + A117229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1)

end

end A118009.P5643824933689651060

namespace A118009

/-- `A001222(∑{e}[A253641(n)+A117229(n), #]+1)` -/
def P5643824933689651060.Spec : Prop :=
  ∀ n, P5643824933689651060.a n = A118009 (n + 1)

end A118009

/-! ## A118009.P9552882728799391352

`A000051(∑{e}[A253641(n)+A117229(n), #])%2`
-/

namespace A118009.P9552882728799391352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n + A117229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)) 2

end

end A118009.P9552882728799391352

namespace A118009

/-- `A000051(∑{e}[A253641(n)+A117229(n), #])%2` -/
def P9552882728799391352.Spec : Prop :=
  ∀ n, P9552882728799391352.a n = A118009 (n + 1)

end A118009

/-! ## A118009.P18373700713940305540

`A000041(a(n-1))%(A253641(n)+A117229(n))` with `a(0)=1`
-/

namespace A118009.P18373700713940305540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A000041 (a (n - 1)).toNat) (A253641 n + A117229 n)

end

end A118009.P18373700713940305540

namespace A118009

/-- `A000041(a(n-1))%(A253641(n)+A117229(n))` -/
def P18373700713940305540.Spec : Prop :=
  ∀ n, P18373700713940305540.a n = A118009 (n + 1)

end A118009

/-!
# A118011: Complement of the Connell sequence (A001614); a(n) = 4*n - A001614(n).

The programs for A118011, the canonical program `A118011.P16071621871497293811` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118011 has offset 1).

The definition of A118011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118011.P7409753847888578619

`2*(n+1)+round(sqrt(2*(n+1)))`
-/

namespace A118011.P7409753847888578619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))

end

end A118011.P7409753847888578619

namespace A118011

/-- `2*(n+1)+round(sqrt(2*(n+1)))` -/
def P7409753847888578619.Spec : Prop :=
  ∀ n, P7409753847888578619.a n = A118011 (n + 1)

end A118011

/-! ## A118011.P16071621871497293811

`4*(n+1)-A001614(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A118011

/-- `4*(n+1)-A001614(n+1)` -/
def P16071621871497293811.Spec : Prop :=
  ∀ n, P16071621871497293811.a n = A118011 (n + 1)

theorem P16071621871497293811.correct : P16071621871497293811.Spec := by
  intro n
  simp only [A118011, Nat.add_sub_cancel]

end A118011

/-! ## A118011.P17964803060722448809

`abs(xor(comp[∑[n]]+n, -1))`
-/

namespace A118011.P17964803060722448809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n : ℤ) (-1)|

end

end A118011.P17964803060722448809

namespace A118011

/-- `abs(xor(comp[∑[n]]+n, -1))` -/
def P17964803060722448809.Spec : Prop :=
  ∀ n, P17964803060722448809.a n = A118011 (n + 1)

end A118011

/-! ## A118011.P1375590018848590703

`-xor(comp[∑[n]]+n, -1)`
-/

namespace A118011.P1375590018848590703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n : ℤ) (-1)

end

end A118011.P1375590018848590703

namespace A118011

/-- `-xor(comp[∑[n]]+n, -1)` -/
def P1375590018848590703.Spec : Prop :=
  ∀ n, P1375590018848590703.a n = A118011 (n + 1)

end A118011

/-! ## A118011.P5197233474053298560

`lt[0, floor(n-sqrt(n))%2]`
-/

namespace A118011.P5197233474053298560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℝ) - Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118011.P5197233474053298560

namespace A118011

/-- `lt[0, floor(n-sqrt(n))%2]` -/
def P5197233474053298560.Spec : Prop :=
  ∀ n, (P5197233474053298560.a n : ℤ) = A118011 (n + 1)

end A118011

/-! ## A118011.P11578061116539985335

`eq[1, ceil(sqrt(n)+n)%2]`
-/

namespace A118011.P11578061116539985335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (n : ℝ) + (n : ℝ)⌉ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118011.P11578061116539985335

namespace A118011

/-- `eq[1, ceil(sqrt(n)+n)%2]` -/
def P11578061116539985335.Spec : Prop :=
  ∀ n, (P11578061116539985335.a n : ℤ) = A118011 (n + 1)

end A118011

/-! ## A118011.P9952563465783566418

`eq[1, gcd(2, ceil(sqrt(n)+n))]`
-/

namespace A118011.P9952563465783566418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌈Real.sqrt (n : ℝ) + (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118011.P9952563465783566418

namespace A118011

/-- `eq[1, gcd(2, ceil(sqrt(n)+n))]` -/
def P9952563465783566418.Spec : Prop :=
  ∀ n, (P9952563465783566418.a n : ℤ) = A118011 (n + 1)

end A118011

/-! ## A118011.P17524019008318452462

`(A182664(n+1)+1)/2`
-/

namespace A118011.P17524019008318452462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182664 (n + 1) + 1 : ℚ) / 2

end

end A118011.P17524019008318452462

namespace A118011

/-- `(A182664(n+1)+1)/2` -/
def P17524019008318452462.Spec : Prop :=
  ∀ n, P17524019008318452462.a n = (A118011 (n + 1) : ℚ)

end A118011

/-!
# A118012: a(n) = 4*A117384(n) - n; a self-inverse permutation of the natural numbers.

The programs for A118012, there is no canonical definition to state claims against.
-/

/-! ## A118012.P18031936359365617098

`4*A117384(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A118012.P18031936359365617098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A117384 (n + 1) - (n + 1 : ℤ)

end

end A118012.P18031936359365617098

/-! ## A118012.P3411788663863886308

`2*or(1, A127366(n))+1-n`
-/

namespace A118012.P3411788663863886308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (A127366 n) + (1 - (n : ℤ))

end

end A118012.P3411788663863886308

/-! ## A118012.P4691255534816767752

`Δ[A086520(n+1)²]+2+n`
-/

namespace A118012.P4691255534816767752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 + (n : ℤ)

end

end A118012.P4691255534816767752

/-! ## A118012.P7369648503362749073

`A005408(or(1, A127366(n)))-n`
-/

namespace A118012.P7369648503362749073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.lor 1 (A127366 n)).toNat - (n : ℤ)

end

end A118012.P7369648503362749073

/-! ## A118012.P13456762413065373858

`A014601(or(1, A127366(n)))-n`
-/

namespace A118012.P13456762413065373858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (Int.lor 1 (A127366 n)).toNat - (n : ℤ)

end

end A118012.P13456762413065373858

/-! ## A118012.P17169877950655468644

`A004767(A117384(n+1)-1)-n`
-/

namespace A118012.P17169877950655468644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A117384 (n + 1) - 1).toNat - (n : ℤ)

end

end A118012.P17169877950655468644

/-! ## A118012.P6758157142025423074

`A004273(2*A117384(n+1))-n`
-/

namespace A118012.P6758157142025423074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * A117384 (n + 1)).toNat - (n : ℤ)

end

end A118012.P6758157142025423074

/-! ## A118012.P13343173540613536572

`A004273(or(1, A127366(n)))+2-n`
-/

namespace A118012.P13343173540613536572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Int.lor 1 (A127366 n)).toNat + (2 - (n : ℤ))

end

end A118012.P13343173540613536572

/-! ## A118012.P3811137418490769369

`A053438(or(1, A127366(n)))-(n-1)`
-/

namespace A118012.P3811137418490769369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (Int.lor 1 (A127366 n)).toNat - ((n : ℤ) - 1)

end

end A118012.P3811137418490769369

/-! ## A118012.P5945216157524815977

`Δ[A000096(n)+A086520(n+1)²]`
-/

namespace A118012.P5945216157524815977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + A086520 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118012.P5945216157524815977

/-!
# A118013: Triangle read by rows: T(n,k) = floor(n^2/k), 1<=k<=n.

The programs for A118013, the canonical program `A118013.P7372611043632226220` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118013 has offset 1).

The definition of A118013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118013.P7372611043632226220

`floor(A093995(n+1)/A002260(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A118013

/-- `floor(A093995(n+1)/A002260(n+1))` -/
def P7372611043632226220.Spec : Prop :=
  ∀ n, P7372611043632226220.a n = A118013 (n + 1)

theorem P7372611043632226220.correct : P7372611043632226220.Spec := by
  intro n
  simp only [A118013, Nat.add_sub_cancel]

end A118013

/-! ## A118013.P15491428638356149165

`floor(A002024(n+1)²/A002260(n+1))`
-/

namespace A118013.P15491428638356149165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002024 (n + 1) ^ 2 : ℚ) / (A002260 (n + 1) : ℚ)⌋

end

end A118013.P15491428638356149165

namespace A118013

/-- `floor(A002024(n+1)²/A002260(n+1))` -/
def P15491428638356149165.Spec : Prop :=
  ∀ n, P15491428638356149165.a n = A118013 (n + 1)

end A118013

/-! ## A118013.P2383067131212409974

`floor(A002024(n+1)²/(A002262(n)+1))`
-/

namespace A118013.P2383067131212409974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002024 (n + 1) ^ 2 : ℚ) / (A002262 n + 1 : ℚ)⌋

end

end A118013.P2383067131212409974

namespace A118013

/-- `floor(A002024(n+1)²/(A002262(n)+1))` -/
def P2383067131212409974.Spec : Prop :=
  ∀ n, P2383067131212409974.a n = A118013 (n + 1)

end A118013

/-! ## A118013.P6851688633124589432

`floor((A038722(n+1)+n)/A002260(n+1))`
-/

namespace A118013.P6851688633124589432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038722 (n + 1) + (n : ℤ) : ℚ) / (A002260 (n + 1) : ℚ)⌋

end

end A118013.P6851688633124589432

namespace A118013

/-- `floor((A038722(n+1)+n)/A002260(n+1))` -/
def P6851688633124589432.Spec : Prop :=
  ∀ n, P6851688633124589432.a n = A118013 (n + 1)

end A118013

/-! ## A118013.P17303454827587087428

`floor((A061579(n)+1+n)/A002260(n+1))`
-/

namespace A118013.P17303454827587087428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061579 n + 1 + (n : ℤ) : ℚ) / (A002260 (n + 1) : ℚ)⌋

end

end A118013.P17303454827587087428

namespace A118013

/-- `floor((A061579(n)+1+n)/A002260(n+1))` -/
def P17303454827587087428.Spec : Prop :=
  ∀ n, P17303454827587087428.a n = A118013 (n + 1)

end A118013

/-! ## A118013.P11823636311297955780

`floor(A349520(2*(n+1))²/A349520(2*n+1))`
-/

namespace A118013.P11823636311297955780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A349520 (2 * (n + 1)) ^ 2 : ℚ) / (A349520 (2 * n + 1) : ℚ)⌋

end

end A118013.P11823636311297955780

namespace A118013

/-- `floor(A349520(2*(n+1))²/A349520(2*n+1))` -/
def P11823636311297955780.Spec : Prop :=
  ∀ n, P11823636311297955780.a n = A118013 (n + 1)

end A118013

/-!
# A118014: a(n) = Sum_{k=1..n} floor(n^2/k).

The programs for A118014, there is no canonical definition to state claims against.
-/

/-! ## A118014.P6806321154646290826

`A166381(floor(1/(n+1))+n)+n²`
-/

namespace A118014.P6806321154646290826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166381 (⌊1 / (n + 1 : ℚ)⌋ + (n : ℤ)).toNat + (n ^ 2 : ℤ)

end

end A118014.P6806321154646290826

/-! ## A118014.P11063586111202537224

`(A006218(n²)+n²)/2`
-/

namespace A118014.P11063586111202537224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006218 (n ^ 2) + (n ^ 2 : ℤ) : ℚ) / 2

end

end A118014.P11063586111202537224

/-! ## A118014.P7317599268257112469

`(A226355(n²)-1)/8`
-/

namespace A118014.P7317599268257112469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226355 (n ^ 2) - 1 : ℚ) / 8

end

end A118014.P7317599268257112469

/-! ## A118014.P13754337144572998190

`floor(A006590(n²+1)/2)`
-/

namespace A118014.P13754337144572998190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006590 (n ^ 2 + 1) : ℚ) / 2⌋

end

end A118014.P13754337144572998190

/-! ## A118014.P10776212661273515268

`A014682(A006218(n²)+n²)`
-/

namespace A118014.P10776212661273515268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A006218 (n ^ 2) + (n ^ 2 : ℤ)).toNat

end

end A118014.P10776212661273515268

/-!
# A118015: a(n) = floor(n^2/5).

The programs for A118015, the canonical program `A118015.P9136959961094046936` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118015 has offset 0).

The definition of A118015 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/5)` (program `A118015.P9136959961094046936`, by `A118015.P9136959961094046936.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A118015.P9136959961094046936

`floor(n²/5)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A118015

/-- `floor(n²/5)` -/
def P9136959961094046936.Spec : Prop :=
  ∀ n, P9136959961094046936.a n = A118015 n

theorem P9136959961094046936.correct : P9136959961094046936.Spec := by
  intro n
  simp only [A118015]

end A118015

/-! ## A118015.P10107509048638697766

`∑[∑[floor(n%5/3)]]`
-/

namespace A118015.P10107509048638697766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n % 5 : ℕ) : ℚ) / 3⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118015.P10107509048638697766

namespace A118015

/-- `∑[∑[floor(n%5/3)]]` -/
def P10107509048638697766.Spec : Prop :=
  ∀ n, P10107509048638697766.a n = A118015 n

end A118015

/-! ## A118015.P4421906682270431083

`∑[∑[((2*n)%5)%2]]`
-/

namespace A118015.P4421906682270431083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 5 % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118015.P4421906682270431083

namespace A118015

/-- `∑[∑[((2*n)%5)%2]]` -/
def P4421906682270431083.Spec : Prop :=
  ∀ n, (P4421906682270431083.a n : ℤ) = A118015 n

end A118015

/-! ## A118015.P14170963948470543128

`(n²-n²%5)/5`
-/

namespace A118015.P14170963948470543128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - ((n ^ 2 % 5 : ℕ) : ℤ) : ℚ) / 5

end

end A118015.P14170963948470543128

namespace A118015

/-- `(n²-n²%5)/5` -/
def P14170963948470543128.Spec : Prop :=
  ∀ n, P14170963948470543128.a n = (A118015 n : ℚ)

end A118015

/-! ## A118015.P14170509506077772679

`∑[∑[and(1, floor(2*n/5))]]`
-/

namespace A118015.P14170509506077772679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊2 * ((n : ℚ) / 5)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118015.P14170509506077772679

namespace A118015

/-- `∑[∑[and(1, floor(2*n/5))]]` -/
def P14170509506077772679.Spec : Prop :=
  ∀ n, P14170509506077772679.a n = A118015 n

end A118015

/-! ## A118015.P4245108441879783002

`∑[∑[6%gcd(5, ∑[n+1])]]`
-/

namespace A118015.P4245108441879783002
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 % Nat.gcd 5 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118015.P4245108441879783002

namespace A118015

/-- `∑[∑[6%gcd(5, ∑[n+1])]]` -/
def P4245108441879783002.Spec : Prop :=
  ∀ n, (P4245108441879783002.a n : ℤ) = A118015 n

end A118015

/-! ## A118015.P11392794234097048366

`∑[a(n-5)+2]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2`
-/

namespace A118015.P11392794234097048366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 2] fun n f1 =>
  f1 (n - 5) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118015.P11392794234097048366

namespace A118015

/-- `∑[a(n-5)+2]` -/
def P11392794234097048366.Spec : Prop :=
  ∀ n, (P11392794234097048366.a n : ℤ) = A118015 n

end A118015

/-! ## A118015.P5779771048974580016

`∑[∑[a(n-5)²]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A118015.P5779771048974580016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 1] fun n f2 =>
  f2 (n - 5) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118015.P5779771048974580016

namespace A118015

/-- `∑[∑[a(n-5)²]]` -/
def P5779771048974580016.Spec : Prop :=
  ∀ n, (P5779771048974580016.a n : ℤ) = A118015 n

end A118015

/-! ## A118015.P6543225231123510566

`∑[∑[floor(a(n-5))]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A118015.P6543225231123510566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 1] fun n f2 =>
  f2 (n - 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118015.P6543225231123510566

namespace A118015

/-- `∑[∑[floor(a(n-5))]]` -/
def P6543225231123510566.Spec : Prop :=
  ∀ n, (P6543225231123510566.a n : ℤ) = A118015 n

end A118015

/-! ## A118015.P54503137762120481

`round(or(2, (n+2)*(n-2))/5)`
-/

namespace A118015.P54503137762120481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor 2 ((n + 2 : ℤ) * ((n : ℤ) - 2)) : ℚ) / 5)

end

end A118015.P54503137762120481

namespace A118015

/-- `round(or(2, (n+2)*(n-2))/5)` -/
def P54503137762120481.Spec : Prop :=
  ∀ n, P54503137762120481.a n = A118015 n

end A118015

/-! ## A118015.P3947471018159415187

`round(xor(2, (n+2)*(n-2))/5)`
-/

namespace A118015.P3947471018159415187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor 2 ((n + 2 : ℤ) * ((n : ℤ) - 2)) : ℚ) / 5)

end

end A118015.P3947471018159415187

namespace A118015

/-- `round(xor(2, (n+2)*(n-2))/5)` -/
def P3947471018159415187.Spec : Prop :=
  ∀ n, P3947471018159415187.a n = A118015 n

end A118015

/-! ## A118015.P15726093527186807904

`∑[∑[1-(∑[n+1]^4)%5]]`
-/

namespace A118015.P15726093527186807904
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ j ∈ Finset.range (n + 1), f3 j) ^ 4 % 5 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118015.P15726093527186807904

namespace A118015

/-- `∑[∑[1-(∑[n+1]^4)%5]]` -/
def P15726093527186807904.Spec : Prop :=
  ∀ n, P15726093527186807904.a n = A118015 n

end A118015

/-! ## A118015.P12702894012571959519

`round((lcm(n, n+1)-(n+2))/5)`
-/

namespace A118015.P12702894012571959519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lcm n (n + 1) : ℤ) - (n + 2 : ℤ) : ℚ) / 5)

end

end A118015.P12702894012571959519

namespace A118015

/-- `round((lcm(n, n+1)-(n+2))/5)` -/
def P12702894012571959519.Spec : Prop :=
  ∀ n, P12702894012571959519.a n = A118015 n

end A118015

/-! ## A118015.P11293187041670245867

`(n+1)²-∑[comp[and(n, n+3)]]`
-/

namespace A118015.P11293187041670245867
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A118015.P11293187041670245867

namespace A118015

/-- `(n+1)²-∑[comp[and(n, n+3)]]` -/
def P11293187041670245867.Spec : Prop :=
  ∀ n, P11293187041670245867.a n = A118015 n

end A118015

/-! ## A118015.P8028023916677169756

`∑[∑[a(n-5)^3]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A118015.P8028023916677169756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 1] fun n f2 =>
  f2 (n - 5) ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118015.P8028023916677169756

namespace A118015

/-- `∑[∑[a(n-5)^3]]` -/
def P8028023916677169756.Spec : Prop :=
  ∀ n, (P8028023916677169756.a n : ℤ) = A118015 n

end A118015

/-! ## A118015.P17588854644706139978

`∑[∑[a(n-5)%2]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A118015.P17588854644706139978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 1] fun n f2 =>
  f2 (n - 5) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118015.P17588854644706139978

namespace A118015

/-- `∑[∑[a(n-5)%2]]` -/
def P17588854644706139978.Spec : Prop :=
  ∀ n, (P17588854644706139978.a n : ℤ) = A118015 n

end A118015

/-! ## A118015.P10331552505598469445

`ceil(lcm(n+2, n+3)/5-(n+2))`
-/

namespace A118015.P10331552505598469445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm (n + 2) (n + 3) : ℚ) / 5 - (n + 2 : ℚ)⌉

end

end A118015.P10331552505598469445

namespace A118015

/-- `ceil(lcm(n+2, n+3)/5-(n+2))` -/
def P10331552505598469445.Spec : Prop :=
  ∀ n, P10331552505598469445.a n = A118015 n

end A118015

/-! ## A118015.P15358289061482830218

`∑[∑[1-gcd(a(n-2), a(n-3))]]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A118015.P15358289061482830218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  1 - (Int.gcd (f2 (n - 2)) (f2 (n - 3)) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118015.P15358289061482830218

namespace A118015

/-- `∑[∑[1-gcd(a(n-2), a(n-3))]]` -/
def P15358289061482830218.Spec : Prop :=
  ∀ n, P15358289061482830218.a n = A118015 n

end A118015

/-! ## A118015.P3762787455295727268

`∑[∑[A011658(n)]]`
-/

namespace A118015.P3762787455295727268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011658 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118015.P3762787455295727268

namespace A118015

/-- `∑[∑[A011658(n)]]` -/
def P3762787455295727268.Spec : Prop :=
  ∀ n, P3762787455295727268.a n = A118015 n

end A118015

/-! ## A118015.P2522473041490906742

`A398050(n)-∑[n]`
-/

namespace A118015.P2522473041490906742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398050 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A118015.P2522473041490906742

namespace A118015

/-- `A398050(n)-∑[n]` -/
def P2522473041490906742.Spec : Prop :=
  ∀ n, P2522473041490906742.a n = A118015 n

end A118015

/-!
# A118016: Integers of the form 2^k/(k-1).

The programs for A118016, the canonical program `A118016.P13608870388523236126` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118016 has offset 1).

The definition of A118016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118016.P13608870388523236126

`4*A016031(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A118016

/-- `4*A016031(n+1)` -/
def P13608870388523236126.Spec : Prop :=
  ∀ n, P13608870388523236126.a n = A118016 (n + 1)

theorem P13608870388523236126.correct : P13608870388523236126.Spec := by
  intro n
  simp only [A118016, Nat.add_sub_cancel]

end A118016

/-! ## A118016.P14880009126398156222

`2^(2^n+1-n)`
-/

namespace A118016.P14880009126398156222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 ^ n : ℤ) + (1 - (n : ℤ)) : ℤ)

end

end A118016.P14880009126398156222

namespace A118016

/-- `2^(2^n+1-n)` -/
def P14880009126398156222.Spec : Prop :=
  ∀ n, P14880009126398156222.a n = (A118016 (n + 1) : ℚ)

end A118016

/-! ## A118016.P645542490694724902

`∏[2*a(n-1)²]` with `a(0)=4, a(1)=1`
-/

namespace A118016.P645542490694724902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  2 * f1 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118016.P645542490694724902

namespace A118016

/-- `∏[2*a(n-1)²]` -/
def P645542490694724902.Spec : Prop :=
  ∀ n, (P645542490694724902.a n : ℤ) = A118016 (n + 1)

end A118016

/-! ## A118016.P15594703431769324291

`a(n-1)²*2^(n-3)` with `a(0)=4`
-/

namespace A118016.P15594703431769324291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) ^ 2 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A118016.P15594703431769324291

namespace A118016

/-- `a(n-1)²*2^(n-3)` -/
def P15594703431769324291.Spec : Prop :=
  ∀ n, P15594703431769324291.a n = (A118016 (n + 1) : ℚ)

end A118016

/-! ## A118016.P9394500754041798860

`a(n-1)²/2^(3-n)` with `a(0)=4`
-/

namespace A118016.P9394500754041798860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) ^ 2 / (2 : ℚ) ^ (3 - (n : ℤ) : ℤ)

end

end A118016.P9394500754041798860

namespace A118016

/-- `a(n-1)²/2^(3-n)` -/
def P9394500754041798860.Spec : Prop :=
  ∀ n, P9394500754041798860.a n = (A118016 (n + 1) : ℚ)

end A118016

/-!
# A118017: Largest denominators in even Egyptian fraction representation of 1.

The programs for A118017, there is no canonical definition to state claims against.
-/

/-! ## A118017.P12192661734978885889

`floor((a(n-1)+1)²/2)` with `a(0)=12`
-/

namespace A118017.P12192661734978885889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  ⌊((a (n - 1) + 1) ^ 2 : ℚ) / 2⌋

end

end A118017.P12192661734978885889

/-! ## A118017.P892550185861844110

`a(n-1)+a(n-1)²/2` with `a(0)=12`
-/

namespace A118017.P892550185861844110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [12] fun n a =>
  a (n - 1) + a (n - 1) ^ 2 / 2

end

end A118017.P892550185861844110

/-! ## A118017.P1246481704070303789

`A053631(n+3)`
-/

namespace A118017.P1246481704070303789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053631 (n + 3)

end

end A118017.P1246481704070303789

/-!
# A118021: Numbers n such that (1+n)/n does not converge to an integer under the approximate cubing map x -> x*ceiling(x^2).

The programs for A118021, there is no canonical definition to state claims against.
-/

/-! ## A118021.P11633630433087906364

`lt[A118020(n+1), 0]+1`
-/

namespace A118021.P11633630433087906364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118020 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A118021.P11633630433087906364

/-! ## A118021.P6218260284474454640

`lt[A118020(A028310(n)), 0]`
-/

namespace A118021.P6218260284474454640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118020 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A118021.P6218260284474454640

/-! ## A118021.P14749606045032902233

`A014681(lt[A118020(n+1), 0])`
-/

namespace A118021.P14749606045032902233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118020 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A118021.P14749606045032902233

/-! ## A118021.P14734394919764403786

`A020725(lt[A118020(n+1), 0])`
-/

namespace A118021.P14734394919764403786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118020 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A118021.P14734394919764403786

/-! ## A118021.P3692914571789829868

`eq[A033999(n), A118020(n+1)]+1`
-/

namespace A118021.P3692914571789829868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118020 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A118021.P3692914571789829868

/-!
# A118023: Column 0 of triangle A118022, where the matrix square of A118022 shifts each column up 1 row, dropping the main diagonal of powers of 2.

The programs for A118023, there is no canonical definition to state claims against.
-/

/-! ## A118023.P17792941194600041526

`A118022(∑[n])`
-/

namespace A118023.P17792941194600041526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118022 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A118023.P17792941194600041526

/-! ## A118023.P11685093586839192333

`or(1, A118022(C(n+1, 2)))`
-/

namespace A118023.P11685093586839192333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A118022 (Nat.choose (n + 1) 2))

end

end A118023.P11685093586839192333

/-! ## A118023.P7218188689606076708

`or(1, A118022(A000217(n)))`
-/

namespace A118023.P7218188689606076708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A118022 (A000217 n).toNat)

end

end A118023.P7218188689606076708

/-! ## A118023.P7483605659915261458

`A118022(C(n+1, 2))+A000122(3*n+2)`
-/

namespace A118023.P7483605659915261458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118022 (Nat.choose (n + 1) 2) + A000122 (3 * n + 2)

end

end A118023.P7483605659915261458

/-! ## A118023.P9610200035877156676

`A118022(A000217(n))+A009714(n)`
-/

namespace A118023.P9610200035877156676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118022 (A000217 n).toNat + A009714 n

end

end A118023.P9610200035877156676

/-!
# A118024: Triangle T, read by rows, T(n,k) = T(n-k)*2^(k*(n-k)) such that column 0 of the matrix square of T equals column 0 of T shifted left: [T^2](n,k) = T(n-k+1,0)*2^(k*(n-k)) for n>=k>=0.

The programs for A118024, there is no canonical definition to state claims against.
-/

/-! ## A118024.P9481455492692425868

`A117401(n)*A118025(A025581(n))`
-/

namespace A118024.P9481455492692425868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117401 n * A118025 (A025581 n).toNat

end

end A118024.P9481455492692425868

/-! ## A118024.P10923124201122918846

`sqrt(A118185(n))*A118025(A025581(n))`
-/

namespace A118024.P10923124201122918846
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118185 n : ℝ) * (A118025 (A025581 n).toNat : ℝ)

end

end A118024.P10923124201122918846

/-! ## A118024.P15579507557673682085

`2^A004247(n)*A118025(A025581(n))`
-/

namespace A118024.P15579507557673682085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004247 n : ℤ) * (A118025 (A025581 n).toNat : ℚ)

end

end A118024.P15579507557673682085

/-! ## A118024.P6571150278478395841

`2^(A077028(n)-1)*A118025(A025581(n))`
-/

namespace A118024.P6571150278478395841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A077028 n - 1 : ℤ) * (A118025 (A025581 n).toNat : ℚ)

end

end A118024.P6571150278478395841

/-! ## A118024.P7695169519049902671

`2^(1-A176270(n))*A118025(A025581(n))`
-/

namespace A118024.P7695169519049902671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (1 - A176270 n : ℤ) * (A118025 (A025581 n).toNat : ℚ)

end

end A118024.P7695169519049902671

/-!
# A118025: Column 0 of triangle A118024; also, column 0 of the matrix square of A118024 equals this sequence shifted 1 place left.

The programs for A118025, there is no canonical definition to state claims against.
-/

/-! ## A118025.P10353084004077637013

`A118024(∑[n])`
-/

namespace A118025.P10353084004077637013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118024 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A118025.P10353084004077637013

/-! ## A118025.P16979889496489941584

`A118024(A000217(n))+char[10]`
-/

namespace A118025.P16979889496489941584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118024 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A118025.P16979889496489941584

/-! ## A118025.P13859267636552689237

`A184964(n)+A118024(A000217(n))`
-/

namespace A118025.P13859267636552689237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184964 n + A118024 (A000217 n).toNat

end

end A118025.P13859267636552689237

/-! ## A118025.P15530360718287240411

`A185246(n)+A118024(A000217(n))`
-/

namespace A118025.P15530360718287240411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 n + A118024 (A000217 n).toNat

end

end A118025.P15530360718287240411

/-! ## A118025.P5440624451542404847

`A185284(n)+A118024(A000217(n))`
-/

namespace A118025.P5440624451542404847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A118024 (A000217 n).toNat

end

end A118025.P5440624451542404847

/-!
# A118026: a(0) = 0, a(n) = a(n-1) + (largest integer which is <= n and is missing from the earlier terms of the sequence).

The programs for A118026, there is no canonical definition to state claims against.
-/

/-! ## A118026.P213800618528990254

`A000124(n)-A172471(A178832(3*n))`
-/

namespace A118026.P213800618528990254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A172471 (A178832 (3 * n)).toNat

end

end A118026.P213800618528990254

/-! ## A118026.P15440292649743782590

`A342939(n+1)-A257639(A190394(n+1))`
-/

namespace A118026.P15440292649743782590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342939 (n + 1) - A257639 (A190394 (n + 1)).toNat

end

end A118026.P15440292649743782590

/-! ## A118026.P11743807485214685193

`eq[A103128(A103128(n+1)), A200370(n+1)]`
-/

namespace A118026.P11743807485214685193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A103128 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118026.P11743807485214685193

/-! ## A118026.P15083695288054532088

`A000217(n)-A001221(A081123(n+1))`
-/

namespace A118026.P15083695288054532088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A001221 (A081123 (n + 1)).toNat

end

end A118026.P15083695288054532088

/-! ## A118026.P7406498126120275272

`A066446(A000079(n))-A056172(n+1)`
-/

namespace A118026.P7406498126120275272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (A000079 n).toNat - A056172 (n + 1)

end

end A118026.P7406498126120275272

/-!
# A118027: a(0) = 0, a(n) = a(n-1) + (smallest integer which is >= n and is missing from the earlier terms of the sequence).

The programs for A118027, there is no canonical definition to state claims against.
-/

/-! ## A118027.P8306543638675517023

`A262352(A011379(n))+∑[n]`
-/

namespace A118027.P8306543638675517023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262352 (A011379 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A118027.P8306543638675517023

/-! ## A118027.P11328529074061400559

`A262352(A034262(n))+∑[n]`
-/

namespace A118027.P11328529074061400559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262352 (A034262 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A118027.P11328529074061400559

/-! ## A118027.P15599064491229471032

`A000124(n)+A262352(A011379(n))-1`
-/

namespace A118027.P15599064491229471032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + (A262352 (A011379 n).toNat - 1)

end

end A118027.P15599064491229471032

/-! ## A118027.P11072084472422315416

`∑[A143538(A343095(n)+A001065(2*n+3))+n]`
-/

namespace A118027.P11072084472422315416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143538 (A343095 n + A001065 (2 * n + 3)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118027.P11072084472422315416

/-! ## A118027.P2909991220551239995

`eq[A002260(n+1), A178487(A135061(n+1))]`
-/

namespace A118027.P2909991220551239995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A135061 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118027.P2909991220551239995

/-!
# A118028: a(0)=1. a(n) = a(n-1) + (smallest integer which is >= n and is missing from the earlier terms of the sequence).

The programs for A118028, there is no canonical definition to state claims against.
-/

/-! ## A118028.P5800893691601835901

`A257639(A257639(A016898(n)))+A000217(n)`
-/

namespace A118028.P5800893691601835901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A257639 (A016898 n).toNat).toNat + A000217 n

end

end A118028.P5800893691601835901

/-! ## A118028.P4771525109639551865

`A363832(A358404(n+1))+A000217(n)`
-/

namespace A118028.P4771525109639551865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363832 (A358404 (n + 1)).toNat + A000217 n

end

end A118028.P4771525109639551865

/-! ## A118028.P16163864689706190697

`A084558(A015128(n))+A000217(n)`
-/

namespace A118028.P16163864689706190697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A015128 n).toNat + A000217 n

end

end A118028.P16163864689706190697

/-! ## A118028.P11526338460596560325

`∑[Δ[A127267(A070911(3*n+5))]+n]`
-/

namespace A118028.P11526338460596560325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127267 (A070911 (3 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118028.P11526338460596560325

/-! ## A118028.P1155888824755470791

`∑[and(1, A051873(A220423(n+1)))+n]`
-/

namespace A118028.P1155888824755470791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A051873 (A220423 (n + 1)).toNat) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118028.P1155888824755470791

/-!
# A118029: a(0)=1. a(n) = a(n-1) + (smallest integer that is >= n and occurs among the earlier terms of the sequence).

The programs for A118029, there is no canonical definition to state claims against.
-/

/-! ## A118029.P2890847787796220334

`a(n-1)+a(A001221(2*A100071(n)))` with `a(0)=1, a(1)=2`
-/

namespace A118029.P2890847787796220334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (A001221 (2 * A100071 n).toNat).toNat

end

end A118029.P2890847787796220334

/-! ## A118029.P8363471454108260774

`∑[A053824(∏[A071215(n+1)])]`
-/

namespace A118029.P8363471454108260774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071215 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118029.P8363471454108260774

/-! ## A118029.P2283964024262127312

`∑[A178493(A003418(n))]`
-/

namespace A118029.P2283964024262127312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178493 (A003418 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118029.P2283964024262127312

/-! ## A118029.P797949830537087827

`∑[A053824(A336127(n))]`
-/

namespace A118029.P797949830537087827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A336127 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118029.P797949830537087827

/-! ## A118029.P16684374054564970245

`A101616(∑[∑[A101661(n)]])`
-/

namespace A118029.P16684374054564970245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101661 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101616 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A118029.P16684374054564970245

/-!
# A118030: a(1)=1. a(n) = a(n-1) + (largest integer which is <= n and occurs among the earlier terms of the sequence).

The programs for A118030, there is no canonical definition to state claims against.
-/

/-! ## A118030.P6324860697593388100

`a(n-1)+a(A093998(A020706(n)))` with `a(0)=1, a(1)=2`
-/

namespace A118030.P6324860697593388100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (A093998 (A020706 n).toNat).toNat

end

end A118030.P6324860697593388100

/-! ## A118030.P15696606013084117593

`a(n-1)+a(A008621(A187829(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A118030.P15696606013084117593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (A008621 (A187829 (n + 1)).toNat).toNat

end

end A118030.P15696606013084117593

/-! ## A118030.P11133910900411567692

`∑[A173525(∏[A194848(n)])]`
-/

namespace A118030.P11133910900411567692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194848 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173525 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118030.P11133910900411567692

/-! ## A118030.P16655442634528480117

`eq[A109043(A215788(n+1)), A286383(n+1)]`
-/

namespace A118030.P16655442634528480117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (A215788 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286383 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118030.P16655442634528480117

/-! ## A118030.P12576772742427605308

`A048166(lt[A337983(3*n+4), A008000(n)])`
-/

namespace A118030.P12576772742427605308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337983 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048166 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A118030.P12576772742427605308

/-!
# A118032: Triangle T, read by rows, such that diagonal 2*n of T equals diagonal n of T^2 and diagonal 2*n+1 of T equals diagonal n of T*U: [T^2](n,k) = T(2*n-k,k) and [T*U](n,k) = T(2*n+1-k,k) for n>=k, k>=0, where U = SHIFT_UP(T).

The programs for A118032, there is no canonical definition to state claims against.
-/

/-! ## A118032.P17518356342356348551

`ceil(sqrt(A136158(n)%A034317(n)))`
-/

namespace A118032.P17518356342356348551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Int.tmod (A136158 n) (A034317 n) : ℝ)⌉

end

end A118032.P17518356342356348551

/-! ## A118032.P15182039329284374952

`A003059(A136158(n)%A034317(n))`
-/

namespace A118032.P15182039329284374952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (Int.tmod (A136158 n) (A034317 n)).toNat

end

end A118032.P15182039329284374952

/-! ## A118032.P7825655021154028632

`A001221(A070218(n+1))*A003059(A136158(n))`
-/

namespace A118032.P7825655021154028632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A070218 (n + 1)).toNat * A003059 (A136158 n).toNat

end

end A118032.P7825655021154028632

/-! ## A118032.P12691091260263556789

`A062571(A154380(n))`
-/

namespace A118032.P12691091260263556789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062571 (A154380 n).toNat

end

end A118032.P12691091260263556789

/-! ## A118032.P17265063215065632773

`A097688(A130534(n))`
-/

namespace A118032.P17265063215065632773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097688 (A130534 n).toNat

end

end A118032.P17265063215065632773

/-!
# A118033: Column 0 of triangle A118032, where column 0 of the matrix square of A118032 forms a bisection of this sequence.

The programs for A118033, there is no canonical definition to state claims against.
-/

/-! ## A118033.P6799390414230322194

`A118032(∑[n])`
-/

namespace A118033.P6799390414230322194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118032 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A118033.P6799390414230322194

/-! ## A118033.P10085970456666521125

`and(-1, A118032(A000217(n)))`
-/

namespace A118033.P10085970456666521125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A118032 (A000217 n).toNat)

end

end A118033.P10085970456666521125

/-! ## A118033.P2521613592829975387

`lcm(A118032(C(n+1, 2)), A246588(n))`
-/

namespace A118033.P2521613592829975387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A118032 (Nat.choose (n + 1) 2)) (A246588 n)

end

end A118033.P2521613592829975387

/-! ## A118033.P623633093481704479

`A118032(A000217(n))%A011782(n+2)`
-/

namespace A118033.P623633093481704479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118032 (A000217 n).toNat) (A011782 (n + 2))

end

end A118033.P623633093481704479

/-! ## A118033.P15064544244778876042

`A054977(3*n+1)*A118032(A000217(n))`
-/

namespace A118033.P15064544244778876042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (3 * n + 1) * A118032 (A000217 n).toNat

end

end A118033.P15064544244778876042

/-!
# A118034: Column 1 of triangle A118032, where column 1 of the matrix square of A118032 forms a bisection of this sequence.

The programs for A118034, there is no canonical definition to state claims against.
-/

/-! ## A118034.P4978207005222704414

`A118032(∑[n+1]+1)`
-/

namespace A118034.P4978207005222704414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118032 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A118034.P4978207005222704414

/-! ## A118034.P5337855619180842436

`∪[A118042(n), A118047(n)]`
-/

namespace A118034.P5337855619180842436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A118034.P5337855619180842436

/-! ## A118034.P17010550462398020415

`record[A118032(A255558(n+1))]`
-/

namespace A118034.P17010550462398020415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118032 (A255558 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118034.P17010550462398020415

/-! ## A118034.P16347691512263696396

`record[A118032(A286235(n+1))]`
-/

namespace A118034.P16347691512263696396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118032 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118034.P16347691512263696396

/-!
# A118035: Column 2 of triangle A118032, where column 2 of the matrix square of A118032 forms a bisection of this sequence.

The programs for A118035, there is no canonical definition to state claims against.
-/

/-! ## A118035.P11844419425802392432

`A118032(∑[n+2]+3)`
-/

namespace A118035.P11844419425802392432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118032 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A118035.P11844419425802392432

/-! ## A118035.P12150304233209819178

`∪[A118043(n), A118048(n)]`
-/

namespace A118035.P12150304233209819178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118048 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A118035.P12150304233209819178

/-! ## A118035.P12815701621613876573

`record[A118032(n+1)/A127529(n)]`
-/

namespace A118035.P12815701621613876573
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118032 (n + 1) : ℚ) / (A127529 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118035.P12815701621613876573

/-! ## A118035.P2053886555942158964

`record[gcd(A118032(n+3), A249480(n))]`
-/

namespace A118035.P2053886555942158964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118032 (n + 3)) (A249480 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118035.P2053886555942158964

/-!
# A118036: Row sums of triangle A118032, where the matrix square of A118032 forms a diagonal bisection of A118032.

The programs for A118036, there is no canonical definition to state claims against.
-/

/-! ## A118036.P17549449735959224941

`A091360(n)+A036629(A082217(n+1))`
-/

namespace A118036.P17549449735959224941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091360 n + A036629 (A082217 (n + 1)).toNat

end

end A118036.P17549449735959224941

/-! ## A118036.P16657598834372132738

`A194698(23*A198896(n))`
-/

namespace A118036.P16657598834372132738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (23 * A198896 n).toNat

end

end A118036.P16657598834372132738

/-! ## A118036.P15325298200935187059

`A194698(lcm(23, A198896(n)))`
-/

namespace A118036.P15325298200935187059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (Int.lcm 23 (A198896 n))

end

end A118036.P15325298200935187059

/-!
# A118037: Antidiagonal sums of triangle A118032, where the row sums of the matrix square of A118032 forms a bisection of this sequence.

The programs for A118037, there is no canonical definition to state claims against.
-/

/-! ## A118037.P4625419004562132122

`A052146(or(A102345(n), A303287(n)))`
-/

namespace A118037.P4625419004562132122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (Int.lor (A102345 n) (A303287 n)).toNat

end

end A118037.P4625419004562132122

/-!
# A118038: Central terms of triangle A118032, where the matrix square of A118032 forms a diagonal bisection of A118032.

The programs for A118038, there is no canonical definition to state claims against.
-/

/-! ## A118038.P10874735730206607195

`A118032(∑[4*n])`
-/

namespace A118038.P10874735730206607195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118032 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A118038.P10874735730206607195

/-! ## A118038.P11849825434433915787

`(n+1)*A118039(n)`
-/

namespace A118038.P11849825434433915787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A118039 n

end

end A118038.P11849825434433915787

/-! ## A118038.P14718251032107611765

`A118039(n)*A387051(n)`
-/

namespace A118038.P14718251032107611765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118039 n * A387051 n

end

end A118038.P14718251032107611765

/-! ## A118038.P14974592843080959382

`A118039(n)*A158416(2*n)`
-/

namespace A118038.P14974592843080959382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118039 n * A158416 (2 * n)

end

end A118038.P14974592843080959382

/-! ## A118038.P13379376065701260582

`A118039(n)*A137948(round(xor(1, 2*n)²/8))`
-/

namespace A118038.P13379376065701260582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118039 n * A137948 (SequenceMachineLib.roundAway ((Nat.xor 1 (2 * n) ^ 2 : ℚ) / 8)).toNat

end

end A118038.P13379376065701260582

/-!
# A118039: n-th central term of triangle A118032 divided by n+1 for n>=0, where the matrix square of A118032 forms a diagonal bisection of A118032.

The programs for A118039, there is no canonical definition to state claims against.
-/

/-! ## A118039.P6266649329851757132

`A118038(n)/(n+1)`
-/

namespace A118039.P6266649329851757132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118038 n : ℚ) / (n + 1 : ℚ)

end

end A118039.P6266649329851757132

/-! ## A118039.P6505925010236530741

`floor(A118038(n)/(1-A001489(n)))`
-/

namespace A118039.P6505925010236530741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A118038 n : ℚ) / (1 - A001489 n : ℚ)⌋

end

end A118039.P6505925010236530741

/-! ## A118039.P6386237920734461685

`floor(A118038(n)/A008619(2*n))`
-/

namespace A118039.P6386237920734461685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A118038 n : ℚ) / (A008619 (2 * n) : ℚ)⌋

end

end A118039.P6386237920734461685

/-! ## A118039.P6378694312862980224

`floor(A118038(n)/A008611(3*n))`
-/

namespace A118039.P6378694312862980224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A118038 n : ℚ) / (A008611 (3 * n) : ℚ)⌋

end

end A118039.P6378694312862980224

/-! ## A118039.P10449022793472805681

`ceil(A118038(n)/A158416(2*n))`
-/

namespace A118039.P10449022793472805681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A118038 n : ℚ) / (A158416 (2 * n) : ℚ)⌉

end

end A118039.P10449022793472805681

/-!
# A118040: Triangle T, read by rows, equal to the matrix square of A118032 and also equal to a diagonal bisection of A118032; i.e., diagonal n of T equals diagonal 2*n of A118032: T(n,k) = A118032(2*n-k,k) for n >= k >= 0.

The programs for A118040, there is no canonical definition to state claims against.
-/

/-! ## A118040.P9779733111398151634

`A000196(2*A243663(n+1))`
-/

namespace A118040.P9779733111398151634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * A243663 (n + 1)).toNat

end

end A118040.P9779733111398151634

/-! ## A118040.P585766922815319263

`A000196(A004275(A243663(n+1)))`
-/

namespace A118040.P585766922815319263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A004275 (A243663 (n + 1)).toNat).toNat

end

end A118040.P585766922815319263

/-! ## A118040.P292156908928698009

`A000196(A243663(n+1)+A243663(n+1))`
-/

namespace A118040.P292156908928698009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A243663 (n + 1) + A243663 (n + 1)).toNat

end

end A118040.P292156908928698009

/-! ## A118040.P14575542614416388754

`A172471(A243663(n+1))%A118038(A004277(n))`
-/

namespace A118040.P14575542614416388754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172471 (A243663 (n + 1)).toNat) (A118038 (A004277 n).toNat)

end

end A118040.P14575542614416388754

/-! ## A118040.P6111881355618849178

`A172471(A243663(n+1)%A118038(2*(n+2)))`
-/

namespace A118040.P6111881355618849178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Int.tmod (A243663 (n + 1)) (A118038 (2 * (n + 2)))).toNat

end

end A118040.P6111881355618849178

/-!
# A118041: Column 0 of triangle A118040, which is the matrix square of triangle A118032; also equals a bisection of A118033, which is column 0 of A118032.

The programs for A118041, there is no canonical definition to state claims against.
-/

/-! ## A118041.P16934425686587867834

`A118040(∑[n])`
-/

namespace A118041.P16934425686587867834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A118041.P16934425686587867834

/-! ## A118041.P14892587732143319299

`A118032(n*Δ[n²])`
-/

namespace A118041.P14892587732143319299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118032 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A118041.P14892587732143319299

/-! ## A118041.P3970802481011404386

`gcd(floor(1/(n+1)), A118040(n*(n+1)/2))`
-/

namespace A118041.P3970802481011404386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A118040 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A118041.P3970802481011404386

/-! ## A118041.P10401775647001488923

`record[A118040(n)/A007318(n)]`
-/

namespace A118041.P10401775647001488923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118040 n : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118041.P10401775647001488923

/-! ## A118041.P6797717666156381562

`record[A118040(n)/A001263(n+1)]`
-/

namespace A118041.P6797717666156381562
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118040 n : ℚ) / (A001263 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118041.P6797717666156381562

/-!
# A118042: Column 1 of triangle A118040, which is the matrix square of triangle A118032; also equals a bisection of A118034, which is column 1 of A118032.

The programs for A118042, there is no canonical definition to state claims against.
-/

/-! ## A118042.P16561192230589813258

`A118040(∑[n+1]+1)`
-/

namespace A118042.P16561192230589813258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A118042.P16561192230589813258

/-! ## A118042.P17552315024182450234

`A118032(A130883(n+1))`
-/

namespace A118042.P17552315024182450234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118032 (A130883 (n + 1)).toNat

end

end A118042.P17552315024182450234

/-! ## A118042.P3510967675818319451

`A118034(2*n)`
-/

namespace A118042.P3510967675818319451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118034 (2 * n)

end

end A118042.P3510967675818319451

/-! ## A118042.P14252419529293869820

`record[A118034(and(n, n+1))]`
-/

namespace A118042.P14252419529293869820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118034 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118042.P14252419529293869820

/-! ## A118042.P13387971569809124384

`record[A118034(n)/(-1)^n]`
-/

namespace A118042.P13387971569809124384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118034 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118042.P13387971569809124384

/-!
# A118043: Column 2 of triangle A118040, which is the matrix square of triangle A118032; also equals a bisection of A118035, which is column 2 of A118032.

The programs for A118043, there is no canonical definition to state claims against.
-/

/-! ## A118043.P8506284682621668214

`A118032(A096376(n+1))`
-/

namespace A118043.P8506284682621668214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118032 (A096376 (n + 1)).toNat

end

end A118043.P8506284682621668214

/-! ## A118043.P16961178276284478829

`A118032(A014105(n+1)+2)`
-/

namespace A118043.P16961178276284478829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118032 (A014105 (n + 1) + 2).toNat

end

end A118043.P16961178276284478829

/-! ## A118043.P3552012727132206567

`A118040(eq[3, A002260(n+1)])`
-/

namespace A118043.P3552012727132206567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118043.P3552012727132206567

/-! ## A118043.P9182068230903216223

`A118040(A000217(n+3)-(n+1))`
-/

namespace A118043.P9182068230903216223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118040 (A000217 (n + 3) - (n + 1 : ℤ)).toNat

end

end A118043.P9182068230903216223

/-! ## A118043.P14722964888034926961

`A118040(A034856(n+2)-(n-1))`
-/

namespace A118043.P14722964888034926961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118040 (A034856 (n + 2) - ((n : ℤ) - 1)).toNat

end

end A118043.P14722964888034926961

/-!
# A118044: Row sums of triangle A118040, which is the matrix square of triangle A118032; also equals a bisection of A118037, which is the antidiagonal sums of A118032.

The programs for A118044, there is no canonical definition to state claims against.
-/

/-! ## A118044.P16510632840982819672

`A118037(2*n)`
-/

namespace A118044.P16510632840982819672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118037 (2 * n)

end

end A118044.P16510632840982819672

/-! ## A118044.P94854926258867499

`record[A118037(and(n, n+1))]`
-/

namespace A118044.P94854926258867499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118037 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118044.P94854926258867499

/-! ## A118044.P17370597057783322145

`record[A118037(ceil(sqrt(n))²-n)]`
-/

namespace A118044.P17370597057783322145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118037 (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118044.P17370597057783322145

/-! ## A118044.P12028233457953329745

`or(1, A118037(n/sqrt(1/4)))`
-/

namespace A118044.P12028233457953329745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A118037 (SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ))).toNat)

end

end A118044.P12028233457953329745

/-!
# A118046: Column 0 of triangle A118045; also equals a bisection of A118033, which is column 0 of A118032.

The programs for A118046, there is no canonical definition to state claims against.
-/

/-! ## A118046.P1910788596418509447

`A118045(∑[n])`
-/

namespace A118046.P1910788596418509447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118045 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A118046.P1910788596418509447

/-! ## A118046.P2389387215965040424

`A118032((n+1)*Δ[n²])`
-/

namespace A118046.P2389387215965040424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118032 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A118046.P2389387215965040424

/-! ## A118046.P13606997001393560278

`record[A010054(n)*A118045(n)]`
-/

namespace A118046.P13606997001393560278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A118045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118046.P13606997001393560278

/-! ## A118046.P15156861065821978383

`record[A118045(n)/A008284(n+1)]`
-/

namespace A118046.P15156861065821978383
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118045 n : ℚ) / (A008284 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118046.P15156861065821978383

/-! ## A118046.P11920038333025734659

`gcd(floor(1/(n+1)), A118045(A000217(n)))`
-/

namespace A118046.P11920038333025734659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A118045 (A000217 n).toNat)

end

end A118046.P11920038333025734659

/-!
# A118047: Column 1 of triangle A118045; also equals a bisection of A118034, which is column 1 of A118032.

The programs for A118047, there is no canonical definition to state claims against.
-/

/-! ## A118047.P11787865982115374148

`A118045(∑[n+1]+1)`
-/

namespace A118047.P11787865982115374148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118045 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A118047.P11787865982115374148

/-! ## A118047.P4093170695209092969

`A118032(A084849(n+1))`
-/

namespace A118047.P4093170695209092969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118032 (A084849 (n + 1)).toNat

end

end A118047.P4093170695209092969

/-! ## A118047.P6060096262147342702

`A118032(A014105(n+1)+1)`
-/

namespace A118047.P6060096262147342702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118032 (A014105 (n + 1) + 1).toNat

end

end A118047.P6060096262147342702

/-! ## A118047.P18021816022712743703

`A118034(Δ[n²])`
-/

namespace A118047.P18021816022712743703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118034 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A118047.P18021816022712743703

/-! ## A118047.P6739307354901366795

`record[A118034(xor(1, n))]`
-/

namespace A118047.P6739307354901366795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118034 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118047.P6739307354901366795

/-!
# A118048: Column 2 of triangle A118045; also equals a bisection of A118035, which is column 2 of A118032.

The programs for A118048, there is no canonical definition to state claims against.
-/

/-! ## A118048.P3728719156558472541

`A118032(A033816(n+1))`
-/

namespace A118048.P3728719156558472541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118032 (A033816 (n + 1)).toNat

end

end A118048.P3728719156558472541

/-! ## A118048.P3376670361394439966

`A118032(A266223(2*n+3)+2)`
-/

namespace A118048.P3376670361394439966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118032 (A266223 (2 * n + 3) + 2).toNat

end

end A118048.P3376670361394439966

/-! ## A118048.P10935543884551536849

`A118035(Δ[n²])`
-/

namespace A118048.P10935543884551536849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118035 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A118048.P10935543884551536849

/-! ## A118048.P13474784635060607539

`record[A118035(xor(1, n))]`
-/

namespace A118048.P13474784635060607539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118035 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118048.P13474784635060607539

/-!
# A118049: Row sums of triangle A118045; also equals a bisection of A118037, which is the antidiagonal sums of triangle A118032.

The programs for A118049, there is no canonical definition to state claims against.
-/

/-! ## A118049.P7925764792534292570

`A118037(Δ[n²])`
-/

namespace A118049.P7925764792534292570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118037 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A118049.P7925764792534292570

/-! ## A118049.P5947182727469428783

`record[A118037(xor(1, n))]`
-/

namespace A118049.P5947182727469428783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118037 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118049.P5947182727469428783

/-! ## A118049.P7636862549700845605

`record[A118037(gcd(n, ∑[n]))]`
-/

namespace A118049.P7636862549700845605
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118037 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118049.P7636862549700845605

/-! ## A118049.P12756811302172848985

`record[A118037(n*n%2)]`
-/

namespace A118049.P12756811302172848985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118037 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118049.P12756811302172848985

/-!
# A118051: Denominators of coefficients in a series for the inverse of harmonic number H(x).

The programs for A118051, there is no canonical definition to state claims against.
-/

/-! ## A118051.P10435258567848887263

`A249277(2*n+1)/A000122(A002894(n))`
-/

namespace A118051.P10435258567848887263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249277 (2 * n + 1) : ℚ) / (A000122 (A002894 n).toNat : ℚ)

end

end A118051.P10435258567848887263

/-!
# A118052: Number of partitions of n which contain their signature as a subpartition.

The programs for A118052, there is no canonical definition to state claims against.
-/

/-! ## A118052.P14685945961818401380

`A000041(n)-A118053(n)`
-/

namespace A118052.P14685945961818401380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A118053 n

end

end A118052.P14685945961818401380

/-! ## A118052.P14580311657723603247

`A213598(n)-A118053(n)`
-/

namespace A118052.P14580311657723603247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A118053 n

end

end A118052.P14580311657723603247

/-! ## A118052.P5897437983766860322

`A330643(n)-A118053(n)`
-/

namespace A118052.P5897437983766860322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330643 n - A118053 n

end

end A118052.P5897437983766860322

/-! ## A118052.P340647773929342541

`sqrt(A001255(n))-A118053(n)`
-/

namespace A118052.P340647773929342541
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A118053 n : ℝ)

end

end A118052.P340647773929342541

/-! ## A118052.P1072072691277839258

`∑[A002865(n)]-A118053(n)`
-/

namespace A118052.P1072072691277839258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A118053 n

end

end A118052.P1072072691277839258

/-!
# A118053: Number of partitions of n which do not contain their signature as a subpartition.

The programs for A118053, there is no canonical definition to state claims against.
-/

/-! ## A118053.P11924091568393089167

`A000041(n)-A118052(n)`
-/

namespace A118053.P11924091568393089167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A118052 n

end

end A118053.P11924091568393089167

/-! ## A118053.P14202410575688619286

`A213598(n)-A118052(n)`
-/

namespace A118053.P14202410575688619286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A118052 n

end

end A118053.P14202410575688619286

/-! ## A118053.P14929422290872750205

`A330643(n)-A118052(n)`
-/

namespace A118053.P14929422290872750205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330643 n - A118052 n

end

end A118053.P14929422290872750205

/-! ## A118053.P31894416332980656

`sqrt(A001255(n))-A118052(n)`
-/

namespace A118053.P31894416332980656
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A118052 n : ℝ)

end

end A118053.P31894416332980656

/-! ## A118053.P7344571128038527538

`∑[A002865(n)]-A118052(n)`
-/

namespace A118053.P7344571128038527538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A118052 n

end

end A118053.P7344571128038527538

/-!
# A118054: Inverse Euler transform of A118052.

The programs for A118054, there is no canonical definition to state claims against.
-/

/-! ## A118054.P14377496219749742013

`A283760(lcm(n²+1, ∑[n])+1)`
-/

namespace A118054.P14377496219749742013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283760 (Nat.lcm (n ^ 2 + 1) (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A118054.P14377496219749742013

/-! ## A118054.P11864934701195420602

`A037802(A295145(n+1))`
-/

namespace A118054.P11864934701195420602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037802 (A295145 (n + 1)).toNat

end

end A118054.P11864934701195420602

/-! ## A118054.P2735831365506432418

`A377087(A001103(n+2))`
-/

namespace A118054.P2735831365506432418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377087 (A001103 (n + 2)).toNat

end

end A118054.P2735831365506432418

/-! ## A118054.P7789541459338811620

`A124737(A025591(n)+n)`
-/

namespace A118054.P7789541459338811620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124737 (A025591 n + (n : ℤ)).toNat

end

end A118054.P7789541459338811620

/-! ## A118054.P2056166700724172471

`A050600(n*A006721(n))`
-/

namespace A118054.P2056166700724172471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 ((n : ℤ) * A006721 n).toNat

end

end A118054.P2056166700724172471

/-!
# A118057: a(n) = 8*n^2 - 4*n - 3.

The programs for A118057, the canonical program `A118057.P16718058190534757251` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118057 has offset 1).

The definition of A118057 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*(n+1)²-4*(n+1)-3` (program `A118057.P16718058190534757251`, by `A118057.P16718058190534757251.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A118057.P3987850795010631762

`16*(n+1)+a(n-1)-12` with `a(0)=1`
-/

namespace A118057.P3987850795010631762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (16 * (n + 1) : ℤ) + a (n - 1) - 12

end

end A118057.P3987850795010631762

namespace A118057

/-- `16*(n+1)+a(n-1)-12` -/
def P3987850795010631762.Spec : Prop :=
  ∀ n, P3987850795010631762.a n = A118057 (n + 1)

theorem P3987850795010631762.correct : P3987850795010631762.Spec := by
  intro n
  induction n with
  | zero => simp [A118057, A118057.P3987850795010631762.a, A118057.P16718058190534757251.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A118057, Nat.add_sub_cancel, A118057.P3987850795010631762.a, A118057.P16718058190534757251.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A118057

/-! ## A118057.P16718058190534757251

`8*(n+1)²-4*(n+1)-3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A118057

/-- `8*(n+1)²-4*(n+1)-3` -/
def P16718058190534757251.Spec : Prop :=
  ∀ n, P16718058190534757251.a n = A118057 (n + 1)

theorem P16718058190534757251.correct : P16718058190534757251.Spec := by
  intro n
  simp only [A118057, Nat.add_sub_cancel]

end A118057

/-! ## A118057.P4114705124830500723

`∑[a(n-1)+16]` with `a(0)=1, a(1)=20`
-/

namespace A118057.P4114705124830500723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118057.P4114705124830500723

namespace A118057

/-- `∑[a(n-1)+16]` -/
def P4114705124830500723.Spec : Prop :=
  ∀ n, (P4114705124830500723.a n : ℤ) = A118057 (n + 1)

end A118057

/-! ## A118057.P17664516655557326096

`or(1, 4*(∑[4*n]+n))`
-/

namespace A118057.P17664516655557326096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A118057.P17664516655557326096

namespace A118057

/-- `or(1, 4*(∑[4*n]+n))` -/
def P17664516655557326096.Spec : Prop :=
  ∀ n, (P17664516655557326096.a n : ℤ) = A118057 (n + 1)

end A118057

/-! ## A118057.P12986514292036273507

`(record[xor(3, n)²-4]-3)/2`
-/

namespace A118057.P12986514292036273507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 n ^ 2 : ℤ) - 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 3 : ℚ) / 2

end

end A118057.P12986514292036273507

namespace A118057

/-- `(record[xor(3, n)²-4]-3)/2` -/
def P12986514292036273507.Spec : Prop :=
  ∀ n, P12986514292036273507.a n = (A118057 (n + 1) : ℚ)

end A118057

/-! ## A118057.P833381667536763159

`record[(n+2)*2*xor(1, n)-3]`
-/

namespace A118057.P833381667536763159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (2 * Nat.xor 1 n) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118057.P833381667536763159

namespace A118057

/-- `record[(n+2)*2*xor(1, n)-3]` -/
def P833381667536763159.Spec : Prop :=
  ∀ n, P833381667536763159.a n = A118057 (n + 1)

end A118057

/-! ## A118057.P6550660148427247179

`abs(lcm(2*n+1, 4*(n+1))-3)`
-/

namespace A118057.P6550660148427247179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm (2 * n + 1) (4 * (n + 1)) : ℤ) - 3|

end

end A118057.P6550660148427247179

namespace A118057

/-- `abs(lcm(2*n+1, 4*(n+1))-3)` -/
def P6550660148427247179.Spec : Prop :=
  ∀ n, P6550660148427247179.a n = A118057 (n + 1)

end A118057

/-! ## A118057.P13314192944214886444

`xor(3, 2*((2*n+1)²+2*n))`
-/

namespace A118057.P13314192944214886444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * ((2 * n + 1) ^ 2 + 2 * n))

end

end A118057.P13314192944214886444

namespace A118057

/-- `xor(3, 2*((2*n+1)²+2*n))` -/
def P13314192944214886444.Spec : Prop :=
  ∀ n, (P13314192944214886444.a n : ℤ) = A118057 (n + 1)

end A118057

/-! ## A118057.P13922786898014665830

`record[1-(2*n-lcm(n-2, 2*n))]`
-/

namespace A118057.P13922786898014665830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * n : ℤ) - (Int.lcm ((n : ℤ) - 2) (2 * n : ℤ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118057.P13922786898014665830

namespace A118057

/-- `record[1-(2*n-lcm(n-2, 2*n))]` -/
def P13922786898014665830.Spec : Prop :=
  ∀ n, P13922786898014665830.a n = A118057 (n + 1)

end A118057

/-! ## A118057.P17567126079808647761

`(A003185(n)-3)/2`
-/

namespace A118057.P17567126079808647761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003185 n - 3 : ℚ) / 2

end

end A118057.P17567126079808647761

namespace A118057

/-- `(A003185(n)-3)/2` -/
def P17567126079808647761.Spec : Prop :=
  ∀ n, P17567126079808647761.a n = (A118057 (n + 1) : ℚ)

end A118057

/-! ## A118057.P17070521111831503967

`abs(4-A060820(n+1))`
-/

namespace A118057.P17070521111831503967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A060820 (n + 1)|

end

end A118057.P17070521111831503967

namespace A118057

/-- `abs(4-A060820(n+1))` -/
def P17070521111831503967.Spec : Prop :=
  ∀ n, P17070521111831503967.a n = A118057 (n + 1)

end A118057

/-! ## A118057.P4147857122177561632

`∑[A016813(n)*A123932(n)]`
-/

namespace A118057.P4147857122177561632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n * A123932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118057.P4147857122177561632

namespace A118057

/-- `∑[A016813(n)*A123932(n)]` -/
def P4147857122177561632.Spec : Prop :=
  ∀ n, P4147857122177561632.a n = A118057 (n + 1)

end A118057

/-! ## A118057.P10606227897981836703

`A016828(n)%A060820(n+1)`
-/

namespace A118057.P10606227897981836703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016828 n) (A060820 (n + 1))

end

end A118057.P10606227897981836703

namespace A118057

/-- `A016828(n)%A060820(n+1)` -/
def P10606227897981836703.Spec : Prop :=
  ∀ n, P10606227897981836703.a n = A118057 (n + 1)

end A118057

/-! ## A118057.P17951967571290456337

`A017138(n)%A060820(n+1)`
-/

namespace A118057.P17951967571290456337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017138 n) (A060820 (n + 1))

end

end A118057.P17951967571290456337

namespace A118057

/-- `A017138(n)%A060820(n+1)` -/
def P17951967571290456337.Spec : Prop :=
  ∀ n, P17951967571290456337.a n = A118057 (n + 1)

end A118057

/-! ## A118057.P3062656223037201062

`A160250(n+1)%A068379(n+1)`
-/

namespace A118057.P3062656223037201062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160250 (n + 1)) (A068379 (n + 1))

end

end A118057.P3062656223037201062

namespace A118057

/-- `A160250(n+1)%A068379(n+1)` -/
def P3062656223037201062.Spec : Prop :=
  ∀ n, P3062656223037201062.a n = A118057 (n + 1)

end A118057

/-! ## A118057.P8131268073948053997

`A393192(n+1)%A068379(n+1)`
-/

namespace A118057.P8131268073948053997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A393192 (n + 1)) (A068379 (n + 1))

end

end A118057.P8131268073948053997

namespace A118057

/-- `A393192(n+1)%A068379(n+1)` -/
def P8131268073948053997.Spec : Prop :=
  ∀ n, P8131268073948053997.a n = A118057 (n + 1)

end A118057

/-! ## A118057.P7178635112453402885

`A059993(2*n)`
-/

namespace A118057.P7178635112453402885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059993 (2 * n)

end

end A118057.P7178635112453402885

namespace A118057

/-- `A059993(2*n)` -/
def P7178635112453402885.Spec : Prop :=
  ∀ n, P7178635112453402885.a n = A118057 (n + 1)

end A118057

/-! ## A118057.P16814737415242870392

`abs(Δ[A058372(2*n)])`
-/

namespace A118057.P16814737415242870392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058372 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A118057.P16814737415242870392

namespace A118057

/-- `abs(Δ[A058372(2*n)])` -/
def P16814737415242870392.Spec : Prop :=
  ∀ n, P16814737415242870392.a n = A118057 (n + 1)

end A118057

/-! ## A118057.P11566676545618479424

`abs(3-A046092(2*n+1))`
-/

namespace A118057.P11566676545618479424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A046092 (2 * n + 1)|

end

end A118057.P11566676545618479424

namespace A118057

/-- `abs(3-A046092(2*n+1))` -/
def P11566676545618479424.Spec : Prop :=
  ∀ n, P11566676545618479424.a n = A118057 (n + 1)

end A118057

/-!
# A118058: a(n) = 49n^2 - 28n - 20.

The programs for A118058, the canonical program `A118058.P17626779621050916593` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118058 has offset 1).

The definition of A118058 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `49*(n+1)²-28*(n+1)-20` (program `A118058.P17626779621050916593`, by `A118058.P17626779621050916593.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A118058.P17626779621050916593

`49*(n+1)²-28*(n+1)-20`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A118058

/-- `49*(n+1)²-28*(n+1)-20` -/
def P17626779621050916593.Spec : Prop :=
  ∀ n, P17626779621050916593.a n = A118058 (n + 1)

theorem P17626779621050916593.correct : P17626779621050916593.Spec := by
  intro n
  simp only [A118058, Nat.add_sub_cancel]

end A118058

/-! ## A118058.P4571948495141158972

`abs(24-A017042(n))`
-/

namespace A118058.P4571948495141158972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |24 - A017042 n|

end

end A118058.P4571948495141158972

namespace A118058

/-- `abs(24-A017042(n))` -/
def P4571948495141158972.Spec : Prop :=
  ∀ n, P4571948495141158972.a n = A118058 (n + 1)

end A118058

/-! ## A118058.P7936936095762696307

`lcm(24-A017042(n), A001221(A051697(n)))`
-/

namespace A118058.P7936936095762696307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (24 - A017042 n) (A001221 (A051697 n).toNat)

end

end A118058.P7936936095762696307

namespace A118058

/-- `lcm(24-A017042(n), A001221(A051697(n)))` -/
def P7936936095762696307.Spec : Prop :=
  ∀ n, (P7936936095762696307.a n : ℤ) = A118058 (n + 1)

end A118058

/-! ## A118058.P7534381786394525857

`(24-A017042(n))*A008683(A234345(n+2))`
-/

namespace A118058.P7534381786394525857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 - A017042 n) * A008683 (A234345 (n + 2)).toNat

end

end A118058.P7534381786394525857

namespace A118058

/-- `(24-A017042(n))*A008683(A234345(n+2))` -/
def P7534381786394525857.Spec : Prop :=
  ∀ n, P7534381786394525857.a n = A118058 (n + 1)

end A118058

/-! ## A118058.P3185419831096812729

`-(24-A017042(n))*A000035(2*n+1)`
-/

namespace A118058.P3185419831096812729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((24 - A017042 n) * A000035 (2 * n + 1))

end

end A118058.P3185419831096812729

namespace A118058

/-- `-(24-A017042(n))*A000035(2*n+1)` -/
def P3185419831096812729.Spec : Prop :=
  ∀ n, P3185419831096812729.a n = A118058 (n + 1)

end A118058

/-! ## A118058.P5778891275921199282

`(24-A017042(n))*A008683(A033245(n+1))`
-/

namespace A118058.P5778891275921199282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 - A017042 n) * A008683 (A033245 (n + 1)).toNat

end

end A118058.P5778891275921199282

namespace A118058

/-- `(24-A017042(n))*A008683(A033245(n+1))` -/
def P5778891275921199282.Spec : Prop :=
  ∀ n, P5778891275921199282.a n = A118058 (n + 1)

end A118058

/-! ## A118058.P12347081332484713741

`gcd(24-A017042(n), A007949(2*A002145(n+1)))`
-/

namespace A118058.P12347081332484713741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (24 - A017042 n) (A007949 (2 * A002145 (n + 1)).toNat)

end

end A118058.P12347081332484713741

namespace A118058

/-- `gcd(24-A017042(n), A007949(2*A002145(n+1)))` -/
def P12347081332484713741.Spec : Prop :=
  ∀ n, (P12347081332484713741.a n : ℤ) = A118058 (n + 1)

end A118058

/-! ## A118058.P12720148493331723573

`gcd(24-A017042(n), A007949(A052905(n+3)))`
-/

namespace A118058.P12720148493331723573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (24 - A017042 n) (A007949 (A052905 (n + 3)).toNat)

end

end A118058.P12720148493331723573

namespace A118058

/-- `gcd(24-A017042(n), A007949(A052905(n+3)))` -/
def P12720148493331723573.Spec : Prop :=
  ∀ n, (P12720148493331723573.a n : ℤ) = A118058 (n + 1)

end A118058

/-! ## A118058.P17540679181038837024

`A000027(A017042(n)-24)`
-/

namespace A118058.P17540679181038837024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A017042 n - 24).toNat

end

end A118058.P17540679181038837024

namespace A118058

/-- `A000027(A017042(n)-24)` -/
def P17540679181038837024.Spec : Prop :=
  ∀ n, P17540679181038837024.a n = A118058 (n + 1)

end A118058

/-!
# A118059: a(n) = 288*n^2 - 168*n - 119.

The programs for A118059, the canonical program `A118059.P8966734553838584985` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118059 has offset 1).

The definition of A118059 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `288*(n+1)²-168*(n+1)-119` (program `A118059.P8966734553838584985`, by `A118059.P8966734553838584985.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A118059.P8966734553838584985

`288*(n+1)²-168*(n+1)-119`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A118059

/-- `288*(n+1)²-168*(n+1)-119` -/
def P8966734553838584985.Spec : Prop :=
  ∀ n, P8966734553838584985.a n = A118059 (n + 1)

theorem P8966734553838584985.correct : P8966734553838584985.Spec := by
  intro n
  simp only [A118059, Nat.add_sub_cancel]

end A118059

/-! ## A118059.P10440578749615065090

`xor(1, n*Δ[A017654(n)])`
-/

namespace A118059.P10440578749615065090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * (f1 (n + 1) - f1 n))

end

end A118059.P10440578749615065090

namespace A118059

/-- `xor(1, n*Δ[A017654(n)])` -/
def P10440578749615065090.Spec : Prop :=
  ∀ n, P10440578749615065090.a n = A118059 (n + 1)

end A118059

/-! ## A118059.P7399861984786903735

`(n*Δ[A017654(n)]+1)%A104677(2*n+3)`
-/

namespace A118059.P7399861984786903735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * (f1 (n + 1) - f1 n) + 1) (A104677 (2 * n + 3))

end

end A118059.P7399861984786903735

namespace A118059

/-- `(n*Δ[A017654(n)]+1)%A104677(2*n+3)` -/
def P7399861984786903735.Spec : Prop :=
  ∀ n, P7399861984786903735.a n = A118059 (n + 1)

end A118059

/-! ## A118059.P5344507976502830943

`root(3*n*A063164(3*n+5)+1, 2)²`
-/

namespace A118059.P5344507976502830943
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((3 * n : ℤ) * A063164 (3 * n + 5) + 1 : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A118059.P5344507976502830943

namespace A118059

/-- `root(3*n*A063164(3*n+5)+1, 2)²` -/
def P5344507976502830943.Spec : Prop :=
  ∀ n, P5344507976502830943.a n = (A118059 (n + 1) : ℝ)

end A118059

/-! ## A118059.P6180671641000806543

`A000027(n*Δ[A017654(n)]+1)`
-/

namespace A118059.P6180671641000806543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((n : ℤ) * (f1 (n + 1) - f1 n) + 1).toNat

end

end A118059.P6180671641000806543

namespace A118059

/-- `A000027(n*Δ[A017654(n)]+1)` -/
def P6180671641000806543.Spec : Prop :=
  ∀ n, P6180671641000806543.a n = A118059 (n + 1)

end A118059

/-!
# A118065: a(1) = a(2) = 1, a(n) = smallest number greater than a(n-1) that can be written as sum of consecutive earlier terms.

The programs for A118065, there is no canonical definition to state claims against.
-/

/-! ## A118065.P9360472332973842362

`round(1/acot(comp[A118066(n+1)]))`
-/

namespace A118065.P9360472332973842362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118066 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℝ))

end

end A118065.P9360472332973842362

/-! ## A118065.P8867385985312713704

`A028310(comp[A118066(n+1)])`
-/

namespace A118065.P8867385985312713704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118066 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A118065.P8867385985312713704

/-! ## A118065.P15445451499983311720

`A065033(2*comp[A118066(n+1)])`
-/

namespace A118065.P15445451499983311720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118066 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A118065.P15445451499983311720

/-! ## A118065.P18336048175800128719

`A123108(2*comp[A118066(n+1)])`
-/

namespace A118065.P18336048175800128719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118066 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A118065.P18336048175800128719

/-! ## A118065.P12806690563210189344

`A000007(n)+comp[A118066(n+1)]`
-/

namespace A118065.P12806690563210189344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118066 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A118065.P12806690563210189344

/-! ## A118065.P5978865395768113126

`A151878(n)+comp[A118066(n+1)]`
-/

namespace A118065.P5978865395768113126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118066 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A118065.P5978865395768113126

/-! ## A118065.P11533425817256474630

`A151933(n)+comp[A118066(n+1)]`
-/

namespace A118065.P11533425817256474630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118066 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A118065.P11533425817256474630

/-! ## A118065.P5851147313298655018

`comp[A118066(n+1)]^A178334(n)`
-/

namespace A118065.P5851147313298655018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118066 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) ^ (A178334 n : ℤ)

end

end A118065.P5851147313298655018

/-! ## A118065.P249839054160309248

`comp[A118066(n+1)]^-A057428(n)`
-/

namespace A118065.P249839054160309248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118066 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) ^ (-A057428 n : ℤ)

end

end A118065.P249839054160309248

/-! ## A118065.P11668094254527471721

`comp[A118066(n+1)]+1-A000040(n+1)%2`
-/

namespace A118065.P11668094254527471721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118066 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - Int.tmod (A000040 (n + 1)) 2

end

end A118065.P11668094254527471721

/-!
# A118067: Number of (directed) Hamiltonian paths in the 3 X n knight graph.

The programs for A118067, there is no canonical definition to state claims against.
-/

/-! ## A118067.P10462068276882428106

`2*A169696(n+1)`
-/

namespace A118067.P10462068276882428106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169696 (n + 1)

end

end A118067.P10462068276882428106

/-! ## A118067.P17326556809931366213

`A169696(C(n+1, n))+A169696(n+1)`
-/

namespace A118067.P17326556809931366213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169696 (Nat.choose (n + 1) n) + A169696 (n + 1)

end

end A118067.P17326556809931366213

/-! ## A118067.P846445503767484210

`∑{d}[A006530(n+1), A169696(lcm(#, n+1))]`
-/

namespace A118067.P846445503767484210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A169696 (Nat.lcm d (n + 1))

end

end A118067.P846445503767484210

/-! ## A118067.P7044917097812787141

`A169696(n+1)+A169696(Δ[n²]-n)`
-/

namespace A118067.P7044917097812787141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169696 (n + 1) + A169696 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A118067.P7044917097812787141

/-! ## A118067.P17445012537654360019

`lcm(A169696(n+1)+A169696(n+1), A033999(n))`
-/

namespace A118067.P17445012537654360019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A169696 (n + 1) + A169696 (n + 1)) (A033999 n)

end

end A118067.P17445012537654360019

/-! ## A118067.P1645214130514313045

`and(A169696(n+1)+A169696(n+1), A057428(n))`
-/

namespace A118067.P1645214130514313045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A169696 (n + 1) + A169696 (n + 1)) (A057428 n)

end

end A118067.P1645214130514313045

/-! ## A118067.P14029050735487856253

`A169696(n+1)+A169696(n+1)%A202892(n+1)`
-/

namespace A118067.P14029050735487856253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169696 (n + 1) + Int.tmod (A169696 (n + 1)) (A202892 (n + 1))

end

end A118067.P14029050735487856253

/-! ## A118067.P11680451502666392337

`2*A389759(3*(n+1))`
-/

namespace A118067.P11680451502666392337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A389759 (3 * (n + 1))

end

end A118067.P11680451502666392337

/-!
# A118069: a(n) = smallest composite which is > n! and is coprime to n!.

The programs for A118069, there is no canonical definition to state claims against.
-/

/-! ## A118069.P14515572917024950803

`lcm(A241516(A036765(n+2))+1, n!)+1`
-/

namespace A118069.P14515572917024950803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A241516 (A036765 (n + 2)).toNat + 1) (Nat.factorial n : ℤ) + 1

end

end A118069.P14515572917024950803

/-! ## A118069.P15909927230469353655

`A061767(n!)`
-/

namespace A118069.P15909927230469353655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (Nat.factorial n)

end

end A118069.P15909927230469353655

/-! ## A118069.P7535167057480935480

`A061767(A000142(n))`
-/

namespace A118069.P7535167057480935480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (A000142 n).toNat

end

end A118069.P7535167057480935480

/-! ## A118069.P18209199081804849801

`A061767(A033646(n))`
-/

namespace A118069.P18209199081804849801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (A033646 n).toNat

end

end A118069.P18209199081804849801

/-!
# A118070: Numbers with exactly one even decimal digit.

The programs for A118070, there is no canonical definition to state claims against.
-/

/-! ## A118070.P4337824849423804459

`Δ[n²]-∏{digits}[Δ[n²], #]%2`
-/

namespace A118070.P4337824849423804459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod % 2 : ℕ) : ℤ)

end

end A118070.P4337824849423804459

/-! ## A118070.P4677410716180462796

`∑{p}[floor(n/5), val(#, 2)]+n+n`
-/

namespace A118070.P4677410716180462796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 5⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation p 2 + n + n

end

end A118070.P4677410716180462796

/-! ## A118070.P275463054746701642

`floor(∑{digits}[2*n, log(gcd(2, #))]+2*n)`
-/

namespace A118070.P275463054746701642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.log (Nat.gcd 2 x : ℝ)).sum + (2 * n : ℝ)⌋

end

end A118070.P275463054746701642

/-! ## A118070.P12155125200152013534

`comp[∏{digits}[2*n+1, #%2]+2*n]`
-/

namespace A118070.P12155125200152013534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x % 2).prod + 2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A118070.P12155125200152013534

/-! ## A118070.P13759400292102170441

`comp[and(1, ∏{digits}[2*n+1, #])+2*n]`
-/

namespace A118070.P13759400292102170441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod + 2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A118070.P13759400292102170441

/-! ## A118070.P10181137470269689315

`∑{digits}[2*n, and(1, #+1)]+2*n-1`
-/

namespace A118070.P10181137470269689315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 1 (x + 1)).sum : ℕ) : ℤ) + ((2 * n : ℤ) - 1)

end

end A118070.P10181137470269689315

/-! ## A118070.P2115592485947795109

`2*n+1-and(1, ∏{digits}[2*n+1, #])`
-/

namespace A118070.P2115592485947795109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (Nat.land 1 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℤ)

end

end A118070.P2115592485947795109

/-! ## A118070.P2364383426258991450

`xor(2*n+1, ∏{digits}[2*n+1, #]%2)`
-/

namespace A118070.P2364383426258991450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n + 1) (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod % 2)

end

end A118070.P2364383426258991450

/-! ## A118070.P11523691643119160852

`∑{digits}[2*n+1, val(#²+2, 2)]+2*n`
-/

namespace A118070.P11523691643119160852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (x ^ 2 + 2) 2).sum + 2 * n

end

end A118070.P11523691643119160852

/-! ## A118070.P8543271947844691989

`comp[A356929(n+1)]`
-/

namespace A118070.P8543271947844691989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118070.P8543271947844691989

/-!
# A118071: Primes which are the sum of a twin prime pair + 1.

The programs for A118071, there is no canonical definition to state claims against.
-/

/-! ## A118071.P15991996520820594753

`2*A038869(n+1)-1`
-/

namespace A118071.P15991996520820594753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038869 (n + 1) - 1

end

end A118071.P15991996520820594753

/-! ## A118071.P10889257855421059517

`∩[A005383(n+1), A034938(n+1)]`
-/

namespace A118071.P10889257855421059517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118071.P10889257855421059517

/-! ## A118071.P4176882652425749193

`∩[A034938(n+1), A079147(n+1)]`
-/

namespace A118071.P4176882652425749193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118071.P4176882652425749193

/-! ## A118071.P13955192124210308527

`∩[A034938(n+1), A176831(n+1)]`
-/

namespace A118071.P13955192124210308527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118071.P13955192124210308527

/-! ## A118071.P13678254767079967501

`∩[A034938(n+1), A265396(n+1)]`
-/

namespace A118071.P13678254767079967501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118071.P13678254767079967501

/-! ## A118071.P15365846434064224575

`∩[A034938(n+1), A064519(n+1)]`
-/

namespace A118071.P15365846434064224575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118071.P15365846434064224575

/-! ## A118071.P561368777937343930

`∩[A034938(n+1), A192577(n+1)]`
-/

namespace A118071.P561368777937343930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118071.P561368777937343930

/-! ## A118071.P15420404291246952229

`∩[A034938(n+1), A048968(n+1)]`
-/

namespace A118071.P15420404291246952229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118071.P15420404291246952229

/-! ## A118071.P13202846881150582911

`∩[A034938(n+1), A171262(n+1)]`
-/

namespace A118071.P13202846881150582911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118071.P13202846881150582911

/-! ## A118071.P9986515378670705861

`∩[A034938(n+1), A057920(n+1)]`
-/

namespace A118071.P9986515378670705861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118071.P9986515378670705861

/-! ## A118071.P12947689358484490037

`∩[A005383(n+1), A237183(n+1)]`
-/

namespace A118071.P12947689358484490037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118071.P12947689358484490037

/-! ## A118071.P9822617577367564952

`∩[A048968(n+1), A237183(n+1)]`
-/

namespace A118071.P9822617577367564952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118071.P9822617577367564952

/-! ## A118071.P14796165274781253596

`∩[A057920(n+1), A237183(n+1)]`
-/

namespace A118071.P14796165274781253596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118071.P14796165274781253596

/-! ## A118071.P8388471403034130243

`∩[A064519(n+1), A237183(n+1)]`
-/

namespace A118071.P8388471403034130243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118071.P8388471403034130243

/-! ## A118071.P3984448781173391037

`∩[A079147(n+1), A237183(n+1)]`
-/

namespace A118071.P3984448781173391037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118071.P3984448781173391037

/-! ## A118071.P16205181538602907393

`∩[A171262(n+1), A237183(n+1)]`
-/

namespace A118071.P16205181538602907393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118071.P16205181538602907393

/-! ## A118071.P5272616391312757591

`∩[A192577(n+1), A237183(n+1)]`
-/

namespace A118071.P5272616391312757591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118071.P5272616391312757591

/-! ## A118071.P15309477589479995034

`∩[A082496(n+1)+2, A176831(n+1)]`
-/

namespace A118071.P15309477589479995034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082496 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118071.P15309477589479995034

/-! ## A118071.P4878344326916930694

`∩[A034938(n+1), A348659(n+1)]`
-/

namespace A118071.P4878344326916930694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118071.P4878344326916930694

/-! ## A118071.P13112121576130009924

`∩[A237183(n+1), A348659(n+1)]`
-/

namespace A118071.P13112121576130009924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118071.P13112121576130009924

/-!
# A118072: Primes which are the sum of a twin prime pair - 1.

The programs for A118072, the canonical program `A118072.P11241627078805568057` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118072 has offset 1).

The definition of A118072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118072.P11241627078805568057

`2*A045536(n+1)+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A118072

/-- `2*A045536(n+1)+1` -/
def P11241627078805568057.Spec : Prop :=
  ∀ n, P11241627078805568057.a n = A118072 (n + 1)

theorem P11241627078805568057.correct : P11241627078805568057.Spec := by
  intro n
  simp only [A118072, Nat.add_sub_cancel]

end A118072

/-! ## A118072.P7528691965062456690

`A045536(n+1)+A045536(n+1)+A343785(n+1)²`
-/

namespace A118072.P7528691965062456690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045536 (n + 1) + (A045536 (n + 1) + A343785 (n + 1) ^ 2)

end

end A118072.P7528691965062456690

namespace A118072

/-- `A045536(n+1)+A045536(n+1)+A343785(n+1)²` -/
def P7528691965062456690.Spec : Prop :=
  ∀ n, P7528691965062456690.a n = A118072 (n + 1)

end A118072

/-! ## A118072.P5135998812066409470

`∩[A175625(n+1), A176831(n+1)]`
-/

namespace A118072.P5135998812066409470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118072.P5135998812066409470

namespace A118072

/-- `∩[A175625(n+1), A176831(n+1)]` -/
def P5135998812066409470.Spec : Prop :=
  ∀ n, (P5135998812066409470.a n : ℤ) = A118072 (n + 1)

end A118072

/-! ## A118072.P3407013773379211361

`∩[A005385(n+1), A082496(n+1)]`
-/

namespace A118072.P3407013773379211361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118072.P3407013773379211361

namespace A118072

/-- `∩[A005385(n+1), A082496(n+1)]` -/
def P3407013773379211361.Spec : Prop :=
  ∀ n, (P3407013773379211361.a n : ℤ) = A118072 (n + 1)

end A118072

/-! ## A118072.P11548374748751896607

`∩[A048184(n+1), A082496(n+1)]`
-/

namespace A118072.P11548374748751896607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118072.P11548374748751896607

namespace A118072

/-- `∩[A048184(n+1), A082496(n+1)]` -/
def P11548374748751896607.Spec : Prop :=
  ∀ n, (P11548374748751896607.a n : ℤ) = A118072 (n + 1)

end A118072

/-! ## A118072.P780779204682276854

`∩[A079148(n+1), A082496(n+1)]`
-/

namespace A118072.P780779204682276854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118072.P780779204682276854

namespace A118072

/-- `∩[A079148(n+1), A082496(n+1)]` -/
def P780779204682276854.Spec : Prop :=
  ∀ n, (P780779204682276854.a n : ℤ) = A118072 (n + 1)

end A118072

/-! ## A118072.P7165966572675706973

`∩[A082496(n+1), A084441(n+1)]`
-/

namespace A118072.P7165966572675706973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118072.P7165966572675706973

namespace A118072

/-- `∩[A082496(n+1), A084441(n+1)]` -/
def P7165966572675706973.Spec : Prop :=
  ∀ n, (P7165966572675706973.a n : ℤ) = A118072 (n + 1)

end A118072

/-! ## A118072.P5612274968747828080

`∩[A082496(n+1), A175625(n+1)]`
-/

namespace A118072.P5612274968747828080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118072.P5612274968747828080

namespace A118072

/-- `∩[A082496(n+1), A175625(n+1)]` -/
def P5612274968747828080.Spec : Prop :=
  ∀ n, (P5612274968747828080.a n : ℤ) = A118072 (n + 1)

end A118072

/-! ## A118072.P9993152121762464028

`∩[A082496(n+1), A176831(n+1)]`
-/

namespace A118072.P9993152121762464028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118072.P9993152121762464028

namespace A118072

/-- `∩[A082496(n+1), A176831(n+1)]` -/
def P9993152121762464028.Spec : Prop :=
  ∀ n, (P9993152121762464028.a n : ℤ) = A118072 (n + 1)

end A118072

/-! ## A118072.P12011648082390662538

`∩[A082496(n+1), A303705(n+1)]`
-/

namespace A118072.P12011648082390662538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118072.P12011648082390662538

namespace A118072

/-- `∩[A082496(n+1), A303705(n+1)]` -/
def P12011648082390662538.Spec : Prop :=
  ∀ n, (P12011648082390662538.a n : ℤ) = A118072 (n + 1)

end A118072

/-! ## A118072.P1307686469690913771

`∩[A082496(n+1), A294074(n+1)]`
-/

namespace A118072.P1307686469690913771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118072.P1307686469690913771

namespace A118072

/-- `∩[A082496(n+1), A294074(n+1)]` -/
def P1307686469690913771.Spec : Prop :=
  ∀ n, (P1307686469690913771.a n : ℤ) = A118072 (n + 1)

end A118072

/-! ## A118072.P7583911672595120123

`∩[A176831(n+1), A294074(n+1)]`
-/

namespace A118072.P7583911672595120123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118072.P7583911672595120123

namespace A118072

/-- `∩[A176831(n+1), A294074(n+1)]` -/
def P7583911672595120123.Spec : Prop :=
  ∀ n, (P7583911672595120123.a n : ℤ) = A118072 (n + 1)

end A118072

/-! ## A118072.P13960426757419334175

`∩[A082496(n+1), A090865(n+1)]`
-/

namespace A118072.P13960426757419334175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118072.P13960426757419334175

namespace A118072

/-- `∩[A082496(n+1), A090865(n+1)]` -/
def P13960426757419334175.Spec : Prop :=
  ∀ n, (P13960426757419334175.a n : ℤ) = A118072 (n + 1)

end A118072

/-! ## A118072.P13782115648515724372

`∩[A065966(n+1), A082496(n+1)]`
-/

namespace A118072.P13782115648515724372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118072.P13782115648515724372

namespace A118072

/-- `∩[A065966(n+1), A082496(n+1)]` -/
def P13782115648515724372.Spec : Prop :=
  ∀ n, (P13782115648515724372.a n : ℤ) = A118072 (n + 1)

end A118072

/-! ## A118072.P10175561096110691148

`∩[A082496(n+1), A179401(n+1)]`
-/

namespace A118072.P10175561096110691148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118072.P10175561096110691148

namespace A118072

/-- `∩[A082496(n+1), A179401(n+1)]` -/
def P10175561096110691148.Spec : Prop :=
  ∀ n, (P10175561096110691148.a n : ℤ) = A118072 (n + 1)

end A118072

/-! ## A118072.P16973250154573019125

`∩[A005385(n+1), A072669(n+1)]`
-/

namespace A118072.P16973250154573019125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118072.P16973250154573019125

namespace A118072

/-- `∩[A005385(n+1), A072669(n+1)]` -/
def P16973250154573019125.Spec : Prop :=
  ∀ n, (P16973250154573019125.a n : ℤ) = A118072 (n + 1)

end A118072

/-! ## A118072.P15510251795269352884

`∩[A065966(n+1), A072669(n+1)]`
-/

namespace A118072.P15510251795269352884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118072.P15510251795269352884

namespace A118072

/-- `∩[A065966(n+1), A072669(n+1)]` -/
def P15510251795269352884.Spec : Prop :=
  ∀ n, (P15510251795269352884.a n : ℤ) = A118072 (n + 1)

end A118072

/-! ## A118072.P15037889317735517101

`∩[A072669(n+1), A079148(n+1)]`
-/

namespace A118072.P15037889317735517101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118072.P15037889317735517101

namespace A118072

/-- `∩[A072669(n+1), A079148(n+1)]` -/
def P15037889317735517101.Spec : Prop :=
  ∀ n, (P15037889317735517101.a n : ℤ) = A118072 (n + 1)

end A118072

/-! ## A118072.P2718885526968627742

`∩[A072669(n+1), A082496(n+1)]`
-/

namespace A118072.P2718885526968627742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118072.P2718885526968627742

namespace A118072

/-- `∩[A072669(n+1), A082496(n+1)]` -/
def P2718885526968627742.Spec : Prop :=
  ∀ n, (P2718885526968627742.a n : ℤ) = A118072 (n + 1)

end A118072

/-! ## A118072.P13049252336264073918

`∩[A072669(n+1), A176831(n+1)]`
-/

namespace A118072.P13049252336264073918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118072.P13049252336264073918

namespace A118072

/-- `∩[A072669(n+1), A176831(n+1)]` -/
def P13049252336264073918.Spec : Prop :=
  ∀ n, (P13049252336264073918.a n : ℤ) = A118072 (n + 1)

end A118072

/-!
# A118074: Start with 1 and repeatedly reverse the digits and add 41 to get the next term.

The programs for A118074, there is no canonical definition to state claims against.
-/

/-! ## A118074.P301688599772405199

`A004086(a(n-1))+41` with `a(0)=1`
-/

namespace A118074.P301688599772405199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 41

end

end A118074.P301688599772405199

/-!
# A118075: Start with 1 and repeatedly reverse the digits and add 42 to get the next term.

The programs for A118075, there is no canonical definition to state claims against.
-/

/-! ## A118075.P9078266992800827168

`A004086(a(n-1))+42` with `a(0)=1`
-/

namespace A118075.P9078266992800827168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 42

end

end A118075.P9078266992800827168

/-!
# A118076: Numbers n such that n divides sigma_(2^k)(n), the sum of the 2^k powers of the divisors of n, for all k>0.

The programs for A118076, there is no canonical definition to state claims against.
-/

/-! ## A118076.P14141628372276669687

`A076230(A297165(n))`
-/

namespace A118076.P14141628372276669687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076230 (A297165 n).toNat

end

end A118076.P14141628372276669687

/-! ## A118076.P9996794991549246616

`A076230(record[A008483(n)])`
-/

namespace A118076.P9996794991549246616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076230 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A118076.P9996794991549246616

/-! ## A118076.P5461209317089042223

`A076230(record[A060240(n)])`
-/

namespace A118076.P5461209317089042223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060240 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076230 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A118076.P5461209317089042223

/-! ## A118076.P17577471815397594195

`A076230(record[A219180(n)])`
-/

namespace A118076.P17577471815397594195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076230 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A118076.P17577471815397594195

/-!
# A118077: Number of edges in the representation of all linear extensions of the inclusion ordering on P({1,...,n}) as distributive lattice contained in P(P({1,...,n})).

The programs for A118077, there is no canonical definition to state claims against.
-/

/-! ## A118077.P2648679148837723118

`A199639(A007581(n))`
-/

namespace A118077.P2648679148837723118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199639 (A007581 n).toNat

end

end A118077.P2648679148837723118

/-!
# A118081: Even numbers that can't be represented as the sum of two odd composite numbers.

The programs for A118081, there is no canonical definition to state claims against.
-/

/-! ## A118081.P13667230228320135564

`lt[∑{e}[(n-1)*(-1)^n-8, #], 2]`
-/

namespace A118081.P13667230228320135564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (-1) ^ n - 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A118081.P13667230228320135564

/-! ## A118081.P14653896582857041543

`lt[log(n)-a(n-3), 1]+1` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A118081.P14653896582857041543
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, -1, 1] fun n f1 =>
  Real.log (n : ℝ) - f1 (n - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A118081.P14653896582857041543

/-! ## A118081.P8078292785179695245

`2*(lt[(n+1)/3*n%3, 5]+1)`
-/

namespace A118081.P8078292785179695245
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * ((n % 3 : ℕ) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1)

end

end A118081.P8078292785179695245

/-! ## A118081.P8061324469963331755

`lt[∑{e}[2*n+1-a(n-1), #], 2]+1` with `a(0)=10`
-/

namespace A118081.P8061324469963331755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f2 =>
  (2 * n + 1 : ℤ) - f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A118081.P8061324469963331755

/-! ## A118081.P3047713752282039684

`2*(A026436(n+1)-2)`
-/

namespace A118081.P3047713752282039684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A026436 (n + 1) - 2)

end

end A118081.P3047713752282039684

/-!
# A118082: Number of partitions of n such that largest part k occurs floor(k/2) times.

The programs for A118082, there is no canonical definition to state claims against.
-/

/-! ## A118082.P4610691259688827329

`A067661(n)-Δ[A246581(2*n)]`
-/

namespace A118082.P4610691259688827329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246581 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n - (f1 (n + 1) - f1 n)

end

end A118082.P4610691259688827329

/-! ## A118082.P1690781181989214621

`A237757(round(sqrt(n²+1)))+A067661(n)`
-/

namespace A118082.P1690781181989214621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237757 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A067661 n

end

end A118082.P1690781181989214621

/-! ## A118082.P3000530022612443531

`A067661(n)+A027349(2*A028310(n))`
-/

namespace A118082.P3000530022612443531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n + A027349 (2 * A028310 n).toNat

end

end A118082.P3000530022612443531

/-! ## A118082.P16467325899705513546

`A067661(A028310(n))+A027349(A004277(n))`
-/

namespace A118082.P16467325899705513546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 (A028310 n).toNat + A027349 (A004277 n).toNat

end

end A118082.P16467325899705513546

/-! ## A118082.P335146341109397184

`A144199(A026139(n+1))+A117409(n+1)`
-/

namespace A118082.P335146341109397184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144199 (A026139 (n + 1)).toNat + A117409 (n + 1)

end

end A118082.P335146341109397184

/-!
# A118083: Number of partitions of n such that largest part k occurs at least floor(k/2) times.

The programs for A118083, there is no canonical definition to state claims against.
-/

/-! ## A118083.P9494950903953981890

`A189357(2*n)`
-/

namespace A118083.P9494950903953981890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189357 (2 * n)

end

end A118083.P9494950903953981890

/-! ## A118083.P3365250122076655576

`A189357(n+n)+n%-1`
-/

namespace A118083.P3365250122076655576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189357 (n + n) + Int.tmod (n : ℤ) (-1)

end

end A118083.P3365250122076655576

/-! ## A118083.P12762780462216537358

`A000027(A189357(n+n))`
-/

namespace A118083.P12762780462216537358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A189357 (n + n)).toNat

end

end A118083.P12762780462216537358

/-! ## A118083.P9165133146760555382

`or(char[1], A189357(A005843(n)))`
-/

namespace A118083.P9165133146760555382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A189357 (A005843 n).toNat)

end

end A118083.P9165133146760555382

/-! ## A118083.P9999875426796351200

`A117409(n+2)+A069910(n)`
-/

namespace A118083.P9999875426796351200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (n + 2) + A069910 n

end

end A118083.P9999875426796351200

/-! ## A118083.P13484293240900364234

`A357457(2*n)+A000009(n)`
-/

namespace A118083.P13484293240900364234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357457 (2 * n) + A000009 n

end

end A118083.P13484293240900364234

/-! ## A118083.P13052947647720914874

`A117409(n+2)+A000700(2*n)`
-/

namespace A118083.P13052947647720914874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (n + 2) + A000700 (2 * n)

end

end A118083.P13052947647720914874

/-! ## A118083.P6934851850240772262

`A000700(2*A028310(n))+A000009(n)`
-/

namespace A118083.P6934851850240772262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * A028310 n).toNat + A000009 n

end

end A118083.P6934851850240772262

/-! ## A118083.P1612798553107667337

`A189357(A005843(n))%A000045(n+3)`
-/

namespace A118083.P1612798553107667337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189357 (A005843 n).toNat) (A000045 (n + 3))

end

end A118083.P1612798553107667337

/-! ## A118083.P15262279915269616358

`A000009(n)+A069910(n)%A000041(n)`
-/

namespace A118083.P15262279915269616358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + Int.tmod (A069910 n) (A000041 n)

end

end A118083.P15262279915269616358

/-!
# A118084: Number of partitions of n such that largest part k occurs at most floor(k/2) times.

The programs for A118084, there is no canonical definition to state claims against.
-/

/-! ## A118084.P16277748618520413292

`Δ[A000070(n)]-A237799(n+1)`
-/

namespace A118084.P16277748618520413292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237799 (n + 1)

end

end A118084.P16277748618520413292

/-! ## A118084.P7822926354661244223

`record[A035363(n)]-A237799(n+1)`
-/

namespace A118084.P7822926354661244223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237799 (n + 1)

end

end A118084.P7822926354661244223

/-! ## A118084.P6562926932144535015

`record[A035444(n)]-A237799(n+1)`
-/

namespace A118084.P6562926932144535015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237799 (n + 1)

end

end A118084.P6562926932144535015

/-! ## A118084.P10824381184974869695

`record[A114099(n)]-A237799(n+1)`
-/

namespace A118084.P10824381184974869695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A237799 (n + 1)

end

end A118084.P10824381184974869695

/-! ## A118084.P11953916693338355344

`A237758(n+1)+A237757(n+1)`
-/

namespace A118084.P11953916693338355344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237758 (n + 1) + A237757 (n + 1)

end

end A118084.P11953916693338355344

/-!
# A118085: Alternative version of A114572 with a(0) = 1 instead of 2.

The programs for A118085, there is no canonical definition to state claims against.
-/

/-! ## A118085.P1439021778268251149

`A058712(n)+char[8]`
-/

namespace A118085.P1439021778268251149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058712 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A118085.P1439021778268251149

/-! ## A118085.P8687613075297842400

`or(floor(n/4), A058712(∑{digits}[n, #]))`
-/

namespace A118085.P8687613075297842400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℚ) / 4⌋ (A058712 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A118085.P8687613075297842400

/-! ## A118085.P4154476425547114687

`or(floor(n/4), A058712(∏{digits}[n, #]))`
-/

namespace A118085.P4154476425547114687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℚ) / 4⌋ (A058712 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod)

end

end A118085.P4154476425547114687

/-! ## A118085.P2136248299616217623

`A058712(n-∑{digits}[n, and(8, #)/8])`
-/

namespace A118085.P2136248299616217623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058712 (SequenceMachineLib.roundAway ((n : ℚ) - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (Nat.land 8 x : ℚ) / 8).sum)).toNat

end

end A118085.P2136248299616217623

/-!
# A118086: Number of ways 3/2 is a product of n superparticular ratios, without regard to order. A superparticular ratio is a ratio of the form m/(m-1).

The programs for A118086, there is no canonical definition to state claims against.
-/

/-! ## A118086.P10501741935827504274

`A323261(n)+A081211(A323255(n))`
-/

namespace A118086.P10501741935827504274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323261 n + A081211 (A323255 n).toNat

end

end A118086.P10501741935827504274

/-!
# A118087: Start with 1 and repeatedly reverse the digits and add 43 to get the next term.

The programs for A118087, there is no canonical definition to state claims against.
-/

/-! ## A118087.P12773902906086291524

`43+A004086(a(n-1))` with `a(0)=1`
-/

namespace A118087.P12773902906086291524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  43 + A004086 (a (n - 1)).toNat

end

end A118087.P12773902906086291524

/-!
# A118088: a(0) = 0, a(n) = (1+2*0^(n mod 3))*a(floor(n/3)) + n mod 3.

The programs for A118088, there is no canonical definition to state claims against.
-/

/-! ## A118088.P15477406684093528298

`(a(floor(n/3))+n%3)*gcd(3, n)` with `a(0)=0`
-/

namespace A118088.P15477406684093528298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 3⌋.toNat + n % 3) * Nat.gcd 3 n

end

end A118088.P15477406684093528298

/-! ## A118088.P17320831967906440201

`A235669(n/A339047(A318189(n)))`
-/

namespace A118088.P17320831967906440201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235669 (SequenceMachineLib.roundAway ((n : ℚ) / (A339047 (A318189 n).toNat : ℚ))).toNat

end

end A118088.P17320831967906440201

/-! ## A118088.P10994263046310442426

`C(A235669(n), A339047(A318189(n)))`
-/

namespace A118088.P10994263046310442426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A235669 n).toNat (A339047 (A318189 n).toNat).toNat

end

end A118088.P10994263046310442426

/-! ## A118088.P5836972847364253405

`or(A025441(A276087(n)), A235669(n))`
-/

namespace A118088.P5836972847364253405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025441 (A276087 n).toNat) (A235669 n)

end

end A118088.P5836972847364253405

/-! ## A118088.P13219183335992118281

`A235669(n)+A025441(A235669(n)*A276087(n))`
-/

namespace A118088.P13219183335992118281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235669 n + A025441 (A235669 n * A276087 n).toNat

end

end A118088.P13219183335992118281

/-!
# A118090: Start with 1 and repeatedly reverse the digits and add 44 to get the next term.

The programs for A118090, there is no canonical definition to state claims against.
-/

/-! ## A118090.P13692090081321909895

`A004086(a(n-1))+44` with `a(0)=1`
-/

namespace A118090.P13692090081321909895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 44

end

end A118090.P13692090081321909895

/-!
# A118091: Start with 1 and repeatedly reverse the digits and add 46 to get the next term.

The programs for A118091, there is no canonical definition to state claims against.
-/

/-! ## A118091.P16594124634448939780

`A004086(a(n-1))+46` with `a(0)=1`
-/

namespace A118091.P16594124634448939780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 46

end

end A118091.P16594124634448939780

/-!
# A118092: Odd primes raised to odd prime powers.

The programs for A118092, there is no canonical definition to state claims against.
-/

/-! ## A118092.P16712011772105371334

`∩[A053810(n+1), A088248(n+1)]`
-/

namespace A118092.P16712011772105371334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118092.P16712011772105371334

/-! ## A118092.P4166591412995583850

`∩[A056166(n+1), A088248(n+1)]`
-/

namespace A118092.P4166591412995583850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118092.P4166591412995583850

/-! ## A118092.P13750978423696732642

`∩[A088248(n+1), A093771(n+1)]`
-/

namespace A118092.P13750978423696732642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118092.P13750978423696732642

/-! ## A118092.P3366352492902011459

`∩[A088248(n+1), A114129(n+1)]`
-/

namespace A118092.P3366352492902011459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118092.P3366352492902011459

/-! ## A118092.P706168657333671306

`∩[A036966(n+1), A280609(n+1)]`
-/

namespace A118092.P706168657333671306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118092.P706168657333671306

/-!
# A118093: Numbers of rooted hypermaps on the torus with n darts (darts are semi-edges in the particular case of ordinary maps).

The programs for A118093, the canonical program `A118093.P12063885949380815492` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118093 has offset 3).

The definition of A118093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118093.P12063885949380815492

`A115194(n)+8*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A118093

/-- `A115194(n)+8*a(n-1)` -/
def P12063885949380815492.Spec : Prop :=
  ∀ n, P12063885949380815492.a n = A118093 (n + 3)

theorem P12063885949380815492.correct : P12063885949380815492.Spec := by
  intro n
  simp only [A118093, Nat.add_sub_cancel]

end A118093

/-! ## A118093.P531940898221404442

`A321710(A033638(n+3)+1)`
-/

namespace A118093.P531940898221404442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321710 (A033638 (n + 3) + 1).toNat

end

end A118093.P531940898221404442

namespace A118093

/-- `A321710(A033638(n+3)+1)` -/
def P531940898221404442.Spec : Prop :=
  ∀ n, P531940898221404442.a n = A118093 (n + 3)

end A118093

/-! ## A118093.P4885091736890380995

`A321710(A002620(n+3)+2)`
-/

namespace A118093.P4885091736890380995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321710 (A002620 (n + 3) + 2).toNat

end

end A118093.P4885091736890380995

namespace A118093

/-- `A321710(A002620(n+3)+2)` -/
def P4885091736890380995.Spec : Prop :=
  ∀ n, P4885091736890380995.a n = A118093 (n + 3)

end A118093

/-!
# A118094: Numbers of unrooted hypermaps on the torus with n darts up to orientation-preserving homeomorphism (darts are semi-edges in the particular case of ordinary maps).

The programs for A118094, there is no canonical definition to state claims against.
-/

/-! ## A118094.P9629970210308606169

`∑[A072451(∑[A091928(n)])]`
-/

namespace A118094.P9629970210308606169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091928 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118094.P9629970210308606169

/-!
# A118096: Number of partitions of n such that the largest part is twice the smallest part.

The programs for A118096, there is no canonical definition to state claims against.
-/

/-! ## A118096.P10464033037817480136

`A237824(n+1)-A053263(n)`
-/

namespace A118096.P10464033037817480136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237824 (n + 1) - A053263 n

end

end A118096.P10464033037817480136

/-! ## A118096.P7724707870410297893

`A237824(n+1)-(A053265(n)-A053257(2*n+1))`
-/

namespace A118096.P7724707870410297893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237824 (n + 1) - (A053265 n - A053257 (2 * n + 1))

end

end A118096.P7724707870410297893

/-! ## A118096.P13556260651575476425

`A237824(n+1)-(A053261(2*n+1)-A053257(2*n+1))`
-/

namespace A118096.P13556260651575476425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237824 (n + 1) - (A053261 (2 * n + 1) - A053257 (2 * n + 1))

end

end A118096.P13556260651575476425

/-! ## A118096.P17859947841753131660

`Δ[A000070(n)]-(A237820(n+1)+A053263(n))`
-/

namespace A118096.P17859947841753131660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A237820 (n + 1) + A053263 n)

end

end A118096.P17859947841753131660

/-! ## A118096.P6512922397925870860

`A237821(n+1)-A237820(n+1)`
-/

namespace A118096.P6512922397925870860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237821 (n + 1) - A237820 (n + 1)

end

end A118096.P6512922397925870860

/-!
# A118097: Primes of form 2 + odd prime to odd prime power.

The programs for A118097, there is no canonical definition to state claims against.
-/

/-! ## A118097.P9497480093533049565

`p?[A056824(n+1)+2]`
-/

namespace A118097.P9497480093533049565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056824 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118097.P9497480093533049565

/-! ## A118097.P1332301029354644227

`p?[A118092(n+1)+2]`
-/

namespace A118097.P1332301029354644227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118092 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118097.P1332301029354644227

/-!
# A118099: Number of inverse semigroups of order <= n.

The programs for A118099, there is no canonical definition to state claims against.
-/

/-! ## A118099.P2319537322044485309

`∑[A001428(n+1)]`
-/

namespace A118099.P2319537322044485309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118099.P2319537322044485309

/-! ## A118099.P16583577680861825221

`∑[record[A001428(A000119(n))]]`
-/

namespace A118099.P16583577680861825221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001428 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118099.P16583577680861825221

/-! ## A118099.P12231899076419538690

`∑[record[A001428(A051340(n))]]`
-/

namespace A118099.P12231899076419538690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001428 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118099.P12231899076419538690

/-! ## A118099.P10259547296833445942

`∑[record[A001428(A193738(n))]]`
-/

namespace A118099.P10259547296833445942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001428 (A193738 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118099.P10259547296833445942

/-! ## A118099.P1537164379984511202

`∑[record[A001428(A195663(n))]]`
-/

namespace A118099.P1537164379984511202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001428 (A195663 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118099.P1537164379984511202

