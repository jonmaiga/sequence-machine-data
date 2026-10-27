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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C040
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A123701: Minimum number k > 0 such that abs(n^k - k^n) = A078202(n) is prime, or -1 if such k > 0 does not exist.

The programs for A123701, there is no canonical definition to state claims against.
-/

/-! ## A123701.P18434859924964475755

`A244051(A003185(2*n+1)-A014613(n+4))`
-/

namespace A123701.P18434859924964475755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244051 (A003185 (2 * n + 1) - A014613 (n + 4)).toNat

end

end A123701.P18434859924964475755

/-!
# A123702: a(1)=a(2)=1. For n >= 3, a(n) = (product{k=1 to n-1} a(k)) - (sum{j=1 to n-1} a(j)).

The programs for A123702, the canonical program `A123702.P9381321396622473069` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123702 has offset 1).

The definition of A123702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123702.P9381321396622473069

`a(n-1)*a(n-2)*(a(n-1)-1)/(a(n-2)-1)` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=-2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123702

/-- `a(n-1)*a(n-2)*(a(n-1)-1)/(a(n-2)-1)` -/
def P9381321396622473069.Spec : Prop :=
  ∀ n, P9381321396622473069.a n = (A123702 (n + 1) : ℚ)

end A123702

/-!
# A123703: a(1)=a(2)=1. For n >= 3, a(n) = |(product{k=1 to n-1} a(k)) - (sum{j=1 to n-1} a(j))|.

The programs for A123703, there is no canonical definition to state claims against.
-/

/-! ## A123703.P767035905716444755

`A199133(A329138(n+1)+A241467(n+1))`
-/

namespace A123703.P767035905716444755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199133 (A329138 (n + 1) + A241467 (n + 1)).toNat

end

end A123703.P767035905716444755

/-!
# A123704: Numbers k such that (5^p - 3^p)/2 is prime, where p = prime(k).

The programs for A123704, there is no canonical definition to state claims against.
-/

/-! ## A123704.P32738525617487172

`A000720(A121877(n+1))`
-/

namespace A123704.P32738525617487172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A121877 (n + 1)).toNat

end

end A123704.P32738525617487172

/-! ## A123704.P15931448938449797054

`A061395(or(1, A121877(n+1)))`
-/

namespace A123704.P15931448938449797054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A121877 (n + 1))).toNat

end

end A123704.P15931448938449797054

/-! ## A123704.P8690761770726993433

`A061395(A121877(C(n+1, n)))`
-/

namespace A123704.P8690761770726993433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A121877 (Nat.choose (n + 1) n)).toNat

end

end A123704.P8690761770726993433

/-! ## A123704.P15452780629688477389

`∑{d}[A121877(n+1), A061395(#)]`
-/

namespace A123704.P15452780629688477389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A123704.P15452780629688477389

/-!
# A123705: 

The programs for A123705, there is no canonical definition to state claims against.
-/

/-! ## A123705.P2451633507334031030

`A005059(A121877(n+1))`
-/

namespace A123705.P2451633507334031030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 (A121877 (n + 1)).toNat

end

end A123705.P2451633507334031030

/-!
# A123706: Matrix inverse of triangle A010766, where A010766(n,k) = [n/k], for n>=k>=1.

The programs for A123706, the canonical program `A123706.P7339613672439894422` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123706 has offset 1).

The definition of A123706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123706.P7339613672439894422

`A054525(n+1)-A054525(n+2)*A177978(n+2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A123706

/-- `A054525(n+1)-A054525(n+2)*A177978(n+2)` -/
def P7339613672439894422.Spec : Prop :=
  ∀ n, P7339613672439894422.a n = A123706 (n + 1)

theorem P7339613672439894422.correct : P7339613672439894422.Spec := by
  intro n
  simp only [A123706, Nat.add_sub_cancel]

end A123706

/-! ## A123706.P10386979383299848469

`-A206706(comp[∑[n]])`
-/

namespace A123706.P10386979383299848469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A206706 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A123706.P10386979383299848469

namespace A123706

/-- `-A206706(comp[∑[n]])` -/
def P10386979383299848469.Spec : Prop :=
  ∀ n, P10386979383299848469.a n = A123706 (n + 1)

end A123706

/-! ## A123706.P11706445348954846741

`-A206706(comp[C(n, 2)])%3`
-/

namespace A123706.P11706445348954846741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A206706 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 3

end

end A123706.P11706445348954846741

namespace A123706

/-- `-A206706(comp[C(n, 2)])%3` -/
def P11706445348954846741.Spec : Prop :=
  ∀ n, P11706445348954846741.a n = A123706 (n + 1)

end A123706

/-! ## A123706.P5018485932651832739

`A000007(n+1)-A206706(comp[∑[n]])`
-/

namespace A123706.P5018485932651832739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A206706 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A123706.P5018485932651832739

namespace A123706

/-- `A000007(n+1)-A206706(comp[∑[n]])` -/
def P5018485932651832739.Spec : Prop :=
  ∀ n, P5018485932651832739.a n = A123706 (n + 1)

end A123706

/-! ## A123706.P10182222929997189607

`A057428(n+1)*A206706(comp[∑[n]])`
-/

namespace A123706.P10182222929997189607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) * A206706 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A123706.P10182222929997189607

namespace A123706

/-- `A057428(n+1)*A206706(comp[∑[n]])` -/
def P10182222929997189607.Spec : Prop :=
  ∀ n, P10182222929997189607.a n = A123706 (n + 1)

end A123706

/-! ## A123706.P13471256472503539162

`A153881(n+2)*A206706(comp[∑[n]])`
-/

namespace A123706.P13471256472503539162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) * A206706 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A123706.P13471256472503539162

namespace A123706

/-- `A153881(n+2)*A206706(comp[∑[n]])` -/
def P13471256472503539162.Spec : Prop :=
  ∀ n, P13471256472503539162.a n = A123706 (n + 1)

end A123706

/-! ## A123706.P4087598966954367102

`char[A135642(n+1)]-A206706(comp[∑[n]])`
-/

namespace A123706.P4087598966954367102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135642 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A206706 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A123706.P4087598966954367102

namespace A123706

/-- `char[A135642(n+1)]-A206706(comp[∑[n]])` -/
def P4087598966954367102.Spec : Prop :=
  ∀ n, P4087598966954367102.a n = A123706 (n + 1)

end A123706

/-! ## A123706.P9271051171150248337

`char[A247530(n+2)]-A206706(comp[∑[n]])`
-/

namespace A123706.P9271051171150248337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247530 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A206706 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A123706.P9271051171150248337

namespace A123706

/-- `char[A247530(n+2)]-A206706(comp[∑[n]])` -/
def P9271051171150248337.Spec : Prop :=
  ∀ n, P9271051171150248337.a n = A123706 (n + 1)

end A123706

/-! ## A123706.P135450614985230487

`char[A247538(n+2)]-A206706(comp[∑[n]])`
-/

namespace A123706.P135450614985230487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247538 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A206706 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A123706.P135450614985230487

namespace A123706

/-- `char[A247538(n+2)]-A206706(comp[∑[n]])` -/
def P135450614985230487.Spec : Prop :=
  ∀ n, P135450614985230487.a n = A123706 (n + 1)

end A123706

/-! ## A123706.P3736585812941065926

`A008683(4*(n+1))-A206706(comp[C(n, 2)])`
-/

namespace A123706.P3736585812941065926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - A206706 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A123706.P3736585812941065926

namespace A123706

/-- `A008683(4*(n+1))-A206706(comp[C(n, 2)])` -/
def P3736585812941065926.Spec : Prop :=
  ∀ n, P3736585812941065926.a n = A123706 (n + 1)

end A123706

/-!
# A123707: a(n) = Sum_{k=1..n} A123706(n,k)*2^(k-1).

The programs for A123707, the canonical program `A123707.P12126468004863991091` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123707 has offset 1).

The definition of A123707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123707.P15637733339089673096

`∑{d}[n+1, A008683(#)*A011782((n+1)/#-1)]`
-/

namespace A123707.P15637733339089673096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A011782 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A123707.P15637733339089673096

namespace A123707

/-- `∑{d}[n+1, A008683(#)*A011782((n+1)/#-1)]` -/
def P15637733339089673096.Spec : Prop :=
  ∀ n, P15637733339089673096.a n = A123707 (n + 1)

end A123707

/-! ## A123707.P17505698111631285904

`(A008683(n+1)+A000740(n+1))/2`
-/

namespace A123707.P17505698111631285904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) + A000740 (n + 1) : ℚ) / 2

end

end A123707.P17505698111631285904

namespace A123707

/-- `(A008683(n+1)+A000740(n+1))/2` -/
def P17505698111631285904.Spec : Prop :=
  ∀ n, P17505698111631285904.a n = (A123707 (n + 1) : ℚ)

end A123707

/-! ## A123707.P12126468004863991091

`(A231821(n+1)-3+2^n-A178472(n+1))/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A123707

/-- `(A231821(n+1)-3+2^n-A178472(n+1))/2` -/
def P12126468004863991091.Spec : Prop :=
  ∀ n, P12126468004863991091.a n = (A123707 (n + 1) : ℚ)

end A123707

/-! ## A123707.P1623833217559691100

`(or(char[n²²], A056278(n+1))+A231821(n+1)-3)/2`
-/

namespace A123707.P1623833217559691100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A056278 (n + 1)) + (A231821 (n + 1) - 3) : ℚ) / 2

end

end A123707.P1623833217559691100

namespace A123707

/-- `(or(char[n²²], A056278(n+1))+A231821(n+1)-3)/2` -/
def P1623833217559691100.Spec : Prop :=
  ∀ n, P1623833217559691100.a n = (A123707 (n + 1) : ℚ)

end A123707

/-! ## A123707.P8000901682147274394

`(A056278(A004277(n)+1-n)+A231821(n+1)-3)/2`
-/

namespace A123707.P8000901682147274394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056278 (A004277 n + (1 - (n : ℤ))).toNat + (A231821 (n + 1) - 3) : ℚ) / 2

end

end A123707.P8000901682147274394

namespace A123707

/-- `(A056278(A004277(n)+1-n)+A231821(n+1)-3)/2` -/
def P8000901682147274394.Spec : Prop :=
  ∀ n, P8000901682147274394.a n = (A123707 (n + 1) : ℚ)

end A123707

/-! ## A123707.P11755786990176589644

`(A328502(n+1)%2+A056278(n+1)+A000007(n))/2`
-/

namespace A123707.P11755786990176589644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A328502 (n + 1)) 2 + (A056278 (n + 1) + A000007 n) : ℚ) / 2

end

end A123707.P11755786990176589644

namespace A123707

/-- `(A328502(n+1)%2+A056278(n+1)+A000007(n))/2` -/
def P11755786990176589644.Spec : Prop :=
  ∀ n, P11755786990176589644.a n = (A123707 (n + 1) : ℚ)

end A123707

/-! ## A123707.P16412736998375292565

`(A231821(n+1)-3+A045687(n+1)+A045683(n+1))/2`
-/

namespace A123707.P16412736998375292565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231821 (n + 1) - 3 + (A045687 (n + 1) + A045683 (n + 1)) : ℚ) / 2

end

end A123707.P16412736998375292565

namespace A123707

/-- `(A231821(n+1)-3+A045687(n+1)+A045683(n+1))/2` -/
def P16412736998375292565.Spec : Prop :=
  ∀ n, P16412736998375292565.a n = (A123707 (n + 1) : ℚ)

end A123707

/-! ## A123707.P13637424669479310885

`(A231821(n+1)-3+A056278(n+1)+A000079(n)%2)/2`
-/

namespace A123707.P13637424669479310885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231821 (n + 1) - 3 + (A056278 (n + 1) + Int.tmod (A000079 n) 2) : ℚ) / 2

end

end A123707.P13637424669479310885

namespace A123707

/-- `(A231821(n+1)-3+A056278(n+1)+A000079(n)%2)/2` -/
def P13637424669479310885.Spec : Prop :=
  ∀ n, P13637424669479310885.a n = (A123707 (n + 1) : ℚ)

end A123707

/-! ## A123707.P3086968361727586938

`(A000740(n+1)+A156827(n+1)/A001792(n))/2`
-/

namespace A123707.P3086968361727586938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000740 (n + 1) : ℚ) + (A156827 (n + 1) : ℚ) / (A001792 n : ℚ)) / 2

end

end A123707.P3086968361727586938

namespace A123707

/-- `(A000740(n+1)+A156827(n+1)/A001792(n))/2` -/
def P3086968361727586938.Spec : Prop :=
  ∀ n, P3086968361727586938.a n = (A123707 (n + 1) : ℚ)

end A123707

/-!
# A123708: a(n) = sum of unsigned elements in row n of triangle A123706.

The programs for A123708, there is no canonical definition to state claims against.
-/

/-! ## A123708.P9755956159424310415

`or(A010060(A001045(n)), A123709(n+1))`
-/

namespace A123708.P9755956159424310415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A001045 n).toNat) (A123709 (n + 1))

end

end A123708.P9755956159424310415

/-! ## A123708.P14099382700599618251

`A123709(n+1)+A000035(A004320(n))`
-/

namespace A123708.P14099382700599618251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123709 (n + 1) + A000035 (A004320 n).toNat

end

end A123708.P14099382700599618251

/-! ## A123708.P5884428291540363318

`A328830(lcm(A183091(n+1), A297002(n+1)))`
-/

namespace A123708.P5884428291540363318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328830 (Int.lcm (A183091 (n + 1)) (A297002 (n + 1)))

end

end A123708.P5884428291540363318

/-! ## A123708.P8728840214862996858

`A123709(n+1)+A000035(A000035(n)*A056278(n+1))`
-/

namespace A123708.P8728840214862996858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123709 (n + 1) + A000035 (A000035 n * A056278 (n + 1)).toNat

end

end A123708.P8728840214862996858

/-! ## A123708.P3387095720261666325

`A030308(A114600(n+5))+A010846(n+1)`
-/

namespace A123708.P3387095720261666325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A114600 (n + 5)).toNat + A010846 (n + 1)

end

end A123708.P3387095720261666325

/-!
# A123709: a(n) is the number of nonzero elements in row n of triangle A123706.

The programs for A123709, there is no canonical definition to state claims against.
-/

/-! ## A123709.P16639454589059154880

`A123708(n+1)-A000035(A004320(n))`
-/

namespace A123709.P16639454589059154880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123708 (n + 1) - A000035 (A004320 n).toNat

end

end A123709.P16639454589059154880

/-! ## A123709.P5144544675172593526

`A123708(n+1)-A266978(A158558(n+4))`
-/

namespace A123709.P5144544675172593526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123708 (n + 1) - A266978 (A158558 (n + 4)).toNat

end

end A123709.P5144544675172593526

/-! ## A123709.P6821098455491198474

`A123708(n+1)-A072627(A111329(A006519(n+1)))`
-/

namespace A123709.P6821098455491198474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123708 (n + 1) - A072627 (A111329 (A006519 (n + 1)).toNat).toNat

end

end A123709.P6821098455491198474

/-! ## A123709.P11854125572635614121

`A057955(n+1)+A010051(A190255(n))`
-/

namespace A123709.P11854125572635614121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057955 (n + 1) + A010051 (A190255 n).toNat

end

end A123709.P11854125572635614121

/-! ## A123709.P11077547127235124375

`A228085(A280369(n))+A000005(n+1)`
-/

namespace A123709.P11077547127235124375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 (A280369 n).toNat + A000005 (n + 1)

end

end A123709.P11077547127235124375

/-!
# A123710: Indices k such that 4 = A123709(k) = number of nonzero terms in row k of triangle A123706.

The programs for A123710, there is no canonical definition to state claims against.
-/

/-! ## A123710.P17781640035469346563

`A053707(n)+a(n-1)` with `a(0)=4, a(1)=6, a(2)=8`
-/

namespace A123710.P17781640035469346563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6, 8] fun n a =>
  A053707 n + a (n - 1)

end

end A123710.P17781640035469346563

/-! ## A123710.P6039130390217578912

`A025475(n+1)+and(3, -2^n)`
-/

namespace A123710.P6039130390217578912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1) + Int.land 3 (-(2 ^ n : ℤ))

end

end A123710.P6039130390217578912

/-! ## A123710.P15636678962172235165

`record[A163813(n+1)]-(n-3)*C(n, n²)`
-/

namespace A123710.P15636678962172235165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) - 3) * (Nat.choose n (n ^ 2) : ℤ)

end

end A123710.P15636678962172235165

/-! ## A123710.P2118421719153360574

`filter[A225657(n+1), A066247(#)]`
-/

namespace A123710.P2118421719153360574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A123710.P2118421719153360574

/-! ## A123710.P4352234524429643028

`filter[A073540(n+1), A354923(#)]`
-/

namespace A123710.P4352234524429643028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A123710.P4352234524429643028

/-! ## A123710.P2618628315862346589

`filter[A073540(n+1), A354924(#)]`
-/

namespace A123710.P2618628315862346589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A123710.P2618628315862346589

/-! ## A123710.P4362103316215915662

`filter[A073540(n+1), A384667(#)]`
-/

namespace A123710.P4362103316215915662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A123710.P4362103316215915662

/-! ## A123710.P11628318656130991898

`filter[A119492(n+1), A344884(#)]`
-/

namespace A123710.P11628318656130991898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344884 (f1 j).toNat = 1) n)

