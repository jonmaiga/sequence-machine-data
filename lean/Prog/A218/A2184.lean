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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B009.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A218403: Bitwise OR of all proper divisors of n; a(1) = 0 by convention.

The programs for A218403, there is no canonical definition to state claims against.
-/

/-! ## A218403.P1734837050900008152

`A087207(gcd(A002110(n), A293214(n+1)))`
-/

namespace A218403.P1734837050900008152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (Int.gcd (A002110 n) (A293214 (n + 1)))

end

end A218403.P1734837050900008152

/-! ## A218403.P10966792050223204989

`∑{p}[A293214(n+1), A023434(#)]`
-/

namespace A218403.P10966792050223204989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A023434 p

end

end A218403.P10966792050223204989

/-! ## A218403.P13125986158275641925

`∑{p}[A293214(n+1), A048675(#)]`
-/

namespace A218403.P13125986158275641925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A218403.P13125986158275641925

/-! ## A218403.P15718250737963260646

`∑{p}[A293214(n+1), A048676(#)]`
-/

namespace A218403.P15718250737963260646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p

end

end A218403.P15718250737963260646

/-! ## A218403.P505465736209726297

`∑{p}[A293214(n+1), A087207(#)]`
-/

namespace A218403.P505465736209726297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A218403.P505465736209726297

/-!
# A218404: Numbers k for which sigma(k)/k - 1/4 is an integer.

The programs for A218404, there is no canonical definition to state claims against.
-/

/-! ## A218404.P11685486124173968535

`∩[A215012(n+1), A229088(n+1)]`
-/

namespace A218404.P11685486124173968535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218404.P11685486124173968535

/-!
# A218407: Numbers k for which sigma(k)/k - 2/5 is an integer.

The programs for A218407, there is no canonical definition to state claims against.
-/

/-! ## A218407.P12536179353720094553

`A347222(∑[(∑{e}[n+1, #]!/∏{e}[n+1, #!])^n])`
-/

namespace A218407.P12536179353720094553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p) : ℕ) : ℚ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347222 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A218407.P12536179353720094553

/-!
# A218419: Number of n X n binary arrays with every 0 a horizontal, vertical or antidiagonal neighbor to some 1.

The programs for A218419, there is no canonical definition to state claims against.
-/

/-! ## A218419.P5722277527665830574

`A218426(∑[4*n]+1)`
-/

namespace A218419.P5722277527665830574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218419.P5722277527665830574

/-! ## A218419.P14785636025192353166

`record[A218426(Δ[A235355(n)])]`
-/

namespace A218419.P14785636025192353166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218419.P14785636025192353166

/-! ## A218419.P1202987553501484679

`record[A218426(A272267(n+1))]`
-/

namespace A218419.P1202987553501484679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218419.P1202987553501484679

/-! ## A218419.P15571821677878781186

`record[A218426(A330613(n+1))]`
-/

namespace A218419.P15571821677878781186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218419.P15571821677878781186

/-!
# A218420: Number of n X 2 binary arrays with every 0 a horizontal, vertical or antidiagonal neighbor to some 1.

The programs for A218420, the canonical program `A218420.P955586380129084695` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218420 has offset 1).

The definition of A218420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218420.P4407699872831324461

`ogf((3+4x+x^2+2x^3+x^4)/(1-3x-3x^2-x^3-x^4-x^5))`
-/

namespace A218420.P4407699872831324461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, 1, 2, 1] [1, -3, -3, -1, -1, -1] n

end

end A218420.P4407699872831324461

namespace A218420

/-- `ogf((3+4x+x^2+2x^3+x^4)/(1-3x-3x^2-x^3-x^4-x^5))` -/
def P4407699872831324461.Spec : Prop :=
  ∀ n, P4407699872831324461.a n = A218420 (n + 1)

end A218420

/-! ## A218420.P955586380129084695

`3*a(n-1)+3*a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=3, a(1)=13, a(2)=49, a(3)=191, a(4)=737`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218420

/-- `3*a(n-1)+3*a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P955586380129084695.Spec : Prop :=
  ∀ n, (P955586380129084695.a n : ℤ) = A218420 (n + 1)

theorem P955586380129084695.correct : P955586380129084695.Spec := by
  intro n
  simp only [A218420, Nat.add_sub_cancel]

end A218420

/-! ## A218420.P17963516684868726090

`A218199(2*(1+n))`
-/

namespace A218420.P17963516684868726090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218199 (2 * (1 + n))

end

end A218420.P17963516684868726090

namespace A218420

/-- `A218199(2*(1+n))` -/
def P17963516684868726090.Spec : Prop :=
  ∀ n, P17963516684868726090.a n = A218420 (n + 1)

end A218420

/-! ## A218420.P15912943748890609645

`or(1, A102026(2*(n+1))-1)`
-/

namespace A218420.P15912943748890609645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A102026 (2 * (n + 1)) - 1)

end

end A218420.P15912943748890609645

namespace A218420

/-- `or(1, A102026(2*(n+1))-1)` -/
def P15912943748890609645.Spec : Prop :=
  ∀ n, P15912943748890609645.a n = A218420 (n + 1)

end A218420

/-! ## A218420.P11777203419432297003

`record[A218199(A131508(n)+2)]`
-/

namespace A218420.P11777203419432297003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218199 (A131508 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218420.P11777203419432297003

namespace A218420

/-- `record[A218199(A131508(n)+2)]` -/
def P11777203419432297003.Spec : Prop :=
  ∀ n, P11777203419432297003.a n = A218420 (n + 1)

end A218420

/-! ## A218420.P11162955473719676041

`record[A218199(A026741(n+1)+1)]`
-/

namespace A218420.P11162955473719676041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218199 (A026741 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218420.P11162955473719676041

namespace A218420

/-- `record[A218199(A026741(n+1)+1)]` -/
def P11162955473719676041.Spec : Prop :=
  ∀ n, P11162955473719676041.a n = A218420 (n + 1)

end A218420

/-! ## A218420.P9891464368765690446

`record[A218199(n+2)/A033999(n)]`
-/

namespace A218420.P9891464368765690446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218199 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218420.P9891464368765690446

namespace A218420

/-- `record[A218199(n+2)/A033999(n)]` -/
def P9891464368765690446.Spec : Prop :=
  ∀ n, P9891464368765690446.a n = (A218420 (n + 1) : ℚ)

end A218420

/-! ## A218420.P4212526853625856556

`A102026(2*(n+1))-A000007(n)`
-/

namespace A218420.P4212526853625856556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102026 (2 * (n + 1)) - A000007 n

end

end A218420.P4212526853625856556

namespace A218420

/-- `A102026(2*(n+1))-A000007(n)` -/
def P4212526853625856556.Spec : Prop :=
  ∀ n, P4212526853625856556.a n = A218420 (n + 1)

end A218420

/-! ## A218420.P2617000176531660308

`record[and(A033999(n+1), A218199(n+2))]`
-/

namespace A218420.P2617000176531660308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (n + 1)) (A218199 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218420.P2617000176531660308

namespace A218420

/-- `record[and(A033999(n+1), A218199(n+2))]` -/
def P2617000176531660308.Spec : Prop :=
  ∀ n, P2617000176531660308.a n = A218420 (n + 1)

end A218420

/-! ## A218420.P8454025391337967478

`A102026(2*(n+1))-A019590(n+2)`
-/

namespace A218420.P8454025391337967478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102026 (2 * (n + 1)) - A019590 (n + 2)

end

end A218420.P8454025391337967478

namespace A218420

/-- `A102026(2*(n+1))-A019590(n+2)` -/
def P8454025391337967478.Spec : Prop :=
  ∀ n, P8454025391337967478.a n = A218420 (n + 1)

end A218420

/-! ## A218420.P2164073476111963958

`A102026(2*(n+1))-C(2, A102026(2*n+1))`
-/

namespace A218420.P2164073476111963958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102026 (2 * (n + 1)) - (Nat.choose 2 (A102026 (2 * n + 1)).toNat : ℤ)

end

end A218420.P2164073476111963958

namespace A218420

/-- `A102026(2*(n+1))-C(2, A102026(2*n+1))` -/
def P2164073476111963958.Spec : Prop :=
  ∀ n, P2164073476111963958.a n = A218420 (n + 1)

end A218420

/-! ## A218420.P14665839983171394154

`A063196(2*n+1)+A102026(2*(n+1))-(2*n+1)`
-/

namespace A218420.P14665839983171394154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (2 * n + 1) + (A102026 (2 * (n + 1)) - (2 * n + 1 : ℤ))

end

end A218420.P14665839983171394154

namespace A218420

/-- `A063196(2*n+1)+A102026(2*(n+1))-(2*n+1)` -/
def P14665839983171394154.Spec : Prop :=
  ∀ n, P14665839983171394154.a n = A218420 (n + 1)

end A218420

/-!
# A218421: Number of n X 3 binary arrays with every 0 a horizontal, vertical or antidiagonal neighbor to some 1.

The programs for A218421, the canonical program `A218421.P14403734515860059391` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218421 has offset 1).

The definition of A218421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218421.P14403734515860059391

`ogf((5+24x+32x^2+16x^3-x^4-5x^6-8x^7+x^10)/(1-5x-16x^2-28x^3-17x^4-7x^5+3x^6-3x^7+8x^8+x^10-x^11))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218421

/-- `ogf((5+24x+32x^2+16x^3-x^4-5x^6-8x^7+x^10)/(1-5x-16x^2-28x^3-17x^4-7x^5+3x^6-3x^7+8x^8+x^10-x^11))` -/
def P14403734515860059391.Spec : Prop :=
  ∀ n, P14403734515860059391.a n = A218421 (n + 1)

theorem P14403734515860059391.correct : P14403734515860059391.Spec := by
  intro n
  simp only [A218421, Nat.add_sub_cancel]

end A218421

/-! ## A218421.P11914286596184592907

`A218426(∑[n+2]+4)`
-/

namespace A218421.P11914286596184592907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218421.P11914286596184592907

namespace A218421

/-- `A218426(∑[n+2]+4)` -/
def P11914286596184592907.Spec : Prop :=
  ∀ n, P11914286596184592907.a n = A218421 (n + 1)

end A218421

/-!
# A218422: Number of n X 4 binary arrays with every 0 a horizontal, vertical or antidiagonal neighbor to some 1.

The programs for A218422, there is no canonical definition to state claims against.
-/

/-! ## A218422.P3708814237159529319

`A218426(A374004(n+1))`
-/

namespace A218422.P3708814237159529319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (A374004 (n + 1)).toNat

end

end A218422.P3708814237159529319

/-! ## A218422.P17738614962797323207

`A218426(A141214(n+1))`
-/

namespace A218422.P17738614962797323207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (A141214 (n + 1)).toNat

end

end A218422.P17738614962797323207

/-!
# A218423: Number of n X 5 binary arrays with every 0 a horizontal, vertical or antidiagonal neighbor to some 1.

The programs for A218423, there is no canonical definition to state claims against.
-/

/-! ## A218423.P5889851688648869468

`A218426(C(n+5, 2)+5)`
-/

namespace A218423.P5889851688648869468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (Nat.choose (n + 5) 2 + 5)

end

end A218423.P5889851688648869468

/-!
# A218424: Number of n X 6 binary arrays with every 0 a horizontal, vertical or antidiagonal neighbor to some 1.

The programs for A218424, there is no canonical definition to state claims against.
-/

/-! ## A218424.P11961023622835904619

`A218426(A374007(n+1))`
-/

namespace A218424.P11961023622835904619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (A374007 (n + 1)).toNat

end

end A218424.P11961023622835904619

/-!
# A218425: Number of n X 7 binary arrays with every 0 a horizontal, vertical or antidiagonal neighbor to some 1.

The programs for A218425, there is no canonical definition to state claims against.
-/

/-! ## A218425.P312285744601658865

`A218426(A374008(n+1))`
-/

namespace A218425.P312285744601658865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (A374008 (n + 1)).toNat

end

end A218425.P312285744601658865

/-!
# A218426: T(n,k) = number of n X k binary arrays with every 0 a horizontal, vertical or antidiagonal neighbor to some 1, n >= 1, k >= 1, read by antidiagonals.

The programs for A218426, there is no canonical definition to state claims against.
-/

/-! ## A218426.P15977793936841153127

`A218354(n+1)+A140665(A118180(n))`
-/

namespace A218426.P15977793936841153127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (n + 1) + A140665 (A118180 n).toNat

end

end A218426.P15977793936841153127

/-!
# A218431: Cyclic quadrilateral numbers: numbers m = a*b*c*d such that the integers a,b,c,d are the sides of a cyclic quadrilateral whose area and circumradius are integers.

The programs for A218431, there is no canonical definition to state claims against.
-/

/-! ## A218431.P3091341342741462732

`A210250(∑[A241601(n)])²`
-/

namespace A218431.P3091341342741462732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210250 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A218431.P3091341342741462732

/-! ## A218431.P1630093009936751951

`A152691(A009111(n+1)²)`
-/

namespace A218431.P1630093009936751951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 (A009111 (n + 1) ^ 2).toNat

end

end A218431.P1630093009936751951

/-!
# A218432: Sum of the 5th powers of the numbers of standard Young tableaux over all partitions of n.

The programs for A218432, there is no canonical definition to state claims against.
-/

/-! ## A218432.P4808675549251055321

`A208447(A055999(n+3))`
-/

namespace A218432.P4808675549251055321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (A055999 (n + 3)).toNat

end

end A218432.P4808675549251055321

/-!
# A218433: Sum of the 6th powers of the numbers of standard Young tableaux over all partitions of n.

The programs for A218433, there is no canonical definition to state claims against.
-/

/-! ## A218433.P6793491429308190910

`A208447(eq[6, A025581(n)])`
-/

namespace A218433.P6793491429308190910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218433.P6793491429308190910

/-!
# A218434: Sum of the 7th powers of the numbers of standard Young tableaux over all partitions of n.

The programs for A218434, there is no canonical definition to state claims against.
-/

/-! ## A218434.P3600287039504258807

`A208447(eq[7, A025581(n)])`
-/

namespace A218434.P3600287039504258807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218434.P3600287039504258807

/-!
# A218435: Sum of the 8th powers of the numbers of standard Young tableaux over all partitions of n.

The programs for A218435, there is no canonical definition to state claims against.
-/

/-! ## A218435.P4826647229505547679

`A208447(eq[8, A025581(n)])`
-/

namespace A218435.P4826647229505547679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218435.P4826647229505547679

/-!
# A218436: Sum of the 9th powers of the numbers of standard Young tableaux over all partitions of n.

The programs for A218436, there is no canonical definition to state claims against.
-/

/-! ## A218436.P4293050044959964449

