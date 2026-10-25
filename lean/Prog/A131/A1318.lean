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
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A131800: Period 4: repeat [1, 2, 5, 6].

The programs for A131800, the canonical program `A131800.P15183140047121067424` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131800 has offset 0).

The definition of A131800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131800.P15183140047121067424

`a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131800

/-- `a(n-4)` -/
def P15183140047121067424.Spec : Prop :=
  ∀ n, (P15183140047121067424.a n : ℤ) = A131800 n

theorem P15183140047121067424.correct : P15183140047121067424.Spec := by
  intro n
  simp only [A131800]

end A131800

/-!
# A131801: Increment each prime factor for each term of the least prime sequence A087443.

The programs for A131801, there is no canonical definition to state claims against.
-/

/-! ## A131801.P5065505782379198776

`A003961(A087443(n))`
-/

namespace A131801.P5065505782379198776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A087443 n).toNat

end

end A131801.P5065505782379198776

/-! ## A131801.P1354701769241729499

`∑{d}[A087443(n), A003972(#)]`
-/

namespace A131801.P1354701769241729499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003972 d

end

end A131801.P1354701769241729499

/-! ## A131801.P238685753665137783

`A045965(A087443(n))+A008683(2*(n+1)²)`
-/

namespace A131801.P238685753665137783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A087443 n).toNat + A008683 (2 * (n + 1) ^ 2)

end

end A131801.P238685753665137783

/-! ## A131801.P2860328279021158412

`A045965(A087443(n))-A000045(floor(1/(n+1)))`
-/

namespace A131801.P2860328279021158412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A087443 n).toNat - A000045 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A131801.P2860328279021158412

/-! ## A131801.P9952522189963615618

`A000040(n+1)%2+A045965(A087443(n))-1`
-/

namespace A131801.P9952522189963615618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 + (A045965 (A087443 n).toNat - 1)

end

end A131801.P9952522189963615618

/-!
# A131802: Sequence related to factorizations and prime signatures: a(1) = 1; for n>1, a(n) = A057567(n) - 2*A001055(n).

The programs for A131802, there is no canonical definition to state claims against.
-/

/-! ## A131802.P15718777154644322101

`abs(A339564(n+1)-Δ[A096276(n)])`
-/

namespace A131802.P15718777154644322101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A339564 (n + 1) - (f1 (n + 1) - f1 n)|

end

end A131802.P15718777154644322101

/-! ## A131802.P10309091201691824570

`abs(A001055(n+1)-A339564(n+1))`
-/

namespace A131802.P10309091201691824570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001055 (n + 1) - A339564 (n + 1)|

end

end A131802.P10309091201691824570

/-! ## A131802.P6178146891335297980

`abs(A028422(n+1)+1-A339564(n+1))`
-/

namespace A131802.P6178146891335297980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028422 (n + 1) + (1 - A339564 (n + 1))|

end

end A131802.P6178146891335297980

/-! ## A131802.P16644665254600719027

`abs(∑{d}[n+1, A050370(#)]-A339564(n+1))`
-/

namespace A131802.P16644665254600719027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), A050370 d - A339564 (n + 1)|

end

end A131802.P16644665254600719027

/-! ## A131802.P11753078930717695997

`abs(A344368(n+1)/(n+1)-A339564(n+1))`
-/

namespace A131802.P11753078930717695997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A344368 (n + 1) : ℚ) / (n + 1 : ℚ) - (A339564 (n + 1) : ℚ)|

end

end A131802.P11753078930717695997

/-! ## A131802.P15053748217272437358

`A130839(A101296(n+1))`
-/

namespace A131802.P15053748217272437358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130839 (A101296 (n + 1)).toNat

end

end A131802.P15053748217272437358

/-! ## A131802.P9720696393323713405

`A001055(2*A064988(n+1))%A004277(A001055(n+1))`
-/

namespace A131802.P9720696393323713405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (2 * A064988 (n + 1)).toNat) (A004277 (A001055 (n + 1)).toNat)

end

end A131802.P9720696393323713405

/-! ## A131802.P16667468203704595028

`abs(A167688(n+1)+A033273(n+1)-A108455(∑[n+2]))`
-/

namespace A131802.P16667468203704595028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167688 (n + 1) + A033273 (n + 1) - A108455 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A131802.P16667468203704595028

/-!
# A131804: Antidiagonal sums of triangular array T: T(j,k) = -(k+1)/2 for odd k, T(j,k) = 0 for k = 0, T(j,k) = j+1-k/2 for even k > 0; 0 <= k <= j.

The programs for A131804, the canonical program `A131804.P17602890700223811981` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131804 has offset 0).

The definition of A131804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131804.P17602890700223811981

`∑[A131505(abs(1-n))]+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131804

/-- `∑[A131505(abs(1-n))]+1` -/
def P17602890700223811981.Spec : Prop :=
  ∀ n, P17602890700223811981.a n = A131804 n

theorem P17602890700223811981.correct : P17602890700223811981.Spec := by
  intro n
  simp only [A131804]

end A131804

/-! ## A131804.P12980225452266818020

`A131505(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A131804.P12980225452266818020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A131505 (n - 1) + a (n - 1)

end

end A131804.P12980225452266818020

namespace A131804

/-- `A131505(n-1)+a(n-1)` -/
def P12980225452266818020.Spec : Prop :=
  ∀ n, P12980225452266818020.a n = A131804 n

end A131804

/-! ## A131804.P6836118997997048383

`∑[A131505(A057428(n)+n)]`
-/

namespace A131804.P6836118997997048383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131505 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131804.P6836118997997048383

namespace A131804

/-- `∑[A131505(A057428(n)+n)]` -/
def P6836118997997048383.Spec : Prop :=
  ∀ n, P6836118997997048383.a n = A131804 n

end A131804

/-! ## A131804.P4716577403643933678

`∑[A004524(n)-A077814(n)]`
-/

namespace A131804.P4716577403643933678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n - A077814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131804.P4716577403643933678

namespace A131804

/-- `∑[A004524(n)-A077814(n)]` -/
def P4716577403643933678.Spec : Prop :=
  ∀ n, P4716577403643933678.a n = A131804 n

end A131804

/-! ## A131804.P304882829289574069

`A011848(n)-∑[A077814(n)]`
-/

namespace A131804.P304882829289574069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131804.P304882829289574069

namespace A131804

/-- `A011848(n)-∑[A077814(n)]` -/
def P304882829289574069.Spec : Prop :=
  ∀ n, P304882829289574069.a n = A131804 n

end A131804

/-! ## A131804.P2538331700228850605

`∑[A131505(A004273(n)-n)]`
-/

namespace A131804.P2538331700228850605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131505 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131804.P2538331700228850605

namespace A131804

/-- `∑[A131505(A004273(n)-n)]` -/
def P2538331700228850605.Spec : Prop :=
  ∀ n, P2538331700228850605.a n = A131804 n

end A131804

/-! ## A131804.P15900896776958176393

`∑[∑[A001057(A028242(n))]-1]`
-/

namespace A131804.P15900896776958176393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A028242 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131804.P15900896776958176393

namespace A131804

/-- `∑[∑[A001057(A028242(n))]-1]` -/
def P15900896776958176393.Spec : Prop :=
  ∀ n, P15900896776958176393.a n = A131804 n

end A131804

/-! ## A131804.P14797524437836370785

`∑[A131505(n-A006046(n)%2)]`
-/

namespace A131804.P14797524437836370785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131505 ((n : ℤ) - Int.tmod (A006046 n) 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131804.P14797524437836370785

namespace A131804

/-- `∑[A131505(n-A006046(n)%2)]` -/
def P14797524437836370785.Spec : Prop :=
  ∀ n, P14797524437836370785.a n = A131804 n

end A131804

/-! ## A131804.P15736898619502914700

`A008621(n)*A080513(n)-(n+1)`
-/

namespace A131804.P15736898619502914700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n * A080513 n - (n + 1 : ℤ)

end

end A131804.P15736898619502914700

namespace A131804

/-- `A008621(n)*A080513(n)-(n+1)` -/
def P15736898619502914700.Spec : Prop :=
  ∀ n, P15736898619502914700.a n = A131804 n

end A131804

/-! ## A131804.P4263694073177938855

`∑[A002265(n)-A001057(A142150(n))]`
-/

namespace A131804.P4263694073177938855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n - A001057 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131804.P4263694073177938855

namespace A131804

/-- `∑[A002265(n)-A001057(A142150(n))]` -/
def P4263694073177938855.Spec : Prop :=
  ∀ n, P4263694073177938855.a n = A131804 n

end A131804

/-! ## A131804.P5505660033835042926

`A004526(A004526(n))*A080513(n)-A004526(n)`
-/

namespace A131804.P5505660033835042926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 n).toNat * A080513 n - A004526 n

end

end A131804.P5505660033835042926

namespace A131804

/-- `A004526(A004526(n))*A080513(n)-A004526(n)` -/
def P5505660033835042926.Spec : Prop :=
  ∀ n, P5505660033835042926.a n = A131804 n

end A131804

/-! ## A131804.P17705335386829254101

`∑[A131728(n+1)-1]`
-/

namespace A131804.P17705335386829254101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131728 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131804.P17705335386829254101

namespace A131804

/-- `∑[A131728(n+1)-1]` -/
def P17705335386829254101.Spec : Prop :=
  ∀ n, P17705335386829254101.a n = A131804 n

end A131804

/-! ## A131804.P15019582717496788531

`A008619(n+1)*A110655(n+1)-(n+1)`
-/

namespace A131804.P15019582717496788531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) * A110655 (n + 1) - (n + 1 : ℤ)

end

end A131804.P15019582717496788531

namespace A131804

/-- `A008619(n+1)*A110655(n+1)-(n+1)` -/
def P15019582717496788531.Spec : Prop :=
  ∀ n, P15019582717496788531.a n = A131804 n

end A131804

/-! ## A131804.P5564713618403180607

`∑[A077814(n+2)-1]`
-/

namespace A131804.P5564713618403180607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131804.P5564713618403180607

namespace A131804

/-- `∑[A077814(n+2)-1]` -/
def P5564713618403180607.Spec : Prop :=
  ∀ n, P5564713618403180607.a n = A131804 n

end A131804

/-! ## A131804.P1785893299078176766

`A159915(n+3)-(n+1)`
-/

namespace A131804.P1785893299078176766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159915 (n + 3) - (n + 1 : ℤ)

end

end A131804.P1785893299078176766

namespace A131804

/-- `A159915(n+3)-(n+1)` -/
def P1785893299078176766.Spec : Prop :=
  ∀ n, P1785893299078176766.a n = A131804 n

end A131804

/-! ## A131804.P12768256699395208948

`Δ[A159914(n+3)]-(n+1)`
-/

namespace A131804.P12768256699395208948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159914 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A131804.P12768256699395208948

namespace A131804

/-- `Δ[A159914(n+3)]-(n+1)` -/
def P12768256699395208948.Spec : Prop :=
  ∀ n, P12768256699395208948.a n = A131804 n

end A131804

/-! ## A131804.P2961602264344134576

`A008619(n+1)*A110656(2*n+1)-(n+1)`
-/

namespace A131804.P2961602264344134576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) * A110656 (2 * n + 1) - (n + 1 : ℤ)

end

end A131804.P2961602264344134576

namespace A131804

/-- `A008619(n+1)*A110656(2*n+1)-(n+1)` -/
def P2961602264344134576.Spec : Prop :=
  ∀ n, P2961602264344134576.a n = A131804 n

end A131804

/-! ## A131804.P15305900081676812533

`A110655(2*n)*A110655(n+1)-A057353(n+1)`
-/

namespace A131804.P15305900081676812533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * n) * A110655 (n + 1) - A057353 (n + 1)

end

end A131804.P15305900081676812533

namespace A131804

/-- `A110655(2*n)*A110655(n+1)-A057353(n+1)` -/
def P15305900081676812533.Spec : Prop :=
  ∀ n, P15305900081676812533.a n = A131804 n

end A131804

/-! ## A131804.P13901123973090931326

`A002265(A104563(A098181(n+1)))-(n+1)`
-/

namespace A131804.P13901123973090931326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A104563 (A098181 (n + 1)).toNat).toNat - (n + 1 : ℤ)

end

end A131804.P13901123973090931326

namespace A131804

/-- `A002265(A104563(A098181(n+1)))-(n+1)` -/
def P13901123973090931326.Spec : Prop :=
  ∀ n, P13901123973090931326.a n = A131804 n

end A131804

/-!
# A131805: Row sums of triangular array T: T(j,k) = -(k+1)/2 for odd k, T(j,k) = 0 for k = 0, T(j,k) = j+1-k/2 for even k > 0; 0 <= k <= j.

The programs for A131805, the canonical program `A131805.P4135116826335154560` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131805 has offset 0).

The definition of A131805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131805.P4135116826335154560

`(2*n*(n-1)+(2*n+3)*(-1)^n-3)/8`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131805

/-- `(2*n*(n-1)+(2*n+3)*(-1)^n-3)/8` -/
def P4135116826335154560.Spec : Prop :=
  ∀ n, P4135116826335154560.a n = (A131805 n : ℚ)

end A131805

/-! ## A131805.P10612851447178224604

`-A131118(2*n)`
-/

namespace A131805.P10612851447178224604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A131118 (2 * n)

end

end A131805.P10612851447178224604

namespace A131805

/-- `-A131118(2*n)` -/
def P10612851447178224604.Spec : Prop :=
  ∀ n, P10612851447178224604.a n = A131805 n

end A131805

/-! ## A131805.P18160863549533927684

`∑[or(n, -(n%2))]`
-/

namespace A131805.P18160863549533927684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131805.P18160863549533927684

namespace A131805

/-- `∑[or(n, -(n%2))]` -/
def P18160863549533927684.Spec : Prop :=
  ∀ n, P18160863549533927684.a n = A131805 n

end A131805

/-! ## A131805.P6866511156781609742

`∑[or(n, gcd(2, n)-2)]`
-/

namespace A131805.P6866511156781609742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((Nat.gcd 2 n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131805.P6866511156781609742

namespace A131805

/-- `∑[or(n, gcd(2, n)-2)]` -/
def P6866511156781609742.Spec : Prop :=
  ∀ n, P6866511156781609742.a n = A131805 n

end A131805

/-! ## A131805.P8117695917708322837

`∑[C(xor(1, n), n)-1]`
-/

namespace A131805.P8117695917708322837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.xor 1 n) n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131805.P8117695917708322837

namespace A131805

/-- `∑[C(xor(1, n), n)-1]` -/
def P8117695917708322837.Spec : Prop :=
  ∀ n, P8117695917708322837.a n = A131805 n

end A131805

/-! ## A131805.P17769717542939792593

`∑[or(n, n-lcm(2, n))]`
-/

namespace A131805.P17769717542939792593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - (Nat.lcm 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131805.P17769717542939792593

namespace A131805

/-- `∑[or(n, n-lcm(2, n))]` -/
def P17769717542939792593.Spec : Prop :=
  ∀ n, P17769717542939792593.a n = A131805 n

end A131805

/-! ## A131805.P6179561203857115708

`∑[or(n, n*(-1)^n)]`
-/

namespace A131805.P6179561203857115708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) * (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131805.P6179561203857115708

namespace A131805

/-- `∑[or(n, n*(-1)^n)]` -/
def P6179561203857115708.Spec : Prop :=
  ∀ n, P6179561203857115708.a n = A131805 n

end A131805

/-! ## A131805.P18274780146557907161

`floor(n/2)²-and(1, n)`
-/

namespace A131805.P18274780146557907161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ ^ 2 - (Nat.land 1 n : ℤ)

end

end A131805.P18274780146557907161

namespace A131805

/-- `floor(n/2)²-and(1, n)` -/
def P18274780146557907161.Spec : Prop :=
  ∀ n, P18274780146557907161.a n = A131805 n

end A131805

/-! ## A131805.P2828195442241059113

`∑[gcd(n+2, and(1, n))-2]`
-/

namespace A131805.P2828195442241059113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 2) (Nat.land 1 n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131805.P2828195442241059113

namespace A131805

/-- `∑[gcd(n+2, and(1, n))-2]` -/
def P2828195442241059113.Spec : Prop :=
  ∀ n, P2828195442241059113.a n = A131805 n

end A131805

/-! ## A131805.P7790348035512912382

`∑[n-(n+1)*and(1, n)]`
-/

namespace A131805.P7790348035512912382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n + 1) * Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131805.P7790348035512912382

namespace A131805

/-- `∑[n-(n+1)*and(1, n)]` -/
def P7790348035512912382.Spec : Prop :=
  ∀ n, P7790348035512912382.a n = A131805 n

end A131805

/-! ## A131805.P17337480773380113896

`∑[n-lcm(n+1, and(1, n))]`
-/

namespace A131805.P17337480773380113896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.lcm (n + 1) (Nat.land 1 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131805.P17337480773380113896

namespace A131805

/-- `∑[n-lcm(n+1, and(1, n))]` -/
def P17337480773380113896.Spec : Prop :=
  ∀ n, P17337480773380113896.a n = A131805 n

end A131805

/-! ## A131805.P9019768409904174435

`∑[-(-n)^and(1, n+1)]`
-/

namespace A131805.P9019768409904174435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-(n : ℤ)) ^ Nat.land 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131805.P9019768409904174435

namespace A131805

/-- `∑[-(-n)^and(1, n+1)]` -/
def P9019768409904174435.Spec : Prop :=
  ∀ n, P9019768409904174435.a n = A131805 n

end A131805

/-! ## A131805.P1955266083212677489

`-∑[(-n)^and(1, n-1)]`
-/

namespace A131805.P1955266083212677489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ) : ℚ) ^ (Int.land 1 ((n : ℤ) - 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131805.P1955266083212677489

namespace A131805

/-- `-∑[(-n)^and(1, n-1)]` -/
def P1955266083212677489.Spec : Prop :=
  ∀ n, P1955266083212677489.a n = (A131805 n : ℚ)

end A131805

/-! ## A131805.P7097258134918452378

`ceil((n+1)*xor(1, n-2)/4)`
-/

namespace A131805.P7097258134918452378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) * ((Int.xor 1 ((n : ℤ) - 2) : ℚ) / 4)⌉

end

end A131805.P7097258134918452378

namespace A131805

/-- `ceil((n+1)*xor(1, n-2)/4)` -/
def P7097258134918452378.Spec : Prop :=
  ∀ n, P7097258134918452378.a n = A131805 n

end A131805

/-! ## A131805.P14986581171322844256

`round((n+1)*xor(1, n-2)/4)`
-/

namespace A131805.P14986581171322844256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((Int.xor 1 ((n : ℤ) - 2) : ℚ) / 4))

end

end A131805.P14986581171322844256

namespace A131805

/-- `round((n+1)*xor(1, n-2)/4)` -/
def P14986581171322844256.Spec : Prop :=
  ∀ n, P14986581171322844256.a n = A131805 n

end A131805

/-! ## A131805.P10295932948661299753

`∑[(n+2)^and(1, n+1)-2]`
-/

namespace A131805.P10295932948661299753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ Nat.land 1 (n + 1) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131805.P10295932948661299753

namespace A131805

/-- `∑[(n+2)^and(1, n+1)-2]` -/
def P10295932948661299753.Spec : Prop :=
  ∀ n, P10295932948661299753.a n = A131805 n

end A131805

/-! ## A131805.P6450578062314133078

`∑[C(n+2, and(1, n+1))-2]`
-/

namespace A131805.P6450578062314133078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) (Nat.land 1 (n + 1)) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131805.P6450578062314133078

namespace A131805

/-- `∑[C(n+2, and(1, n+1))-2]` -/
def P6450578062314133078.Spec : Prop :=
  ∀ n, P6450578062314133078.a n = A131805 n

end A131805

/-! ## A131805.P13361632439455651552

`∑[n-C(a(n-1)+2, n)]` with `a(0)=0`
-/

namespace A131805.P13361632439455651552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - (Nat.choose (f1 (n - 1) + 2).toNat n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131805.P13361632439455651552

namespace A131805

/-- `∑[n-C(a(n-1)+2, n)]` -/
def P13361632439455651552.Spec : Prop :=
  ∀ n, P13361632439455651552.a n = A131805 n

end A131805

/-! ## A131805.P2590903949051125639

`∑[1-a(n-1)]²-(n+1)` with `a(0)=1`
-/

namespace A131805.P2590903949051125639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1 : ℤ)

end

end A131805.P2590903949051125639

namespace A131805

/-- `∑[1-a(n-1)]²-(n+1)` -/
def P2590903949051125639.Spec : Prop :=
  ∀ n, P2590903949051125639.a n = A131805 n

end A131805

/-! ## A131805.P18039919797612401224

`floor(n²/2-(a(n-1)+n))` with `a(0)=0`
-/

namespace A131805.P18039919797612401224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n ^ 2 : ℚ) / 2 - (a (n - 1) + (n : ℤ) : ℚ)⌋

end

end A131805.P18039919797612401224

namespace A131805

/-- `floor(n²/2-(a(n-1)+n))` -/
def P18039919797612401224.Spec : Prop :=
  ∀ n, P18039919797612401224.a n = A131805 n

end A131805

/-!
# A131806: Period 4: repeat [0, 2, 4, 6].

The programs for A131806, the canonical program `A131806.P3016777640950871485` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131806 has offset 1).

The definition of A131806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131806.P3016777640950871485

`a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131806

/-- `a(n-4)` -/
def P3016777640950871485.Spec : Prop :=
  ∀ n, (P3016777640950871485.a n : ℤ) = A131806 (n + 1)

theorem P3016777640950871485.correct : P3016777640950871485.Spec := by
  intro n
  simp only [A131806, Nat.add_sub_cancel]

end A131806

/-!
# A131807: Partial sums of A131377.

The programs for A131807, the canonical program `A131807.P6505861306759269601` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131807 has offset 0).

The definition of A131807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131807.P6505861306759269601

`∑[∑[C(∑{p}[n, #], n)]%2]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131807

/-- `∑[∑[C(∑{p}[n, #], n)]%2]` -/
def P6505861306759269601.Spec : Prop :=
  ∀ n, (P6505861306759269601.a n : ℤ) = A131807 n

theorem P6505861306759269601.correct : P6505861306759269601.Spec := by
  intro n
  simp only [A131807]

end A131807

/-! ## A131807.P1619657929101032684

`∑[and(1, ∑[C(∑{p}[n, #], n)])]`
-/

namespace A131807.P1619657929101032684
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f3 n), p) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131807.P1619657929101032684

namespace A131807

/-- `∑[and(1, ∑[C(∑{p}[n, #], n)])]` -/
def P1619657929101032684.Spec : Prop :=
  ∀ n, (P1619657929101032684.a n : ℤ) = A131807 n

theorem P1619657929101032684.correct : P1619657929101032684.Spec := by
  intro n
  simp only [A131807, Nat.add_sub_cancel, A131807.P1619657929101032684.f3, A131807.P1619657929101032684.f2, A131807.P1619657929101032684.f1, A131807.P1619657929101032684.a, A131807.P6505861306759269601.f3, A131807.P6505861306759269601.f2, A131807.P6505861306759269601.f1, A131807.P6505861306759269601.a, SequenceMachineLib.memo_apply]
  try simp

end A131807

/-! ## A131807.P1272130729645708670

`∑[gcd(2, ∑[∑{e}[n, #]!])]-n`
-/

namespace A131807.P1272130729645708670
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A131807.P1272130729645708670

namespace A131807

/-- `∑[gcd(2, ∑[∑{e}[n, #]!])]-n` -/
def P1272130729645708670.Spec : Prop :=
  ∀ n, P1272130729645708670.a n = A131807 n

end A131807

/-! ## A131807.P4716870919042889552

`∑[1-∑[∑{p}[n, val(#, n)]]%2]`
-/

namespace A131807.P4716870919042889552
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), SequenceMachineLib.valuation p n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ j ∈ Finset.range (n + 1), f2 j) % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131807.P4716870919042889552

namespace A131807

/-- `∑[1-∑[∑{p}[n, val(#, n)]]%2]` -/
def P4716870919042889552.Spec : Prop :=
  ∀ n, P4716870919042889552.a n = A131807 n

end A131807

/-! ## A131807.P850801624475092030

`∑[A131377(n)]`
-/

namespace A131807.P850801624475092030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131807.P850801624475092030

namespace A131807

/-- `∑[A131377(n)]` -/
def P850801624475092030.Spec : Prop :=
  ∀ n, P850801624475092030.a n = A131807 n

theorem P850801624475092030.correct : P850801624475092030.Spec := by
  intro n
  simp only [A131807, Nat.add_sub_cancel, A131807.P850801624475092030.f1, A131807.P850801624475092030.a, A131807.P6505861306759269601.f3, A131807.P6505861306759269601.f2, A131807.P6505861306759269601.f1, A131807.P6505861306759269601.a, A131377, A131377.P17164050316230312322.f2, A131377.P17164050316230312322.f1, A131377.P17164050316230312322.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131807

/-! ## A131807.P134135225305449727

`∑[1-A131378(n)]`
-/

namespace A131807.P134135225305449727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A131378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131807.P134135225305449727

namespace A131807

/-- `∑[1-A131378(n)]` -/
def P134135225305449727.Spec : Prop :=
  ∀ n, P134135225305449727.a n = A131807 n

end A131807

/-! ## A131807.P6827953205892827781

`1-A131808(n)+n`
-/

namespace A131807.P6827953205892827781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A131808 n + (n : ℤ)

end

end A131807.P6827953205892827781

namespace A131807

/-- `1-A131808(n)+n` -/
def P6827953205892827781.Spec : Prop :=
  ∀ n, P6827953205892827781.a n = A131807 n

end A131807

/-! ## A131807.P3555609281706674863

`∑[and(1, ∑[A246681(n)])]`
-/

namespace A131807.P3555609281706674863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131807.P3555609281706674863

namespace A131807

/-- `∑[and(1, ∑[A246681(n)])]` -/
def P3555609281706674863.Spec : Prop :=
  ∀ n, P3555609281706674863.a n = A131807 n

end A131807

/-! ## A131807.P1301372317417700133

`∑[1-char[A057812(n+1)]]`
-/

namespace A131807.P1301372317417700133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057812 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131807.P1301372317417700133

namespace A131807

/-- `∑[1-char[A057812(n+1)]]` -/
def P1301372317417700133.Spec : Prop :=
  ∀ n, P1301372317417700133.a n = A131807 n

end A131807

/-! ## A131807.P1565622277881230229

`(A278603(n+1)+n+1)/2`
-/

namespace A131807.P1565622277881230229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278603 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A131807.P1565622277881230229

namespace A131807

/-- `(A278603(n+1)+n+1)/2` -/
def P1565622277881230229.Spec : Prop :=
  ∀ n, P1565622277881230229.a n = (A131807 n : ℚ)

end A131807

/-! ## A131807.P10995143938815373660

`A278603(n+1)+A131808(n)`
-/

namespace A131807.P10995143938815373660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 (n + 1) + A131808 n

end

end A131807.P10995143938815373660

namespace A131807

/-- `A278603(n+1)+A131808(n)` -/
def P10995143938815373660.Spec : Prop :=
  ∀ n, P10995143938815373660.a n = A131807 n

end A131807

/-! ## A131807.P13529714167108770768

`A142150(A065358(n)+n+2)`
-/

namespace A131807.P13529714167108770768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A065358 n + (n + 2 : ℤ)).toNat

end

end A131807.P13529714167108770768

namespace A131807

/-- `A142150(A065358(n)+n+2)` -/
def P13529714167108770768.Spec : Prop :=
  ∀ n, P13529714167108770768.a n = A131807 n

end A131807

/-! ## A131807.P6893774945965754006

`A131377(n+1)+A131808(n+1)+A065358(n)`
-/

namespace A131807.P6893774945965754006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131377 (n + 1) + (A131808 (n + 1) + A065358 n)

end

end A131807.P6893774945965754006

namespace A131807

/-- `A131377(n+1)+A131808(n+1)+A065358(n)` -/
def P6893774945965754006.Spec : Prop :=
  ∀ n, P6893774945965754006.a n = A131807 n

end A131807

/-! ## A131807.P3792574719943232101

`A065358(n+1)+A131808(n+1)+A071986(n+1)`
-/

namespace A131807.P3792574719943232101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065358 (n + 1) + (A131808 (n + 1) + A071986 (n + 1))

end

end A131807.P3792574719943232101

namespace A131807

/-- `A065358(n+1)+A131808(n+1)+A071986(n+1)` -/
def P3792574719943232101.Spec : Prop :=
  ∀ n, P3792574719943232101.a n = A131807 n

end A131807

/-! ## A131807.P10633235751283835597

`A065358(n+1)+A131808(n+1)+A131378(n+1)`
-/

namespace A131807.P10633235751283835597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065358 (n + 1) + (A131808 (n + 1) + A131378 (n + 1))

end

end A131807.P10633235751283835597

namespace A131807

/-- `A065358(n+1)+A131808(n+1)+A131378(n+1)` -/
def P10633235751283835597.Spec : Prop :=
  ∀ n, P10633235751283835597.a n = A131807 n

end A131807

/-! ## A131807.P4966217946619143259

`∑[char[n*A065357(n)]]`
-/

namespace A131807.P4966217946619143259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A065357 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131807.P4966217946619143259

namespace A131807

/-- `∑[char[n*A065357(n)]]` -/
def P4966217946619143259.Spec : Prop :=
  ∀ n, (P4966217946619143259.a n : ℤ) = A131807 n

end A131807

/-! ## A131807.P7185715670602608828

`∑[A000035(∑[A002126(2*n)])]`
-/

namespace A131807.P7185715670602608828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131807.P7185715670602608828

namespace A131807

/-- `∑[A000035(∑[A002126(2*n)])]` -/
def P7185715670602608828.Spec : Prop :=
  ∀ n, P7185715670602608828.a n = A131807 n

end A131807

/-!
# A131808: Partial sums of A131378.

The programs for A131808, the canonical program `A131808.P5716250272005777653` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131808 has offset 0).

The definition of A131808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131808.P16698278350020566535

`∑[∑[char[p?[xor(1, n)]]]%2]`
-/

namespace A131808.P16698278350020566535
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131808.P16698278350020566535

namespace A131808

/-- `∑[∑[char[p?[xor(1, n)]]]%2]` -/
def P16698278350020566535.Spec : Prop :=
  ∀ n, (P16698278350020566535.a n : ℤ) = A131808 n

end A131808

/-! ## A131808.P2031954633138343580

`∑[and(1, ∑[char[p?[xor(1, n)]]])]`
-/

namespace A131808.P2031954633138343580
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131808.P2031954633138343580

namespace A131808

/-- `∑[and(1, ∑[char[p?[xor(1, n)]]])]` -/
def P2031954633138343580.Spec : Prop :=
  ∀ n, (P2031954633138343580.a n : ℤ) = A131808 n

end A131808

/-! ## A131808.P5716250272005777653

`∑[∑[∑{p}[n, val(#, n)]]%2]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131808

/-- `∑[∑[∑{p}[n, val(#, n)]]%2]` -/
def P5716250272005777653.Spec : Prop :=
  ∀ n, (P5716250272005777653.a n : ℤ) = A131808 n

theorem P5716250272005777653.correct : P5716250272005777653.Spec := by
  intro n
  simp only [A131808]

end A131808

/-! ## A131808.P9800914200632418797

`∑[∑[∑{p}[n, C(#, n)]]%2]`
-/

namespace A131808.P9800914200632418797
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.choose p n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131808.P9800914200632418797

namespace A131808

/-- `∑[∑[∑{p}[n, C(#, n)]]%2]` -/
def P9800914200632418797.Spec : Prop :=
  ∀ n, (P9800914200632418797.a n : ℤ) = A131808 n

end A131808

/-! ## A131808.P5665187042796332391

`∑[A131378(n)]`
-/

namespace A131808.P5665187042796332391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131808.P5665187042796332391

namespace A131808

/-- `∑[A131378(n)]` -/
def P5665187042796332391.Spec : Prop :=
  ∀ n, P5665187042796332391.a n = A131808 n

theorem P5665187042796332391.correct : P5665187042796332391.Spec := by
  intro n
  simp only [A131808, Nat.add_sub_cancel, A131808.P5665187042796332391.f1, A131808.P5665187042796332391.a, A131808.P5716250272005777653.f3, A131808.P5716250272005777653.f2, A131808.P5716250272005777653.f1, A131808.P5716250272005777653.a, A131378, A131378.P6354467565854677558.f2, A131378.P6354467565854677558.f1, A131378.P6354467565854677558.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131808

/-! ## A131808.P12764208463925011484

`∑[1-A131377(n)]`
-/

namespace A131808.P12764208463925011484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A131377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131808.P12764208463925011484

namespace A131808

/-- `∑[1-A131377(n)]` -/
def P12764208463925011484.Spec : Prop :=
  ∀ n, P12764208463925011484.a n = A131808 n

end A131808

/-! ## A131808.P17590902568699421625

`∑[A230980(n)%2]`
-/

namespace A131808.P17590902568699421625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230980 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131808.P17590902568699421625

namespace A131808

/-- `∑[A230980(n)%2]` -/
def P17590902568699421625.Spec : Prop :=
  ∀ n, P17590902568699421625.a n = A131808 n

end A131808

/-! ## A131808.P6349506212529476996

`1-A131807(n)+n`
-/

namespace A131808.P6349506212529476996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A131807 n + (n : ℤ)

end

end A131808.P6349506212529476996

namespace A131808

/-- `1-A131807(n)+n` -/
def P6349506212529476996.Spec : Prop :=
  ∀ n, P6349506212529476996.a n = A131808 n

end A131808

/-! ## A131808.P17006389465805641983

`(n-A065358(n))/2`
-/

namespace A131808.P17006389465805641983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A065358 n : ℚ) / 2

end

end A131808.P17006389465805641983

namespace A131808

/-- `(n-A065358(n))/2` -/
def P17006389465805641983.Spec : Prop :=
  ∀ n, P17006389465805641983.a n = (A131808 n : ℚ)

theorem P17006389465805641983.correct : P17006389465805641983.Spec := by
  intro n
  simp only [A131808, Nat.add_sub_cancel, A131808.P17006389465805641983.a, A131808.P5716250272005777653.f3, A131808.P5716250272005777653.f2, A131808.P5716250272005777653.f1, A131808.P5716250272005777653.a, A065358, A065358.P6265050914822267748.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131808

/-! ## A131808.P8672019057901500513

`∑[char[A057812(n+1)]]`
-/

namespace A131808.P8672019057901500513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057812 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131808.P8672019057901500513

namespace A131808

/-- `∑[char[A057812(n+1)]]` -/
def P8672019057901500513.Spec : Prop :=
  ∀ n, (P8672019057901500513.a n : ℤ) = A131808 n

end A131808

/-! ## A131808.P7824749025437657401

`∑[∑[A105700(n)]%2]`
-/

namespace A131808.P7824749025437657401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131808.P7824749025437657401

namespace A131808

/-- `∑[∑[A105700(n)]%2]` -/
def P7824749025437657401.Spec : Prop :=
  ∀ n, P7824749025437657401.a n = A131808 n

end A131808

/-! ## A131808.P13953324417743787976

`∑[(1-A065357(n))/2]`
-/

namespace A131808.P13953324417743787976
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A065357 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131808.P13953324417743787976

namespace A131808

/-- `∑[(1-A065357(n))/2]` -/
def P13953324417743787976.Spec : Prop :=
  ∀ n, P13953324417743787976.a n = (A131808 n : ℚ)

theorem P13953324417743787976.correct : P13953324417743787976.Spec := by
  intro n
  simp only [A131808, Nat.add_sub_cancel, A131808.P13953324417743787976.f1, A131808.P13953324417743787976.a, A131808.P5716250272005777653.f3, A131808.P5716250272005777653.f2, A131808.P5716250272005777653.f1, A131808.P5716250272005777653.a, A065357, A065357.P5981080689720192330.a, A131378, A131378.P6354467565854677558.f2, A131378.P6354467565854677558.f1, A131378.P6354467565854677558.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131808

/-! ## A131808.P5783610913870434559

`∑[∑[char[A000040(n+1)]]%2]`
-/

namespace A131808.P5783610913870434559
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131808.P5783610913870434559

namespace A131808

/-- `∑[∑[char[A000040(n+1)]]%2]` -/
def P5783610913870434559.Spec : Prop :=
  ∀ n, (P5783610913870434559.a n : ℤ) = A131808 n

end A131808

/-! ## A131808.P17543892288395103936

`∑[∑[char[A006530(n+2)]]%2]`
-/

namespace A131808.P17543892288395103936
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131808.P17543892288395103936

namespace A131808

/-- `∑[∑[char[A006530(n+2)]]%2]` -/
def P17543892288395103936.Spec : Prop :=
  ∀ n, (P17543892288395103936.a n : ℤ) = A131808 n

end A131808

/-! ## A131808.P5131183395563376004

`∑[∑[char[A020639(n+2)]]%2]`
-/

namespace A131808.P5131183395563376004
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131808.P5131183395563376004

namespace A131808

/-- `∑[∑[char[A020639(n+2)]]%2]` -/
def P5131183395563376004.Spec : Prop :=
  ∀ n, (P5131183395563376004.a n : ℤ) = A131808 n

end A131808

/-! ## A131808.P870338872952389308

`(n+1-A278603(n+1))/2`
-/

namespace A131808.P870338872952389308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A278603 (n + 1) : ℚ) / 2

end

end A131808.P870338872952389308

namespace A131808

/-- `(n+1-A278603(n+1))/2` -/
def P870338872952389308.Spec : Prop :=
  ∀ n, P870338872952389308.a n = (A131808 n : ℚ)

end A131808

/-! ## A131808.P10649926896748539191

`∑[comp[A018252(n+1)+n]%2]`
-/

namespace A131808.P10649926896748539191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131808.P10649926896748539191

namespace A131808

/-- `∑[comp[A018252(n+1)+n]%2]` -/
def P10649926896748539191.Spec : Prop :=
  ∀ n, (P10649926896748539191.a n : ℤ) = A131808 n

end A131808

/-! ## A131808.P6411571545088837862

`1-∑[(C(2, A000005(n))-a(n-1))²]+n` with `a(0)=1`
-/

namespace A131808.P6411571545088837862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((Nat.choose 2 (A000005 n).toNat : ℤ) - f1 (n - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A131808.P6411571545088837862

namespace A131808

/-- `1-∑[(C(2, A000005(n))-a(n-1))²]+n` -/
def P6411571545088837862.Spec : Prop :=
  ∀ n, P6411571545088837862.a n = A131808 n

end A131808

/-! ## A131808.P6022902111737955038

`n-A142150(A065358(n)+n)`
-/

namespace A131808.P6022902111737955038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A142150 (A065358 n + (n : ℤ)).toNat

end

end A131808.P6022902111737955038

namespace A131808

/-- `n-A142150(A065358(n)+n)` -/
def P6022902111737955038.Spec : Prop :=
  ∀ n, P6022902111737955038.a n = A131808 n

end A131808

/-! ## A131808.P636590541813664260

`A142150(n-A065358(n))`
-/

namespace A131808.P636590541813664260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 ((n : ℤ) - A065358 n).toNat

end

end A131808.P636590541813664260

namespace A131808

/-- `A142150(n-A065358(n))` -/
def P636590541813664260.Spec : Prop :=
  ∀ n, P636590541813664260.a n = A131808 n

end A131808

/-!
# A131809: Multiplicative persistence of Catalan numbers.

The programs for A131809, there is no canonical definition to state claims against.
-/

/-! ## A131809.P6089990362418908812

`A367419(A270831(n+3))%A000009(n)`
-/

namespace A131809.P6089990362418908812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367419 (A270831 (n + 3)).toNat) (A000009 n)

end

end A131809.P6089990362418908812

/-! ## A131809.P7653155043259062077

`A285097(A184318(3*n+2)*A274174(n))`
-/

namespace A131809.P7653155043259062077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A184318 (3 * n + 2) * A274174 n).toNat

end

end A131809.P7653155043259062077

/-!
# A131811: Number of symbolic sequences on n symbols that can be realized by the arrangement of the real roots of some polynomial of degree n and its derivatives.

The programs for A131811, there is no canonical definition to state claims against.
-/

/-! ## A131811.P16153800902836232328

`ceil(∑[n!]²/10)`
-/

namespace A131811.P16153800902836232328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 10⌉

end

end A131811.P16153800902836232328

/-!
# A131815: The 2n-th derivative of exp(1 - 1/(1 - x^2)) evaluated at 0.

The programs for A131815, there is no canonical definition to state claims against.
-/

/-! ## A131815.P1778758352918451092

`A001813(n)*A293116(n)`
-/

namespace A131815.P1778758352918451092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 n * A293116 n

end

end A131815.P1778758352918451092

/-! ## A131815.P2754770415024628914

`record[A109767(n)]*A293116(n)`
-/

namespace A131815.P2754770415024628914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A293116 n

end

end A131815.P2754770415024628914

/-! ## A131815.P9954772809799700895

`A067994(2*n)*A111884(n)`
-/

namespace A131815.P9954772809799700895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067994 (2 * n) * A111884 n

end

end A131815.P9954772809799700895

/-! ## A131815.P16980219633651934561

`A081125(2*n)*A293116(n)`
-/

namespace A131815.P16980219633651934561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081125 (2 * n) * A293116 n

end

end A131815.P16980219633651934561

/-! ## A131815.P10261794303046932285

`n!*A007318(A046092(n))*A293116(n)`
-/

namespace A131815.P10261794303046932285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A007318 (A046092 n).toNat * A293116 n

end

end A131815.P10261794303046932285

/-!
# A131816: Triangle read by rows: A130321 + A059268 - A000012 as infinite lower triangular matrices, where A130321 = (1; 2,1; 4,2,1; ...), A059268 = (1; 1,2; 1,2,4; ...) and A000012 = (1; 1,1; 1,1,1; ...).

The programs for A131816, the canonical program `A131816.P3689264983321174764` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131816 has offset 0).

The definition of A131816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131816.P10232502349255409424

`A271709(n)-1`
-/

namespace A131816.P10232502349255409424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n - 1

end

end A131816.P10232502349255409424

namespace A131816

/-- `A271709(n)-1` -/
def P10232502349255409424.Spec : Prop :=
  ∀ n, P10232502349255409424.a n = A131816 n

theorem P10232502349255409424.correct : P10232502349255409424.Spec := by
  intro n
  simp only [A131816, Nat.add_sub_cancel, A131816.P10232502349255409424.a, A131816.P3689264983321174764.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P6740187654358347306.a, A271709, A271709.P2626185223326178723.a, A000079, A000079.P10855139691139572931.a, A018900, A018900.P2868698677378612256.a, A025581, A025581.P420762180635059694.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A137688, A137688.P9746695207037186753.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131816

/-! ## A131816.P3370843399058205488

`xor(A143086(n), A271710(n))`
-/

namespace A131816.P3370843399058205488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A143086 n) (A271710 n)

end

end A131816.P3370843399058205488

namespace A131816

/-- `xor(A143086(n), A271710(n))` -/
def P3370843399058205488.Spec : Prop :=
  ∀ n, P3370843399058205488.a n = A131816 n

end A131816

/-! ## A131816.P3689264983321174764

`A059268(n)+A130321(n)-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A131816

/-- `A059268(n)+A130321(n)-1` -/
def P3689264983321174764.Spec : Prop :=
  ∀ n, P3689264983321174764.a n = A131816 n

theorem P3689264983321174764.correct : P3689264983321174764.Spec := by
  intro n
  simp only [A131816]

end A131816

/-! ## A131816.P3978165019143927842

`A097807(n)+A131953(n)-1`
-/

namespace A131816.P3978165019143927842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n + (A131953 n - 1)

end

end A131816.P3978165019143927842

namespace A131816

/-- `A097807(n)+A131953(n)-1` -/
def P3978165019143927842.Spec : Prop :=
  ∀ n, P3978165019143927842.a n = A131816 n

theorem P3978165019143927842.correct : P3978165019143927842.Spec := by
  intro n
  simp only [A131816, Nat.add_sub_cancel, A131816.P3978165019143927842.a, A131816.P3689264983321174764.a, A059268, A059268.P15217573790077737885.a, A097807, A097807.P14328121779268374373.a, A130321, A130321.P6740187654358347306.a, A131953, A131953.P6052148491130598522.a, A000079, A000079.P10855139691139572931.a, A009531, A009531.P14285492072244400176.a, A018900, A018900.P2868698677378612256.a, A025581, A025581.P420762180635059694.a, A099375, A099375.P13700148065993022910.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A137688, A137688.P9746695207037186753.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131816

/-! ## A131816.P10774406772967169328

`A137688(n)+A176224(n)-1`
-/

namespace A131816.P10774406772967169328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n + (A176224 n - 1)

end

end A131816.P10774406772967169328

namespace A131816

/-- `A137688(n)+A176224(n)-1` -/
def P10774406772967169328.Spec : Prop :=
  ∀ n, P10774406772967169328.a n = A131816 n

end A131816

/-! ## A131816.P1008754946300365827

`A154690(n)/A007318(n)-1`
-/

namespace A131816.P1008754946300365827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154690 n : ℚ) / (A007318 n : ℚ) - 1

end

end A131816.P1008754946300365827

namespace A131816

/-- `A154690(n)/A007318(n)-1` -/
def P1008754946300365827.Spec : Prop :=
  ∀ n, P1008754946300365827.a n = (A131816 n : ℚ)

end A131816

/-! ## A131816.P17011792300901675721

`A099628(n+1)-(A089633(n)+1)`
-/

namespace A131816.P17011792300901675721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1) - (A089633 n + 1)

end

end A131816.P17011792300901675721

namespace A131816

/-- `A099628(n+1)-(A089633(n)+1)` -/
def P17011792300901675721.Spec : Prop :=
  ∀ n, P17011792300901675721.a n = A131816 n

end A131816

/-! ## A131816.P11954786098627649942

`A264802(n+1)-(A173787(n)+1)`
-/

namespace A131816.P11954786098627649942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264802 (n + 1) - (A173787 n + 1)

end

end A131816.P11954786098627649942

namespace A131816

/-- `A264802(n+1)-(A173787(n)+1)` -/
def P11954786098627649942.Spec : Prop :=
  ∀ n, P11954786098627649942.a n = A131816 n

theorem P11954786098627649942.correct : P11954786098627649942.Spec := by
  intro n
  simp only [A131816, Nat.add_sub_cancel, A131816.P11954786098627649942.a, A131816.P3689264983321174764.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P6740187654358347306.a, A173787, A173787.P2304199394440662291.a, A264802, A264802.P4268355736184422513.a, A000079, A000079.P10855139691139572931.a, A018900, A018900.P2868698677378612256.a, A025581, A025581.P420762180635059694.a, A137688, A137688.P9746695207037186753.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131816

/-! ## A131816.P9924430344637095421

`A018900(n+1)-(A089633(n)+2)`
-/

namespace A131816.P9924430344637095421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) - (A089633 n + 2)

end

end A131816.P9924430344637095421

namespace A131816

/-- `A018900(n+1)-(A089633(n)+2)` -/
def P9924430344637095421.Spec : Prop :=
  ∀ n, P9924430344637095421.a n = A131816 n

end A131816

/-! ## A131816.P1291636999837284483

`A059268(n)+A000079(A025581(n))-1`
-/

namespace A131816.P1291636999837284483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + (A000079 (A025581 n).toNat - 1)

end

end A131816.P1291636999837284483

namespace A131816

/-- `A059268(n)+A000079(A025581(n))-1` -/
def P1291636999837284483.Spec : Prop :=
  ∀ n, P1291636999837284483.a n = A131816 n

end A131816

/-! ## A131816.P5609759936329390128

`A000079(A002262(n))+A130321(n)-1`
-/

namespace A131816.P5609759936329390128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat + (A130321 n - 1)

end

end A131816.P5609759936329390128

namespace A131816

/-- `A000079(A002262(n))+A130321(n)-1` -/
def P5609759936329390128.Spec : Prop :=
  ∀ n, P5609759936329390128.a n = A131816 n

end A131816

/-! ## A131816.P3814958810532624781

`A059268(n)+A059268(A061579(n))-1`
-/

namespace A131816.P3814958810532624781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + (A059268 (A061579 n).toNat - 1)

end

end A131816.P3814958810532624781

namespace A131816

/-- `A059268(n)+A059268(A061579(n))-1` -/
def P3814958810532624781.Spec : Prop :=
  ∀ n, P3814958810532624781.a n = A131816 n

end A131816

/-! ## A131816.P2807100238246294115

`(A130330(A061579(n))+A130330(n))/2`
-/

namespace A131816.P2807100238246294115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130330 (A061579 n).toNat + A130330 n : ℚ) / 2

end

end A131816.P2807100238246294115

namespace A131816

/-- `(A130330(A061579(n))+A130330(n))/2` -/
def P2807100238246294115.Spec : Prop :=
  ∀ n, P2807100238246294115.a n = (A131816 n : ℚ)

end A131816

/-! ## A131816.P1646340585886714515

`A059268(n)+A173787(n)/A059268(n)`
-/

namespace A131816.P1646340585886714515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) + (A173787 n : ℚ) / (A059268 n : ℚ)

end

end A131816.P1646340585886714515

namespace A131816

/-- `A059268(n)+A173787(n)/A059268(n)` -/
def P1646340585886714515.Spec : Prop :=
  ∀ n, P1646340585886714515.a n = (A131816 n : ℚ)

end A131816

/-! ## A131816.P14836687635466805734

`A011782(A004736(n+1))+A059268(n)-1`
-/

namespace A131816.P14836687635466805734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004736 (n + 1)).toNat + (A059268 n - 1)

end

end A131816.P14836687635466805734

namespace A131816

/-- `A011782(A004736(n+1))+A059268(n)-1` -/
def P14836687635466805734.Spec : Prop :=
  ∀ n, P14836687635466805734.a n = A131816 n

end A131816

/-! ## A131816.P2898354361246454223

`A018900(n+1)-(A023758(n+2)+1)`
-/

namespace A131816.P2898354361246454223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) - (A023758 (n + 2) + 1)

end

end A131816.P2898354361246454223

namespace A131816

/-- `A018900(n+1)-(A023758(n+2)+1)` -/
def P2898354361246454223.Spec : Prop :=
  ∀ n, P2898354361246454223.a n = A131816 n

end A131816

/-! ## A131816.P5943456489844883374

`A130321(A061579(n))+A130321(n)-1`
-/

namespace A131816.P5943456489844883374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A061579 n).toNat + (A130321 n - 1)

end

end A131816.P5943456489844883374

namespace A131816

/-- `A130321(A061579(n))+A130321(n)-1` -/
def P5943456489844883374.Spec : Prop :=
  ∀ n, P5943456489844883374.a n = A131816 n

end A131816

/-! ## A131816.P6246591916676735353

`A051601(n)+A156862(n)-1`
-/

namespace A131816.P6246591916676735353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n + (A156862 n - 1)

end

end A131816.P6246591916676735353

namespace A131816

/-- `A051601(n)+A156862(n)-1` -/
def P6246591916676735353.Spec : Prop :=
  ∀ n, P6246591916676735353.a n = A131816 n

theorem P6246591916676735353.correct : P6246591916676735353.Spec := by
  intro n
  simp only [A131816, Nat.add_sub_cancel, A131816.P6246591916676735353.a, A131816.P3689264983321174764.a, A051601, A051601.P16211897946955376091.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P6740187654358347306.a, A156862, A156862.P10113260437190250974.a, A000079, A000079.P10855139691139572931.a, A018900, A018900.P2868698677378612256.a, A025581, A025581.P420762180635059694.a, A028276, A028276.P15109551320821074576.a, A028327, A028327.P9835590816428302231.a, A140513, A140513.P13579608035938851890.a, A271709, A271709.P2626185223326178723.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A007318, A007318.P302227728145965961.a, A014430, A014430.P11701806938926061192.a, A028263, A028263.P3177418721069471964.a, A137688, A137688.P9746695207037186753.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A014410, A014410.P12420516935091573692.a, A057944, A057944.P16851463738746886639.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131816

/-! ## A131816.P3207541509349902820

`A154915(n)/A154844(n)-1`
-/

namespace A131816.P3207541509349902820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154915 n : ℚ) / (A154844 n : ℚ) - 1

end

end A131816.P3207541509349902820

namespace A131816

/-- `A154915(n)/A154844(n)-1` -/
def P3207541509349902820.Spec : Prop :=
  ∀ n, P3207541509349902820.a n = (A131816 n : ℚ)

end A131816

/-! ## A131816.P17398092961040134582

`A130321(n)+A130321(A286147(n))-1`
-/

namespace A131816.P17398092961040134582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + (A130321 (A286147 n).toNat - 1)

end

end A131816.P17398092961040134582

namespace A131816

/-- `A130321(n)+A130321(A286147(n))-1` -/
def P17398092961040134582.Spec : Prop :=
  ∀ n, P17398092961040134582.a n = A131816 n

end A131816

/-!
# A131817: a(n) = A051340(n) + A130321(n) - A000012(n).

The programs for A131817, the canonical program `A131817.P1452475157626756727` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131817 has offset 0).

The definition of A131817 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051340, A130321, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A131817.P1452475157626756727

`A051340(n)+A130321(n)-1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A131817

/-- `A051340(n)+A130321(n)-1` -/
def P1452475157626756727.Spec : Prop :=
  ∀ n, P1452475157626756727.a n = A131817 n

theorem P1452475157626756727.correct : P1452475157626756727.Spec := by
  intro n
  simp only [A131817]

end A131817

/-! ## A131817.P13583842162508362637

`A051340(n)*A130321(n)`
-/

namespace A131817.P13583842162508362637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n * A130321 n

end

end A131817.P13583842162508362637

namespace A131817

/-- `A051340(n)*A130321(n)` -/
def P13583842162508362637.Spec : Prop :=
  ∀ n, P13583842162508362637.a n = A131817 n

end A131817

/-! ## A131817.P14064639348598445419

`and(A131897(n), A193858(n))`
-/

namespace A131817.P14064639348598445419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131897 n) (A193858 n)

end

end A131817.P14064639348598445419

namespace A131817

/-- `and(A131897(n), A193858(n))` -/
def P14064639348598445419.Spec : Prop :=
  ∀ n, P14064639348598445419.a n = A131817 n

end A131817

/-! ## A131817.P10830661931477927778

`Δ[A063656(n)]*A130321(n)`
-/

namespace A131817.P10830661931477927778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A130321 n

end

end A131817.P10830661931477927778

namespace A131817

/-- `Δ[A063656(n)]*A130321(n)` -/
def P10830661931477927778.Spec : Prop :=
  ∀ n, P10830661931477927778.a n = A131817 n

end A131817

/-! ## A131817.P10763683926606860873

`and(A131897(n), A175332(n+1))`
-/

namespace A131817.P10763683926606860873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131897 n) (A175332 (n + 1))

end

end A131817.P10763683926606860873

namespace A131817

/-- `and(A131897(n), A175332(n+1))` -/
def P10763683926606860873.Spec : Prop :=
  ∀ n, P10763683926606860873.a n = A131817 n

end A131817

/-! ## A131817.P16765951755519836490

`A131897(n)+1-A130296(n+1)`
-/

namespace A131817.P16765951755519836490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131897 n + (1 - A130296 (n + 1))

end

end A131817.P16765951755519836490

namespace A131817

/-- `A131897(n)+1-A130296(n+1)` -/
def P16765951755519836490.Spec : Prop :=
  ∀ n, P16765951755519836490.a n = A131817 n

end A131817

/-! ## A131817.P16688521790697934653

`A130321(n)+A134402(n)%A033573(n)`
-/

namespace A131817.P16688521790697934653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + Int.tmod (A134402 n) (A033573 n)

end

end A131817.P16688521790697934653

namespace A131817

/-- `A130321(n)+A134402(n)%A033573(n)` -/
def P16688521790697934653.Spec : Prop :=
  ∀ n, P16688521790697934653.a n = A131817 n

end A131817

/-! ## A131817.P1114306550886414899

`A000051(A025581(n))-Δ[A094727(n+1)]`
-/

namespace A131817.P1114306550886414899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A025581 n).toNat - (f1 (n + 1) - f1 n)

end

end A131817.P1114306550886414899

namespace A131817

/-- `A000051(A025581(n))-Δ[A094727(n+1)]` -/
def P1114306550886414899.Spec : Prop :=
  ∀ n, P1114306550886414899.a n = A131817 n

theorem P1114306550886414899.correct : P1114306550886414899.Spec := by
  intro n
  simp only [A131817, Nat.add_sub_cancel, A131817.P1114306550886414899.f1, A131817.P1114306550886414899.a, A131817.P1452475157626756727.a, A000051, A000051.P14067217022188782580.a, A025581, A025581.P420762180635059694.a, A051340, A051340.P9797629751904134838.f1, A051340.P9797629751904134838.a, A094727, A094727.P1759177724676722475.a, A130321, A130321.P6740187654358347306.a, A000079, A000079.P10855139691139572931.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131817

/-! ## A131817.P7841790795707580841

`A051340(n)+A131897(n)-A131821(n+1)`
-/

namespace A131817.P7841790795707580841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n + (A131897 n - A131821 (n + 1))

end

end A131817.P7841790795707580841

namespace A131817

/-- `A051340(n)+A131897(n)-A131821(n+1)` -/
def P7841790795707580841.Spec : Prop :=
  ∀ n, P7841790795707580841.a n = A131817 n

end A131817

/-! ## A131817.P8937728236574924366

`A130321(n)+A003056(n)%A003056(n+1)`
-/

namespace A131817.P8937728236574924366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + Int.tmod (A003056 n) (A003056 (n + 1))

end

end A131817.P8937728236574924366

namespace A131817

/-- `A130321(n)+A003056(n)%A003056(n+1)` -/
def P8937728236574924366.Spec : Prop :=
  ∀ n, P8937728236574924366.a n = A131817 n

end A131817

/-! ## A131817.P7752678929045644059

`lcm(Δ[A025581(n)], A130321(n))`
-/

namespace A131817.P7752678929045644059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A130321 n)

end

end A131817.P7752678929045644059

namespace A131817

/-- `lcm(Δ[A025581(n)], A130321(n))` -/
def P7752678929045644059.Spec : Prop :=
  ∀ n, (P7752678929045644059.a n : ℤ) = A131817 n

end A131817

/-! ## A131817.P17661364451755762653

`xor(A025581(n+1), A052944(A025581(n)))`
-/

namespace A131817.P17661364451755762653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025581 (n + 1)) (A052944 (A025581 n).toNat)

end

end A131817.P17661364451755762653

namespace A131817

/-- `xor(A025581(n+1), A052944(A025581(n)))` -/
def P17661364451755762653.Spec : Prop :=
  ∀ n, P17661364451755762653.a n = A131817 n

end A131817

/-! ## A131817.P6449924692667517233

`A130321(n)+A002262(n*A000035(A130321(n)))`
-/

namespace A131817.P6449924692667517233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + A002262 ((n : ℤ) * A000035 (A130321 n).toNat).toNat

end

end A131817.P6449924692667517233

namespace A131817

/-- `A130321(n)+A002262(n*A000035(A130321(n)))` -/
def P6449924692667517233.Spec : Prop :=
  ∀ n, P6449924692667517233.a n = A131817 n

end A131817

/-!
# A131818: A130296 + A002260 - A000012. Triangle read by rows: row n consists of n, 2, 3, 4, ..., n.

The programs for A131818, the canonical program `A131818.P16625128543866202935` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131818 has offset 1).

The definition of A131818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131818.P17303492235135123769

`n+1-C(round(sqrt(2*n)), 2)`
-/

namespace A131818.P17303492235135123769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat 2 : ℤ)

end

end A131818.P17303492235135123769

namespace A131818

/-- `n+1-C(round(sqrt(2*n)), 2)` -/
def P17303492235135123769.Spec : Prop :=
  ∀ n, P17303492235135123769.a n = A131818 (n + 1)

end A131818

/-! ## A131818.P2309425994277765251

`n-C(∑[char[∑[n]+1]], 2)+1`
-/

namespace A131818.P2309425994277765251
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + 1

end

end A131818.P2309425994277765251

namespace A131818

/-- `n-C(∑[char[∑[n]+1]], 2)+1` -/
def P2309425994277765251.Spec : Prop :=
  ∀ n, P2309425994277765251.a n = A131818 (n + 1)

end A131818

/-! ## A131818.P14524247154489911759

`1-(C(comp[∑[n+1]]-n, 2)-n)`
-/

namespace A131818.P14524247154489911759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A131818.P14524247154489911759

namespace A131818

/-- `1-(C(comp[∑[n+1]]-n, 2)-n)` -/
def P14524247154489911759.Spec : Prop :=
  ∀ n, P14524247154489911759.a n = A131818 (n + 1)

end A131818

/-! ## A131818.P16625128543866202935

`(a(n-1)-1)%a(n-a(n-1))+2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131818

/-- `(a(n-1)-1)%a(n-a(n-1))+2` -/
def P16625128543866202935.Spec : Prop :=
  ∀ n, P16625128543866202935.a n = A131818 (n + 1)

theorem P16625128543866202935.correct : P16625128543866202935.Spec := by
  intro n
  simp only [A131818, Nat.add_sub_cancel]

end A131818

/-! ## A131818.P15358574170755842949

`2-(1-a(n-1))%a(n-a(n-1))` with `a(0)=1`
-/

namespace A131818.P15358574170755842949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - Int.tmod (1 - a (n - 1)) (a ((n : ℤ) - a (n - 1)).toNat)

end

end A131818.P15358574170755842949

namespace A131818

/-- `2-(1-a(n-1))%a(n-a(n-1))` -/
def P15358574170755842949.Spec : Prop :=
  ∀ n, P15358574170755842949.a n = A131818 (n + 1)

end A131818

/-! ## A131818.P1507560463110934514

`(2*n+round(sqrt(2*n))-round(sqrt(2*n))²)/2+1`
-/

namespace A131818.P1507560463110934514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2 : ℚ) / 2 + 1

end

end A131818.P1507560463110934514

namespace A131818

/-- `(2*n+round(sqrt(2*n))-round(sqrt(2*n))²)/2+1` -/
def P1507560463110934514.Spec : Prop :=
  ∀ n, P1507560463110934514.a n = (A131818 (n + 1) : ℚ)

end A131818

/-! ## A131818.P15711782637387370682

`A002260(comp[∑[char[1]+n]])`
-/

namespace A131818.P15711782637387370682
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A131818.P15711782637387370682

namespace A131818

/-- `A002260(comp[∑[char[1]+n]])` -/
def P15711782637387370682.Spec : Prop :=
  ∀ n, P15711782637387370682.a n = A131818 (n + 1)

end A131818

/-! ## A131818.P1490454892708681565

`A131899(1-A051340(n)+n)`
-/

namespace A131818.P1490454892708681565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131899 (1 - A051340 n + (n : ℤ)).toNat

end

end A131818.P1490454892708681565

namespace A131818

/-- `A131899(1-A051340(n)+n)` -/
def P1490454892708681565.Spec : Prop :=
  ∀ n, P1490454892708681565.a n = A131818 (n + 1)

end A131818

/-! ## A131818.P8603394496663011704

`A128227(n)*A131821(n+1)`
-/

namespace A131818.P8603394496663011704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n * A131821 (n + 1)

end

end A131818.P8603394496663011704

namespace A131818

/-- `A128227(n)*A131821(n+1)` -/
def P8603394496663011704.Spec : Prop :=
  ∀ n, P8603394496663011704.a n = A131818 (n + 1)

end A131818

/-! ## A131818.P8321083519054843139

`A003506(n+1)/A184049(n)`
-/

namespace A131818.P8321083519054843139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003506 (n + 1) : ℚ) / (A184049 n : ℚ)

end

end A131818.P8321083519054843139

namespace A131818

/-- `A003506(n+1)/A184049(n)` -/
def P8321083519054843139.Spec : Prop :=
  ∀ n, P8321083519054843139.a n = (A131818 (n + 1) : ℚ)

end A131818

/-! ## A131818.P5289486928421848702

`A003991(n+1)/A193592(n)`
-/

namespace A131818.P5289486928421848702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / (A193592 n : ℚ)

end

end A131818.P5289486928421848702

namespace A131818

/-- `A003991(n+1)/A193592(n)` -/
def P5289486928421848702.Spec : Prop :=
  ∀ n, P5289486928421848702.a n = (A131818 (n + 1) : ℚ)

end A131818

/-! ## A131818.P6526304577207047201

`A129312(n+1)%A133128(n)`
-/

namespace A131818.P6526304577207047201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129312 (n + 1)) (A133128 n)

end

end A131818.P6526304577207047201

namespace A131818

/-- `A129312(n+1)%A133128(n)` -/
def P6526304577207047201.Spec : Prop :=
  ∀ n, P6526304577207047201.a n = A131818 (n + 1)

end A131818

/-! ## A131818.P7441683368373076991

`A244418(n+1)%A133128(n)`
-/

namespace A131818.P7441683368373076991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244418 (n + 1)) (A133128 n)

end

end A131818.P7441683368373076991

namespace A131818

/-- `A244418(n+1)%A133128(n)` -/
def P7441683368373076991.Spec : Prop :=
  ∀ n, P7441683368373076991.a n = A131818 (n + 1)

end A131818

/-! ## A131818.P5861077103618289548

`lcm(A002260(n+1), A130296(n+1))`
-/

namespace A131818.P5861077103618289548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002260 (n + 1)) (A130296 (n + 1))

end

end A131818.P5861077103618289548

namespace A131818

/-- `lcm(A002260(n+1), A130296(n+1))` -/
def P5861077103618289548.Spec : Prop :=
  ∀ n, (P5861077103618289548.a n : ℤ) = A131818 (n + 1)

end A131818

/-! ## A131818.P9055731030485581462

`A128219(A066182(n+1))`
-/

namespace A131818.P9055731030485581462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128219 (A066182 (n + 1)).toNat

end

end A131818.P9055731030485581462

namespace A131818

/-- `A128219(A066182(n+1))` -/
def P9055731030485581462.Spec : Prop :=
  ∀ n, P9055731030485581462.a n = A131818 (n + 1)

end A131818

/-! ## A131818.P4522920771174965372

`A128219(A158821(n)+n)`
-/

namespace A131818.P4522920771174965372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128219 (A158821 n + (n : ℤ)).toNat

end

end A131818.P4522920771174965372

namespace A131818

/-- `A128219(A158821(n)+n)` -/
def P4522920771174965372.Spec : Prop :=
  ∀ n, P4522920771174965372.a n = A131818 (n + 1)

end A131818

/-! ## A131818.P16020167505667383502

`A128219(A007401(n+1))`
-/

namespace A131818.P16020167505667383502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128219 (A007401 (n + 1)).toNat

end

end A131818.P16020167505667383502

namespace A131818

/-- `A128219(A007401(n+1))` -/
def P16020167505667383502.Spec : Prop :=
  ∀ n, P16020167505667383502.a n = A131818 (n + 1)

end A131818

/-! ## A131818.P13016203465580305248

`A131899(A245300(n))`
-/

namespace A131818.P13016203465580305248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131899 (A245300 n).toNat

end

end A131818.P13016203465580305248

namespace A131818

/-- `A131899(A245300(n))` -/
def P13016203465580305248.Spec : Prop :=
  ∀ n, P13016203465580305248.a n = A131818 (n + 1)

end A131818

/-! ## A131818.P17072840902277546237

`A141539(A341706(n))`
-/

namespace A131818.P17072840902277546237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 (A341706 n).toNat

end

end A131818.P17072840902277546237

namespace A131818

/-- `A141539(A341706(n))` -/
def P17072840902277546237.Spec : Prop :=
  ∀ n, P17072840902277546237.a n = A131818 (n + 1)

end A131818

/-! ## A131818.P15375988321367020193

`A238013(A060432(n+1)+2*n)`
-/

namespace A131818.P15375988321367020193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238013 (A060432 (n + 1) + (2 * n : ℤ)).toNat

end

end A131818.P15375988321367020193

namespace A131818

/-- `A238013(A060432(n+1)+2*n)` -/
def P15375988321367020193.Spec : Prop :=
  ∀ n, P15375988321367020193.a n = A131818 (n + 1)

end A131818

/-!
# A131819: A131818 * A000012 as infinite lower triangular matrices. Triangle read by rows, partial sums starting from the right of A131818.

The programs for A131819, the canonical program `A131819.P2025527271162077959` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131819 has offset 1).

The definition of A131819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131819.P13752060563436271071

`A193974(n)-A193592(n)`
-/

namespace A131819.P13752060563436271071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 n - A193592 n

end

end A131819.P13752060563436271071

namespace A131819

/-- `A193974(n)-A193592(n)` -/
def P13752060563436271071.Spec : Prop :=
  ∀ n, P13752060563436271071.a n = A131819 (n + 1)

end A131819

/-! ## A131819.P11300882189873684880

`A205016(n+1)/2-A193592(n)`
-/

namespace A131819.P11300882189873684880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205016 (n + 1) : ℚ) / 2 - (A193592 n : ℚ)

end

end A131819.P11300882189873684880

namespace A131819

/-- `A205016(n+1)/2-A193592(n)` -/
def P11300882189873684880.Spec : Prop :=
  ∀ n, P11300882189873684880.a n = (A131819 (n + 1) : ℚ)

end A131819

/-! ## A131819.P2025527271162077959

`A049777(n+1)+A130296(n+1)-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A131819

/-- `A049777(n+1)+A130296(n+1)-1` -/
def P2025527271162077959.Spec : Prop :=
  ∀ n, P2025527271162077959.a n = A131819 (n + 1)

theorem P2025527271162077959.correct : P2025527271162077959.Spec := by
  intro n
  simp only [A131819, Nat.add_sub_cancel]

end A131819

/-! ## A131819.P681504469175096595

`A049777(n+1)+(A003991(n+1)-1)*char[C(n, 2)]`
-/

namespace A131819.P681504469175096595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + (A003991 (n + 1) - 1) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A131819.P681504469175096595

namespace A131819

/-- `A049777(n+1)+(A003991(n+1)-1)*char[C(n, 2)]` -/
def P681504469175096595.Spec : Prop :=
  ∀ n, P681504469175096595.a n = A131819 (n + 1)

end A131819

/-! ## A131819.P12542690931432330931

`A049777(n+1)+A037213(A056942(n))`
-/

namespace A131819.P12542690931432330931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + A037213 (A056942 n).toNat

end

end A131819.P12542690931432330931

namespace A131819

/-- `A049777(n+1)+A037213(A056942(n))` -/
def P12542690931432330931.Spec : Prop :=
  ∀ n, P12542690931432330931.a n = A131819 (n + 1)

end A131819

/-! ## A131819.P727490485300617996

`A049777(n+1)+A037213(A063656(n))`
-/

namespace A131819.P727490485300617996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + A037213 (A063656 n).toNat

end

end A131819.P727490485300617996

namespace A131819

/-- `A049777(n+1)+A037213(A063656(n))` -/
def P727490485300617996.Spec : Prop :=
  ∀ n, P727490485300617996.a n = A131819 (n + 1)

end A131819

/-! ## A131819.P2750146121120891459

`A193974(n)-A000005(A057728(n+1))`
-/

namespace A131819.P2750146121120891459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 n - A000005 (A057728 (n + 1)).toNat

end

end A131819.P2750146121120891459

namespace A131819

/-- `A193974(n)-A000005(A057728(n+1))` -/
def P2750146121120891459.Spec : Prop :=
  ∀ n, P2750146121120891459.a n = A131819 (n + 1)

end A131819

/-! ## A131819.P14805714142132664805

`A049777(n+1)+A007814(A099627(n))`
-/

namespace A131819.P14805714142132664805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + A007814 (A099627 n).toNat

end

end A131819.P14805714142132664805

namespace A131819

/-- `A049777(n+1)+A007814(A099627(n))` -/
def P14805714142132664805.Spec : Prop :=
  ∀ n, P14805714142132664805.a n = A131819 (n + 1)

end A131819

/-! ## A131819.P10122715495755179458

`A284551(n+1)-A056942(n)`
-/

namespace A131819.P10122715495755179458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284551 (n + 1) - A056942 n

end

end A131819.P10122715495755179458

namespace A131819

/-- `A284551(n+1)-A056942(n)` -/
def P10122715495755179458.Spec : Prop :=
  ∀ n, P10122715495755179458.a n = A131819 (n + 1)

end A131819

/-!
# A131820: Row sums of triangle A131819.

The programs for A131820, the canonical program `A131820.P3275939361033133027` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131820 has offset 1).

The definition of A131820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131820.P3275939361033133027

`(n+1)²+a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131820

/-- `(n+1)²+a(n-1)+1` -/
def P3275939361033133027.Spec : Prop :=
  ∀ n, (P3275939361033133027.a n : ℤ) = A131820 (n + 1)

theorem P3275939361033133027.correct : P3275939361033133027.Spec := by
  intro n
  simp only [A131820, Nat.add_sub_cancel]

end A131820

/-! ## A131820.P11088451066100846633

`(7+(3+2*(n+1))*(n+1))*(n+1)/6-1`
-/

namespace A131820.P11088451066100846633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 + (3 + 2 * (n + 1)) * (n + 1)) * (n + 1) : ℚ) / 6 - 1

end

end A131820.P11088451066100846633

namespace A131820

/-- `(7+(3+2*(n+1))*(n+1))*(n+1)/6-1` -/
def P11088451066100846633.Spec : Prop :=
  ∀ n, P11088451066100846633.a n = (A131820 (n + 1) : ℚ)

theorem P11088451066100846633.correct : P11088451066100846633.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131820, Nat.add_sub_cancel, A131820.P11088451066100846633.a, A131820.P3275939361033133027.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131820, Nat.add_sub_cancel, A131820.P11088451066100846633.a, A131820.P3275939361033133027.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131820

/-! ## A131820.P1381900623223492024

`∑[xor(3, record[xor(1, n²)])-1]`
-/

namespace A131820.P1381900623223492024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131820.P1381900623223492024

namespace A131820

/-- `∑[xor(3, record[xor(1, n²)])-1]` -/
def P1381900623223492024.Spec : Prop :=
  ∀ n, P1381900623223492024.a n = A131820 (n + 1)

end A131820

/-! ## A131820.P3244209650536948525

`∑[∑[or(2*n, char[1])+1]]`
-/

namespace A131820.P3244209650536948525
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (if ∃ j, f3 j = n then 1 else 0) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131820.P3244209650536948525

namespace A131820

/-- `∑[∑[or(2*n, char[1])+1]]` -/
def P3244209650536948525.Spec : Prop :=
  ∀ n, (P3244209650536948525.a n : ℤ) = A131820 (n + 1)

end A131820

/-! ## A131820.P162894682779149813

`∑[∑[xor(2*n, char[1])+1]]`
-/

namespace A131820.P162894682779149813
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) (if ∃ j, f3 j = n then 1 else 0) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131820.P162894682779149813

namespace A131820

/-- `∑[∑[xor(2*n, char[1])+1]]` -/
def P162894682779149813.Spec : Prop :=
  ∀ n, (P162894682779149813.a n : ℤ) = A131820 (n + 1)

end A131820

/-! ## A131820.P12108714685797469545

`∑[∑[a(n-1)+2]]` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A131820.P12108714685797469545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 5] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131820.P12108714685797469545

namespace A131820

/-- `∑[∑[a(n-1)+2]]` -/
def P12108714685797469545.Spec : Prop :=
  ∀ n, (P12108714685797469545.a n : ℤ) = A131820 (n + 1)

end A131820

/-! ## A131820.P12878286503977456097

`∑[ceil(n/acot(n+1)+n+1)]`
-/

namespace A131820.P12878286503977456097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ) + (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131820.P12878286503977456097

namespace A131820

/-- `∑[ceil(n/acot(n+1)+n+1)]` -/
def P12878286503977456097.Spec : Prop :=
  ∀ n, P12878286503977456097.a n = A131820 (n + 1)

end A131820

/-! ## A131820.P7320352799963580038

`floor(n-∑[∑[a(n-1)-2]])` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A131820.P7320352799963580038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131820.P7320352799963580038

namespace A131820

/-- `floor(n-∑[∑[a(n-1)-2]])` -/
def P7320352799963580038.Spec : Prop :=
  ∀ n, P7320352799963580038.a n = A131820 (n + 1)

end A131820

/-! ## A131820.P618565518436523942

`∑[∑[4*n-a(n-1)]]` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A131820.P618565518436523942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5] fun n f2 =>
  (4 * n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131820.P618565518436523942

namespace A131820

/-- `∑[∑[4*n-a(n-1)]]` -/
def P618565518436523942.Spec : Prop :=
  ∀ n, P618565518436523942.a n = A131820 (n + 1)

end A131820

/-! ## A131820.P10844359696793256235

`∑[∑[C(2, 2*n)+2*n]+n]`
-/

namespace A131820.P10844359696793256235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * n) + 2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131820.P10844359696793256235

namespace A131820

/-- `∑[∑[C(2, 2*n)+2*n]+n]` -/
def P10844359696793256235.Spec : Prop :=
  ∀ n, (P10844359696793256235.a n : ℤ) = A131820 (n + 1)

end A131820

/-! ## A131820.P13499243056118955544

`∑[∑[2*n+1]-floor(acot(n))+1]`
-/

namespace A131820.P13499243056118955544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131820.P13499243056118955544

namespace A131820

/-- `∑[∑[2*n+1]-floor(acot(n))+1]` -/
def P13499243056118955544.Spec : Prop :=
  ∀ n, P13499243056118955544.a n = A131820 (n + 1)

end A131820

/-! ## A131820.P7114944450017604234

`∑[(ceil(abs(sin(n)))+n)*(n+1)+1]`
-/

namespace A131820.P7114944450017604234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈|Real.sin (n : ℝ)|⌉ + (n : ℤ)) * (n + 1 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131820.P7114944450017604234

namespace A131820

/-- `∑[(ceil(abs(sin(n)))+n)*(n+1)+1]` -/
def P7114944450017604234.Spec : Prop :=
  ∀ n, P7114944450017604234.a n = A131820 (n + 1)

end A131820

/-! ## A131820.P3311156575873812191

`floor(a(n-1)+n*(n+2)+2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A131820.P3311156575873812191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n * (n + 2) + 2)

end

end A131820.P3311156575873812191

namespace A131820

/-- `floor(a(n-1)+n*(n+2)+2)` -/
def P3311156575873812191.Spec : Prop :=
  ∀ n, (P3311156575873812191.a n : ℤ) = A131820 (n + 1)

end A131820

/-! ## A131820.P13697635719635323007

`floor(∑[(n+1)*(acot(n+1)+n+1)])`
-/

namespace A131820.P13697635719635323007
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (SequenceMachineLib.acot (n + 1 : ℝ) + (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A131820.P13697635719635323007

namespace A131820

/-- `floor(∑[(n+1)*(acot(n+1)+n+1)])` -/
def P13697635719635323007.Spec : Prop :=
  ∀ n, P13697635719635323007.a n = A131820 (n + 1)

end A131820

/-! ## A131820.P4883229527249278153

`(∑[∑[lcm(2, 2*n+1)]]+2*n)/2`
-/

namespace A131820.P4883229527249278153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 * n : ℕ) : ℚ) / 2

end

end A131820.P4883229527249278153

namespace A131820

/-- `(∑[∑[lcm(2, 2*n+1)]]+2*n)/2` -/
def P4883229527249278153.Spec : Prop :=
  ∀ n, P4883229527249278153.a n = (A131820 (n + 1) : ℚ)

end A131820

/-! ## A131820.P18309366833157601321

`n*((a(n-1)+2)/n+2+n)` with `a(0)=1`
-/

namespace A131820.P18309366833157601321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * ((a (n - 1) + 2) / (n : ℚ) + 2 + (n : ℚ))

end

end A131820.P18309366833157601321

namespace A131820

/-- `n*((a(n-1)+2)/n+2+n)` -/
def P18309366833157601321.Spec : Prop :=
  ∀ n, P18309366833157601321.a n = (A131820 (n + 1) : ℚ)

end A131820

/-! ## A131820.P514854462776394189

`(∑[∑[2*n+1]]+n)*gcd(n, n+1)`
-/

namespace A131820.P514854462776394189
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) * Nat.gcd n (n + 1)

end

end A131820.P514854462776394189

namespace A131820

/-- `(∑[∑[2*n+1]]+n)*gcd(n, n+1)` -/
def P514854462776394189.Spec : Prop :=
  ∀ n, (P514854462776394189.a n : ℤ) = A131820 (n + 1)

end A131820

/-! ## A131820.P8725346117610700573

`∑[(n+1)*(n+1)%(2*n+1)+1]`
-/

namespace A131820.P8725346117610700573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 1) % (2 * n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131820.P8725346117610700573

namespace A131820

/-- `∑[(n+1)*(n+1)%(2*n+1)+1]` -/
def P8725346117610700573.Spec : Prop :=
  ∀ n, (P8725346117610700573.a n : ℤ) = A131820 (n + 1)

end A131820

/-! ## A131820.P14995359610617299561

`floor(a(n-1)+lcm(n, n+1)+n+2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A131820.P14995359610617299561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.lcm n (n + 1) + (n + 2)

end

end A131820.P14995359610617299561

namespace A131820

/-- `floor(a(n-1)+lcm(n, n+1)+n+2)` -/
def P14995359610617299561.Spec : Prop :=
  ∀ n, (P14995359610617299561.a n : ℤ) = A131820 (n + 1)

end A131820

/-! ## A131820.P2362455616149890111

`(∑[∑[2*n+1]]+n)*and(1, 2*n+1)`
-/

namespace A131820.P2362455616149890111
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) * Nat.land 1 (2 * n + 1)

end

end A131820.P2362455616149890111

namespace A131820

/-- `(∑[∑[2*n+1]]+n)*and(1, 2*n+1)` -/
def P2362455616149890111.Spec : Prop :=
  ∀ n, (P2362455616149890111.a n : ℤ) = A131820 (n + 1)

end A131820

/-!
# A131821: Triangle read by rows: row n consists of n followed by (n-2) ones then n.

The programs for A131821, the canonical program `A131821.P13312494062197045656` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131821 has offset 1).

The definition of A131821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131821.P2089054278384989834

`ceil(A131843(n)/2)`
-/

namespace A131821.P2089054278384989834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131843 n : ℚ) / 2⌉

end

end A131821.P2089054278384989834

namespace A131821

/-- `ceil(A131843(n)/2)` -/
def P2089054278384989834.Spec : Prop :=
  ∀ n, P2089054278384989834.a n = A131821 (n + 1)

end A131821

/-! ## A131821.P4794858363398368163

`A144217(n+1)+1`
-/

namespace A131821.P4794858363398368163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144217 (n + 1) + 1

end

end A131821.P4794858363398368163

namespace A131821

/-- `A144217(n+1)+1` -/
def P4794858363398368163.Spec : Prop :=
  ∀ n, P4794858363398368163.a n = A131821 (n + 1)

theorem P4794858363398368163.correct : P4794858363398368163.Spec := by
  intro n
  simp only [A131821, Nat.add_sub_cancel, A131821.P4794858363398368163.a, A131821.P13312494062197045656.a, A131816, A131816.P3689264983321174764.a, A144217, A144217.P17527769007908988650.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P6740187654358347306.a, A000079, A000079.P10855139691139572931.a, A018900, A018900.P2868698677378612256.a, A025581, A025581.P420762180635059694.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A137688, A137688.P9746695207037186753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131821

/-! ## A131821.P15873173134070624607

`(A131844(n)+2)/3`
-/

namespace A131821.P15873173134070624607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131844 n + 2 : ℚ) / 3

end

end A131821.P15873173134070624607

namespace A131821

/-- `(A131844(n)+2)/3` -/
def P15873173134070624607.Spec : Prop :=
  ∀ n, P15873173134070624607.a n = (A131821 (n + 1) : ℚ)

end A131821

/-! ## A131821.P13312494062197045656

`val(A131816(n), 2)+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A131821

/-- `val(A131816(n), 2)+1` -/
def P13312494062197045656.Spec : Prop :=
  ∀ n, (P13312494062197045656.a n : ℤ) = A131821 (n + 1)

theorem P13312494062197045656.correct : P13312494062197045656.Spec := by
  intro n
  simp only [A131821, Nat.add_sub_cancel]

end A131821

/-! ## A131821.P10527897840402254151

`round(A131911(n+1)/2)`
-/

namespace A131821.P10527897840402254151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A131911 (n + 1) : ℚ) / 2)

end

end A131821.P10527897840402254151

namespace A131821

/-- `round(A131911(n+1)/2)` -/
def P10527897840402254151.Spec : Prop :=
  ∀ n, P10527897840402254151.a n = A131821 (n + 1)

end A131821

/-! ## A131821.P12310489130473888647

`∑[char[∑[n+1]]]*A103451(n)+1`
-/

namespace A131821.P12310489130473888647
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A103451 n + 1

end

end A131821.P12310489130473888647

namespace A131821

/-- `∑[char[∑[n+1]]]*A103451(n)+1` -/
def P12310489130473888647.Spec : Prop :=
  ∀ n, P12310489130473888647.a n = A131821 (n + 1)

end A131821

/-! ## A131821.P8916072168356608264

`ceil(round(sqrt(2*(n+1)))/A007318(n)²)`
-/

namespace A131821.P8916072168356608264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) : ℚ) / (A007318 n ^ 2 : ℚ)⌉

end

end A131821.P8916072168356608264

namespace A131821

/-- `ceil(round(sqrt(2*(n+1)))/A007318(n)²)` -/
def P8916072168356608264.Spec : Prop :=
  ∀ n, P8916072168356608264.a n = A131821 (n + 1)

end A131821

/-! ## A131821.P10711006368376002679

`ceil(round(sqrt(2*(n+1)))/A130154(n+1))`
-/

namespace A131821.P10711006368376002679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) : ℚ) / (A130154 (n + 1) : ℚ)⌉

end

end A131821.P10711006368376002679

namespace A131821

/-- `ceil(round(sqrt(2*(n+1)))/A130154(n+1))` -/
def P10711006368376002679.Spec : Prop :=
  ∀ n, P10711006368376002679.a n = A131821 (n + 1)

end A131821

/-! ## A131821.P17213452078781025185

`A028310(A103516(n))`
-/

namespace A131821.P17213452078781025185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A103516 n).toNat

end

end A131821.P17213452078781025185

namespace A131821

/-- `A028310(A103516(n))` -/
def P17213452078781025185.Spec : Prop :=
  ∀ n, P17213452078781025185.a n = A131821 (n + 1)

end A131821

/-! ## A131821.P15554570234170227682

`A000463(A131843(n))`
-/

namespace A131821.P15554570234170227682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A131843 n).toNat

end

end A131821.P15554570234170227682

namespace A131821

/-- `A000463(A131843(n))` -/
def P15554570234170227682.Spec : Prop :=
  ∀ n, P15554570234170227682.a n = A131821 (n + 1)

end A131821

/-! ## A131821.P8317032518101177565

`A008620(A131844(n))`
-/

namespace A131821.P8317032518101177565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A131844 n).toNat

end

end A131821.P8317032518101177565

namespace A131821

/-- `A008620(A131844(n))` -/
def P8317032518101177565.Spec : Prop :=
  ∀ n, P8317032518101177565.a n = A131821 (n + 1)

end A131821

/-! ## A131821.P10333882997945177831

`A004525(A131843(n)+1)`
-/

namespace A131821.P10333882997945177831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A131843 n + 1).toNat

end

end A131821.P10333882997945177831

namespace A131821

/-- `A004525(A131843(n)+1)` -/
def P10333882997945177831.Spec : Prop :=
  ∀ n, P10333882997945177831.a n = A131821 (n + 1)

end A131821

/-! ## A131821.P9042506726395273097

`A065033(A131843(n)+1)`
-/

namespace A131821.P9042506726395273097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A131843 n + 1).toNat

end

end A131821.P9042506726395273097

namespace A131821

/-- `A065033(A131843(n)+1)` -/
def P9042506726395273097.Spec : Prop :=
  ∀ n, P9042506726395273097.a n = A131821 (n + 1)

end A131821

/-! ## A131821.P17819552266477604368

`A144112(A132119(n+1))`
-/

namespace A131821.P17819552266477604368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (A132119 (n + 1)).toNat

end

end A131821.P17819552266477604368

namespace A131821

/-- `A144112(A132119(n+1))` -/
def P17819552266477604368.Spec : Prop :=
  ∀ n, P17819552266477604368.a n = A131821 (n + 1)

end A131821

/-! ## A131821.P3957383350567231183

`A004524(A131843(n)+2)`
-/

namespace A131821.P3957383350567231183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A131843 n + 2).toNat

end

end A131821.P3957383350567231183

namespace A131821

/-- `A004524(A131843(n)+2)` -/
def P3957383350567231183.Spec : Prop :=
  ∀ n, P3957383350567231183.a n = A131821 (n + 1)

end A131821

/-! ## A131821.P2902651689614714284

`A101279(A131843(n)+2)`
-/

namespace A131821.P2902651689614714284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A131843 n + 2).toNat

end

end A131821.P2902651689614714284

namespace A131821

/-- `A101279(A131843(n)+2)` -/
def P2902651689614714284.Spec : Prop :=
  ∀ n, P2902651689614714284.a n = A131821 (n + 1)

end A131821

/-! ## A131821.P11092182919185920597

`A008615(2*A131844(n))`
-/

namespace A131821.P11092182919185920597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A131844 n).toNat

end

end A131821.P11092182919185920597

namespace A131821

/-- `A008615(2*A131844(n))` -/
def P11092182919185920597.Spec : Prop :=
  ∀ n, P11092182919185920597.a n = A131821 (n + 1)

end A131821

/-! ## A131821.P17591727931191479478

`A103516(C(A103516(n), 2))`
-/

namespace A131821.P17591727931191479478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 (Nat.choose (A103516 n).toNat 2)

end

end A131821.P17591727931191479478

namespace A131821

/-- `A103516(C(A103516(n), 2))` -/
def P17591727931191479478.Spec : Prop :=
  ∀ n, P17591727931191479478.a n = A131821 (n + 1)

end A131821

/-! ## A131821.P12844434931768590276

`A342385(n)+A176270(n)`
-/

namespace A131821.P12844434931768590276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342385 n + A176270 n

end

end A131821.P12844434931768590276

namespace A131821

/-- `A342385(n)+A176270(n)` -/
def P12844434931768590276.Spec : Prop :=
  ∀ n, P12844434931768590276.a n = A131821 (n + 1)

theorem P12844434931768590276.correct : P12844434931768590276.Spec := by
  intro n
  simp only [A131821, Nat.add_sub_cancel, A131821.P12844434931768590276.a, A131821.P13312494062197045656.a, A131816, A131816.P3689264983321174764.a, A176270, A176270.P12132002411983152534.a, A342385, A342385.P11220617682431407402.a, A004247, A004247.P14233945955703425283.a, A059268, A059268.P15217573790077737885.a, A077028, A077028.P11682596430163569480.a, A130321, A130321.P6740187654358347306.a, A144217, A144217.P17527769007908988650.a, A000079, A000079.P10855139691139572931.a, A002262, A002262.P12129691700837801527.a, A018900, A018900.P2868698677378612256.a, A025581, A025581.P420762180635059694.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, A137688, A137688.P9746695207037186753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131821

/-! ## A131821.P7914143907716269927

`A131899(n)-A002262(n)`
-/

namespace A131821.P7914143907716269927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131899 n - A002262 n

end

end A131821.P7914143907716269927

namespace A131821

/-- `A131899(n)-A002262(n)` -/
def P7914143907716269927.Spec : Prop :=
  ∀ n, P7914143907716269927.a n = A131821 (n + 1)

theorem P7914143907716269927.correct : P7914143907716269927.Spec := by
  intro n
  simp only [A131821, Nat.add_sub_cancel, A131821.P7914143907716269927.a, A131821.P13312494062197045656.a, A002262, A002262.P12129691700837801527.a, A131816, A131816.P3689264983321174764.a, A131899, A131899.P5613504993565283858.a, A057944, A057944.P16851463738746886639.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P6740187654358347306.a, A000079, A000079.P10855139691139572931.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A018900, A018900.P2868698677378612256.a, A025581, A025581.P420762180635059694.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A004736, A004736.P10337537277358081527.a, A137688, A137688.P9746695207037186753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131821

/-!
# A131822: Increment each prime factor for each term of the least prime signature sequence derived from A080577.

The programs for A131822, there is no canonical definition to state claims against.
-/

/-! ## A131822.P6129170835947479816

`A337471(A333485(n))`
-/

namespace A131822.P6129170835947479816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337471 (A333485 n).toNat

end

end A131822.P6129170835947479816

/-! ## A131822.P14474592413560367183

`A003961(A063008(n))`
-/

namespace A131822.P14474592413560367183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A063008 n).toNat

end

end A131822.P14474592413560367183

/-! ## A131822.P12900601877718557766

`A003961(A131888(2*n))`
-/

namespace A131822.P12900601877718557766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A131888 (2 * n)).toNat

end

end A131822.P12900601877718557766

/-! ## A131822.P7714360580628864768

`∑{d}[A063008(n), A003972(#)]`
-/

namespace A131822.P7714360580628864768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003972 d

end

end A131822.P7714360580628864768

/-! ## A131822.P2433563993281746759

`A045965(A063008(n))-A000007(n)`
-/

namespace A131822.P2433563993281746759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A063008 n).toNat - A000007 n

end

end A131822.P2433563993281746759

/-!
# A131824: Main diagonal of triangle A131823: a(n) = A131823(n,n) for n>=0.

The programs for A131824, there is no canonical definition to state claims against.
-/

/-! ## A131824.P15352485451051292981

`A131823(∑[∑[A000225(n)]])`
-/

namespace A131824.P15352485451051292981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131823 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A131824.P15352485451051292981

/-! ## A131824.P8736090671905101279

`A131823(A048492(n)-(n+1))`
-/

namespace A131824.P8736090671905101279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131823 (A048492 n - (n + 1 : ℤ)).toNat

end

end A131824.P8736090671905101279

/-! ## A131824.P15593725310956453894

`A131823(A048492(n)-1-n)`
-/

namespace A131824.P15593725310956453894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131823 (A048492 n - 1 - (n : ℤ)).toNat

end

end A131824.P15593725310956453894

/-! ## A131824.P14543121548676922244

`A131823(record[A131817(n)-(n+1)])`
-/

namespace A131824.P14543121548676922244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131817 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131823 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A131824.P14543121548676922244

/-! ## A131824.P11469550305177780124

`A131823(A131833(n)-(∑[n+2]-1))`
-/

namespace A131824.P11469550305177780124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131823 (A131833 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)).toNat

end

end A131824.P11469550305177780124

/-!
# A131825: Numbers k such that cototient(x) = k has exactly 1 solution.

The programs for A131825, there is no canonical definition to state claims against.
-/

/-! ## A131825.P12334611217700630325

`A131826(n+1)-A000010(A131826(n+1))`
-/

namespace A131825.P12334611217700630325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131826 (n + 1) - A000010 (A131826 (n + 1)).toNat

end

end A131825.P12334611217700630325

/-! ## A131825.P16499611493123198153

`∑{d}[A131826(n+1), A062790(#)]`
-/

namespace A131825.P16499611493123198153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062790 d

end

end A131825.P16499611493123198153

/-! ## A131825.P17488453904182900046

`A051953(A131826(n+1))`
-/

namespace A131825.P17488453904182900046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A131826 (n + 1)).toNat

end

end A131825.P17488453904182900046

/-! ## A131825.P3699731589470491465

`A319700(2*A131826(n+1))`
-/

namespace A131825.P3699731589470491465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (2 * A131826 (n + 1)).toNat

end

end A131825.P3699731589470491465

/-!
# A131827: Numbers k such that cototient(x) = k has exactly 2 solutions.

The programs for A131827, there is no canonical definition to state claims against.
-/

/-! ## A131827.P3234071597477506110

`eq[2, A063740(n+2)]+2`
-/

namespace A131827.P3234071597477506110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063740 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A131827.P3234071597477506110

/-! ## A131827.P12439897945397914308

`eq[2, A063740(A233583(n+1))]`
-/

namespace A131827.P12439897945397914308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063740 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131827.P12439897945397914308

/-! ## A131827.P2935091927160729299

`A009056(eq[2, A063740(n+2)])`
-/

namespace A131827.P2935091927160729299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063740 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131827.P2935091927160729299

/-! ## A131827.P17603332156229500315

`A171463(eq[2, A063740(n+2)])`
-/

namespace A131827.P17603332156229500315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063740 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131827.P17603332156229500315

/-!
# A131830: Triangle read by rows: T(n,0) = T(n,n) = n + 1 for n >= 0, and T(n,k) = binomial(n,k) for 1 <= k <= n - 1, n >= 2.

The programs for A131830, the canonical program `A131830.P11981854450058335817` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131830 has offset 0).

The definition of A131830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131830.P8186281002911518482

`round(A131832(n)/2)`
-/

namespace A131830.P8186281002911518482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A131832 n : ℚ) / 2)

end

end A131830.P8186281002911518482

namespace A131830

/-- `round(A131832(n)/2)` -/
def P8186281002911518482.Spec : Prop :=
  ∀ n, P8186281002911518482.a n = A131830 n

end A131830

/-! ## A131830.P15100836657554666062

`A131950(n)-A003056(n)`
-/

namespace A131830.P15100836657554666062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131950 n - A003056 n

end

end A131830.P15100836657554666062

namespace A131830

/-- `A131950(n)-A003056(n)` -/
def P15100836657554666062.Spec : Prop :=
  ∀ n, P15100836657554666062.a n = A131830 n

end A131830

/-! ## A131830.P639723913464556707

`A051340(n)*A135227(n)`
-/

namespace A131830.P639723913464556707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n * A135227 n

end

end A131830.P639723913464556707

namespace A131830

/-- `A051340(n)*A135227(n)` -/
def P639723913464556707.Spec : Prop :=
  ∀ n, P639723913464556707.a n = A131830 n

end A131830

/-! ## A131830.P11981854450058335817

`A131821(n+1)+A014473(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A131830

/-- `A131821(n+1)+A014473(n)` -/
def P11981854450058335817.Spec : Prop :=
  ∀ n, P11981854450058335817.a n = A131830 n

theorem P11981854450058335817.correct : P11981854450058335817.Spec := by
  intro n
  simp only [A131830]

end A131830

/-! ## A131830.P8511879117210432657

`A144217(n+1)+A007318(n)`
-/

namespace A131830.P8511879117210432657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144217 (n + 1) + A007318 n

end

end A131830.P8511879117210432657

namespace A131830

/-- `A144217(n+1)+A007318(n)` -/
def P8511879117210432657.Spec : Prop :=
  ∀ n, P8511879117210432657.a n = A131830 n

theorem P8511879117210432657.correct : P8511879117210432657.Spec := by
  intro n
  simp only [A131830, Nat.add_sub_cancel, A131830.P8511879117210432657.a, A131830.P11981854450058335817.a, A007318, A007318.P302227728145965961.a, A014473, A014473.P9301799580602651200.a, A131821, A131821.P13312494062197045656.a, A144217, A144217.P17527769007908988650.a, A131816, A131816.P3689264983321174764.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A059268, A059268.P15217573790077737885.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A130321, A130321.P6740187654358347306.a, A000079, A000079.P10855139691139572931.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A018900, A018900.P2868698677378612256.a, A025581, A025581.P420762180635059694.a, A140513, A140513.P13579608035938851890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131830

/-! ## A131830.P12458800882034366011

`A128715(n)+1-A103451(n)`
-/

namespace A131830.P12458800882034366011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128715 n + (1 - A103451 n)

end

end A131830.P12458800882034366011

namespace A131830

/-- `A128715(n)+1-A103451(n)` -/
def P12458800882034366011.Spec : Prop :=
  ∀ n, P12458800882034366011.a n = A131830 n

end A131830

/-! ## A131830.P11842029677176960152

`A103451(n)+A132073(n)-1`
-/

namespace A131830.P11842029677176960152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n + (A132073 n - 1)

end

end A131830.P11842029677176960152

namespace A131830

/-- `A103451(n)+A132073(n)-1` -/
def P11842029677176960152.Spec : Prop :=
  ∀ n, P11842029677176960152.a n = A131830 n

theorem P11842029677176960152.correct : P11842029677176960152.Spec := by
  intro n
  simp only [A131830, Nat.add_sub_cancel, A131830.P11842029677176960152.a, A131830.P11981854450058335817.a, A014473, A014473.P9301799580602651200.a, A103451, A103451.P2977452712529643699.a, A131821, A131821.P13312494062197045656.a, A132073, A132073.P1418040610760282867.a, A007318, A007318.P302227728145965961.a, A103452, A103452.P9591001737205339396.f1, A103452.P9591001737205339396.a, A131816, A131816.P3689264983321174764.a, A059268, A059268.P15217573790077737885.a, A073424, A073424.P9168526329464022542.a, A130321, A130321.P6740187654358347306.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000079, A000079.P10855139691139572931.a, A003056, A003056.P5318256527314048597.a, A018900, A018900.P2868698677378612256.a, A025581, A025581.P420762180635059694.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A140513, A140513.P13579608035938851890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131830

/-! ## A131830.P17673692551192983358

`A007318(n)*A131821(n+1)`
-/

namespace A131830.P17673692551192983358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A131821 (n + 1)

end

end A131830.P17673692551192983358

namespace A131830

/-- `A007318(n)*A131821(n+1)` -/
def P17673692551192983358.Spec : Prop :=
  ∀ n, P17673692551192983358.a n = A131830 n

end A131830

/-! ## A131830.P5247071336894507040

`(A131843(n)+A109128(n))/2`
-/

namespace A131830.P5247071336894507040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131843 n + A109128 n : ℚ) / 2

end

end A131830.P5247071336894507040

namespace A131830

/-- `(A131843(n)+A109128(n))/2` -/
def P5247071336894507040.Spec : Prop :=
  ∀ n, P5247071336894507040.a n = (A131830 n : ℚ)

theorem P5247071336894507040.correct : P5247071336894507040.Spec := by
  intro n
  simp only [A131830, Nat.add_sub_cancel, A131830.P5247071336894507040.a, A131830.P11981854450058335817.a, A014473, A014473.P9301799580602651200.a, A109128, A109128.P11896187039746255515.a, A131821, A131821.P13312494062197045656.a, A131843, A131843.P9084898771744653632.a, A007318, A007318.P302227728145965961.a, A028326, A028326.P16610217584664895500.a, A131816, A131816.P3689264983321174764.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P6740187654358347306.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000079, A000079.P10855139691139572931.a, A003056, A003056.P5318256527314048597.a, A018900, A018900.P2868698677378612256.a, A025581, A025581.P420762180635059694.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A140513, A140513.P13579608035938851890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131830

/-! ## A131830.P17174920457928468578

`(A132073(n)+A128715(n))/2`
-/

namespace A131830.P17174920457928468578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132073 n + A128715 n : ℚ) / 2

end

end A131830.P17174920457928468578

namespace A131830

/-- `(A132073(n)+A128715(n))/2` -/
def P17174920457928468578.Spec : Prop :=
  ∀ n, P17174920457928468578.a n = (A131830 n : ℚ)

end A131830

/-! ## A131830.P12468370862664704718

`A131948(n)+1-A131901(n+1)`
-/

namespace A131830.P12468370862664704718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131948 n + (1 - A131901 (n + 1))

end

end A131830.P12468370862664704718

namespace A131830

/-- `A131948(n)+1-A131901(n+1)` -/
def P12468370862664704718.Spec : Prop :=
  ∀ n, P12468370862664704718.a n = A131830 n

end A131830

/-! ## A131830.P11500554426200826442

`(A131843(n)+1)/2*A007318(n)`
-/

namespace A131830.P11500554426200826442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131843 n + 1 : ℚ) / 2 * (A007318 n : ℚ)

end

end A131830.P11500554426200826442

namespace A131830

/-- `(A131843(n)+1)/2*A007318(n)` -/
def P11500554426200826442.Spec : Prop :=
  ∀ n, P11500554426200826442.a n = (A131830 n : ℚ)

end A131830

/-! ## A131830.P12097913835079212160

`A007318(n)*A001057(A131843(n))`
-/

namespace A131830.P12097913835079212160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A001057 (A131843 n).toNat

end

end A131830.P12097913835079212160

namespace A131830

/-- `A007318(n)*A001057(A131843(n))` -/
def P12097913835079212160.Spec : Prop :=
  ∀ n, P12097913835079212160.a n = A131830 n

end A131830

/-! ## A131830.P1662653133808355242

`A007318(n)-A001057(A131843(n)-1)`
-/

namespace A131830.P1662653133808355242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A001057 (A131843 n - 1).toNat

end

end A131830.P1662653133808355242

namespace A131830

/-- `A007318(n)-A001057(A131843(n)-1)` -/
def P1662653133808355242.Spec : Prop :=
  ∀ n, P1662653133808355242.a n = A131830 n

end A131830

/-! ## A131830.P5962167147991207120

`A128715(n)+A014473(n)/A128715(n)`
-/

namespace A131830.P5962167147991207120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128715 n : ℚ) + (A014473 n : ℚ) / (A128715 n : ℚ)

end

end A131830.P5962167147991207120

namespace A131830

/-- `A128715(n)+A014473(n)/A128715(n)` -/
def P5962167147991207120.Spec : Prop :=
  ∀ n, P5962167147991207120.a n = (A131830 n : ℚ)

end A131830

/-! ## A131830.P7599649520808315925

`A007318(n)*A051597(n*A103451(n))`
-/

namespace A131830.P7599649520808315925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A051597 ((n : ℤ) * A103451 n).toNat

end

end A131830.P7599649520808315925

namespace A131830

/-- `A007318(n)*A051597(n*A103451(n))` -/
def P7599649520808315925.Spec : Prop :=
  ∀ n, P7599649520808315925.a n = A131830 n

end A131830

/-! ## A131830.P45915969727043177

`A007318(n)+C(A003056(n), A007318(n)²)`
-/

namespace A131830.P45915969727043177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (Nat.choose (A003056 n).toNat (A007318 n ^ 2).toNat : ℤ)

end

end A131830.P45915969727043177

namespace A131830

/-- `A007318(n)+C(A003056(n), A007318(n)²)` -/
def P45915969727043177.Spec : Prop :=
  ∀ n, P45915969727043177.a n = A131830 n

end A131830

/-! ## A131830.P10356406699930390695

`A007318(n)+C(A004481(n), A007318(n)²)`
-/

namespace A131830.P10356406699930390695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (Nat.choose (A004481 n).toNat (A007318 n ^ 2).toNat : ℤ)

end

end A131830.P10356406699930390695

namespace A131830

/-- `A007318(n)+C(A004481(n), A007318(n)²)` -/
def P10356406699930390695.Spec : Prop :=
  ∀ n, P10356406699930390695.a n = A131830 n

end A131830

/-! ## A131830.P2733497784181795894

`A007318(n)+C(A261096(n), A007318(n)²)`
-/

namespace A131830.P2733497784181795894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (Nat.choose (A261096 n).toNat (A007318 n ^ 2).toNat : ℤ)

end

end A131830.P2733497784181795894

namespace A131830

/-- `A007318(n)+C(A261096(n), A007318(n)²)` -/
def P2733497784181795894.Spec : Prop :=
  ∀ n, P2733497784181795894.a n = A131830 n

end A131830

/-! ## A131830.P11462915110900118728

`A007318(n)+C(A261216(n), A007318(n)²)`
-/

namespace A131830.P11462915110900118728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (Nat.choose (A261216 n).toNat (A007318 n ^ 2).toNat : ℤ)

end

end A131830.P11462915110900118728

namespace A131830

/-- `A007318(n)+C(A261216(n), A007318(n)²)` -/
def P11462915110900118728.Spec : Prop :=
  ∀ n, P11462915110900118728.a n = A131830 n

end A131830

/-!
# A131832: 2*(A131830) - A000012.

The programs for A131832, the canonical program `A131832.P1419238520302392278` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131832 has offset 0).

The definition of A131832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131832.P1419238520302392278

`2*A131830(n)-1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A131832

/-- `2*A131830(n)-1` -/
def P1419238520302392278.Spec : Prop :=
  ∀ n, P1419238520302392278.a n = A131832 n

theorem P1419238520302392278.correct : P1419238520302392278.Spec := by
  intro n
  simp only [A131832]

end A131832

/-! ## A131832.P14556430137320118276

`A109128(n)*A131843(n)`
-/

namespace A131832.P14556430137320118276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n * A131843 n

end

end A131832.P14556430137320118276

namespace A131832

/-- `A109128(n)*A131843(n)` -/
def P14556430137320118276.Spec : Prop :=
  ∀ n, P14556430137320118276.a n = A131832 n

end A131832

/-! ## A131832.P3059143446829299045

`A128715(n)+A132073(n)-1`
-/

namespace A131832.P3059143446829299045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128715 n + (A132073 n - 1)

end

end A131832.P3059143446829299045

namespace A131832

/-- `A128715(n)+A132073(n)-1` -/
def P3059143446829299045.Spec : Prop :=
  ∀ n, P3059143446829299045.a n = A131832 n

end A131832

/-! ## A131832.P4548290097128622038

`A131843(n)+2*A014473(n)`
-/

namespace A131832.P4548290097128622038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131843 n + 2 * A014473 n

end

end A131832.P4548290097128622038

namespace A131832

/-- `A131843(n)+2*A014473(n)` -/
def P4548290097128622038.Spec : Prop :=
  ∀ n, P4548290097128622038.a n = A131832 n

theorem P4548290097128622038.correct : P4548290097128622038.Spec := by
  intro n
  simp only [A131832, Nat.add_sub_cancel, A131832.P4548290097128622038.a, A131832.P1419238520302392278.a, A014473, A014473.P9301799580602651200.a, A131830, A131830.P11981854450058335817.a, A131843, A131843.P9084898771744653632.a, A007318, A007318.P302227728145965961.a, A131821, A131821.P13312494062197045656.a, A131816, A131816.P3689264983321174764.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A059268, A059268.P15217573790077737885.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A130321, A130321.P6740187654358347306.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131832

/-! ## A131832.P10494445421016746207

`A109128(n)+2*A144217(n+1)`
-/

namespace A131832.P10494445421016746207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + 2 * A144217 (n + 1)

end

end A131832.P10494445421016746207

namespace A131832

/-- `A109128(n)+2*A144217(n+1)` -/
def P10494445421016746207.Spec : Prop :=
  ∀ n, P10494445421016746207.a n = A131832 n

theorem P10494445421016746207.correct : P10494445421016746207.Spec := by
  intro n
  simp only [A131832, Nat.add_sub_cancel, A131832.P10494445421016746207.a, A131832.P1419238520302392278.a, A109128, A109128.P11896187039746255515.a, A131830, A131830.P11981854450058335817.a, A144217, A144217.P17527769007908988650.a, A014473, A014473.P9301799580602651200.a, A028326, A028326.P16610217584664895500.a, A131816, A131816.P3689264983321174764.a, A131821, A131821.P13312494062197045656.a, A007318, A007318.P302227728145965961.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P6740187654358347306.a, A000079, A000079.P10855139691139572931.a, A018900, A018900.P2868698677378612256.a, A025581, A025581.P420762180635059694.a, A140513, A140513.P13579608035938851890.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131832

/-! ## A131832.P5530947970699808994

`2*(A007318(n)*A131821(n+1)+1)-3`
-/

namespace A131832.P5530947970699808994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007318 n * A131821 (n + 1) + 1) - 3

end

end A131832.P5530947970699808994

namespace A131832

/-- `2*(A007318(n)*A131821(n+1)+1)-3` -/
def P5530947970699808994.Spec : Prop :=
  ∀ n, P5530947970699808994.a n = A131832 n

end A131832

/-! ## A131832.P419411714653010781

`lcm(A109128(A028310(n)), A131843(n))`
-/

namespace A131832.P419411714653010781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109128 (A028310 n).toNat) (A131843 n)

end

end A131832.P419411714653010781

namespace A131832

/-- `lcm(A109128(A028310(n)), A131843(n))` -/
def P419411714653010781.Spec : Prop :=
  ∀ n, (P419411714653010781.a n : ℤ) = A131832 n

end A131832

/-! ## A131832.P750018381842121674

`or(A004273(A103516(n)), A109128(n))`
-/

namespace A131832.P750018381842121674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004273 (A103516 n).toNat) (A109128 n)

end

end A131832.P750018381842121674

namespace A131832

/-- `or(A004273(A103516(n)), A109128(n))` -/
def P750018381842121674.Spec : Prop :=
  ∀ n, P750018381842121674.a n = A131832 n

end A131832

/-! ## A131832.P3145828379377635929

`A109128(n)+A005843(A144217(n+1))`
-/

namespace A131832.P3145828379377635929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + A005843 (A144217 (n + 1)).toNat

end

end A131832.P3145828379377635929

namespace A131832

/-- `A109128(n)+A005843(A144217(n+1))` -/
def P3145828379377635929.Spec : Prop :=
  ∀ n, P3145828379377635929.a n = A131832 n

end A131832

/-! ## A131832.P4994146606987231251

`or(A000069(A131821(n+1)), A109128(n))`
-/

namespace A131832.P4994146606987231251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000069 (A131821 (n + 1)).toNat) (A109128 n)

end

end A131832.P4994146606987231251

namespace A131832

/-- `or(A000069(A131821(n+1)), A109128(n))` -/
def P4994146606987231251.Spec : Prop :=
  ∀ n, P4994146606987231251.a n = A131832 n

end A131832

/-! ## A131832.P14520167950427330923

`A128715(n)+A131830(n)-A103451(n)`
-/

namespace A131832.P14520167950427330923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128715 n + (A131830 n - A103451 n)

end

end A131832.P14520167950427330923

namespace A131832

/-- `A128715(n)+A131830(n)-A103451(n)` -/
def P14520167950427330923.Spec : Prop :=
  ∀ n, P14520167950427330923.a n = A131832 n

end A131832

/-! ## A131832.P14658692349462866419

`A023443(2*A131821(n+1))*A109128(n)`
-/

namespace A131832.P14658692349462866419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A131821 (n + 1)).toNat * A109128 n

end

end A131832.P14658692349462866419

namespace A131832

/-- `A023443(2*A131821(n+1))*A109128(n)` -/
def P14658692349462866419.Spec : Prop :=
  ∀ n, P14658692349462866419.a n = A131832 n

end A131832

/-! ## A131832.P8770378586420031208

`A004273(A131830(n))`
-/

namespace A131832.P8770378586420031208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A131830 n).toNat

end

end A131832.P8770378586420031208

namespace A131832

/-- `A004273(A131830(n))` -/
def P8770378586420031208.Spec : Prop :=
  ∀ n, P8770378586420031208.a n = A131832 n

end A131832

/-! ## A131832.P4659804164741628279

`A005408(A131830(n)-1)`
-/

namespace A131832.P4659804164741628279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A131830 n - 1).toNat

end

end A131832.P4659804164741628279

namespace A131832

/-- `A005408(A131830(n)-1)` -/
def P4659804164741628279.Spec : Prop :=
  ∀ n, P4659804164741628279.a n = A131832 n

end A131832

/-! ## A131832.P16946313353263116510

`A004273(A007318(n))*A131843(n)`
-/

namespace A131832.P16946313353263116510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A007318 n).toNat * A131843 n

end

end A131832.P16946313353263116510

namespace A131832

/-- `A004273(A007318(n))*A131843(n)` -/
def P16946313353263116510.Spec : Prop :=
  ∀ n, P16946313353263116510.a n = A131832 n

end A131832

/-! ## A131832.P15537569285924132600

`A141310(A131830(n)+A131830(n)-2)`
-/

namespace A131832.P15537569285924132600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A131830 n + (A131830 n - 2)).toNat

end

end A131832.P15537569285924132600

namespace A131832

/-- `A141310(A131830(n)+A131830(n)-2)` -/
def P15537569285924132600.Spec : Prop :=
  ∀ n, P15537569285924132600.a n = A131832 n

end A131832

/-! ## A131832.P4291994389420819114

`A141310(A131830(n)-(2-A131830(n)))`
-/

namespace A131832.P4291994389420819114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A131830 n - (2 - A131830 n)).toNat

end

end A131832.P4291994389420819114

namespace A131832

/-- `A141310(A131830(n)-(2-A131830(n)))` -/
def P4291994389420819114.Spec : Prop :=
  ∀ n, P4291994389420819114.a n = A131832 n

end A131832

/-! ## A131832.P12812646972396608571

`A014681(2*A131830(n))`
-/

namespace A131832.P12812646972396608571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A131830 n).toNat

end

end A131832.P12812646972396608571

namespace A131832

/-- `A014681(2*A131830(n))` -/
def P12812646972396608571.Spec : Prop :=
  ∀ n, P12812646972396608571.a n = A131832 n

end A131832

/-! ## A131832.P18446738075211935646

`A063196(2*A131830(n))`
-/

namespace A131832.P18446738075211935646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (2 * A131830 n).toNat

end

end A131832.P18446738075211935646

namespace A131832

/-- `A063196(2*A131830(n))` -/
def P18446738075211935646.Spec : Prop :=
  ∀ n, P18446738075211935646.a n = A131832 n

end A131832

/-! ## A131832.P14287314387705928653

`A028310(A109128(n)+A131843(n)-1)`
-/

namespace A131832.P14287314387705928653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A109128 n + (A131843 n - 1)).toNat

end

end A131832.P14287314387705928653

namespace A131832

/-- `A028310(A109128(n)+A131843(n)-1)` -/
def P14287314387705928653.Spec : Prop :=
  ∀ n, P14287314387705928653.a n = A131832 n

end A131832

/-!
# A131833: a(n) = 2^(n+1) - 1 + 3*n.

The programs for A131833, the canonical program `A131833.P15724065262485915370` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131833 has offset 0).

The definition of A131833 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)-1+3*n` (program `A131833.P15724065262485915370`, by `A131833.P15724065262485915370.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131833.P15724065262485915370

`2^(n+1)-1+3*n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131833

/-- `2^(n+1)-1+3*n` -/
def P15724065262485915370.Spec : Prop :=
  ∀ n, P15724065262485915370.a n = A131833 n

theorem P15724065262485915370.correct : P15724065262485915370.Spec := by
  intro n
  simp only [A131833]

end A131833

/-! ## A131833.P6258297584796109022

`∑[ogf((1+2x-6x^2)/(1-3x+2x^2))]`
-/

namespace A131833.P6258297584796109022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -6] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131833.P6258297584796109022

namespace A131833

/-- `∑[ogf((1+2x-6x^2)/(1-3x+2x^2))]` -/
def P6258297584796109022.Spec : Prop :=
  ∀ n, P6258297584796109022.a n = A131833 n

end A131833

/-! ## A131833.P2433812677774351704

`ogf((1+2x-6x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A131833.P2433812677774351704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -6] [1, -4, 5, -2] n

end

end A131833.P2433812677774351704

namespace A131833

/-- `ogf((1+2x-6x^2)/(1-4x+5x^2-2x^3))` -/
def P2433812677774351704.Spec : Prop :=
  ∀ n, P2433812677774351704.a n = A131833 n

end A131833

/-! ## A131833.P1451932310081900154

`∑[2*a(n-1)-3]` with `a(0)=1, a(1)=5`
-/

namespace A131833.P1451932310081900154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  2 * f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131833.P1451932310081900154

namespace A131833

/-- `∑[2*a(n-1)-3]` -/
def P1451932310081900154.Spec : Prop :=
  ∀ n, P1451932310081900154.a n = A131833 n

end A131833

/-! ## A131833.P7885562855761420618

`floor(2^n+a(n-1)+3)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A131833.P7885562855761420618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ n + (a (n - 1) + 3)

end

end A131833.P7885562855761420618

namespace A131833

/-- `floor(2^n+a(n-1)+3)` -/
def P7885562855761420618.Spec : Prop :=
  ∀ n, (P7885562855761420618.a n : ℤ) = A131833 n

theorem P7885562855761420618.correct : P7885562855761420618.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131833, Nat.add_sub_cancel, A131833.P7885562855761420618.a, A131833.P15724065262485915370.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131833, Nat.add_sub_cancel, A131833.P7885562855761420618.a, A131833.P15724065262485915370.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131833

/-! ## A131833.P3254796492024954366

`∑[a(n-1)+a(n-1)-3]` with `a(0)=1, a(1)=5`
-/

namespace A131833.P3254796492024954366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131833.P3254796492024954366

namespace A131833

/-- `∑[a(n-1)+a(n-1)-3]` -/
def P3254796492024954366.Spec : Prop :=
  ∀ n, P3254796492024954366.a n = A131833 n

end A131833

/-! ## A131833.P14783927238420180062

`∑[a(n-1)-(3-a(n-1))]` with `a(0)=1, a(1)=5`
-/

namespace A131833.P14783927238420180062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) - (3 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131833.P14783927238420180062

namespace A131833

/-- `∑[a(n-1)-(3-a(n-1))]` -/
def P14783927238420180062.Spec : Prop :=
  ∀ n, P14783927238420180062.a n = A131833 n

end A131833

/-! ## A131833.P15279559689190227410

`abs(2*(a(n-1)+3)+1-3*n)` with `a(0)=1`
-/

namespace A131833.P15279559689190227410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |2 * (a (n - 1) + 3) + 1 - (3 * n : ℤ)|

end

end A131833.P15279559689190227410

namespace A131833

/-- `abs(2*(a(n-1)+3)+1-3*n)` -/
def P15279559689190227410.Spec : Prop :=
  ∀ n, P15279559689190227410.a n = A131833 n

end A131833

/-! ## A131833.P10223756122048777254

`abs(4-A086653(n+1))`
-/

namespace A131833.P10223756122048777254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A086653 (n + 1)|

end

end A131833.P10223756122048777254

namespace A131833

/-- `abs(4-A086653(n+1))` -/
def P10223756122048777254.Spec : Prop :=
  ∀ n, P10223756122048777254.a n = A131833 n

end A131833

/-! ## A131833.P8002795877021904345

`abs(3-∑[A000051(n)+2])`
-/

namespace A131833.P8002795877021904345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A131833.P8002795877021904345

namespace A131833

/-- `abs(3-∑[A000051(n)+2])` -/
def P8002795877021904345.Spec : Prop :=
  ∀ n, P8002795877021904345.a n = A131833 n

end A131833

/-! ## A131833.P13760490892371195175

`abs(∑[A000079(n)+3]-3)`
-/

namespace A131833.P13760490892371195175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 3|

end

end A131833.P13760490892371195175

namespace A131833

/-- `abs(∑[A000079(n)+3]-3)` -/
def P13760490892371195175.Spec : Prop :=
  ∀ n, P13760490892371195175.a n = A131833 n

end A131833

/-! ## A131833.P6760974116446194356

`abs(∑[A000225(n)+4]-3)`
-/

namespace A131833.P6760974116446194356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 3|

end

end A131833.P6760974116446194356

namespace A131833

/-- `abs(∑[A000225(n)+4]-3)` -/
def P6760974116446194356.Spec : Prop :=
  ∀ n, P6760974116446194356.a n = A131833 n

end A131833

/-! ## A131833.P1789145916565874291

`∑[A131577(n)+a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A131833.P1789145916565874291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  A131577 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131833.P1789145916565874291

namespace A131833

/-- `∑[A131577(n)+a(n-1)]` -/
def P1789145916565874291.Spec : Prop :=
  ∀ n, P1789145916565874291.a n = A131833 n

end A131833

/-! ## A131833.P15494074501784315612

`abs(A000079(n+1)+3*n-1)`
-/

namespace A131833.P15494074501784315612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (n + 1) + (3 * n : ℤ) - 1|

end

end A131833.P15494074501784315612

namespace A131833

/-- `abs(A000079(n+1)+3*n-1)` -/
def P15494074501784315612.Spec : Prop :=
  ∀ n, P15494074501784315612.a n = A131833 n

end A131833

/-! ## A131833.P517272177071867798

`xor(A083706(n), A178729(n))`
-/

namespace A131833.P517272177071867798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A083706 n) (A178729 n)

end

end A131833.P517272177071867798

namespace A131833

/-- `xor(A083706(n), A178729(n))` -/
def P517272177071867798.Spec : Prop :=
  ∀ n, P517272177071867798.a n = A131833 n

end A131833

/-! ## A131833.P2959909951691249975

`record[A077896(n)+A004526(3*n)]`
-/

namespace A131833.P2959909951691249975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 n + A004526 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131833.P2959909951691249975

namespace A131833

/-- `record[A077896(n)+A004526(3*n)]` -/
def P2959909951691249975.Spec : Prop :=
  ∀ n, P2959909951691249975.a n = A131833 n

end A131833

/-! ## A131833.P5731113313502011623

`record[A077896(n)+A004526(n)+n]`
-/

namespace A131833.P5731113313502011623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 n + (A004526 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131833.P5731113313502011623

namespace A131833

/-- `record[A077896(n)+A004526(n)+n]` -/
def P5731113313502011623.Spec : Prop :=
  ∀ n, P5731113313502011623.a n = A131833 n

end A131833

/-!
# A131835: Numbers starting with 1.

The programs for A131835, there is no canonical definition to state claims against.
-/

/-! ## A131835.P18013058642753985989

`∪[A045707(n+1), A206286(n+1)]`
-/

namespace A131835.P18013058642753985989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A131835.P18013058642753985989

/-!
# A131839: Additive persistence of Sierpinski numbers of first kind.

The programs for A131839, there is no canonical definition to state claims against.
-/

/-! ## A131839.P12034274018874205518

`A001221(A363337(n)+A194650(n+1))`
-/

namespace A131839.P12034274018874205518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A363337 n + A194650 (n + 1)).toNat

end

end A131839.P12034274018874205518

/-! ## A131839.P11448345735292306902

`A152487(xor(A038991(n+1), A047672(n+1)))`
-/

namespace A131839.P11448345735292306902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152487 (Int.xor (A038991 (n + 1)) (A047672 (n + 1))).toNat

end

end A131839.P11448345735292306902

/-!
# A131842: First differences of A007097.

The programs for A131842, there is no canonical definition to state claims against.
-/

/-! ## A131842.P7955968671067536040

`Δ[A007097(n)]`
-/

namespace A131842.P7955968671067536040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131842.P7955968671067536040

/-! ## A131842.P10170360929300419071

`Δ[A095938(n+1)]`
-/

namespace A131842.P10170360929300419071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131842.P10170360929300419071

/-! ## A131842.P9940761990970629311

`Δ[record[A095938(A065648(n))]]`
-/

namespace A131842.P9940761990970629311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095938 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131842.P9940761990970629311

/-! ## A131842.P9317060543375520402

`A007097(n+1)-A007097(n)`
-/

namespace A131842.P9317060543375520402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007097 (n + 1) - A007097 n

end

end A131842.P9317060543375520402

/-! ## A131842.P624177466844420620

`A095938(n+2)-A095938(n+1)`
-/

namespace A131842.P624177466844420620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095938 (n + 2) - A095938 (n + 1)

end

end A131842.P624177466844420620

/-!
# A131843: Triangle read by rows: 2*A131821 - A000012.

The programs for A131843, the canonical program `A131843.P9084898771744653632` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131843 has offset 0).

The definition of A131843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131843.P1475631034529048873

`abs(1-2*A103516(n))`
-/

namespace A131843.P1475631034529048873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A103516 n|

end

end A131843.P1475631034529048873

namespace A131843

/-- `abs(1-2*A103516(n))` -/
def P1475631034529048873.Spec : Prop :=
  ∀ n, P1475631034529048873.a n = A131843 n

end A131843

/-! ## A131843.P16918346136650435324

`2*A144217(n+1)+1`
-/

namespace A131843.P16918346136650435324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144217 (n + 1) + 1

end

end A131843.P16918346136650435324

namespace A131843

/-- `2*A144217(n+1)+1` -/
def P16918346136650435324.Spec : Prop :=
  ∀ n, P16918346136650435324.a n = A131843 n

theorem P16918346136650435324.correct : P16918346136650435324.Spec := by
  intro n
  simp only [A131843, Nat.add_sub_cancel, A131843.P16918346136650435324.a, A131843.P9084898771744653632.a, A131821, A131821.P13312494062197045656.a, A144217, A144217.P17527769007908988650.a, A131816, A131816.P3689264983321174764.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P6740187654358347306.a, A000079, A000079.P10855139691139572931.a, A018900, A018900.P2868698677378612256.a, A025581, A025581.P420762180635059694.a, A140513, A140513.P13579608035938851890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131843

/-! ## A131843.P9084898771744653632

`2*A131821(n+1)-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A131843

/-- `2*A131821(n+1)-1` -/
def P9084898771744653632.Spec : Prop :=
  ∀ n, P9084898771744653632.a n = A131843 n

theorem P9084898771744653632.correct : P9084898771744653632.Spec := by
  intro n
  simp only [A131843]

end A131843

/-! ## A131843.P6481292313615574368

`A004396(A131844(n))`
-/

namespace A131843.P6481292313615574368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A131844 n).toNat

end

end A131843.P6481292313615574368

namespace A131843

/-- `A004396(A131844(n))` -/
def P6481292313615574368.Spec : Prop :=
  ∀ n, P6481292313615574368.a n = A131843 n

end A131843

/-! ## A131843.P9389407011086418498

`A004273(A131821(n+1))`
-/

namespace A131843.P9389407011086418498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A131821 (n + 1)).toNat

end

end A131843.P9389407011086418498

namespace A131843

/-- `A004273(A131821(n+1))` -/
def P9389407011086418498.Spec : Prop :=
  ∀ n, P9389407011086418498.a n = A131843 n

end A131843

/-! ## A131843.P12712009998725836571

`A005408(A144217(n+1))`
-/

namespace A131843.P12712009998725836571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A144217 (n + 1)).toNat

end

end A131843.P12712009998725836571

namespace A131843

/-- `A005408(A144217(n+1))` -/
def P12712009998725836571.Spec : Prop :=
  ∀ n, P12712009998725836571.a n = A131843 n

end A131843

/-! ## A131843.P16632567753497112331

`A008620(2*A131844(n))`
-/

namespace A131843.P16632567753497112331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * A131844 n).toNat

end

end A131843.P16632567753497112331

namespace A131843

/-- `A008620(2*A131844(n))` -/
def P16632567753497112331.Spec : Prop :=
  ∀ n, P16632567753497112331.a n = A131843 n

end A131843

/-! ## A131843.P157138169443424696

`or(1, A004273(A103516(n)))`
-/

namespace A131843.P157138169443424696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004273 (A103516 n).toNat)

end

end A131843.P157138169443424696

namespace A131843

/-- `or(1, A004273(A103516(n)))` -/
def P157138169443424696.Spec : Prop :=
  ∀ n, P157138169443424696.a n = A131843 n

end A131843

/-! ## A131843.P3087436833847472902

`A027170(n*A103451(n))`
-/

namespace A131843.P3087436833847472902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 ((n : ℤ) * A103451 n).toNat

end

end A131843.P3087436833847472902

namespace A131843

/-- `A027170(n*A103451(n))` -/
def P3087436833847472902.Spec : Prop :=
  ∀ n, P3087436833847472902.a n = A131843 n

end A131843

/-! ## A131843.P15747225526727047988

`A131832(n)/A109128(n)`
-/

namespace A131843.P15747225526727047988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131832 n : ℚ) / (A109128 n : ℚ)

end

end A131843.P15747225526727047988

namespace A131843

/-- `A131832(n)/A109128(n)` -/
def P15747225526727047988.Spec : Prop :=
  ∀ n, P15747225526727047988.a n = (A131843 n : ℚ)

end A131843

/-! ## A131843.P3382328463344953892

`gcd(A014473(n), A131832(n))`
-/

namespace A131843.P3382328463344953892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 n) (A131832 n)

end

end A131843.P3382328463344953892

namespace A131843

/-- `gcd(A014473(n), A131832(n))` -/
def P3382328463344953892.Spec : Prop :=
  ∀ n, (P3382328463344953892.a n : ℤ) = A131843 n

end A131843

/-! ## A131843.P3779043292555881315

`A004273(A144217(n+1)+1)`
-/

namespace A131843.P3779043292555881315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A144217 (n + 1) + 1).toNat

end

end A131843.P3779043292555881315

namespace A131843

/-- `A004273(A144217(n+1)+1)` -/
def P3779043292555881315.Spec : Prop :=
  ∀ n, P3779043292555881315.a n = A131843 n

end A131843

/-! ## A131843.P9390650059942640734

`A023443(2*A131821(n+1))`
-/

namespace A131843.P9390650059942640734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A131821 (n + 1)).toNat

end

end A131843.P9390650059942640734

namespace A131843

/-- `A023443(2*A131821(n+1))` -/
def P9390650059942640734.Spec : Prop :=
  ∀ n, P9390650059942640734.a n = A131843 n

end A131843

/-! ## A131843.P13451895221121074367

`A131844(n)-A144217(n+1)`
-/

namespace A131843.P13451895221121074367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131844 n - A144217 (n + 1)

end

end A131843.P13451895221121074367

namespace A131843

/-- `A131844(n)-A144217(n+1)` -/
def P13451895221121074367.Spec : Prop :=
  ∀ n, P13451895221121074367.a n = A131843 n

end A131843

/-! ## A131843.P7118674016949354602

`A131832(n)+2-A028326(n)`
-/

namespace A131843.P7118674016949354602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131832 n + (2 - A028326 n)

end

end A131843.P7118674016949354602

namespace A131843

/-- `A131832(n)+2-A028326(n)` -/
def P7118674016949354602.Spec : Prop :=
  ∀ n, P7118674016949354602.a n = A131843 n

theorem P7118674016949354602.correct : P7118674016949354602.Spec := by
  intro n
  simp only [A131843, Nat.add_sub_cancel, A131843.P7118674016949354602.a, A131843.P9084898771744653632.a, A028326, A028326.P16610217584664895500.a, A131821, A131821.P13312494062197045656.a, A131832, A131832.P1419238520302392278.a, A007318, A007318.P302227728145965961.a, A131816, A131816.P3689264983321174764.a, A131830, A131830.P11981854450058335817.a, A014473, A014473.P9301799580602651200.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P6740187654358347306.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000079, A000079.P10855139691139572931.a, A003056, A003056.P5318256527314048597.a, A018900, A018900.P2868698677378612256.a, A025581, A025581.P420762180635059694.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A140513, A140513.P13579608035938851890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131843

/-! ## A131843.P14275282104372797803

`A144217(n+1)+A131821(n+1)`
-/

namespace A131843.P14275282104372797803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144217 (n + 1) + A131821 (n + 1)

end

end A131843.P14275282104372797803

namespace A131843

/-- `A144217(n+1)+A131821(n+1)` -/
def P14275282104372797803.Spec : Prop :=
  ∀ n, P14275282104372797803.a n = A131843 n

theorem P14275282104372797803.correct : P14275282104372797803.Spec := by
  intro n
  simp only [A131843, Nat.add_sub_cancel, A131843.P14275282104372797803.a, A131843.P9084898771744653632.a, A131821, A131821.P13312494062197045656.a, A144217, A144217.P17527769007908988650.a, A131816, A131816.P3689264983321174764.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P6740187654358347306.a, A000079, A000079.P10855139691139572931.a, A018900, A018900.P2868698677378612256.a, A025581, A025581.P420762180635059694.a, A140513, A140513.P13579608035938851890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A131843

/-! ## A131843.P17876883158226229382

`2*A003056(n*A103451(n))+1`
-/

namespace A131843.P17876883158226229382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003056 ((n : ℤ) * A103451 n).toNat + 1

end

end A131843.P17876883158226229382

namespace A131843

/-- `2*A003056(n*A103451(n))+1` -/
def P17876883158226229382.Spec : Prop :=
  ∀ n, P17876883158226229382.a n = A131843 n

end A131843

/-! ## A131843.P13544489573756309387

`2*A051597(n*A103451(n))-1`
-/

namespace A131843.P13544489573756309387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051597 ((n : ℤ) * A103451 n).toNat - 1

end

end A131843.P13544489573756309387

namespace A131843

/-- `2*A051597(n*A103451(n))-1` -/
def P13544489573756309387.Spec : Prop :=
  ∀ n, P13544489573756309387.a n = A131843 n

end A131843

/-! ## A131843.P16313364523024193853

`2*A131830(n)/A007318(n)-1`
-/

namespace A131843.P16313364523024193853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A131830 n : ℚ) / (A007318 n : ℚ)) - 1

end

end A131843.P16313364523024193853

namespace A131843

/-- `2*A131830(n)/A007318(n)-1` -/
def P16313364523024193853.Spec : Prop :=
  ∀ n, P16313364523024193853.a n = (A131843 n : ℚ)

end A131843

/-! ## A131843.P4987758602624838974

`2*A002024(lcm(n, Δ[A010054(n)])+1)-1`
-/

namespace A131843.P4987758602624838974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002024 (Int.lcm (n : ℤ) (f1 (n + 1) - f1 n) + 1) - 1

end

end A131843.P4987758602624838974

namespace A131843

/-- `2*A002024(lcm(n, Δ[A010054(n)])+1)-1` -/
def P4987758602624838974.Spec : Prop :=
  ∀ n, P4987758602624838974.a n = A131843 n

end A131843

/-!
# A131844: 3*A131821 - 2.

The programs for A131844, the canonical program `A131844.P2662401534427251052` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131844 has offset 0).

The definition of A131844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131844.P2662401534427251052

`floor(3/2*A131843(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A131844

/-- `floor(3/2*A131843(n))` -/
def P2662401534427251052.Spec : Prop :=
  ∀ n, P2662401534427251052.a n = A131844 n

theorem P2662401534427251052.correct : P2662401534427251052.Spec := by
  intro n
  simp only [A131844]

end A131844

/-! ## A131844.P17238280126850485883

`3*A144217(n+1)+1`
-/

namespace A131844.P17238280126850485883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A144217 (n + 1) + 1

end

end A131844.P17238280126850485883

namespace A131844

/-- `3*A144217(n+1)+1` -/
def P17238280126850485883.Spec : Prop :=
  ∀ n, P17238280126850485883.a n = A131844 n

end A131844

/-! ## A131844.P11606778558404514080

`3*A131821(n+1)-2`
-/

namespace A131844.P11606778558404514080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A131821 (n + 1) - 2

end

end A131844.P11606778558404514080

namespace A131844

/-- `3*A131821(n+1)-2` -/
def P11606778558404514080.Spec : Prop :=
  ∀ n, P11606778558404514080.a n = A131844 n

end A131844

/-! ## A131844.P11595354341309202373

`3*val(A131816(n), 2)+1`
-/

namespace A131844.P11595354341309202373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.valuation (A131816 n).toNat 2 + 1

end

end A131844.P11595354341309202373

namespace A131844

/-- `3*val(A131816(n), 2)+1` -/
def P11595354341309202373.Spec : Prop :=
  ∀ n, (P11595354341309202373.a n : ℤ) = A131844 n

end A131844

/-! ## A131844.P10800751782069786145

`A001651(A131843(n))`
-/

namespace A131844.P10800751782069786145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A131843 n).toNat

end

end A131844.P10800751782069786145

namespace A131844

/-- `A001651(A131843(n))` -/
def P10800751782069786145.Spec : Prop :=
  ∀ n, P10800751782069786145.a n = A131844 n

end A131844

/-! ## A131844.P15744267508959763577

`A016777(A144217(n+1))`
-/

namespace A131844.P15744267508959763577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A144217 (n + 1)).toNat

end

end A131844.P15744267508959763577

namespace A131844

/-- `A016777(A144217(n+1))` -/
def P15744267508959763577.Spec : Prop :=
  ∀ n, P15744267508959763577.a n = A131844 n

end A131844

/-! ## A131844.P13265298481767083024

`A016777(A131821(n+1)-1)`
-/

namespace A131844.P13265298481767083024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A131821 (n + 1) - 1).toNat

end

end A131844.P13265298481767083024

namespace A131844

/-- `A016777(A131821(n+1)-1)` -/
def P13265298481767083024.Spec : Prop :=
  ∀ n, P13265298481767083024.a n = A131844 n

end A131844

/-! ## A131844.P2239608849146917861

`A144217(n+1)+A131843(n)`
-/

namespace A131844.P2239608849146917861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144217 (n + 1) + A131843 n

end

end A131844.P2239608849146917861

namespace A131844

/-- `A144217(n+1)+A131843(n)` -/
def P2239608849146917861.Spec : Prop :=
  ∀ n, P2239608849146917861.a n = A131844 n

end A131844

/-! ## A131844.P2983664488592369590

`A131821(n+1)+A131843(n)-1`
-/

namespace A131844.P2983664488592369590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) + (A131843 n - 1)

end

end A131844.P2983664488592369590

namespace A131844

/-- `A131821(n+1)+A131843(n)-1` -/
def P2983664488592369590.Spec : Prop :=
  ∀ n, P2983664488592369590.a n = A131844 n

end A131844

/-! ## A131844.P953441612163445675

`A131843(n)+A131900(n)-A128174(n+1)`
-/

namespace A131844.P953441612163445675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131843 n + (A131900 n - A128174 (n + 1))

end

end A131844.P953441612163445675

namespace A131844

/-- `A131843(n)+A131900(n)-A128174(n+1)` -/
def P953441612163445675.Spec : Prop :=
  ∀ n, P953441612163445675.a n = A131844 n

end A131844

/-! ## A131844.P11450615107540486563

`val((A350770(n+1)+1)^3, 2)+1`
-/

namespace A131844.P11450615107540486563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((A350770 (n + 1) + 1) ^ 3).toNat 2 + 1

end

end A131844.P11450615107540486563

namespace A131844

/-- `val((A350770(n+1)+1)^3, 2)+1` -/
def P11450615107540486563.Spec : Prop :=
  ∀ n, (P11450615107540486563.a n : ℤ) = A131844 n

end A131844

/-! ## A131844.P12761859690950814337

`A131821(A060544(A131821(n+1)))`
-/

namespace A131844.P12761859690950814337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (A060544 (A131821 (n + 1)).toNat).toNat

end

end A131844.P12761859690950814337

namespace A131844

/-- `A131821(A060544(A131821(n+1)))` -/
def P12761859690950814337.Spec : Prop :=
  ∀ n, P12761859690950814337.a n = A131844 n

end A131844

/-!
# A131847: Positive integers n which each have at least one "isolated isolated divisor". An isolated isolated divisor is an isolated divisor that is not adjacent to any other isolated divisors in the list of all positive divisors of n. A divisor, k, of n is isolated if neither (k-1) nor (k+1) divides n.

The programs for A131847, there is no canonical definition to state claims against.
-/

/-! ## A131847.P13372967256625297950

`A369339(A153145(n+2))`
-/

namespace A131847.P13372967256625297950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369339 (A153145 (n + 2)).toNat

end

end A131847.P13372967256625297950

/-! ## A131847.P17993336052815383581

`A038759(record[Δ[A180428(n+1)]])`
-/

namespace A131847.P17993336052815383581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180428 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038759 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A131847.P17993336052815383581

/-!
# A131848: Least nonnegative number which when added to the n-th semiprime gives a multiple of n.

The programs for A131848, the canonical program `A131848.P17070811832609888748` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131848 has offset 1).

The definition of A131848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131848.P9340594205298793826

`n-A186621(n+1)%(n+1)`
-/

namespace A131848.P9340594205298793826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A186621 (n + 1)) (n + 1 : ℤ)

end

end A131848.P9340594205298793826

namespace A131848

/-- `n-A186621(n+1)%(n+1)` -/
def P9340594205298793826.Spec : Prop :=
  ∀ n, P9340594205298793826.a n = A131848 (n + 1)

end A131848

/-! ## A131848.P18043793670264915410

`(n*A001358(n+1))%(n+1)`
-/

namespace A131848.P18043793670264915410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A001358 (n + 1)) (n + 1 : ℤ)

end

end A131848.P18043793670264915410

namespace A131848

/-- `(n*A001358(n+1))%(n+1)` -/
def P18043793670264915410.Spec : Prop :=
  ∀ n, P18043793670264915410.a n = A131848 (n + 1)

end A131848

/-! ## A131848.P17070811832609888748

`(n*A100493(n+1))%(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A131848

/-- `(n*A100493(n+1))%(n+1)` -/
def P17070811832609888748.Spec : Prop :=
  ∀ n, P17070811832609888748.a n = A131848 (n + 1)

theorem P17070811832609888748.correct : P17070811832609888748.Spec := by
  intro n
  simp only [A131848, Nat.add_sub_cancel]

end A131848

/-! ## A131848.P3506315923842490339

`(2-A088707(n+1))%(n+1)+n`
-/

namespace A131848.P3506315923842490339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - A088707 (n + 1)) (n + 1 : ℤ) + (n : ℤ)

end

end A131848.P3506315923842490339

namespace A131848

/-- `(2-A088707(n+1))%(n+1)+n` -/
def P3506315923842490339.Spec : Prop :=
  ∀ n, P3506315923842490339.a n = A131848 (n + 1)

end A131848

/-! ## A131848.P17482726872007802830

`n-eq[2, A001222(n+1)]%(n+1)`
-/

namespace A131848.P17482726872007802830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % (n + 1) : ℕ) : ℤ)

end

end A131848.P17482726872007802830

namespace A131848

/-- `n-eq[2, A001222(n+1)]%(n+1)` -/
def P17482726872007802830.Spec : Prop :=
  ∀ n, P17482726872007802830.a n = A131848 (n + 1)

end A131848

/-! ## A131848.P6070107492141715063

`(A027800(n)-A001358(n+1))%(n+1)`
-/

namespace A131848.P6070107492141715063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027800 n - A001358 (n + 1)) (n + 1 : ℤ)

end

end A131848.P6070107492141715063

namespace A131848

/-- `(A027800(n)-A001358(n+1))%(n+1)` -/
def P6070107492141715063.Spec : Prop :=
  ∀ n, P6070107492141715063.a n = A131848 (n + 1)

end A131848

/-!
# A131849: Cardinality of largest subset of {1,...,n} such that the difference between any two elements of the subset is never one less than a prime.

The programs for A131849, there is no canonical definition to state claims against.
-/

/-! ## A131849.P9281265687765214518

`∑[char[A359301(n+1)]]`
-/

namespace A131849.P9281265687765214518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359301 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131849.P9281265687765214518

/-! ## A131849.P14119302304917365973

`∑[A281814(A070993(n+5))]`
-/

namespace A131849.P14119302304917365973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281814 (A070993 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131849.P14119302304917365973

/-! ## A131849.P3349380466653272124

`A130255(n+1)-A035194(A290348(n+1))`
-/

namespace A131849.P3349380466653272124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130255 (n + 1) - A035194 (A290348 (n + 1)).toNat

end

end A131849.P3349380466653272124

/-! ## A131849.P13408987477811637367

`∑[and(A068716(n+1), A182983(3*(n+1)))]`
-/

namespace A131849.P13408987477811637367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068716 (n + 1)) (A182983 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131849.P13408987477811637367

/-! ## A131849.P983686140014087556

`A004218(∑[A131503(n+1)^(A322343(n+1)%3)]+1)`
-/

namespace A131849.P983686140014087556
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131503 (n + 1) : ℚ) ^ (Int.tmod (A322343 (n + 1)) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A131849.P983686140014087556

/-!
# A131850: Odious 3-almost primes.

The programs for A131850, the canonical program `A131850.P13687158872308473205` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131850 has offset 1).

The definition of A131850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2931 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131850.P13687158872308473205

`∩[A014612(n+1), A125495(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A131850

/-- `∩[A014612(n+1), A125495(n+1)]` -/
def P13687158872308473205.Spec : Prop :=
  ∀ n, (P13687158872308473205.a n : ℤ) = A131850 (n + 1)

theorem P13687158872308473205.correct : P13687158872308473205.Spec := by
  intro n
  simp only [A131850, Nat.add_sub_cancel]

end A131850

/-! ## A131850.P17041505740414746451

`∩[A125495(n+1), A298207(n+1)]`
-/

namespace A131850.P17041505740414746451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131850.P17041505740414746451

namespace A131850

/-- `∩[A125495(n+1), A298207(n+1)]` -/
def P17041505740414746451.Spec : Prop :=
  ∀ n, (P17041505740414746451.a n : ℤ) = A131850 (n + 1)

end A131850

/-! ## A131850.P17997298516329595109

`∩[A014612(n+1), A229937(n+1)]`
-/

namespace A131850.P17997298516329595109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131850.P17997298516329595109

namespace A131850

/-- `∩[A014612(n+1), A229937(n+1)]` -/
def P17997298516329595109.Spec : Prop :=
  ∀ n, (P17997298516329595109.a n : ℤ) = A131850 (n + 1)

end A131850

/-! ## A131850.P6382051624185250638

`∩[A000069(n+1), A014612(n+1)]`
-/

namespace A131850.P6382051624185250638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131850.P6382051624185250638

namespace A131850

/-- `∩[A000069(n+1), A014612(n+1)]` -/
def P6382051624185250638.Spec : Prop :=
  ∀ n, (P6382051624185250638.a n : ℤ) = A131850 (n + 1)

end A131850

/-! ## A131850.P12469225319205931296

`filter[A014612(n+1), A010060(#)]`
-/

namespace A131850.P12469225319205931296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A131850.P12469225319205931296

namespace A131850

/-- `filter[A014612(n+1), A010060(#)]` -/
def P12469225319205931296.Spec : Prop :=
  ∀ n, P12469225319205931296.a n = A131850 (n + 1)

end A131850

/-! ## A131850.P2973490757231653586

`record[A102392(A014612(n+1))]`
-/

namespace A131850.P2973490757231653586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102392 (A014612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131850.P2973490757231653586

namespace A131850

/-- `record[A102392(A014612(n+1))]` -/
def P2973490757231653586.Spec : Prop :=
  ∀ n, P2973490757231653586.a n = A131850 (n + 1)

end A131850

/-! ## A131850.P8843665067538083459

`filter[A000069(n+1), A101605(#)]`
-/

namespace A131850.P8843665067538083459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A131850.P8843665067538083459

namespace A131850

/-- `filter[A000069(n+1), A101605(#)]` -/
def P8843665067538083459.Spec : Prop :=
  ∀ n, P8843665067538083459.a n = A131850 (n + 1)

end A131850

/-! ## A131850.P5683242442165241842

`filter[A125495(n+1), A101605(#)]`
-/

namespace A131850.P5683242442165241842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A131850.P5683242442165241842

namespace A131850

/-- `filter[A125495(n+1), A101605(#)]` -/
def P5683242442165241842.Spec : Prop :=
  ∀ n, P5683242442165241842.a n = A131850 (n + 1)

end A131850

/-! ## A131850.P3042204845300379318

`filter[A229937(n+1), A101605(#)]`
-/

namespace A131850.P3042204845300379318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A131850.P3042204845300379318

namespace A131850

/-- `filter[A229937(n+1), A101605(#)]` -/
def P3042204845300379318.Spec : Prop :=
  ∀ n, P3042204845300379318.a n = A131850 (n + 1)

end A131850

/-! ## A131850.P7581880690913038005

`filter[A143579(2*n), A101605(#)]`
-/

namespace A131850.P7581880690913038005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A131850.P7581880690913038005

namespace A131850

/-- `filter[A143579(2*n), A101605(#)]` -/
def P7581880690913038005.Spec : Prop :=
  ∀ n, P7581880690913038005.a n = A131850 (n + 1)

end A131850

/-! ## A131850.P15803374399958506981

`filter[A160017(2*n+1), A101605(#)]`
-/

namespace A131850.P15803374399958506981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160017 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A131850.P15803374399958506981

namespace A131850

/-- `filter[A160017(2*n+1), A101605(#)]` -/
def P15803374399958506981.Spec : Prop :=
  ∀ n, P15803374399958506981.a n = A131850 (n + 1)

end A131850

/-! ## A131850.P13988306880334502400

`eq[A001285(n)², A001222(A008706(n))]`
-/

namespace A131850.P13988306880334502400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131850.P13988306880334502400

namespace A131850

/-- `eq[A001285(n)², A001222(A008706(n))]` -/
def P13988306880334502400.Spec : Prop :=
  ∀ n, (P13988306880334502400.a n : ℤ) = A131850 (n + 1)

end A131850

/-! ## A131850.P9184376329620551636

`eq[A001285(2*n+1), A101637(A008706(n))]`
-/

namespace A131850.P9184376329620551636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131850.P9184376329620551636

namespace A131850

/-- `eq[A001285(2*n+1), A101637(A008706(n))]` -/
def P9184376329620551636.Spec : Prop :=
  ∀ n, (P9184376329620551636.a n : ℤ) = A131850 (n + 1)

end A131850

/-!
# A131851: Real part of the function z(n)=Sum(d(k)*i^k: d as in n=Sum(d(k)*2^k), i=sqrt(-1)).

The programs for A131851, the canonical program `A131851.P1942102588328150094` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131851 has offset 0).

The definition of A131851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131851.P1942102588328150094

`n%2-a(floor(n/4))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131851

/-- `n%2-a(floor(n/4))` -/
def P1942102588328150094.Spec : Prop :=
  ∀ n, P1942102588328150094.a n = A131851 n

theorem P1942102588328150094.correct : P1942102588328150094.Spec := by
  intro n
  simp only [A131851]

end A131851

/-! ## A131851.P3932963924287534199

`A065359(A059905(n))`
-/

namespace A131851.P3932963924287534199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A059905 n).toNat

end

end A131851.P3932963924287534199

namespace A131851

/-- `A065359(A059905(n))` -/
def P3932963924287534199.Spec : Prop :=
  ∀ n, P3932963924287534199.a n = A131851 n

end A131851

/-! ## A131851.P13692087318910588269

`A346688(A063694(n))`
-/

namespace A131851.P13692087318910588269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346688 (A063694 n).toNat

end

end A131851.P13692087318910588269

namespace A131851

/-- `A346688(A063694(n))` -/
def P13692087318910588269.Spec : Prop :=
  ∀ n, P13692087318910588269.a n = A131851 n

end A131851

/-! ## A131851.P4548072220740677707

`A000034(n)-(A131852(A004525(n))+1)`
-/

namespace A131851.P4548072220740677707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n - (A131852 (A004525 n).toNat + 1)

end

end A131851.P4548072220740677707

namespace A131851

/-- `A000034(n)-(A131852(A004525(n))+1)` -/
def P4548072220740677707.Spec : Prop :=
  ∀ n, P4548072220740677707.a n = A131851 n

end A131851

/-! ## A131851.P11513569842214702825

`A000034(n)-(A131852(A004526(n))+1)`
-/

namespace A131851.P11513569842214702825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n - (A131852 (A004526 n).toNat + 1)

end

end A131851.P11513569842214702825

namespace A131851

/-- `A000034(n)-(A131852(A004526(n))+1)` -/
def P11513569842214702825.Spec : Prop :=
  ∀ n, P11513569842214702825.a n = A131851 n

end A131851

/-! ## A131851.P4246150293897366027

`A131852(A004514(n))`
-/

namespace A131851.P4246150293897366027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (A004514 n).toNat

end

end A131851.P4246150293897366027

namespace A131851

/-- `A131852(A004514(n))` -/
def P4246150293897366027.Spec : Prop :=
  ∀ n, P4246150293897366027.a n = A131851 n

end A131851

/-! ## A131851.P128707453651772804

`A131852(A057300(n))`
-/

namespace A131851.P128707453651772804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (A057300 n).toNat

end

end A131851.P128707453651772804

namespace A131851

/-- `A131852(A057300(n))` -/
def P128707453651772804.Spec : Prop :=
  ∀ n, P128707453651772804.a n = A131851 n

end A131851

/-! ## A131851.P16770294637726326629

`A131852(A088442(n))`
-/

namespace A131851.P16770294637726326629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (A088442 n).toNat

end

end A131851.P16770294637726326629

namespace A131851

/-- `A131852(A088442(n))` -/
def P16770294637726326629.Spec : Prop :=
  ∀ n, P16770294637726326629.a n = A131851 n

end A131851

/-! ## A131851.P10156975144495389134

`A131852(2*n)`
-/

namespace A131851.P10156975144495389134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (2 * n)

end

end A131851.P10156975144495389134

namespace A131851

/-- `A131852(2*n)` -/
def P10156975144495389134.Spec : Prop :=
  ∀ n, P10156975144495389134.a n = A131851 n

end A131851

/-! ## A131851.P1950891705126822190

`A065359(A059906(2*n))`
-/

namespace A131851.P1950891705126822190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A059906 (2 * n)).toNat

end

end A131851.P1950891705126822190

namespace A131851

/-- `A065359(A059906(2*n))` -/
def P1950891705126822190.Spec : Prop :=
  ∀ n, P1950891705126822190.a n = A131851 n

end A131851

/-!
# A131852: Imaginary part of the function z defined in A131851.

The programs for A131852, the canonical program `A131852.P12166633739623928702` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131852 has offset 0).

The definition of A131852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131852.P12166633739623928702

`A131851(floor(n/2))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131852

/-- `A131851(floor(n/2))` -/
def P12166633739623928702.Spec : Prop :=
  ∀ n, P12166633739623928702.a n = A131852 n

theorem P12166633739623928702.correct : P12166633739623928702.Spec := by
  intro n
  simp only [A131852]

end A131852

/-! ## A131852.P349233697648424638

`A065359(A059906(n))`
-/

namespace A131852.P349233697648424638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A059906 n).toNat

end

end A131852.P349233697648424638

namespace A131852

/-- `A065359(A059906(n))` -/
def P349233697648424638.Spec : Prop :=
  ∀ n, P349233697648424638.a n = A131852 n

end A131852

/-! ## A131852.P14486236271444887321

`A346688((n-A063694(n))/2)`
-/

namespace A131852.P14486236271444887321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346688 (SequenceMachineLib.roundAway (((n : ℤ) - A063694 n : ℚ) / 2)).toNat

end

end A131852.P14486236271444887321

namespace A131852

/-- `A346688((n-A063694(n))/2)` -/
def P14486236271444887321.Spec : Prop :=
  ∀ n, P14486236271444887321.a n = A131852 n

end A131852

/-! ## A131852.P6206816139791905101

`(A346688(n)-A131851(n))/2`
-/

namespace A131852.P6206816139791905101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346688 n - A131851 n : ℚ) / 2

end

end A131852.P6206816139791905101

namespace A131852

/-- `(A346688(n)-A131851(n))/2` -/
def P6206816139791905101.Spec : Prop :=
  ∀ n, P6206816139791905101.a n = (A131852 n : ℚ)

end A131852

/-! ## A131852.P13442728745812207271

`-A131851(2*n)`
-/

namespace A131852.P13442728745812207271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A131851 (2 * n)

end

end A131852.P13442728745812207271

namespace A131852

/-- `-A131851(2*n)` -/
def P13442728745812207271.Spec : Prop :=
  ∀ n, P13442728745812207271.a n = A131852 n

end A131852

/-! ## A131852.P7660618035897090159

`A346688(A063694(2*n)/4)`
-/

namespace A131852.P7660618035897090159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346688 (SequenceMachineLib.roundAway ((A063694 (2 * n) : ℚ) / 4)).toNat

end

end A131852.P7660618035897090159

namespace A131852

/-- `A346688(A063694(2*n)/4)` -/
def P7660618035897090159.Spec : Prop :=
  ∀ n, P7660618035897090159.a n = A131852 n

end A131852

/-! ## A131852.P11392516385133033361

`A000007(n+1)-A131851(2*n)`
-/

namespace A131852.P11392516385133033361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A131851 (2 * n)

end

end A131852.P11392516385133033361

namespace A131852

/-- `A000007(n+1)-A131851(2*n)` -/
def P11392516385133033361.Spec : Prop :=
  ∀ n, P11392516385133033361.a n = A131852 n

end A131852

/-! ## A131852.P3513435635511099621

`(A000007(n)-1)*A131851(2*n)`
-/

namespace A131852.P3513435635511099621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n - 1) * A131851 (2 * n)

end

end A131852.P3513435635511099621

namespace A131852

/-- `(A000007(n)-1)*A131851(2*n)` -/
def P3513435635511099621.Spec : Prop :=
  ∀ n, P3513435635511099621.a n = A131852 n

end A131852

/-! ## A131852.P7745448313029918005

`(A000038(n)-1)*A131851(2*n)`
-/

namespace A131852.P7745448313029918005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n - 1) * A131851 (2 * n)

end

end A131852.P7745448313029918005

namespace A131852

/-- `(A000038(n)-1)*A131851(2*n)` -/
def P7745448313029918005.Spec : Prop :=
  ∀ n, P7745448313029918005.a n = A131852 n

end A131852

/-! ## A131852.P1994996276816547249

`1-A131851(Δ[n²])`
-/

namespace A131852.P1994996276816547249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A131851 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A131852.P1994996276816547249

namespace A131852

/-- `1-A131851(Δ[n²])` -/
def P1994996276816547249.Spec : Prop :=
  ∀ n, P1994996276816547249.a n = A131852 n

end A131852

/-! ## A131852.P18073147671150940310

`-A065359(A059905(2*n))`
-/

namespace A131852.P18073147671150940310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A065359 (A059905 (2 * n)).toNat

end

end A131852.P18073147671150940310

namespace A131852

/-- `-A065359(A059905(2*n))` -/
def P18073147671150940310.Spec : Prop :=
  ∀ n, P18073147671150940310.a n = A131852 n

end A131852

/-! ## A131852.P806035299475839136

`A065359(2*A059905(2*n))`
-/

namespace A131852.P806035299475839136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (2 * A059905 (2 * n)).toNat

end

end A131852.P806035299475839136

namespace A131852

/-- `A065359(2*A059905(2*n))` -/
def P806035299475839136.Spec : Prop :=
  ∀ n, P806035299475839136.a n = A131852 n

end A131852

/-! ## A131852.P3360418347691209761

`1-A346688(A063694(2*n+1))`
-/

namespace A131852.P3360418347691209761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A346688 (A063694 (2 * n + 1)).toNat

end

end A131852.P3360418347691209761

namespace A131852

/-- `1-A346688(A063694(2*n+1))` -/
def P3360418347691209761.Spec : Prop :=
  ∀ n, P3360418347691209761.a n = A131852 n

end A131852

/-! ## A131852.P6464406769621797261

`A142150(2*n)-A131851(2*n)-n`
-/

namespace A131852.P6464406769621797261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * n) - A131851 (2 * n) - (n : ℤ)

end

end A131852.P6464406769621797261

namespace A131852

/-- `A142150(2*n)-A131851(2*n)-n` -/
def P6464406769621797261.Spec : Prop :=
  ∀ n, P6464406769621797261.a n = A131852 n

end A131852

/-! ## A131852.P16602456749199881993

`A065359(A059905(8*n))`
-/

namespace A131852.P16602456749199881993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A059905 (8 * n)).toNat

end

end A131852.P16602456749199881993

namespace A131852

/-- `A065359(A059905(8*n))` -/
def P16602456749199881993.Spec : Prop :=
  ∀ n, P16602456749199881993.a n = A131852 n

end A131852

/-!
# A131853: Numbers m such that z(m)=(0,0) with z as defined in A131851.

The programs for A131853, the canonical program `A131853.P6901481179883769974` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131853 has offset 1).

The definition of A131853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3750 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131853.P6901481179883769974

`∩[A378624(n+1), A008587(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A131853

/-- `∩[A378624(n+1), A008587(n)]` -/
def P6901481179883769974.Spec : Prop :=
  ∀ n, (P6901481179883769974.a n : ℤ) = A131853 (n + 1)

theorem P6901481179883769974.correct : P6901481179883769974.Spec := by
  intro n
  simp only [A131853, Nat.add_sub_cancel]

end A131853

/-! ## A131853.P4063122619991314524

`∩[A131855(n+1), A008587(n)]`
-/

namespace A131853.P4063122619991314524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131853.P4063122619991314524

namespace A131853

/-- `∩[A131855(n+1), A008587(n)]` -/
def P4063122619991314524.Spec : Prop :=
  ∀ n, (P4063122619991314524.a n : ℤ) = A131853 (n + 1)

end A131853

/-! ## A131853.P12749614230891916195

`∩[A131854(n+1), 5*n]`
-/

namespace A131853.P12749614230891916195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131854 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A131853.P12749614230891916195

namespace A131853

/-- `∩[A131854(n+1), 5*n]` -/
def P12749614230891916195.Spec : Prop :=
  ∀ n, (P12749614230891916195.a n : ℤ) = A131853 (n + 1)

end A131853

/-! ## A131853.P10393142283848677475

`∩[A008587(n), A131854(n+1)]`
-/

namespace A131853.P10393142283848677475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131853.P10393142283848677475

namespace A131853

/-- `∩[A008587(n), A131854(n+1)]` -/
def P10393142283848677475.Spec : Prop :=
  ∀ n, (P10393142283848677475.a n : ℤ) = A131853 (n + 1)

end A131853

/-! ## A131853.P5806052951927403126

`filter[A131854(n+1), A079998(#)]`
-/

namespace A131853.P5806052951927403126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A131853.P5806052951927403126

namespace A131853

/-- `filter[A131854(n+1), A079998(#)]` -/
def P5806052951927403126.Spec : Prop :=
  ∀ n, P5806052951927403126.a n = A131853 (n + 1)

end A131853

/-! ## A131853.P2518265827824927832

`filter[A131855(n+1), A079998(#)]`
-/

namespace A131853.P2518265827824927832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A131853.P2518265827824927832

namespace A131853

/-- `filter[A131855(n+1), A079998(#)]` -/
def P2518265827824927832.Spec : Prop :=
  ∀ n, P2518265827824927832.a n = A131853 (n + 1)

end A131853

/-! ## A131853.P4697813829835200389

`filter[A378624(n+1), A079998(#)]`
-/

namespace A131853.P4697813829835200389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A131853.P4697813829835200389

namespace A131853

/-- `filter[A378624(n+1), A079998(#)]` -/
def P4697813829835200389.Spec : Prop :=
  ∀ n, P4697813829835200389.a n = A131853 (n + 1)

end A131853

/-! ## A131853.P4486812880932190562

`eq[0, A330714(n)]`
-/

namespace A131853.P4486812880932190562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131853.P4486812880932190562

namespace A131853

/-- `eq[0, A330714(n)]` -/
def P4486812880932190562.Spec : Prop :=
  ∀ n, (P4486812880932190562.a n : ℤ) = A131853 (n + 1)

end A131853

/-! ## A131853.P12633440334809675076

`eq[5, gcd(5, gcd(n, A005836(n+1)))]`
-/

namespace A131853.P12633440334809675076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 (Int.gcd (n : ℤ) (A005836 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131853.P12633440334809675076

namespace A131853

/-- `eq[5, gcd(5, gcd(n, A005836(n+1)))]` -/
def P12633440334809675076.Spec : Prop :=
  ∀ n, (P12633440334809675076.a n : ℤ) = A131853 (n + 1)

end A131853

/-! ## A131853.P1221161671441841135

`eq[A091703(n), A131852(n)]`
-/

namespace A131853.P1221161671441841135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131853.P1221161671441841135

namespace A131853

/-- `eq[A091703(n), A131852(n)]` -/
def P1221161671441841135.Spec : Prop :=
  ∀ n, (P1221161671441841135.a n : ℤ) = A131853 (n + 1)

end A131853

/-! ## A131853.P7509869024949016996

`eq[atan(A131851(n)), A131852(n)]`
-/

namespace A131853.P7509869024949016996
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A131851 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A131853.P7509869024949016996

namespace A131853

/-- `eq[atan(A131851(n)), A131852(n)]` -/
def P7509869024949016996.Spec : Prop :=
  ∀ n, (P7509869024949016996.a n : ℤ) = A131853 (n + 1)

end A131853

/-! ## A131853.P9435374191632862680

`lt[A000203(A330714(n)+1), 3]`
-/

namespace A131853.P9435374191632862680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A330714 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131853.P9435374191632862680

namespace A131853

/-- `lt[A000203(A330714(n)+1), 3]` -/
def P9435374191632862680.Spec : Prop :=
  ∀ n, (P9435374191632862680.a n : ℤ) = A131853 (n + 1)

end A131853

/-! ## A131853.P3211325234243944641

`lt[A000210(A330714(n)+1), 3]`
-/

namespace A131853.P3211325234243944641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000210 (A330714 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131853.P3211325234243944641

namespace A131853

/-- `lt[A000210(A330714(n)+1), 3]` -/
def P3211325234243944641.Spec : Prop :=
  ∀ n, (P3211325234243944641.a n : ℤ) = A131853 (n + 1)

end A131853

/-! ## A131853.P7686548675801045584

`lt[A055990(A330714(n)+1), 3]`
-/

namespace A131853.P7686548675801045584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055990 (A330714 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131853.P7686548675801045584

namespace A131853

/-- `lt[A055990(A330714(n)+1), 3]` -/
def P7686548675801045584.Spec : Prop :=
  ∀ n, (P7686548675801045584.a n : ℤ) = A131853 (n + 1)

end A131853

/-! ## A131853.P4477285639517355478

`lt[A074229(A330714(n)+1), 3]`
-/

namespace A131853.P4477285639517355478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074229 (A330714 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131853.P4477285639517355478

namespace A131853

/-- `lt[A074229(A330714(n)+1), 3]` -/
def P4477285639517355478.Spec : Prop :=
  ∀ n, (P4477285639517355478.a n : ℤ) = A131853 (n + 1)

end A131853

/-! ## A131853.P6164129796805137890

`lt[A162648(A330714(n)+1), 3]`
-/

namespace A131853.P6164129796805137890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (A330714 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131853.P6164129796805137890

namespace A131853

/-- `lt[A162648(A330714(n)+1), 3]` -/
def P6164129796805137890.Spec : Prop :=
  ∀ n, (P6164129796805137890.a n : ℤ) = A131853 (n + 1)

end A131853

/-! ## A131853.P5289384093999241633

`lt[A000040(A330714(n)+2)-1, 3]`
-/

namespace A131853.P5289384093999241633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A330714 n + 2).toNat - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131853.P5289384093999241633

namespace A131853

/-- `lt[A000040(A330714(n)+2)-1, 3]` -/
def P5289384093999241633.Spec : Prop :=
  ∀ n, (P5289384093999241633.a n : ℤ) = A131853 (n + 1)

end A131853

/-! ## A131853.P6702638452642714383

`lt[A134741(2*A330714(n)+1), 3]`
-/

namespace A131853.P6702638452642714383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134741 (2 * A330714 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131853.P6702638452642714383

namespace A131853

/-- `lt[A134741(2*A330714(n)+1), 3]` -/
def P6702638452642714383.Spec : Prop :=
  ∀ n, (P6702638452642714383.a n : ℤ) = A131853 (n + 1)

end A131853

/-! ## A131853.P14910576861319390251

`lt[1, A020639(ceil(2/(n*A330714(n)+1)))]`
-/

namespace A131853.P14910576861319390251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌈2 / ((n : ℤ) * A330714 n + 1 : ℚ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131853.P14910576861319390251

namespace A131853

/-- `lt[1, A020639(ceil(2/(n*A330714(n)+1)))]` -/
def P14910576861319390251.Spec : Prop :=
  ∀ n, (P14910576861319390251.a n : ℤ) = A131853 (n + 1)

end A131853

/-!
# A131854: Numbers m such that A131851(m) = 0.

The programs for A131854, the canonical program `A131854.P4931122278604585938` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131854 has offset 1).

The definition of A131854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131854.P4931122278604585938

`eq[0, n%2-a(floor(n/4))]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131854

/-- `eq[0, n%2-a(floor(n/4))]` -/
def P4931122278604585938.Spec : Prop :=
  ∀ n, (P4931122278604585938.a n : ℤ) = A131854 (n + 1)

theorem P4931122278604585938.correct : P4931122278604585938.Spec := by
  intro n
  simp only [A131854, Nat.add_sub_cancel]

end A131854

/-! ## A131854.P2626493307667743066

`A131855(Δ[n²])/2`
-/

namespace A131854.P2626493307667743066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131855 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A131854.P2626493307667743066

namespace A131854

/-- `A131855(Δ[n²])/2` -/
def P2626493307667743066.Spec : Prop :=
  ∀ n, P2626493307667743066.a n = (A131854 (n + 1) : ℚ)

end A131854

/-! ## A131854.P16533508908452338162

`floor(A131855(2*(n+1))/2)`
-/

namespace A131854.P16533508908452338162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131855 (2 * (n + 1)) : ℚ) / 2⌋

end

end A131854.P16533508908452338162

namespace A131854

/-- `floor(A131855(2*(n+1))/2)` -/
def P16533508908452338162.Spec : Prop :=
  ∀ n, P16533508908452338162.a n = A131854 (n + 1)

end A131854

/-! ## A131854.P9266283423431952759

`eq[0, A131851(n)]`
-/

namespace A131854.P9266283423431952759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131854.P9266283423431952759

namespace A131854

/-- `eq[0, A131851(n)]` -/
def P9266283423431952759.Spec : Prop :=
  ∀ n, (P9266283423431952759.a n : ℤ) = A131854 (n + 1)

theorem P9266283423431952759.correct : P9266283423431952759.Spec := by
  intro n
  simp only [A131854, Nat.add_sub_cancel, A131854.P9266283423431952759.f1, A131854.P9266283423431952759.f2, A131854.P9266283423431952759.a, A131854.P4931122278604585938.f1, A131854.P4931122278604585938.f2, A131854.P4931122278604585938.a, A131851, A131851.P1942102588328150094.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131854

/-! ## A131854.P17865134255156152291

`eq[0, A065359(A059905(n))]`
-/

namespace A131854.P17865134255156152291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A059905 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131854.P17865134255156152291

namespace A131854

/-- `eq[0, A065359(A059905(n))]` -/
def P17865134255156152291.Spec : Prop :=
  ∀ n, (P17865134255156152291.a n : ℤ) = A131854 (n + 1)

end A131854

/-! ## A131854.P5564497145507343963

`eq[A131852(n)², A330714(n)]`
-/

namespace A131854.P5564497145507343963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131854.P5564497145507343963

namespace A131854

/-- `eq[A131852(n)², A330714(n)]` -/
def P5564497145507343963.Spec : Prop :=
  ∀ n, (P5564497145507343963.a n : ℤ) = A131854 (n + 1)

end A131854

/-! ## A131854.P9087773457621286230

`eq[1, A117452(A063694(n)+2)]`
-/

namespace A131854.P9087773457621286230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117452 (A063694 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131854.P9087773457621286230

namespace A131854

/-- `eq[1, A117452(A063694(n)+2)]` -/
def P9087773457621286230.Spec : Prop :=
  ∀ n, (P9087773457621286230.a n : ℤ) = A131854 (n + 1)

end A131854

/-! ## A131854.P2848644180368700818

`eq[1, A152855(n-A063695(n))]`
-/

namespace A131854.P2848644180368700818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152855 ((n : ℤ) - A063695 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131854.P2848644180368700818

namespace A131854

/-- `eq[1, A152855(n-A063695(n))]` -/
def P2848644180368700818.Spec : Prop :=
  ∀ n, (P2848644180368700818.a n : ℤ) = A131854 (n + 1)

end A131854

/-! ## A131854.P2657781062847696909

`lt[A131851(n)²*A002327(n+1), 1]`
-/

namespace A131854.P2657781062847696909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 n ^ 2 * A002327 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131854.P2657781062847696909

namespace A131854

/-- `lt[A131851(n)²*A002327(n+1), 1]` -/
def P2657781062847696909.Spec : Prop :=
  ∀ n, (P2657781062847696909.a n : ℤ) = A131854 (n + 1)

end A131854

/-! ## A131854.P5105937110533665592

`eq[A131852(A004525(n))+1, A000034(n)]`
-/

namespace A131854.P5105937110533665592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (A004525 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131854.P5105937110533665592

namespace A131854

/-- `eq[A131852(A004525(n))+1, A000034(n)]` -/
def P5105937110533665592.Spec : Prop :=
  ∀ n, (P5105937110533665592.a n : ℤ) = A131854 (n + 1)

end A131854

/-! ## A131854.P12223265154754845039

`eq[A131852(A004526(n))+1, A000034(n)]`
-/

namespace A131854.P12223265154754845039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (A004526 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131854.P12223265154754845039

namespace A131854

/-- `eq[A131852(A004526(n))+1, A000034(n)]` -/
def P12223265154754845039.Spec : Prop :=
  ∀ n, (P12223265154754845039.a n : ℤ) = A131854 (n + 1)

end A131854

/-! ## A131854.P9462588099077915262

`lt[A131851(n)²*A000040(n+2), 1]`
-/

namespace A131854.P9462588099077915262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 n ^ 2 * A000040 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131854.P9462588099077915262

namespace A131854

/-- `lt[A131851(n)²*A000040(n+2), 1]` -/
def P9462588099077915262.Spec : Prop :=
  ∀ n, (P9462588099077915262.a n : ℤ) = A131854 (n + 1)

end A131854

/-! ## A131854.P10261417756733186677

`eq[1, A152892(A088442(n))-2]`
-/

namespace A131854.P10261417756733186677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152892 (A088442 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131854.P10261417756733186677

namespace A131854

/-- `eq[1, A152892(A088442(n))-2]` -/
def P10261417756733186677.Spec : Prop :=
  ∀ n, (P10261417756733186677.a n : ℤ) = A131854 (n + 1)

end A131854

/-! ## A131854.P1023294205137842237

`eq[0, A131852(2*n)]`
-/

namespace A131854.P1023294205137842237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131854.P1023294205137842237

namespace A131854

/-- `eq[0, A131852(2*n)]` -/
def P1023294205137842237.Spec : Prop :=
  ∀ n, (P1023294205137842237.a n : ℤ) = A131854 (n + 1)

end A131854

/-! ## A131854.P7086964739792553789

`eq[1, A152855(A063695(2*n))]`
-/

namespace A131854.P7086964739792553789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152855 (A063695 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131854.P7086964739792553789

namespace A131854

/-- `eq[1, A152855(A063695(2*n))]` -/
def P7086964739792553789.Spec : Prop :=
  ∀ n, (P7086964739792553789.a n : ℤ) = A131854 (n + 1)

end A131854

/-! ## A131854.P8763161689811273384

`lt[A065359(A059906(2*n))², 1]`
-/

namespace A131854.P8763161689811273384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A059906 (2 * n)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131854.P8763161689811273384

namespace A131854

/-- `lt[A065359(A059906(2*n))², 1]` -/
def P8763161689811273384.Spec : Prop :=
  ∀ n, (P8763161689811273384.a n : ℤ) = A131854 (n + 1)

end A131854

/-! ## A131854.P13215341507180127892

`lt[A131852(2*n+1)*A131852(2*n), 1]`
-/

namespace A131854.P13215341507180127892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (2 * n + 1) * A131852 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131854.P13215341507180127892

namespace A131854

/-- `lt[A131852(2*n+1)*A131852(2*n), 1]` -/
def P13215341507180127892.Spec : Prop :=
  ∀ n, (P13215341507180127892.a n : ℤ) = A131854 (n + 1)

end A131854

/-!
# A131855: Numbers m such that A131852(m) = 0.

The programs for A131855, the canonical program `A131855.P13915583757753673603` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131855 has offset 1).

The definition of A131855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5584 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131855.P13915583757753673603

`eq[0, abs(A131851(floor(n/2)))]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131855

/-- `eq[0, abs(A131851(floor(n/2)))]` -/
def P13915583757753673603.Spec : Prop :=
  ∀ n, (P13915583757753673603.a n : ℤ) = A131855 (n + 1)

theorem P13915583757753673603.correct : P13915583757753673603.Spec := by
  intro n
  simp only [A131855, Nat.add_sub_cancel]

end A131855

/-! ## A131855.P4066412231714753850

`eq[0, A131851(floor(n/2))*A139250(n)]`
-/

namespace A131855.P4066412231714753850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 ⌊(n : ℚ) / 2⌋.toNat * A139250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131855.P4066412231714753850

namespace A131855

/-- `eq[0, A131851(floor(n/2))*A139250(n)]` -/
def P4066412231714753850.Spec : Prop :=
  ∀ n, (P4066412231714753850.a n : ℤ) = A131855 (n + 1)

end A131855

/-! ## A131855.P1578286151515153819

`eq[0, A131851(floor(n/2))*A138121(n+1)]`
-/

namespace A131855.P1578286151515153819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 ⌊(n : ℚ) / 2⌋.toNat * A138121 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131855.P1578286151515153819

namespace A131855

/-- `eq[0, A131851(floor(n/2))*A138121(n+1)]` -/
def P1578286151515153819.Spec : Prop :=
  ∀ n, (P1578286151515153819.a n : ℤ) = A131855 (n + 1)

end A131855

/-! ## A131855.P14542103187890121668

`eq[0, A131851(floor(n/2))*A336849(n+1)]`
-/

namespace A131855.P14542103187890121668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 ⌊(n : ℚ) / 2⌋.toNat * A336849 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131855.P14542103187890121668

namespace A131855

/-- `eq[0, A131851(floor(n/2))*A336849(n+1)]` -/
def P14542103187890121668.Spec : Prop :=
  ∀ n, (P14542103187890121668.a n : ℤ) = A131855 (n + 1)

end A131855

/-! ## A131855.P2829691303292841332

`eq[0, A131852(n)]`
-/

namespace A131855.P2829691303292841332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131855.P2829691303292841332

namespace A131855

/-- `eq[0, A131852(n)]` -/
def P2829691303292841332.Spec : Prop :=
  ∀ n, (P2829691303292841332.a n : ℤ) = A131855 (n + 1)

end A131855

/-! ## A131855.P5042713071302962633

`eq[A005836(n+1)%5, n%5]`
-/

namespace A131855.P5042713071302962633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005836 (n + 1)) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A131855.P5042713071302962633

namespace A131855

/-- `eq[A005836(n+1)%5, n%5]` -/
def P5042713071302962633.Spec : Prop :=
  ∀ n, (P5042713071302962633.a n : ℤ) = A131855 (n + 1)

end A131855

/-! ## A131855.P6302028264782966031

`eq[0, A065359(A059906(n))]`
-/

namespace A131855.P6302028264782966031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A059906 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131855.P6302028264782966031

namespace A131855

/-- `eq[0, A065359(A059906(n))]` -/
def P6302028264782966031.Spec : Prop :=
  ∀ n, (P6302028264782966031.a n : ℤ) = A131855 (n + 1)

end A131855

/-! ## A131855.P7129227898101905976

`eq[1, A152855(A063695(n))]`
-/

namespace A131855.P7129227898101905976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152855 (A063695 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131855.P7129227898101905976

namespace A131855

/-- `eq[1, A152855(A063695(n))]` -/
def P7129227898101905976.Spec : Prop :=
  ∀ n, (P7129227898101905976.a n : ℤ) = A131855 (n + 1)

end A131855

/-! ## A131855.P2635956637063900048

`eq[A131851(n), A346688(n)]`
-/

namespace A131855.P2635956637063900048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346688 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131855.P2635956637063900048

namespace A131855

/-- `eq[A131851(n), A346688(n)]` -/
def P2635956637063900048.Spec : Prop :=
  ∀ n, (P2635956637063900048.a n : ℤ) = A131855 (n + 1)

end A131855

/-! ## A131855.P11082876503564248981

`eq[A131851(n)², A330714(n)]`
-/

namespace A131855.P11082876503564248981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131855.P11082876503564248981

namespace A131855

/-- `eq[A131851(n)², A330714(n)]` -/
def P11082876503564248981.Spec : Prop :=
  ∀ n, (P11082876503564248981.a n : ℤ) = A131855 (n + 1)

end A131855

/-! ## A131855.P8859526652859385692

`eq[1, A131851(A004526(n))+1]`
-/

namespace A131855.P8859526652859385692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A004526 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131855.P8859526652859385692

namespace A131855

/-- `eq[1, A131851(A004526(n))+1]` -/
def P8859526652859385692.Spec : Prop :=
  ∀ n, (P8859526652859385692.a n : ℤ) = A131855 (n + 1)

end A131855

/-! ## A131855.P4246580158120329165

`eq[0, A131851(2*n)]`
-/

namespace A131855.P4246580158120329165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131855.P4246580158120329165

namespace A131855

/-- `eq[0, A131851(2*n)]` -/
def P4246580158120329165.Spec : Prop :=
  ∀ n, (P4246580158120329165.a n : ℤ) = A131855 (n + 1)

end A131855

/-! ## A131855.P2098782205362142211

`lt[A065359(A059905(2*n))², 1]`
-/

namespace A131855.P2098782205362142211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A059905 (2 * n)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131855.P2098782205362142211

namespace A131855

/-- `lt[A065359(A059905(2*n))², 1]` -/
def P2098782205362142211.Spec : Prop :=
  ∀ n, (P2098782205362142211.a n : ℤ) = A131855 (n + 1)

end A131855

/-! ## A131855.P9497003143621334439

`eq[1, A065359(A059905(2*n+1))]`
-/

namespace A131855.P9497003143621334439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A059905 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131855.P9497003143621334439

namespace A131855

/-- `eq[1, A065359(A059905(2*n+1))]` -/
def P9497003143621334439.Spec : Prop :=
  ∀ n, (P9497003143621334439.a n : ℤ) = A131855 (n + 1)

end A131855

/-! ## A131855.P15209096116933912473

`eq[A330714(n)+1, A330714(2*n+1)]`
-/

namespace A131855.P15209096116933912473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131855.P15209096116933912473

namespace A131855

/-- `eq[A330714(n)+1, A330714(2*n+1)]` -/
def P15209096116933912473.Spec : Prop :=
  ∀ n, (P15209096116933912473.a n : ℤ) = A131855 (n + 1)

end A131855

/-! ## A131855.P15722594166130418139

`eq[A268676(2*n+1), A287576(2*(n+1))]`
-/

namespace A131855.P15722594166130418139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131855.P15722594166130418139

namespace A131855

/-- `eq[A268676(2*n+1), A287576(2*(n+1))]` -/
def P15722594166130418139.Spec : Prop :=
  ∀ n, (P15722594166130418139.a n : ℤ) = A131855 (n + 1)

end A131855

/-! ## A131855.P6312917560572164754

`lt[(A000041(n)*A131852(n))², 1]`
-/

namespace A131855.P6312917560572164754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000041 n * A131852 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131855.P6312917560572164754

namespace A131855

/-- `lt[(A000041(n)*A131852(n))², 1]` -/
def P6312917560572164754.Spec : Prop :=
  ∀ n, (P6312917560572164754.a n : ℤ) = A131855 (n + 1)

end A131855

/-! ## A131855.P8360830157031671165

`eq[1, A131851(A004771(n))+1]`
-/

namespace A131855.P8360830157031671165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A004771 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131855.P8360830157031671165

namespace A131855

/-- `eq[1, A131851(A004771(n))+1]` -/
def P8360830157031671165.Spec : Prop :=
  ∀ n, (P8360830157031671165.a n : ℤ) = A131855 (n + 1)

end A131855

/-!
# A131856: Numbers m such that z(m)=(0,1) with z as defined in A131851.

The programs for A131856, the canonical program `A131856.P1766368326207610902` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131856 has offset 1).

The definition of A131856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2748 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131856.P1766368326207610902

`∩[A131857(n+1), A016873(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A131856

/-- `∩[A131857(n+1), A016873(n)]` -/
def P1766368326207610902.Spec : Prop :=
  ∀ n, (P1766368326207610902.a n : ℤ) = A131856 (n + 1)

theorem P1766368326207610902.correct : P1766368326207610902.Spec := by
  intro n
  simp only [A131856, Nat.add_sub_cancel]

end A131856

/-! ## A131856.P5558495381738804254

`∩[A131857(n+1), A016885(n)-1]`
-/

namespace A131856.P5558495381738804254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131856.P5558495381738804254

namespace A131856

/-- `∩[A131857(n+1), A016885(n)-1]` -/
def P5558495381738804254.Spec : Prop :=
  ∀ n, (P5558495381738804254.a n : ℤ) = A131856 (n + 1)

end A131856

/-! ## A131856.P4242106671743731631

`∩[A131854(n+1), A131857(n+1)]`
-/

namespace A131856.P4242106671743731631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131856.P4242106671743731631

namespace A131856

/-- `∩[A131854(n+1), A131857(n+1)]` -/
def P4242106671743731631.Spec : Prop :=
  ∀ n, (P4242106671743731631.a n : ℤ) = A131856 (n + 1)

end A131856

/-! ## A131856.P11620011403135252637

`eq[A070278(n), A131851(n)]`
-/

namespace A131856.P11620011403135252637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070278 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131856.P11620011403135252637

namespace A131856

/-- `eq[A070278(n), A131851(n)]` -/
def P11620011403135252637.Spec : Prop :=
  ∀ n, (P11620011403135252637.a n : ℤ) = A131856 (n + 1)

end A131856

/-! ## A131856.P228360028121480500

`eq[A117452(n), A330714(n)]`
-/

namespace A131856.P228360028121480500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131856.P228360028121480500

namespace A131856

/-- `eq[A117452(n), A330714(n)]` -/
def P228360028121480500.Spec : Prop :=
  ∀ n, (P228360028121480500.a n : ℤ) = A131856 (n + 1)

end A131856

/-! ## A131856.P3520925024065366432

`eq[A156174(n), A330714(n)]`
-/

namespace A131856.P3520925024065366432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156174 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131856.P3520925024065366432

namespace A131856

/-- `eq[A156174(n), A330714(n)]` -/
def P3520925024065366432.Spec : Prop :=
  ∀ n, (P3520925024065366432.a n : ℤ) = A131856 (n + 1)

end A131856

/-! ## A131856.P412387604011142194

`eq[A198517(n), A330714(n)]`
-/

namespace A131856.P412387604011142194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131856.P412387604011142194

namespace A131856

/-- `eq[A198517(n), A330714(n)]` -/
def P412387604011142194.Spec : Prop :=
  ∀ n, (P412387604011142194.a n : ℤ) = A131856 (n + 1)

end A131856

/-! ## A131856.P17123133890595191076

`eq[1, A131852(n)*A330714(n)]`
-/

namespace A131856.P17123133890595191076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 n * A330714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131856.P17123133890595191076

namespace A131856

/-- `eq[1, A131852(n)*A330714(n)]` -/
def P17123133890595191076.Spec : Prop :=
  ∀ n, (P17123133890595191076.a n : ℤ) = A131856 (n + 1)

end A131856

/-! ## A131856.P17945600946947407295

`eq[A138019(n)+1, A330714(n)²]`
-/

namespace A131856.P17945600946947407295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138019 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131856.P17945600946947407295

namespace A131856

/-- `eq[A138019(n)+1, A330714(n)²]` -/
def P17945600946947407295.Spec : Prop :=
  ∀ n, (P17945600946947407295.a n : ℤ) = A131856 (n + 1)

end A131856

/-! ## A131856.P11565597233051877953

`eq[A131851(n)²+2, A117444(n)]`
-/

namespace A131856.P11565597233051877953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 n ^ 2 + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117444 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131856.P11565597233051877953

namespace A131856

/-- `eq[A131851(n)²+2, A117444(n)]` -/
def P11565597233051877953.Spec : Prop :=
  ∀ n, (P11565597233051877953.a n : ℤ) = A131856 (n + 1)

end A131856

/-! ## A131856.P1895784195361636672

`eq[1, A131852(n)+atan(A131851(n))]`
-/

namespace A131856.P1895784195361636672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A131852 n : ℝ) + Real.arctan (A131851 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A131856.P1895784195361636672

namespace A131856

/-- `eq[1, A131852(n)+atan(A131851(n))]` -/
def P1895784195361636672.Spec : Prop :=
  ∀ n, (P1895784195361636672.a n : ℤ) = A131856 (n + 1)

end A131856

/-! ## A131856.P4622299862109690396

`eq[0, A330714(2*n+1)]`
-/

namespace A131856.P4622299862109690396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131856.P4622299862109690396

namespace A131856

/-- `eq[0, A330714(2*n+1)]` -/
def P4622299862109690396.Spec : Prop :=
  ∀ n, (P4622299862109690396.a n : ℤ) = A131856 (n + 1)

end A131856

/-! ## A131856.P3782349706781199488

`eq[1, A330714(A005408(n))+1]`
-/

namespace A131856.P3782349706781199488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 (A005408 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131856.P3782349706781199488

namespace A131856

/-- `eq[1, A330714(A005408(n))+1]` -/
def P3782349706781199488.Spec : Prop :=
  ∀ n, (P3782349706781199488.a n : ℤ) = A131856 (n + 1)

end A131856

/-! ## A131856.P18181478323602344975

`eq[cos(A131852(2*n)), A131852(n)]`
-/

namespace A131856.P18181478323602344975
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A131852 (2 * n) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A131856.P18181478323602344975

namespace A131856

/-- `eq[cos(A131852(2*n)), A131852(n)]` -/
def P18181478323602344975.Spec : Prop :=
  ∀ n, (P18181478323602344975.a n : ℤ) = A131856 (n + 1)

end A131856

/-! ## A131856.P3537341979550040975

`eq[atan(A131851(2*n+1)), A131851(n)]`
-/

namespace A131856.P3537341979550040975
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A131851 (2 * n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A131856.P3537341979550040975

namespace A131856

/-- `eq[atan(A131851(2*n+1)), A131851(n)]` -/
def P3537341979550040975.Spec : Prop :=
  ∀ n, (P3537341979550040975.a n : ℤ) = A131856 (n + 1)

end A131856

/-! ## A131856.P10927083817258560577

`eq[A091703(2*n+1), A131852(2*n)]`
-/

namespace A131856.P10927083817258560577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131856.P10927083817258560577

namespace A131856

/-- `eq[A091703(2*n+1), A131852(2*n)]` -/
def P10927083817258560577.Spec : Prop :=
  ∀ n, (P10927083817258560577.a n : ℤ) = A131856 (n + 1)

end A131856

/-!
# A131857: Numbers m such that A131852(m) = 1.

The programs for A131857, the canonical program `A131857.P16455021157410317938` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131857 has offset 1).

The definition of A131857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131857.P16455021157410317938

`eq[0, A131851(floor(n/2))-1]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131857

/-- `eq[0, A131851(floor(n/2))-1]` -/
def P16455021157410317938.Spec : Prop :=
  ∀ n, (P16455021157410317938.a n : ℤ) = A131857 (n + 1)

theorem P16455021157410317938.correct : P16455021157410317938.Spec := by
  intro n
  simp only [A131857, Nat.add_sub_cancel]

end A131857

/-! ## A131857.P17662885781566480097

`eq[1, A131852(n)]`
-/

namespace A131857.P17662885781566480097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131857.P17662885781566480097

namespace A131857

/-- `eq[1, A131852(n)]` -/
def P17662885781566480097.Spec : Prop :=
  ∀ n, (P17662885781566480097.a n : ℤ) = A131857 (n + 1)

end A131857

/-! ## A131857.P11400639199459024162

`eq[1, A065359(A059906(n))]`
-/

namespace A131857.P11400639199459024162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A059906 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131857.P11400639199459024162

namespace A131857

/-- `eq[1, A065359(A059906(n))]` -/
def P11400639199459024162.Spec : Prop :=
  ∀ n, (P11400639199459024162.a n : ℤ) = A131857 (n + 1)

end A131857

/-! ## A131857.P5269007701652932348

`eq[1, A131851(A004526(n))]`
-/

namespace A131857.P5269007701652932348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A004526 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131857.P5269007701652932348

namespace A131857

/-- `eq[1, A131851(A004526(n))]` -/
def P5269007701652932348.Spec : Prop :=
  ∀ n, (P5269007701652932348.a n : ℤ) = A131857 (n + 1)

end A131857

/-! ## A131857.P17049841024578606103

`eq[A131851(n)+2, A346688(n)]`
-/

namespace A131857.P17049841024578606103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346688 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131857.P17049841024578606103

namespace A131857

/-- `eq[A131851(n)+2, A346688(n)]` -/
def P17049841024578606103.Spec : Prop :=
  ∀ n, (P17049841024578606103.a n : ℤ) = A131857 (n + 1)

end A131857

/-! ## A131857.P5086180873290566842

`eq[2, A117444(n-A131851(n))]`
-/

namespace A131857.P5086180873290566842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117444 ((n : ℤ) - A131851 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131857.P5086180873290566842

namespace A131857

/-- `eq[2, A117444(n-A131851(n))]` -/
def P5086180873290566842.Spec : Prop :=
  ∀ n, (P5086180873290566842.a n : ℤ) = A131857 (n + 1)

end A131857

/-! ## A131857.P4234553675467459807

`eq[1, -A131851(2*n)]`
-/

namespace A131857.P4234553675467459807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A131851 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131857.P4234553675467459807

namespace A131857

/-- `eq[1, -A131851(2*n)]` -/
def P4234553675467459807.Spec : Prop :=
  ∀ n, (P4234553675467459807.a n : ℤ) = A131857 (n + 1)

end A131857

/-! ## A131857.P2184142381925748463

`eq[0, A131851(2*n+1)]`
-/

namespace A131857.P2184142381925748463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131857.P2184142381925748463

namespace A131857

/-- `eq[0, A131851(2*n+1)]` -/
def P2184142381925748463.Spec : Prop :=
  ∀ n, (P2184142381925748463.a n : ℤ) = A131857 (n + 1)

end A131857

/-! ## A131857.P6119436607894290788

`eq[2, A117452(A063694(2*n+1))]`
-/

namespace A131857.P6119436607894290788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117452 (A063694 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131857.P6119436607894290788

namespace A131857

/-- `eq[2, A117452(A063694(2*n+1))]` -/
def P6119436607894290788.Spec : Prop :=
  ∀ n, (P6119436607894290788.a n : ℤ) = A131857 (n + 1)

end A131857

/-! ## A131857.P16635499074496098247

`lt[A065359(A059905(2*n+1))², 1]`
-/

namespace A131857.P16635499074496098247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A059905 (2 * n + 1)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131857.P16635499074496098247

namespace A131857

/-- `lt[A065359(A059905(2*n+1))², 1]` -/
def P16635499074496098247.Spec : Prop :=
  ∀ n, (P16635499074496098247.a n : ℤ) = A131857 (n + 1)

end A131857

/-! ## A131857.P5418644503155804052

`eq[A330714(2*n+1)+1, A330714(n)]`
-/

namespace A131857.P5418644503155804052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131857.P5418644503155804052

namespace A131857

/-- `eq[A330714(2*n+1)+1, A330714(n)]` -/
def P5418644503155804052.Spec : Prop :=
  ∀ n, (P5418644503155804052.a n : ℤ) = A131857 (n + 1)

end A131857

/-! ## A131857.P2127787017161269517

`eq[1, A330714(n)-A330714(A005408(n))]`
-/

namespace A131857.P2127787017161269517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 n - A330714 (A005408 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131857.P2127787017161269517

namespace A131857

/-- `eq[1, A330714(n)-A330714(A005408(n))]` -/
def P2127787017161269517.Spec : Prop :=
  ∀ n, (P2127787017161269517.a n : ℤ) = A131857 (n + 1)

end A131857

/-! ## A131857.P16980913056387194732

`A142150(eq[A131851(n+1), A142150(n+1)])`
-/

namespace A131857.P16980913056387194732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A131857.P16980913056387194732

namespace A131857

/-- `A142150(eq[A131851(n+1), A142150(n+1)])` -/
def P16980913056387194732.Spec : Prop :=
  ∀ n, P16980913056387194732.a n = A131857 (n + 1)

end A131857

/-!
# A131858: Numbers m such that z(m)=(1,0) with z as defined in A131851.

The programs for A131858, the canonical program `A131858.P9447570660414659243` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131858 has offset 1).

The definition of A131858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2669 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131858.P15831266338038112572

`record[A131856(n+1)/A020639(A131856(n+1))]`
-/

namespace A131858.P15831266338038112572
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131856 (n + 1) : ℚ) / (A020639 (A131856 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131858.P15831266338038112572

namespace A131858

/-- `record[A131856(n+1)/A020639(A131856(n+1))]` -/
def P15831266338038112572.Spec : Prop :=
  ∀ n, P15831266338038112572.a n = (A131858 (n + 1) : ℚ)

end A131858

/-! ## A131858.P9447570660414659243

`∩[A131859(n+1), A016861(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131858

/-- `∩[A131859(n+1), A016861(n)]` -/
def P9447570660414659243.Spec : Prop :=
  ∀ n, (P9447570660414659243.a n : ℤ) = A131858 (n + 1)

theorem P9447570660414659243.correct : P9447570660414659243.Spec := by
  intro n
  simp only [A131858, Nat.add_sub_cancel]

end A131858

/-! ## A131858.P13928971929232694036

`∩[A131859(n+1), A016885(n)-2]`
-/

namespace A131858.P13928971929232694036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131858.P13928971929232694036

namespace A131858

/-- `∩[A131859(n+1), A016885(n)-2]` -/
def P13928971929232694036.Spec : Prop :=
  ∀ n, (P13928971929232694036.a n : ℤ) = A131858 (n + 1)

end A131858

/-! ## A131858.P9051033723158756279

`∩[A131855(n+1), A131859(n+1)]`
-/

namespace A131858.P9051033723158756279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131858.P9051033723158756279

namespace A131858

/-- `∩[A131855(n+1), A131859(n+1)]` -/
def P9051033723158756279.Spec : Prop :=
  ∀ n, (P9051033723158756279.a n : ℤ) = A131858 (n + 1)

end A131858

/-! ## A131858.P13012546768928196390

`∩[A131857(2*n+1), A016873(2*n)]/2`
-/

namespace A131858.P13012546768928196390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131857 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (2 * n)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A131858.P13012546768928196390

namespace A131858

/-- `∩[A131857(2*n+1), A016873(2*n)]/2` -/
def P13012546768928196390.Spec : Prop :=
  ∀ n, P13012546768928196390.a n = (A131858 (n + 1) : ℚ)

end A131858

/-! ## A131858.P4569427106820184583

`∩[A131857(2*n+1), A131854(n+2)]/2`
-/

namespace A131858.P4569427106820184583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131857 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131854 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A131858.P4569427106820184583

namespace A131858

/-- `∩[A131857(2*n+1), A131854(n+2)]/2` -/
def P4569427106820184583.Spec : Prop :=
  ∀ n, P4569427106820184583.a n = (A131858 (n + 1) : ℚ)

end A131858

/-! ## A131858.P15621283874640256841

`eq[A133368(n), A330714(n)]`
-/

namespace A131858.P15621283874640256841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133368 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131858.P15621283874640256841

namespace A131858

/-- `eq[A133368(n), A330714(n)]` -/
def P15621283874640256841.Spec : Prop :=
  ∀ n, (P15621283874640256841.a n : ℤ) = A131858 (n + 1)

end A131858

/-! ## A131858.P10178967198223134487

`eq[A138019(n), A330714(n)]`
-/

namespace A131858.P10178967198223134487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131858.P10178967198223134487

namespace A131858

/-- `eq[A138019(n), A330714(n)]` -/
def P10178967198223134487.Spec : Prop :=
  ∀ n, (P10178967198223134487.a n : ℤ) = A131858 (n + 1)

end A131858

/-! ## A131858.P17517949608804342966

`eq[A001204(n+2), A330714(n)]`
-/

namespace A131858.P17517949608804342966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001204 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131858.P17517949608804342966

namespace A131858

/-- `eq[A001204(n+2), A330714(n)]` -/
def P17517949608804342966.Spec : Prop :=
  ∀ n, (P17517949608804342966.a n : ℤ) = A131858 (n + 1)

end A131858

/-! ## A131858.P9558033487962765460

`eq[1, A131851(n)*A330714(n)]`
-/

namespace A131858.P9558033487962765460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 n * A330714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131858.P9558033487962765460

namespace A131858

/-- `eq[1, A131851(n)*A330714(n)]` -/
def P9558033487962765460.Spec : Prop :=
  ∀ n, (P9558033487962765460.a n : ℤ) = A131858 (n + 1)

end A131858

/-! ## A131858.P14941646824186529969

`eq[A330714(n)², A117452(n+1)]`
-/

namespace A131858.P14941646824186529969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131858.P14941646824186529969

namespace A131858

/-- `eq[A330714(n)², A117452(n+1)]` -/
def P14941646824186529969.Spec : Prop :=
  ∀ n, (P14941646824186529969.a n : ℤ) = A131858 (n + 1)

end A131858

/-! ## A131858.P18145253281360908109

`eq[2, A330714(n)²-A117452(n)]`
-/

namespace A131858.P18145253281360908109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 n ^ 2 - A117452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131858.P18145253281360908109

namespace A131858

/-- `eq[2, A330714(n)²-A117452(n)]` -/
def P18145253281360908109.Spec : Prop :=
  ∀ n, (P18145253281360908109.a n : ℤ) = A131858 (n + 1)

end A131858

/-! ## A131858.P5182932175441989681

`eq[1, A131851(n)+atan(A131852(n))]`
-/

namespace A131858.P5182932175441989681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A131851 n : ℝ) + Real.arctan (A131852 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A131858.P5182932175441989681

namespace A131858

/-- `eq[1, A131851(n)+atan(A131852(n))]` -/
def P5182932175441989681.Spec : Prop :=
  ∀ n, (P5182932175441989681.a n : ℤ) = A131858 (n + 1)

end A131858

/-! ## A131858.P8840891500689190136

`eq[A330714(n)+2, A287576(n+1)]`
-/

namespace A131858.P8840891500689190136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131858.P8840891500689190136

namespace A131858

/-- `eq[A330714(n)+2, A287576(n+1)]` -/
def P8840891500689190136.Spec : Prop :=
  ∀ n, (P8840891500689190136.a n : ℤ) = A131858 (n + 1)

end A131858

/-! ## A131858.P11745287135111984786

`eq[A005408(A330714(n)), A287576(n+1)]`
-/

namespace A131858.P11745287135111984786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A330714 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131858.P11745287135111984786

namespace A131858

/-- `eq[A005408(A330714(n)), A287576(n+1)]` -/
def P11745287135111984786.Spec : Prop :=
  ∀ n, (P11745287135111984786.a n : ℤ) = A131858 (n + 1)

end A131858

/-! ## A131858.P17390045109032068527

`record[A025480(A131856(n+1))]`
-/

namespace A131858.P17390045109032068527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A131856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131858.P17390045109032068527

namespace A131858

/-- `record[A025480(A131856(n+1))]` -/
def P17390045109032068527.Spec : Prop :=
  ∀ n, P17390045109032068527.a n = A131858 (n + 1)

end A131858

/-! ## A131858.P7000338105160860468

`record[A057979(A131860(n+1))]`
-/

namespace A131858.P7000338105160860468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A131860 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131858.P7000338105160860468

namespace A131858

/-- `record[A057979(A131860(n+1))]` -/
def P7000338105160860468.Spec : Prop :=
  ∀ n, P7000338105160860468.a n = A131858 (n + 1)

end A131858

/-! ## A131858.P14038552662349306748

`record[A078898(A131856(n+2))]`
-/

namespace A131858.P14038552662349306748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A131856 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131858.P14038552662349306748

namespace A131858

/-- `record[A078898(A131856(n+2))]` -/
def P14038552662349306748.Spec : Prop :=
  ∀ n, P14038552662349306748.a n = A131858 (n + 1)

end A131858

/-! ## A131858.P7818721044341292296

`eq[A117452(2*n), A330714(n)]`
-/

namespace A131858.P7818721044341292296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117452 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131858.P7818721044341292296

namespace A131858

/-- `eq[A117452(2*n), A330714(n)]` -/
def P7818721044341292296.Spec : Prop :=
  ∀ n, (P7818721044341292296.a n : ℤ) = A131858 (n + 1)

end A131858

/-!
# A131859: Numbers m such that A131851(m) = 1.

The programs for A131859, the canonical program `A131859.P17206153229324391525` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131859 has offset 1).

The definition of A131859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131859.P17206153229324391525

`eq[1, n%2-a(floor(n/4))]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131859

/-- `eq[1, n%2-a(floor(n/4))]` -/
def P17206153229324391525.Spec : Prop :=
  ∀ n, (P17206153229324391525.a n : ℤ) = A131859 (n + 1)

theorem P17206153229324391525.correct : P17206153229324391525.Spec := by
  intro n
  simp only [A131859, Nat.add_sub_cancel]

end A131859

/-! ## A131859.P12382176319706602798

`A131857(Δ[n²])/2`
-/

namespace A131859.P12382176319706602798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131857 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A131859.P12382176319706602798

namespace A131859

/-- `A131857(Δ[n²])/2` -/
def P12382176319706602798.Spec : Prop :=
  ∀ n, P12382176319706602798.a n = (A131859 (n + 1) : ℚ)

end A131859

/-! ## A131859.P22331740283544288

`(A131857(2*(n+1))-1)/2`
-/

namespace A131859.P22331740283544288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131857 (2 * (n + 1)) - 1 : ℚ) / 2

end

end A131859.P22331740283544288

namespace A131859

/-- `(A131857(2*(n+1))-1)/2` -/
def P22331740283544288.Spec : Prop :=
  ∀ n, P22331740283544288.a n = (A131859 (n + 1) : ℚ)

end A131859

/-! ## A131859.P6133264108682898323

`A302042(A131857(2*n+1))`
-/

namespace A131859.P6133264108682898323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A131857 (2 * n + 1)).toNat

end

end A131859.P6133264108682898323

namespace A131859

/-- `A302042(A131857(2*n+1))` -/
def P6133264108682898323.Spec : Prop :=
  ∀ n, P6133264108682898323.a n = A131859 (n + 1)

end A131859

/-! ## A131859.P11679484726932330183

`floor(A131857(Δ[A002522(n)])/2)`
-/

namespace A131859.P11679484726932330183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131857 (f1 (n + 1) - f1 n).toNat : ℚ) / 2⌋

end

end A131859.P11679484726932330183

namespace A131859

/-- `floor(A131857(Δ[A002522(n)])/2)` -/
def P11679484726932330183.Spec : Prop :=
  ∀ n, P11679484726932330183.a n = A131859 (n + 1)

end A131859

/-! ## A131859.P13715658891621124060

`A302042(record[A131857(n+1)-A146076(n+1)])`
-/

namespace A131859.P13715658891621124060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131857 (n + 1) - A146076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A131859.P13715658891621124060

namespace A131859

/-- `A302042(record[A131857(n+1)-A146076(n+1)])` -/
def P13715658891621124060.Spec : Prop :=
  ∀ n, P13715658891621124060.a n = A131859 (n + 1)

end A131859

/-! ## A131859.P16646123075423905923

`eq[1, A131851(n)]`
-/

namespace A131859.P16646123075423905923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131859.P16646123075423905923

namespace A131859

/-- `eq[1, A131851(n)]` -/
def P16646123075423905923.Spec : Prop :=
  ∀ n, (P16646123075423905923.a n : ℤ) = A131859 (n + 1)

theorem P16646123075423905923.correct : P16646123075423905923.Spec := by
  intro n
  simp only [A131859, Nat.add_sub_cancel, A131859.P16646123075423905923.f1, A131859.P16646123075423905923.f2, A131859.P16646123075423905923.a, A131859.P17206153229324391525.f1, A131859.P17206153229324391525.f2, A131859.P17206153229324391525.a, A131851, A131851.P1942102588328150094.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131859

/-! ## A131859.P8414456222710740665

`eq[1, A117452(A063694(n)+1)]`
-/

namespace A131859.P8414456222710740665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117452 (A063694 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131859.P8414456222710740665

namespace A131859

/-- `eq[1, A117452(A063694(n)+1)]` -/
def P8414456222710740665.Spec : Prop :=
  ∀ n, (P8414456222710740665.a n : ℤ) = A131859 (n + 1)

end A131859

/-! ## A131859.P11142764032793192364

`eq[1, A065359(A059905(n))]`
-/

namespace A131859.P11142764032793192364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A059905 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131859.P11142764032793192364

namespace A131859

/-- `eq[1, A065359(A059905(n))]` -/
def P11142764032793192364.Spec : Prop :=
  ∀ n, (P11142764032793192364.a n : ℤ) = A131859 (n + 1)

end A131859

/-! ## A131859.P8902899494258865620

`eq[A131852(A004525(n))+2, A000034(n)]`
-/

namespace A131859.P8902899494258865620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (A004525 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131859.P8902899494258865620

namespace A131859

/-- `eq[A131852(A004525(n))+2, A000034(n)]` -/
def P8902899494258865620.Spec : Prop :=
  ∀ n, (P8902899494258865620.a n : ℤ) = A131859 (n + 1)

end A131859

/-! ## A131859.P2402611931627783143

`eq[A131852(A004526(n))+2, A000034(n)]`
-/

namespace A131859.P2402611931627783143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (A004526 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131859.P2402611931627783143

namespace A131859

/-- `eq[A131852(A004526(n))+2, A000034(n)]` -/
def P2402611931627783143.Spec : Prop :=
  ∀ n, (P2402611931627783143.a n : ℤ) = A131859 (n + 1)

end A131859

/-! ## A131859.P10113900509110056531

`eq[1, A131852(2*n)]`
-/

namespace A131859.P10113900509110056531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131859.P10113900509110056531

namespace A131859

/-- `eq[1, A131852(2*n)]` -/
def P10113900509110056531.Spec : Prop :=
  ∀ n, (P10113900509110056531.a n : ℤ) = A131859 (n + 1)

end A131859

/-! ## A131859.P8394989070414465675

`eq[1, A065359(A059906(2*n))]`
-/

namespace A131859.P8394989070414465675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A059906 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131859.P8394989070414465675

namespace A131859

/-- `eq[1, A065359(A059906(2*n))]` -/
def P8394989070414465675.Spec : Prop :=
  ∀ n, (P8394989070414465675.a n : ℤ) = A131859 (n + 1)

end A131859

/-! ## A131859.P6773527163545118812

`A004525(eq[1/A000034(n), A131852(n)])`
-/

namespace A131859.P6773527163545118812
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A000034 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A131859.P6773527163545118812

namespace A131859

/-- `A004525(eq[1/A000034(n), A131852(n)])` -/
def P6773527163545118812.Spec : Prop :=
  ∀ n, P6773527163545118812.a n = A131859 (n + 1)

end A131859

/-! ## A131859.P17930269114000235849

`A004526(eq[1/A000034(n), A131852(n)])`
-/

namespace A131859.P17930269114000235849
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A000034 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A131859.P17930269114000235849

namespace A131859

/-- `A004526(eq[1/A000034(n), A131852(n)])` -/
def P17930269114000235849.Spec : Prop :=
  ∀ n, P17930269114000235849.a n = A131859 (n + 1)

end A131859

/-! ## A131859.P12864829699327153979

`A004526(eq[1/A001285(n), A131852(n)])`
-/

namespace A131859.P12864829699327153979
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A001285 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A131859.P12864829699327153979

namespace A131859

/-- `A004526(eq[1/A001285(n), A131852(n)])` -/
def P12864829699327153979.Spec : Prop :=
  ∀ n, P12864829699327153979.a n = A131859 (n + 1)

end A131859

/-! ## A131859.P913303255918913587

`A065033(eq[1/A000034(n), A131852(n)])`
-/

namespace A131859.P913303255918913587
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A000034 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A131859.P913303255918913587

namespace A131859

/-- `A065033(eq[1/A000034(n), A131852(n)])` -/
def P913303255918913587.Spec : Prop :=
  ∀ n, P913303255918913587.a n = A131859 (n + 1)

end A131859

/-!
# A131860: Numbers m such that z(m)=(1,1) with z as defined in A131851.

The programs for A131860, the canonical program `A131860.P6113387829326523069` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131860 has offset 1).

The definition of A131860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131860.P6113387829326523069

`∩[A131857(n+1), A131859(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A131860

/-- `∩[A131857(n+1), A131859(n+1)]` -/
def P6113387829326523069.Spec : Prop :=
  ∀ n, (P6113387829326523069.a n : ℤ) = A131860 (n + 1)

theorem P6113387829326523069.correct : P6113387829326523069.Spec := by
  intro n
  simp only [A131860, Nat.add_sub_cancel]

end A131860

/-! ## A131860.P12617938567438578250

`eq[A117452(n+2), A330714(n)]`
-/

namespace A131860.P12617938567438578250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117452 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131860.P12617938567438578250

namespace A131860

/-- `eq[A117452(n+2), A330714(n)]` -/
def P12617938567438578250.Spec : Prop :=
  ∀ n, (P12617938567438578250.a n : ℤ) = A131860 (n + 1)

end A131860

/-! ## A131860.P8199380087318224996

`eq[2, A070430(n+1)*A330714(n)]`
-/

namespace A131860.P8199380087318224996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070430 (n + 1) * A330714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131860.P8199380087318224996

namespace A131860

/-- `eq[2, A070430(n+1)*A330714(n)]` -/
def P8199380087318224996.Spec : Prop :=
  ∀ n, (P8199380087318224996.a n : ℤ) = A131860 (n + 1)

end A131860

/-! ## A131860.P7779824100401102179

`A016885(eq[1, A131851(A016885(n))])`
-/

namespace A131860.P7779824100401102179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A016885 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131860.P7779824100401102179

namespace A131860

/-- `A016885(eq[1, A131851(A016885(n))])` -/
def P7779824100401102179.Spec : Prop :=
  ∀ n, P7779824100401102179.a n = A131860 (n + 1)

end A131860

/-! ## A131860.P10173799963606803572

`A016885(eq[1, A131852(A016885(n))])`
-/

namespace A131860.P10173799963606803572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (A016885 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131860.P10173799963606803572

namespace A131860

/-- `A016885(eq[1, A131852(A016885(n))])` -/
def P10173799963606803572.Spec : Prop :=
  ∀ n, P10173799963606803572.a n = A131860 (n + 1)

end A131860

/-! ## A131860.P12488461441585075612

`eq[2, A133368(2*n)*A330714(n)]`
-/

namespace A131860.P12488461441585075612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133368 (2 * n) * A330714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131860.P12488461441585075612

namespace A131860

/-- `eq[2, A133368(2*n)*A330714(n)]` -/
def P12488461441585075612.Spec : Prop :=
  ∀ n, (P12488461441585075612.a n : ℤ) = A131860 (n + 1)

end A131860

/-! ## A131860.P10079876382904411153

`eq[2, A138019(2*n)*A330714(n)]`
-/

namespace A131860.P10079876382904411153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138019 (2 * n) * A330714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131860.P10079876382904411153

namespace A131860

/-- `eq[2, A138019(2*n)*A330714(n)]` -/
def P10079876382904411153.Spec : Prop :=
  ∀ n, (P10079876382904411153.a n : ℤ) = A131860 (n + 1)

end A131860

/-! ## A131860.P7196951156144642823

`eq[A330714(2*n+1)², A001204(n)]`
-/

namespace A131860.P7196951156144642823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001204 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131860.P7196951156144642823

namespace A131860

/-- `eq[A330714(2*n+1)², A001204(n)]` -/
def P7196951156144642823.Spec : Prop :=
  ∀ n, (P7196951156144642823.a n : ℤ) = A131860 (n + 1)

end A131860

/-! ## A131860.P16259725579671379529

`eq[A070278(2*n+1), A131851(2*n+1)]`
-/

namespace A131860.P16259725579671379529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070278 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131860.P16259725579671379529

namespace A131860

/-- `eq[A070278(2*n+1), A131851(2*n+1)]` -/
def P16259725579671379529.Spec : Prop :=
  ∀ n, (P16259725579671379529.a n : ℤ) = A131860 (n + 1)

end A131860

/-! ## A131860.P992893807575542724

`eq[A156174(2*n+1), A330714(2*n+1)]`
-/

namespace A131860.P992893807575542724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156174 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131860.P992893807575542724

namespace A131860

/-- `eq[A156174(2*n+1), A330714(2*n+1)]` -/
def P992893807575542724.Spec : Prop :=
  ∀ n, (P992893807575542724.a n : ℤ) = A131860 (n + 1)

end A131860

/-! ## A131860.P16430256629495719783

`eq[A198517(2*n+1), A330714(2*n+1)]`
-/

namespace A131860.P16430256629495719783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198517 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131860.P16430256629495719783

namespace A131860

/-- `eq[A198517(2*n+1), A330714(2*n+1)]` -/
def P16430256629495719783.Spec : Prop :=
  ∀ n, (P16430256629495719783.a n : ℤ) = A131860 (n + 1)

end A131860

/-! ## A131860.P13120875839338214257

`eq[1, A131852(2*n)*A330714(2*n+1)]`
-/

namespace A131860.P13120875839338214257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (2 * n) * A330714 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131860.P13120875839338214257

namespace A131860

/-- `eq[1, A131852(2*n)*A330714(2*n+1)]` -/
def P13120875839338214257.Spec : Prop :=
  ∀ n, (P13120875839338214257.a n : ℤ) = A131860 (n + 1)

end A131860

/-! ## A131860.P8651113927638850188

`eq[A001204(n)², A330714(A005408(n))]`
-/

namespace A131860.P8651113927638850188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001204 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 (A005408 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131860.P8651113927638850188

namespace A131860

/-- `eq[A001204(n)², A330714(A005408(n))]` -/
def P8651113927638850188.Spec : Prop :=
  ∀ n, (P8651113927638850188.a n : ℤ) = A131860 (n + 1)

end A131860

/-! ## A131860.P6481595078154725767

`eq[A287576(n+1), A330714(A005408(n))]`
-/

namespace A131860.P6481595078154725767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 (A005408 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131860.P6481595078154725767

namespace A131860

/-- `eq[A287576(n+1), A330714(A005408(n))]` -/
def P6481595078154725767.Spec : Prop :=
  ∀ n, (P6481595078154725767.a n : ℤ) = A131860 (n + 1)

end A131860

/-! ## A131860.P16484046284384502525

`eq[0, A330714(4*n+3)]`
-/

namespace A131860.P16484046284384502525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131860.P16484046284384502525

namespace A131860

/-- `eq[0, A330714(4*n+3)]` -/
def P16484046284384502525.Spec : Prop :=
  ∀ n, (P16484046284384502525.a n : ℤ) = A131860 (n + 1)

end A131860

/-!
# A131861: Numbers m such that A131851(m) > 0.

The programs for A131861, there is no canonical definition to state claims against.
-/

/-! ## A131861.P13936190818805604611

`lt[0, n%2-a(floor(n/4))]` with `a(0)=0`
-/

namespace A131861.P13936190818805604611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  ((n % 2 : ℕ) : ℤ) - f2 ⌊(n : ℚ) / 4⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131861.P13936190818805604611

/-! ## A131861.P14220189635273024519

`lt[0, A131851(n)]`
-/

namespace A131861.P14220189635273024519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131861.P14220189635273024519

/-! ## A131861.P15799410797333626782

`lt[0, A131852(2*n)]`
-/

namespace A131861.P15799410797333626782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131861.P15799410797333626782

/-! ## A131861.P115365935985674622

`eq[4, and(4, A131851(4*n))]`
-/

namespace A131861.P115365935985674622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 (A131851 (4 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131861.P115365935985674622

/-! ## A131861.P11329345183668252401

`lt[A131852(floor(n/2)), n%2]`
-/

namespace A131861.P11329345183668252401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 ⌊(n : ℚ) / 2⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131861.P11329345183668252401

/-! ## A131861.P14074428466908656823

`eq[0, A152892(A088442(n))]`
-/

namespace A131861.P14074428466908656823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152892 (A088442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131861.P14074428466908656823

/-! ## A131861.P6721980253434018755

`eq[1, A054054(A063694(n))]`
-/

namespace A131861.P6721980253434018755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A063694 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131861.P6721980253434018755

/-! ## A131861.P7052667827535079435

`eq[1, A152892(A004514(n))]`
-/

namespace A131861.P7052667827535079435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152892 (A004514 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131861.P7052667827535079435

/-! ## A131861.P13724978876351535688

`lt[1, A065359(A059905(n))+1]`
-/

namespace A131861.P13724978876351535688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A059905 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131861.P13724978876351535688

/-! ## A131861.P8893456110074946132

`eq[0, A145708(A063695(2*n))]`
-/

namespace A131861.P8893456110074946132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145708 (A063695 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131861.P8893456110074946132

/-!
# A131862: Numbers m such that A131852(m) > 0.

The programs for A131862, there is no canonical definition to state claims against.
-/

/-! ## A131862.P7134171269851063181

`lt[0, A131852(n)]`
-/

namespace A131862.P7134171269851063181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131862.P7134171269851063181

/-! ## A131862.P279200764724792810

`lt[A131851(2*n), 0]`
-/

namespace A131862.P279200764724792810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131862.P279200764724792810

/-! ## A131862.P7194402671104559053

`lt[0, A131851(floor(n/2))]`
-/

namespace A131862.P7194402671104559053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131862.P7194402671104559053

/-! ## A131862.P6338579460460472133

`eq[12, lcm(12, A063695(n)%10)]`
-/

namespace A131862.P6338579460460472133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 12 (Int.tmod (A063695 n) 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131862.P6338579460460472133

/-! ## A131862.P12834019167839652783

`floor(eq[1, -A131851(n)]/2)`
-/

namespace A131862.P12834019167839652783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A131851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2⌋

end

end A131862.P12834019167839652783

/-! ## A131862.P6940422041257036661

`eq[1, ceil(exp(A131851(2*n+1)))]`
-/

namespace A131862.P6940422041257036661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (A131851 (2 * n + 1) : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131862.P6940422041257036661

/-! ## A131862.P7541550824713350158

`comp[floor(1/2*A131857(n+2)/2)]`
-/

namespace A131862.P7541550824713350158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 : ℚ) / 2 * (A131857 (n + 2) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A131862.P7541550824713350158

/-! ## A131862.P15313325453540025063

`eq[0, A152855(A063695(n))]`
-/

namespace A131862.P15313325453540025063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152855 (A063695 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131862.P15313325453540025063

/-! ## A131862.P9282609040404376092

`A004526(eq[1, -A131851(n)])`
-/

namespace A131862.P9282609040404376092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A131851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131862.P9282609040404376092

/-!
# A131863: Numbers m such that A131851(m) < 0.

The programs for A131863, there is no canonical definition to state claims against.
-/

/-! ## A131863.P14334909196706933304

`lt[n%2-a(floor(n/4)), 0]` with `a(0)=0`
-/

namespace A131863.P14334909196706933304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((n % 2 : ℕ) : ℤ) - f1 ⌊(n : ℚ) / 4⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131863.P14334909196706933304

/-! ## A131863.P11850560933206464356

`lt[1, (-1)^n-a(floor(n/4))]` with `a(0)=0`
-/

namespace A131863.P11850560933206464356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (-1) ^ n - f2 ⌊(n : ℚ) / 4⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131863.P11850560933206464356

/-! ## A131863.P817643275594396540

`lt[A131851(n), 0]`
-/

namespace A131863.P817643275594396540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131863.P817643275594396540

/-! ## A131863.P7271263767391951105

`lt[A131852(2*n), 0]`
-/

namespace A131863.P7271263767391951105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131863.P7271263767391951105

/-! ## A131863.P8755415950947683289

`lt[2, A063694(n)%5]`
-/

namespace A131863.P8755415950947683289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063694 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131863.P8755415950947683289

/-! ## A131863.P13095069080471636616

`eq[4, and(4, A131852(n+n))]`
-/

namespace A131863.P13095069080471636616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 (A131852 (n + n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131863.P13095069080471636616

/-! ## A131863.P1596433684975889913

`lt[n%2, A131852(floor(n/2))]`
-/

namespace A131863.P1596433684975889913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131863.P1596433684975889913

/-! ## A131863.P6423682109653328030

`eq[0, A117452(A063694(n))]`
-/

namespace A131863.P6423682109653328030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117452 (A063694 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131863.P6423682109653328030

/-! ## A131863.P11397221626564542493

`lt[A065359(A059905(n)), 0]`
-/

namespace A131863.P11397221626564542493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A059905 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131863.P11397221626564542493

/-! ## A131863.P12846707018044971469

`lt[A156174(A004514(n)), 0]`
-/

namespace A131863.P12846707018044971469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156174 (A004514 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131863.P12846707018044971469

/-!
# A131864: Numbers m such that A131852(m) < 0.

The programs for A131864, there is no canonical definition to state claims against.
-/

/-! ## A131864.P9472632095471111072

`lt[A131852(n), 0]`
-/

namespace A131864.P9472632095471111072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131864.P9472632095471111072

/-! ## A131864.P18253140467635457903

`lt[0, A131851(2*n)]`
-/

namespace A131864.P18253140467635457903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131864.P18253140467635457903

/-! ## A131864.P716172610167947126

`lt[4, A063695(n)%10]`
-/

namespace A131864.P716172610167947126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063695 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131864.P716172610167947126

/-! ## A131864.P488180837999113558

`lt[A131851(floor(n/2)), 0]`
-/

namespace A131864.P488180837999113558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 ⌊(n : ℚ) / 2⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131864.P488180837999113558

/-! ## A131864.P15875200342256435313

`lt[6, A090569(n+1)%10]`
-/

namespace A131864.P15875200342256435313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090569 (n + 1)) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131864.P15875200342256435313

/-! ## A131864.P17323783059026333774

`comp[xor(-A131851(n), floor(n/2))]`
-/

namespace A131864.P17323783059026333774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A131851 n) ⌊(n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A131864.P17323783059026333774

/-! ## A131864.P5538513408884956432

`lt[A065359(A059906(n)), 0]`
-/

namespace A131864.P5538513408884956432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A059906 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131864.P5538513408884956432

/-! ## A131864.P11655830553323283082

`lt[A145708(A063695(n)), 0]`
-/

namespace A131864.P11655830553323283082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145708 (A063695 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A131864.P11655830553323283082

/-! ## A131864.P6415416128402991325

`A004526(eq[2, A131851(n)])`
-/

namespace A131864.P6415416128402991325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131864.P6415416128402991325

/-! ## A131864.P7158930844116280440

`A123108(eq[2, A131851(n)])`
-/

namespace A131864.P7158930844116280440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131864.P7158930844116280440

/-!
# A131865: Partial sums of powers of 16.

The programs for A131865, the canonical program `A131865.P2415271176131871089` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131865 has offset 0).

The definition of A131865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131865.P2415271176131871089

`16*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131865

/-- `16*a(n-1)+1` -/
def P2415271176131871089.Spec : Prop :=
  ∀ n, (P2415271176131871089.a n : ℤ) = A131865 n

theorem P2415271176131871089.correct : P2415271176131871089.Spec := by
  intro n
  simp only [A131865]

end A131865

/-! ## A131865.P11261086649409751565

`a(n-1)+A001025(n)` with `a(0)=1`
-/

namespace A131865.P11261086649409751565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001025 n

end

end A131865.P11261086649409751565

namespace A131865

/-- `a(n-1)+A001025(n)` -/
def P11261086649409751565.Spec : Prop :=
  ∀ n, P11261086649409751565.a n = A131865 n

end A131865

/-! ## A131865.P13060305314354455855

`(16^(n+1)-1)/15`
-/

namespace A131865.P13060305314354455855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 ^ (n + 1) : ℤ) - 1 : ℚ) / 15

end

end A131865.P13060305314354455855

namespace A131865

/-- `(16^(n+1)-1)/15` -/
def P13060305314354455855.Spec : Prop :=
  ∀ n, P13060305314354455855.a n = (A131865 n : ℚ)

theorem P13060305314354455855.correct : P13060305314354455855.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131865, Nat.add_sub_cancel, A131865.P13060305314354455855.a, A131865.P2415271176131871089.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131865, Nat.add_sub_cancel, A131865.P13060305314354455855.a, A131865.P2415271176131871089.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131865

/-! ## A131865.P8173670979986297563

`ogf(1/(1-17x+16x^2))`
-/

namespace A131865.P8173670979986297563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -17, 16] n

end

end A131865.P8173670979986297563

namespace A131865

/-- `ogf(1/(1-17x+16x^2))` -/
def P8173670979986297563.Spec : Prop :=
  ∀ n, P8173670979986297563.a n = A131865 n

end A131865

/-! ## A131865.P7854265225340626056

`or(1, ∑[(4^n)²])`
-/

namespace A131865.P7854265225340626056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 ^ n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131865.P7854265225340626056

namespace A131865

/-- `or(1, ∑[(4^n)²])` -/
def P7854265225340626056.Spec : Prop :=
  ∀ n, (P7854265225340626056.a n : ℤ) = A131865 n

end A131865

/-! ## A131865.P5324510100325220441

`∑[16*a(n-1)]` with `a(0)=1`
-/

namespace A131865.P5324510100325220441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  16 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131865.P5324510100325220441

namespace A131865

/-- `∑[16*a(n-1)]` -/
def P5324510100325220441.Spec : Prop :=
  ∀ n, (P5324510100325220441.a n : ℤ) = A131865 n

end A131865

/-! ## A131865.P12188909682538463715

`lcm(16, a(n-1))+1` with `a(0)=1`
-/

namespace A131865.P12188909682538463715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 16 (a (n - 1)) + 1

end

end A131865.P12188909682538463715

namespace A131865

/-- `lcm(16, a(n-1))+1` -/
def P12188909682538463715.Spec : Prop :=
  ∀ n, (P12188909682538463715.a n : ℤ) = A131865 n

end A131865

/-! ## A131865.P12618209700983593151

`xor(1, 16*a(n-1))` with `a(0)=1`
-/

namespace A131865.P12618209700983593151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (16 * a (n - 1))

end

end A131865.P12618209700983593151

namespace A131865

/-- `xor(1, 16*a(n-1))` -/
def P12618209700983593151.Spec : Prop :=
  ∀ n, (P12618209700983593151.a n : ℤ) = A131865 n

end A131865

/-! ## A131865.P9444822340730332285

`16^n+a(n-1)` with `a(0)=1`
-/

namespace A131865.P9444822340730332285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  16 ^ n + a (n - 1)

end

end A131865.P9444822340730332285

namespace A131865

/-- `16^n+a(n-1)` -/
def P9444822340730332285.Spec : Prop :=
  ∀ n, (P9444822340730332285.a n : ℤ) = A131865 n

end A131865

/-! ## A131865.P5185259832390184014

`xor((4^n)², a(n-1))` with `a(0)=1`
-/

namespace A131865.P5185259832390184014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor ((4 ^ n) ^ 2) (a (n - 1))

end

end A131865.P5185259832390184014

namespace A131865

/-- `xor((4^n)², a(n-1))` -/
def P5185259832390184014.Spec : Prop :=
  ∀ n, (P5185259832390184014.a n : ℤ) = A131865 n

end A131865

/-!
# A131866: Distance of n-th semiprime to nearest square.

The programs for A131866, the canonical program `A131866.P17768118005872431551` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131866 has offset 1).

The definition of A131866 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A053188, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A131866.P17768118005872431551

`A053188(A001358(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A131866

/-- `A053188(A001358(n+1))` -/
def P17768118005872431551.Spec : Prop :=
  ∀ n, P17768118005872431551.a n = A131866 (n + 1)

theorem P17768118005872431551.correct : P17768118005872431551.Spec := by
  intro n
  simp only [A131866, Nat.add_sub_cancel]

end A131866

/-! ## A131866.P6397270887366868432

`A053188(A176540(n+2))`
-/

namespace A131866.P6397270887366868432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A176540 (n + 2)).toNat

end

end A131866.P6397270887366868432

namespace A131866

/-- `A053188(A176540(n+2))` -/
def P6397270887366868432.Spec : Prop :=
  ∀ n, P6397270887366868432.a n = A131866 (n + 1)

end A131866

/-! ## A131866.P337502052909330466

`A053188(eq[2, A105700(n)])`
-/

namespace A131866.P337502052909330466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131866.P337502052909330466

namespace A131866

/-- `A053188(eq[2, A105700(n)])` -/
def P337502052909330466.Spec : Prop :=
  ∀ n, P337502052909330466.a n = A131866 (n + 1)

end A131866

/-! ## A131866.P16740540641169791171

`A053188(sqrt(A074985(n+1)))`
-/

namespace A131866.P16740540641169791171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A131866.P16740540641169791171

namespace A131866

/-- `A053188(sqrt(A074985(n+1)))` -/
def P16740540641169791171.Spec : Prop :=
  ∀ n, P16740540641169791171.a n = A131866 (n + 1)

end A131866

/-! ## A131866.P2759208117242081828

`A053188(A088707(n+1)-1)`
-/

namespace A131866.P2759208117242081828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A088707 (n + 1) - 1).toNat

end

end A131866.P2759208117242081828

namespace A131866

/-- `A053188(A088707(n+1)-1)` -/
def P2759208117242081828.Spec : Prop :=
  ∀ n, P2759208117242081828.a n = A131866 (n + 1)

end A131866

/-! ## A131866.P8997767565300740750

`A053188(A075818(n+1)/2)`
-/

namespace A131866.P8997767565300740750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

end

end A131866.P8997767565300740750

namespace A131866

/-- `A053188(A075818(n+1)/2)` -/
def P8997767565300740750.Spec : Prop :=
  ∀ n, P8997767565300740750.a n = A131866 (n + 1)

end A131866

/-! ## A131866.P848442986032976993

`A053188(eq[2, A001222(n+1)]+1)`
-/

namespace A131866.P848442986032976993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A131866.P848442986032976993

namespace A131866

/-- `A053188(eq[2, A001222(n+1)]+1)` -/
def P848442986032976993.Spec : Prop :=
  ∀ n, P848442986032976993.a n = A131866 (n + 1)

end A131866

/-! ## A131866.P1138521031247112978

`A053188(A100493(n+1)-(n+1))`
-/

namespace A131866.P1138521031247112978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A100493 (n + 1) - (n + 1 : ℤ)).toNat

end

end A131866.P1138521031247112978

namespace A131866

/-- `A053188(A100493(n+1)-(n+1))` -/
def P1138521031247112978.Spec : Prop :=
  ∀ n, P1138521031247112978.a n = A131866 (n + 1)

theorem P1138521031247112978.correct : P1138521031247112978.Spec := by
  intro n
  simp only [A131866, Nat.add_sub_cancel, A131866.P1138521031247112978.a, A131866.P17768118005872431551.a, A001358, A001358.P632087320844056370.a, A053188, A053188.P18303623970101524975.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A053615, A053615.P2131948520812356575.a, A056847, A056847.P15116355347665768313.a, A072000, A072000.P3706059858088101648.a, A088707, A088707.P7291141647877559993.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A230595, A230595.P9035268919760195541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131866

/-!
# A131867: a(n) is the 2^n-th semiprime.

The programs for A131867, the canonical program `A131867.P15207744418062469578` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131867 has offset 0).

The definition of A131867 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A131867.P15207744418062469578

`A001358(2^n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A131867

/-- `A001358(2^n)` -/
def P15207744418062469578.Spec : Prop :=
  ∀ n, P15207744418062469578.a n = A131867 n

theorem P15207744418062469578.correct : P15207744418062469578.Spec := by
  intro n
  simp only [A131867]

end A131867

/-! ## A131867.P1502062784477856206

`record[A001358(A029930(n))]`
-/

namespace A131867.P1502062784477856206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131867.P1502062784477856206

namespace A131867

/-- `record[A001358(A029930(n))]` -/
def P1502062784477856206.Spec : Prop :=
  ∀ n, P1502062784477856206.a n = A131867 n

end A131867

/-! ## A131867.P4633358654270433346

`record[A001358(A048483(n))]`
-/

namespace A131867.P4633358654270433346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A048483 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131867.P4633358654270433346

namespace A131867

/-- `record[A001358(A048483(n))]` -/
def P4633358654270433346.Spec : Prop :=
  ∀ n, P4633358654270433346.a n = A131867 n

end A131867

/-! ## A131867.P7634760233275273532

`record[A001358(A055248(n))]`
-/

namespace A131867.P7634760233275273532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131867.P7634760233275273532

namespace A131867

/-- `record[A001358(A055248(n))]` -/
def P7634760233275273532.Spec : Prop :=
  ∀ n, P7634760233275273532.a n = A131867 n

end A131867

/-! ## A131867.P4549513068739650998

`record[A001358(A059146(n))]`
-/

namespace A131867.P4549513068739650998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A059146 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131867.P4549513068739650998

namespace A131867

/-- `record[A001358(A059146(n))]` -/
def P4549513068739650998.Spec : Prop :=
  ∀ n, P4549513068739650998.a n = A131867 n

end A131867

/-!
# A131868: a(n) = (2*n^2)^(-1)*Sum_{d|n} (-1)^(n+d)*moebius(n/d)*binomial(2*d,d).

The programs for A131868, there is no canonical definition to state claims against.
-/

/-! ## A131868.P489968712671515747

`(n+1)/6*A254593(n+1)`
-/

namespace A131868.P489968712671515747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 6 * (A254593 (n + 1) : ℚ)

end

end A131868.P489968712671515747

/-! ## A131868.P6665241870868278939

`A174663(n+1)/A001563(n+1)`
-/

namespace A131868.P6665241870868278939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174663 (n + 1) : ℚ) / (A001563 (n + 1) : ℚ)

end

end A131868.P6665241870868278939

/-! ## A131868.P433542796681259567

`A174663(n+1)/sqrt(A176128(n+1))`
-/

namespace A131868.P433542796681259567
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A174663 (n + 1) : ℝ) / Real.sqrt (A176128 (n + 1) : ℝ)

end

end A131868.P433542796681259567

/-! ## A131868.P4484385548623430267

`A008615((n+1)*A254593(n+1))`
-/

namespace A131868.P4484385548623430267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 ((n + 1 : ℤ) * A254593 (n + 1)).toNat

end

end A131868.P4484385548623430267

/-! ## A131868.P13364129791013606290

`A005206(A120019(∑[n+1])+A004525(n))`
-/

namespace A131868.P13364129791013606290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A120019 (∑ j ∈ Finset.range (n + 1), f1 j) + A004525 n).toNat

end

end A131868.P13364129791013606290

/-!
# A131870: Period 8: repeat [1, 2, 3, 4, 6, 7, 8, 9].

The programs for A131870, the canonical program `A131870.P16269903182316880290` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131870 has offset 0).

The definition of A131870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131870.P16269903182316880290

`comp[5*n]%10`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131870

/-- `comp[5*n]%10` -/
def P16269903182316880290.Spec : Prop :=
  ∀ n, (P16269903182316880290.a n : ℤ) = A131870 n

theorem P16269903182316880290.correct : P16269903182316880290.Spec := by
  intro n
  simp only [A131870]

end A131870

/-!
# A131871: a(n) = A131766(n) / 18.

The programs for A131871, the canonical program `A131871.P10104157385363952011` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131871 has offset 0).

The definition of A131871 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131871.P10104157385363952011

`A131766(n)/18`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A131871

/-- `A131766(n)/18` -/
def P10104157385363952011.Spec : Prop :=
  ∀ n, P10104157385363952011.a n = (A131871 n : ℚ)

end A131871

/-! ## A131871.P10133789003980287340

`(A131668(n)-Δ[n²])/18`
-/

namespace A131871.P10133789003980287340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131668 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 18

end

end A131871.P10133789003980287340

namespace A131871

/-- `(A131668(n)-Δ[n²])/18` -/
def P10133789003980287340.Spec : Prop :=
  ∀ n, P10133789003980287340.a n = (A131871 n : ℚ)

end A131871

/-! ## A131871.P9562357045689112606

`(A131668(n)-A005408(n))%A117779(n+1)/18`
-/

namespace A131871.P9562357045689112606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A131668 n - A005408 n) (A117779 (n + 1)) : ℚ) / 18

end

end A131871.P9562357045689112606

namespace A131871

/-- `(A131668(n)-A005408(n))%A117779(n+1)/18` -/
def P9562357045689112606.Spec : Prop :=
  ∀ n, P9562357045689112606.a n = (A131871 n : ℚ)

end A131871

/-! ## A131871.P2078084172573359881

`A106619(A131766(n))`
-/

namespace A131871.P2078084172573359881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (A131766 n).toNat

end

end A131871.P2078084172573359881

namespace A131871

/-- `A106619(A131766(n))` -/
def P2078084172573359881.Spec : Prop :=
  ∀ n, P2078084172573359881.a n = A131871 n

end A131871

/-!
# A131872: Set m = 0, n = 1. Find smallest k >= 2 such that pi(k) = (k-pi(k)) - (m-pi(m)); set a(n) = pi(k), m = k, n = n+1. Repeat.

The programs for A131872, there is no canonical definition to state claims against.
-/

/-! ## A131872.P9938273390598983960

`∑[A091093(∑[A117416(n)])]`
-/

namespace A131872.P9938273390598983960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091093 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131872.P9938273390598983960

/-! ## A131872.P17412110589431038038

`∑[A161357(∑[A076112(n+1)])]`
-/

namespace A131872.P17412110589431038038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161357 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131872.P17412110589431038038

/-! ## A131872.P15594432129340495552

`A074148(n+1)-A105812(A300579(n))`
-/

namespace A131872.P15594432129340495552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (n + 1) - A105812 (A300579 n).toNat

end

end A131872.P15594432129340495552

/-!
# A131873: Right-to-left partial row sums of triangle A131844.

The programs for A131873, there is no canonical definition to state claims against.
-/

/-! ## A131873.P1386989432710721987

`ceil(A131876(n)/2)`
-/

namespace A131873.P1386989432710721987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131876 n : ℚ) / 2⌉

end

end A131873.P1386989432710721987

/-! ## A131873.P12679659938479233397

`round(A131876(2*n-n)/2)`
-/

namespace A131873.P12679659938479233397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A131876 (2 * n - n) : ℚ) / 2)

end

end A131873.P12679659938479233397

/-! ## A131873.P12730015899494654887

`A000463(A131876(n))`
-/

namespace A131873.P12730015899494654887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A131876 n).toNat

end

end A131873.P12730015899494654887

/-! ## A131873.P917572808190849498

`A001281(A131876(n)+1)`
-/

namespace A131873.P917572808190849498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A131876 n + 1).toNat

end

end A131873.P917572808190849498

/-! ## A131873.P10032512177673854086

`A004525(A131876(n)+1)`
-/

namespace A131873.P10032512177673854086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A131876 n + 1).toNat

end

end A131873.P10032512177673854086

/-! ## A131873.P14400021330960084904

`A003602(2*A131876(n))`
-/

namespace A131873.P14400021330960084904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (2 * A131876 n).toNat

end

end A131873.P14400021330960084904

/-! ## A131873.P7851386143357681147

`A003602(lcm(2, A131876(n)))`
-/

namespace A131873.P7851386143357681147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Int.lcm 2 (A131876 n))

end

end A131873.P7851386143357681147

/-! ## A131873.P232435884416796947

`A001057(or(1, A131876(n)))`
-/

namespace A131873.P232435884416796947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.lor 1 (A131876 n)).toNat

end

end A131873.P232435884416796947

/-!
# A131874: a(n) = (7*n^2 + 15*n + 2) / 2.

The programs for A131874, the canonical program `A131874.P4958903479805609144` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131874 has offset 0).

The definition of A131874 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n²+15*n+2)/2` (program `A131874.P704674670031311529`, by `A131874.P704674670031311529.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131874.P4958903479805609144

`a(n-1)+7*n+4` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131874

/-- `a(n-1)+7*n+4` -/
def P4958903479805609144.Spec : Prop :=
  ∀ n, (P4958903479805609144.a n : ℤ) = A131874 n

theorem P4958903479805609144.correct : P4958903479805609144.Spec := by
  intro n
  simp only [A131874]

end A131874

/-! ## A131874.P9514786782493994396

`(2+15*n+7*n²)/2`
-/

namespace A131874.P9514786782493994396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + 15 * n + 7 * n ^ 2 : ℚ) / 2

end

end A131874.P9514786782493994396

namespace A131874

/-- `(2+15*n+7*n²)/2` -/
def P9514786782493994396.Spec : Prop :=
  ∀ n, P9514786782493994396.a n = (A131874 n : ℚ)

theorem P9514786782493994396.correct : P9514786782493994396.Spec := by
  intro n
  induction n with
  | zero => simp [A131874, A131874.P9514786782493994396.a, A131874.P4958903479805609144.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A131874, Nat.add_sub_cancel, A131874.P9514786782493994396.a, A131874.P4958903479805609144.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A131874

/-! ## A131874.P704674670031311529

`(7*n²+15*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131874.P704674670031311529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 2 + 15 * n + 2 : ℚ) / 2

end

end A131874.P704674670031311529

namespace A131874

/-- `(7*n²+15*n+2)/2` -/
def P704674670031311529.Spec : Prop :=
  ∀ n, P704674670031311529.a n = (A131874 n : ℚ)

theorem P704674670031311529.correct : P704674670031311529.Spec := by
  intro n
  induction n with
  | zero => simp [A131874, A131874.P704674670031311529.a, A131874.P4958903479805609144.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A131874, Nat.add_sub_cancel, A131874.P704674670031311529.a, A131874.P4958903479805609144.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A131874

/-! ## A131874.P11357040333369889530

`∑[a(n-1)+7]` with `a(0)=1, a(1)=11`
-/

namespace A131874.P11357040333369889530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131874.P11357040333369889530

namespace A131874

/-- `∑[a(n-1)+7]` -/
def P11357040333369889530.Spec : Prop :=
  ∀ n, (P11357040333369889530.a n : ℤ) = A131874 n

end A131874

/-! ## A131874.P13695771863270113948

`∑[ogf((1+9x-3x^2)/(1-2x+x^2))]`
-/

namespace A131874.P13695771863270113948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, -3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131874.P13695771863270113948

namespace A131874

/-- `∑[ogf((1+9x-3x^2)/(1-2x+x^2))]` -/
def P13695771863270113948.Spec : Prop :=
  ∀ n, P13695771863270113948.a n = A131874 n

end A131874

/-! ## A131874.P14022631115782083819

`ogf((1+9x-3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A131874.P14022631115782083819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, -3] [1, -3, 3, -1] n

end

end A131874.P14022631115782083819

namespace A131874

/-- `ogf((1+9x-3x^2)/(1-3x+3x^2-x^3))` -/
def P14022631115782083819.Spec : Prop :=
  ∀ n, P14022631115782083819.a n = A131874 n

end A131874

/-! ## A131874.P6093426272416088219

`Δ[(2*n)²]-(n-a(n-1))` with `a(0)=1`
-/

namespace A131874.P6093426272416088219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A131874.P6093426272416088219

namespace A131874

/-- `Δ[(2*n)²]-(n-a(n-1))` -/
def P6093426272416088219.Spec : Prop :=
  ∀ n, P6093426272416088219.a n = A131874 n

end A131874

/-! ## A131874.P17399328989095014066

`(n+2)*(lcm(2, 2*n+1)-(n+3)/2)`
-/

namespace A131874.P17399328989095014066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((Nat.lcm 2 (2 * n + 1) : ℚ) - (n + 3 : ℚ) / 2)

end

end A131874.P17399328989095014066

namespace A131874

/-- `(n+2)*(lcm(2, 2*n+1)-(n+3)/2)` -/
def P17399328989095014066.Spec : Prop :=
  ∀ n, P17399328989095014066.a n = (A131874 n : ℚ)

end A131874

/-! ## A131874.P15875604626980517014

`∑[A017029(n)]-3`
-/

namespace A131874.P15875604626980517014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A131874.P15875604626980517014

namespace A131874

/-- `∑[A017029(n)]-3` -/
def P15875604626980517014.Spec : Prop :=
  ∀ n, P15875604626980517014.a n = A131874 n

end A131874

/-! ## A131874.P2425421814817600479

`A081271(n)-n²`
-/

namespace A131874.P2425421814817600479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081271 n - (n ^ 2 : ℤ)

end

end A131874.P2425421814817600479

namespace A131874

/-- `A081271(n)-n²` -/
def P2425421814817600479.Spec : Prop :=
  ∀ n, P2425421814817600479.a n = A131874 n

end A131874

/-! ## A131874.P14340550550760004804

`A082109(n)-∑[n]`
-/

namespace A131874.P14340550550760004804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082109 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A131874.P14340550550760004804

namespace A131874

/-- `A082109(n)-∑[n]` -/
def P14340550550760004804.Spec : Prop :=
  ∀ n, P14340550550760004804.a n = A131874 n

end A131874

/-! ## A131874.P17415023861627790235

`A198017(n)+2*n`
-/

namespace A131874.P17415023861627790235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198017 n + (2 * n : ℤ)

end

end A131874.P17415023861627790235

namespace A131874

/-- `A198017(n)+2*n` -/
def P17415023861627790235.Spec : Prop :=
  ∀ n, P17415023861627790235.a n = A131874 n

end A131874

/-! ## A131874.P10867528259708338494

`A166137(n+1)+n²`
-/

namespace A131874.P10867528259708338494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166137 (n + 1) + (n ^ 2 : ℤ)

end

end A131874.P10867528259708338494

namespace A131874

/-- `A166137(n+1)+n²` -/
def P10867528259708338494.Spec : Prop :=
  ∀ n, P10867528259708338494.a n = A131874 n

end A131874

/-! ## A131874.P6971119127322145160

`A279895(n)+(n+1)²`
-/

namespace A131874.P6971119127322145160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279895 n + ((n + 1) ^ 2 : ℤ)

end

end A131874.P6971119127322145160

namespace A131874

/-- `A279895(n)+(n+1)²` -/
def P6971119127322145160.Spec : Prop :=
  ∀ n, P6971119127322145160.a n = A131874 n

end A131874

/-! ## A131874.P4976496140868935006

`A067725(n)+∑[n+1]`
-/

namespace A131874.P4976496140868935006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A131874.P4976496140868935006

namespace A131874

/-- `A067725(n)+∑[n+1]` -/
def P4976496140868935006.Spec : Prop :=
  ∀ n, P4976496140868935006.a n = A131874 n

end A131874

/-! ## A131874.P15372773074207889232

`A001106(n+1)+3*n`
-/

namespace A131874.P15372773074207889232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (n + 1) + (3 * n : ℤ)

end

end A131874.P15372773074207889232

namespace A131874

/-- `A001106(n+1)+3*n` -/
def P15372773074207889232.Spec : Prop :=
  ∀ n, P15372773074207889232.a n = A131874 n

end A131874

/-! ## A131874.P11873183378922196997

`A069099(n+1)+4*n`
-/

namespace A131874.P11873183378922196997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069099 (n + 1) + (4 * n : ℤ)

end

end A131874.P11873183378922196997

namespace A131874

/-- `A069099(n+1)+4*n` -/
def P11873183378922196997.Spec : Prop :=
  ∀ n, P11873183378922196997.a n = A131874 n

end A131874

/-! ## A131874.P7235423660533883190

`A166146(n+1)-3*n`
-/

namespace A131874.P7235423660533883190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166146 (n + 1) - (3 * n : ℤ)

end

end A131874.P7235423660533883190

namespace A131874

/-- `A166146(n+1)-3*n` -/
def P7235423660533883190.Spec : Prop :=
  ∀ n, P7235423660533883190.a n = A131874 n

end A131874

/-! ## A131874.P135607847569170163

`(n+2)/2*A016993(n)`
-/

namespace A131874.P135607847569170163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A016993 n : ℚ)

end

end A131874.P135607847569170163

namespace A131874

/-- `(n+2)/2*A016993(n)` -/
def P135607847569170163.Spec : Prop :=
  ∀ n, P135607847569170163.a n = (A131874 n : ℚ)

end A131874

/-! ## A131874.P5551750097904430607

`A017281(n)+A001106(n)`
-/

namespace A131874.P5551750097904430607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n + A001106 n

end

end A131874.P5551750097904430607

namespace A131874

/-- `A017281(n)+A001106(n)` -/
def P5551750097904430607.Spec : Prop :=
  ∀ n, P5551750097904430607.a n = A131874 n

end A131874

/-!
# A131876: 2*A131873 - 1.

The programs for A131876, there is no canonical definition to state claims against.
-/

/-! ## A131876.P9397812544566268127

`2*A131873(n)-1`
-/

namespace A131876.P9397812544566268127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131873 n - 1

end

end A131876.P9397812544566268127

/-! ## A131876.P11336528057425975295

`A004273(A131873(n))`
-/

namespace A131876.P11336528057425975295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A131873 n).toNat

end

end A131876.P11336528057425975295

/-! ## A131876.P3391975971199101515

`A001650(A131873(n)²)`
-/

namespace A131876.P3391975971199101515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A131873 n ^ 2).toNat

end

end A131876.P3391975971199101515

/-! ## A131876.P3089094590369919400

`A055086(A131873(n)²)`
-/

namespace A131876.P3089094590369919400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A131873 n ^ 2).toNat

end

end A131876.P3089094590369919400

/-! ## A131876.P13217093282868181766

`A005408(A131873(n)-1)`
-/

namespace A131876.P13217093282868181766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A131873 n - 1).toNat

end

end A131876.P13217093282868181766

/-! ## A131876.P4002014995475240375

`A004275(A131873(n)+1)-1`
-/

namespace A131876.P4002014995475240375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A131873 n + 1).toNat - 1

end

end A131876.P4002014995475240375

/-! ## A131876.P8847397102225512365

`A005843(A131873(n)-1)+1`
-/

namespace A131876.P8847397102225512365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A131873 n - 1).toNat + 1

end

end A131876.P8847397102225512365

/-! ## A131876.P10832819256499548601

`A004275(2*A131873(n))/2`
-/

namespace A131876.P10832819256499548601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (2 * A131873 n).toNat : ℚ) / 2

end

end A131876.P10832819256499548601

/-! ## A131876.P9455498437517118094

`A003056(2*A131873(n)²)`
-/

namespace A131876.P9455498437517118094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * A131873 n ^ 2).toNat

end

end A131876.P9455498437517118094

/-! ## A131876.P16166654501466385400

`A025581(C(2*A131873(n), 2))`
-/

namespace A131876.P16166654501466385400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Nat.choose (2 * A131873 n).toNat 2)

end

end A131876.P16166654501466385400

/-!
# A131877: a(n) = 14*n + 1.

The programs for A131877, the canonical program `A131877.P1991480590599804805` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131877 has offset 0).

The definition of A131877 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*n+1` (program `A131877.P1991480590599804805`, by `A131877.P1991480590599804805.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131877.P1991480590599804805

`14*n+1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131877

/-- `14*n+1` -/
def P1991480590599804805.Spec : Prop :=
  ∀ n, (P1991480590599804805.a n : ℤ) = A131877 n

theorem P1991480590599804805.correct : P1991480590599804805.Spec := by
  intro n
  simp only [A131877]

end A131877

/-!
# A131878: a(n) = 7*n^2 + 14*n + 1.

The programs for A131878, the canonical program `A131878.P398517035312320865` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131878 has offset 0).

The definition of A131878 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n²+14*n+1` (program `A131878.P398517035312320865`, by `A131878.P398517035312320865.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131878.P398517035312320865

`7*n²+14*n+1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131878

/-- `7*n²+14*n+1` -/
def P398517035312320865.Spec : Prop :=
  ∀ n, (P398517035312320865.a n : ℤ) = A131878 n

theorem P398517035312320865.correct : P398517035312320865.Spec := by
  intro n
  simp only [A131878]

end A131878

/-! ## A131878.P13729850943558543650

`∑[a(n-1)+14]` with `a(0)=1, a(1)=21`
-/

namespace A131878.P13729850943558543650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 21] fun n f1 =>
  f1 (n - 1) + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131878.P13729850943558543650

namespace A131878

/-- `∑[a(n-1)+14]` -/
def P13729850943558543650.Spec : Prop :=
  ∀ n, (P13729850943558543650.a n : ℤ) = A131878 n

end A131878

/-! ## A131878.P1551501237711112844

`record[7*(1-n)²-6]`
-/

namespace A131878.P1551501237711112844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (1 - (n : ℤ)) ^ 2 - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131878.P1551501237711112844

namespace A131878

/-- `record[7*(1-n)²-6]` -/
def P1551501237711112844.Spec : Prop :=
  ∀ n, P1551501237711112844.a n = A131878 n

end A131878

/-! ## A131878.P4895011971372293

`abs(a(n-1)+7*(2*n+1))` with `a(0)=1`
-/

namespace A131878.P4895011971372293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 7 * (2 * n + 1)

end

end A131878.P4895011971372293

namespace A131878

/-- `abs(a(n-1)+7*(2*n+1))` -/
def P4895011971372293.Spec : Prop :=
  ∀ n, (P4895011971372293.a n : ℤ) = A131878 n

theorem P4895011971372293.correct : P4895011971372293.Spec := by
  intro n
  induction n with
  | zero => simp [A131878, A131878.P4895011971372293.a, A131878.P398517035312320865.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A131878, Nat.add_sub_cancel, A131878.P4895011971372293.a, A131878.P398517035312320865.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A131878

/-! ## A131878.P6159493143430871653

`floor(a(n-1)+7*(2*n+1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A131878.P6159493143430871653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 7 * (2 * n + 1)

end

end A131878.P6159493143430871653

namespace A131878

/-- `floor(a(n-1)+7*(2*n+1))` -/
def P6159493143430871653.Spec : Prop :=
  ∀ n, (P6159493143430871653.a n : ℤ) = A131878 n

theorem P6159493143430871653.correct : P6159493143430871653.Spec := by
  intro n
  induction n with
  | zero => simp [A131878, A131878.P6159493143430871653.a, A131878.P398517035312320865.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A131878, Nat.add_sub_cancel, A131878.P6159493143430871653.a, A131878.P398517035312320865.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A131878

/-! ## A131878.P5724150203255602261

`ceil(a(n-1)+7*(2*n+1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A131878.P5724150203255602261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 7 * (2 * n + 1)

end

end A131878.P5724150203255602261

namespace A131878

/-- `ceil(a(n-1)+7*(2*n+1))` -/
def P5724150203255602261.Spec : Prop :=
  ∀ n, (P5724150203255602261.a n : ℤ) = A131878 n

theorem P5724150203255602261.correct : P5724150203255602261.Spec := by
  intro n
  induction n with
  | zero => simp [A131878, A131878.P5724150203255602261.a, A131878.P398517035312320865.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A131878, Nat.add_sub_cancel, A131878.P5724150203255602261.a, A131878.P398517035312320865.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A131878

/-! ## A131878.P3815222895963272809

`round(a(n-1)+7*(2*n+1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A131878.P3815222895963272809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 7 * (2 * n + 1)

end

end A131878.P3815222895963272809

namespace A131878

/-- `round(a(n-1)+7*(2*n+1))` -/
def P3815222895963272809.Spec : Prop :=
  ∀ n, (P3815222895963272809.a n : ℤ) = A131878 n

theorem P3815222895963272809.correct : P3815222895963272809.Spec := by
  intro n
  induction n with
  | zero => simp [A131878, A131878.P3815222895963272809.a, A131878.P398517035312320865.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A131878, Nat.add_sub_cancel, A131878.P3815222895963272809.a, A131878.P398517035312320865.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A131878

/-! ## A131878.P1808876734729993620

`A158446(n+1)%A157889(n+1)`
-/

namespace A131878.P1808876734729993620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158446 (n + 1)) (A157889 (n + 1))

end

end A131878.P1808876734729993620

namespace A131878

/-- `A158446(n+1)%A157889(n+1)` -/
def P1808876734729993620.Spec : Prop :=
  ∀ n, P1808876734729993620.a n = A131878 n

end A131878

/-! ## A131878.P8988659937604097652

`A158563(n+1)%A158445(n+1)`
-/

namespace A131878.P8988659937604097652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158563 (n + 1)) (A158445 (n + 1))

end

end A131878.P8988659937604097652

namespace A131878

/-- `A158563(n+1)%A158445(n+1)` -/
def P8988659937604097652.Spec : Prop :=
  ∀ n, P8988659937604097652.a n = A131878 n

end A131878

/-! ## A131878.P16248311285424033594

`A158484(n+1)%A158626(n+1)`
-/

namespace A131878.P16248311285424033594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158484 (n + 1)) (A158626 (n + 1))

end

end A131878.P16248311285424033594

namespace A131878

/-- `A158484(n+1)%A158626(n+1)` -/
def P16248311285424033594.Spec : Prop :=
  ∀ n, P16248311285424033594.a n = A131878 n

end A131878

/-! ## A131878.P16629079323824461171

`A158735(n+1)%A158626(n+1)`
-/

namespace A131878.P16629079323824461171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158735 (n + 1)) (A158626 (n + 1))

end

end A131878.P16629079323824461171

namespace A131878

/-- `A158735(n+1)%A158626(n+1)` -/
def P16629079323824461171.Spec : Prop :=
  ∀ n, P16629079323824461171.a n = A131878 n

end A131878

/-! ## A131878.P4418122765279279567

`A016993(n*(n+2))`
-/

namespace A131878.P4418122765279279567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (n * (n + 2))

end

end A131878.P4418122765279279567

namespace A131878

/-- `A016993(n*(n+2))` -/
def P4418122765279279567.Spec : Prop :=
  ∀ n, P4418122765279279567.a n = A131878 n

theorem P4418122765279279567.correct : P4418122765279279567.Spec := by
  intro n
  simp only [A131878, Nat.add_sub_cancel, A131878.P4418122765279279567.a, A131878.P398517035312320865.a, A016993, A016993.P16783903167149097063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131878

/-!
# A131879: Triangle where row n contains the first n positive integers which are coprime to (2^n -1).

The programs for A131879, there is no canonical definition to state claims against.
-/

/-! ## A131879.P13302619838728998675

`gcd(record[A194586(n)], A081536(n+1))`
-/

namespace A131879.P13302619838728998675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194586 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A081536 (n + 1))

end

end A131879.P13302619838728998675

/-! ## A131879.P13759022712379216542

`A265005(A051053(n))+A002262(n)`
-/

namespace A131879.P13759022712379216542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (A051053 n).toNat + A002262 n

end

end A131879.P13759022712379216542

/-! ## A131879.P6342213735005880114

`A265005(A051053(n))+A166352(n)`
-/

namespace A131879.P6342213735005880114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (A051053 n).toNat + A166352 n

end

end A131879.P6342213735005880114

/-! ## A131879.P10112004848701774700

`A332671(A092482(n+1))+A002260(n+1)`
-/

namespace A131879.P10112004848701774700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (A092482 (n + 1)).toNat + A002260 (n + 1)

end

end A131879.P10112004848701774700

/-! ## A131879.P12631243785061464694

`A151755(A102661(n+1))+A000005(A059268(n))`
-/

namespace A131879.P12631243785061464694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151755 (A102661 (n + 1)).toNat + A000005 (A059268 n).toNat

end

end A131879.P12631243785061464694

/-!
# A131880: a(n) = the n-th positive integer which is coprime to (2^n -1). a(n) = the n-th term of row n in triangle A131879.

The programs for A131880, there is no canonical definition to state claims against.
-/

/-! ## A131880.P18270450806046417833

`A131879(∑[n+1])`
-/

namespace A131880.P18270450806046417833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131879 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131880.P18270450806046417833

/-! ## A131880.P16222406679458709327

`A131879(A025747(n))%39`
-/

namespace A131880.P16222406679458709327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131879 (A025747 n).toNat) 39

end

end A131880.P16222406679458709327

/-! ## A131880.P16967640887817876554

`A000027(A131879(∑[comp[31*n]]))`
-/

namespace A131880.P16967640887817876554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A131879 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A131880.P16967640887817876554

/-! ## A131880.P513845780709755483

`A131879(A025747(n))^A014963(4*n+2)`
-/

namespace A131880.P513845780709755483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131879 (A025747 n).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A131880.P513845780709755483

/-! ## A131880.P718448903144901169

`A014963(40*(n+1))*A131879(A025747(n))`
-/

namespace A131880.P718448903144901169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (40 * (n + 1)) * A131879 (A025747 n).toNat

end

end A131880.P718448903144901169

/-!
# A131881: Complement of A116700. Might be called "punctual birds".

The programs for A131881, there is no canonical definition to state claims against.
-/

/-! ## A131881.P12586483810387656620

`record[A333921(n+1)]`
-/

namespace A131881.P12586483810387656620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131881.P12586483810387656620

/-! ## A131881.P8148062744510812717

`comp[A116700(n+1)-1]+1`
-/

namespace A131881.P8148062744510812717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116700 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A131881.P8148062744510812717

/-! ## A131881.P8821760796198365148

`eq[n, A333921(A028310(n))]`
-/

namespace A131881.P8821760796198365148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333921 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131881.P8821760796198365148

/-! ## A131881.P7794149781721360655

`record[gcd(A008486(n), A333921(n))]`
-/

namespace A131881.P7794149781721360655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008486 n) (A333921 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131881.P7794149781721360655

/-! ## A131881.P7841768350999003257

`record[or(A000007(n), A333921(n))]`
-/

namespace A131881.P7841768350999003257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A333921 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131881.P7841768350999003257

/-! ## A131881.P15852292141848351962

`A333921(eq[n+1, A333921(n+1)]+1)`
-/

namespace A131881.P15852292141848351962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A131881.P15852292141848351962

/-! ## A131881.P6849633521871420842

`lt[A117804(A028310(n)), A086044(n)]`
-/

namespace A131881.P6849633521871420842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131881.P6849633521871420842

/-! ## A131881.P2164406268985833344

`lt[A117804(A117804(n+1)-n), A086044(n)]`
-/

namespace A131881.P2164406268985833344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (A117804 (n + 1) - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131881.P2164406268985833344

/-! ## A131881.P1943854960115907773

`lt[A179801(n+1), 1]+1`
-/

namespace A131881.P1943854960115907773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A131881.P1943854960115907773

/-! ## A131881.P15668144681072848739

`record[A008486(A333921(n)²)/A008486(n)]`
-/

namespace A131881.P15668144681072848739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 (A333921 n ^ 2).toNat : ℚ) / (A008486 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131881.P15668144681072848739

/-!
# A131882: a(0)=1; thereafter a(n)=a(n-1)+a([n/Phi]), where Phi=(1+sqrt(5))/2, the golden ratio.

The programs for A131882, the canonical program `A131882.P11879738429361413428` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131882 has offset 0).

The definition of A131882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131882.P11879738429361413428

`a(n-1)+a(floor(n/ϕ))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131882

/-- `a(n-1)+a(floor(n/ϕ))` -/
def P11879738429361413428.Spec : Prop :=
  ∀ n, (P11879738429361413428.a n : ℤ) = A131882 n

theorem P11879738429361413428.correct : P11879738429361413428.Spec := by
  intro n
  simp only [A131882]

end A131882

/-! ## A131882.P15125982758571979002

`A001221(2*A000040(n+1))*A006336(A000007(n)+n)`
-/

namespace A131882.P15125982758571979002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A000040 (n + 1)).toNat * A006336 (A000007 n + (n : ℤ)).toNat

end

end A131882.P15125982758571979002

namespace A131882

/-- `A001221(2*A000040(n+1))*A006336(A000007(n)+n)` -/
def P15125982758571979002.Spec : Prop :=
  ∀ n, P15125982758571979002.a n = A131882 n

end A131882

/-! ## A131882.P17855204404764905871

`record[A001468(n)*A006336(A060144(n)+1)]`
-/

namespace A131882.P17855204404764905871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n * A006336 (A060144 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131882.P17855204404764905871

namespace A131882

/-- `record[A001468(n)*A006336(A060144(n)+1)]` -/
def P17855204404764905871.Spec : Prop :=
  ∀ n, P17855204404764905871.a n = A131882 n

end A131882

/-! ## A131882.P1646041292915851651

`record[A134409(n+2)-Δ[A134409(n+2)]]`
-/

namespace A131882.P1646041292915851651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134409 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134409 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131882.P1646041292915851651

namespace A131882

/-- `record[A134409(n+2)-Δ[A134409(n+2)]]` -/
def P1646041292915851651.Spec : Prop :=
  ∀ n, P1646041292915851651.a n = A131882 n

end A131882

/-!
# A131883: a(n) = the minimum value from among (phi(n+1),phi(n+2),phi(n+3),...,phi(2n)), where phi(m) (A000010) is the number of positive integers which are coprime to m and are <= m.

The programs for A131883, there is no canonical definition to state claims against.
-/

/-! ## A131883.P10269820000422305275

`A036912(∑[char[A036913(n+1)-1]]+1)`
-/

namespace A131883.P10269820000422305275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036913 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036912 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A131883.P10269820000422305275

/-! ## A131883.P4787411630090520786

`A005153(A225559(A225559(A364767(A364768(n+1)))))`
-/

namespace A131883.P4787411630090520786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (A225559 (A225559 (A364767 (A364768 (n + 1)).toNat).toNat).toNat).toNat

end

end A131883.P4787411630090520786

/-!
# A131885: a(n) = 4*a(n-1) - 6*a(n-2) + 4*a(n-3) for n >= 4 starting with a(0) = 1, a(1) = 2, a(2) = 4, and a(3) = 6.

The programs for A131885, the canonical program `A131885.P7749993736329038993` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131885 has offset 0).

The definition of A131885 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-6*a(n-2)+4*a(n-3)` (program `A131885.P7749993736329038993`, by `A131885.P7749993736329038993.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131885.P7749993736329038993

`4*a(n-1)-6*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131885

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)` -/
def P7749993736329038993.Spec : Prop :=
  ∀ n, P7749993736329038993.a n = A131885 n

theorem P7749993736329038993.correct : P7749993736329038993.Spec := by
  intro n
  simp only [A131885]

end A131885

/-! ## A131885.P16783938366100161426

`ogf((1-2x+2x^2-2x^3)/(1-4x+6x^2-4x^3))`
-/

namespace A131885.P16783938366100161426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2, -2] [1, -4, 6, -4] n

end

end A131885.P16783938366100161426

namespace A131885

/-- `ogf((1-2x+2x^2-2x^3)/(1-4x+6x^2-4x^3))` -/
def P16783938366100161426.Spec : Prop :=
  ∀ n, P16783938366100161426.a n = A131885 n

end A131885

/-! ## A131885.P12738040094161104110

`A009545(n)+ceil(2^(n-1))`
-/

namespace A131885.P12738040094161104110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A131885.P12738040094161104110

namespace A131885

/-- `A009545(n)+ceil(2^(n-1))` -/
def P12738040094161104110.Spec : Prop :=
  ∀ n, P12738040094161104110.a n = A131885 n

end A131885

/-! ## A131885.P4129384200382544436

`A146559(n)+2*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A131885.P4129384200382544436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A146559 n + 2 * a (n - 1)

end

end A131885.P4129384200382544436

namespace A131885

/-- `A146559(n)+2*a(n-1)` -/
def P4129384200382544436.Spec : Prop :=
  ∀ n, P4129384200382544436.a n = A131885 n

end A131885

/-! ## A131885.P12351916544171920718

`a((n+1)%n)*A038504(n)` with `a(0)=1, a(1)=2`
-/

namespace A131885.P12351916544171920718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ((n + 1) % n) * A038504 n

end

end A131885.P12351916544171920718

namespace A131885

/-- `a((n+1)%n)*A038504(n)` -/
def P12351916544171920718.Spec : Prop :=
  ∀ n, P12351916544171920718.a n = A131885 n

end A131885

/-! ## A131885.P8668451445515640809

`A011782(n)+A009545(n)`
-/

namespace A131885.P8668451445515640809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A009545 n

end

end A131885.P8668451445515640809

namespace A131885

/-- `A011782(n)+A009545(n)` -/
def P8668451445515640809.Spec : Prop :=
  ∀ n, P8668451445515640809.a n = A131885 n

end A131885

/-! ## A131885.P14283284918160444418

`A166444(n+1)+A009545(n)`
-/

namespace A131885.P14283284918160444418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) + A009545 n

end

end A131885.P14283284918160444418

namespace A131885

/-- `A166444(n+1)+A009545(n)` -/
def P14283284918160444418.Spec : Prop :=
  ∀ n, P14283284918160444418.a n = A131885 n

end A131885

/-! ## A131885.P7841569162815022905

`A000007(n)+2*A038504(n)`
-/

namespace A131885.P7841569162815022905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A038504 n

end

end A131885.P7841569162815022905

namespace A131885

/-- `A000007(n)+2*A038504(n)` -/
def P7841569162815022905.Spec : Prop :=
  ∀ n, P7841569162815022905.a n = A131885 n

end A131885

/-! ## A131885.P10660807481408835264

`A138232(2*n+1)+A011782(n)`
-/

namespace A131885.P10660807481408835264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138232 (2 * n + 1) + A011782 n

end

end A131885.P10660807481408835264

namespace A131885

/-- `A138232(2*n+1)+A011782(n)` -/
def P10660807481408835264.Spec : Prop :=
  ∀ n, P10660807481408835264.a n = A131885 n

end A131885

/-! ## A131885.P4035476911827633437

`A158780(2*n+1)+A009545(n)`
-/

namespace A131885.P4035476911827633437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (2 * n + 1) + A009545 n

end

end A131885.P4035476911827633437

namespace A131885

/-- `A158780(2*n+1)+A009545(n)` -/
def P4035476911827633437.Spec : Prop :=
  ∀ n, P4035476911827633437.a n = A131885 n

end A131885

/-! ## A131885.P6958760989725780209

`A038504(A000007(n)+n)+A038504(n)`
-/

namespace A131885.P6958760989725780209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (A000007 n + (n : ℤ)).toNat + A038504 n

end

end A131885.P6958760989725780209

namespace A131885

/-- `A038504(A000007(n)+n)+A038504(n)` -/
def P6958760989725780209.Spec : Prop :=
  ∀ n, P6958760989725780209.a n = A131885 n

end A131885

/-! ## A131885.P16381866196528199811

`A131577(A000007(n)+n)+A009545(n)`
-/

namespace A131885.P16381866196528199811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A000007 n + (n : ℤ)).toNat + A009545 n

end

end A131885.P16381866196528199811

namespace A131885

/-- `A131577(A000007(n)+n)+A009545(n)` -/
def P16381866196528199811.Spec : Prop :=
  ∀ n, P16381866196528199811.a n = A131885 n

end A131885

/-! ## A131885.P9716561284323546998

`A038504(A004277(n)-n)+A038504(n)`
-/

namespace A131885.P9716561284323546998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (A004277 n - (n : ℤ)).toNat + A038504 n

end

end A131885.P9716561284323546998

namespace A131885

/-- `A038504(A004277(n)-n)+A038504(n)` -/
def P9716561284323546998.Spec : Prop :=
  ∀ n, P9716561284323546998.a n = A131885 n

end A131885

/-! ## A131885.P17203835014976065608

`A011782(n)+A016116(n)*A046978(n)`
-/

namespace A131885.P17203835014976065608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A016116 n * A046978 n

end

end A131885.P17203835014976065608

namespace A131885

/-- `A011782(n)+A016116(n)*A046978(n)` -/
def P17203835014976065608.Spec : Prop :=
  ∀ n, P17203835014976065608.a n = A131885 n

end A131885

/-! ## A131885.P4259217264362045855

`A038504(n+1)+A038505(n)-A000749(n)`
-/

namespace A131885.P4259217264362045855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (n + 1) + (A038505 n - A000749 n)

end

end A131885.P4259217264362045855

namespace A131885

/-- `A038504(n+1)+A038505(n)-A000749(n)` -/
def P4259217264362045855.Spec : Prop :=
  ∀ n, P4259217264362045855.a n = A131885 n

end A131885

/-! ## A131885.P8191025857172080010

`A038505(n+1)+A038503(n)-A000749(n)`
-/

namespace A131885.P8191025857172080010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (n + 1) + (A038503 n - A000749 n)

end

end A131885.P8191025857172080010

namespace A131885

/-- `A038505(n+1)+A038503(n)-A000749(n)` -/
def P8191025857172080010.Spec : Prop :=
  ∀ n, P8191025857172080010.a n = A131885 n

end A131885

/-! ## A131885.P8994344292114697010

`A038503(n)+A038503(n)-A146559(n+1)`
-/

namespace A131885.P8994344292114697010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n + (A038503 n - A146559 (n + 1))

end

end A131885.P8994344292114697010

namespace A131885

/-- `A038503(n)+A038503(n)-A146559(n+1)` -/
def P8994344292114697010.Spec : Prop :=
  ∀ n, P8994344292114697010.a n = A131885 n

end A131885

/-! ## A131885.P5086703370930753864

`A011782(n)+A146559(n)-A146559(n+1)`
-/

namespace A131885.P5086703370930753864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A146559 n - A146559 (n + 1))

end

end A131885.P5086703370930753864

namespace A131885

/-- `A011782(n)+A146559(n)-A146559(n+1)` -/
def P5086703370930753864.Spec : Prop :=
  ∀ n, P5086703370930753864.a n = A131885 n

end A131885

/-! ## A131885.P3510932448652977339

`(A158780(n+1)+A046978(n))*A016116(n)`
-/

namespace A131885.P3510932448652977339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158780 (n + 1) + A046978 n) * A016116 n

end

end A131885.P3510932448652977339

namespace A131885

/-- `(A158780(n+1)+A046978(n))*A016116(n)` -/
def P3510932448652977339.Spec : Prop :=
  ∀ n, P3510932448652977339.a n = A131885 n

end A131885

/-! ## A131885.P2944071798983546714

`A135360(n)-A000749(n)`
-/

namespace A131885.P2944071798983546714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135360 n - A000749 n

end

end A131885.P2944071798983546714

namespace A131885

/-- `A135360(n)-A000749(n)` -/
def P2944071798983546714.Spec : Prop :=
  ∀ n, P2944071798983546714.a n = A131885 n

end A131885

/-!
# A131886: Rearrange the rows of array A077569 by sorting the values on each row by noting the odd part of each signature and sorting as in A131822.

The programs for A131886, there is no canonical definition to state claims against.
-/

/-! ## A131886.P15903940457651709222

`A071364(A131997(n+1))`
-/

namespace A131886.P15903940457651709222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A131997 (n + 1)).toNat

end

end A131886.P15903940457651709222

/-! ## A131886.P8765119687617231750

`A336158(or(1, A131997(n+1)))`
-/

namespace A131886.P8765119687617231750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (Int.lor 1 (A131997 (n + 1))).toNat

end

end A131886.P8765119687617231750

/-! ## A131886.P15986277971880028874

`A336158(A131997(n+1)%A001801(n))`
-/

namespace A131886.P15986277971880028874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (Int.tmod (A131997 (n + 1)) (A001801 n)).toNat

end

end A131886.P15986277971880028874

/-! ## A131886.P5396391879055486445

`A336158(A131997(n+1))%A136121(n)`
-/

namespace A131886.P5396391879055486445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336158 (A131997 (n + 1)).toNat) (A136121 n)

end

end A131886.P5396391879055486445

/-! ## A131886.P9464302722097272028

`gcd(A336158(A131997(n+1)), A340506(n+1))`
-/

namespace A131886.P9464302722097272028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A336158 (A131997 (n + 1)).toNat) (A340506 (n + 1))

end

end A131886.P9464302722097272028

/-!
# A131887: Number of Khalimsky-continuous functions with a three-point codomain.

The programs for A131887, the canonical program `A131887.P13103123280659706922` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131887 has offset 1).

The definition of A131887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131887.P11176177337889928741

`ogf((3+5x-x^2-x^3)/(1-4x^2+x^4))`
-/

namespace A131887.P11176177337889928741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5, -1, -1] [1, 0, -4, 0, 1] n

end

end A131887.P11176177337889928741

namespace A131887

/-- `ogf((3+5x-x^2-x^3)/(1-4x^2+x^4))` -/
def P11176177337889928741.Spec : Prop :=
  ∀ n, P11176177337889928741.a n = A131887 (n + 1)

end A131887

/-! ## A131887.P13103123280659706922

`2*∑[A002530(n+1)]+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131887

/-- `2*∑[A002530(n+1)]+1` -/
def P13103123280659706922.Spec : Prop :=
  ∀ n, P13103123280659706922.a n = A131887 (n + 1)

theorem P13103123280659706922.correct : P13103123280659706922.Spec := by
  intro n
  simp only [A131887, Nat.add_sub_cancel]

end A131887

/-! ## A131887.P1800755707161261933

`A259593(n)+A259592(n)`
-/

namespace A131887.P1800755707161261933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 n + A259592 n

end

end A131887.P1800755707161261933

namespace A131887

/-- `A259593(n)+A259592(n)` -/
def P1800755707161261933.Spec : Prop :=
  ∀ n, P1800755707161261933.a n = A131887 (n + 1)

end A131887

/-! ## A131887.P2749211118627432988

`A254308(A007494(n+1)+2)`
-/

namespace A131887.P2749211118627432988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254308 (A007494 (n + 1) + 2).toNat

end

end A131887.P2749211118627432988

namespace A131887

/-- `A254308(A007494(n+1)+2)` -/
def P2749211118627432988.Spec : Prop :=
  ∀ n, P2749211118627432988.a n = A131887 (n + 1)

end A131887

/-! ## A131887.P7836922587611964494

`A254308(A294732(n+3)+2)`
-/

namespace A131887.P7836922587611964494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254308 (A294732 (n + 3) + 2).toNat

end

end A131887.P7836922587611964494

namespace A131887

/-- `A254308(A294732(n+3)+2)` -/
def P7836922587611964494.Spec : Prop :=
  ∀ n, P7836922587611964494.a n = A131887 (n + 1)

end A131887

/-! ## A131887.P1376926667089283660

`A237250(n+1)+A077237(n)`
-/

namespace A131887.P1376926667089283660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237250 (n + 1) + A077237 n

end

end A131887.P1376926667089283660

namespace A131887

/-- `A237250(n+1)+A077237(n)` -/
def P1376926667089283660.Spec : Prop :=
  ∀ n, P1376926667089283660.a n = A131887 (n + 1)

end A131887

/-! ## A131887.P10119306425471258190

`A237250(n+2)+Δ[A005246(n)]`
-/

namespace A131887.P10119306425471258190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237250 (n + 2) + (f1 (n + 1) - f1 n)

end

end A131887.P10119306425471258190

namespace A131887

/-- `A237250(n+2)+Δ[A005246(n)]` -/
def P10119306425471258190.Spec : Prop :=
  ∀ n, P10119306425471258190.a n = A131887 (n + 1)

end A131887

/-! ## A131887.P10453866115321997371

`A048788(n+1)+A048788(n+2)`
-/

namespace A131887.P10453866115321997371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 (n + 1) + A048788 (n + 2)

end

end A131887.P10453866115321997371

namespace A131887

/-- `A048788(n+1)+A048788(n+2)` -/
def P10453866115321997371.Spec : Prop :=
  ∀ n, P10453866115321997371.a n = A131887 (n + 1)

end A131887

/-! ## A131887.P9439084254525529020

`A002530(n+1)+A259593(n)+A002530(n)`
-/

namespace A131887.P9439084254525529020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (n + 1) + (A259593 n + A002530 n)

end

end A131887.P9439084254525529020

namespace A131887

/-- `A002530(n+1)+A259593(n)+A002530(n)` -/
def P9439084254525529020.Spec : Prop :=
  ∀ n, P9439084254525529020.a n = A131887 (n + 1)

end A131887

/-! ## A131887.P9463137658414886712

`A002531(n+1)+A259592(n)+A002531(n)`
-/

namespace A131887.P9463137658414886712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (n + 1) + (A259592 n + A002531 n)

end

end A131887.P9463137658414886712

namespace A131887

/-- `A002531(n+1)+A259592(n)+A002531(n)` -/
def P9463137658414886712.Spec : Prop :=
  ∀ n, P9463137658414886712.a n = A131887 (n + 1)

end A131887

/-! ## A131887.P12414581751794778470

`A259592(n+2)-A259592(n)`
-/

namespace A131887.P12414581751794778470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259592 (n + 2) - A259592 n

end

end A131887.P12414581751794778470

namespace A131887

/-- `A259592(n+2)-A259592(n)` -/
def P12414581751794778470.Spec : Prop :=
  ∀ n, P12414581751794778470.a n = A131887 (n + 1)

end A131887

/-! ## A131887.P12662963800379333974

`Δ[A259592(n+1)+A259592(n)]`
-/

namespace A131887.P12662963800379333974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259592 (n + 1) + A259592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131887.P12662963800379333974

namespace A131887

/-- `Δ[A259592(n+1)+A259592(n)]` -/
def P12662963800379333974.Spec : Prop :=
  ∀ n, P12662963800379333974.a n = A131887 (n + 1)

end A131887

/-! ## A131887.P17729785531617206239

`∪[A079935(n+2)+A052530(n+1), A079935(n+2)]`
-/

namespace A131887.P17729785531617206239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (n + 2) + A052530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A131887.P17729785531617206239

namespace A131887

/-- `∪[A079935(n+2)+A052530(n+1), A079935(n+2)]` -/
def P17729785531617206239.Spec : Prop :=
  ∀ n, (P17729785531617206239.a n : ℤ) = A131887 (n + 1)

end A131887

/-! ## A131887.P10890050600902143862

`A001571(n+2)/A259593(n+1)`
-/

namespace A131887.P10890050600902143862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001571 (n + 2) : ℚ) / (A259593 (n + 1) : ℚ)

end

end A131887.P10890050600902143862

namespace A131887

/-- `A001571(n+2)/A259593(n+1)` -/
def P10890050600902143862.Spec : Prop :=
  ∀ n, P10890050600902143862.a n = (A131887 (n + 1) : ℚ)

end A131887

/-!
# A131888: Follow each least prime signature by the corresponding value in the array A096443.

The programs for A131888, there is no canonical definition to state claims against.
-/

/-! ## A131888.P7033412068328150634

`A282625(A027642(n))+A282601(n+3)`
-/

namespace A131888.P7033412068328150634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282625 (A027642 n).toNat + A282601 (n + 3)

end

end A131888.P7033412068328150634

/-! ## A131888.P11649748731720211693

`floor(A239614(A235701(n))/A239614(n+1))`
-/

namespace A131888.P11649748731720211693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A239614 (A235701 n).toNat : ℚ) / (A239614 (n + 1) : ℚ)⌋

end

end A131888.P11649748731720211693

/-!
# A131889: a(n) is the number of shapes of balanced trees with constant branching factor 3 and n nodes. The node is balanced if the size, measured in nodes, of each pair of its children differ by at most one node.

The programs for A131889, the canonical program `A131889.P15177915861031452150` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131889 has offset 0).

The definition of A131889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131889.P12168029727845513633

`3^A343754(n)`
-/

namespace A131889.P12168029727845513633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A343754 n : ℤ)

end

end A131889.P12168029727845513633

namespace A131889

/-- `3^A343754(n)` -/
def P12168029727845513633.Spec : Prop :=
  ∀ n, P12168029727845513633.a n = (A131889 n : ℚ)

end A131889

/-! ## A131889.P17068143063618545065

`3^(n-A174574(n))`
-/

namespace A131889.P17068143063618545065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - A174574 n : ℤ)

end

end A131889.P17068143063618545065

namespace A131889

/-- `3^(n-A174574(n))` -/
def P17068143063618545065.Spec : Prop :=
  ∀ n, P17068143063618545065.a n = (A131889 n : ℚ)

end A131889

/-! ## A131889.P8238458770548785176

`3^(n-∑[A065363(n)])`
-/

namespace A131889.P8238458770548785176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A131889.P8238458770548785176

namespace A131889

/-- `3^(n-∑[A065363(n)])` -/
def P8238458770548785176.Spec : Prop :=
  ∀ n, P8238458770548785176.a n = (A131889 n : ℚ)

end A131889

/-! ## A131889.P15177915861031452150

`A000244(A343754(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A131889

/-- `A000244(A343754(n))` -/
def P15177915861031452150.Spec : Prop :=
  ∀ n, P15177915861031452150.a n = A131889 n

theorem P15177915861031452150.correct : P15177915861031452150.Spec := by
  intro n
  simp only [A131889]

end A131889

/-! ## A131889.P9167500149782391884

`A000244(n-A174574(n))`
-/

namespace A131889.P9167500149782391884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 ((n : ℤ) - A174574 n).toNat

end

end A131889.P9167500149782391884

namespace A131889

/-- `A000244(n-A174574(n))` -/
def P9167500149782391884.Spec : Prop :=
  ∀ n, P9167500149782391884.a n = A131889 n

end A131889

/-! ## A131889.P7108580590304696742

`A166552(2*A343754(n)+1)`
-/

namespace A131889.P7108580590304696742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166552 (2 * A343754 n + 1).toNat

end

end A131889.P7108580590304696742

namespace A131889

/-- `A166552(2*A343754(n)+1)` -/
def P7108580590304696742.Spec : Prop :=
  ∀ n, P7108580590304696742.a n = A131889 n

end A131889

/-! ## A131889.P4299504211444777023

`A166552(A343754(n)+A343754(n)+1)`
-/

namespace A131889.P4299504211444777023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166552 (A343754 n + (A343754 n + 1)).toNat

end

end A131889.P4299504211444777023

namespace A131889

/-- `A166552(A343754(n)+A343754(n)+1)` -/
def P4299504211444777023.Spec : Prop :=
  ∀ n, P4299504211444777023.a n = A131889 n

end A131889

/-! ## A131889.P8013031741950361444

`3^A035327(A035327(n)+∑[A065363(n)])`
-/

namespace A131889.P8013031741950361444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A035327 (A035327 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℤ)

end

end A131889.P8013031741950361444

namespace A131889

/-- `3^A035327(A035327(n)+∑[A065363(n)])` -/
def P8013031741950361444.Spec : Prop :=
  ∀ n, P8013031741950361444.a n = (A131889 n : ℚ)

end A131889

/-! ## A131889.P7221476065019216322

`A000244(n)/A000244(A174574(n))`
-/

namespace A131889.P7221476065019216322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) / (A000244 (A174574 n).toNat : ℚ)

end

end A131889.P7221476065019216322

namespace A131889

/-- `A000244(n)/A000244(A174574(n))` -/
def P7221476065019216322.Spec : Prop :=
  ∀ n, P7221476065019216322.a n = (A131889 n : ℚ)

end A131889

/-! ## A131889.P5812003152159772661

`A221857(∑[n+4]+2)`
-/

namespace A131889.P5812003152159772661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A131889.P5812003152159772661

namespace A131889

/-- `A221857(∑[n+4]+2)` -/
def P5812003152159772661.Spec : Prop :=
  ∀ n, P5812003152159772661.a n = A131889 n

end A131889

/-!
# A131890: a(n) is the number of shapes of balanced trees with constant branching factor 4 and n nodes. The node is balanced if the size, measured in nodes, of each pair of its children differ by at most one node.

The programs for A131890, there is no canonical definition to state claims against.
-/

/-! ## A131890.P12761611724889541150

`A221857(∑[n+5]+5)`
-/

namespace A131890.P12761611724889541150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A131890.P12761611724889541150

/-! ## A131890.P14002107738331314261

`-(A221857(A055998(n+3)-2)/(1-4/2))`
-/

namespace A131890.P14002107738331314261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A221857 (A055998 (n + 3) - 2).toNat : ℚ) / (1 - (4 : ℚ) / 2))

end

end A131890.P14002107738331314261

/-! ## A131890.P1144627946132035304

`A221857(A055998(n+3)-2)%A182461(n)`
-/

namespace A131890.P1144627946132035304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221857 (A055998 (n + 3) - 2).toNat) (A182461 n)

end

end A131890.P1144627946132035304

/-! ## A131890.P11803708513015638245

`gcd(A000038(n), A221857(A055998(n+3)-2))`
-/

namespace A131890.P11803708513015638245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A221857 (A055998 (n + 3) - 2).toNat)

end

end A131890.P11803708513015638245

/-! ## A131890.P10258209063287714390

`char[A014682(n)]*A221857(A055998(n+3)-2)`
-/

namespace A131890.P10258209063287714390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A221857 (A055998 (n + 3) - 2).toNat

end

end A131890.P10258209063287714390

/-! ## A131890.P5856188635304268092

`char[A026741(n)]*A221857(A055998(n+3)-2)`
-/

namespace A131890.P5856188635304268092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A221857 (A055998 (n + 3) - 2).toNat

end

end A131890.P5856188635304268092

/-! ## A131890.P455982469830760558

`char[A061579(n)]*A221857(A055998(n+3)-2)`
-/

namespace A131890.P455982469830760558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A221857 (A055998 (n + 3) - 2).toNat

end

end A131890.P455982469830760558

/-! ## A131890.P1459644660480567385

`A000041(C(2, 2*n))*A221857(A055998(n+3)-2)`
-/

namespace A131890.P1459644660480567385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A221857 (A055998 (n + 3) - 2).toNat

end

end A131890.P1459644660480567385

/-! ## A131890.P4958827739484214506

`A118830(2*n+1)+A221857(A055998(n+3)-2)+1`
-/

namespace A131890.P4958827739484214506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * n + 1) + (A221857 (A055998 (n + 3) - 2).toNat + 1)

end

end A131890.P4958827739484214506

/-! ## A131890.P9018953006398348617

`A014963(A000217(n+6))*A221857(A055998(n+3)-2)`
-/

namespace A131890.P9018953006398348617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 6)).toNat * A221857 (A055998 (n + 3) - 2).toNat

end

end A131890.P9018953006398348617

/-!
# A131891: a(n) is the number of shapes of balanced trees with constant branching factor 5 and n nodes. The node is balanced if the size, measured in nodes, of each pair of its children differ by at most one node.

The programs for A131891, there is no canonical definition to state claims against.
-/

/-! ## A131891.P18159469175992251735

`A221857((n+4)²-∑[n+1])`
-/

namespace A131891.P18159469175992251735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131891.P18159469175992251735

/-! ## A131891.P4939392322064337037

`lcm(A020985(n), A221857(A000217(n+6)-6))`
-/

namespace A131891.P4939392322064337037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A221857 (A000217 (n + 6) - 6).toNat)

end

end A131891.P4939392322064337037

/-! ## A131891.P7479167467911674325

`A221857(A000217(n+6)-6)%A059192(n+1)`
-/

namespace A131891.P7479167467911674325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221857 (A000217 (n + 6) - 6).toNat) (A059192 (n + 1))

end

end A131891.P7479167467911674325

/-! ## A131891.P3565606993900992093

`A319453(∑[n+1])+A221857(A000217(n+6)-6)`
-/

namespace A131891.P3565606993900992093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 (∑ j ∈ Finset.range (n + 1), f1 j) + A221857 (A000217 (n + 6) - 6).toNat

end

end A131891.P3565606993900992093

/-! ## A131891.P62160876080869708

`A000035(2*n+1)*A221857(A000217(n+6)-6)`
-/

namespace A131891.P62160876080869708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A221857 (A000217 (n + 6) - 6).toNat

end

end A131891.P62160876080869708

/-! ## A131891.P8704298529900719978

`A158416(A004273(n))*A221857(A000217(n+6)-6)`
-/

namespace A131891.P8704298529900719978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A004273 n).toNat * A221857 (A000217 (n + 6) - 6).toNat

end

end A131891.P8704298529900719978

/-! ## A131891.P978780739111081435

`A133622(A054554(n+1))*A221857(A000217(n+6)-6)`
-/

namespace A131891.P978780739111081435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (A054554 (n + 1)).toNat * A221857 (A000217 (n + 6) - 6).toNat

end

end A131891.P978780739111081435

/-!
# A131892: a(n) is the number of shapes of balanced trees with constant branching factor 6 and n nodes. The node is balanced if the size, measured in nodes, of each pair of its children differ by at most one node.

The programs for A131892, there is no canonical definition to state claims against.
-/

/-! ## A131892.P16379623421332824493

`A221857(A055998(n+5)-4)`
-/

namespace A131892.P16379623421332824493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A055998 (n + 5) - 4).toNat

end

end A131892.P16379623421332824493

/-! ## A131892.P6523585634346997899

`A221857(A000217(n+7)-7)`
-/

namespace A131892.P6523585634346997899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A000217 (n + 7) - 7).toNat

end

end A131892.P6523585634346997899

/-! ## A131892.P9121957757724055860

`A221857(A000124(n+7)-8)`
-/

namespace A131892.P9121957757724055860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A000124 (n + 7) - 8).toNat

end

end A131892.P9121957757724055860

/-! ## A131892.P13232830726166089202

`A221857(Δ[A023551(n+2)]-1)`
-/

namespace A131892.P13232830726166089202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (f1 (n + 1) - f1 n - 1).toNat

end

end A131892.P13232830726166089202

/-! ## A131892.P12546031798131533749

`A221857(A046691(n+7)-A103517(n+9))`
-/

namespace A131892.P12546031798131533749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A046691 (n + 7) - A103517 (n + 9)).toNat

end

end A131892.P12546031798131533749

/-! ## A131892.P17102395847856034682

`A221857(A046691(n+7)-A005843(n+10))`
-/

namespace A131892.P17102395847856034682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A046691 (n + 7) - A005843 (n + 10)).toNat

end

end A131892.P17102395847856034682

/-!
# A131893: a(n) is the number of shapes of balanced trees with constant branching factor 7 and n nodes. The node is balanced if the size, measured in nodes, of each pair of its children differ by at most one node.

The programs for A131893, there is no canonical definition to state claims against.
-/

/-! ## A131893.P131144120340776535

`A221857(A155212(n+4))`
-/

namespace A131893.P131144120340776535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A155212 (n + 4)).toNat

end

end A131893.P131144120340776535

/-! ## A131893.P5354667598254762031

`A221857(eq[7, A025581(n)])`
-/

namespace A131893.P5354667598254762031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131893.P5354667598254762031

/-! ## A131893.P17462487532081781337

`A221857(A046691(n+6)-4)`
-/

namespace A131893.P17462487532081781337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A046691 (n + 6) - 4).toNat

end

end A131893.P17462487532081781337

/-! ## A131893.P2570775511347357207

`A221857(A000217(n+8)-8)`
-/

namespace A131893.P2570775511347357207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A000217 (n + 8) - 8).toNat

end

end A131893.P2570775511347357207

/-! ## A131893.P3430051142931935960

`A221857(A000124(n+8)-9)`
-/

namespace A131893.P3430051142931935960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A000124 (n + 8) - 9).toNat

end

end A131893.P3430051142931935960

/-!
# A131894: A131843 * A000012.

The programs for A131894, the canonical program `A131894.P11952724371346339213` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131894 has offset 0).

The definition of A131894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131894.P16285696501130628942

`A158860(n+1)+∑[2*char[∑[n+1]]]`
-/

namespace A131894.P16285696501130628942
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158860 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A131894.P16285696501130628942

namespace A131894

/-- `A158860(n+1)+∑[2*char[∑[n+1]]]` -/
def P16285696501130628942.Spec : Prop :=
  ∀ n, P16285696501130628942.a n = A131894 n

end A131894

/-! ## A131894.P11952724371346339213

`A279891(n)+A158860(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A131894

/-- `A279891(n)+A158860(n+1)` -/
def P11952724371346339213.Spec : Prop :=
  ∀ n, P11952724371346339213.a n = A131894 n

theorem P11952724371346339213.correct : P11952724371346339213.Spec := by
  intro n
  simp only [A131894]

end A131894

/-! ## A131894.P17409747712257065036

`ceil((A131876(n)+A025581(n))/3)`
-/

namespace A131894.P17409747712257065036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131876 n + A025581 n : ℚ) / 3⌉

end

end A131894.P17409747712257065036

namespace A131894

/-- `ceil((A131876(n)+A025581(n))/3)` -/
def P17409747712257065036.Spec : Prop :=
  ∀ n, P17409747712257065036.a n = A131894 n

end A131894

/-! ## A131894.P6734860993503584359

`ceil((A131876(n)+A004736(n+1))/3)`
-/

namespace A131894.P6734860993503584359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131876 n + A004736 (n + 1) : ℚ) / 3⌉

end

end A131894.P6734860993503584359

namespace A131894

/-- `ceil((A131876(n)+A004736(n+1))/3)` -/
def P6734860993503584359.Spec : Prop :=
  ∀ n, P6734860993503584359.a n = A131894 n

end A131894

/-! ## A131894.P10377199893363181743

`ceil((A025581(n)+2*A131873(n))/3)`
-/

namespace A131894.P10377199893363181743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A025581 n + 2 * A131873 n : ℚ) / 3⌉

end

end A131894.P10377199893363181743

namespace A131894

/-- `ceil((A025581(n)+2*A131873(n))/3)` -/
def P10377199893363181743.Spec : Prop :=
  ∀ n, P10377199893363181743.a n = A131894 n

end A131894

/-! ## A131894.P8186383310420949875

`A008620(A131876(n)+A025581(n))`
-/

namespace A131894.P8186383310420949875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A131876 n + A025581 n).toNat

end

end A131894.P8186383310420949875

namespace A131894

/-- `A008620(A131876(n)+A025581(n))` -/
def P8186383310420949875.Spec : Prop :=
  ∀ n, P8186383310420949875.a n = A131894 n

end A131894

/-! ## A131894.P11968526687940923870

`A008611(A131876(n)+A004736(n+1))`
-/

namespace A131894.P11968526687940923870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A131876 n + A004736 (n + 1)).toNat

end

end A131894.P11968526687940923870

namespace A131894

/-- `A008611(A131876(n)+A004736(n+1))` -/
def P11968526687940923870.Spec : Prop :=
  ∀ n, P11968526687940923870.a n = A131894 n

end A131894

/-! ## A131894.P13694179801642718739

`A008620(A131876(n)+A004736(n+1))`
-/

namespace A131894.P13694179801642718739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A131876 n + A004736 (n + 1)).toNat

end

end A131894.P13694179801642718739

namespace A131894

/-- `A008620(A131876(n)+A004736(n+1))` -/
def P13694179801642718739.Spec : Prop :=
  ∀ n, P13694179801642718739.a n = A131894 n

end A131894

/-! ## A131894.P2306905385890038117

`A008611(A025581(n)+A131876(n)+1)`
-/

namespace A131894.P2306905385890038117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A025581 n + (A131876 n + 1)).toNat

end

end A131894.P2306905385890038117

namespace A131894

/-- `A008611(A025581(n)+A131876(n)+1)` -/
def P2306905385890038117.Spec : Prop :=
  ∀ n, P2306905385890038117.a n = A131894 n

end A131894

/-!
# A131895: a(n) = (n + 2)*(5*n + 1)/2.

The programs for A131895, the canonical program `A131895.P2001623601625710394` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131895 has offset 0).

The definition of A131895 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*(5*n+1)/2` (program `A131895.P12822740066017013961`, by `A131895.P12822740066017013961.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131895.P12822740066017013961

`(n+2)*(5*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131895.P12822740066017013961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (5 * n + 1) : ℚ) / 2

end

end A131895.P12822740066017013961

namespace A131895

/-- `(n+2)*(5*n+1)/2` -/
def P12822740066017013961.Spec : Prop :=
  ∀ n, P12822740066017013961.a n = (A131895 n : ℚ)

theorem P12822740066017013961.correct : P12822740066017013961.Spec := by
  intro n
  induction n with
  | zero => simp [A131895, A131895.P12822740066017013961.a, A131895.P2001623601625710394.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A131895, Nat.add_sub_cancel, A131895.P12822740066017013961.a, A131895.P2001623601625710394.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A131895

/-! ## A131895.P2001623601625710394

`a(n-1)+5*n+3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131895

/-- `a(n-1)+5*n+3` -/
def P2001623601625710394.Spec : Prop :=
  ∀ n, (P2001623601625710394.a n : ℤ) = A131895 n

theorem P2001623601625710394.correct : P2001623601625710394.Spec := by
  intro n
  simp only [A131895]

end A131895

/-! ## A131895.P8139095390339451555

`∑[a(n-1)+5]` with `a(0)=1, a(1)=8`
-/

namespace A131895.P8139095390339451555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131895.P8139095390339451555

namespace A131895

/-- `∑[a(n-1)+5]` -/
def P8139095390339451555.Spec : Prop :=
  ∀ n, (P8139095390339451555.a n : ℤ) = A131895 n

end A131895

/-! ## A131895.P11909163910732333863

`∑[record[xor(3, n+2)]+n]`
-/

namespace A131895.P11909163910732333863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131895.P11909163910732333863

namespace A131895

/-- `∑[record[xor(3, n+2)]+n]` -/
def P11909163910732333863.Spec : Prop :=
  ∀ n, (P11909163910732333863.a n : ℤ) = A131895 n

end A131895

/-! ## A131895.P4653661929869597753

`∑[ogf((1+6x-2x^2)/(1-2x+x^2))]`
-/

namespace A131895.P4653661929869597753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131895.P4653661929869597753

namespace A131895

/-- `∑[ogf((1+6x-2x^2)/(1-2x+x^2))]` -/
def P4653661929869597753.Spec : Prop :=
  ∀ n, P4653661929869597753.a n = A131895 n

end A131895

/-! ## A131895.P795684230703513913

`ogf((1+6x-2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A131895.P795684230703513913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -2] [1, -3, 3, -1] n

end

end A131895.P795684230703513913

namespace A131895

/-- `ogf((1+6x-2x^2)/(1-3x+3x^2-x^3))` -/
def P795684230703513913.Spec : Prop :=
  ∀ n, P795684230703513913.a n = A131895 n

end A131895

/-! ## A131895.P1912656370353839723

`(2*n+1)²-3*C(n, 2)`
-/

namespace A131895.P1912656370353839723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - (3 * Nat.choose n 2 : ℤ)

end

end A131895.P1912656370353839723

namespace A131895

/-- `(2*n+1)²-3*C(n, 2)` -/
def P1912656370353839723.Spec : Prop :=
  ∀ n, P1912656370353839723.a n = A131895 n

end A131895

/-! ## A131895.P17058972084369710148

`∑[gcd(5*n+3, C(2, n+2))]`
-/

namespace A131895.P17058972084369710148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (5 * n + 3) (Nat.choose 2 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131895.P17058972084369710148

namespace A131895

/-- `∑[gcd(5*n+3, C(2, n+2))]` -/
def P17058972084369710148.Spec : Prop :=
  ∀ n, (P17058972084369710148.a n : ℤ) = A131895 n

end A131895

/-! ## A131895.P13082094775029639792

`∑[floor(5*sqrt(lcm(n, n+1)))+1]`
-/

namespace A131895.P13082094775029639792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * Real.sqrt (Nat.lcm n (n + 1) : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131895.P13082094775029639792

namespace A131895

/-- `∑[floor(5*sqrt(lcm(n, n+1)))+1]` -/
def P13082094775029639792.Spec : Prop :=
  ∀ n, P13082094775029639792.a n = A131895 n

end A131895

/-! ## A131895.P3475051469882213846

`∑[(2*n+1)*2%(2*n+1)+n+1]`
-/

namespace A131895.P3475051469882213846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (2 % (2 * n + 1)) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131895.P3475051469882213846

namespace A131895

/-- `∑[(2*n+1)*2%(2*n+1)+n+1]` -/
def P3475051469882213846.Spec : Prop :=
  ∀ n, (P3475051469882213846.a n : ℤ) = A131895 n

end A131895

/-! ## A131895.P11346432210489182627

`A279895(n)+1`
-/

namespace A131895.P11346432210489182627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279895 n + 1

end

end A131895.P11346432210489182627

namespace A131895

/-- `A279895(n)+1` -/
def P11346432210489182627.Spec : Prop :=
  ∀ n, P11346432210489182627.a n = A131895 n

end A131895

/-! ## A131895.P3927228952544590615

`∑[A016885(n)]-2`
-/

namespace A131895.P3927228952544590615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A131895.P3927228952544590615

namespace A131895

/-- `∑[A016885(n)]-2` -/
def P3927228952544590615.Spec : Prop :=
  ∀ n, P3927228952544590615.a n = A131895 n

end A131895

/-! ## A131895.P11193417326064723342

`A198017(n)-n²`
-/

namespace A131895.P11193417326064723342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198017 n - (n ^ 2 : ℤ)

end

end A131895.P11193417326064723342

namespace A131895

/-- `A198017(n)-n²` -/
def P11193417326064723342.Spec : Prop :=
  ∀ n, P11193417326064723342.a n = A131895 n

end A131895

/-! ## A131895.P5624299268115443899

`A302906(n)+1-n`
-/

namespace A131895.P5624299268115443899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302906 n + (1 - (n : ℤ))

end

end A131895.P5624299268115443899

namespace A131895

/-- `A302906(n)+1-n` -/
def P5624299268115443899.Spec : Prop :=
  ∀ n, P5624299268115443899.a n = A131895 n

end A131895

/-! ## A131895.P14028476542230462792

`A005891(n)+3*n`
-/

namespace A131895.P14028476542230462792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n + (3 * n : ℤ)

end

end A131895.P14028476542230462792

namespace A131895

/-- `A005891(n)+3*n` -/
def P14028476542230462792.Spec : Prop :=
  ∀ n, P14028476542230462792.a n = A131895 n

end A131895

/-! ## A131895.P10206093426726944125

`A140090(n)+(n+1)²`
-/

namespace A131895.P10206093426726944125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140090 n + ((n + 1) ^ 2 : ℤ)

end

end A131895.P10206093426726944125

namespace A131895

/-- `A140090(n)+(n+1)²` -/
def P10206093426726944125.Spec : Prop :=
  ∀ n, P10206093426726944125.a n = A131895 n

end A131895

/-! ## A131895.P2349231357243857525

`A100536(n+1)-∑[n]`
-/

namespace A131895.P2349231357243857525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100536 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A131895.P2349231357243857525

namespace A131895

/-- `A100536(n+1)-∑[n]` -/
def P2349231357243857525.Spec : Prop :=
  ∀ n, P2349231357243857525.a n = A131895 n

end A131895

/-! ## A131895.P12604149479927437257

`A000566(n+1)+2*n`
-/

namespace A131895.P12604149479927437257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (n + 1) + (2 * n : ℤ)

end

end A131895.P12604149479927437257

namespace A131895

/-- `A000566(n+1)+2*n` -/
def P12604149479927437257.Spec : Prop :=
  ∀ n, P12604149479927437257.a n = A131895 n

end A131895

/-! ## A131895.P13921570182047675907

`A166137(n+1)-2*n`
-/

namespace A131895.P13921570182047675907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166137 (n + 1) - (2 * n : ℤ)

end

end A131895.P13921570182047675907

namespace A131895

/-- `A166137(n+1)-2*n` -/
def P13921570182047675907.Spec : Prop :=
  ∀ n, P13921570182047675907.a n = A131895 n

end A131895

/-! ## A131895.P8087987296185451670

`A134238(n+1)+4*n`
-/

namespace A131895.P8087987296185451670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134238 (n + 1) + (4 * n : ℤ)

end

end A131895.P8087987296185451670

namespace A131895

/-- `A134238(n+1)+4*n` -/
def P8087987296185451670.Spec : Prop :=
  ∀ n, P8087987296185451670.a n = A131895 n

end A131895

/-!
# A131896: A000012 * A131843.

The programs for A131896, the canonical program `A131896.P2691452553355634035` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131896 has offset 1).

The definition of A131896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131896.P18377041337014307359

`(n+1-C(∑[char[∑[n+1]]], 2))^(char[∑[n]]+1)`
-/

namespace A131896.P18377041337014307359
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) ^ ((if ∃ j, f4 j = n then 1 else 0) + 1)

end

end A131896.P18377041337014307359

namespace A131896

/-- `(n+1-C(∑[char[∑[n+1]]], 2))^(char[∑[n]]+1)` -/
def P18377041337014307359.Spec : Prop :=
  ∀ n, P18377041337014307359.a n = A131896 (n + 1)

end A131896

/-! ## A131896.P14611873568135800953

`(round(sqrt(2*n))*char[∑[n]]+1)*(n+1-C(∑[char[∑[n+1]]], 2))`
-/

namespace A131896.P14611873568135800953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1) * ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ))

end

end A131896.P14611873568135800953

namespace A131896

/-- `(round(sqrt(2*n))*char[∑[n]]+1)*(n+1-C(∑[char[∑[n+1]]], 2))` -/
def P14611873568135800953.Spec : Prop :=
  ∀ n, P14611873568135800953.a n = A131896 (n + 1)

end A131896

/-! ## A131896.P6994863203782201787

`(A051162(n)+1)^(char[∑[n]]+1)`
-/

namespace A131896.P6994863203782201787
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051162 n + 1) ^ ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A131896.P6994863203782201787

namespace A131896

/-- `(A051162(n)+1)^(char[∑[n]]+1)` -/
def P6994863203782201787.Spec : Prop :=
  ∀ n, P6994863203782201787.a n = A131896 (n + 1)

end A131896

/-! ## A131896.P18057923566658221853

`A094727(n+1)^(char[∑[n]]+1)`
-/

namespace A131896.P18057923566658221853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) ^ ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A131896.P18057923566658221853

namespace A131896

/-- `A094727(n+1)^(char[∑[n]]+1)` -/
def P18057923566658221853.Spec : Prop :=
  ∀ n, P18057923566658221853.a n = A131896 (n + 1)

end A131896

/-! ## A131896.P6723806749363809712

`(n+1-C(∑[char[∑[n+1]]], 2))*A130296(n+1)`
-/

namespace A131896.P6723806749363809712
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * A130296 (n + 1)

end

end A131896.P6723806749363809712

namespace A131896

/-- `(n+1-C(∑[char[∑[n+1]]], 2))*A130296(n+1)` -/
def P6723806749363809712.Spec : Prop :=
  ∀ n, P6723806749363809712.a n = A131896 (n + 1)

end A131896

/-! ## A131896.P5877293588106624558

`(n+1-C(∑[char[∑[n+1]]], 2))*A144112(comp[∑[n]])`
-/

namespace A131896.P5877293588106624558
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * A144112 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

end

end A131896.P5877293588106624558

namespace A131896

/-- `(n+1-C(∑[char[∑[n+1]]], 2))*A144112(comp[∑[n]])` -/
def P5877293588106624558.Spec : Prop :=
  ∀ n, P5877293588106624558.a n = A131896 (n + 1)

end A131896

/-! ## A131896.P14388321498187343309

`A033638(Δ[round(sqrt(2*n))²])+n-C(∑[char[∑[n+1]]], 2)`
-/

namespace A131896.P14388321498187343309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (f1 (n + 1) - f1 n).toNat + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ))

end

end A131896.P14388321498187343309

namespace A131896

/-- `A033638(Δ[round(sqrt(2*n))²])+n-C(∑[char[∑[n+1]]], 2)` -/
def P14388321498187343309.Spec : Prop :=
  ∀ n, P14388321498187343309.a n = A131896 (n + 1)

end A131896

/-! ## A131896.P8043240654900236939

`(n+1-C(∑[char[∑[n+1]]], 2))*A008619(Δ[round(sqrt(2*n))²])`
-/

namespace A131896.P8043240654900236939
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * A008619 (f4 (n + 1) - f4 n).toNat

end

end A131896.P8043240654900236939

namespace A131896

/-- `(n+1-C(∑[char[∑[n+1]]], 2))*A008619(Δ[round(sqrt(2*n))²])` -/
def P8043240654900236939.Spec : Prop :=
  ∀ n, P8043240654900236939.a n = A131896 (n + 1)

end A131896

/-! ## A131896.P15322116248890226899

`A094728(n+1)/A193592(n)`
-/

namespace A131896.P15322116248890226899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094728 (n + 1) : ℚ) / (A193592 n : ℚ)

end

end A131896.P15322116248890226899

namespace A131896

/-- `A094728(n+1)/A193592(n)` -/
def P15322116248890226899.Spec : Prop :=
  ∀ n, P15322116248890226899.a n = (A131896 (n + 1) : ℚ)

end A131896

/-! ## A131896.P2691452553355634035

`A094727(n+1)*A130296(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A131896

/-- `A094727(n+1)*A130296(n+1)` -/
def P2691452553355634035.Spec : Prop :=
  ∀ n, P2691452553355634035.a n = A131896 (n + 1)

theorem P2691452553355634035.correct : P2691452553355634035.Spec := by
  intro n
  simp only [A131896, Nat.add_sub_cancel]

end A131896

/-! ## A131896.P7441952121527647877

`A134478(comp[∑[n-1]])^(char[∑[n]]+1)`
-/

namespace A131896.P7441952121527647877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) ^ ((if ∃ j, f3 j = n then 1 else 0) + 1)

end

end A131896.P7441952121527647877

namespace A131896

/-- `A134478(comp[∑[n-1]])^(char[∑[n]]+1)` -/
def P7441952121527647877.Spec : Prop :=
  ∀ n, P7441952121527647877.a n = A131896 (n + 1)

end A131896

/-!
# A131897: A130321 + A131821 - A000012.

The programs for A131897, the canonical program `A131897.P15038392300665076693` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131897 has offset 0).

The definition of A131897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131897.P1707172614703751506

`A144217(n+1)+2^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A131897.P1707172614703751506
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144217 (n + 1) : ℚ) + (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A131897.P1707172614703751506

namespace A131897

/-- `A144217(n+1)+2^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P1707172614703751506.Spec : Prop :=
  ∀ n, P1707172614703751506.a n = (A131897 n : ℚ)

end A131897

/-! ## A131897.P15038392300665076693

`or(Δ[A056942(n)], A131817(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A131897

/-- `or(Δ[A056942(n)], A131817(n))` -/
def P15038392300665076693.Spec : Prop :=
  ∀ n, P15038392300665076693.a n = A131897 n

theorem P15038392300665076693.correct : P15038392300665076693.Spec := by
  intro n
  simp only [A131897]

end A131897

/-! ## A131897.P4748895516741820118

`A144217(n+1)+A130321(n)`
-/

namespace A131897.P4748895516741820118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144217 (n + 1) + A130321 n

end

end A131897.P4748895516741820118

namespace A131897

/-- `A144217(n+1)+A130321(n)` -/
def P4748895516741820118.Spec : Prop :=
  ∀ n, P4748895516741820118.a n = A131897 n

end A131897

/-! ## A131897.P11841079441704438038

`(A131843(n)+A130330(n))/2`
-/

namespace A131897.P11841079441704438038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131843 n + A130330 n : ℚ) / 2

end

end A131897.P11841079441704438038

namespace A131897

/-- `(A131843(n)+A130330(n))/2` -/
def P11841079441704438038.Spec : Prop :=
  ∀ n, P11841079441704438038.a n = (A131897 n : ℚ)

end A131897

/-! ## A131897.P1027574685171826516

`A130321(n)+val(A131816(n), 2)`
-/

namespace A131897.P1027574685171826516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + (SequenceMachineLib.valuation (A131816 n).toNat 2 : ℤ)

end

end A131897.P1027574685171826516

namespace A131897

/-- `A130321(n)+val(A131816(n), 2)` -/
def P1027574685171826516.Spec : Prop :=
  ∀ n, P1027574685171826516.a n = A131897 n

end A131897

/-! ## A131897.P572191321765556196

`A144217(n+1)+sqrt(A262616(n))`
-/

namespace A131897.P572191321765556196
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A144217 (n + 1) : ℝ) + Real.sqrt (A262616 n : ℝ)

end

end A131897.P572191321765556196

namespace A131897

/-- `A144217(n+1)+sqrt(A262616(n))` -/
def P572191321765556196.Spec : Prop :=
  ∀ n, P572191321765556196.a n = (A131897 n : ℝ)

end A131897

/-! ## A131897.P4667503413904285558

`A130296(n+1)+A131817(n)-1`
-/

namespace A131897.P4667503413904285558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) + (A131817 n - 1)

end

end A131897.P4667503413904285558

namespace A131897

/-- `A130296(n+1)+A131817(n)-1` -/
def P4667503413904285558.Spec : Prop :=
  ∀ n, P4667503413904285558.a n = A131897 n

end A131897

/-! ## A131897.P4893575594738952835

`A131821(n+1)+A130321(n)-1`
-/

namespace A131897.P4893575594738952835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) + (A130321 n - 1)

end

end A131897.P4893575594738952835

namespace A131897

/-- `A131821(n+1)+A130321(n)-1` -/
def P4893575594738952835.Spec : Prop :=
  ∀ n, P4893575594738952835.a n = A131897 n

end A131897

/-! ## A131897.P3960425103082794095

`floor((A131843(n)+A090988(n+1))/2)`
-/

namespace A131897.P3960425103082794095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131843 n + A090988 (n + 1) : ℚ) / 2⌋

end

end A131897.P3960425103082794095

namespace A131897

/-- `floor((A131843(n)+A090988(n+1))/2)` -/
def P3960425103082794095.Spec : Prop :=
  ∀ n, P3960425103082794095.a n = A131897 n

end A131897

/-! ## A131897.P11344735365009336526

`floor(A130321(n)+A051601(n)/A007318(n)²)`
-/

namespace A131897.P11344735365009336526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130321 n : ℚ) + (A051601 n : ℚ) / (A007318 n ^ 2 : ℚ)⌋

end

end A131897.P11344735365009336526

namespace A131897

/-- `floor(A130321(n)+A051601(n)/A007318(n)²)` -/
def P11344735365009336526.Spec : Prop :=
  ∀ n, P11344735365009336526.a n = A131897 n

end A131897

/-!
# A131898: a(n) = 2^(n+1) + 2*n - 1.

The programs for A131898, the canonical program `A131898.P7373950692445578613` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131898 has offset 0).

The definition of A131898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)+2*n-1` (program `A131898.P7373950692445578613`, by `A131898.P7373950692445578613.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131898.P7373950692445578613

`2^(n+1)+2*n-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131898

/-- `2^(n+1)+2*n-1` -/
def P7373950692445578613.Spec : Prop :=
  ∀ n, P7373950692445578613.a n = A131898 n

theorem P7373950692445578613.correct : P7373950692445578613.Spec := by
  intro n
  simp only [A131898]

end A131898

/-! ## A131898.P10394917366603697335

`∑[xor(1, 2^n)+1]`
-/

namespace A131898.P10394917366603697335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 ^ n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131898.P10394917366603697335

namespace A131898

/-- `∑[xor(1, 2^n)+1]` -/
def P10394917366603697335.Spec : Prop :=
  ∀ n, (P10394917366603697335.a n : ℤ) = A131898 n

end A131898

/-! ## A131898.P15002032744690416984

`∑[-xor(-2, 2^n)]`
-/

namespace A131898.P15002032744690416984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-2) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131898.P15002032744690416984

namespace A131898

/-- `∑[-xor(-2, 2^n)]` -/
def P15002032744690416984.Spec : Prop :=
  ∀ n, P15002032744690416984.a n = A131898 n

end A131898

/-! ## A131898.P17855646278275385325

`∑[ogf((1+x-4x^2)/(1-3x+2x^2))]`
-/

namespace A131898.P17855646278275385325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -4] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131898.P17855646278275385325

namespace A131898

/-- `∑[ogf((1+x-4x^2)/(1-3x+2x^2))]` -/
def P17855646278275385325.Spec : Prop :=
  ∀ n, P17855646278275385325.a n = A131898 n

end A131898

/-! ## A131898.P5115526297045030582

`ogf((1+x-4x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A131898.P5115526297045030582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -4] [1, -4, 5, -2] n

end

end A131898.P5115526297045030582

namespace A131898

/-- `ogf((1+x-4x^2)/(1-4x+5x^2-2x^3))` -/
def P5115526297045030582.Spec : Prop :=
  ∀ n, P5115526297045030582.a n = A131898 n

end A131898

/-! ## A131898.P5978792323547698530

`or(1, ∑[2^n]+2*n)`
-/

namespace A131898.P5978792323547698530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n)

end

end A131898.P5978792323547698530

namespace A131898

/-- `or(1, ∑[2^n]+2*n)` -/
def P5978792323547698530.Spec : Prop :=
  ∀ n, (P5978792323547698530.a n : ℤ) = A131898 n

end A131898

/-! ## A131898.P3337637586810294924

`∑[2*(a(n-1)-1)]` with `a(0)=1, a(1)=4`
-/

namespace A131898.P3337637586810294924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  2 * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131898.P3337637586810294924

namespace A131898

/-- `∑[2*(a(n-1)-1)]` -/
def P3337637586810294924.Spec : Prop :=
  ∀ n, P3337637586810294924.a n = A131898 n

end A131898

/-! ## A131898.P6471973288449554442

`floor(2^n+a(n-1)+2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A131898.P6471973288449554442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ n + (a (n - 1) + 2)

end

end A131898.P6471973288449554442

namespace A131898

/-- `floor(2^n+a(n-1)+2)` -/
def P6471973288449554442.Spec : Prop :=
  ∀ n, (P6471973288449554442.a n : ℤ) = A131898 n

theorem P6471973288449554442.correct : P6471973288449554442.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131898, Nat.add_sub_cancel, A131898.P6471973288449554442.a, A131898.P7373950692445578613.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131898, Nat.add_sub_cancel, A131898.P6471973288449554442.a, A131898.P7373950692445578613.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131898

/-! ## A131898.P6390837590814961235

`abs(or(n-1, 2^(n+1))+n)`
-/

namespace A131898.P6390837590814961235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor ((n : ℤ) - 1) (2 ^ (n + 1) : ℤ) + (n : ℤ)|

end

end A131898.P6390837590814961235

namespace A131898

/-- `abs(or(n-1, 2^(n+1))+n)` -/
def P6390837590814961235.Spec : Prop :=
  ∀ n, P6390837590814961235.a n = A131898 n

end A131898

/-! ## A131898.P18050065101757366825

`abs(xor(n, 2^(n+1))+n-1)`
-/

namespace A131898.P18050065101757366825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.xor n (2 ^ (n + 1)) : ℤ) + ((n : ℤ) - 1)|

end

end A131898.P18050065101757366825

namespace A131898

/-- `abs(xor(n, 2^(n+1))+n-1)` -/
def P18050065101757366825.Spec : Prop :=
  ∀ n, P18050065101757366825.a n = A131898 n

end A131898

/-! ## A131898.P13651022141934709491

`2*(5/2+a(n-1)-n)` with `a(0)=1`
-/

namespace A131898.P13651022141934709491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((5 : ℚ) / 2 + (a (n - 1) - (n : ℚ)))

end

end A131898.P13651022141934709491

namespace A131898

/-- `2*(5/2+a(n-1)-n)` -/
def P13651022141934709491.Spec : Prop :=
  ∀ n, P13651022141934709491.a n = (A131898 n : ℚ)

theorem P13651022141934709491.correct : P13651022141934709491.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131898, Nat.add_sub_cancel, A131898.P13651022141934709491.a, A131898.P7373950692445578613.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131898, Nat.add_sub_cancel, A131898.P13651022141934709491.a, A131898.P7373950692445578613.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131898

/-! ## A131898.P8016684534602891368

`2*(5/2-(n-a(n-1)))` with `a(0)=1`
-/

namespace A131898.P8016684534602891368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((5 : ℚ) / 2 - ((n : ℚ) - a (n - 1)))

end

end A131898.P8016684534602891368

namespace A131898

/-- `2*(5/2-(n-a(n-1)))` -/
def P8016684534602891368.Spec : Prop :=
  ∀ n, P8016684534602891368.a n = (A131898 n : ℚ)

theorem P8016684534602891368.correct : P8016684534602891368.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131898, Nat.add_sub_cancel, A131898.P8016684534602891368.a, A131898.P7373950692445578613.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131898, Nat.add_sub_cancel, A131898.P8016684534602891368.a, A131898.P7373950692445578613.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131898

/-! ## A131898.P17311176698046970623

`∑[a(n-1)+a(n-1)-2]` with `a(0)=1, a(1)=4`
-/

namespace A131898.P17311176698046970623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131898.P17311176698046970623

namespace A131898

/-- `∑[a(n-1)+a(n-1)-2]` -/
def P17311176698046970623.Spec : Prop :=
  ∀ n, P17311176698046970623.a n = A131898 n

end A131898

/-! ## A131898.P9612928799194082764

`∑[a(n-1)-(2-a(n-1))]` with `a(0)=1, a(1)=4`
-/

namespace A131898.P9612928799194082764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131898.P9612928799194082764

namespace A131898

/-- `∑[a(n-1)-(2-a(n-1))]` -/
def P9612928799194082764.Spec : Prop :=
  ∀ n, P9612928799194082764.a n = A131898 n

end A131898

/-! ## A131898.P6480780053110321496

`floor(2*(a(n-1)+ϕ-(n-1)))` with `a(0)=1`
-/

namespace A131898.P6480780053110321496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊2 * ((a (n - 1) : ℝ) + (Real.goldenRatio - ((n : ℤ) - 1 : ℝ)))⌋

end

end A131898.P6480780053110321496

namespace A131898

/-- `floor(2*(a(n-1)+ϕ-(n-1)))` -/
def P6480780053110321496.Spec : Prop :=
  ∀ n, P6480780053110321496.a n = A131898 n

end A131898

/-! ## A131898.P7838685264421906038

`floor(2*(ϕ-(n-1-a(n-1))))` with `a(0)=1`
-/

namespace A131898.P7838685264421906038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊2 * (Real.goldenRatio - ((n : ℤ) - 1 - a (n - 1) : ℝ))⌋

end

end A131898.P7838685264421906038

namespace A131898

/-- `floor(2*(ϕ-(n-1-a(n-1))))` -/
def P7838685264421906038.Spec : Prop :=
  ∀ n, P7838685264421906038.a n = A131898 n

end A131898

/-! ## A131898.P14208877324981518900

`floor(2*(2-n)+2*a(n-1)+1)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A131898.P14208877324981518900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 - (n : ℤ)) + (2 * a (n - 1) + 1)

end

end A131898.P14208877324981518900

namespace A131898

/-- `floor(2*(2-n)+2*a(n-1)+1)` -/
def P14208877324981518900.Spec : Prop :=
  ∀ n, P14208877324981518900.a n = A131898 n

theorem P14208877324981518900.correct : P14208877324981518900.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131898, Nat.add_sub_cancel, A131898.P14208877324981518900.a, A131898.P7373950692445578613.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131898, Nat.add_sub_cancel, A131898.P14208877324981518900.a, A131898.P7373950692445578613.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131898

/-! ## A131898.P11490485093142326640

`floor(2*a(n-1)-(2*(n-2)-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A131898.P11490485093142326640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (2 * ((n : ℤ) - 2) - 1)

end

end A131898.P11490485093142326640

namespace A131898

/-- `floor(2*a(n-1)-(2*(n-2)-1))` -/
def P11490485093142326640.Spec : Prop :=
  ∀ n, P11490485093142326640.a n = A131898 n

theorem P11490485093142326640.correct : P11490485093142326640.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A131898, Nat.add_sub_cancel, A131898.P11490485093142326640.a, A131898.P7373950692445578613.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A131898, Nat.add_sub_cancel, A131898.P11490485093142326640.a, A131898.P7373950692445578613.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A131898

/-! ## A131898.P17059095951629247478

`∑[A171449(n)+2]`
-/

namespace A131898.P17059095951629247478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171449 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131898.P17059095951629247478

namespace A131898

/-- `∑[A171449(n)+2]` -/
def P17059095951629247478.Spec : Prop :=
  ∀ n, P17059095951629247478.a n = A131898 n

end A131898

/-! ## A131898.P8307252069568640932

`xor(A004273(n), A151821(n+1))`
-/

namespace A131898.P8307252069568640932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004273 n) (A151821 (n + 1))

end

end A131898.P8307252069568640932

namespace A131898

/-- `xor(A004273(n), A151821(n+1))` -/
def P8307252069568640932.Spec : Prop :=
  ∀ n, P8307252069568640932.a n = A131898 n

end A131898

/-!
# A131899: A002260 + A131821 - A000012.

The programs for A131899, the canonical program `A131899.P5613504993565283858` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131899 has offset 0).

The definition of A131899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131899.P17202760416723050839

`A131821(n+1)+n-C(∑[char[∑[n]]], 2)`
-/

namespace A131899.P17202760416723050839
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))

end

end A131899.P17202760416723050839

namespace A131899

/-- `A131821(n+1)+n-C(∑[char[∑[n]]], 2)` -/
def P17202760416723050839.Spec : Prop :=
  ∀ n, P17202760416723050839.a n = A131899 n

end A131899

/-! ## A131899.P3675699610768574025

`∑[A145677(n)]-(∑[char[∑[n]]]²-n-(∑[char[∑[n+1]]]+round(sqrt(2*n))*char[∑[n]]+1))`
-/

namespace A131899.P3675699610768574025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f5 j : ℕ) : ℤ) + (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f8 j = n then 1 else 0 : ℕ) : ℤ) + 1)))

end

end A131899.P3675699610768574025

namespace A131899

/-- `∑[A145677(n)]-(∑[char[∑[n]]]²-n-(∑[char[∑[n+1]]]+round(sqrt(2*n))*char[∑[n]]+1))` -/
def P3675699610768574025.Spec : Prop :=
  ∀ n, P3675699610768574025.a n = A131899 n

end A131899

/-! ## A131899.P5613504993565283858

`A131821(n+1)+A002262(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A131899

/-- `A131821(n+1)+A002262(n)` -/
def P5613504993565283858.Spec : Prop :=
  ∀ n, P5613504993565283858.a n = A131899 n

theorem P5613504993565283858.correct : P5613504993565283858.Spec := by
  intro n
  simp only [A131899]

end A131899

/-! ## A131899.P13149008622681156208

`A144217(n+1)+A002260(n+1)`
-/

namespace A131899.P13149008622681156208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144217 (n + 1) + A002260 (n + 1)

end

end A131899.P13149008622681156208

namespace A131899

/-- `A144217(n+1)+A002260(n+1)` -/
def P13149008622681156208.Spec : Prop :=
  ∀ n, P13149008622681156208.a n = A131899 n

theorem P13149008622681156208.correct : P13149008622681156208.Spec := by
  intro n
  simp only [A131899, Nat.add_sub_cancel, A131899.P13149008622681156208.a, A131899.P5613504993565283858.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A131821, A131821.P13312494062197045656.a, A144217, A144217.P17527769007908988650.a, A057944, A057944.P16851463738746886639.a, A131816, A131816.P3689264983321174764.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P6740187654358347306.a, A000079, A000079.P10855139691139572931.a, A018900, A018900.P2868698677378612256.a, A025581, A025581.P420762180635059694.a, A140513, A140513.P13579608035938851890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131899

/-! ## A131899.P13747605837165683862

`A002260(n+1)+A131821(n+1)-1`
-/

namespace A131899.P13747605837165683862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A131821 (n + 1) - 1)

end

end A131899.P13747605837165683862

namespace A131899

/-- `A002260(n+1)+A131821(n+1)-1` -/
def P13747605837165683862.Spec : Prop :=
  ∀ n, P13747605837165683862.a n = A131899 n

theorem P13747605837165683862.correct : P13747605837165683862.Spec := by
  intro n
  simp only [A131899, Nat.add_sub_cancel, A131899.P13747605837165683862.a, A131899.P5613504993565283858.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A131821, A131821.P13312494062197045656.a, A057944, A057944.P16851463738746886639.a, A131816, A131816.P3689264983321174764.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A059268, A059268.P15217573790077737885.a, A130321, A130321.P6740187654358347306.a, A000079, A000079.P10855139691139572931.a, A018900, A018900.P2868698677378612256.a, A025581, A025581.P420762180635059694.a, A140513, A140513.P13579608035938851890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A131899

/-! ## A131899.P345098624869422570

`A002260(n+1)+A003056(n*A103451(n))`
-/

namespace A131899.P345098624869422570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A003056 ((n : ℤ) * A103451 n).toNat

end

end A131899.P345098624869422570

namespace A131899

/-- `A002260(n+1)+A003056(n*A103451(n))` -/
def P345098624869422570.Spec : Prop :=
  ∀ n, P345098624869422570.a n = A131899 n

end A131899

/-! ## A131899.P728035788695955547

`A131818(n+1)+A131821(n+1)-A130296(n+1)`
-/

namespace A131899.P728035788695955547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) + (A131821 (n + 1) - A130296 (n + 1))

end

end A131899.P728035788695955547

namespace A131899

/-- `A131818(n+1)+A131821(n+1)-A130296(n+1)` -/
def P728035788695955547.Spec : Prop :=
  ∀ n, P728035788695955547.a n = A131899 n

end A131899

/-! ## A131899.P17244361368443960865

`(round(sqrt(2*n))*char[∑[n]]+1)*A130303(∑[char[∑[n]]]²-n)`
-/

namespace A131899.P17244361368443960865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1) * A130303 ((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 - n)

end

end A131899.P17244361368443960865

namespace A131899

/-- `(round(sqrt(2*n))*char[∑[n]]+1)*A130303(∑[char[∑[n]]]²-n)` -/
def P17244361368443960865.Spec : Prop :=
  ∀ n, P17244361368443960865.a n = A131899 n

end A131899

/-! ## A131899.P314060976732047102

`A002260(n+1)+C(A003056(n), A176348(n))`
-/

namespace A131899.P314060976732047102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (Nat.choose (A003056 n).toNat (A176348 n).toNat : ℤ)

end

end A131899.P314060976732047102

namespace A131899

/-- `A002260(n+1)+C(A003056(n), A176348(n))` -/
def P314060976732047102.Spec : Prop :=
  ∀ n, P314060976732047102.a n = A131899 n

end A131899

/-! ## A131899.P16555925829110806352

`A002260(n+1)+C(A003056(n), A022166(n))`
-/

namespace A131899.P16555925829110806352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (Nat.choose (A003056 n).toNat (A022166 n).toNat : ℤ)

end

end A131899.P16555925829110806352

namespace A131899

/-- `A002260(n+1)+C(A003056(n), A022166(n))` -/
def P16555925829110806352.Spec : Prop :=
  ∀ n, P16555925829110806352.a n = A131899 n

end A131899

/-! ## A131899.P8202109551247104414

`A002260(n+1)+C(A003056(n), A022167(n))`
-/

namespace A131899.P8202109551247104414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (Nat.choose (A003056 n).toNat (A022167 n).toNat : ℤ)

end

end A131899.P8202109551247104414

namespace A131899

/-- `A002260(n+1)+C(A003056(n), A022167(n))` -/
def P8202109551247104414.Spec : Prop :=
  ∀ n, P8202109551247104414.a n = A131899 n

end A131899