end

end A123710.P11628318656130991898

/-!
# A123711: Indices n such that A123709(n) = 8 = number of nonzero terms in row n of triangle A123706.

The programs for A123711, the canonical program `A123711.P3106313337683565752` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123711 has offset 1).

The definition of A123711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123711.P5507350512727755410

`eq[2, A158210(n+1)]+1`
-/

namespace A123711.P5507350512727755410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158210 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A123711.P5507350512727755410

namespace A123711

/-- `eq[2, A158210(n+1)]+1` -/
def P5507350512727755410.Spec : Prop :=
  ∀ n, (P5507350512727755410.a n : ℤ) = A123711 (n + 1)

end A123711

/-! ## A123711.P5403116726730254241

`eq[n, n-a(A293227(n))]` with `a(0)=3`
-/

namespace A123711.P5403116726730254241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  (n : ℤ) - f2 (A293227 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123711.P5403116726730254241

namespace A123711

/-- `eq[n, n-a(A293227(n))]` -/
def P5403116726730254241.Spec : Prop :=
  ∀ n, (P5403116726730254241.a n : ℤ) = A123711 (n + 1)

end A123711

/-! ## A123711.P6143207600274770356

`A065475(eq[2, A158210(n+1)])`
-/

namespace A123711.P6143207600274770356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123711.P6143207600274770356

namespace A123711

/-- `A065475(eq[2, A158210(n+1)])` -/
def P6143207600274770356.Spec : Prop :=
  ∀ n, P6143207600274770356.a n = A123711 (n + 1)

end A123711

/-! ## A123711.P15914833216401954828

`filter[A007774(n+1), A087049(#)]`
-/

namespace A123711.P15914833216401954828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A123711.P15914833216401954828

namespace A123711

/-- `filter[A007774(n+1), A087049(#)]` -/
def P15914833216401954828.Spec : Prop :=
  ∀ n, P15914833216401954828.a n = A123711 (n + 1)

end A123711

/-! ## A123711.P18360368905552566156

`filter[A007774(n+1), A107078(#)]`
-/

namespace A123711.P18360368905552566156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A123711.P18360368905552566156

namespace A123711

/-- `filter[A007774(n+1), A107078(#)]` -/
def P18360368905552566156.Spec : Prop :=
  ∀ n, P18360368905552566156.a n = A123711 (n + 1)

end A123711

/-! ## A123711.P3106313337683565752

`filter[A013929(n+1), A215480(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A123711

/-- `filter[A013929(n+1), A215480(#)]` -/
def P3106313337683565752.Spec : Prop :=
  ∀ n, P3106313337683565752.a n = A123711 (n + 1)

theorem P3106313337683565752.correct : P3106313337683565752.Spec := by
  intro n
  simp only [A123711, Nat.add_sub_cancel]

end A123711

/-! ## A123711.P17556148982640809762

`filter[A033942(n+1), A215480(#)]`
-/

namespace A123711.P17556148982640809762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A123711.P17556148982640809762

namespace A123711

/-- `filter[A033942(n+1), A215480(#)]` -/
def P17556148982640809762.Spec : Prop :=
  ∀ n, P17556148982640809762.a n = A123711 (n + 1)

end A123711

/-! ## A123711.P1224403083396595516

`filter[A058080(n+1), A215480(#)]`
-/

namespace A123711.P1224403083396595516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A123711.P1224403083396595516

namespace A123711

/-- `filter[A058080(n+1), A215480(#)]` -/
def P1224403083396595516.Spec : Prop :=
  ∀ n, P1224403083396595516.a n = A123711 (n + 1)

end A123711

/-! ## A123711.P1140111472137509951

`filter[A066423(n+1), A215480(#)]`
-/

namespace A123711.P1140111472137509951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A123711.P1140111472137509951

namespace A123711

/-- `filter[A066423(n+1), A215480(#)]` -/
def P1140111472137509951.Spec : Prop :=
  ∀ n, P1140111472137509951.a n = A123711 (n + 1)

end A123711

/-! ## A123711.P2076970679658243122

`filter[A080756(n+1), A215480(#)]`
-/

namespace A123711.P2076970679658243122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A123711.P2076970679658243122

namespace A123711

/-- `filter[A080756(n+1), A215480(#)]` -/
def P2076970679658243122.Spec : Prop :=
  ∀ n, P2076970679658243122.a n = A123711 (n + 1)

end A123711

/-! ## A123711.P5315298953721204984

`filter[A100959(n+1), A215480(#)]`
-/

namespace A123711.P5315298953721204984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A123711.P5315298953721204984

namespace A123711

/-- `filter[A100959(n+1), A215480(#)]` -/
def P5315298953721204984.Spec : Prop :=
  ∀ n, P5315298953721204984.a n = A123711 (n + 1)

end A123711

/-! ## A123711.P1006126025565650504

`filter[A111087(n+1), A215480(#)]`
-/

namespace A123711.P1006126025565650504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A123711.P1006126025565650504

namespace A123711

/-- `filter[A111087(n+1), A215480(#)]` -/
def P1006126025565650504.Spec : Prop :=
  ∀ n, P1006126025565650504.a n = A123711 (n + 1)

end A123711

/-! ## A123711.P14084677896346294343

`filter[A126706(n+1), A215480(#)]`
-/

namespace A123711.P14084677896346294343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A123711.P14084677896346294343

namespace A123711

/-- `filter[A126706(n+1), A215480(#)]` -/
def P14084677896346294343.Spec : Prop :=
  ∀ n, P14084677896346294343.a n = A123711 (n + 1)

end A123711

/-! ## A123711.P18397606938628018933

`filter[A007774(n+1), A355447(#)]`
-/

namespace A123711.P18397606938628018933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A123711.P18397606938628018933

namespace A123711

/-- `filter[A007774(n+1), A355447(#)]` -/
def P18397606938628018933.Spec : Prop :=
  ∀ n, P18397606938628018933.a n = A123711 (n + 1)

end A123711

/-! ## A123711.P4102484219501680883

`filter[A162966(n+1), A215480(#)]`
-/

namespace A123711.P4102484219501680883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A123711.P4102484219501680883

namespace A123711

/-- `filter[A162966(n+1), A215480(#)]` -/
def P4102484219501680883.Spec : Prop :=
  ∀ n, P4102484219501680883.a n = A123711 (n + 1)

end A123711

/-! ## A123711.P2608217220429920425

`filter[A070915(n+1), A355447(#)]`
-/

namespace A123711.P2608217220429920425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A123711.P2608217220429920425

namespace A123711

/-- `filter[A070915(n+1), A355447(#)]` -/
def P2608217220429920425.Spec : Prop :=
  ∀ n, P2608217220429920425.a n = A123711 (n + 1)

end A123711

/-! ## A123711.P17759473336554766431

`filter[A210994(n+1), A215480(#)]`
-/

namespace A123711.P17759473336554766431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A123711.P17759473336554766431

namespace A123711

/-- `filter[A210994(n+1), A215480(#)]` -/
def P17759473336554766431.Spec : Prop :=
  ∀ n, P17759473336554766431.a n = A123711 (n + 1)

end A123711

/-! ## A123711.P8477029513439650604

`filter[A212165(n+1), A215480(#)]`
-/

namespace A123711.P8477029513439650604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A123711.P8477029513439650604

namespace A123711

/-- `filter[A212165(n+1), A215480(#)]` -/
def P8477029513439650604.Spec : Prop :=
  ∀ n, P8477029513439650604.a n = A123711 (n + 1)

end A123711

/-! ## A123711.P15781462930687052839

`filter[A246716(n+1), A215480(#)]`
-/

namespace A123711.P15781462930687052839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A123711.P15781462930687052839

namespace A123711

/-- `filter[A246716(n+1), A215480(#)]` -/
def P15781462930687052839.Spec : Prop :=
  ∀ n, P15781462930687052839.a n = A123711 (n + 1)

end A123711

/-! ## A123711.P16522906260999362558

`filter[A289553(n+1), A215480(#)]`
-/

namespace A123711.P16522906260999362558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A123711.P16522906260999362558

namespace A123711

/-- `filter[A289553(n+1), A215480(#)]` -/
def P16522906260999362558.Spec : Prop :=
  ∀ n, P16522906260999362558.a n = A123711 (n + 1)

end A123711

/-!
# A123712: Indices n such that 16 = A123709(n) = number of nonzero terms in row n of triangle A123706.

The programs for A123712, there is no canonical definition to state claims against.
-/

/-! ## A123712.P12249249784966069460

`∩[A033992(n+1), A139587(n+1)]`
-/

namespace A123712.P12249249784966069460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123712.P12249249784966069460

/-! ## A123712.P1733629852639494368

`∩[A139587(n+1), A214195(n+1)]`
-/

namespace A123712.P1733629852639494368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123712.P1733629852639494368

/-!
# A123713: Signature permutation of a nonrecursive Catalan automorphism: row 1783367 of table A089840.

The programs for A123713, there is no canonical definition to state claims against.
-/

/-! ## A123713.P14079606817195370486

`A069770(A074680(n))+A000007(A214686(n+2))`
-/

namespace A123713.P14079606817195370486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A074680 n).toNat + A000007 (A214686 (n + 2)).toNat

end

end A123713.P14079606817195370486

/-! ## A123713.P9127980269951530196

`A123714(A123714(n)%A326319(n+1))`
-/

namespace A123713.P9127980269951530196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123714 (Int.tmod (A123714 n) (A326319 (n + 1))).toNat

end

end A123713.P9127980269951530196

/-! ## A123713.P10209191792044363672

`A069770(A074680(n))+A000038(A066874(n+1))`
-/

namespace A123713.P10209191792044363672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A074680 n).toNat + A000038 (A066874 (n + 1)).toNat

end

end A123713.P10209191792044363672

/-! ## A123713.P14162903862269560434

`or(A069770(A074680(n)), A083928(n+1))`
-/

namespace A123713.P14162903862269560434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069770 (A074680 n).toNat) (A083928 (n + 1))

end

end A123713.P14162903862269560434

/-! ## A123713.P3561228170756824859

`A069770(A074680(n)%A051989(2*n+5))`
-/

namespace A123713.P3561228170756824859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (Int.tmod (A074680 n) (A051989 (2 * n + 5))).toNat

end

end A123713.P3561228170756824859

/-! ## A123713.P14666482957586648433

`A123714(A123714(n))%A051989(2*n+5)`
-/

namespace A123713.P14666482957586648433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123714 (A123714 n).toNat) (A051989 (2 * n + 5))

end

end A123713.P14666482957586648433

/-!
# A123714: Signature permutation of a nonrecursive Catalan automorphism: row 1786785 of table A089840.

The programs for A123714, there is no canonical definition to state claims against.
-/

/-! ## A123714.P14487092638753912839

`A123713(A123713(n))+A000007(A030432(3*n+5))`
-/

namespace A123714.P14487092638753912839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123713 (A123713 n).toNat + A000007 (A030432 (3 * n + 5)).toNat

end

end A123714.P14487092638753912839

/-! ## A123714.P3519613909690392074

`A123713(A123713(n))%A016777(n²)`
-/

namespace A123714.P3519613909690392074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123713 (A123713 n).toNat) (A016777 (n ^ 2))

end

end A123714.P3519613909690392074

/-! ## A123714.P9807437640668870788

`A123713(A123713(n)%A085451(n+1))`
-/

namespace A123714.P9807437640668870788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123713 (Int.tmod (A123713 n) (A085451 (n + 1))).toNat

end

end A123714.P9807437640668870788

/-! ## A123714.P7253363548492355797

`A074679(A069770(n)%A051989(2*n+5))`
-/

namespace A123714.P7253363548492355797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (Int.tmod (A069770 n) (A051989 (2 * n + 5))).toNat

end

end A123714.P7253363548492355797

/-! ## A123714.P12624393568646297229

`A123713(A123713(n))+A000122(A139923(n+1))`
-/

namespace A123714.P12624393568646297229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123713 (A123713 n).toNat + A000122 (A139923 (n + 1)).toNat

end

end A123714.P12624393568646297229

/-!
# A123715: Signature permutation of a Catalan automorphism: row 79361 of table A122203.

The programs for A123715, there is no canonical definition to state claims against.
-/

/-! ## A123715.P13437541877400050428

`A123493(n)+A014083(A325012(n+1))²`
-/

namespace A123715.P13437541877400050428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123493 n + A014083 (A325012 (n + 1)).toNat ^ 2

end

end A123715.P13437541877400050428

/-! ## A123715.P8303254945583851077

`A123493(n)+A058348(2*(n+2))*A355946(n+1)`
-/

namespace A123715.P8303254945583851077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123493 n + A058348 (2 * (n + 2)) * A355946 (n + 1)

end

end A123715.P8303254945583851077

/-! ## A123715.P9920553160987675571

`or(A123493(n), A322515(A212855(n+1)))`
-/

namespace A123715.P9920553160987675571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A123493 n) (A322515 (A212855 (n + 1)).toNat)

end

end A123715.P9920553160987675571

/-!
# A123716: Signature permutation of a Catalan automorphism: row 79361 of table A122204.

The programs for A123716, there is no canonical definition to state claims against.
-/

/-! ## A123716.P13567451108072316816

`A355776(A010894(2*(n+2)))+A123494(n)`
-/

namespace A123716.P13567451108072316816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355776 (A010894 (2 * (n + 2) + 21)).toNat + A123494 n

end

end A123716.P13567451108072316816

/-!
# A123717: Signature permutation of a Catalan automorphism: row 253 of table A122203.

The programs for A123717, there is no canonical definition to state claims against.
-/

/-! ## A123717.P17948488971346064963

`A057509(A089854(n))`
-/

namespace A123717.P17948488971346064963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A089854 n).toNat

end

end A123717.P17948488971346064963

/-! ## A123717.P1254892538875675330

`A057509(A089864(n)+n-A089850(n))`
-/

namespace A123717.P1254892538875675330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A089864 n + ((n : ℤ) - A089850 n)).toNat

end

end A123717.P1254892538875675330

/-! ## A123717.P15078470372041518377

`A057509(n-(A089850(n)-A089864(n)))`
-/

namespace A123717.P15078470372041518377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 ((n : ℤ) - (A089850 n - A089864 n)).toNat

end

end A123717.P15078470372041518377

/-! ## A123717.P15520362723824647348

`A057501(A074680(A069770(A072796(A069770(n)))))`
-/

namespace A123717.P15520362723824647348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A074680 (A069770 (A072796 (A069770 n).toNat).toNat).toNat).toNat

end

end A123717.P15520362723824647348

/-! ## A123717.P18250024334501760305

`A057501(A089863(n))`
-/

namespace A123717.P18250024334501760305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A089863 n).toNat

end

end A123717.P18250024334501760305

/-! ## A123717.P17839681504683960837

`A057501(A072796(A089862(n)))`
-/

namespace A123717.P17839681504683960837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A072796 (A089862 n).toNat).toNat

end

end A123717.P17839681504683960837

/-! ## A123717.P12217174994504835325

`A057509(A123718(A057509(n)))`
-/

namespace A123717.P12217174994504835325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A123718 (A057509 n).toNat).toNat

end

end A123717.P12217174994504835325

/-! ## A123717.P14502719794278225686

`A057508(A123718(A057508(n)))`
-/

namespace A123717.P14502719794278225686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A123718 (A057508 n).toNat).toNat

end

end A123717.P14502719794278225686

/-! ## A123717.P6621557305197042909

`A057161(A057163(A123718(A057161(A057163(n)))))`
-/

namespace A123717.P6621557305197042909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (A057163 (A123718 (A057161 (A057163 n).toNat).toNat).toNat).toNat

end

end A123717.P6621557305197042909

/-!
# A123718: Signature permutation of a Catalan automorphism: row 253 of table A122204.

The programs for A123718, there is no canonical definition to state claims against.
-/

/-! ## A123718.P16170206513195752238

`A089854(A057510(n))`
-/

namespace A123718.P16170206513195752238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A057510 n).toNat

end

end A123718.P16170206513195752238

/-! ## A123718.P11698822893968424359

`A057161(A057163(A123717(A057161(A057163(n)))))`
-/

namespace A123718.P11698822893968424359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (A057163 (A123717 (A057161 (A057163 n).toNat).toNat).toNat).toNat

end

end A123718.P11698822893968424359

/-! ## A123718.P1292943148713572883

`A057510(A123717(A057510(A057510(A057509(n)))))`
-/

namespace A123718.P1292943148713572883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057510 (A123717 (A057510 (A057510 (A057509 n).toNat).toNat).toNat).toNat

end

end A123718.P1292943148713572883

/-! ## A123718.P7037925081267650629

`A057510(A123717(A057510(A123503(A123503(n)))))`
-/

namespace A123718.P7037925081267650629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057510 (A123717 (A057510 (A123503 (A123503 n).toNat).toNat).toNat).toNat

end

end A123718.P7037925081267650629

/-! ## A123718.P2514564200413559635

`A089859(A057502(n))`
-/

namespace A123718.P2514564200413559635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089859 (A057502 n).toNat