`A208447(eq[8, A116598(n)])`
-/

namespace A218436.P4293050044959964449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218436.P4293050044959964449

/-!
# A218437: Sum of the 10th powers of the numbers of standard Young tableaux over all partitions of n.

The programs for A218437, there is no canonical definition to state claims against.
-/

/-! ## A218437.P13431038365340714886

`A208447(eq[10, A025581(n)])`
-/

namespace A218437.P13431038365340714886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218437.P13431038365340714886

/-!
# A218438: G.f.: 1 / ( (1 + x^2 - x^3)^2 * (1 - x - 2*x^2 - x^3) ).

The programs for A218438, there is no canonical definition to state claims against.
-/

/-! ## A218438.P9588515175820040506

`A335127(A023358(3*n+1))-A280457(n+3)`
-/

namespace A218438.P9588515175820040506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335127 (A023358 (3 * n + 1)).toNat - A280457 (n + 3)

end

end A218438.P9588515175820040506

/-!
# A218439: a(n) = A001609(n)^2, where g.f. of A001609 is x*(1+3*x^2)/(1-x-x^3).

The programs for A218439, the canonical program `A218439.P6141881023382895010` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218439 has offset 1).

The definition of A218439 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001609(n+1)²` (program `A218439.P6141881023382895010`, by `A218439.P6141881023382895010.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218439.P8588656066275323872

`ogf((1+14x^2+5x^3-9x^4-9x^5)/(1-x-x^2-3x^3-x^4+x^5+x^6))`
-/

namespace A218439.P8588656066275323872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 14, 5, -9, -9] [1, -1, -1, -3, -1, 1, 1] n

end

end A218439.P8588656066275323872

namespace A218439

/-- `ogf((1+14x^2+5x^3-9x^4-9x^5)/(1-x-x^2-3x^3-x^4+x^5+x^6))` -/
def P8588656066275323872.Spec : Prop :=
  ∀ n, P8588656066275323872.a n = A218439 (n + 1)

end A218439

/-! ## A218439.P6141881023382895010

`A001609(n+1)²`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A218439

/-- `A001609(n+1)²` -/
def P6141881023382895010.Spec : Prop :=
  ∀ n, P6141881023382895010.a n = A218439 (n + 1)

theorem P6141881023382895010.correct : P6141881023382895010.Spec := by
  intro n
  simp only [A218439, Nat.add_sub_cancel]

end A218439

/-! ## A218439.P5011913969786276077

`∑[a(n-1)+a(n-3)]²` with `a(0)=1, a(1)=0, a(2)=3, a(3)=1`
-/

namespace A218439.P5011913969786276077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A218439.P5011913969786276077

namespace A218439

/-- `∑[a(n-1)+a(n-3)]²` -/
def P5011913969786276077.Spec : Prop :=
  ∀ n, (P5011913969786276077.a n : ℤ) = A218439 (n + 1)

end A218439

/-! ## A218439.P2048068183436125555

`Δ[Δ[record[A323951(n)]]]²`
-/

namespace A218439.P2048068183436125555
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A218439.P2048068183436125555

namespace A218439

/-- `Δ[Δ[record[A323951(n)]]]²` -/
def P2048068183436125555.Spec : Prop :=
  ∀ n, P2048068183436125555.a n = A218439 (n + 1)

end A218439

/-! ## A218439.P5375868506513110996

`(Δ[A323951(n+3)]+1)²`
-/

namespace A218439.P5375868506513110996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323951 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) ^ 2

end

end A218439.P5375868506513110996

namespace A218439

/-- `(Δ[A323951(n+3)]+1)²` -/
def P5375868506513110996.Spec : Prop :=
  ∀ n, P5375868506513110996.a n = A218439 (n + 1)

end A218439

/-! ## A218439.P3420733744457795867

`A001609((n+1)^2/(n+1))^2`
-/

namespace A218439.P3420733744457795867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001609 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (n + 1 : ℚ))).toNat ^ 2

end

end A218439.P3420733744457795867

namespace A218439

/-- `A001609((n+1)^2/(n+1))^2` -/
def P3420733744457795867.Spec : Prop :=
  ∀ n, P3420733744457795867.a n = A218439 (n + 1)

end A218439

/-! ## A218439.P3954813538015755204

`(A033999(n)+A001634(n))²`
-/

namespace A218439.P3954813538015755204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + A001634 n) ^ 2

end

end A218439.P3954813538015755204

namespace A218439

/-- `(A033999(n)+A001634(n))²` -/
def P3954813538015755204.Spec : Prop :=
  ∀ n, P3954813538015755204.a n = A218439 (n + 1)

end A218439

/-! ## A218439.P15710997186644805785

`(A179070(n+2)+A078012(n+1))²`
-/

namespace A218439.P15710997186644805785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A179070 (n + 2) + A078012 (n + 1)) ^ 2

end

end A218439.P15710997186644805785

namespace A218439

/-- `(A179070(n+2)+A078012(n+1))²` -/
def P15710997186644805785.Spec : Prop :=
  ∀ n, P15710997186644805785.a n = A218439 (n + 1)

end A218439

/-! ## A218439.P9506525261172880514

`Δ[A001609(n+3)]*A001609(n+1)`
-/

namespace A218439.P9506525261172880514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001609 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001609 (n + 1)

end

end A218439.P9506525261172880514

namespace A218439

/-- `Δ[A001609(n+3)]*A001609(n+1)` -/
def P9506525261172880514.Spec : Prop :=
  ∀ n, P9506525261172880514.a n = A218439 (n + 1)

end A218439

/-! ## A218439.P14910019901377329292

`(A000930(n)+A011761(n)-A068921(n))²`
-/

namespace A218439.P14910019901377329292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000930 n + (A011761 n - A068921 n)) ^ 2

end

end A218439.P14910019901377329292

namespace A218439

/-- `(A000930(n)+A011761(n)-A068921(n))²` -/
def P14910019901377329292.Spec : Prop :=
  ∀ n, P14910019901377329292.a n = A218439 (n + 1)

end A218439

/-! ## A218439.P13110203769848983351

`A001609(n+1)*A001609(A028310(n)+1)`
-/

namespace A218439.P13110203769848983351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001609 (n + 1) * A001609 (A028310 n + 1).toNat

end

end A218439.P13110203769848983351

namespace A218439

/-- `A001609(n+1)*A001609(A028310(n)+1)` -/
def P13110203769848983351.Spec : Prop :=
  ∀ n, P13110203769848983351.a n = A218439 (n + 1)

end A218439

/-! ## A218439.P1423078277986310542

`(A137726(n+1)-A103517(A002265(2*n)))²`
-/

namespace A218439.P1423078277986310542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A137726 (n + 1) - A103517 (A002265 (2 * n)).toNat) ^ 2

end

end A218439.P1423078277986310542

namespace A218439

/-- `(A137726(n+1)-A103517(A002265(2*n)))²` -/
def P1423078277986310542.Spec : Prop :=
  ∀ n, P1423078277986310542.a n = A218439 (n + 1)

end A218439

/-! ## A218439.P10392117400151059512

`(A000930(n)+A011761(n)-A000930(n+1))²`
-/

namespace A218439.P10392117400151059512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000930 n + (A011761 n - A000930 (n + 1))) ^ 2

end

end A218439.P10392117400151059512

namespace A218439

/-- `(A000930(n)+A011761(n)-A000930(n+1))²` -/
def P10392117400151059512.Spec : Prop :=
  ∀ n, P10392117400151059512.a n = A218439 (n + 1)

end A218439

/-! ## A218439.P1854055972386330370

`(A137726(n+1)-A103517(A002265(2*n)))*A001609(n+1)`
-/

namespace A218439.P1854055972386330370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A137726 (n + 1) - A103517 (A002265 (2 * n)).toNat) * A001609 (n + 1)

end

end A218439.P1854055972386330370

namespace A218439

/-- `(A137726(n+1)-A103517(A002265(2*n)))*A001609(n+1)` -/
def P1854055972386330370.Spec : Prop :=
  ∀ n, P1854055972386330370.a n = A218439 (n + 1)

end A218439

/-!
# A218440: Hankel transform of A078818.

The programs for A218440, the canonical program `A218440.P13713322779526615165` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218440 has offset 0).

The definition of A218440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218440.P13713322779526615165

`ogf((10-5x+14x^2-x^3)/(1-14x+6x^2-14x^3+x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218440

/-- `ogf((10-5x+14x^2-x^3)/(1-14x+6x^2-14x^3+x^4))` -/
def P13713322779526615165.Spec : Prop :=
  ∀ n, P13713322779526615165.a n = A218440 n

theorem P13713322779526615165.correct : P13713322779526615165.Spec := by
  intro n
  simp only [A218440]

end A218440

/-!
# A218441: a(n) = A000108(n)*A001764(n).

The programs for A218441, the canonical program `A218441.P17376313493192679053` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218441 has offset 0).

The definition of A218441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218441.P17376313493192679053

`A000108(n)*A001764(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A218441

/-- `A000108(n)*A001764(n)` -/
def P17376313493192679053.Spec : Prop :=
  ∀ n, P17376313493192679053.a n = A218441 n

theorem P17376313493192679053.correct : P17376313493192679053.Spec := by
  intro n
  simp only [A218441]

end A218441

/-! ## A218441.P5667412836218225334

`C(2*n, n)/(n+1)*C(3*n, n)/(2*n+1)`
-/

namespace A218441.P5667412836218225334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (Nat.choose (3 * n) n : ℚ) / (2 * n + 1 : ℚ)

end

end A218441.P5667412836218225334

namespace A218441

/-- `C(2*n, n)/(n+1)*C(3*n, n)/(2*n+1)` -/
def P5667412836218225334.Spec : Prop :=
  ∀ n, P5667412836218225334.a n = (A218441 n : ℚ)

end A218441

/-! ## A218441.P13468989990873908299

`A000108(n)*C(3*n, n)/(2*n+1)`
-/

namespace A218441.P13468989990873908299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n * (Nat.choose (3 * n) n : ℤ) : ℚ) / (2 * n + 1 : ℚ)

end

end A218441.P13468989990873908299

namespace A218441

/-- `A000108(n)*C(3*n, n)/(2*n+1)` -/
def P13468989990873908299.Spec : Prop :=
  ∀ n, P13468989990873908299.a n = (A218441 n : ℚ)

end A218441

/-! ## A218441.P15775590283336788778

`C(2*n, n)/(n+1)*C(3*n, n)/(2*n+1)`
-/

namespace A218441.P15775590283336788778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * ((Nat.choose (3 * n) n : ℚ) / (2 * n + 1 : ℚ))

end

end A218441.P15775590283336788778

namespace A218441

/-- `C(2*n, n)/(n+1)*C(3*n, n)/(2*n+1)` -/
def P15775590283336788778.Spec : Prop :=
  ∀ n, P15775590283336788778.a n = (A218441 n : ℚ)

end A218441

/-! ## A218441.P17562172251240789036

`C(2*n, n)/(n+1)*A001764(n)`
-/

namespace A218441.P17562172251240789036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (A001764 n : ℚ)

end

end A218441.P17562172251240789036

namespace A218441

/-- `C(2*n, n)/(n+1)*A001764(n)` -/
def P17562172251240789036.Spec : Prop :=
  ∀ n, P17562172251240789036.a n = (A218441 n : ℚ)

end A218441

/-! ## A218441.P3120627927179394888

`C(2*n, n)/(n+1)*A073147(∑[n])`
-/

namespace A218441.P3120627927179394888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (A073147 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A218441.P3120627927179394888

namespace A218441

/-- `C(2*n, n)/(n+1)*A073147(∑[n])` -/
def P3120627927179394888.Spec : Prop :=
  ∀ n, P3120627927179394888.a n = (A218441 n : ℚ)

end A218441

/-! ## A218441.P3566615184110179211

`C(2*n, n)/(n+1)*A047749(2*n)`
-/

namespace A218441.P3566615184110179211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (A047749 (2 * n) : ℚ)

end

end A218441.P3566615184110179211

namespace A218441

/-- `C(2*n, n)/(n+1)*A047749(2*n)` -/
def P3566615184110179211.Spec : Prop :=
  ∀ n, P3566615184110179211.a n = (A218441 n : ℚ)

end A218441

/-! ## A218441.P9643553018726431515

`C(3*n, n)/(2*n+1)*A000108(n)`
-/

namespace A218441.P9643553018726431515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℚ) / (2 * n + 1 : ℚ) * (A000108 n : ℚ)

end

end A218441.P9643553018726431515

namespace A218441

/-- `C(3*n, n)/(2*n+1)*A000108(n)` -/
def P9643553018726431515.Spec : Prop :=
  ∀ n, P9643553018726431515.a n = (A218441 n : ℚ)

end A218441

/-! ## A218441.P2991865511760765805

`abs(A001764(n)*A168491(n))`
-/

namespace A218441.P2991865511760765805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001764 n * A168491 n|

end

end A218441.P2991865511760765805

namespace A218441

/-- `abs(A001764(n)*A168491(n))` -/
def P2991865511760765805.Spec : Prop :=
  ∀ n, P2991865511760765805.a n = A218441 n

end A218441

/-! ## A218441.P5110431092068147519

`A001764(n)*A039599(∑[n])`
-/

namespace A218441.P5110431092068147519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A039599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218441.P5110431092068147519

namespace A218441

/-- `A001764(n)*A039599(∑[n])` -/
def P5110431092068147519.Spec : Prop :=
  ∀ n, P5110431092068147519.a n = A218441 n

end A218441

/-!
# A218442: a(n) = Sum_{k=0..n} floor(n/(3*k + 1)).

The programs for A218442, the canonical program `A218442.P4997412784662056803` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218442 has offset 0).

The definition of A218442 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, floor(n/(3*#+1))]` (program `A218442.P4997412784662056803`, by `A218442.P4997412784662056803.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218442.P4997412784662056803

`∑{#}[n, floor(n/(3*#+1))]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218442

/-- `∑{#}[n, floor(n/(3*#+1))]` -/
def P4997412784662056803.Spec : Prop :=
  ∀ n, P4997412784662056803.a n = A218442 n

theorem P4997412784662056803.correct : P4997412784662056803.Spec := by
  intro n
  simp only [A218442]

end A218442

/-! ## A218442.P707209503399021461

`∑[∑{d}[n, (#%3)%2]]`
-/

namespace A218442.P707209503399021461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % 3 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218442.P707209503399021461

namespace A218442

/-- `∑[∑{d}[n, (#%3)%2]]` -/
def P707209503399021461.Spec : Prop :=
  ∀ n, (P707209503399021461.a n : ℤ) = A218442 n

end A218442

/-! ## A218442.P681929173245290018

`A218443(n)+A014202(n)`
-/

namespace A218442.P681929173245290018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218443 n + A014202 n

end

end A218442.P681929173245290018

namespace A218442

/-- `A218443(n)+A014202(n)` -/
def P681929173245290018.Spec : Prop :=
  ∀ n, P681929173245290018.a n = A218442 n

end A218442

/-! ## A218442.P8067967790818579305

`∑[∑{d}[n, A000007(A089598(#))]]`
-/

namespace A218442.P8067967790818579305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000007 (A089598 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218442.P8067967790818579305

namespace A218442

/-- `∑[∑{d}[n, A000007(A089598(#))]]` -/
def P8067967790818579305.Spec : Prop :=
  ∀ n, P8067967790818579305.a n = A218442 n

end A218442

/-! ## A218442.P15443028395034935843

`A218443(n)+A014201(n)/6`
-/

namespace A218442.P15443028395034935843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218443 n : ℚ) + (A014201 n : ℚ) / 6

end

end A218442.P15443028395034935843

namespace A218442

/-- `A218443(n)+A014201(n)/6` -/
def P15443028395034935843.Spec : Prop :=
  ∀ n, P15443028395034935843.a n = (A218442 n : ℚ)

end A218442

/-! ## A218442.P8717022743853508304

`A218443(n)+floor(A038589(n)/6)`
-/

namespace A218442.P8717022743853508304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218443 n + ⌊(A038589 n : ℚ) / 6⌋

end

end A218442.P8717022743853508304

namespace A218442

/-- `A218443(n)+floor(A038589(n)/6)` -/
def P8717022743853508304.Spec : Prop :=
  ∀ n, P8717022743853508304.a n = A218442 n

end A218442

/-! ## A218442.P13056636125306890643

`A218443(n)+∑[floor(A004016(n)/6)]`
-/

namespace A218442.P13056636125306890643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004016 n : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218443 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218442.P13056636125306890643

namespace A218442

/-- `A218443(n)+∑[floor(A004016(n)/6)]` -/
def P13056636125306890643.Spec : Prop :=
  ∀ n, P13056636125306890643.a n = A218442 n

end A218442

/-! ## A218442.P4920843316159211081

`∑[A001817(n+1)]-A001817(n+1)`
-/

namespace A218442.P4920843316159211081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001817 (n + 1)

end

end A218442.P4920843316159211081

namespace A218442

/-- `∑[A001817(n+1)]-A001817(n+1)` -/
def P4920843316159211081.Spec : Prop :=
  ∀ n, P4920843316159211081.a n = A218442 n

end A218442

/-! ## A218442.P12057754784822278777

`A218443(n)+∑[A002324(abs(1-n)+1)]`
-/

namespace A218442.P12057754784822278777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218443 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218442.P12057754784822278777

namespace A218442

/-- `A218443(n)+∑[A002324(abs(1-n)+1)]` -/
def P12057754784822278777.Spec : Prop :=
  ∀ n, P12057754784822278777.a n = A218442 n

end A218442

/-! ## A218442.P18096691891775697319

`∑[A293895(A008486(n))]`
-/

namespace A218442.P18096691891775697319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218442.P18096691891775697319

namespace A218442

/-- `∑[A293895(A008486(n))]` -/
def P18096691891775697319.Spec : Prop :=
  ∀ n, P18096691891775697319.a n = A218442 n

end A218442

/-! ## A218442.P8179963545185742916

`∑[A293895(record[A257143(n)])]`
-/

namespace A218442.P8179963545185742916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218442.P8179963545185742916

namespace A218442

/-- `∑[A293895(record[A257143(n)])]` -/
def P8179963545185742916.Spec : Prop :=
  ∀ n, P8179963545185742916.a n = A218442 n

end A218442

/-! ## A218442.P11550589777598879472

`∑[A293895(record[A280167(n)])]`
-/

namespace A218442.P11550589777598879472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280167 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218442.P11550589777598879472

namespace A218442

/-- `∑[A293895(record[A280167(n)])]` -/
def P11550589777598879472.Spec : Prop :=
  ∀ n, P11550589777598879472.a n = A218442 n

end A218442

/-! ## A218442.P13733349472200151144

`∑[A293895(A257143(2*n))]`
-/

namespace A218442.P13733349472200151144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (A257143 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218442.P13733349472200151144

namespace A218442

/-- `∑[A293895(A257143(2*n))]` -/
def P13733349472200151144.Spec : Prop :=
  ∀ n, P13733349472200151144.a n = A218442 n

end A218442

/-! ## A218442.P1294512037503849535

`∑[A293895(A280167(2*n))]`
-/

namespace A218442.P1294512037503849535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (A280167 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218442.P1294512037503849535

namespace A218442

/-- `∑[A293895(A280167(2*n))]` -/
def P1294512037503849535.Spec : Prop :=
  ∀ n, P1294512037503849535.a n = A218442 n

end A218442

/-! ## A218442.P714239675453870029

`∑[∑{d}[n, A000035(A026177(#))]]`
-/

namespace A218442.P714239675453870029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000035 (A026177 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218442.P714239675453870029

namespace A218442

/-- `∑[∑{d}[n, A000035(A026177(#))]]` -/
def P714239675453870029.Spec : Prop :=
  ∀ n, P714239675453870029.a n = A218442 n

end A218442

/-! ## A218442.P10706343284606152585

`∑[A293895(A004525(A008458(n)))]`
-/

namespace A218442.P10706343284606152585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (A004525 (A008458 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218442.P10706343284606152585

namespace A218442

/-- `∑[A293895(A004525(A008458(n)))]` -/
def P10706343284606152585.Spec : Prop :=
  ∀ n, P10706343284606152585.a n = A218442 n

end A218442

/-! ## A218442.P8714367097972287479

`∑[∑{d}[n, A000035(A037454(#))]]`
-/

namespace A218442.P8714367097972287479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000035 (A037454 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218442.P8714367097972287479

namespace A218442

/-- `∑[∑{d}[n, A000035(A037454(#))]]` -/
def P8714367097972287479.Spec : Prop :=
  ∀ n, P8714367097972287479.a n = A218442 n

end A218442

/-!
# A218443: a(n) = Sum_{k=0..n} floor(n/(3k+2)).

The programs for A218443, the canonical program `A218443.P12434672875628901916` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218443 has offset 0).

The definition of A218443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218443.P12434672875628901916

`∑[∑{d}[n, C(#, 2)%3]]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218443

/-- `∑[∑{d}[n, C(#, 2)%3]]` -/
def P12434672875628901916.Spec : Prop :=
  ∀ n, (P12434672875628901916.a n : ℤ) = A218443 n

theorem P12434672875628901916.correct : P12434672875628901916.Spec := by
  intro n
  simp only [A218443]

end A218443

/-! ## A218443.P13662396523298816962

`∑[∑{d}[n, A022003(#)]]`
-/

namespace A218443.P13662396523298816962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A022003 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218443.P13662396523298816962

namespace A218443

/-- `∑[∑{d}[n, A022003(#)]]` -/
def P13662396523298816962.Spec : Prop :=
  ∀ n, P13662396523298816962.a n = A218443 n

end A218443

/-! ## A218443.P3656420154386199774

`A001822(n)+a(n-1)` with `a(0)=0`
-/

namespace A218443.P3656420154386199774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001822 n + a (n - 1)

end

end A218443.P3656420154386199774

namespace A218443

/-- `A001822(n)+a(n-1)` -/
def P3656420154386199774.Spec : Prop :=
  ∀ n, P3656420154386199774.a n = A218443 n

end A218443

/-! ## A218443.P12650885204380570109

`∑[A001822(round(sqrt(n²+1)))]`
-/

namespace A218443.P12650885204380570109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218443.P12650885204380570109

namespace A218443

/-- `∑[A001822(round(sqrt(n²+1)))]` -/
def P12650885204380570109.Spec : Prop :=
  ∀ n, P12650885204380570109.a n = A218443 n

end A218443

/-! ## A218443.P5947871652105149801

`∑[∑{d}[n, A090097(#+1)%2]]`
-/

namespace A218443.P5947871652105149801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (A090097 (d + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218443.P5947871652105149801

namespace A218443

/-- `∑[∑{d}[n, A090097(#+1)%2]]` -/
def P5947871652105149801.Spec : Prop :=
  ∀ n, P5947871652105149801.a n = A218443 n

end A218443

/-! ## A218443.P13094474726288574582

`A218442(n)-A014202(n)`
-/

namespace A218443.P13094474726288574582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218442 n - A014202 n

end

end A218443.P13094474726288574582

namespace A218443

/-- `A218442(n)-A014202(n)` -/
def P13094474726288574582.Spec : Prop :=
  ∀ n, P13094474726288574582.a n = A218443 n

end A218443

/-! ## A218443.P5402889618039538993

`∑[A001822(n+1)]-A001822(n+1)`
-/

namespace A218443.P5402889618039538993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001822 (n + 1)

end

end A218443.P5402889618039538993

namespace A218443

/-- `∑[A001822(n+1)]-A001822(n+1)` -/
def P5402889618039538993.Spec : Prop :=
  ∀ n, P5402889618039538993.a n = A218443 n

end A218443

/-! ## A218443.P4045011466629055707

`∑[∑{d}[n, A039915(A319690(#+1)+1)%2]]`
-/

namespace A218443.P4045011466629055707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (A039915 (A319690 (d + 1) + 1).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218443.P4045011466629055707

namespace A218443

/-- `∑[∑{d}[n, A039915(A319690(#+1)+1)%2]]` -/
def P4045011466629055707.Spec : Prop :=
  ∀ n, P4045011466629055707.a n = A218443 n

end A218443

/-! ## A218443.P11404246212052110190

`∑[∑{d}[n, A000071(#+1)%2]]`
-/

namespace A218443.P11404246212052110190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (A000071 (d + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218443.P11404246212052110190

namespace A218443

/-- `∑[∑{d}[n, A000071(#+1)%2]]` -/
def P11404246212052110190.Spec : Prop :=
  ∀ n, P11404246212052110190.a n = A218443 n

end A218443

/-!
# A218444: a(n) = Sum_{k>=0} floor(n/(5*k + 1)).

The programs for A218444, the canonical program `A218444.P10091015155135104589` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218444 has offset 0).

The definition of A218444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218444.P8205215119753257326

`∑[∑{d}[n, C(#+3, 4)%5]]`
-/

namespace A218444.P8205215119753257326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.choose (d + 3) 4 % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218444.P8205215119753257326

namespace A218444

/-- `∑[∑{d}[n, C(#+3, 4)%5]]` -/
def P8205215119753257326.Spec : Prop :=
  ∀ n, (P8205215119753257326.a n : ℤ) = A218444 n

end A218444

/-! ## A218444.P5774075646273939917

`∑[∑{d}[n, (gcd(5, 1-#)-1)/4]]`
-/

namespace A218444.P5774075646273939917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((Int.gcd 5 (1 - (d : ℤ)) : ℤ) - 1 : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218444.P5774075646273939917

namespace A218444

/-- `∑[∑{d}[n, (gcd(5, 1-#)-1)/4]]` -/
def P5774075646273939917.Spec : Prop :=
  ∀ n, P5774075646273939917.a n = (A218444 n : ℚ)

end A218444

/-! ## A218444.P14004067168175784175

`∑[∑{d}[n, floor((3*#+1)%5/4)]]`
-/

namespace A218444.P14004067168175784175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌊(((3 * d + 1) % 5 : ℕ) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218444.P14004067168175784175

namespace A218444

/-- `∑[∑{d}[n, floor((3*#+1)%5/4)]]` -/
def P14004067168175784175.Spec : Prop :=
  ∀ n, P14004067168175784175.a n = A218444 n

end A218444

/-! ## A218444.P10091015155135104589

`∑[A001876(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A218444

/-- `∑[A001876(n)]` -/
def P10091015155135104589.Spec : Prop :=
  ∀ n, P10091015155135104589.a n = A218444 n

theorem P10091015155135104589.correct : P10091015155135104589.Spec := by
  intro n
  simp only [A218444]

end A218444

/-! ## A218444.P8509203004694243201

`∑[∑{d}[n, A079998(#-1)]]`
-/

namespace A218444.P8509203004694243201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A079998 (d - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218444.P8509203004694243201

namespace A218444

/-- `∑[∑{d}[n, A079998(#-1)]]` -/
def P8509203004694243201.Spec : Prop :=
  ∀ n, P8509203004694243201.a n = A218444 n

end A218444

/-! ## A218444.P3941638057908099626

`∑[∑{d}[n, val(A028387(#), 5)]]`
-/

namespace A218444.P3941638057908099626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), SequenceMachineLib.valuation (A028387 d).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218444.P3941638057908099626

namespace A218444

/-- `∑[∑{d}[n, val(A028387(#), 5)]]` -/
def P3941638057908099626.Spec : Prop :=
  ∀ n, (P3941638057908099626.a n : ℤ) = A218444 n

end A218444

/-! ## A218444.P11237746764394019642

`record[1-a(n-1)-A083912(n+1)]` with `a(0)=0`
-/

namespace A218444.P11237746764394019642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1) - A083912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218444.P11237746764394019642

namespace A218444

/-- `record[1-a(n-1)-A083912(n+1)]` -/
def P11237746764394019642.Spec : Prop :=
  ∀ n, P11237746764394019642.a n = A218444 n

end A218444

/-! ## A218444.P8752698072163010295

`∑[A083912(A004273(n)+1)]`
-/

namespace A218444.P8752698072163010295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (A004273 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218444.P8752698072163010295

namespace A218444

/-- `∑[A083912(A004273(n)+1)]` -/
def P8752698072163010295.Spec : Prop :=
  ∀ n, P8752698072163010295.a n = A218444 n

end A218444

/-! ## A218444.P9605928066081585257

`∑[A083912(A008486(n)-n)]`
-/

namespace A218444.P9605928066081585257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (A008486 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218444.P9605928066081585257

namespace A218444

/-- `∑[A083912(A008486(n)-n)]` -/
def P9605928066081585257.Spec : Prop :=
  ∀ n, P9605928066081585257.a n = A218444 n

end A218444

/-! ## A218444.P18291724870534130333

`∑[A083912(2*(n+1))]-A083912(2*(n+1))`
-/

namespace A218444.P18291724870534130333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A083912 (2 * (n + 1))

end

end A218444.P18291724870534130333

namespace A218444

/-- `∑[A083912(2*(n+1))]-A083912(2*(n+1))` -/
def P18291724870534130333.Spec : Prop :=
  ∀ n, P18291724870534130333.a n = A218444 n

end A218444

/-! ## A218444.P587377179279473620

`∑[A083912(A028310(2*n))]`
-/

namespace A218444.P587377179279473620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (A028310 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218444.P587377179279473620

namespace A218444

/-- `∑[A083912(A028310(2*n))]` -/
def P587377179279473620.Spec : Prop :=
  ∀ n, P587377179279473620.a n = A218444 n

end A218444

/-! ## A218444.P13453734309613487446

`record[∑[A083912(n+1)]*A232750(n)]`
-/

namespace A218444.P13453734309613487446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A232750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218444.P13453734309613487446

namespace A218444

/-- `record[∑[A083912(n+1)]*A232750(n)]` -/
def P13453734309613487446.Spec : Prop :=
  ∀ n, P13453734309613487446.a n = A218444 n

end A218444

/-!
# A218445: a(n) = Sum_{k>=0} floor(n/(5*k + 2)).

The programs for A218445, the canonical program `A218445.P17304662535675583263` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218445 has offset 0).

The definition of A218445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218445.P17304662535675583263

`∑[A001877(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A218445

/-- `∑[A001877(n)]` -/
def P17304662535675583263.Spec : Prop :=
  ∀ n, P17304662535675583263.a n = A218445 n

theorem P17304662535675583263.correct : P17304662535675583263.Spec := by
  intro n
  simp only [A218445]

end A218445

/-! ## A218445.P11804915430082720877

`∑[∑{d}[n, and(1, A047412(#))]]`
-/

namespace A218445.P11804915430082720877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.land 1 (A047412 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218445.P11804915430082720877

namespace A218445

/-- `∑[∑{d}[n, and(1, A047412(#))]]` -/
def P11804915430082720877.Spec : Prop :=
  ∀ n, P11804915430082720877.a n = A218445 n

end A218445

/-! ## A218445.P9986511603847765071

`∑[∑{d}[n, A011858(#+1)%2]]`
-/

namespace A218445.P9986511603847765071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (A011858 (d + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218445.P9986511603847765071

namespace A218445

/-- `∑[∑{d}[n, A011858(#+1)%2]]` -/
def P9986511603847765071.Spec : Prop :=
  ∀ n, P9986511603847765071.a n = A218445 n

end A218445

/-! ## A218445.P15363780084200678822

`∑[∑{d}[n, val(A000217(#)+2, 5)]]`
-/

namespace A218445.P15363780084200678822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), SequenceMachineLib.valuation (A000217 d + 2).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218445.P15363780084200678822

namespace A218445

/-- `∑[∑{d}[n, val(A000217(#)+2, 5)]]` -/
def P15363780084200678822.Spec : Prop :=
  ∀ n, (P15363780084200678822.a n : ℤ) = A218445 n

end A218445

/-! ## A218445.P12120136586331915379

`∑[∑{d}[n, (A173267(#)%5)%2]]`
-/

namespace A218445.P12120136586331915379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (Int.tmod (A173267 d) 5) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218445.P12120136586331915379

namespace A218445

/-- `∑[∑{d}[n, (A173267(#)%5)%2]]` -/
def P12120136586331915379.Spec : Prop :=
  ∀ n, P12120136586331915379.a n = A218445 n

end A218445

/-! ## A218445.P8076362791358181516

`A083914(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A218445.P8076362791358181516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A083914 (2 * n) + a (n - 1)

end

end A218445.P8076362791358181516

namespace A218445

/-- `A083914(2*n)+a(n-1)` -/
def P8076362791358181516.Spec : Prop :=
  ∀ n, P8076362791358181516.a n = A218445 n

end A218445

/-! ## A218445.P6182837208206818467

`∑[A083914(abs(1-2*n)+1)]`
-/

namespace A218445.P6182837208206818467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (|1 - (2 * n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218445.P6182837208206818467

namespace A218445

/-- `∑[A083914(abs(1-2*n)+1)]` -/
def P6182837208206818467.Spec : Prop :=
  ∀ n, P6182837208206818467.a n = A218445 n

end A218445

/-! ## A218445.P2839742679953484578

`∑[A083914(comp[2*(n+1)]+1)%36]`
-/

namespace A218445.P2839742679953484578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083914 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)) 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218445.P2839742679953484578

namespace A218445

/-- `∑[A083914(comp[2*(n+1)]+1)%36]` -/
def P2839742679953484578.Spec : Prop :=
  ∀ n, P2839742679953484578.a n = A218445 n

end A218445

/-! ## A218445.P17099391367600796536

`∑[A083914(2*(n+1))]-A083914(2*(n+1))`
-/

namespace A218445.P17099391367600796536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A083914 (2 * (n + 1))

end

end A218445.P17099391367600796536

namespace A218445

/-- `∑[A083914(2*(n+1))]-A083914(2*(n+1))` -/
def P17099391367600796536.Spec : Prop :=
  ∀ n, P17099391367600796536.a n = A218445 n

end A218445

/-!
# A218446: a(n) = Sum_{k>=0} floor(n/(5*k + 3)).

The programs for A218446, the canonical program `A218446.P16595335050583582027` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218446 has offset 0).

The definition of A218446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218446.P16595335050583582027

`∑[A001878(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A218446

/-- `∑[A001878(n)]` -/
def P16595335050583582027.Spec : Prop :=
  ∀ n, P16595335050583582027.a n = A218446 n

theorem P16595335050583582027.correct : P16595335050583582027.Spec := by
  intro n
  simp only [A218446]

end A218446

/-! ## A218446.P6562959342402833999

`∑[∑{d}[n, A079998(#+2)]]`
-/

namespace A218446.P6562959342402833999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A079998 (d + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218446.P6562959342402833999

namespace A218446

/-- `∑[∑{d}[n, A079998(#+2)]]` -/
def P6562959342402833999.Spec : Prop :=
  ∀ n, P6562959342402833999.a n = A218446 n

end A218446

/-! ## A218446.P633650781169622404

`∑[∑{d}[n, A011858(#)%2]]`
-/

namespace A218446.P633650781169622404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (A011858 d) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218446.P633650781169622404

namespace A218446

/-- `∑[∑{d}[n, A011858(#)%2]]` -/
def P633650781169622404.Spec : Prop :=
  ∀ n, P633650781169622404.a n = A218446 n

end A218446

/-! ## A218446.P17408562835814013514

`∑[∑{d}[n, A011887(#)%2]]`
-/

namespace A218446.P17408562835814013514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (A011887 d) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218446.P17408562835814013514

namespace A218446

/-- `∑[∑{d}[n, A011887(#)%2]]` -/
def P17408562835814013514.Spec : Prop :=
  ∀ n, P17408562835814013514.a n = A218446 n

end A218446

/-! ## A218446.P9606203741701829656

`∑[∑{d}[n, A050782(val(#+2, 5))]]`
-/

namespace A218446.P9606203741701829656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A050782 (SequenceMachineLib.valuation (d + 2) 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218446.P9606203741701829656

namespace A218446

/-- `∑[∑{d}[n, A050782(val(#+2, 5))]]` -/
def P9606203741701829656.Spec : Prop :=
  ∀ n, P9606203741701829656.a n = A218446 n

end A218446

/-! ## A218446.P685488509267469046

`∑[∑{d}[n, (A123197(#)%5)%2]]`
-/

namespace A218446.P685488509267469046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (Int.tmod (A123197 d) 5) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218446.P685488509267469046

namespace A218446

/-- `∑[∑{d}[n, (A123197(#)%5)%2]]` -/
def P685488509267469046.Spec : Prop :=
  ∀ n, P685488509267469046.a n = A218446 n

end A218446

/-! ## A218446.P13129296477451824737

`A083916(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A218446.P13129296477451824737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A083916 (2 * n) + a (n - 1)

end

end A218446.P13129296477451824737

namespace A218446

/-- `A083916(2*n)+a(n-1)` -/
def P13129296477451824737.Spec : Prop :=
  ∀ n, P13129296477451824737.a n = A218446 n

end A218446

/-! ## A218446.P17355289432014590724

`∑[A083916(A004277(n))]`
-/

namespace A218446.P17355289432014590724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218446.P17355289432014590724

namespace A218446

/-- `∑[A083916(A004277(n))]` -/
def P17355289432014590724.Spec : Prop :=
  ∀ n, P17355289432014590724.a n = A218446 n

end A218446

/-! ## A218446.P15136128121283368936

`∑[A083916(2*(n+1))]-A083916(2*(n+1))`
-/

namespace A218446.P15136128121283368936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A083916 (2 * (n + 1))

end

end A218446.P15136128121283368936

namespace A218446

/-- `∑[A083916(2*(n+1))]-A083916(2*(n+1))` -/
def P15136128121283368936.Spec : Prop :=
  ∀ n, P15136128121283368936.a n = A218446 n

end A218446

/-! ## A218446.P18420492765366478446

`∑{#}[2*n, A083916(#+1)]`
-/

namespace A218446.P18420492765366478446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A083916 (k + 1)

end

end A218446.P18420492765366478446

namespace A218446

/-- `∑{#}[2*n, A083916(#+1)]` -/
def P18420492765366478446.Spec : Prop :=
  ∀ n, P18420492765366478446.a n = A218446 n

end A218446

/-!
# A218447: a(n) = Sum_{k>=0} floor(n/(5*k + 4)).

The programs for A218447, the canonical program `A218447.P6360476239130993311` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218447 has offset 0).

The definition of A218447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218447.P6360476239130993311

`∑[∑{d}[n, C(#, 4)%5]]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218447

/-- `∑[∑{d}[n, C(#, 4)%5]]` -/
def P6360476239130993311.Spec : Prop :=
  ∀ n, (P6360476239130993311.a n : ℤ) = A218447 n

theorem P6360476239130993311.correct : P6360476239130993311.Spec := by
  intro n
  simp only [A218447]

end A218447

/-! ## A218447.P9057375810410371691

`∑[∑{d}[n, floor(#%5/4)]]`
-/

namespace A218447.P9057375810410371691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌊((d % 5 : ℕ) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218447.P9057375810410371691

namespace A218447

/-- `∑[∑{d}[n, floor(#%5/4)]]` -/
def P9057375810410371691.Spec : Prop :=
  ∀ n, P9057375810410371691.a n = A218447 n

end A218447

/-! ## A218447.P8615882704632248761

`∑[A001899(n)]`
-/

namespace A218447.P8615882704632248761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218447.P8615882704632248761

namespace A218447

/-- `∑[A001899(n)]` -/
def P8615882704632248761.Spec : Prop :=
  ∀ n, P8615882704632248761.a n = A218447 n

theorem P8615882704632248761.correct : P8615882704632248761.Spec := by
  intro n
  simp only [A218447, Nat.add_sub_cancel, A218447.P8615882704632248761.f1, A218447.P8615882704632248761.a, A218447.P6360476239130993311.f2, A218447.P6360476239130993311.f1, A218447.P6360476239130993311.a, A001899, A001899.P11284131779432279770.f1, A001899.P11284131779432279770.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A218447

/-! ## A218447.P871284579610803008

`∑[∑{d}[n, A000332(#)%5]]`
-/

namespace A218447.P871284579610803008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (A000332 d) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218447.P871284579610803008

namespace A218447

/-- `∑[∑{d}[n, A000332(#)%5]]` -/
def P871284579610803008.Spec : Prop :=
  ∀ n, P871284579610803008.a n = A218447 n

end A218447

/-! ## A218447.P7680300057542875473

`∑[∑{d}[n, and(1, A001744(#+1))]]`
-/

namespace A218447.P7680300057542875473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.land 1 (A001744 (d + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218447.P7680300057542875473

namespace A218447

/-- `∑[∑{d}[n, and(1, A001744(#+1))]]` -/
def P7680300057542875473.Spec : Prop :=
  ∀ n, P7680300057542875473.a n = A218447 n

end A218447

/-! ## A218447.P290617495097407889

`A083918(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A218447.P290617495097407889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A083918 (2 * n) + a (n - 1)

end

end A218447.P290617495097407889

namespace A218447

/-- `A083918(2*n)+a(n-1)` -/
def P290617495097407889.Spec : Prop :=
  ∀ n, P290617495097407889.a n = A218447 n

end A218447

/-! ## A218447.P13332036116883330465

`∑[A083918(comp[2*(n+1)]+1)]`
-/

namespace A218447.P13332036116883330465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218447.P13332036116883330465

namespace A218447

/-- `∑[A083918(comp[2*(n+1)]+1)]` -/
def P13332036116883330465.Spec : Prop :=
  ∀ n, P13332036116883330465.a n = A218447 n

end A218447

/-! ## A218447.P10655435259685468433

`∑[A083918(2*(n+1))]-A083918(2*(n+1))`
-/

namespace A218447.P10655435259685468433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A083918 (2 * (n + 1))

end

end A218447.P10655435259685468433

namespace A218447

/-- `∑[A083918(2*(n+1))]-A083918(2*(n+1))` -/
def P10655435259685468433.Spec : Prop :=
  ∀ n, P10655435259685468433.a n = A218447 n

end A218447

/-!
# A218449: Gaussian binomial coefficient [2*n-1,n] for q=2, n>=0.

The programs for A218449, there is no canonical definition to state claims against.
-/

/-! ## A218449.P7074649482359374982

`A022166(2*n²)`
-/

namespace A218449.P7074649482359374982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (2 * n ^ 2)

end

end A218449.P7074649482359374982

/-! ## A218449.P13534234663276126686

`A006098(n)/∑[2*a(n-1)]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A218449.P13534234663276126686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006098 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A218449.P13534234663276126686

/-! ## A218449.P10510656827612109852

`A006099(A004273(n))`
-/

namespace A218449.P10510656827612109852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006099 (A004273 n).toNat

end

end A218449.P10510656827612109852

/-!
# A218450: Number of digits of n plus number of digits of n equal to 1, 2, 4, or 8.

The programs for A218450, the canonical program `A218450.P5670755410383586897` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218450 has offset 1).

The definition of A218450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218450.P13102550633301641784

`∑{digits}[n+1, A209229(#)+1]`
-/

namespace A218450.P13102550633301641784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A209229 x + 1).sum

end

end A218450.P13102550633301641784

namespace A218450

/-- `∑{digits}[n+1, A209229(#)+1]` -/
def P13102550633301641784.Spec : Prop :=
  ∀ n, P13102550633301641784.a n = A218450 (n + 1)

end A218450

/-! ## A218450.P13644513740518118146

`∑{digits}[n+1, A342704(#+1)+1]`
-/

namespace A218450.P13644513740518118146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A342704 (x + 1) + 1).sum

end

end A218450.P13644513740518118146

namespace A218450

/-- `∑{digits}[n+1, A342704(#+1)+1]` -/
def P13644513740518118146.Spec : Prop :=
  ∀ n, P13644513740518118146.a n = A218450 (n + 1)

end A218450

/-! ## A218450.P18007864356364160763

`∑{digits}[n+1, gcd(2, A209814(A006257(#)+1))]`
-/

namespace A218450.P18007864356364160763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.gcd 2 (A209814 (A006257 x + 1).toNat)).sum

end

end A218450.P18007864356364160763

namespace A218450

/-- `∑{digits}[n+1, gcd(2, A209814(A006257(#)+1))]` -/
def P18007864356364160763.Spec : Prop :=
  ∀ n, (P18007864356364160763.a n : ℤ) = A218450 (n + 1)

end A218450

/-! ## A218450.P11250129504199228588

`∑{digits}[n+1, A035294(C(2, A159799(#+1)))]`
-/

namespace A218450.P11250129504199228588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A035294 (Nat.choose 2 (A159799 (x + 1)).toNat)).sum

end

end A218450.P11250129504199228588

namespace A218450

/-- `∑{digits}[n+1, A035294(C(2, A159799(#+1)))]` -/
def P11250129504199228588.Spec : Prop :=
  ∀ n, P11250129504199228588.a n = A218450 (n + 1)

end A218450

/-! ## A218450.P2942001650023583871

`∑{digits}[n+1, A085157(C(2, A159799(#+1)))]`
-/

namespace A218450.P2942001650023583871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A085157 (Nat.choose 2 (A159799 (x + 1)).toNat)).sum

end

end A218450.P2942001650023583871

namespace A218450

/-- `∑{digits}[n+1, A085157(C(2, A159799(#+1)))]` -/
def P2942001650023583871.Spec : Prop :=
  ∀ n, P2942001650023583871.a n = A218450 (n + 1)

end A218450

/-! ## A218450.P5670755410383586897

`∑{digits}[n+1, A214054(A270572(#²+1)+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A218450

/-- `∑{digits}[n+1, A214054(A270572(#²+1)+1)]` -/
def P5670755410383586897.Spec : Prop :=
  ∀ n, P5670755410383586897.a n = A218450 (n + 1)

theorem P5670755410383586897.correct : P5670755410383586897.Spec := by
  intro n
  simp only [A218450, Nat.add_sub_cancel]

end A218450

/-!
# A218451: a(n) = 10^n minus its binary weight.

The programs for A218451, the canonical program `A218451.P7815581726965520850` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218451 has offset 0).

The definition of A218451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218451.P9999372347058728612

`10^n-A118738(n)`
-/

namespace A218451.P9999372347058728612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - A118738 n

end

end A218451.P9999372347058728612

namespace A218451

/-- `10^n-A118738(n)` -/
def P9999372347058728612.Spec : Prop :=
  ∀ n, P9999372347058728612.a n = A218451 n

end A218451

/-! ## A218451.P7815581726965520850

`10^n-A000120(5^n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A218451

/-- `10^n-A000120(5^n)` -/
def P7815581726965520850.Spec : Prop :=
  ∀ n, P7815581726965520850.a n = A218451 n

theorem P7815581726965520850.correct : P7815581726965520850.Spec := by
  intro n
  simp only [A218451]

end A218451

/-! ## A218451.P15830079806259700233

`10^n-(A123384(n)-(A118737(n)+n))`
-/

namespace A218451.P15830079806259700233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - (A123384 n - (A118737 n + (n : ℤ)))

end

end A218451.P15830079806259700233

namespace A218451

/-- `10^n-(A123384(n)-(A118737(n)+n))` -/
def P15830079806259700233.Spec : Prop :=
  ∀ n, P15830079806259700233.a n = A218451 n

end A218451

/-! ## A218451.P9175679155518888483

`A062397(n)-A053735(A276187(3*(n+1)))`
-/

namespace A218451.P9175679155518888483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062397 n - A053735 (A276187 (3 * (n + 1))).toNat

end

end A218451.P9175679155518888483

namespace A218451

/-- `A062397(n)-A053735(A276187(3*(n+1)))` -/
def P9175679155518888483.Spec : Prop :=
  ∀ n, P9175679155518888483.a n = A218451 n

end A218451

/-!
# A218454: Smallest number m such that A176352(m) = n.

The programs for A218454, there is no canonical definition to state claims against.
-/

/-! ## A218454.P12500119525822949128

`fo[A176352(n+1)-1]+1`
-/

namespace A218454.P12500119525822949128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176352 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A218454.P12500119525822949128

/-!
# A218459: a(n) is the smallest positive integer d such that prime(n) = x^2 + dy^2 has a solution (x,y) in integers.

The programs for A218459, there is no canonical definition to state claims against.
-/

/-! ## A218459.P1939897858202003321

`A084216(A028242(p?[A014681(n)]))`
-/

namespace A218459.P1939897858202003321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084216 (A028242 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A218459.P1939897858202003321

/-! ## A218459.P2811742609582216058

`A084216(A028242(p?[A001057(n)]))`
-/

namespace A218459.P2811742609582216058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084216 (A028242 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A218459.P2811742609582216058

/-! ## A218459.P18089943771615643129

`A049260(A078668(n+1))`
-/

namespace A218459.P18089943771615643129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049260 (A078668 (n + 1)).toNat

end

end A218459.P18089943771615643129

/-!
# A218460: a(n) = prime(n)^(prime(n + 1) - prime(n)).

The programs for A218460, the canonical program `A218460.P14858959770545242725` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218460 has offset 1).

The definition of A218460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218460.P14858959770545242725

`A000040(n+1)^A001223(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A218460

/-- `A000040(n+1)^A001223(n+1)` -/
def P14858959770545242725.Spec : Prop :=
  ∀ n, P14858959770545242725.a n = (A218460 (n + 1) : ℚ)

end A218460

/-! ## A218460.P5620113835250437673

`A000040(n+1)^(A000040(n+2)-A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218460.P5620113835250437673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A000040 (n + 2) - A000040 (n + 1) : ℤ)

end

end A218460.P5620113835250437673

namespace A218460

/-- `A000040(n+1)^(A000040(n+2)-A000040(n+1))` -/
def P5620113835250437673.Spec : Prop :=
  ∀ n, P5620113835250437673.a n = (A218460 (n + 1) : ℚ)

end A218460

/-! ## A218460.P13814101073172246353

`A171228(Δ[A007504(n)])`
-/

namespace A218460.P13814101073172246353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171228 (f1 (n + 1) - f1 n).toNat

end

end A218460.P13814101073172246353

namespace A218460

/-- `A171228(Δ[A007504(n)])` -/
def P13814101073172246353.Spec : Prop :=
  ∀ n, P13814101073172246353.a n = A218460 (n + 1)

end A218460

/-! ## A218460.P13431048294290104539

`Δ[A007504(n)]^A001223(n+1)`
-/

namespace A218460.P13431048294290104539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A001223 (n + 1) : ℤ)

end

end A218460.P13431048294290104539

namespace A218460

/-- `Δ[A007504(n)]^A001223(n+1)` -/
def P13431048294290104539.Spec : Prop :=
  ∀ n, P13431048294290104539.a n = (A218460 (n + 1) : ℚ)

end A218460

/-! ## A218460.P12602962472469988330

`Δ[A008348(n)]^A001223(n+1)`
-/

namespace A218460.P12602962472469988330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A001223 (n + 1) : ℤ)

end

end A218460.P12602962472469988330

namespace A218460

/-- `Δ[A008348(n)]^A001223(n+1)` -/
def P12602962472469988330.Spec : Prop :=
  ∀ n, P12602962472469988330.a n = (A218460 (n + 1) : ℚ)

end A218460

/-! ## A218460.P77369423026229621

`Δ[A064365(n)]^A001223(n+1)`
-/

namespace A218460.P77369423026229621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A001223 (n + 1) : ℤ)

end

end A218460.P77369423026229621

namespace A218460

/-- `Δ[A064365(n)]^A001223(n+1)` -/
def P77369423026229621.Spec : Prop :=
  ∀ n, P77369423026229621.a n = (A218460 (n + 1) : ℚ)

end A218460

/-! ## A218460.P12075580973411123033

`record[A162753(n)]^A001223(n+1)`
-/

namespace A218460.P12075580973411123033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A001223 (n + 1) : ℤ)

end

end A218460.P12075580973411123033

namespace A218460

/-- `record[A162753(n)]^A001223(n+1)` -/
def P12075580973411123033.Spec : Prop :=
  ∀ n, P12075580973411123033.a n = (A218460 (n + 1) : ℚ)

end A218460

/-! ## A218460.P8937732390565943898

`p?[A007989(n)]^A001223(n+1)`
-/

namespace A218460.P8937732390565943898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A001223 (n + 1) : ℤ)

end

end A218460.P8937732390565943898

namespace A218460

/-- `p?[A007989(n)]^A001223(n+1)` -/
def P8937732390565943898.Spec : Prop :=
  ∀ n, P8937732390565943898.a n = (A218460 (n + 1) : ℚ)

end A218460

/-! ## A218460.P13673244299334020408

`A000040(n+1)^A054541(n+2)`
-/

namespace A218460.P13673244299334020408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A054541 (n + 2) : ℤ)

end

end A218460.P13673244299334020408

namespace A218460

/-- `A000040(n+1)^A054541(n+2)` -/
def P13673244299334020408.Spec : Prop :=
  ∀ n, P13673244299334020408.a n = (A218460 (n + 1) : ℚ)

end A218460

/-! ## A218460.P6177231409193587344

`record[A006530(n+2)]^A001223(n+1)`
-/

namespace A218460.P6177231409193587344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A001223 (n + 1) : ℤ)

end

end A218460.P6177231409193587344

namespace A218460

/-- `record[A006530(n+2)]^A001223(n+1)` -/
def P6177231409193587344.Spec : Prop :=
  ∀ n, P6177231409193587344.a n = (A218460 (n + 1) : ℚ)

end A218460

/-! ## A218460.P17179347116175597790

`record[A014963(n+2)]^A001223(n+1)`
-/

namespace A218460.P17179347116175597790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A001223 (n + 1) : ℤ)

end

end A218460.P17179347116175597790

namespace A218460

/-- `record[A014963(n+2)]^A001223(n+1)` -/
def P17179347116175597790.Spec : Prop :=
  ∀ n, P17179347116175597790.a n = (A218460 (n + 1) : ℚ)

end A218460

/-! ## A218460.P1309883850750359905

`record[A020639(n+2)]^A001223(n+1)`
-/

namespace A218460.P1309883850750359905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A001223 (n + 1) : ℤ)

end

end A218460.P1309883850750359905

namespace A218460

/-- `record[A020639(n+2)]^A001223(n+1)` -/
def P1309883850750359905.Spec : Prop :=
  ∀ n, P1309883850750359905.a n = (A218460 (n + 1) : ℚ)

end A218460

/-! ## A218460.P12283987524358228610

`A000040(n+1)^(A076368(n+2)-1)`
-/

namespace A218460.P12283987524358228610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A076368 (n + 2) - 1 : ℤ)

end

end A218460.P12283987524358228610

namespace A218460

/-- `A000040(n+1)^(A076368(n+2)-1)` -/
def P12283987524358228610.Spec : Prop :=
  ∀ n, P12283987524358228610.a n = (A218460 (n + 1) : ℚ)

end A218460

/-! ## A218460.P790672243829538247

`record[A006530(n+2)]^Δ[A040976(n+1)]`
-/

namespace A218460.P790672243829538247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

end

end A218460.P790672243829538247

namespace A218460

/-- `record[A006530(n+2)]^Δ[A040976(n+1)]` -/
def P790672243829538247.Spec : Prop :=
  ∀ n, P790672243829538247.a n = (A218460 (n + 1) : ℚ)

end A218460

/-! ## A218460.P16191595711840348866

`record[A020639(n+2)]^Δ[A040976(n+1)]`
-/

namespace A218460.P16191595711840348866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

end

end A218460.P16191595711840348866

namespace A218460

/-- `record[A020639(n+2)]^Δ[A040976(n+1)]` -/
def P16191595711840348866.Spec : Prop :=
  ∀ n, P16191595711840348866.a n = (A218460 (n + 1) : ℚ)

end A218460

/-!
# A218461: Floor( prime(prime(n))/ prime(n) ).

The programs for A218461, the canonical program `A218461.P4528423443392532398` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218461 has offset 1).

The definition of A218461 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000040(A000040(n+1))/A000040(n+1))` (program `A218461.P4528423443392532398`, by `A218461.P4528423443392532398.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218461.P9982432580826872899

`floor(A006450(n+1)/A000040(n+1))`
-/

namespace A218461.P9982432580826872899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006450 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A218461.P9982432580826872899

namespace A218461

/-- `floor(A006450(n+1)/A000040(n+1))` -/
def P9982432580826872899.Spec : Prop :=
  ∀ n, P9982432580826872899.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P4528423443392532398

`floor(A000040(A000040(n+1))/A000040(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A218461

/-- `floor(A000040(A000040(n+1))/A000040(n+1))` -/
def P4528423443392532398.Spec : Prop :=
  ∀ n, P4528423443392532398.a n = A218461 (n + 1)

theorem P4528423443392532398.correct : P4528423443392532398.Spec := by
  intro n
  simp only [A218461, Nat.add_sub_cancel]

end A218461

/-! ## A218461.P15811693058968913831

`(A006450(n+1)-A076240(n+1))/A000040(n+1)`
-/

namespace A218461.P15811693058968913831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006450 (n + 1) - A076240 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A218461.P15811693058968913831

namespace A218461

/-- `(A006450(n+1)-A076240(n+1))/A000040(n+1)` -/
def P15811693058968913831.Spec : Prop :=
  ∀ n, P15811693058968913831.a n = (A218461 (n + 1) : ℚ)

end A218461

/-! ## A218461.P16212228507900816028

`floor(A006450(n+1)/A158611(n+3))`
-/

namespace A218461.P16212228507900816028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006450 (n + 1) : ℚ) / (A158611 (n + 3) : ℚ)⌋

end

end A218461.P16212228507900816028

namespace A218461

/-- `floor(A006450(n+1)/A158611(n+3))` -/
def P16212228507900816028.Spec : Prop :=
  ∀ n, P16212228507900816028.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P5345540044887419720

`A038605(Δ[A007504(n)])`
-/

namespace A218461.P5345540044887419720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (f1 (n + 1) - f1 n).toNat

end

end A218461.P5345540044887419720

namespace A218461

/-- `A038605(Δ[A007504(n)])` -/
def P5345540044887419720.Spec : Prop :=
  ∀ n, P5345540044887419720.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P2744552814050875404

`A076080(record[A051698(n)])`
-/

namespace A218461.P2744552814050875404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076080 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A218461.P2744552814050875404

namespace A218461

/-- `A076080(record[A051698(n)])` -/
def P2744552814050875404.Spec : Prop :=
  ∀ n, P2744552814050875404.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P8058150597807471811

`A127267(A006450(n+1))`
-/

namespace A218461.P8058150597807471811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127267 (A006450 (n + 1)).toNat

end

end A218461.P8058150597807471811

namespace A218461

/-- `A127267(A006450(n+1))` -/
def P8058150597807471811.Spec : Prop :=
  ∀ n, P8058150597807471811.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P7466773360149764018

`round(log(A229170(n+1)))`
-/

namespace A218461.P7466773360149764018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A229170 (n + 1) : ℝ))

end

end A218461.P7466773360149764018

namespace A218461

/-- `round(log(A229170(n+1)))` -/
def P7466773360149764018.Spec : Prop :=
  ∀ n, P7466773360149764018.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P11679149988063109197

`A110592(A007504(n))`
-/

namespace A218461.P11679149988063109197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A007504 n).toNat

end

end A218461.P11679149988063109197

namespace A218461

/-- `A110592(A007504(n))` -/
def P11679149988063109197.Spec : Prop :=
  ∀ n, P11679149988063109197.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P12770073069911456110

`floor(log2(A385098(n+2)))`
-/

namespace A218461.P12770073069911456110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A385098 (n + 2)).toNat

end

end A218461.P12770073069911456110

namespace A218461

/-- `floor(log2(A385098(n+2)))` -/
def P12770073069911456110.Spec : Prop :=
  ∀ n, (P12770073069911456110.a n : ℤ) = A218461 (n + 1)

end A218461

/-!
# A218462: Number of simple perfect matching graphs on 2n nodes.

The programs for A218462, there is no canonical definition to state claims against.
-/

/-! ## A218462.P10628213154341430796

`A218463(n+1)+A287652(n+1)`
-/

namespace A218462.P10628213154341430796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218463 (n + 1) + A287652 (n + 1)

end

end A218462.P10628213154341430796

/-!
# A218463: Number of simple connected perfect matching graphs on 2n nodes.

The programs for A218463, there is no canonical definition to state claims against.
-/

/-! ## A218463.P17960557838516113289

`A218462(n+1)-A287652(n+1)`
-/

namespace A218463.P17960557838516113289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218462 (n + 1) - A287652 (n + 1)

end

end A218463.P17960557838516113289

/-!
# A218464: Numbers m = (Sum_(j=1..k) tau(j)) with m divisible by k, where tau(j) is the number of divisors of j.

The programs for A218464, there is no canonical definition to state claims against.
-/

/-! ## A218464.P390724141480018297

`A006218(A050226(1+n))`
-/

namespace A218464.P390724141480018297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A050226 (1 + n)).toNat

end

end A218464.P390724141480018297

/-! ## A218464.P3599055289523271280

`∑{d}[A050226(n+1), A116477(#)]`
-/

namespace A218464.P3599055289523271280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A116477 d

end

end A218464.P3599055289523271280

/-! ## A218464.P8869751068720003850

`A054519(A050226(n+1))-A007318(∑[n])`
-/

namespace A218464.P8869751068720003850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (A050226 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218464.P8869751068720003850

/-! ## A218464.P18430845934967786179

`A054519(A050226(n+1))-A007318(C(n, 2))²`
-/

namespace A218464.P18430845934967786179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (A050226 (n + 1)).toNat - A007318 (Nat.choose n 2) ^ 2

end

end A218464.P18430845934967786179

/-! ## A218464.P16325902098222235997

`A054519(A050226(n+1))-A001511(2*n+1)`
-/

namespace A218464.P16325902098222235997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (A050226 (n + 1)).toNat - A001511 (2 * n + 1)

end

end A218464.P16325902098222235997

/-!
# A218466: Least k > n for which phi(k - n) = phi(k + n) or 0 if no such k exists.

The programs for A218466, there is no canonical definition to state claims against.
-/

/-! ## A218466.P11481980363451946314

`A007015(2*(1+n))+1+n`
-/

namespace A218466.P11481980363451946314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007015 (2 * (1 + n)) + 1 + (n : ℤ)

end

end A218466.P11481980363451946314

/-! ## A218466.P14670387282784075724

`A007015(A005843(1+n))+1+n`
-/

namespace A218466.P14670387282784075724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007015 (A005843 (1 + n)).toNat + (1 + n : ℤ)

end

end A218466.P14670387282784075724

/-! ## A218466.P16931833814074088649

`A007015(A317108(n+1))+1+n`
-/

namespace A218466.P16931833814074088649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007015 (A317108 (n + 1)).toNat + (1 + n : ℤ)

end

end A218466.P16931833814074088649

/-! ## A218466.P15861568983183740116

`n+1+A007015(A004275(n+2))`
-/

namespace A218466.P15861568983183740116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A007015 (A004275 (n + 2)).toNat

end

end A218466.P15861568983183740116

/-! ## A218466.P671255022042318685

`A020725(A007015(2*(n+1))+n)`
-/

namespace A218466.P671255022042318685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A007015 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A218466.P671255022042318685

/-!
# A218469: Number of partitions of n into at most three distinct primes (including 1).

The programs for A218469, there is no canonical definition to state claims against.
-/

/-! ## A218469.P17353470113427692168

`A347550(n)+A223893(n+1)`
-/

namespace A218469.P17353470113427692168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 n + A223893 (n + 1)

end

end A218469.P17353470113427692168

/-! ## A218469.P717145072569157488

`A223893(n+1)+floor(A002126(abs(1-n)+1)/2)`
-/

namespace A218469.P717145072569157488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223893 (n + 1) + ⌊(A002126 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2⌋

end

end A218469.P717145072569157488

/-! ## A218469.P3681692426747858327

`A347550(n)+A347550(n+1)+A125688(n+1)`
-/

namespace A218469.P3681692426747858327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 n + (A347550 (n + 1) + A125688 (n + 1))

end

end A218469.P3681692426747858327

/-! ## A218469.P14443124608511401729

`A347550(n)+A347550(n+1)+A068307(n+1)-A046926(n+1)`
-/

namespace A218469.P14443124608511401729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 n + (A347550 (n + 1) + (A068307 (n + 1) - A046926 (n + 1)))

end

end A218469.P14443124608511401729

/-! ## A218469.P5117267075202442662

`A223893(n+1)+A347552(n)-char[2*A000040(n+1)]`
-/

namespace A218469.P5117267075202442662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223893 (n + 1) + (A347552 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A218469.P5117267075202442662

/-!
# A218470: Partial sums of floor(n/9).

The programs for A218470, the canonical program `A218470.P7230141000628097536` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218470 has offset 0).

The definition of A218470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218470.P7230141000628097536

`ogf(x^9/(1-2x+x^2-x^9+2x^10-x^11))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218470

/-- `ogf(x^9/(1-2x+x^2-x^9+2x^10-x^11))` -/
def P7230141000628097536.Spec : Prop :=
  ∀ n, P7230141000628097536.a n = A218470 n

theorem P7230141000628097536.correct : P7230141000628097536.Spec := by
  intro n
  simp only [A218470]

end A218470

/-! ## A218470.P8071936231615541594

`∑[floor(n/9)]`
-/

namespace A218470.P8071936231615541594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218470.P8071936231615541594

namespace A218470

/-- `∑[floor(n/9)]` -/
def P8071936231615541594.Spec : Prop :=
  ∀ n, P8071936231615541594.a n = A218470 n

end A218470

/-! ## A218470.P604412391212446267

`floor(a(n-1)+n/9)` with `a(0)=0`
-/

namespace A218470.P604412391212446267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) / 9⌋

end

end A218470.P604412391212446267

namespace A218470

/-- `floor(a(n-1)+n/9)` -/
def P604412391212446267.Spec : Prop :=
  ∀ n, P604412391212446267.a n = A218470 n

end A218470

/-! ## A218470.P4698160250528899928

`∑[n+1-dr(n+1)]/9`
-/

namespace A218470.P4698160250528899928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 9

end

end A218470.P4698160250528899928

namespace A218470

/-- `∑[n+1-dr(n+1)]/9` -/
def P4698160250528899928.Spec : Prop :=
  ∀ n, P4698160250528899928.a n = (A218470 n : ℚ)

end A218470

/-! ## A218470.P12362627750377162204

`∑[∑[char[9*(n+1)]]]-and(2, n²)`
-/

namespace A218470.P12362627750377162204
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.land 2 (n ^ 2) : ℤ)

end

end A218470.P12362627750377162204

namespace A218470

/-- `∑[∑[char[9*(n+1)]]]-and(2, n²)` -/
def P12362627750377162204.Spec : Prop :=
  ∀ n, P12362627750377162204.a n = A218470 n

end A218470

/-! ## A218470.P7014832854123683596

`n-8+a(n-9)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=0`
-/

namespace A218470.P7014832854123683596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 0, 0, 0] fun n a =>
  (n : ℤ) - 8 + a (n - 9)

end

end A218470.P7014832854123683596

namespace A218470

/-- `n-8+a(n-9)` -/
def P7014832854123683596.Spec : Prop :=
  ∀ n, P7014832854123683596.a n = A218470 n

end A218470

/-! ## A218470.P10126742211566795908

`A008727(n)-(n+1)`
-/

namespace A218470.P10126742211566795908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008727 n - (n + 1 : ℤ)

end

end A218470.P10126742211566795908

namespace A218470

/-- `A008727(n)-(n+1)` -/
def P10126742211566795908.Spec : Prop :=
  ∀ n, P10126742211566795908.a n = A218470 n

end A218470

/-! ## A218470.P5634366588613435224

`floor((A008816(n)-n)/2)`
-/

namespace A218470.P5634366588613435224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008816 n - (n : ℤ) : ℚ) / 2⌋

end

end A218470.P5634366588613435224

namespace A218470

/-- `floor((A008816(n)-n)/2)` -/
def P5634366588613435224.Spec : Prop :=
  ∀ n, P5634366588613435224.a n = A218470 n

end A218470

/-! ## A218470.P6027342187976532821

`∑[comp[10*n]]-A000217(n+1)`
-/

namespace A218470.P6027342187976532821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000217 (n + 1)

end

end A218470.P6027342187976532821

namespace A218470

/-- `∑[comp[10*n]]-A000217(n+1)` -/
def P6027342187976532821.Spec : Prop :=
  ∀ n, P6027342187976532821.a n = A218470 n

end A218470

/-! ## A218470.P4979325613868814997

`∑[comp[10*n]%(n+1)]%A317186(n)`
-/

namespace A218470.P4979325613868814997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A317186 n)

end

end A218470.P4979325613868814997

namespace A218470

/-- `∑[comp[10*n]%(n+1)]%A317186(n)` -/
def P4979325613868814997.Spec : Prop :=
  ∀ n, P4979325613868814997.a n = A218470 n

end A218470

/-! ## A218470.P15463211671925635107

`A008816(n)-A008727(n)`
-/

namespace A218470.P15463211671925635107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008816 n - A008727 n

end

end A218470.P15463211671925635107

namespace A218470

/-- `A008816(n)-A008727(n)` -/
def P15463211671925635107.Spec : Prop :=
  ∀ n, P15463211671925635107.a n = A218470 n

end A218470

/-! ## A218470.P897950924146075518

`A000217(n)-∑[∑[A168182(n)]]`
-/

namespace A218470.P897950924146075518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168182 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218470.P897950924146075518

namespace A218470

/-- `A000217(n)-∑[∑[A168182(n)]]` -/
def P897950924146075518.Spec : Prop :=
  ∀ n, P897950924146075518.a n = A218470 n

end A218470

/-! ## A218470.P351056857587171536

`∑[n]-A033441(n+1)`
-/

namespace A218470.P351056857587171536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A033441 (n + 1)

end

end A218470.P351056857587171536

namespace A218470

/-- `∑[n]-A033441(n+1)` -/
def P351056857587171536.Spec : Prop :=
  ∀ n, P351056857587171536.a n = A218470 n

end A218470

/-! ## A218470.P8527923558446318449

`A002620(n+1)+A002620(n)-A033441(n+1)`
-/

namespace A218470.P8527923558446318449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + (A002620 n - A033441 (n + 1))

end

end A218470.P8527923558446318449

namespace A218470

/-- `A002620(n+1)+A002620(n)-A033441(n+1)` -/
def P8527923558446318449.Spec : Prop :=
  ∀ n, P8527923558446318449.a n = A218470 n

end A218470

/-! ## A218470.P2058549322184223200

`record[A008722(n)]-(n+1)`
-/

namespace A218470.P2058549322184223200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A218470.P2058549322184223200

namespace A218470

/-- `record[A008722(n)]-(n+1)` -/
def P2058549322184223200.Spec : Prop :=
  ∀ n, P2058549322184223200.a n = A218470 n

end A218470

/-! ## A218470.P9332345907772620153

`A008722(2*n)-(n+1)`
-/

namespace A218470.P9332345907772620153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008722 (2 * n) - (n + 1 : ℤ)

end

end A218470.P9332345907772620153

namespace A218470

/-- `A008722(2*n)-(n+1)` -/
def P9332345907772620153.Spec : Prop :=
  ∀ n, P9332345907772620153.a n = A218470 n

end A218470

/-! ## A218470.P7083904962821938744

`A004526(A008816(n)-n)`
-/

namespace A218470.P7083904962821938744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008816 n - (n : ℤ)).toNat

end

end A218470.P7083904962821938744

namespace A218470

/-- `A004526(A008816(n)-n)` -/
def P7083904962821938744.Spec : Prop :=
  ∀ n, P7083904962821938744.a n = A218470 n

end A218470

/-! ## A218470.P16546644633683410110

`A028242(A008816(n)-n)`
-/

namespace A218470.P16546644633683410110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A008816 n - (n : ℤ)).toNat

end

end A218470.P16546644633683410110

namespace A218470

/-- `A028242(A008816(n)-n)` -/
def P16546644633683410110.Spec : Prop :=
  ∀ n, P16546644633683410110.a n = A218470 n

end A218470

/-!
# A218471: a(n) = n*(7*n-3)/2.

The programs for A218471, the canonical program `A218471.P15875399518389417074` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218471 has offset 0).

The definition of A218471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7*n-3)/2` (program `A218471.P5107372076174761614`, by `A218471.P5107372076174761614.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218471.P5107372076174761614

`n*(7*n-3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218471.P5107372076174761614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((7 * n : ℤ) - 3) : ℚ) / 2

end

end A218471.P5107372076174761614

namespace A218471

/-- `n*(7*n-3)/2` -/
def P5107372076174761614.Spec : Prop :=
  ∀ n, P5107372076174761614.a n = (A218471 n : ℚ)

theorem P5107372076174761614.correct : P5107372076174761614.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A218471, Nat.add_sub_cancel, A218471.P5107372076174761614.a, A218471.P15875399518389417074.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A218471, Nat.add_sub_cancel, A218471.P5107372076174761614.a, A218471.P15875399518389417074.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A218471

/-! ## A218471.P14128765906469863660

`ogf((2x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A218471.P14128765906469863660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 5] [1, -3, 3, -1] n

end

end A218471.P14128765906469863660

namespace A218471

/-- `ogf((2x+5x^2)/(1-3x+3x^2-x^3))` -/
def P14128765906469863660.Spec : Prop :=
  ∀ n, P14128765906469863660.a n = A218471 n

end A218471

/-! ## A218471.P15875399518389417074

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=11`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218471

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P15875399518389417074.Spec : Prop :=
  ∀ n, P15875399518389417074.a n = A218471 n

theorem P15875399518389417074.correct : P15875399518389417074.Spec := by
  intro n
  simp only [A218471]

end A218471

/-! ## A218471.P15081537772534200597

`A001106(n)+n`
-/

namespace A218471.P15081537772534200597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n + (n : ℤ)

end

end A218471.P15081537772534200597

namespace A218471

/-- `A001106(n)+n` -/
def P15081537772534200597.Spec : Prop :=
  ∀ n, P15081537772534200597.a n = A218471 n

end A218471

/-! ## A218471.P5232759161340879516

`A022264(n)-n`
-/

namespace A218471.P5232759161340879516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n - (n : ℤ)

end

end A218471.P5232759161340879516

namespace A218471

/-- `A022264(n)-n` -/
def P5232759161340879516.Spec : Prop :=
  ∀ n, P5232759161340879516.a n = A218471 n

end A218471

/-! ## A218471.P11793393268096427598

`A022265(n)-2*n`
-/

namespace A218471.P11793393268096427598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n - (2 * n : ℤ)

end

end A218471.P11793393268096427598

namespace A218471

/-- `A022265(n)-2*n` -/
def P11793393268096427598.Spec : Prop :=
  ∀ n, P11793393268096427598.a n = A218471 n

end A218471

/-! ## A218471.P4873656546458979054

`A186029(n)-3*n`
-/

namespace A218471.P4873656546458979054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186029 n - (3 * n : ℤ)

end

end A218471.P4873656546458979054

namespace A218471

/-- `A186029(n)-3*n` -/
def P4873656546458979054.Spec : Prop :=
  ∀ n, P4873656546458979054.a n = A218471 n

end A218471

/-! ## A218471.P11830194580181367455

`A179986(n)-4*n`
-/

namespace A218471.P11830194580181367455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179986 n - (4 * n : ℤ)

end

end A218471.P11830194580181367455

namespace A218471

/-- `A179986(n)-4*n` -/
def P11830194580181367455.Spec : Prop :=
  ∀ n, P11830194580181367455.a n = A218471 n

end A218471

/-! ## A218471.P1978874923353880973

`A024966(n)-5*n`
-/

namespace A218471.P1978874923353880973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024966 n - (5 * n : ℤ)

end

end A218471.P1978874923353880973

namespace A218471

/-- `A024966(n)-5*n` -/
def P1978874923353880973.Spec : Prop :=
  ∀ n, P1978874923353880973.a n = A218471 n

end A218471

/-! ## A218471.P17191745481397580880

`A174738(7*n+1)`
-/

namespace A218471.P17191745481397580880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 (7 * n + 1)

end

end A218471.P17191745481397580880

namespace A218471

/-- `A174738(7*n+1)` -/
def P17191745481397580880.Spec : Prop :=
  ∀ n, P17191745481397580880.a n = A218471 n

end A218471

/-! ## A218471.P16989022995596991820

`C(3*n, 2)-n²`
-/

namespace A218471.P16989022995596991820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) 2 : ℤ) - (n ^ 2 : ℤ)

end

end A218471.P16989022995596991820

namespace A218471

/-- `C(3*n, 2)-n²` -/
def P16989022995596991820.Spec : Prop :=
  ∀ n, P16989022995596991820.a n = A218471 n

end A218471

/-! ## A218471.P14911836079414019927

`∑[a(n-1)+7]` with `a(0)=0, a(1)=2`
-/

namespace A218471.P14911836079414019927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218471.P14911836079414019927

namespace A218471

/-- `∑[a(n-1)+7]` -/
def P14911836079414019927.Spec : Prop :=
  ∀ n, (P14911836079414019927.a n : ℤ) = A218471 n

end A218471

/-! ## A218471.P1600796573403736040

`2*n+7*C(n, 2)`
-/

namespace A218471.P1600796573403736040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7 * Nat.choose n 2

end

end A218471.P1600796573403736040

namespace A218471

/-- `2*n+7*C(n, 2)` -/
def P1600796573403736040.Spec : Prop :=
  ∀ n, (P1600796573403736040.a n : ℤ) = A218471 n

end A218471

/-! ## A218471.P15237745607424410426

`∑[ogf((2x+5x^2)/(1-2x+x^2))]`
-/

namespace A218471.P15237745607424410426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218471.P15237745607424410426

namespace A218471

/-- `∑[ogf((2x+5x^2)/(1-2x+x^2))]` -/
def P15237745607424410426.Spec : Prop :=
  ∀ n, P15237745607424410426.a n = A218471 n

end A218471

/-! ## A218471.P7988876311050834417

`5-∑[a(n-1)-7]` with `a(0)=5`
-/

namespace A218471.P7988876311050834417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218471.P7988876311050834417

namespace A218471

/-- `5-∑[a(n-1)-7]` -/
def P7988876311050834417.Spec : Prop :=
  ∀ n, P7988876311050834417.a n = A218471 n

end A218471

/-! ## A218471.P9462323572723325655

`7*n+a(n-1)-5` with `a(0)=0`
-/

namespace A218471.P9462323572723325655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (7 * n : ℤ) + (a (n - 1) - 5)

end

end A218471.P9462323572723325655

namespace A218471

/-- `7*n+a(n-1)-5` -/
def P9462323572723325655.Spec : Prop :=
  ∀ n, P9462323572723325655.a n = A218471 n

end A218471

/-! ## A218471.P17099382456589214463

`7*n-(5-a(n-1))` with `a(0)=0`
-/

namespace A218471.P17099382456589214463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (7 * n : ℤ) - (5 - a (n - 1))

end

end A218471.P17099382456589214463

namespace A218471

/-- `7*n-(5-a(n-1))` -/
def P17099382456589214463.Spec : Prop :=
  ∀ n, P17099382456589214463.a n = A218471 n

end A218471

/-! ## A218471.P2186326880431294829

`2*C(2*n, 2)-C(n, 2)`
-/

namespace A218471.P2186326880431294829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (2 * n) 2 : ℤ) - (Nat.choose n 2 : ℤ)

end

end A218471.P2186326880431294829

namespace A218471

/-- `2*C(2*n, 2)-C(n, 2)` -/
def P2186326880431294829.Spec : Prop :=
  ∀ n, P2186326880431294829.a n = A218471 n

end A218471

/-! ## A218471.P13352333563191570911

`A000566(n)+n²`
-/

namespace A218471.P13352333563191570911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n + (n ^ 2 : ℤ)

end

end A218471.P13352333563191570911

namespace A218471

/-- `A000566(n)+n²` -/
def P13352333563191570911.Spec : Prop :=
  ∀ n, P13352333563191570911.a n = A218471 n

end A218471

/-! ## A218471.P10782883750370524678

`A062741(n)-n²`
-/

namespace A218471.P10782883750370524678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n - (n ^ 2 : ℤ)

end

end A218471.P10782883750370524678

namespace A218471

/-- `A062741(n)-n²` -/
def P10782883750370524678.Spec : Prop :=
  ∀ n, P10782883750370524678.a n = A218471 n

end A218471

/-!
# A218472: Number of 3n-length n-ary words, either empty or beginning with the first letter of the alphabet, that can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A218472, there is no canonical definition to state claims against.
-/

/-! ## A218472.P10653517467322924960

`A213027(∑[4*n])`
-/

namespace A218472.P10653517467322924960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218472.P10653517467322924960

/-! ## A218472.P7860984018458156115

`A213028(A046092(n))/A028310(n)`
-/

namespace A218472.P7860984018458156115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213028 (A046092 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A218472.P7860984018458156115

/-!
# A218473: Number of 3n-length 3-ary words, either empty or beginning with the first letter of the alphabet, that can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A218473, there is no canonical definition to state claims against.
-/

/-! ## A218473.P3436513591015325685

`A213027(∑[n+3]+n+3)`
-/

namespace A218473.P3436513591015325685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A218473.P3436513591015325685

/-!
# A218474: Number of 3n-length 4-ary words, either empty or beginning with the first letter of the alphabet, that can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A218474, there is no canonical definition to state claims against.
-/

/-! ## A218474.P7478087362784749912

`A213027(eq[15, T(n-1,k)+3])` with `a(0)=15, a(1)=-20`
-/

namespace A218474.P7478087362784749912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.rec [15, -20] fun n f2 =>
  SequenceMachineLib.triUp f2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218474.P7478087362784749912

/-!
# A218475: Number of 3n-length 5-ary words, either empty or beginning with the first letter of the alphabet, that can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A218475, there is no canonical definition to state claims against.
-/

/-! ## A218475.P2093583314742649913

`A213027(eq[3, row(n)-(col(n)+2)])`
-/

namespace A218475.P2093583314742649913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218475.P2093583314742649913

/-!
# A218476: Number of 3n-length 6-ary words, either empty or beginning with the first letter of the alphabet, that can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A218476, there is no canonical definition to state claims against.
-/

/-! ## A218476.P10743912454045336014

`A213027(eq[6, A025581(n)])`
-/

namespace A218476.P10743912454045336014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218476.P10743912454045336014

/-!
# A218477: Number of 3n-length 7-ary words, either empty or beginning with the first letter of the alphabet, that can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A218477, there is no canonical definition to state claims against.
-/

/-! ## A218477.P202826965851275697

`A213027(eq[3, row(n)-(col(n)+4)])`
-/

namespace A218477.P202826965851275697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n + 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218477.P202826965851275697

/-!
# A218478: Number of 3n-length 8-ary words, either empty or beginning with the first letter of the alphabet, that can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A218478, there is no canonical definition to state claims against.
-/

/-! ## A218478.P7107856274947713707

`A213027(eq[7, A116598(n)])`
-/

namespace A218478.P7107856274947713707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218478.P7107856274947713707

/-!
# A218479: Number of 3n-length 9-ary words, either empty or beginning with the first letter of the alphabet, that can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A218479, there is no canonical definition to state claims against.
-/

/-! ## A218479.P6492410245735144317

`A213027(eq[1, row(n)/(col(n)+9)])`
-/

namespace A218479.P6492410245735144317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℚ) / (SequenceMachineLib.triCol n + 9 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A218479.P6492410245735144317

/-!
# A218480: Number of 3n-length 10-ary words, either empty or beginning with the first letter of the alphabet, that can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A218480, there is no canonical definition to state claims against.
-/

/-! ## A218480.P12277940182367527629

`A213027(eq[10, A025581(n)])`
-/

namespace A218480.P12277940182367527629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218480.P12277940182367527629

/-!
# A218481: Binomial transform of the partition numbers (A000041).

The programs for A218481, there is no canonical definition to state claims against.
-/

/-! ## A218481.P3484899394849041337

`∑[A218482(n)]`
-/

namespace A218481.P3484899394849041337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218481.P3484899394849041337

/-! ## A218481.P5310340039837677623

`∑[A103446(n)]+1`
-/

namespace A218481.P5310340039837677623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103446 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A218481.P5310340039837677623

/-! ## A218481.P8365349758861004122

`∑[A103446(A028310(n))]`
-/

namespace A218481.P8365349758861004122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103446 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218481.P8365349758861004122

/-! ## A218481.P4942452401293066528

`A218482(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A218481.P4942452401293066528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A218482 n + a (A023443 n).toNat

end

end A218481.P4942452401293066528

/-! ## A218481.P16014029038069810132

`∑{#}[n, C(n, #)*A000041(#)]`
-/

namespace A218481.P16014029038069810132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A000041 k

end

end A218481.P16014029038069810132

/-! ## A218481.P10276125446294450738

`A398990(∑[n])`
-/

namespace A218481.P10276125446294450738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398990 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218481.P10276125446294450738

/-! ## A218481.P8394285701151269036

`record[A398990(n)]`
-/

namespace A218481.P8394285701151269036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218481.P8394285701151269036

/-! ## A218481.P8938978474835416793

`A137151(∑[n]+1)`
-/

namespace A218481.P8938978474835416793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137151 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218481.P8938978474835416793

/-! ## A218481.P6922941985765839661

`record[A137151(n+1)]`
-/

namespace A218481.P6922941985765839661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218481.P6922941985765839661

/-!
# A218482: First differences of the binomial transform of the partition numbers (A000041).

The programs for A218482, there is no canonical definition to state claims against.
-/

/-! ## A218482.P3867138685307410812

`A103446(floor(acot(n)+n))`
-/

namespace A218482.P3867138685307410812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103446 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A218482.P3867138685307410812

/-! ## A218482.P12771489329637637620

`gcd(floor(acot(n)), A103446(n))`
-/

namespace A218482.P12771489329637637620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A103446 n)

end

end A218482.P12771489329637637620

/-! ## A218482.P15865022964498343665

`A103446(n)+A000007(n)`
-/

namespace A218482.P15865022964498343665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103446 n + A000007 n

end

end A218482.P15865022964498343665

/-! ## A218482.P14966197623362637371

`max(A000009(n), A103446(n))`
-/

namespace A218482.P14966197623362637371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A000009 n) (A103446 n)

end

end A218482.P14966197623362637371

/-! ## A218482.P6286136079859625547

`max(A000041(n), A103446(n))`
-/

namespace A218482.P6286136079859625547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A000041 n) (A103446 n)

end

end A218482.P6286136079859625547

/-! ## A218482.P1787019321538591672

`max(A000219(n), A103446(n))`
-/

namespace A218482.P1787019321538591672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A000219 n) (A103446 n)

end

end A218482.P1787019321538591672

/-! ## A218482.P16982015377431752603

`max(A002865(n), A103446(n))`
-/

namespace A218482.P16982015377431752603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A002865 n) (A103446 n)

end

end A218482.P16982015377431752603

/-! ## A218482.P8373648230114110684

`max(A010815(n), A103446(n))`
-/

namespace A218482.P8373648230114110684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A010815 n) (A103446 n)

end

end A218482.P8373648230114110684

/-! ## A218482.P2928557480323775876

`max(A087897(n), A103446(n))`
-/

namespace A218482.P2928557480323775876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A087897 n) (A103446 n)

end

end A218482.P2928557480323775876

/-! ## A218482.P6555977848628951504

`max(A103446(n), A129519(n))`
-/

namespace A218482.P6555977848628951504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A103446 n) (A129519 n)

end

end A218482.P6555977848628951504

/-! ## A218482.P10681154275958255741

`max(A103446(n), A175804(n))`
-/

namespace A218482.P10681154275958255741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A103446 n) (A175804 n)

end

end A218482.P10681154275958255741

/-! ## A218482.P18167048081133315542

`max(A103446(n), A307311(n))`
-/

namespace A218482.P18167048081133315542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A103446 n) (A307311 n)

end

end A218482.P18167048081133315542

/-! ## A218482.P11182314178659545826

`abs(Δ[A218481(abs(1-n))])`
-/

namespace A218482.P11182314178659545826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218481 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A218482.P11182314178659545826

/-! ## A218482.P14937318522482816849

`∑{#}[n, C(n, #)*A087787(#)]`
-/

namespace A218482.P14937318522482816849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A087787 k

end

end A218482.P14937318522482816849

/-! ## A218482.P7724602599895194798

`∑{#}[n+1, C(n+1, #)*A270143(#)]`
-/

namespace A218482.P7724602599895194798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A270143 k

end

end A218482.P7724602599895194798

/-!
# A218483: Fermat pseudoprimes to base 2 which are congruent to 1 (mod 8).

The programs for A218483, there is no canonical definition to state claims against.
-/

/-! ## A218483.P5695267600201259716

`∩[8*n+9, A001567(n+1)]`
-/

namespace A218483.P5695267600201259716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218483.P5695267600201259716

/-! ## A218483.P2277964419269052373

`∩[A001567(n+1), A016813(A004277(n))]`
-/

namespace A218483.P2277964419269052373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A004277 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218483.P2277964419269052373

/-! ## A218483.P10208067860362196693

`∩[A001567(n+1), A005408(A008586(n))]`
-/

namespace A218483.P10208067860362196693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A008586 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218483.P10208067860362196693

/-! ## A218483.P3308528138331884886

`∩[A020742(A020742(2*n+1)), A020136(n+1)]`
-/

namespace A218483.P3308528138331884886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (A020742 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218483.P3308528138331884886

/-! ## A218483.P3655752067505655752

`filter[A178723(n+1), A342892(#)]`
-/

namespace A218483.P3655752067505655752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342892 (f1 j).toNat = 1) n)

end

end A218483.P3655752067505655752

/-!
# A218485: Positive numbers differing from next greater square by a square.

The programs for A218485, the canonical program `A218485.P8751466278838183106` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218485 has offset 1).

The definition of A218485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218485.P8751466278838183106

`record[A120070(2+A061579(n))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A218485

/-- `record[A120070(2+A061579(n))]` -/
def P8751466278838183106.Spec : Prop :=
  ∀ n, P8751466278838183106.a n = A218485 (n + 1)

theorem P8751466278838183106.correct : P8751466278838183106.Spec := by
  intro n
  simp only [A218485, Nat.add_sub_cancel]

end A218485

/-! ## A218485.P15052602884832177664

`record[A120070(A038722(1+n)+1)]`
-/

namespace A218485.P15052602884832177664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (A038722 (1 + n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218485.P15052602884832177664

namespace A218485

/-- `record[A120070(A038722(1+n)+1)]` -/
def P15052602884832177664.Spec : Prop :=
  ∀ n, P15052602884832177664.a n = A218485 (n + 1)

end A218485

/-! ## A218485.P18099872082115838252

`record[A002260(n+1)+2*A141419(n+1)]`
-/

namespace A218485.P18099872082115838252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + 2 * A141419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218485.P18099872082115838252

namespace A218485

/-- `record[A002260(n+1)+2*A141419(n+1)]` -/
def P18099872082115838252.Spec : Prop :=
  ∀ n, P18099872082115838252.a n = A218485 (n + 1)

end A218485

/-! ## A218485.P7298976545091337390

`record[A003057(n+2)²-A004736(n+1)²]`
-/

namespace A218485.P7298976545091337390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) ^ 2 - A004736 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218485.P7298976545091337390

namespace A218485

/-- `record[A003057(n+2)²-A004736(n+1)²]` -/
def P7298976545091337390.Spec : Prop :=
  ∀ n, P7298976545091337390.a n = A218485 (n + 1)

end A218485

/-! ## A218485.P18056108463135539971

`eq[A249142(n+1), A267848(n)]`
-/

namespace A218485.P18056108463135539971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267848 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218485.P18056108463135539971

namespace A218485

/-- `eq[A249142(n+1), A267848(n)]` -/
def P18056108463135539971.Spec : Prop :=
  ∀ n, (P18056108463135539971.a n : ℤ) = A218485 (n + 1)

end A218485

/-! ## A218485.P9782600654199868996

`eq[A249142(n+1), A267866(n)]`
-/

namespace A218485.P9782600654199868996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218485.P9782600654199868996

namespace A218485

/-- `eq[A249142(n+1), A267866(n)]` -/
def P9782600654199868996.Spec : Prop :=
  ∀ n, (P9782600654199868996.a n : ℤ) = A218485 (n + 1)

end A218485

/-! ## A218485.P13222090019019276903

`record[A316846(n+2)²-A316848(n+2)²]`
-/

namespace A218485.P13222090019019276903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316846 (n + 2) ^ 2 - A316848 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218485.P13222090019019276903

namespace A218485

/-- `record[A316846(n+2)²-A316848(n+2)²]` -/
def P13222090019019276903.Spec : Prop :=
  ∀ n, P13222090019019276903.a n = A218485 (n + 1)

end A218485

/-!
# A218486: Positive numbers differing from next 2 greater squares by squares.

The programs for A218486, there is no canonical definition to state claims against.
-/

/-! ## A218486.P7417687792141694035

`A000005(A054682(n+1))*A054734(n+2)`
-/

namespace A218486.P7417687792141694035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A054682 (n + 1)).toNat * A054734 (n + 2)

end

end A218486.P7417687792141694035

/-! ## A218486.P6774446485713882271

`A000005(A054699(n+1))*A054734(n+2)`
-/

namespace A218486.P6774446485713882271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A054699 (n + 1)).toNat * A054734 (n + 2)

end

end A218486.P6774446485713882271

/-! ## A218486.P5744256715110217635

`A054734(n+2)*A071187(A020466(n+1))`
-/

namespace A218486.P5744256715110217635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054734 (n + 2) * A071187 (A020466 (n + 1)).toNat

end

end A218486.P5744256715110217635

/-! ## A218486.P5944226828752304191

`A000005(A054695(n+2))*A054734(n+2)`
-/

namespace A218486.P5944226828752304191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A054695 (n + 2)).toNat * A054734 (n + 2)

end

end A218486.P5944226828752304191

/-!
# A218487: Positive numbers differing from next 3 greater squares by squares.

The programs for A218487, there is no canonical definition to state claims against.
-/

/-! ## A218487.P10243883471340422152

`A008574(A386302(n+2))`
-/

namespace A218487.P10243883471340422152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A386302 (n + 2)).toNat

end

end A218487.P10243883471340422152

/-!
# A218488: Positive numbers differing from next 4 greater squares by squares.

The programs for A218488, there is no canonical definition to state claims against.
-/

/-! ## A218488.P16547186211011171101

`A386303(n+1)*A396108(A057331(n))`
-/

namespace A218488.P16547186211011171101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386303 (n + 1) * A396108 (A057331 n).toNat

end

end A218488.P16547186211011171101

/-!
# A218491: Number of ways that prime(n) can be represented as the sum of four nonzero squares.

The programs for A218491, there is no canonical definition to state claims against.
-/

/-! ## A218491.P2633660360520049712

`A025428(p?[comp[n²]])`
-/

namespace A218491.P2633660360520049712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A218491.P2633660360520049712

/-! ## A218491.P998524218484418740

`A097203(A000040(n+1))`
-/

namespace A218491.P998524218484418740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097203 (A000040 (n + 1)).toNat

end

end A218491.P998524218484418740

/-! ## A218491.P1447830451432714736

`A227761(A296335(n+1))`
-/

namespace A218491.P1447830451432714736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227761 (A296335 (n + 1)).toNat

end

end A218491.P1447830451432714736

/-! ## A218491.P17601022767588121320

`A359326(A000072(n))`
-/

namespace A218491.P17601022767588121320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359326 (A000072 n).toNat

end

end A218491.P17601022767588121320

/-! ## A218491.P17248056677485645332

`A037808(A267966(n+1))`
-/

namespace A218491.P17248056677485645332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A267966 (n + 1)).toNat

end

end A218491.P17248056677485645332

/-!
# A218492: a(n) = lcm(1,...,L(n)), where L(n) = n-th Lucas number.

The programs for A218492, there is no canonical definition to state claims against.
-/

/-! ## A218492.P10654231582577772151

`A003418(n-∑[a(n-1)-(1-a(n-2))])` with `a(0)=-2, a(1)=2`
-/

namespace A218492.P10654231582577772151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218492.P10654231582577772151

/-! ## A218492.P1958451960315833346

`A139554(A156279(n))`
-/

namespace A218492.P1958451960315833346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139554 (A156279 n).toNat

end

end A218492.P1958451960315833346

/-! ## A218492.P10947795649982026035

`A139550(A380821(n))`
-/

namespace A218492.P10947795649982026035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (A380821 n).toNat

end

end A218492.P10947795649982026035

/-!
# A218494: Number of partitions of n^3 into squares.

The programs for A218494, there is no canonical definition to state claims against.
-/

/-! ## A218494.P16013725474813015267

`A001156(A000578(n))`
-/

namespace A218494.P16013725474813015267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A000578 n).toNat

end

end A218494.P16013725474813015267

/-! ## A218494.P2529604096101833772

`A001156(n^3)`
-/

namespace A218494.P2529604096101833772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (n ^ 3)

end

end A218494.P2529604096101833772

/-! ## A218494.P2040758008244648946

`A265260(A033430(n))`
-/

namespace A218494.P2040758008244648946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265260 (A033430 n).toNat

end

end A218494.P2040758008244648946

/-!
# A218495: Number of partitions of n^2 into positive cubes.

The programs for A218495, there is no canonical definition to state claims against.
-/

/-! ## A218495.P16950339513301972349

`A003108(n²)`
-/

namespace A218495.P16950339513301972349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (n ^ 2)

end

end A218495.P16950339513301972349

/-! ## A218495.P7443834650479375619

`A348522(n²)+A010057(n)`
-/

namespace A218495.P7443834650479375619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348522 (n ^ 2) + A010057 n

end

end A218495.P7443834650479375619

/-!
# A218496: 4th iteration of the hyperbinomial transform on the sequence of 1's.

The programs for A218496, the canonical program `A218496.P5154290119278907614` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218496 has offset 0).

The definition of A218496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218496.P5154290119278907614

`∑{#}[n, 4*(n-#+4)^(n-#-1)*C(n, #)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218496

/-- `∑{#}[n, 4*(n-#+4)^(n-#-1)*C(n, #)]` -/
def P5154290119278907614.Spec : Prop :=
  ∀ n, P5154290119278907614.a n = (A218496 n : ℚ)

end A218496

/-! ## A218496.P15071757477245071010

`A144303(A052905(n+2))`
-/

namespace A218496.P15071757477245071010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (A052905 (n + 2)).toNat

end

end A218496.P15071757477245071010

namespace A218496

/-- `A144303(A052905(n+2))` -/
def P15071757477245071010.Spec : Prop :=
  ∀ n, P15071757477245071010.a n = A218496 n

end A218496

/-!
# A218497: 5th iteration of the hyperbinomial transform on the sequence of 1's.

The programs for A218497, the canonical program `A218497.P16830024322957054868` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218497 has offset 0).

The definition of A218497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218497.P16830024322957054868

`∑{#}[n, 5*(n-#+5)^(n-#-1)*C(n, #)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218497

/-- `∑{#}[n, 5*(n-#+5)^(n-#-1)*C(n, #)]` -/
def P16830024322957054868.Spec : Prop :=
  ∀ n, P16830024322957054868.a n = (A218497 n : ℚ)

end A218497

/-! ## A218497.P5724711384896468731

`A144303(A055999(n+3))`
-/

namespace A218497.P5724711384896468731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (A055999 (n + 3)).toNat

end

end A218497.P5724711384896468731

namespace A218497

/-- `A144303(A055999(n+3))` -/
def P5724711384896468731.Spec : Prop :=
  ∀ n, P5724711384896468731.a n = A218497 n

end A218497

/-!
# A218498: 6th iteration of the hyperbinomial transform on the sequence of 1's.

The programs for A218498, the canonical program `A218498.P7249731931352288821` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218498 has offset 0).

The definition of A218498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218498.P7249731931352288821

`∑{#}[n, 6*(n-#+6)^(n-#-1)*C(n, #)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218498

/-- `∑{#}[n, 6*(n-#+6)^(n-#-1)*C(n, #)]` -/
def P7249731931352288821.Spec : Prop :=
  ∀ n, P7249731931352288821.a n = (A218498 n : ℚ)

end A218498

/-! ## A218498.P11966960033635957666

`A144303(eq[6, A025581(n)])`
-/

namespace A218498.P11966960033635957666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218498.P11966960033635957666

namespace A218498

/-- `A144303(eq[6, A025581(n)])` -/
def P11966960033635957666.Spec : Prop :=
  ∀ n, P11966960033635957666.a n = A218498 n

end A218498

/-!
# A218499: 7th iteration of the hyperbinomial transform on the sequence of 1's.

The programs for A218499, the canonical program `A218499.P2536905024441917802` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218499 has offset 0).

The definition of A218499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218499.P2536905024441917802

`∑{#}[n, 7*(n-#+7)^(n-#-1)*C(n, #)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A218499

/-- `∑{#}[n, 7*(n-#+7)^(n-#-1)*C(n, #)]` -/
def P2536905024441917802.Spec : Prop :=
  ∀ n, P2536905024441917802.a n = (A218499 n : ℚ)

end A218499

/-! ## A218499.P7684010443047479057

`A144303(A155212(n+4))`
-/

namespace A218499.P7684010443047479057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (A155212 (n + 4)).toNat

end

end A218499.P7684010443047479057

namespace A218499

/-- `A144303(A155212(n+4))` -/
def P7684010443047479057.Spec : Prop :=
  ∀ n, P7684010443047479057.a n = A218499 n

end A218499