end

end A123718.P2514564200413559635

/-! ## A123718.P3226092785648962496

`A151934(n)!*A154453(A057510(n))`
-/

namespace A123718.P3226092785648962496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151934 n).toNat : ℤ) * A154453 (A057510 n).toNat

end

end A123718.P3226092785648962496

/-! ## A123718.P7985678270326483470

`A154453(A057510(n))+A000038(A331912(n+1))`
-/

namespace A123718.P7985678270326483470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154453 (A057510 n).toNat + A000038 (A331912 (n + 1)).toNat

end

end A123718.P7985678270326483470

/-! ## A123718.P17835626473464432393

`A047789(A086568(n+1))*A154453(A057510(n))`
-/

namespace A123718.P17835626473464432393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047789 (A086568 (n + 1)).toNat * A154453 (A057510 n).toNat

end

end A123718.P17835626473464432393

/-! ## A123718.P6383116908266625365

`A154453(A057510(n))^A243748(A061142(n+1))`
-/

namespace A123718.P6383116908266625365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154453 (A057510 n).toNat : ℚ) ^ (A243748 (A061142 (n + 1)).toNat : ℤ)

end

end A123718.P6383116908266625365

/-!
# A123719: An involution of nonnegative integers: signature permutation of Catalan automorphism which is obtained with recursion schema RIBS from automorphism *A085161.

The programs for A123719, there is no canonical definition to state claims against.
-/

/-! ## A123719.P7903403851153780375

`A085175(A057508(n))`
-/

namespace A123719.P7903403851153780375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085175 (A057508 n).toNat

end

end A123719.P7903403851153780375

/-! ## A123719.P12163519020461562192

`A085164(A085159(n))`
-/

namespace A123719.P12163519020461562192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085164 (A085159 n).toNat

end

end A123719.P12163519020461562192

/-! ## A123719.P14422224521161943785

`A085160(A085163(n))`
-/

namespace A123719.P14422224521161943785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085160 (A085163 n).toNat

end

end A123719.P14422224521161943785

/-!
# A123720: a(n) = 2^n + 2^(n-1) - n.

The programs for A123720, the canonical program `A123720.P8357156954574919017` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123720 has offset 1).

The definition of A123720 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)+2^n-(n+1)` (program `A123720.P8357156954574919017`, by `A123720.P8357156954574919017.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123720.P8357156954574919017

`2^(n+1)+2^n-(n+1)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123720

/-- `2^(n+1)+2^n-(n+1)` -/
def P8357156954574919017.Spec : Prop :=
  ∀ n, P8357156954574919017.a n = A123720 (n + 1)

theorem P8357156954574919017.correct : P8357156954574919017.Spec := by
  intro n
  simp only [A123720, Nat.add_sub_cancel]

end A123720

/-! ## A123720.P2401825188109531097

`xor(n, 3*2^n-1)`
-/

namespace A123720.P2401825188109531097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((3 * 2 ^ n : ℤ) - 1)

end

end A123720.P2401825188109531097

namespace A123720

/-- `xor(n, 3*2^n-1)` -/
def P2401825188109531097.Spec : Prop :=
  ∀ n, P2401825188109531097.a n = A123720 (n + 1)

end A123720

/-! ## A123720.P9457997059951902334

`∑[ogf((2-4x+3x^2)/(1-3x+2x^2))]`
-/

namespace A123720.P9457997059951902334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, 3] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123720.P9457997059951902334

namespace A123720

/-- `∑[ogf((2-4x+3x^2)/(1-3x+2x^2))]` -/
def P9457997059951902334.Spec : Prop :=
  ∀ n, P9457997059951902334.a n = A123720 (n + 1)

end A123720

/-! ## A123720.P3366492706314235386

`ogf((2-4x+3x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A123720.P3366492706314235386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, 3] [1, -4, 5, -2] n

end

end A123720.P3366492706314235386

namespace A123720

/-- `ogf((2-4x+3x^2)/(1-4x+5x^2-2x^3))` -/
def P3366492706314235386.Spec : Prop :=
  ∀ n, P3366492706314235386.a n = A123720 (n + 1)

end A123720

/-! ## A123720.P8714176617756987769

`abs(lcm(3, 2^n)-(n+1))`
-/

namespace A123720.P8714176617756987769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm 3 (2 ^ n) : ℤ) - (n + 1 : ℤ)|

end

end A123720.P8714176617756987769

namespace A123720

/-- `abs(lcm(3, 2^n)-(n+1))` -/
def P8714176617756987769.Spec : Prop :=
  ∀ n, P8714176617756987769.a n = A123720 (n + 1)

end A123720

/-! ## A123720.P4813855744278602078

`∑[2*a(n-1)+1]` with `a(0)=2, a(1)=2`
-/

namespace A123720.P4813855744278602078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123720.P4813855744278602078

namespace A123720

/-- `∑[2*a(n-1)+1]` -/
def P4813855744278602078.Spec : Prop :=
  ∀ n, (P4813855744278602078.a n : ℤ) = A123720 (n + 1)

end A123720

/-! ## A123720.P10254518027705815475

`∑[or(1, 2*a(n-1))]` with `a(0)=2, a(1)=2`
-/

namespace A123720.P10254518027705815475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  Nat.lor 1 (2 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123720.P10254518027705815475

namespace A123720

/-- `∑[or(1, 2*a(n-1))]` -/
def P10254518027705815475.Spec : Prop :=
  ∀ n, (P10254518027705815475.a n : ℤ) = A123720 (n + 1)

end A123720

/-! ## A123720.P10614557905070821370

`∑[xor(1, 2*a(n-1))]` with `a(0)=2, a(1)=2`
-/

namespace A123720.P10614557905070821370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  Nat.xor 1 (2 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123720.P10614557905070821370

namespace A123720

/-- `∑[xor(1, 2*a(n-1))]` -/
def P10614557905070821370.Spec : Prop :=
  ∀ n, (P10614557905070821370.a n : ℤ) = A123720 (n + 1)

end A123720

/-! ## A123720.P3768175523292183763

`∑[∑[2*a(n-1)]]` with `a(0)=2, a(1)=0, a(2)=3`
-/

namespace A123720.P3768175523292183763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 3] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123720.P3768175523292183763

namespace A123720

/-- `∑[∑[2*a(n-1)]]` -/
def P3768175523292183763.Spec : Prop :=
  ∀ n, (P3768175523292183763.a n : ℤ) = A123720 (n + 1)

end A123720

/-! ## A123720.P8925790550792028141

`abs(2*a(n-1)+n-1)` with `a(0)=2`
-/

namespace A123720.P8925790550792028141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |2 * a (n - 1) + ((n : ℤ) - 1)|

end

end A123720.P8925790550792028141

namespace A123720

/-- `abs(2*a(n-1)+n-1)` -/
def P8925790550792028141.Spec : Prop :=
  ∀ n, P8925790550792028141.a n = A123720 (n + 1)

end A123720

/-! ## A123720.P5812049810308968408

`floor(2*a(n-1)-1+n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A123720.P5812049810308968408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - 1 + (n : ℤ)

end

end A123720.P5812049810308968408

namespace A123720

/-- `floor(2*a(n-1)-1+n)` -/
def P5812049810308968408.Spec : Prop :=
  ∀ n, P5812049810308968408.a n = A123720 (n + 1)

theorem P5812049810308968408.correct : P5812049810308968408.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A123720, Nat.add_sub_cancel, A123720.P5812049810308968408.a, A123720.P8357156954574919017.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A123720, Nat.add_sub_cancel, A123720.P5812049810308968408.a, A123720.P8357156954574919017.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A123720

/-! ## A123720.P15485634476573958551

`floor(2*a(n-1)-(1-n))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A123720.P15485634476573958551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - (1 - (n : ℤ))

end

end A123720.P15485634476573958551

namespace A123720

/-- `floor(2*a(n-1)-(1-n))` -/
def P15485634476573958551.Spec : Prop :=
  ∀ n, P15485634476573958551.a n = A123720 (n + 1)

theorem P15485634476573958551.correct : P15485634476573958551.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A123720, Nat.add_sub_cancel, A123720.P15485634476573958551.a, A123720.P8357156954574919017.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A123720, Nat.add_sub_cancel, A123720.P15485634476573958551.a, A123720.P8357156954574919017.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A123720

/-! ## A123720.P9413228341596951587

`ceil(2*a(n-1)+n-1)` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A123720.P9413228341596951587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) + ((n : ℤ) - 1)

end

end A123720.P9413228341596951587

namespace A123720

/-- `ceil(2*a(n-1)+n-1)` -/
def P9413228341596951587.Spec : Prop :=
  ∀ n, P9413228341596951587.a n = A123720 (n + 1)

theorem P9413228341596951587.correct : P9413228341596951587.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A123720, Nat.add_sub_cancel, A123720.P9413228341596951587.a, A123720.P8357156954574919017.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A123720, Nat.add_sub_cancel, A123720.P9413228341596951587.a, A123720.P8357156954574919017.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A123720

/-! ## A123720.P439312573133965405

`round(2*a(n-1)+n-1)` with `a(0)=2`

`round` is left out, it is the identity on integers.
-/

namespace A123720.P439312573133965405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) + ((n : ℤ) - 1)

end

end A123720.P439312573133965405

namespace A123720

/-- `round(2*a(n-1)+n-1)` -/
def P439312573133965405.Spec : Prop :=
  ∀ n, P439312573133965405.a n = A123720 (n + 1)

theorem P439312573133965405.correct : P439312573133965405.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A123720, Nat.add_sub_cancel, A123720.P439312573133965405.a, A123720.P8357156954574919017.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A123720, Nat.add_sub_cancel, A123720.P439312573133965405.a, A123720.P8357156954574919017.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A123720

/-! ## A123720.P296904818478142444

`2*(a(n-1)+(n-1)/2)` with `a(0)=2`
-/

namespace A123720.P296904818478142444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 * (a (n - 1) + ((n : ℤ) - 1 : ℚ) / 2)

end

end A123720.P296904818478142444

namespace A123720

/-- `2*(a(n-1)+(n-1)/2)` -/
def P296904818478142444.Spec : Prop :=
  ∀ n, P296904818478142444.a n = (A123720 (n + 1) : ℚ)

theorem P296904818478142444.correct : P296904818478142444.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A123720, Nat.add_sub_cancel, A123720.P296904818478142444.a, A123720.P8357156954574919017.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A123720, Nat.add_sub_cancel, A123720.P296904818478142444.a, A123720.P8357156954574919017.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A123720

/-! ## A123720.P14466458672776262233

`∑[a(n-1)+a(n-1)+1]` with `a(0)=2, a(1)=2`
-/

namespace A123720.P14466458672776262233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123720.P14466458672776262233

namespace A123720

/-- `∑[a(n-1)+a(n-1)+1]` -/
def P14466458672776262233.Spec : Prop :=
  ∀ n, (P14466458672776262233.a n : ℤ) = A123720 (n + 1)

end A123720

/-! ## A123720.P2257150880233512178

`2*(n/2-(1/2-a(n-1)))` with `a(0)=2`
-/

namespace A123720.P2257150880233512178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 * ((n : ℚ) / 2 - ((1 : ℚ) / 2 - a (n - 1)))

end

end A123720.P2257150880233512178

namespace A123720

/-- `2*(n/2-(1/2-a(n-1)))` -/
def P2257150880233512178.Spec : Prop :=
  ∀ n, P2257150880233512178.a n = (A123720 (n + 1) : ℚ)

theorem P2257150880233512178.correct : P2257150880233512178.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A123720, Nat.add_sub_cancel, A123720.P2257150880233512178.a, A123720.P8357156954574919017.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A123720, Nat.add_sub_cancel, A123720.P2257150880233512178.a, A123720.P8357156954574919017.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A123720

/-! ## A123720.P3165780650026019696

`floor(a(n-1)-1+a(n-1)+n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A123720.P3165780650026019696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - 1 + (a (n - 1) + (n : ℤ))

end

end A123720.P3165780650026019696

namespace A123720

/-- `floor(a(n-1)-1+a(n-1)+n)` -/
def P3165780650026019696.Spec : Prop :=
  ∀ n, P3165780650026019696.a n = A123720 (n + 1)

theorem P3165780650026019696.correct : P3165780650026019696.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A123720, Nat.add_sub_cancel, A123720.P3165780650026019696.a, A123720.P8357156954574919017.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A123720, Nat.add_sub_cancel, A123720.P3165780650026019696.a, A123720.P8357156954574919017.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A123720

/-! ## A123720.P9884752590666372359

`floor(n-(1-a(n-1)-a(n-1)))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A123720.P9884752590666372359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℤ) - (1 - a (n - 1) - a (n - 1))

end

end A123720.P9884752590666372359

namespace A123720

/-- `floor(n-(1-a(n-1)-a(n-1)))` -/
def P9884752590666372359.Spec : Prop :=
  ∀ n, P9884752590666372359.a n = A123720 (n + 1)

theorem P9884752590666372359.correct : P9884752590666372359.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A123720, Nat.add_sub_cancel, A123720.P9884752590666372359.a, A123720.P8357156954574919017.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A123720, Nat.add_sub_cancel, A123720.P9884752590666372359.a, A123720.P8357156954574919017.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A123720

/-! ## A123720.P153761604050782908

`A179744(n+1)`
-/

namespace A123720.P153761604050782908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179744 (n + 1)

end

end A123720.P153761604050782908

namespace A123720

/-- `A179744(n+1)` -/
def P153761604050782908.Spec : Prop :=
  ∀ n, P153761604050782908.a n = A123720 (n + 1)

end A123720

/-!
# A123721: a(n) = A123249(n) - 2*n.

The programs for A123721, there is no canonical definition to state claims against.
-/

/-! ## A123721.P8858058384549996228

`(A123249(n+1)+2)%(n+2)`
-/

namespace A123721.P8858058384549996228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123249 (n + 1) + 2) (n + 2 : ℤ)

end

end A123721.P8858058384549996228

/-! ## A123721.P3508694413818408146

`A123249(n+1)%A327667(n)`
-/

namespace A123721.P3508694413818408146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123249 (n + 1)) (A327667 n)

end

end A123721.P3508694413818408146

/-! ## A123721.P7095382703584786762

`A123249(n+1)-A163300(n+1)`
-/

namespace A123721.P7095382703584786762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123249 (n + 1) - A163300 (n + 1)

end

end A123721.P7095382703584786762

/-! ## A123721.P15686110315994523035

`dr(A123249(n+1)-Δ[A027689(n)])`
-/

namespace A123721.P15686110315994523035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A123249 (n + 1) - (f1 (n + 1) - f1 n))

end

end A123721.P15686110315994523035

/-! ## A123721.P8854754881293489408

`abs(A005843(n+1)-A123249(n+1))`
-/

namespace A123721.P8854754881293489408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005843 (n + 1) - A123249 (n + 1)|

end

end A123721.P8854754881293489408

/-! ## A123721.P11379289277806858543

`A082642(A123249(n+1)-A005408(n))`
-/

namespace A123721.P11379289277806858543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082642 (A123249 (n + 1) - A005408 n).toNat

end

end A123721.P11379289277806858543

/-! ## A123721.P7501509898489115048

`A123249(n+1)-A052928(A062545(n))`
-/

namespace A123721.P7501509898489115048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123249 (n + 1) - A052928 (A062545 n).toNat

end

end A123721.P7501509898489115048

/-! ## A123721.P5002919236140649151

`A123249(n+1)-A052928(A103517(n))`
-/

namespace A123721.P5002919236140649151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123249 (n + 1) - A052928 (A103517 n).toNat

end

end A123721.P5002919236140649151

/-! ## A123721.P7999289459781024312

`A008616(A000466(n)%A123249(n+1))`
-/

namespace A123721.P7999289459781024312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.tmod (A000466 n) (A123249 (n + 1))).toNat

end

end A123721.P7999289459781024312

/-!
# A123722: Values of n for which A000224(n)=Ceiling[(n+1)/3]; A000224(n) is the number of squares mod n.

The programs for A123722, there is no canonical definition to state claims against.
-/

/-! ## A123722.P852930111815907013

`eq[A004396(n), A095972(n+1)]+1`
-/

namespace A123722.P852930111815907013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A123722.P852930111815907013

/-! ## A123722.P18384007744969228480

`eq[∑[A022003(n)], A105612(n+1)]+1`
-/

namespace A123722.P18384007744969228480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A123722.P18384007744969228480

/-! ## A123722.P16764020748119232126

`eq[A002264(n+1), A105612(n+1)]+1`
-/

namespace A123722.P16764020748119232126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A123722.P16764020748119232126

/-! ## A123722.P13311884526722933334

`eq[A325169(2*n+1)², A326062(n+1)]`
-/

namespace A123722.P13311884526722933334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325169 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123722.P13311884526722933334

/-! ## A123722.P8823287476209791649

`eq[A002471(n+1), A321892(A320197(n))]`
-/

namespace A123722.P8823287476209791649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321892 (A320197 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123722.P8823287476209791649

/-!
# A123723: Values of n for which A000224(n)=Ceiling[(n+1)/4], where A000224(n) is the number of squares mod n.

The programs for A123723, there is no canonical definition to state claims against.
-/

/-! ## A123723.P4104334835558721096

`eq[floor((n+1)/4), A105612(n+1)]+1`
-/

namespace A123723.P4104334835558721096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 4⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A123723.P4104334835558721096

/-!
# A123724: Partial sums of (-1)^floor(n*2^(1/3)).

The programs for A123724, the canonical program `A123724.P532567778762810147` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123724 has offset 1).

The definition of A123724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123724.P4285156052852106844

`∑[(-1)^∑[A081117(n)]]`
-/

namespace A123724.P4285156052852106844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081117 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123724.P4285156052852106844

namespace A123724

/-- `∑[(-1)^∑[A081117(n)]]` -/
def P4285156052852106844.Spec : Prop :=
  ∀ n, P4285156052852106844.a n = (A123724 (n + 1) : ℚ)

end A123724

/-! ## A123724.P4309152232267783721

`∑[(1-4/2)^A038129(n+1)]`
-/

namespace A123724.P4309152232267783721
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) ^ (A038129 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123724.P4309152232267783721

namespace A123724

/-- `∑[(1-4/2)^A038129(n+1)]` -/
def P4309152232267783721.Spec : Prop :=
  ∀ n, P4309152232267783721.a n = (A123724 (n + 1) : ℚ)

end A123724

/-! ## A123724.P532567778762810147

`n+1-A005843(∑[A038129(n+1)%2])`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A123724

/-- `n+1-A005843(∑[A038129(n+1)%2])` -/
def P532567778762810147.Spec : Prop :=
  ∀ n, P532567778762810147.a n = A123724 (n + 1)

theorem P532567778762810147.correct : P532567778762810147.Spec := by
  intro n
  simp only [A123724, Nat.add_sub_cancel]

end A123724

/-! ## A123724.P14429392739147212560

`∑[A033999(∑[A081117(n)])]`
-/

namespace A123724.P14429392739147212560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123724.P14429392739147212560

namespace A123724

/-- `∑[A033999(∑[A081117(n)])]` -/
def P14429392739147212560.Spec : Prop :=
  ∀ n, P14429392739147212560.a n = A123724 (n + 1)

end A123724

/-! ## A123724.P12418577684546432649

`∑[-A062157(A038129(n+1))]`
-/

namespace A123724.P12418577684546432649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A062157 (A038129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123724.P12418577684546432649

namespace A123724

/-- `∑[-A062157(A038129(n+1))]` -/
def P12418577684546432649.Spec : Prop :=
  ∀ n, P12418577684546432649.a n = A123724 (n + 1)

end A123724

/-! ## A123724.P6129061834131209781

`∑[A062157(A038129(n+1)+1)]`
-/

namespace A123724.P6129061834131209781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A038129 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123724.P6129061834131209781

namespace A123724

/-- `∑[A062157(A038129(n+1)+1)]` -/
def P6129061834131209781.Spec : Prop :=
  ∀ n, P6129061834131209781.a n = A123724 (n + 1)

end A123724

/-! ## A123724.P15709777095467576531

`∑[A056594(2*A038129(n+1))]`
-/

namespace A123724.P15709777095467576531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * A038129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123724.P15709777095467576531

namespace A123724

/-- `∑[A056594(2*A038129(n+1))]` -/
def P15709777095467576531.Spec : Prop :=
  ∀ n, P15709777095467576531.a n = A123724 (n + 1)

end A123724

/-! ## A123724.P14022785183622836928

`∑[A056594(A038129(n+1)+A038129(n+1))]`
-/

namespace A123724.P14022785183622836928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A038129 (n + 1) + A038129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123724.P14022785183622836928

namespace A123724

/-- `∑[A056594(A038129(n+1)+A038129(n+1))]` -/
def P14022785183622836928.Spec : Prop :=
  ∀ n, P14022785183622836928.a n = A123724 (n + 1)

end A123724

/-!
# A123725: Numerators of fractional partial quotients appearing in a continued fraction for the power series Sum_{n>=0} x^(2^n - 1)/(n+1)^s.

The programs for A123725, the canonical program `A123725.P18364777639140857701` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123725 has offset 0).

The definition of A123725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123725.P18364777639140857701

`A094267(A130824(n)+A073089(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A123725

/-- `A094267(A130824(n)+A073089(n+1))` -/
def P18364777639140857701.Spec : Prop :=
  ∀ n, P18364777639140857701.a n = A123725 n

theorem P18364777639140857701.correct : P18364777639140857701.Spec := by
  intro n
  simp only [A123725]

end A123725

/-! ## A123725.P8375084070151304612

`A164677(A035877(n))`
-/

namespace A123725.P8375084070151304612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164677 (A035877 n).toNat

end

end A123725.P8375084070151304612

namespace A123725

/-- `A164677(A035877(n))` -/
def P8375084070151304612.Spec : Prop :=
  ∀ n, P8375084070151304612.a n = A123725 n

end A123725

/-! ## A123725.P8798894801819532559

`A164677(A065190(Δ[A195143(n)]))`
-/

namespace A123725.P8798894801819532559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164677 (A065190 (f1 (n + 1) - f1 n).toNat).toNat

end

end A123725.P8798894801819532559

namespace A123725

/-- `A164677(A065190(Δ[A195143(n)]))` -/
def P8798894801819532559.Spec : Prop :=
  ∀ n, P8798894801819532559.a n = A123725 n

end A123725

/-! ## A123725.P14734151187492715824

`A033999(n)*A164677(A008458(n))`
-/

namespace A123725.P14734151187492715824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A164677 (A008458 n).toNat

end

end A123725.P14734151187492715824

namespace A123725

/-- `A033999(n)*A164677(A008458(n))` -/
def P14734151187492715824.Spec : Prop :=
  ∀ n, P14734151187492715824.a n = A123725 n

end A123725

/-! ## A123725.P11610750546113755758

`A164677(2*n+1)*A164677(A008458(n))`
-/

namespace A123725.P11610750546113755758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164677 (2 * n + 1) * A164677 (A008458 n).toNat

end

end A123725.P11610750546113755758

namespace A123725

/-- `A164677(2*n+1)*A164677(A008458(n))` -/
def P11610750546113755758.Spec : Prop :=
  ∀ n, P11610750546113755758.a n = A123725 n

end A123725

/-! ## A123725.P8226013256723583128

`A164677(xor(A017185(2*n), A060000(4*n+3)))`
-/

namespace A123725.P8226013256723583128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164677 (Int.xor (A017185 (2 * n)) (A060000 (4 * n + 3))).toNat

end

end A123725.P8226013256723583128

namespace A123725

/-- `A164677(xor(A017185(2*n), A060000(4*n+3)))` -/
def P8226013256723583128.Spec : Prop :=
  ∀ n, P8226013256723583128.a n = A123725 n

end A123725

/-! ## A123725.P6760641190846121146

`A164677(A118239(n+1))`
-/

namespace A123725.P6760641190846121146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164677 (A118239 (n + 1)).toNat

end

end A123725.P6760641190846121146

namespace A123725

/-- `A164677(A118239(n+1))` -/
def P6760641190846121146.Spec : Prop :=
  ∀ n, P6760641190846121146.a n = A123725 n

end A123725

/-!
# A123726: Denominators of fractional partial quotients appearing in a continued fraction for the power series Sum_{n>=0} x^(2^n - 1)/(n+1)^s.

The programs for A123726, the canonical program `A123726.P5691545094621419725` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123726 has offset 0).

The definition of A123726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123726.P5691545094621419725

`∏{e}[xor(n, -n), #²]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123726

/-- `∏{e}[xor(n, -n), #²]` -/
def P5691545094621419725.Spec : Prop :=
  ∀ n, (P5691545094621419725.a n : ℤ) = A123726 n

theorem P5691545094621419725.correct : P5691545094621419725.Spec := by
  intro n
  simp only [A123726]

end A123726

/-! ## A123726.P5731565117620674393

`∏{e}[xor(n, n-1)+1, #²]`
-/

namespace A123726.P5731565117620674393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2

end

end A123726.P5731565117620674393

namespace A123726

/-- `∏{e}[xor(n, n-1)+1, #²]` -/
def P5731565117620674393.Spec : Prop :=
  ∀ n, (P5731565117620674393.a n : ℤ) = A123726 n

end A123726

/-! ## A123726.P2360781193678065989

`val(abs(1-2*n)+1, 2)²`
-/

namespace A123726.P2360781193678065989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (2 * n : ℤ)| + 1).toNat 2 ^ 2

end

end A123726.P2360781193678065989

namespace A123726

/-- `val(abs(1-2*n)+1, 2)²` -/
def P2360781193678065989.Spec : Prop :=
  ∀ n, (P2360781193678065989.a n : ℤ) = A123726 n

end A123726

/-! ## A123726.P10172090354534219740

`(a(n%2)+val(n, 2))²` with `a(0)=1, a(1)=1`
-/

namespace A123726.P10172090354534219740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n % 2) + SequenceMachineLib.valuation n 2) ^ 2

end

end A123726.P10172090354534219740

namespace A123726

/-- `(a(n%2)+val(n, 2))²` -/
def P10172090354534219740.Spec : Prop :=
  ∀ n, (P10172090354534219740.a n : ℤ) = A123726 n

end A123726

/-! ## A123726.P4287918924748596870

`∏{e}[and(2*n, -(2*n)), #²]`
-/

namespace A123726.P4287918924748596870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(2 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2

end

end A123726.P4287918924748596870

namespace A123726

/-- `∏{e}[and(2*n, -(2*n)), #²]` -/
def P4287918924748596870.Spec : Prop :=
  ∀ n, (P4287918924748596870.a n : ℤ) = A123726 n

end A123726

/-! ## A123726.P4784676641013360430

`∏{e}[or(2*n, -(2*n)), #²]`
-/

namespace A123726.P4784676641013360430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (-(2 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2

end

end A123726.P4784676641013360430

namespace A123726

/-- `∏{e}[or(2*n, -(2*n)), #²]` -/
def P4784676641013360430.Spec : Prop :=
  ∀ n, (P4784676641013360430.a n : ℤ) = A123726 n

end A123726

/-! ## A123726.P1862759366103763302

`(val(2*n, 2)^a(n-1))²` with `a(0)=1`
-/

namespace A123726.P1862759366103763302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.valuation (2 * n) 2 ^ a (n - 1)) ^ 2

end

end A123726.P1862759366103763302

namespace A123726

/-- `(val(2*n, 2)^a(n-1))²` -/
def P1862759366103763302.Spec : Prop :=
  ∀ n, (P1862759366103763302.a n : ℤ) = A123726 n

end A123726

/-! ## A123726.P16496417923393536850

`∏{e}[and(1-2*n, 2*n), #]²`
-/

namespace A123726.P16496417923393536850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (2 * n : ℤ)) (2 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ 2

end

end A123726.P16496417923393536850

namespace A123726

/-- `∏{e}[and(1-2*n, 2*n), #]²` -/
def P16496417923393536850.Spec : Prop :=
  ∀ n, (P16496417923393536850.a n : ℤ) = A123726 n

end A123726

/-! ## A123726.P4557648905455915461

`val(2*n, 2)^(a(n-1)+1)` with `a(0)=1`
-/

namespace A123726.P4557648905455915461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.valuation (2 * n) 2 ^ (a (n - 1) + 1)

end

end A123726.P4557648905455915461

namespace A123726

/-- `val(2*n, 2)^(a(n-1)+1)` -/
def P4557648905455915461.Spec : Prop :=
  ∀ n, (P4557648905455915461.a n : ℤ) = A123726 n

end A123726

/-! ## A123726.P18274589366593539894

`val(2*n, 2)^(2*a(n-1))` with `a(0)=1`
-/

namespace A123726.P18274589366593539894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.valuation (2 * n) 2 ^ (2 * a (n - 1))

end

end A123726.P18274589366593539894

namespace A123726

/-- `val(2*n, 2)^(2*a(n-1))` -/
def P18274589366593539894.Spec : Prop :=
  ∀ n, (P18274589366593539894.a n : ℤ) = A123726 n

end A123726

/-! ## A123726.P5251234757867441980

`(val(A008486(n), 2)+1)²`
-/

namespace A123726.P5251234757867441980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A008486 n).toNat 2 + 1) ^ 2

end

end A123726.P5251234757867441980

namespace A123726

/-- `(val(A008486(n), 2)+1)²` -/
def P5251234757867441980.Spec : Prop :=
  ∀ n, (P5251234757867441980.a n : ℤ) = A123726 n

end A123726

/-! ## A123726.P12477269630504691300

`(val(A008706(n), 2)+1)²`
-/

namespace A123726.P12477269630504691300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A008706 n).toNat 2 + 1) ^ 2

end

end A123726.P12477269630504691300

namespace A123726

/-- `(val(A008706(n), 2)+1)²` -/
def P12477269630504691300.Spec : Prop :=
  ∀ n, (P12477269630504691300.a n : ℤ) = A123726 n

end A123726

/-! ## A123726.P2106455793660441682

`(val(A028310(n), 2)+1)²`
-/

namespace A123726.P2106455793660441682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A028310 n).toNat 2 + 1) ^ 2

end

end A123726.P2106455793660441682

namespace A123726

/-- `(val(A028310(n), 2)+1)²` -/
def P2106455793660441682.Spec : Prop :=
  ∀ n, (P2106455793660441682.a n : ℤ) = A123726 n

end A123726

/-! ## A123726.P4305096066842999224

`(val(A288534(n), 2)+1)²`
-/

namespace A123726.P4305096066842999224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A288534 n).toNat 2 + 1) ^ 2

end

end A123726.P4305096066842999224

namespace A123726

/-- `(val(A288534(n), 2)+1)²` -/
def P4305096066842999224.Spec : Prop :=
  ∀ n, (P4305096066842999224.a n : ℤ) = A123726 n

end A123726

/-! ## A123726.P18331665109947636771

`(val(A302436(n), 2)+1)²`
-/

namespace A123726.P18331665109947636771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A302436 n).toNat 2 + 1) ^ 2

end

end A123726.P18331665109947636771

namespace A123726

/-- `(val(A302436(n), 2)+1)²` -/
def P18331665109947636771.Spec : Prop :=
  ∀ n, (P18331665109947636771.a n : ℤ) = A123726 n

end A123726

/-! ## A123726.P6897238830684849888

`(1-val(A001386(n), 2))²`
-/

namespace A123726.P6897238830684849888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (SequenceMachineLib.valuation (A001386 n).toNat 2 : ℤ)) ^ 2

end

end A123726.P6897238830684849888

namespace A123726

/-- `(1-val(A001386(n), 2))²` -/
def P6897238830684849888.Spec : Prop :=
  ∀ n, P6897238830684849888.a n = A123726 n

end A123726

/-! ## A123726.P11158736767591216883

`(1-val(A008574(n), 2))²`
-/

namespace A123726.P11158736767591216883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (SequenceMachineLib.valuation (A008574 n).toNat 2 : ℤ)) ^ 2

end

end A123726.P11158736767591216883

namespace A123726

/-- `(1-val(A008574(n), 2))²` -/
def P11158736767591216883.Spec : Prop :=
  ∀ n, P11158736767591216883.a n = A123726 n

end A123726

/-! ## A123726.P92233724450431178

`(1-val(A035709(n), 2))²`
-/

namespace A123726.P92233724450431178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (SequenceMachineLib.valuation (A035709 n).toNat 2 : ℤ)) ^ 2

end

end A123726.P92233724450431178

namespace A123726

/-- `(1-val(A035709(n), 2))²` -/
def P92233724450431178.Spec : Prop :=
  ∀ n, P92233724450431178.a n = A123726 n

end A123726

/-! ## A123726.P8820338696385045495

`(1-val(A035713(n), 2))²`
-/

namespace A123726.P8820338696385045495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (SequenceMachineLib.valuation (A035713 n).toNat 2 : ℤ)) ^ 2

end

end A123726.P8820338696385045495

namespace A123726

/-- `(1-val(A035713(n), 2))²` -/
def P8820338696385045495.Spec : Prop :=
  ∀ n, P8820338696385045495.a n = A123726 n

end A123726

/-!
# A123727: An example of a stereogram: a flat picture that appears three-dimensional when viewed in the correct way.

The programs for A123727, there is no canonical definition to state claims against.
-/

/-! ## A123727.P14751371237159313794

`A171396(4^A053615(n))`
-/

namespace A123727.P14751371237159313794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171396 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A053615 n : ℤ))).toNat

end

end A123727.P14751371237159313794

/-! ## A123727.P2703285534825748558

`A171396(4^A228110(n))`
-/

namespace A123727.P2703285534825748558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171396 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A228110 n : ℤ))).toNat

end

end A123727.P2703285534825748558

/-! ## A123727.P12963898189670666009

`A332661(9^A053615(n))`
-/

namespace A123727.P12963898189670666009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332661 (SequenceMachineLib.roundAway ((9 : ℚ) ^ (A053615 n : ℤ))).toNat

end

end A123727.P12963898189670666009

/-! ## A123727.P15851426835136344360

`A332661(9^A228110(n))`
-/

namespace A123727.P15851426835136344360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332661 (SequenceMachineLib.roundAway ((9 : ℚ) ^ (A228110 n : ℤ))).toNat

end

end A123727.P15851426835136344360

/-! ## A123727.P13550665372744683002

`A109242(A053615(n)^A144112(n+1))`
-/

namespace A123727.P13550665372744683002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109242 (SequenceMachineLib.roundAway ((A053615 n : ℚ) ^ (A144112 (n + 1) : ℤ))).toNat

end

end A123727.P13550665372744683002

/-!
# A123731: The Kruskal-Macaulay function M_5(n).

The programs for A123731, there is no canonical definition to state claims against.
-/

/-! ## A123731.P2416524388888559774

`∑[char[Δ[A004878(n+1)]+n]]`
-/

namespace A123731.P2416524388888559774
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123731.P2416524388888559774

/-! ## A123731.P8506162737407374548

`∑[char[Δ[A004889(n+1)]+n]]`
-/

namespace A123731.P8506162737407374548
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123731.P8506162737407374548

/-! ## A123731.P11148317552366588092

`∑[char[Δ[A004911(n+1)]+n]]`
-/

namespace A123731.P11148317552366588092
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123731.P11148317552366588092

/-! ## A123731.P15385234559908620290

`∑[char[(n+1)*Δ[A004900(n+1)]]]`
-/

namespace A123731.P15385234559908620290
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f3 (n + 1) - f3 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123731.P15385234559908620290

/-! ## A123731.P1355265290722406094

`∑[A014707(A014313(n+1))]`
-/

namespace A123731.P1355265290722406094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A014313 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123731.P1355265290722406094

/-! ## A123731.P13859706328132240878

`∑[A014707(eq[5, A000120(n)])]`
-/

namespace A123731.P13859706328132240878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123731.P13859706328132240878

/-! ## A123731.P2471266837850172999

`∑[A102460(Δ[A088407(n+1)])]`
-/

namespace A123731.P2471266837850172999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088407 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123731.P2471266837850172999

/-! ## A123731.P6245626695124474660

`∑[A280910(Δ[A069540(n+1)])]`
-/

namespace A123731.P6245626695124474660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069540 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280910 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123731.P6245626695124474660

/-! ## A123731.P3267580545465969849

`∑[A089049(eq[1, A089050(2*(n+1))])]`
-/

namespace A123731.P3267580545465969849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089050 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089049 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123731.P3267580545465969849

/-! ## A123731.P14998415169727506642

`∑[eq[1, A008683(A000120(n)+1)]%2]`
-/

namespace A123731.P14998415169727506642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000120 n + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123731.P14998415169727506642

/-!
# A123736: Triangle T(n,k) = Sum_{j=0..k/2} binomial(n-j-1,k-2*j), read by rows.

The programs for A123736, there is no canonical definition to state claims against.
-/

/-! ## A123736.P5663190108112145003

`A072233(A007607(n+1)%A157615(n+1))`
-/

namespace A123736.P5663190108112145003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (Int.tmod (A007607 (n + 1)) (A157615 (n + 1))).toNat

end

end A123736.P5663190108112145003

/-! ## A123736.P5169283514040706980

`A072233(lt[A363944(2*n+5), A266964(n)])`
-/

namespace A123736.P5169283514040706980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363944 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A123736.P5169283514040706980

/-! ## A123736.P5849136634367714291

`A072233(A213083(n+1)+A187829(n+1))`
-/

namespace A123736.P5849136634367714291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A213083 (n + 1) + A187829 (n + 1)).toNat

end

end A123736.P5849136634367714291

/-! ## A123736.P14707765361508694914

`A072233(A187829(n+1)+A111393(n+1)²)`
-/

namespace A123736.P14707765361508694914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A187829 (n + 1) + A111393 (n + 1) ^ 2).toNat

end

end A123736.P14707765361508694914

/-! ## A123736.P6263235808084924143

`A027052(A187829(n+1)+1-A348242(n+1))`
-/

namespace A123736.P6263235808084924143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (A187829 (n + 1) + (1 - A348242 (n + 1))).toNat

end

end A123736.P6263235808084924143

/-!
# A123737: Partial sums of (-1)^floor(n*sqrt(2)).

The programs for A123737, the canonical program `A123737.P586469183867328966` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123737 has offset 1).

The definition of A123737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123737.P6117941696836221604

`∑[(-1)^comp[floor(n*sqrt(2))]]`
-/

namespace A123737.P6117941696836221604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123737.P6117941696836221604

namespace A123737

/-- `∑[(-1)^comp[floor(n*sqrt(2))]]` -/
def P6117941696836221604.Spec : Prop :=
  ∀ n, P6117941696836221604.a n = A123737 (n + 1)

end A123737

/-! ## A123737.P14190752042677450885

`-A083037(n+1)`
-/

namespace A123737.P14190752042677450885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A083037 (n + 1)

end

end A123737.P14190752042677450885

namespace A123737

/-- `-A083037(n+1)` -/
def P14190752042677450885.Spec : Prop :=
  ∀ n, P14190752042677450885.a n = A123737 (n + 1)

theorem P14190752042677450885.correct : P14190752042677450885.Spec := by
  intro n
  simp only [A123737, Nat.add_sub_cancel, A123737.P14190752042677450885.a, A123737.P586469183867328966.a, A083036, A083036.P2474658439335323916.f1, A083036.P2474658439335323916.a, A083037, A083037.P6801730865427598023.a, A083035, A083035.P5765933853908214496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A123737

/-! ## A123737.P586469183867328966

`n+1-2*A083036(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A123737

/-- `n+1-2*A083036(n+1)` -/
def P586469183867328966.Spec : Prop :=
  ∀ n, P586469183867328966.a n = A123737 (n + 1)

theorem P586469183867328966.correct : P586469183867328966.Spec := by
  intro n
  simp only [A123737, Nat.add_sub_cancel]

end A123737

/-! ## A123737.P4200565306513721602

`n+1-A005843(A083036(n+1))`
-/

namespace A123737.P4200565306513721602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005843 (A083036 (n + 1)).toNat

end

end A123737.P4200565306513721602

namespace A123737

/-- `n+1-A005843(A083036(n+1))` -/
def P4200565306513721602.Spec : Prop :=
  ∀ n, P4200565306513721602.a n = A123737 (n + 1)

end A123737

/-! ## A123737.P7068586821412782007

`n*A000007(n)-A083037(n+1)`
-/

namespace A123737.P7068586821412782007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 n - A083037 (n + 1)

end

end A123737.P7068586821412782007

namespace A123737

/-- `n*A000007(n)-A083037(n+1)` -/
def P7068586821412782007.Spec : Prop :=
  ∀ n, P7068586821412782007.a n = A123737 (n + 1)

end A123737

/-! ## A123737.P14686782086786581764

`∑[n]-(A083037(n+1)+A000217(n))`
-/

namespace A123737.P14686782086786581764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A083037 (n + 1) + A000217 n)

end

end A123737.P14686782086786581764

namespace A123737

/-- `∑[n]-(A083037(n+1)+A000217(n))` -/
def P14686782086786581764.Spec : Prop :=
  ∀ n, P14686782086786581764.a n = A123737 (n + 1)

end A123737

/-! ## A123737.P10761054611293913265

`(∑[n]-A000124(n))*A083037(n+1)`
-/

namespace A123737.P10761054611293913265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000124 n) * A083037 (n + 1)

end

end A123737.P10761054611293913265

namespace A123737

/-- `(∑[n]-A000124(n))*A083037(n+1)` -/
def P10761054611293913265.Spec : Prop :=
  ∀ n, P10761054611293913265.a n = A123737 (n + 1)

end A123737

/-! ## A123737.P8472641235955635713

`C(n, ∑[A007318(n)])-A083037(n+1)`
-/

namespace A123737.P8472641235955635713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℤ) - A083037 (n + 1)

end

end A123737.P8472641235955635713

namespace A123737

/-- `C(n, ∑[A007318(n)])-A083037(n+1)` -/
def P8472641235955635713.Spec : Prop :=
  ∀ n, P8472641235955635713.a n = A123737 (n + 1)

end A123737

/-! ## A123737.P16792408900853603532

`A000035(n-A000035(n))-A083037(n+1)`
-/

namespace A123737.P16792408900853603532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) - A000035 n).toNat - A083037 (n + 1)

end

end A123737.P16792408900853603532

namespace A123737

/-- `A000035(n-A000035(n))-A083037(n+1)` -/
def P16792408900853603532.Spec : Prop :=
  ∀ n, P16792408900853603532.a n = A123737 (n + 1)

end A123737

/-! ## A123737.P16798075921353628692

`A014963(n+1)-(A083037(n+1)+A014963(A014963(n+1)))`
-/

namespace A123737.P16798075921353628692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - (A083037 (n + 1) + A014963 (A014963 (n + 1)).toNat)

end

end A123737.P16798075921353628692

namespace A123737

/-- `A014963(n+1)-(A083037(n+1)+A014963(A014963(n+1)))` -/
def P16798075921353628692.Spec : Prop :=
  ∀ n, P16798075921353628692.a n = A123737 (n + 1)

end A123737

/-! ## A123737.P3968435445462511910

`Δ[A083037(n+1)-A083038(n+1)]`
-/

namespace A123737.P3968435445462511910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083037 (n + 1) - A083038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123737.P3968435445462511910

namespace A123737

/-- `Δ[A083037(n+1)-A083038(n+1)]` -/
def P3968435445462511910.Spec : Prop :=
  ∀ n, P3968435445462511910.a n = A123737 (n + 1)

end A123737

/-! ## A123737.P6158390886300653307

`A000035(2*n)-A083037(n+1)`
-/

namespace A123737.P6158390886300653307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A083037 (n + 1)

end

end A123737.P6158390886300653307

namespace A123737

/-- `A000035(2*n)-A083037(n+1)` -/
def P6158390886300653307.Spec : Prop :=
  ∀ n, P6158390886300653307.a n = A123737 (n + 1)

end A123737

/-! ## A123737.P13880416973496144483

`A083037(A026250(n+1))`
-/

namespace A123737.P13880416973496144483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083037 (A026250 (n + 1)).toNat

end

end A123737.P13880416973496144483

namespace A123737

/-- `A083037(A026250(n+1))` -/
def P13880416973496144483.Spec : Prop :=
  ∀ n, P13880416973496144483.a n = A123737 (n + 1)

end A123737

/-! ## A123737.P12212576346909106969

`A083037(A188299(n+1))`
-/

namespace A123737.P12212576346909106969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083037 (A188299 (n + 1)).toNat

end

end A123737.P12212576346909106969

namespace A123737

/-- `A083037(A188299(n+1))` -/
def P12212576346909106969.Spec : Prop :=
  ∀ n, P12212576346909106969.a n = A123737 (n + 1)

end A123737

/-!
# A123738: Partial sums of (-1)^floor(n*Pi).

The programs for A123738, the canonical program `A123738.P17474570698079746054` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123738 has offset 1).

The definition of A123738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123738.P17474570698079746054

`∑[(-1)^floor(π*(n+1))]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123738

/-- `∑[(-1)^floor(π*(n+1))]` -/
def P17474570698079746054.Spec : Prop :=
  ∀ n, P17474570698079746054.a n = (A123738 (n + 1) : ℚ)

end A123738

/-!
# A123739: Partial sums of (-1)^floor(n*e).

The programs for A123739, the canonical program `A123739.P15417985527866259455` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123739 has offset 1).

The definition of A123739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123739.P15417985527866259455

`∑[(-1)^floor(e*(n+1))]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123739

/-- `∑[(-1)^floor(e*(n+1))]` -/
def P15417985527866259455.Spec : Prop :=
  ∀ n, P15417985527866259455.a n = (A123739 (n + 1) : ℚ)

end A123739

/-! ## A123739.P8528747993286985545

`-∑[A062157(floor(e*(n+1)))]`
-/

namespace A123739.P8528747993286985545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 ⌊Real.exp 1 * (n + 1 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123739.P8528747993286985545

namespace A123739

/-- `-∑[A062157(floor(e*(n+1)))]` -/
def P8528747993286985545.Spec : Prop :=
  ∀ n, P8528747993286985545.a n = A123739 (n + 1)

end A123739

/-! ## A123739.P15604857386953650936

`-∑[A033999(A184589(n+1))]`
-/

namespace A123739.P15604857386953650936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A184589 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123739.P15604857386953650936

namespace A123739

/-- `-∑[A033999(A184589(n+1))]` -/
def P15604857386953650936.Spec : Prop :=
  ∀ n, P15604857386953650936.a n = A123739 (n + 1)

end A123739

/-! ## A123739.P7545430847304411936

`-∑[A033999(A121384(n+1))]`
-/

namespace A123739.P7545430847304411936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A121384 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123739.P7545430847304411936

namespace A123739

/-- `-∑[A033999(A121384(n+1))]` -/
def P7545430847304411936.Spec : Prop :=
  ∀ n, P7545430847304411936.a n = A123739 (n + 1)

end A123739

/-! ## A123739.P16093769117842274701

`A000035(2*n)-∑[A033999(A121384(n+1))]`
-/

namespace A123739.P16093769117842274701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A121384 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123739.P16093769117842274701

namespace A123739

/-- `A000035(2*n)-∑[A033999(A121384(n+1))]` -/
def P16093769117842274701.Spec : Prop :=
  ∀ n, P16093769117842274701.a n = A123739 (n + 1)

end A123739

/-!
# A123740: Characteristic sequence for Wythoff AB-numbers A003623.

The programs for A123740, the canonical program `A123740.P12817292357351340269` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123740 has offset 1).

The definition of A123740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123740.P14717178533399576850

`Δ[floor(ceil(n/ϕ²)/ϕ)]`
-/

namespace A123740.P14717178533399576850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈(n : ℝ) / Real.goldenRatio ^ 2⌉ : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123740.P14717178533399576850

namespace A123740

/-- `Δ[floor(ceil(n/ϕ²)/ϕ)]` -/
def P14717178533399576850.Spec : Prop :=
  ∀ n, P14717178533399576850.a n = A123740 (n + 1)

end A123740

/-! ## A123740.P2709412560731932351

`1-char[floor(∑[ϕ^((n-1)%2)])]`
-/

namespace A123740.P2709412560731932351
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (Int.tmod ((n : ℤ) - 1) 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A123740.P2709412560731932351

namespace A123740

/-- `1-char[floor(∑[ϕ^((n-1)%2)])]` -/
def P2709412560731932351.Spec : Prop :=
  ∀ n, P2709412560731932351.a n = A123740 (n + 1)

end A123740

/-! ## A123740.P2323991482366726808

`1-A005713(n)`
-/

namespace A123740.P2323991482366726808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005713 n

end

end A123740.P2323991482366726808

namespace A123740

/-- `1-A005713(n)` -/
def P2323991482366726808.Spec : Prop :=
  ∀ n, P2323991482366726808.a n = A123740 (n + 1)

end A123740

/-! ## A123740.P2344379229779693866

`val(A129761(n), 2)`
-/

namespace A123740.P2344379229779693866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A129761 n).toNat 2

end

end A123740.P2344379229779693866

namespace A123740

/-- `val(A129761(n), 2)` -/
def P2344379229779693866.Spec : Prop :=
  ∀ n, (P2344379229779693866.a n : ℤ) = A123740 (n + 1)

end A123740

/-! ## A123740.P11694800285731506667

`C(A159917(n), 2)`
-/

namespace A123740.P11694800285731506667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A159917 n).toNat 2

end

end A123740.P11694800285731506667

namespace A123740

/-- `C(A159917(n), 2)` -/
def P11694800285731506667.Spec : Prop :=
  ∀ n, (P11694800285731506667.a n : ℤ) = A123740 (n + 1)

end A123740

/-! ## A123740.P8820762849932820415

`char[A035336(n+1)]`
-/

namespace A123740.P8820762849932820415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A123740.P8820762849932820415

namespace A123740

/-- `char[A035336(n+1)]` -/
def P8820762849932820415.Spec : Prop :=
  ∀ n, (P8820762849932820415.a n : ℤ) = A123740 (n + 1)

end A123740

/-! ## A123740.P18442428057438953838

`and(2, A003714(n))/2`
-/

namespace A123740.P18442428057438953838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A003714 n) : ℚ) / 2

end

end A123740.P18442428057438953838

namespace A123740

/-- `and(2, A003714(n))/2` -/
def P18442428057438953838.Spec : Prop :=
  ∀ n, P18442428057438953838.a n = (A123740 (n + 1) : ℚ)

end A123740

/-! ## A123740.P10205662095547051736

`and(2, A014417(n))/2`
-/

namespace A123740.P10205662095547051736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A014417 n) : ℚ) / 2

end

end A123740.P10205662095547051736

namespace A123740

/-- `and(2, A014417(n))/2` -/
def P10205662095547051736.Spec : Prop :=
  ∀ n, P10205662095547051736.a n = (A123740 (n + 1) : ℚ)

end A123740

/-! ## A123740.P5944561492354588910

`and(2, A048297(n))/2`
-/

namespace A123740.P5944561492354588910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A048297 n) : ℚ) / 2

end

end A123740.P5944561492354588910

namespace A123740

/-- `and(2, A048297(n))/2` -/
def P5944561492354588910.Spec : Prop :=
  ∀ n, P5944561492354588910.a n = (A123740 (n + 1) : ℚ)

end A123740

/-! ## A123740.P3361287553529755658

`char[A003623(n+1)-1]`
-/

namespace A123740.P3361287553529755658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A123740.P3361287553529755658

namespace A123740

/-- `char[A003623(n+1)-1]` -/
def P3361287553529755658.Spec : Prop :=
  ∀ n, (P3361287553529755658.a n : ℤ) = A123740 (n + 1)

end A123740

/-! ## A123740.P17533401697675163737

`1-char[A219636(n+1)]`
-/

namespace A123740.P17533401697675163737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219636 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A123740.P17533401697675163737

namespace A123740

/-- `1-char[A219636(n+1)]` -/
def P17533401697675163737.Spec : Prop :=
  ∀ n, P17533401697675163737.a n = A123740 (n + 1)

end A123740

/-! ## A123740.P6350488613336449578

`char[A089910(n+1)-2]`
-/

namespace A123740.P6350488613336449578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089910 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A123740.P6350488613336449578

namespace A123740

/-- `char[A089910(n+1)-2]` -/
def P6350488613336449578.Spec : Prop :=
  ∀ n, (P6350488613336449578.a n : ℤ) = A123740 (n + 1)

end A123740

/-! ## A123740.P16808076316428741453

`char[A276885(n+1)-2]`
-/

namespace A123740.P16808076316428741453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276885 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A123740.P16808076316428741453

namespace A123740

/-- `char[A276885(n+1)-2]` -/
def P16808076316428741453.Spec : Prop :=
  ∀ n, (P16808076316428741453.a n : ℤ) = A123740 (n + 1)

end A123740

/-! ## A123740.P10541011173289817554

`char[A002251(n+1)+n]`
-/

namespace A123740.P10541011173289817554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A123740.P10541011173289817554

namespace A123740

/-- `char[A002251(n+1)+n]` -/
def P10541011173289817554.Spec : Prop :=
  ∀ n, (P10541011173289817554.a n : ℤ) = A123740 (n + 1)

end A123740

/-! ## A123740.P10910347165896606463

`char[Δ[A026353(n+2)]-2]`
-/

namespace A123740.P10910347165896606463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026353 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A123740.P10910347165896606463

namespace A123740

/-- `char[Δ[A026353(n+2)]-2]` -/
def P10910347165896606463.Spec : Prop :=
  ∀ n, (P10910347165896606463.a n : ℤ) = A123740 (n + 1)

end A123740

/-! ## A123740.P4357355749741393067

`char[A187952(2*n+1)+1]`
-/

namespace A123740.P4357355749741393067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (2 * n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A123740.P4357355749741393067

namespace A123740

/-- `char[A187952(2*n+1)+1]` -/
def P4357355749741393067.Spec : Prop :=
  ∀ n, (P4357355749741393067.a n : ℤ) = A123740 (n + 1)

end A123740

/-! ## A123740.P3410352377988196197

`char[A137708(2*(n+1))+n]`
-/

namespace A123740.P3410352377988196197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137708 (2 * (n + 1)) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A123740.P3410352377988196197

namespace A123740

/-- `char[A137708(2*(n+1))+n]` -/
def P3410352377988196197.Spec : Prop :=
  ∀ n, (P3410352377988196197.a n : ℤ) = A123740 (n + 1)

end A123740

/-! ## A123740.P12817292357351340269

`A003849(A319433(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A123740

/-- `A003849(A319433(n))` -/
def P12817292357351340269.Spec : Prop :=
  ∀ n, P12817292357351340269.a n = A123740 (n + 1)

theorem P12817292357351340269.correct : P12817292357351340269.Spec := by
  intro n
  simp only [A123740, Nat.add_sub_cancel]

end A123740

/-! ## A123740.P8579868394237752273

`A379275(A187329(n))`
-/

namespace A123740.P8579868394237752273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379275 (A187329 n).toNat

end

end A123740.P8579868394237752273

namespace A123740

/-- `A379275(A187329(n))` -/
def P8579868394237752273.Spec : Prop :=
  ∀ n, P8579868394237752273.a n = A123740 (n + 1)

end A123740

/-!
# A123741: A second version of Fibonacci factorials besides A003266.

The programs for A123741, there is no canonical definition to state claims against.
-/

/-! ## A123741.P4286071610816082129

`ratio[A203313(n+1)]*ratio[A000178(n)]`
-/

namespace A123741.P4286071610816082129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A123741.P4286071610816082129

/-! ## A123741.P6612514993294188464

`ratio[A203311(n+1)]`
-/

namespace A123741.P6612514993294188464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203311 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A123741.P6612514993294188464

/-! ## A123741.P3832018388484621213

`ratio[A000178(n)*A203313(n+1)]`
-/

namespace A123741.P3832018388484621213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A203313 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A123741.P3832018388484621213

/-! ## A123741.P17793775473089103240

`A203311(n+2)/A203311(n+1)`
-/

namespace A123741.P17793775473089103240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203311 (n + 2) : ℚ) / (A203311 (n + 1) : ℚ)

end

end A123741.P17793775473089103240

/-! ## A123741.P9949108639064036213

`ratio[abs(A123742(n+1))]`
-/

namespace A123741.P9949108639064036213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123742 (n + 1)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A123741.P9949108639064036213

/-!
# A123742: Certain Vandermonde determinants with Fibonacci numbers.

The programs for A123742, there is no canonical definition to state claims against.
-/

/-! ## A123742.P9503473883460782226

`∏[A033999(n)]*A203311(n+1)`
-/

namespace A123742.P9503473883460782226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A203311 (n + 1)

end

end A123742.P9503473883460782226

/-! ## A123742.P9268545045568383708

`∏[A133942(n)]*A203313(n+1)`
-/

namespace A123742.P9268545045568383708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A203313 (n + 1)

end

end A123742.P9268545045568383708

/-!
# A123743: Certain Vandermonde determinants with Fibonacci numbers.

The programs for A123743, there is no canonical definition to state claims against.
-/

/-! ## A123743.P16839230248116597030

`A003266(n+2)*A203311(n+1)`
-/

namespace A123743.P16839230248116597030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003266 (n + 2) * A203311 (n + 1)

end

end A123743.P16839230248116597030

/-!
# A123744: Circulants of Fibonacci numbers (including F_0 = 0).

The programs for A123744, there is no canonical definition to state claims against.
-/

/-! ## A123744.P12380222284987443353

`A328163(A332491(n))`
-/

namespace A123744.P12380222284987443353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328163 (A332491 n).toNat

end

end A123744.P12380222284987443353

/-! ## A123744.P14780861570563208637

`filter[A017821(2*n), A117198(#)]`
-/

namespace A123744.P14780861570563208637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017821 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A117198 (f1 j).toNat = 1) n)

end

end A123744.P14780861570563208637

/-!
# A123745: Circulants of Fibonacci numbers (without F_0 = 0).

The programs for A123745, there is no canonical definition to state claims against.
-/

/-! ## A123745.P15672538902085666372

`A091205((n!+n-2)²)`
-/

namespace A123745.P15672538902085666372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 (((Nat.factorial n : ℤ) + ((n : ℤ) - 2)) ^ 2).toNat

end

end A123745.P15672538902085666372

/-!
# A123746: Numerators of partial sums of a series for 1/sqrt(2).

The programs for A123746, the canonical program `A123746.P16894433032032204393` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123746 has offset 0).

The definition of A123746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123746.P16894433032032204393

`A091520(n)/A001316(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A123746

/-- `A091520(n)/A001316(n)` -/
def P16894433032032204393.Spec : Prop :=
  ∀ n, P16894433032032204393.a n = (A123746 n : ℚ)

end A123746

/-! ## A123746.P3900505040763661250

`A091520(n)/A048896(2*n)`
-/

namespace A123746.P3900505040763661250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091520 n : ℚ) / (A048896 (2 * n) : ℚ)

end

end A123746.P3900505040763661250

namespace A123746

/-- `A091520(n)/A048896(2*n)` -/
def P3900505040763661250.Spec : Prop :=
  ∀ n, P3900505040763661250.a n = (A123746 n : ℚ)

end A123746

/-! ## A123746.P1181908348888212222

`A091520(n)/A000079(A000120(n))`
-/

namespace A123746.P1181908348888212222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091520 n : ℚ) / (A000079 (A000120 n).toNat : ℚ)

end

end A123746.P1181908348888212222

namespace A123746

/-- `A091520(n)/A000079(A000120(n))` -/
def P1181908348888212222.Spec : Prop :=
  ∀ n, P1181908348888212222.a n = (A123746 n : ℚ)

end A123746

/-! ## A123746.P8973601855222611812

`A003148(n)/A049606(n)`
-/

namespace A123746.P8973601855222611812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003148 n : ℚ) / (A049606 n : ℚ)

end

end A123746.P8973601855222611812

namespace A123746

/-- `A003148(n)/A049606(n)` -/
def P8973601855222611812.Spec : Prop :=
  ∀ n, P8973601855222611812.a n = (A123746 n : ℚ)

end A123746

/-! ## A123746.P12765667241874055205

`A003148(n)/A095987(2*n)`
-/

namespace A123746.P12765667241874055205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003148 n : ℚ) / (A095987 (2 * n) : ℚ)

end

end A123746.P12765667241874055205

namespace A123746

/-- `A003148(n)/A095987(2*n)` -/
def P12765667241874055205.Spec : Prop :=
  ∀ n, P12765667241874055205.a n = (A123746 n : ℚ)

end A123746

/-! ## A123746.P4578250144676923432

`A091520(n)/A124859(A019565(n))`
-/

namespace A123746.P4578250144676923432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091520 n : ℚ) / (A124859 (A019565 n).toNat : ℚ)

end

end A123746.P4578250144676923432

namespace A123746

/-- `A091520(n)/A124859(A019565(n))` -/
def P4578250144676923432.Spec : Prop :=
  ∀ n, P4578250144676923432.a n = (A123746 n : ℚ)

end A123746

/-! ## A123746.P11629030906494731985

`A003148(n)/A000165(n)*A046161(n)`
-/

namespace A123746.P11629030906494731985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003148 n : ℚ) / (A000165 n : ℚ) * (A046161 n : ℚ)

end

end A123746.P11629030906494731985

namespace A123746

/-- `A003148(n)/A000165(n)*A046161(n)` -/
def P11629030906494731985.Spec : Prop :=
  ∀ n, P11629030906494731985.a n = (A123746 n : ℚ)

end A123746

/-!
# A123747: Numerators of partial sums of a series for sqrt(5).

The programs for A123747, the canonical program `A123747.P11724577684491997392` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123747 has offset 0).

The definition of A123747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123747.P11724577684491997392

`A144635(n)/gcd(A000351(n), A144635(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A123747

/-- `A144635(n)/gcd(A000351(n), A144635(n))` -/
def P11724577684491997392.Spec : Prop :=
  ∀ n, P11724577684491997392.a n = (A123747 n : ℚ)

end A123747

/-!
# A123748: Denominators of partial sums of a series for sqrt(5).

The programs for A123748, the canonical program `A123748.P791566555730532304` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123748 has offset 0).

The definition of A123748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123748.P791566555730532304

`A000351(n)/gcd(A000351(n), A144635(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A123748

/-- `A000351(n)/gcd(A000351(n), A144635(n))` -/
def P791566555730532304.Spec : Prop :=
  ∀ n, P791566555730532304.a n = (A123748 n : ℚ)

end A123748

/-! ## A123748.P9973984243196329344

`A124398(n)%A003665(A273168(n+1))`
-/

namespace A123748.P9973984243196329344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124398 n) (A003665 (A273168 (n + 1)).toNat)

end

end A123748.P9973984243196329344

namespace A123748

/-- `A124398(n)%A003665(A273168(n+1))` -/
def P9973984243196329344.Spec : Prop :=
  ∀ n, P9973984243196329344.a n = A123748 n

end A123748

/-! ## A123748.P15596865276484874414

`A124398(n^A321620(n))`
-/

namespace A123748.P15596865276484874414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124398 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A321620 n : ℤ))).toNat

end

end A123748.P15596865276484874414

namespace A123748

/-- `A124398(n^A321620(n))` -/
def P15596865276484874414.Spec : Prop :=
  ∀ n, P15596865276484874414.a n = A123748 n

end A123748

/-! ## A123748.P5396070977573502508

`A124398(C(n, A321620(n)))`
-/

namespace A123748.P5396070977573502508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124398 (Nat.choose n (A321620 n).toNat)

end

end A123748.P5396070977573502508

namespace A123748

/-- `A124398(C(n, A321620(n)))` -/
def P5396070977573502508.Spec : Prop :=
  ∀ n, P5396070977573502508.a n = A123748 n

end A123748

/-! ## A123748.P8744848841249922313

`A124398(C(n, A354090(2*n+3)))`
-/

namespace A123748.P8744848841249922313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124398 (Nat.choose n (A354090 (2 * n + 3)).toNat)

end

end A123748.P8744848841249922313

namespace A123748

/-- `A124398(C(n, A354090(2*n+3)))` -/
def P8744848841249922313.Spec : Prop :=
  ∀ n, P8744848841249922313.a n = A123748 n

end A123748

/-!
# A123749: Numerators of partial sums of a series for 3/sqrt(5) = (3/5)*sqrt(5).

The programs for A123749, there is no canonical definition to state claims against.
-/

/-! ## A123749.P18441521651266316059

`A369982(2*n+1)-A344369(A001405(2*(n+2)))`
-/

namespace A123749.P18441521651266316059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369982 (2 * n + 1) - A344369 (A001405 (2 * (n + 2))).toNat

end

end A123749.P18441521651266316059

/-!
# A123750: Number of distinct resistances possible with at most n arbitrary resistors connected in series or in parallel.

The programs for A123750, there is no canonical definition to state claims against.
-/

/-! ## A123750.P7369958899859307212

`2*A005840(n+1)+n+1-2`
-/

namespace A123750.P7369958899859307212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005840 (n + 1) + (n + 1 : ℤ) - 2

end

end A123750.P7369958899859307212

/-! ## A123750.P12402170771790232346

`2*A005840(n+1)+n-1`
-/

namespace A123750.P12402170771790232346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005840 (n + 1) + ((n : ℤ) - 1)

end

end A123750.P12402170771790232346

/-! ## A123750.P5578100789320966309

`abs(1-n)+4*A053525(n+1)`
-/

namespace A123750.P5578100789320966309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 4 * A053525 (n + 1)

end

end A123750.P5578100789320966309

/-! ## A123750.P15435953009457604580

`A023443(n)+2*A005840(n+1)`
-/

namespace A123750.P15435953009457604580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + 2 * A005840 (n + 1)

end

end A123750.P15435953009457604580

/-!
# A123752: a(n) = 7*a(n-2), a(0) = 1, a(1) = 2.

The programs for A123752, the canonical program `A123752.P3414450782834150481` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123752 has offset 0).

The definition of A123752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-2)` (program `A123752.P3414450782834150481`, by `A123752.P3414450782834150481.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123752.P3414450782834150481

`7*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123752

/-- `7*a(n-2)` -/
def P3414450782834150481.Spec : Prop :=
  ∀ n, (P3414450782834150481.a n : ℤ) = A123752 n

theorem P3414450782834150481.correct : P3414450782834150481.Spec := by
  intro n
  simp only [A123752]

end A123752

/-! ## A123752.P5900828436704748824

`7^(n/2)*(7*(1+(-1)^n)+2*sqrt(7)*(1-(-1)^n))/14`
-/

namespace A123752.P5900828436704748824
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (7 : ℝ) ^ ((n : ℚ) / 2 : ℝ) * ((7 * (1 + (-1) ^ n) : ℝ) + 2 * Real.sqrt (7 : ℝ) * (1 - (-1) ^ n : ℝ)) / 14

end

end A123752.P5900828436704748824

namespace A123752

/-- `7^(n/2)*(7*(1+(-1)^n)+2*sqrt(7)*(1-(-1)^n))/14` -/
def P5900828436704748824.Spec : Prop :=
  ∀ n, P5900828436704748824.a n = (A123752 n : ℝ)

end A123752

/-! ## A123752.P263900895374775943

`ogf((1+2x)/(1-7x^2))`
-/

namespace A123752.P263900895374775943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -7] n

end

end A123752.P263900895374775943

namespace A123752

/-- `ogf((1+2x)/(1-7x^2))` -/
def P263900895374775943.Spec : Prop :=
  ∀ n, P263900895374775943.a n = A123752 n

end A123752

/-! ## A123752.P16281529090156250127

`∏[7/a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A123752.P16281529090156250127
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  7 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123752.P16281529090156250127

namespace A123752

/-- `∏[7/a(n-1)]` -/
def P16281529090156250127.Spec : Prop :=
  ∀ n, P16281529090156250127.a n = (A123752 n : ℚ)

end A123752

/-! ## A123752.P18375376292254199629

`record[A036565(n)]`
-/

namespace A123752.P18375376292254199629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123752.P18375376292254199629

namespace A123752

/-- `record[A036565(n)]` -/
def P18375376292254199629.Spec : Prop :=
  ∀ n, P18375376292254199629.a n = A123752 n

end A123752

/-! ## A123752.P8202271481264550154

`A245479(A042963(n+1))`
-/

namespace A123752.P8202271481264550154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245479 (A042963 (n + 1)).toNat

end

end A123752.P8202271481264550154

namespace A123752

/-- `A245479(A042963(n+1))` -/
def P8202271481264550154.Spec : Prop :=
  ∀ n, P8202271481264550154.a n = A123752 n

end A123752

/-! ## A123752.P11278200417971139425

`∪[2*A000420(n), A000420(n)]`
-/

namespace A123752.P11278200417971139425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000420 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A123752.P11278200417971139425

namespace A123752

/-- `∪[2*A000420(n), A000420(n)]` -/
def P11278200417971139425.Spec : Prop :=
  ∀ n, (P11278200417971139425.a n : ℤ) = A123752 n

end A123752

/-! ## A123752.P15172405387339399573

`∩[A003591(n+1), A245479(n+1)]`
-/

namespace A123752.P15172405387339399573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123752.P15172405387339399573

namespace A123752

/-- `∩[A003591(n+1), A245479(n+1)]` -/
def P15172405387339399573.Spec : Prop :=
  ∀ n, (P15172405387339399573.a n : ℤ) = A123752 n

end A123752

/-! ## A123752.P5866184482411914886

`∩[A003591(n+1), A022771(n+1)]`
-/

namespace A123752.P5866184482411914886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123752.P5866184482411914886

namespace A123752

/-- `∩[A003591(n+1), A022771(n+1)]` -/
def P5866184482411914886.Spec : Prop :=
  ∀ n, (P5866184482411914886.a n : ℤ) = A123752 n

end A123752

/-! ## A123752.P5381137124579098098

`∩[A022771(n+1), A245479(n+1)]`
-/

namespace A123752.P5381137124579098098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123752.P5381137124579098098

namespace A123752

/-- `∩[A022771(n+1), A245479(n+1)]` -/
def P5381137124579098098.Spec : Prop :=
  ∀ n, (P5381137124579098098.a n : ℤ) = A123752 n

end A123752

/-!
# A123753: Partial sums of A070941.

The programs for A123753, the canonical program `A123753.P15676585840177218925` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123753 has offset 0).

The definition of A123753 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123753.P15676585840177218925

`A003314(n+1)+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A123753

/-- `A003314(n+1)+1` -/
def P15676585840177218925.Spec : Prop :=
  ∀ n, P15676585840177218925.a n = A123753 n

theorem P15676585840177218925.correct : P15676585840177218925.Spec := by
  intro n
  simp only [A123753]

end A123753

/-! ## A123753.P6611996660871871024

`(n+1)*(1+A000523(2*n+3))-2^A000523(2*n+3)+1`
-/

namespace A123753.P6611996660871871024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (1 + A000523 (2 * n + 3)) : ℚ) - (2 : ℚ) ^ (A000523 (2 * n + 3) : ℤ) + 1

end

end A123753.P6611996660871871024

namespace A123753

/-- `(n+1)*(1+A000523(2*n+3))-2^A000523(2*n+3)+1` -/
def P6611996660871871024.Spec : Prop :=
  ∀ n, P6611996660871871024.a n = (A123753 n : ℚ)

end A123753

/-! ## A123753.P6107285713451538697

`∑[ceil(record[log2(or(2, n))])]`
-/

namespace A123753.P6107285713451538697
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lor 2 n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123753.P6107285713451538697

namespace A123753

/-- `∑[ceil(record[log2(or(2, n))])]` -/
def P6107285713451538697.Spec : Prop :=
  ∀ n, P6107285713451538697.a n = A123753 n

end A123753

/-! ## A123753.P2271151477924493273

`∑[∑[∏{p}[n, val(#, 2)]]]`
-/

namespace A123753.P2271151477924493273
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), SequenceMachineLib.valuation p 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123753.P2271151477924493273

namespace A123753

/-- `∑[∑[∏{p}[n, val(#, 2)]]]` -/
def P2271151477924493273.Spec : Prop :=
  ∀ n, (P2271151477924493273.a n : ℤ) = A123753 n

end A123753

/-! ## A123753.P12059229089627099610

`∑[∑[C(2, ∑{p}[n, #])]]`
-/

namespace A123753.P12059229089627099610
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f3 n), p)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123753.P12059229089627099610

namespace A123753

/-- `∑[∑[C(2, ∑{p}[n, #])]]` -/
def P12059229089627099610.Spec : Prop :=
  ∀ n, (P12059229089627099610.a n : ℤ) = A123753 n

end A123753

/-! ## A123753.P11138669471658163461

`∑[∑[∏{p}[n, C(2, #)]]]`
-/

namespace A123753.P11138669471658163461
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.choose 2 p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123753.P11138669471658163461

namespace A123753

/-- `∑[∑[∏{p}[n, C(2, #)]]]` -/
def P11138669471658163461.Spec : Prop :=
  ∀ n, (P11138669471658163461.a n : ℤ) = A123753 n

end A123753

/-! ## A123753.P1768748458460809358

`∑[∑[char[and(n, -n)]]]`
-/

namespace A123753.P1768748458460809358
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123753.P1768748458460809358

namespace A123753

/-- `∑[∑[char[and(n, -n)]]]` -/
def P1768748458460809358.Spec : Prop :=
  ∀ n, (P1768748458460809358.a n : ℤ) = A123753 n

end A123753

/-! ## A123753.P13101474409061690173

`∑[ceil(log2(n+1))+1]`
-/

namespace A123753.P13101474409061690173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123753.P13101474409061690173

namespace A123753

/-- `∑[ceil(log2(n+1))+1]` -/
def P13101474409061690173.Spec : Prop :=
  ∀ n, P13101474409061690173.a n = A123753 n

end A123753

/-! ## A123753.P11574650685633496125

`abs(∑[floor(log2(acot(2*n+1)))])`
-/

namespace A123753.P11574650685633496125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (SequenceMachineLib.acot (2 * n + 1 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A123753.P11574650685633496125

namespace A123753

/-- `abs(∑[floor(log2(acot(2*n+1)))])` -/
def P11574650685633496125.Spec : Prop :=
  ∀ n, P11574650685633496125.a n = A123753 n

end A123753

/-! ## A123753.P13067047861192808711

`-∑[floor(log2(acot(2*n+1)))]`
-/

namespace A123753.P13067047861192808711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (SequenceMachineLib.acot (2 * n + 1 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123753.P13067047861192808711

namespace A123753

/-- `-∑[floor(log2(acot(2*n+1)))]` -/
def P13067047861192808711.Spec : Prop :=
  ∀ n, P13067047861192808711.a n = A123753 n

end A123753

/-! ## A123753.P5746889555450310180

`∑[a(floor(n/2))+1]-1` with `a(0)=2, a(1)=2`
-/

namespace A123753.P5746889555450310180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A123753.P5746889555450310180

namespace A123753

/-- `∑[a(floor(n/2))+1]-1` -/
def P5746889555450310180.Spec : Prop :=
  ∀ n, P5746889555450310180.a n = A123753 n

end A123753

/-! ## A123753.P17206691809244393579

`ceil(a(n-1)+log2(2*n+1))` with `a(0)=1`
-/

namespace A123753.P17206691809244393579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + Real.logb 2 (2 * n + 1 : ℝ)⌉

end

end A123753.P17206691809244393579

namespace A123753

/-- `ceil(a(n-1)+log2(2*n+1))` -/
def P17206691809244393579.Spec : Prop :=
  ∀ n, P17206691809244393579.a n = A123753 n

end A123753

/-! ## A123753.P16066078927729001729

`1-floor(a(n-1)/(1/(n+1)-1))` with `a(0)=1`
-/

namespace A123753.P16066078927729001729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ⌊(a (n - 1) : ℚ) / (1 / (n + 1 : ℚ) - 1)⌋

end

end A123753.P16066078927729001729

namespace A123753

/-- `1-floor(a(n-1)/(1/(n+1)-1))` -/
def P16066078927729001729.Spec : Prop :=
  ∀ n, P16066078927729001729.a n = A123753 n

end A123753

/-! ## A123753.P4276829013363892439

`1-floor(((n-1)/n-2)*a(n-1))` with `a(0)=1`
-/

namespace A123753.P4276829013363892439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ⌊(((n : ℤ) - 1 : ℚ) / (n : ℚ) - 2) * (a (n - 1) : ℚ)⌋

end

end A123753.P4276829013363892439

namespace A123753

/-- `1-floor(((n-1)/n-2)*a(n-1))` -/
def P4276829013363892439.Spec : Prop :=
  ∀ n, P4276829013363892439.a n = A123753 n

end A123753

/-! ## A123753.P11698853527295891386

`2-floor(1-a(n-1)/n-a(n-1))` with `a(0)=1`
-/

namespace A123753.P11698853527295891386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - ⌊1 - (a (n - 1) : ℚ) / (n : ℚ) - (a (n - 1) : ℚ)⌋

end

end A123753.P11698853527295891386

namespace A123753

/-- `2-floor(1-a(n-1)/n-a(n-1))` -/
def P11698853527295891386.Spec : Prop :=
  ∀ n, P11698853527295891386.a n = A123753 n

end A123753

/-! ## A123753.P780535331116181519

`A083652(n)+n`
-/

namespace A123753.P780535331116181519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n + (n : ℤ)

end

end A123753.P780535331116181519

namespace A123753

/-- `A083652(n)+n` -/
def P780535331116181519.Spec : Prop :=
  ∀ n, P780535331116181519.a n = A123753 n

end A123753

/-! ## A123753.P17633771390914203082

`∑[A070939(n)]+n`
-/

namespace A123753.P17633771390914203082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A123753.P17633771390914203082

namespace A123753

/-- `∑[A070939(n)]+n` -/
def P17633771390914203082.Spec : Prop :=
  ∀ n, P17633771390914203082.a n = A123753 n

end A123753

/-! ## A123753.P523829493841767538

`A296349(n+1)+n`
-/

namespace A123753.P523829493841767538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296349 (n + 1) + (n : ℤ)

end

end A123753.P523829493841767538

namespace A123753

/-- `A296349(n+1)+n` -/
def P523829493841767538.Spec : Prop :=
  ∀ n, P523829493841767538.a n = A123753 n

end A123753

/-! ## A123753.P1697543103078226830

`A033156(n+1)-n`
-/

namespace A123753.P1697543103078226830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033156 (n + 1) - (n : ℤ)

end

end A123753.P1697543103078226830

namespace A123753

/-- `A033156(n+1)-n` -/
def P1697543103078226830.Spec : Prop :=
  ∀ n, P1697543103078226830.a n = A123753 n

end A123753

/-! ## A123753.P15425786789758773544

`A001855(n+1)+1+n`
-/

namespace A123753.P15425786789758773544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1) + 1 + (n : ℤ)

end

end A123753.P15425786789758773544

namespace A123753

/-- `A001855(n+1)+1+n` -/
def P15425786789758773544.Spec : Prop :=
  ∀ n, P15425786789758773544.a n = A123753 n

theorem P15425786789758773544.correct : P15425786789758773544.Spec := by
  intro n
  simp only [A123753, Nat.add_sub_cancel, A123753.P15425786789758773544.a, A123753.P15676585840177218925.a, A001855, A001855.P10537031409435003354.a, A003314, A003314.P7289667830618378766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123753

/-!
# A123754: Positive numbers of the form 4*n^2 - 1 which are not semiprimes.

The programs for A123754, there is no canonical definition to state claims against.
-/

/-! ## A123754.P2228878674013272031

`A005563(eq[A035363(n), A242041(n+1)])`
-/

namespace A123754.P2228878674013272031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A123754.P2228878674013272031

/-! ## A123754.P7462128183027361799

`A005563(eq[A059841(n), A241425(n+1)])`
-/

namespace A123754.P7462128183027361799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A123754.P7462128183027361799

/-! ## A123754.P6165879233278958481

`A005563(eq[A059841(n), A245716(n+1)])`
-/

namespace A123754.P6165879233278958481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A123754.P6165879233278958481

/-! ## A123754.P4579392769048480164

`A106230(A167692(n+1)+1)`
-/

namespace A123754.P4579392769048480164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106230 (A167692 (n + 1) + 1).toNat

end

end A123754.P4579392769048480164

/-! ## A123754.P14189581733805512281

`A000466(A028310(A168044(n+1)))`
-/

namespace A123754.P14189581733805512281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 (A028310 (A168044 (n + 1)).toNat).toNat

end

end A123754.P14189581733805512281

/-! ## A123754.P13505887129120617396

`A005563(eq[A077957(n), A245716(n+1)])`
-/

namespace A123754.P13505887129120617396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A123754.P13505887129120617396

/-! ## A123754.P7123237314737091063

`∩[A176847(n+1), n²-1]`
-/

namespace A123754.P7123237314737091063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123754.P7123237314737091063

/-! ## A123754.P12716589080989292068

`∩[A000466(n), A176847(n+1)]`
-/

namespace A123754.P12716589080989292068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123754.P12716589080989292068

/-! ## A123754.P6448135693056440780

`∩[A005563(n), A176847(n+1)]`
-/

namespace A123754.P6448135693056440780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123754.P6448135693056440780

/-! ## A123754.P14011676260077716695

`∩[A226023(n), A176847(n+1)]`
-/

namespace A123754.P14011676260077716695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123754.P14011676260077716695

/-!
# A123755: a(0) = 1. a(n) = number of earlier terms which are divisible by (the number of 1's in the binary representation of n).

The programs for A123755, there is no canonical definition to state claims against.
-/

/-! ## A123755.P15382847934413822760

`A118290(n+1)%A091385(A052810(n))`
-/

namespace A123755.P15382847934413822760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118290 (n + 1)) (A091385 (A052810 n).toNat)

end

end A123755.P15382847934413822760

/-! ## A123755.P8825932297136163506

`A118291(n+1)%A091385(A052810(n))`
-/

namespace A123755.P8825932297136163506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118291 (n + 1)) (A091385 (A052810 n).toNat)

end

end A123755.P8825932297136163506

/-! ## A123755.P12219466757182040848

`A118290(n+1)-A026814(A185213(n+1))`
-/

namespace A123755.P12219466757182040848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118290 (n + 1) - A026814 (A185213 (n + 1)).toNat

end

end A123755.P12219466757182040848

/-! ## A123755.P9289223633947639644

`A118291(A043318(n+1))%A091385(n+5)`
-/

namespace A123755.P9289223633947639644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118291 (A043318 (n + 1)).toNat) (A091385 (n + 5))

end

end A123755.P9289223633947639644

/-! ## A123755.P11928026490748647069

`A118291(A043318(n+1))-A094518(A033623(n+1))`
-/

namespace A123755.P11928026490748647069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118291 (A043318 (n + 1)).toNat - A094518 (A033623 (n + 1)).toNat

end

end A123755.P11928026490748647069

/-!
# A123757: a(0)=1. a(n) = sum of the earlier terms which are divisible by (the number of 1's in the binary representation of n).

The programs for A123757, there is no canonical definition to state claims against.
-/

/-! ## A123757.P16971798923191979094

`A000924(A000108(n+1)-A002530(n))`
-/

namespace A123757.P16971798923191979094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000924 (A000108 (n + 1) - A002530 n).toNat

end

end A123757.P16971798923191979094

/-! ## A123757.P1437987285552833841

`A003963(n+1)*A191090(A290113(n))`
-/

namespace A123757.P1437987285552833841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) * A191090 (A290113 n).toNat

end

end A123757.P1437987285552833841

/-! ## A123757.P15678259811507969412

`lcm(A172133(n+1), A301830(A057574(n)))`
-/

namespace A123757.P15678259811507969412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A172133 (n + 1)) (A301830 (A057574 n).toNat)

end

end A123757.P15678259811507969412

/-!
# A123758: Expansion of q^(-1/3)*eta(q)*eta(q^4)*eta(q^5)/eta(q^2) in powers of q.

The programs for A123758, there is no canonical definition to state claims against.
-/

/-! ## A123758.P11983411355580495272

`A087960(n+3)*A123759(2*n)`
-/

namespace A123758.P11983411355580495272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (n + 3) * A123759 (2 * n)

end

end A123758.P11983411355580495272

/-! ## A123758.P14888549241871694802

`-A123759(Δ[A000566(n)])`
-/

namespace A123758.P14888549241871694802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A123759 (f1 (n + 1) - f1 n).toNat

end

end A123758.P14888549241871694802

/-! ## A123758.P9072656097981221548

`A319998(4*n+1)-A123759(5*n+1)`
-/

namespace A123758.P9072656097981221548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (4 * n + 1) - A123759 (5 * n + 1)

end

end A123758.P9072656097981221548

/-! ## A123758.P10455117812177795063

`A000007(n+1)-A123759(Δ[A000566(n)])`
-/

namespace A123758.P10455117812177795063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A123759 (f1 (n + 1) - f1 n).toNat

end

end A123758.P10455117812177795063

/-! ## A123758.P2883294979826210005

`A008683(4*(n+1))-A123759(Δ[A000566(n)])`
-/

namespace A123758.P2883294979826210005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - A123759 (f1 (n + 1) - f1 n).toNat

end

end A123758.P2883294979826210005

/-!
# A123759: Expansion of f(-q)*psi(-q^5) in powers of q where f(), psi() are Ramanujan theta functions.

The programs for A123759, there is no canonical definition to state claims against.
-/

/-! ## A123759.P5174697301800833878

`-A123758(5*n+3)`
-/

namespace A123759.P5174697301800833878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A123758 (5 * n + 3)

end

end A123759.P5174697301800833878

/-! ## A123759.P10519100358968409092

`A000007(n+1)-A123758(Δ[A005475(n)])`
-/

namespace A123759.P10519100358968409092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A123758 (f1 (n + 1) - f1 n).toNat

end

end A123759.P10519100358968409092

/-! ## A123759.P3173574618183122402

`A000038(n+1)-A123758(Δ[A005475(n)])`
-/

namespace A123759.P3173574618183122402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A123758 (f1 (n + 1) - f1 n).toNat

end

end A123759.P3173574618183122402

/-! ## A123759.P10201789839497113353

`A000035(2*n)-A123758(Δ[A005475(n)])`
-/

namespace A123759.P10201789839497113353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A123758 (f1 (n + 1) - f1 n).toNat

end

end A123759.P10201789839497113353

/-! ## A123759.P1039350150509657368

`A178333(2*n)-A123758(Δ[A005475(n)])`
-/

namespace A123759.P1039350150509657368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (2 * n) - A123758 (f1 (n + 1) - f1 n).toNat

end

end A123759.P1039350150509657368

/-! ## A123759.P17589255325211102076

`A052928(n)%2-A123758(Δ[A005475(n)])`
-/

namespace A123759.P17589255325211102076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052928 n) 2 - A123758 (f1 (n + 1) - f1 n).toNat

end

end A123759.P17589255325211102076

/-! ## A123759.P11920806488099915541

`A142150(2*n+1)-A123758(Δ[A005475(n)])`
-/

namespace A123759.P11920806488099915541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * n + 1) - A123758 (f1 (n + 1) - f1 n).toNat

end

end A123759.P11920806488099915541

/-! ## A123759.P15785118636168395634

`A000122(8*n+6)-A123758(Δ[A005475(n)])`
-/

namespace A123759.P15785118636168395634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (8 * n + 6) - A123758 (f1 (n + 1) - f1 n).toNat

end

end A123759.P15785118636168395634

/-!
# A123760: Numbers whose binary expansion is 1xy100...0 where x,y = 0 or 1.

The programs for A123760, the canonical program `A123760.P18089597763334133006` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123760 has offset 1).

The definition of A123760 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123760.P18089597763334133006

`2*a(n-4)` with `a(0)=9, a(1)=11, a(2)=13, a(3)=15`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123760

/-- `2*a(n-4)` -/
def P18089597763334133006.Spec : Prop :=
  ∀ n, (P18089597763334133006.a n : ℤ) = A123760 (n + 1)

theorem P18089597763334133006.correct : P18089597763334133006.Spec := by
  intro n
  simp only [A123760, Nat.add_sub_cancel]

end A123760

/-! ## A123760.P6752881588127256295

`a(n-4)+a(n-4)` with `a(0)=9, a(1)=11, a(2)=13, a(3)=15`
-/

namespace A123760.P6752881588127256295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9, 11, 13, 15] fun n a =>
  a (n - 4) + a (n - 4)

end

end A123760.P6752881588127256295

namespace A123760

/-- `a(n-4)+a(n-4)` -/
def P6752881588127256295.Spec : Prop :=
  ∀ n, (P6752881588127256295.a n : ℤ) = A123760 (n + 1)

theorem P6752881588127256295.correct : P6752881588127256295.Spec := by
  intro n
  simp only [A123760, Nat.add_sub_cancel, A123760.P6752881588127256295.a, A123760.P18089597763334133006.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A123760

/-! ## A123760.P12362168684135211572

`A246076(2*n+9)`
-/

namespace A123760.P12362168684135211572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246076 (2 * n + 9)

end

end A123760.P12362168684135211572

namespace A123760

/-- `A246076(2*n+9)` -/
def P12362168684135211572.Spec : Prop :=
  ∀ n, P12362168684135211572.a n = A123760 (n + 1)

end A123760

/-! ## A123760.P13767368124291497303

`2^floor(n/4)+A288732(n)+6`
-/

namespace A123760.P13767368124291497303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ) + (A288732 n + 6 : ℚ)

end

end A123760.P13767368124291497303

namespace A123760

/-- `2^floor(n/4)+A288732(n)+6` -/
def P13767368124291497303.Spec : Prop :=
  ∀ n, P13767368124291497303.a n = (A123760 (n + 1) : ℚ)

end A123760

/-! ## A123760.P16269225142395368303

`record[A246076(A093178(n+9))]`
-/

namespace A123760.P16269225142395368303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246076 (A093178 (n + 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123760.P16269225142395368303

namespace A123760

/-- `record[A246076(A093178(n+9))]` -/
def P16269225142395368303.Spec : Prop :=
  ∀ n, P16269225142395368303.a n = A123760 (n + 1)

end A123760

/-!
# A123761: Let k(n) = mod(3,n)-1. Then a(n) = 4*a(n-1) if n is odd, otherwise ((5+k(n))/4)*a(n-1), with a(0) = 1, a(1) = 2.

The programs for A123761, the canonical program `A123761.P3398843332650839936` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123761 has offset 0).

The definition of A123761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123761.P3398843332650839936

`120*a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=12, a(4)=15, a(5)=60, a(6)=60`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123761

/-- `120*a(n-6)` -/
def P3398843332650839936.Spec : Prop :=
  ∀ n, (P3398843332650839936.a n : ℤ) = A123761 n

theorem P3398843332650839936.correct : P3398843332650839936.Spec := by
  intro n
  simp only [A123761]

end A123761

/-!
# A123763: Number of ways, counted up to symmetry, to build a contiguous building with n LEGO blocks of size 1 X 2 which is symmetric after a rotation by 180 degrees.

The programs for A123763, there is no canonical definition to state claims against.
-/

/-! ## A123763.P15812378627454929171

`or(n, A318509(A205806(n+1)))`
-/

namespace A123763.P15812378627454929171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A318509 (A205806 (n + 1)).toNat)

end

end A123763.P15812378627454929171

/-! ## A123763.P2687031981458228756

`A353355(A001790(n))+A081166(n)`
-/

namespace A123763.P2687031981458228756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353355 (A001790 n).toNat + A081166 n

end

end A123763.P2687031981458228756

/-!
# A123764: Number of ways, counted up to symmetry, to build a contiguous building with n LEGO blocks of size 1 X 2 which is flat, i.e., with all blocks in parallel position.

The programs for A123764, there is no canonical definition to state claims against.
-/

/-! ## A123764.P11390419882638544379

`A151537(n+1)-A001899(A041059(n))`
-/

namespace A123764.P11390419882638544379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151537 (n + 1) - A001899 (A041059 n).toNat

end

end A123764.P11390419882638544379

/-! ## A123764.P15092161800082929273

`A127287(A151537(n+1))`
-/

namespace A123764.P15092161800082929273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A151537 (n + 1)).toNat

end

end A123764.P15092161800082929273

/-! ## A123764.P552672116876431137

`A197553(n+1)+A037815(A054726(n))`
-/

namespace A123764.P552672116876431137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197553 (n + 1) + A037815 (A054726 n).toNat

end

end A123764.P552672116876431137

/-!
# A123765: Number of ways, counted up to symmetry, to build a contiguous building with n LEGO blocks of size 1 X 2 which is flat, i.e., with all blocks in parallel position and symmetric after a rotation by 180 degrees.

The programs for A123765, there is no canonical definition to state claims against.
-/

/-! ## A123765.P11675059794391084871

`A347257(n+1)+A058260(A196601(n+1))`
-/

namespace A123765.P11675059794391084871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347257 (n + 1) + A058260 (A196601 (n + 1)).toNat

end

end A123765.P11675059794391084871

/-! ## A123765.P6752888148370035476

`A347257(n+1)+A088950(A292357(n+1))`
-/

namespace A123765.P6752888148370035476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347257 (n + 1) + A088950 (A292357 (n + 1)).toNat

end

end A123765.P6752888148370035476

/-! ## A123765.P4953993514490159682

`or(A036855(A240327(n+1)), A347257(n+1))`
-/

namespace A123765.P4953993514490159682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036855 (A240327 (n + 1)).toNat) (A347257 (n + 1))

end

end A123765.P4953993514490159682

/-! ## A123765.P7278110209709443049

`or(A096693(A347257(n+3)), A347257(n+1))`
-/

namespace A123765.P7278110209709443049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A096693 (A347257 (n + 3)).toNat) (A347257 (n + 1))

end

end A123765.P7278110209709443049

/-!
# A123767: Number of ways to build a contiguous building with n LEGO blocks of size 1 X 2 on top of a fixed block of the same size so that the building is symmetric after a rotation by 180 degrees.

The programs for A123767, there is no canonical definition to state claims against.
-/

/-! ## A123767.P2785934123207143217

`A094727(A014105(n)+(10^n+8)/9)`
-/

namespace A123767.P2785934123207143217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (SequenceMachineLib.roundAway ((A014105 n : ℚ) + (10 ^ n + 8 : ℚ) / 9)).toNat

end

end A123767.P2785934123207143217

/-! ## A123767.P3275094616559027899

`A188571(n)+A130517(A119033(n+1))`
-/

namespace A123767.P3275094616559027899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188571 n + A130517 (A119033 (n + 1)).toNat

end

end A123767.P3275094616559027899

/-!
# A123768: Number of ways to build a contiguous building with n LEGO blocks of size 1 X 2 on top of a fixed block of the same size so that the building is flat, i.e., with all blocks in parallel position.

The programs for A123768, there is no canonical definition to state claims against.
-/

/-! ## A123768.P143962116146589518

`A079631(A059482(n))+2`
-/

namespace A123768.P143962116146589518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079631 (A059482 n).toNat + 2

end

end A123768.P143962116146589518

/-!
# A123771: Number of ways, counted up to symmetry, to build a contiguous building with n LEGO blocks of size 1 X 3 which is symmetric after a rotation by 180 degrees.

The programs for A123771, there is no canonical definition to state claims against.
-/

/-! ## A123771.P8818518354409377905

`A151524(n+1)*A342793(A237254(n+1))`
-/

namespace A123771.P8818518354409377905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151524 (n + 1) * A342793 (A237254 (n + 1)).toNat

end

end A123771.P8818518354409377905

/-!
# A123772: Number of ways, counted up to symmetry, to build a contiguous building with n LEGO blocks of size 1 X 3 which is flat, i.e., with all blocks in parallel position.

The programs for A123772, there is no canonical definition to state claims against.
-/

/-! ## A123772.P11964788369608644181

`A057475(ceil(exp(n)²))`
-/

namespace A123772.P11964788369608644181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057475 ⌈Real.exp (n : ℝ) ^ 2⌉.toNat

end

end A123772.P11964788369608644181

/-!
# A123773: Number of ways, counted up to symmetry, to build a contiguous building with n LEGO blocks of size 1 X 3 which is flat, i.e., with all blocks in parallel position and symmetric after a rotation by 180 degrees.

The programs for A123773, there is no canonical definition to state claims against.
-/

/-! ## A123773.P1526053390103078201

`A340764(A225188(n+1)+A027187(n))`
-/

namespace A123773.P1526053390103078201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A225188 (n + 1) + A027187 n).toNat

end

end A123773.P1526053390103078201

/-! ## A123773.P6929639761774576131

`A340764(A225188(n+1)+A035457(n))`
-/

namespace A123773.P6929639761774576131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A225188 (n + 1) + A035457 n).toNat

end

end A123773.P6929639761774576131

/-! ## A123773.P10888062286733224686

`A340764(A286224(n)+A225188(n+1))`
-/

namespace A123773.P10888062286733224686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A286224 n + A225188 (n + 1)).toNat

end

end A123773.P10888062286733224686

/-! ## A123773.P927826472361279024

`A340764(A225188(n+1)+A225187(n+1))`
-/

namespace A123773.P927826472361279024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A225188 (n + 1) + A225187 (n + 1)).toNat

end

end A123773.P927826472361279024

/-!
# A123775: Number of ways to build a contiguous building with n LEGO blocks of size 1 X 3 on top of a fixed block of the same size so that the building is symmetric after a rotation by 180 degrees.

The programs for A123775, there is no canonical definition to state claims against.
-/

/-! ## A123775.P16880378079347243005

`∑[A171554(n+1)+A066208(3*n+1)]+1`
-/

namespace A123775.P16880378079347243005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171554 (n + 1) + A066208 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A123775.P16880378079347243005

/-!
# A123777: Number of ways to build a contiguous building with n LEGO blocks of size 1 X 3 on top of a fixed block of the same size so that the building is flat, i.e., with all blocks in parallel position and symmetric after a rotation by 180 degrees.

The programs for A123777, there is no canonical definition to state claims against.
-/

/-! ## A123777.P4446453601734080704

`A018892(n!)+A007059(n)`
-/

namespace A123777.P4446453601734080704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (Nat.factorial n) + A007059 n

end

end A123777.P4446453601734080704

/-! ## A123777.P4065615089653697612

`A348530(n+2)+A185664(A102726(n))`
-/

namespace A123777.P4065615089653697612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348530 (n + 2) + A185664 (A102726 n).toNat

end

end A123777.P4065615089653697612

/-!
# A123779: Number of ways, counted up to symmetry, to build a contiguous building with n LEGO blocks of size 1 X 4 which is symmetric after a rotation by 180 degrees.

The programs for A123779, there is no canonical definition to state claims against.
-/

/-! ## A123779.P129458152560759172

`A157892(3*A206765(n))`
-/

namespace A123779.P129458152560759172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157892 (3 * A206765 n).toNat

end

end A123779.P129458152560759172

/-!
# A123780: Number of ways, counted up to symmetry, to build a contiguous building with n LEGO blocks of size 1 X 4 which is flat, i.e., with all blocks in parallel position.

The programs for A123780, there is no canonical definition to state claims against.
-/

/-! ## A123780.P6977657481779352864

`A047241(A001190(3*n+1))+n`
-/

namespace A123780.P6977657481779352864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (A001190 (3 * n + 1)).toNat + (n : ℤ)

end

end A123780.P6977657481779352864

/-!
# A123785: Number of ways to build a contiguous building with n LEGO blocks of size 1 X 4 on top of a fixed block of the same size so that the building is flat, i.e., with all blocks in parallel position and symmetric after a rotation by 180 degrees.

The programs for A123785, there is no canonical definition to state claims against.
-/

/-! ## A123785.P10004787355073402732

`A112922(A005830(n)+3)`
-/

namespace A123785.P10004787355073402732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112922 (A005830 n + 3).toNat

end

end A123785.P10004787355073402732

/-! ## A123785.P1986751515021144758

`record[A185782(∑[A172031(n)])]`
-/

namespace A123785.P1986751515021144758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172031 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123785.P1986751515021144758

/-!
# A123787: Number of ways, counted up to symmetry, to build a contiguous building with n LEGO blocks of size 1 X 5 which is symmetric after a rotation by 180 degrees.

The programs for A123787, there is no canonical definition to state claims against.
-/

/-! ## A123787.P18255560022643993572

`A008330(A077386(n+1))`
-/

namespace A123787.P18255560022643993572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (A077386 (n + 1)).toNat

end

end A123787.P18255560022643993572

/-!
# A123793: Number of ways to build a contiguous building with n LEGO blocks of size 1 X 5 on top of a fixed block of the same size so that the building is flat, i.e., with all blocks in parallel position and symmetric after a rotation by 180 degrees.

The programs for A123793, there is no canonical definition to state claims against.
-/

/-! ## A123793.P16904875944120010544

`A144305(A057313(n))`
-/

namespace A123793.P16904875944120010544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144305 (A057313 n).toNat

end

end A123793.P16904875944120010544

/-! ## A123793.P13814385489123613755

`A144305(∑[A158384(n+1)])`
-/

namespace A123793.P13814385489123613755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144305 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A123793.P13814385489123613755

/-!
# A123795: Number of ways, counted up to symmetry, to build a contiguous building with n LEGO blocks of size 1 X 6 which is symmetric after a rotation by 180 degrees.

The programs for A123795, there is no canonical definition to state claims against.
-/

/-! ## A123795.P12284329302757265141

`A341272(n+1)%A328232(A217360(n))`
-/

namespace A123795.P12284329302757265141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341272 (n + 1)) (A328232 (A217360 n).toNat)

end

end A123795.P12284329302757265141

/-!
# A123797: Number of ways, counted up to symmetry, to build a contiguous building with n LEGO blocks of size 1 X 6 which is flat, i.e., with all blocks in parallel position and symmetric after a rotation by 180 degrees.

The programs for A123797, there is no canonical definition to state claims against.
-/

/-! ## A123797.P7343452209343073042

`A035936(A268433(n)²)`
-/

namespace A123797.P7343452209343073042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A268433 n ^ 2).toNat

end

end A123797.P7343452209343073042

/-! ## A123797.P6594753926376772015

`A183421(A391480(n)+A308135(n+1))`
-/

namespace A123797.P6594753926376772015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183421 (A391480 n + A308135 (n + 1)).toNat

end

end A123797.P6594753926376772015

