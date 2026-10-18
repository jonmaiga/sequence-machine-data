import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C025

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

/-! ## A218419.P11262863483797928549

`or(1, A218426(A001844(n)))`
-/

namespace A218419.P11262863483797928549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218426 (A001844 n).toNat)

end

end A218419.P11262863483797928549

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

/-! ## A218419.P7026493560235565906

`record[A003982(n)*A218426(n+1)]`
-/

namespace A218419.P7026493560235565906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A218426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218419.P7026493560235565906

/-!
# A218420: Number of n X 2 binary arrays with every 0 a horizontal, vertical or antidiagonal neighbor to some 1.

The programs for A218420, the canonical program `A218420.P955586380129084695` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218420 has offset 1).

The definition of A218420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218420.P955586380129084695

`3*a(n-1)+3*a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=3, a(1)=13, a(2)=49, a(3)=191, a(4)=737`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A218420

/-- `3*a(n-1)+3*a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P955586380129084695.Spec : Prop :=
  ∀ n, (P955586380129084695.a n : ℤ) = A218420 (n + 1)

theorem P955586380129084695.correct : P955586380129084695.Spec := by
  intro n
  simp only [A218420, Nat.add_sub_cancel]

end A218420

/-! ## A218420.P5106690600865816044

`A218199(2*(n+1))`
-/

namespace A218420.P5106690600865816044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218199 (2 * (n + 1))

end

end A218420.P5106690600865816044

namespace A218420

/-- `A218199(2*(n+1))` -/
def P5106690600865816044.Spec : Prop :=
  ∀ n, P5106690600865816044.a n = A218420 (n + 1)

end A218420

/-! ## A218420.P16609670888199050339

`or(1, A218199(n+2+n))`
-/

namespace A218420.P16609670888199050339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218199 (n + 2 + n))

end

end A218420.P16609670888199050339

namespace A218420

/-- `or(1, A218199(n+2+n))` -/
def P16609670888199050339.Spec : Prop :=
  ∀ n, P16609670888199050339.a n = A218420 (n + 1)

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

The programs for A218421, there is no canonical definition to state claims against.
-/

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

/-! ## A218421.P8107220629130597629

`or(1, A218426(A167614(n+1)))`
-/

namespace A218421.P8107220629130597629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218426 (A167614 (n + 1)).toNat)

end

end A218421.P8107220629130597629

/-! ## A218421.P13978131730036856440

`A218426(A167614(n+1))+A025444(n)`
-/

namespace A218421.P13978131730036856440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (A167614 (n + 1)).toNat + A025444 n

end

end A218421.P13978131730036856440

/-! ## A218421.P179076287340506075

`lcm(A033999(n), A218426(A167614(n+1)))`
-/

namespace A218421.P179076287340506075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A218426 (A167614 (n + 1)).toNat)

end

end A218421.P179076287340506075

/-! ## A218421.P12050239692869583367

`A218426(A167614(n+1))%A218422(n+1)`
-/

namespace A218421.P12050239692869583367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218426 (A167614 (n + 1)).toNat) (A218422 (n + 1))

end

end A218421.P12050239692869583367

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

/-! ## A218422.P10064238722510592612

`A218426(A141214(n)+7)`
-/

namespace A218422.P10064238722510592612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (A141214 n + 7).toNat

end

end A218422.P10064238722510592612

/-! ## A218422.P15999779545013051595

`A218426(A052905(n)+9)`
-/

namespace A218422.P15999779545013051595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (A052905 n + 9).toNat

end

end A218422.P15999779545013051595

/-! ## A218422.P8073922167715905570

`A218426(A055999(n)+10)`
-/

namespace A218422.P8073922167715905570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (A055999 n + 10).toNat

end

end A218422.P8073922167715905570

/-! ## A218422.P8097017828750079538

`A218426(A167614(n+2)+1)`
-/

namespace A218422.P8097017828750079538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (A167614 (n + 2) + 1).toNat

end

end A218422.P8097017828750079538

/-!
# A218423: Number of n X 5 binary arrays with every 0 a horizontal, vertical or antidiagonal neighbor to some 1.

The programs for A218423, there is no canonical definition to state claims against.
-/

/-! ## A218423.P8056085411452450942

`A218426(A374005(n+1))`
-/

namespace A218423.P8056085411452450942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (A374005 (n + 1)).toNat

end

end A218423.P8056085411452450942

/-! ## A218423.P9099866036155383533

`A218426(eq[7, A066657(n)])`
-/

namespace A218423.P9099866036155383533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218423.P9099866036155383533

/-! ## A218423.P13202874497916018902

`A218426(eq[6, A131818(n+1)])`
-/

namespace A218423.P13202874497916018902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218423.P13202874497916018902

/-! ## A218423.P10067113241679183537

`A218426(A000217(n+6)-6-2*n)`
-/

namespace A218423.P10067113241679183537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (A000217 (n + 6) - 6 - (2 * n : ℤ)).toNat

end

end A218423.P10067113241679183537

/-! ## A218423.P51691801205393977

`A218426(Δ[A264443(n)])`
-/

namespace A218423.P51691801205393977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (f1 (n + 1) - f1 n).toNat

end

end A218423.P51691801205393977

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

/-! ## A218424.P4937417494929717314

`A218426(eq[7, A131818(n+1)])`
-/

namespace A218424.P4937417494929717314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218424.P4937417494929717314

/-! ## A218424.P9953326809241155640

`A218426(A052905(n+3))`
-/

namespace A218424.P9953326809241155640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (A052905 (n + 3)).toNat

end

end A218424.P9953326809241155640

/-! ## A218424.P16581825686294861501

`A218426(eq[3, A219347(n)])`
-/

namespace A218424.P16581825686294861501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218424.P16581825686294861501

/-! ## A218424.P6022831263096648949

`A218426(eq[5, A193592(n)])`
-/

namespace A218424.P6022831263096648949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218424.P6022831263096648949

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

/-! ## A218425.P8076393409592842860

`A218426(eq[11, A066657(n)])`
-/

namespace A218425.P8076393409592842860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218425.P8076393409592842860

/-! ## A218425.P3609699564816091627

`A218426(eq[8, A131818(n+1)])`
-/

namespace A218425.P3609699564816091627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218425.P3609699564816091627

/-! ## A218425.P192303452661670578

`A218426(eq[4, A219347(n)])`
-/

namespace A218425.P192303452661670578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218425.P192303452661670578

/-! ## A218425.P12323845623638713777

`A218426(eq[6, A193592(n)])`
-/

namespace A218425.P12323845623638713777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218425.P12323845623638713777

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

/-! ## A218431.P3296560697905630583

`A152691(A009112(n+1)²)`
-/

namespace A218431.P3296560697905630583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 (A009112 (n + 1) ^ 2).toNat

end

end A218431.P3296560697905630583

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

/-! ## A218432.P15611975995777544901

`A208447(eq[5, A025581(n)])`
-/

namespace A218432.P15611975995777544901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218432.P15611975995777544901

/-! ## A218432.P124331402396690232

`A208447(eq[6, A193739(n)])`
-/

namespace A218432.P124331402396690232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218432.P124331402396690232

/-! ## A218432.P420053635517894178

`A208447(eq[11, A099375(n)])`
-/

namespace A218432.P420053635517894178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218432.P420053635517894178

/-! ## A218432.P4065928805318432623

`A208447(Δ[A023551(n+1)])`
-/

namespace A218432.P4065928805318432623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (f1 (n + 1) - f1 n).toNat

end

end A218432.P4065928805318432623

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

/-! ## A218433.P17742915711368695289

`A208447(eq[7, A193739(n)])`
-/

namespace A218433.P17742915711368695289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218433.P17742915711368695289

/-! ## A218433.P1189598908696677037

`A208447(eq[7, A195663(n)])`
-/

namespace A218433.P1189598908696677037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218433.P1189598908696677037

/-! ## A218433.P13480350949289794304

`A208447(eq[13, A099375(n)])`
-/

namespace A218433.P13480350949289794304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218433.P13480350949289794304

/-! ## A218433.P2075150693580174698

`A208447(eq[7, A004736(n+1)])`
-/

namespace A218433.P2075150693580174698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218433.P2075150693580174698

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

/-! ## A218434.P1090947650439230847

`A208447(eq[8, A193739(n)])`
-/

namespace A218434.P1090947650439230847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218434.P1090947650439230847

/-! ## A218434.P3830501494420761627

`A208447(eq[8, A195663(n)])`
-/

namespace A218434.P3830501494420761627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218434.P3830501494420761627

/-! ## A218434.P13115409779868461839

`A208447(eq[15, A099375(n)])`
-/

namespace A218434.P13115409779868461839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218434.P13115409779868461839

/-! ## A218434.P12240070981563681802

`A208447(eq[8, A004736(n+1)])`
-/

namespace A218434.P12240070981563681802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218434.P12240070981563681802

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

/-! ## A218435.P13272363933455895449

`A208447(eq[9, A193739(n)])`
-/

namespace A218435.P13272363933455895449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218435.P13272363933455895449

/-! ## A218435.P18986365656709790

`A208447(eq[9, A195663(n)])`
-/

namespace A218435.P18986365656709790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218435.P18986365656709790

/-! ## A218435.P11597370825888174848

`A208447(eq[17, A099375(n)])`
-/

namespace A218435.P11597370825888174848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218435.P11597370825888174848

/-! ## A218435.P3476314506779084144

`A208447(eq[9, A004736(n+1)])`
-/

namespace A218435.P3476314506779084144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218435.P3476314506779084144

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

/-! ## A218436.P17412521699991289934

`A208447(eq[9, A025581(n)])`
-/

namespace A218436.P17412521699991289934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218436.P17412521699991289934

/-! ## A218436.P9963122479430337845

`A208447(eq[10, A193739(n)])`
-/

namespace A218436.P9963122479430337845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218436.P9963122479430337845

/-! ## A218436.P453296549252188429

`A208447(eq[10, A195663(n)])`
-/

namespace A218436.P453296549252188429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218436.P453296549252188429

/-! ## A218436.P1754722962880983637

`A208447(eq[10, A004736(n+1)])`
-/

namespace A218436.P1754722962880983637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218436.P1754722962880983637

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

/-! ## A218437.P1173594637862674481

`A208447(eq[11, A193739(n)])`
-/

namespace A218437.P1173594637862674481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218437.P1173594637862674481

/-! ## A218437.P2174394136070684967

`A208447(eq[11, A195663(n)])`
-/

namespace A218437.P2174394136070684967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218437.P2174394136070684967

/-! ## A218437.P6093360408261561071

`A208447(eq[21, A099375(n)])`
-/

namespace A218437.P6093360408261561071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218437.P6093360408261561071

/-! ## A218437.P17583801003045858741

`A208447(eq[11, A004736(n+1)])`
-/

namespace A218437.P17583801003045858741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218437.P17583801003045858741

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

The programs for A218439, the canonical program `A218439.P6141881023382895010` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218439 has offset 1).

The definition of A218439 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001609(n+1)²` (program `A218439.P6141881023382895010`, by `A218439.P6141881023382895010.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218439.P6141881023382895010

`A001609(n+1)²`

The canonical program, it is in `Seq.B001.C006`.
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

/-! ## A218439.P11857222259002416594

`(A025461(A025461(n))+A001609(n+1))*A001609(n+1)`
-/

namespace A218439.P11857222259002416594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025461 (A025461 n).toNat + A001609 (n + 1)) * A001609 (n + 1)

end

end A218439.P11857222259002416594

namespace A218439

/-- `(A025461(A025461(n))+A001609(n+1))*A001609(n+1)` -/
def P11857222259002416594.Spec : Prop :=
  ∀ n, P11857222259002416594.a n = A218439 (n + 1)

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
# A218441: a(n) = A000108(n)*A001764(n).

The programs for A218441, the canonical program `A218441.P17376313493192679053` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218441 has offset 0).

The definition of A218441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218441.P17376313493192679053

`A000108(n)*A001764(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A218441

/-- `A000108(n)*A001764(n)` -/
def P17376313493192679053.Spec : Prop :=
  ∀ n, P17376313493192679053.a n = A218441 n

theorem P17376313493192679053.correct : P17376313493192679053.Spec := by
  intro n
  simp only [A218441]

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

/-! ## A218441.P7671550325371327036

`A001764(n)*A120588(n+1)`
-/

namespace A218441.P7671550325371327036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A120588 (n + 1)

end

end A218441.P7671550325371327036

namespace A218441

/-- `A001764(n)*A120588(n+1)` -/
def P7671550325371327036.Spec : Prop :=
  ∀ n, P7671550325371327036.a n = A218441 n

end A218441

/-! ## A218441.P6536951828936916620

`A001764(n)*A028303(2*n)`
-/

namespace A218441.P6536951828936916620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A028303 (2 * n)

end

end A218441.P6536951828936916620

namespace A218441

/-- `A001764(n)*A028303(2*n)` -/
def P6536951828936916620.Spec : Prop :=
  ∀ n, P6536951828936916620.a n = A218441 n

end A218441

/-! ## A218441.P2594444014430773972

`A000108(n)*A047749(2*n)`
-/

namespace A218441.P2594444014430773972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A047749 (2 * n)

end

end A218441.P2594444014430773972

namespace A218441

/-- `A000108(n)*A047749(2*n)` -/
def P2594444014430773972.Spec : Prop :=
  ∀ n, P2594444014430773972.a n = A218441 n

end A218441

/-! ## A218441.P6399312202954036751

`A001764(n)*A126120(2*n)`
-/

namespace A218441.P6399312202954036751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A126120 (2 * n)

end

end A218441.P6399312202954036751

namespace A218441

/-- `A001764(n)*A126120(2*n)` -/
def P6399312202954036751.Spec : Prop :=
  ∀ n, P6399312202954036751.a n = A218441 n

end A218441

/-! ## A218441.P9040262248021241513

`A047749(2*n)*A099363(2*n)`
-/

namespace A218441.P9040262248021241513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (2 * n) * A099363 (2 * n)

end

end A218441.P9040262248021241513

namespace A218441

/-- `A047749(2*n)*A099363(2*n)` -/
def P9040262248021241513.Spec : Prop :=
  ∀ n, P9040262248021241513.a n = A218441 n

end A218441

/-! ## A218441.P12457325244644211306

`A047749(2*n)*A208355(2*n)`
-/

namespace A218441.P12457325244644211306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (2 * n) * A208355 (2 * n)

end

end A218441.P12457325244644211306

namespace A218441

/-- `A047749(2*n)*A208355(2*n)` -/
def P12457325244644211306.Spec : Prop :=
  ∀ n, P12457325244644211306.a n = A218441 n

end A218441

/-!
# A218442: a(n) = Sum_{k=0..n} floor(n/(3*k + 1)).

The programs for A218442, the canonical program `A218442.P707209503399021461` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218442 has offset 0).

The definition of A218442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218442.P707209503399021461

`∑[∑{d}[n, (#%3)%2]]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A218442

/-- `∑[∑{d}[n, (#%3)%2]]` -/
def P707209503399021461.Spec : Prop :=
  ∀ n, (P707209503399021461.a n : ℤ) = A218442 n

theorem P707209503399021461.correct : P707209503399021461.Spec := by
  intro n
  simp only [A218442]

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

The programs for A218443, the canonical program `A218443.P12434672875628901916` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218443 has offset 0).

The definition of A218443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218443.P12434672875628901916

`∑[∑{d}[n, C(#, 2)%3]]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A218443

/-- `∑[∑{d}[n, C(#, 2)%3]]` -/
def P12434672875628901916.Spec : Prop :=
  ∀ n, (P12434672875628901916.a n : ℤ) = A218443 n

theorem P12434672875628901916.correct : P12434672875628901916.Spec := by
  intro n
  simp only [A218443]

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

/-! ## A218443.P15834724964029265074

`∑[A001822(A028310(n))]`
-/

namespace A218443.P15834724964029265074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218443.P15834724964029265074

namespace A218443

/-- `∑[A001822(A028310(n))]` -/
def P15834724964029265074.Spec : Prop :=
  ∀ n, P15834724964029265074.a n = A218443 n

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

The programs for A218444, the canonical program `A218444.P10091015155135104589` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218444 has offset 0).

The definition of A218444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218444.P10091015155135104589

`∑[A001876(n)]`

The canonical program, it is in `Seq.B002.C004`.
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

The programs for A218445, the canonical program `A218445.P17304662535675583263` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218445 has offset 0).

The definition of A218445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218445.P17304662535675583263

`∑[A001877(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A218445

/-- `∑[A001877(n)]` -/
def P17304662535675583263.Spec : Prop :=
  ∀ n, P17304662535675583263.a n = A218445 n

theorem P17304662535675583263.correct : P17304662535675583263.Spec := by
  intro n
  simp only [A218445]

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

The programs for A218446, the canonical program `A218446.P16595335050583582027` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218446 has offset 0).

The definition of A218446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218446.P16595335050583582027

`∑[A001878(n)]`

The canonical program, it is in `Seq.B002.C004`.
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

/-!
# A218447: a(n) = Sum_{k>=0} floor(n/(5*k + 4)).

The programs for A218447, the canonical program `A218447.P6360476239130993311` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218447 has offset 0).

The definition of A218447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218447.P6360476239130993311

`∑[∑{d}[n, C(#, 4)%5]]`

The canonical program, it is in `Seq.B000.C026`.
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

/-! ## A218449.P10510656827612109852

`A006099(A004273(n))`
-/

namespace A218449.P10510656827612109852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006099 (A004273 n).toNat

end

end A218449.P10510656827612109852

/-! ## A218449.P692297569988670011

`A006099(A004277(n)-1)`
-/

namespace A218449.P692297569988670011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006099 (A004277 n - 1).toNat

end

end A218449.P692297569988670011

/-! ## A218449.P8646318575211928087

`or(1, A022166(A001105(n)))`
-/

namespace A218449.P8646318575211928087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A022166 (A001105 n).toNat)

end

end A218449.P8646318575211928087

/-! ## A218449.P16981782361646647590

`A070202(n+1)+A022166(A001105(n))`
-/

namespace A218449.P16981782361646647590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070202 (n + 1) + A022166 (A001105 n).toNat

end

end A218449.P16981782361646647590

/-!
# A218450: Number of digits of n plus number of digits of n equal to 1, 2, 4, or 8.

The programs for A218450, there is no canonical definition to state claims against.
-/

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

/-! ## A218450.P5670755410383586897

`∑{digits}[n+1, A214054(A270572(#²+1)+1)]`
-/

namespace A218450.P5670755410383586897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A214054 (A270572 (x ^ 2 + 1) + 1).toNat).sum

end

end A218450.P5670755410383586897

/-!
# A218451: a(n) = 10^n minus its binary weight.

The programs for A218451, there is no canonical definition to state claims against.
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

/-! ## A218459.P658267032029674616

`A084216(A028242(A008578(n+2)))`
-/

namespace A218459.P658267032029674616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084216 (A028242 (A008578 (n + 2)).toNat).toNat

end

end A218459.P658267032029674616

/-! ## A218459.P11107939668284157731

`A084216(A028242(p?[A000961(n+1)]))`
-/

namespace A218459.P11107939668284157731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084216 (A028242 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A218459.P11107939668284157731

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

/-! ## A218459.P9836232964629760356

`A084216(A028242(p?[A000463(n+1)]))`
-/

namespace A218459.P9836232964629760356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084216 (A028242 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A218459.P9836232964629760356

/-!
# A218460: a(n) = prime(n)^(prime(n + 1) - prime(n)).

The programs for A218460, the canonical program `A218460.P14858959770545242725` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218460 has offset 1).

The definition of A218460 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A218460.P14858959770545242725

`A000040(n+1)^A001223(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A218460

/-- `A000040(n+1)^A001223(n+1)` -/
def P14858959770545242725.Spec : Prop :=
  ∀ n, P14858959770545242725.a n = (A218460 (n + 1) : ℚ)

end A218460

/-! ## A218460.P5114284073555195660

`A171228(A000040(n+1))`
-/

namespace A218460.P5114284073555195660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171228 (A000040 (n + 1)).toNat

end

end A218460.P5114284073555195660

namespace A218460

/-- `A171228(A000040(n+1))` -/
def P5114284073555195660.Spec : Prop :=
  ∀ n, P5114284073555195660.a n = A218460 (n + 1)

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

/-! ## A218460.P8608440992756499339

`A000040(n+1)^A219606(A005408(n))`
-/

namespace A218460.P8608440992756499339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A219606 (A005408 n).toNat : ℤ)

end

end A218460.P8608440992756499339

namespace A218460

/-- `A000040(n+1)^A219606(A005408(n))` -/
def P8608440992756499339.Spec : Prop :=
  ∀ n, P8608440992756499339.a n = (A218460 (n + 1) : ℚ)

end A218460

/-! ## A218460.P5620113835250437673

`A000040(n+1)^(A000040(n+2)-A000040(n+1))`
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

/-!
# A218461: Floor( prime(prime(n))/ prime(n) ).

The programs for A218461, the canonical program `A218461.P9982432580826872899` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218461 has offset 1).

The definition of A218461 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A218461.P9982432580826872899

`floor(A006450(n+1)/A000040(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A218461

/-- `floor(A006450(n+1)/A000040(n+1))` -/
def P9982432580826872899.Spec : Prop :=
  ∀ n, P9982432580826872899.a n = A218461 (n + 1)

theorem P9982432580826872899.correct : P9982432580826872899.Spec := by
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

/-! ## A218461.P691777377014369982

`A038605(p?[A014681(n)])`
-/

namespace A218461.P691777377014369982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A218461.P691777377014369982

namespace A218461

/-- `A038605(p?[A014681(n)])` -/
def P691777377014369982.Spec : Prop :=
  ∀ n, P691777377014369982.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P839927275252689549

`A038605(A000040(n+1))`
-/

namespace A218461.P839927275252689549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A000040 (n + 1)).toNat

end

end A218461.P839927275252689549

namespace A218461

/-- `A038605(A000040(n+1))` -/
def P839927275252689549.Spec : Prop :=
  ∀ n, P839927275252689549.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P17488452562052594351

`A076080(A006005(n+1))`
-/

namespace A218461.P17488452562052594351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076080 (A006005 (n + 1)).toNat

end

end A218461.P17488452562052594351

namespace A218461

/-- `A076080(A006005(n+1))` -/
def P17488452562052594351.Spec : Prop :=
  ∀ n, P17488452562052594351.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P3621410282502549414

`A038605(A063884(n+1))`
-/

namespace A218461.P3621410282502549414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A063884 (n + 1)).toNat

end

end A218461.P3621410282502549414

namespace A218461

/-- `A038605(A063884(n+1))` -/
def P3621410282502549414.Spec : Prop :=
  ∀ n, P3621410282502549414.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P722729148511243422

`A038605(A063904(n+1))`
-/

namespace A218461.P722729148511243422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A063904 (n + 1)).toNat

end

end A218461.P722729148511243422

namespace A218461

/-- `A038605(A063904(n+1))` -/
def P722729148511243422.Spec : Prop :=
  ∀ n, P722729148511243422.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P10402980898528785491

`A038605(A008578(n+2))`
-/

namespace A218461.P10402980898528785491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A008578 (n + 2)).toNat

end

end A218461.P10402980898528785491

namespace A218461

/-- `A038605(A008578(n+2))` -/
def P10402980898528785491.Spec : Prop :=
  ∀ n, P10402980898528785491.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P1660226406021939904

`A038605(eq[1, A032741(n)])`
-/

namespace A218461.P1660226406021939904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218461.P1660226406021939904

namespace A218461

/-- `A038605(eq[1, A032741(n)])` -/
def P1660226406021939904.Spec : Prop :=
  ∀ n, P1660226406021939904.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P2660554523123876321

`A038605(sqrt(A001248(n+1)))`
-/

namespace A218461.P2660554523123876321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A218461.P2660554523123876321

namespace A218461

/-- `A038605(sqrt(A001248(n+1)))` -/
def P2660554523123876321.Spec : Prop :=
  ∀ n, P2660554523123876321.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P9404925369059523223

`A038605(record[A006530(n+2)])`
-/

namespace A218461.P9404925369059523223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A218461.P9404925369059523223

namespace A218461

/-- `A038605(record[A006530(n+2)])` -/
def P9404925369059523223.Spec : Prop :=
  ∀ n, P9404925369059523223.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P4780895478664072094

`A038605(record[A014963(n+2)])`
-/

namespace A218461.P4780895478664072094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A218461.P4780895478664072094

namespace A218461

/-- `A038605(record[A014963(n+2)])` -/
def P4780895478664072094.Spec : Prop :=
  ∀ n, P4780895478664072094.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P17073997339522648564

`A038605(record[A020639(n+2)])`
-/

namespace A218461.P17073997339522648564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A218461.P17073997339522648564

namespace A218461

/-- `A038605(record[A020639(n+2)])` -/
def P17073997339522648564.Spec : Prop :=
  ∀ n, P17073997339522648564.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P1506296692250111439

`A076080(p?[A076034(n+1)])`
-/

namespace A218461.P1506296692250111439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076080 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A218461.P1506296692250111439

namespace A218461

/-- `A076080(p?[A076034(n+1)])` -/
def P1506296692250111439.Spec : Prop :=
  ∀ n, P1506296692250111439.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P2486097560726148207

`A038605(A006093(n+1)+1)`
-/

namespace A218461.P2486097560726148207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A006093 (n + 1) + 1).toNat

end

end A218461.P2486097560726148207

namespace A218461

/-- `A038605(A006093(n+1)+1)` -/
def P2486097560726148207.Spec : Prop :=
  ∀ n, P2486097560726148207.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P5450977579115038303

`A038605(A067747(2*n+1))`
-/

namespace A218461.P5450977579115038303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A067747 (2 * n + 1)).toNat

end

end A218461.P5450977579115038303

namespace A218461

/-- `A038605(A067747(2*n+1))` -/
def P5450977579115038303.Spec : Prop :=
  ∀ n, P5450977579115038303.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P10672306281044178952

`A038605(eq[1, A001222(n+1)]+1)`
-/

namespace A218461.P10672306281044178952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A218461.P10672306281044178952

namespace A218461

/-- `A038605(eq[1, A001222(n+1)]+1)` -/
def P10672306281044178952.Spec : Prop :=
  ∀ n, P10672306281044178952.a n = A218461 (n + 1)

end A218461

/-! ## A218461.P3937751923816945765

`A038605(eq[2, A000005(n+1)]+1)`
-/

namespace A218461.P3937751923816945765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A218461.P3937751923816945765

namespace A218461

/-- `A038605(eq[2, A000005(n+1)]+1)` -/
def P3937751923816945765.Spec : Prop :=
  ∀ n, P3937751923816945765.a n = A218461 (n + 1)

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

/-! ## A218464.P3151016316570904471

`A006218(A050226(n+1))`
-/

namespace A218464.P3151016316570904471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A050226 (n + 1)).toNat

end

end A218464.P3151016316570904471

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

/-! ## A218466.P13108245053957466229

`A007015(2*(n+1))+1+n`
-/

namespace A218466.P13108245053957466229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007015 (2 * (n + 1)) + 1 + (n : ℤ)

end

end A218466.P13108245053957466229

/-! ## A218466.P13670418353984489038

`A007015(A005843(n+1))+n+1`
-/

namespace A218466.P13670418353984489038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007015 (A005843 (n + 1)).toNat + (n + 1 : ℤ)

end

end A218466.P13670418353984489038

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

/-! ## A218469.P717145072569157488

`A223893(n+1)+floor(A002126(abs(1-n)+1)/2)`
-/

namespace A218469.P717145072569157488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223893 (n + 1) + ⌊(A002126 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2⌋

end

end A218469.P717145072569157488

/-! ## A218469.P17353470113427692168

`A347550(n)+A223893(n+1)`
-/

namespace A218469.P17353470113427692168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 n + A223893 (n + 1)

end

end A218469.P17353470113427692168

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

/-! ## A218469.P11245637502085130859

`A347550(n)+A010051(n+1)+A125688(n+1)+A117929(n+1)`
-/

namespace A218469.P11245637502085130859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 n + (A010051 (n + 1) + (A125688 (n + 1) + A117929 (n + 1)))

end

end A218469.P11245637502085130859

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

/-!
# A218470: Partial sums of floor(n/9).

The programs for A218470, the canonical program `A218470.P8071936231615541594` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218470 has offset 0).

The definition of A218470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218470.P8071936231615541594

`∑[floor(n/9)]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A218470

/-- `∑[floor(n/9)]` -/
def P8071936231615541594.Spec : Prop :=
  ∀ n, P8071936231615541594.a n = A218470 n

theorem P8071936231615541594.correct : P8071936231615541594.Spec := by
  intro n
  simp only [A218470]

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

/-! ## A218470.P1629827880051563079

`A004526(A008809(2*n)-n)`
-/

namespace A218470.P1629827880051563079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008809 (2 * n) - (n : ℤ)).toNat

end

end A218470.P1629827880051563079

namespace A218470

/-- `A004526(A008809(2*n)-n)` -/
def P1629827880051563079.Spec : Prop :=
  ∀ n, P1629827880051563079.a n = A218470 n

end A218470

/-! ## A218470.P11276847683064800884

`A028242(A008809(2*n)-n)`
-/

namespace A218470.P11276847683064800884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A008809 (2 * n) - (n : ℤ)).toNat

end

end A218470.P11276847683064800884

namespace A218470

/-- `A028242(A008809(2*n)-n)` -/
def P11276847683064800884.Spec : Prop :=
  ∀ n, P11276847683064800884.a n = A218470 n

end A218470

/-! ## A218470.P2452657842285407346

`A123108(A008809(2*n)-n)`
-/

namespace A218470.P2452657842285407346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A008809 (2 * n) - (n : ℤ)).toNat

end

end A218470.P2452657842285407346

namespace A218470

/-- `A123108(A008809(2*n)-n)` -/
def P2452657842285407346.Spec : Prop :=
  ∀ n, P2452657842285407346.a n = A218470 n

end A218470

/-!
# A218471: a(n) = n*(7*n-3)/2.

The programs for A218471, the canonical program `A218471.P15875399518389417074` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218471 has offset 0).

The definition of A218471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7*n-3)/2` (program `A218471.P9143916642939507295`, by `A218471.P9143916642939507295.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A218471.P9143916642939507295

`n*(7*n-3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218471.P9143916642939507295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((7 * n : ℤ) - 3 : ℚ) / 2)

end

end A218471.P9143916642939507295

namespace A218471

/-- `n*(7*n-3)/2` -/
def P9143916642939507295.Spec : Prop :=
  ∀ n, P9143916642939507295.a n = (A218471 n : ℚ)

theorem P9143916642939507295.correct : P9143916642939507295.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A218471, Nat.add_sub_cancel, A218471.P9143916642939507295.a, A218471.P15875399518389417074.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A218471, Nat.add_sub_cancel, A218471.P9143916642939507295.a, A218471.P15875399518389417074.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A218471

/-! ## A218471.P15875399518389417074

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=11`

The canonical program, it is in `Seq.B000.C026`.
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

/-! ## A218471.P484757522521819314

`A316466(n)/4`
-/

namespace A218471.P484757522521819314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316466 n : ℚ) / 4

end

end A218471.P484757522521819314

namespace A218471

/-- `A316466(n)/4` -/
def P484757522521819314.Spec : Prop :=
  ∀ n, P484757522521819314.a n = (A218471 n : ℚ)

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

/-! ## A218472.P2288674241098262828

`A213027(A046092(n))+A025469(n)`
-/

namespace A218472.P2288674241098262828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (A046092 n).toNat + A025469 n

end

end A218472.P2288674241098262828

/-! ## A218472.P7860984018458156115

`A213028(A046092(n))/A028310(n)`
-/

namespace A218472.P7860984018458156115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213028 (A046092 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A218472.P7860984018458156115

/-! ## A218472.P2019901959262014626

`gcd(A000038(n), A213027(A046092(n)))`
-/

namespace A218472.P2019901959262014626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A213027 (A046092 n).toNat)

end

end A218472.P2019901959262014626

/-! ## A218472.P12658912119183532733

`or(A000007(n), A213027(A046092(n)))`
-/

namespace A218472.P12658912119183532733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A213027 (A046092 n).toNat)

end

end A218472.P12658912119183532733

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

/-! ## A218473.P4091458953237296287

`or(1, A213027(A000217(n+4)-4))`
-/

namespace A218473.P4091458953237296287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A213027 (A000217 (n + 4) - 4).toNat)

end

end A218473.P4091458953237296287

/-! ## A218473.P1266315977134657187

`gcd(A000038(n), A213027(A000217(n+4)-4))`
-/

namespace A218473.P1266315977134657187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A213027 (A000217 (n + 4) - 4).toNat)

end

end A218473.P1266315977134657187

/-! ## A218473.P6369311190101928458

`lcm(A087960(n), A213027(A000217(n+4)-4))`
-/

namespace A218473.P6369311190101928458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A213027 (A000217 (n + 4) - 4).toNat)

end

end A218473.P6369311190101928458

/-! ## A218473.P2597424316259212111

`A052409(A000040(n+1))*A213027(A000217(n+4)-4)`
-/

namespace A218473.P2597424316259212111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A000040 (n + 1)).toNat * A213027 (A000217 (n + 4) - 4).toNat

end

end A218473.P2597424316259212111

/-!
# A218474: Number of 3n-length 4-ary words, either empty or beginning with the first letter of the alphabet, that can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A218474, there is no canonical definition to state claims against.
-/

/-! ## A218474.P3905015890811203310

`A213027(A052905(n+2))`
-/

namespace A218474.P3905015890811203310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (A052905 (n + 2)).toNat

end

end A218474.P3905015890811203310

/-! ## A218474.P9217655425238204727

`A213027(eq[4, A025581(n)])`
-/

namespace A218474.P9217655425238204727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218474.P9217655425238204727

/-! ## A218474.P11010384512362365420

`A213027(eq[9, A099375(n)])`
-/

namespace A218474.P11010384512362365420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218474.P11010384512362365420

/-! ## A218474.P17374613645566341795

`A213027(A000096(n+4)-4)`
-/

namespace A218474.P17374613645566341795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (A000096 (n + 4) - 4).toNat

end

end A218474.P17374613645566341795

/-! ## A218474.P6990385916879324516

`A213027(A000217(n+5)-5)`
-/

namespace A218474.P6990385916879324516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (A000217 (n + 5) - 5).toNat

end

end A218474.P6990385916879324516

/-! ## A218474.P5443274917038545899

`A213027(eq[5, A004736(n+1)])`
-/

namespace A218474.P5443274917038545899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218474.P5443274917038545899

/-! ## A218474.P14380324064251917258

`A213027(A167614(n+2)+A005408(n))`
-/

namespace A218474.P14380324064251917258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (A167614 (n + 2) + A005408 n).toNat

end

end A218474.P14380324064251917258

/-!
# A218475: Number of 3n-length 5-ary words, either empty or beginning with the first letter of the alphabet, that can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A218475, there is no canonical definition to state claims against.
-/

/-! ## A218475.P13355374281566689969

`A213027(eq[5, A025581(n)])`
-/

namespace A218475.P13355374281566689969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218475.P13355374281566689969

/-! ## A218475.P4596072259768399881

`A213027(eq[6, A193739(n)])`
-/

namespace A218475.P4596072259768399881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218475.P4596072259768399881

/-! ## A218475.P6295185684535007789

`A213027(eq[11, A099375(n)])`
-/

namespace A218475.P6295185684535007789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218475.P6295185684535007789

/-! ## A218475.P824694640694063673

`A213027(A052905(n+3)-1)`
-/

namespace A218475.P824694640694063673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (A052905 (n + 3) - 1).toNat

end

end A218475.P824694640694063673

/-! ## A218475.P17042390910439475327

`A213027(eq[6, A004736(n+1)])`
-/

namespace A218475.P17042390910439475327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218475.P17042390910439475327

/-! ## A218475.P5611915942506703034

`A213027(eq[6, A134231(n+1)])`
-/

namespace A218475.P5611915942506703034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218475.P5611915942506703034

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

/-! ## A218476.P15501774631346500985

`A213027(eq[7, A193739(n)])`
-/

namespace A218476.P15501774631346500985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218476.P15501774631346500985

/-! ## A218476.P4005801535617372338

`A213027(eq[7, A195663(n)])`
-/

namespace A218476.P4005801535617372338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218476.P4005801535617372338

/-! ## A218476.P13057236803297520328

`A213027(eq[7, A004736(n+1)])`
-/

namespace A218476.P13057236803297520328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218476.P13057236803297520328

/-! ## A218476.P12216988827205762445

`A213027(eq[11, A027293(n+1)])`
-/

namespace A218476.P12216988827205762445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218476.P12216988827205762445

/-!
# A218477: Number of 3n-length 7-ary words, either empty or beginning with the first letter of the alphabet, that can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A218477, there is no canonical definition to state claims against.
-/

/-! ## A218477.P16587409369132388475

`A213027(eq[7, A025581(n)])`
-/

namespace A218477.P16587409369132388475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218477.P16587409369132388475

/-! ## A218477.P6953446459952427972

`A213027(eq[8, A193739(n)])`
-/

namespace A218477.P6953446459952427972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218477.P6953446459952427972

/-! ## A218477.P16221804483531140906

`A213027(A000217(n+8)-8)`
-/

namespace A218477.P16221804483531140906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (A000217 (n + 8) - 8).toNat

end

end A218477.P16221804483531140906

/-! ## A218477.P15206340053820203596

`A213027(eq[8, A004736(n+1)])`
-/

namespace A218477.P15206340053820203596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218477.P15206340053820203596

/-! ## A218477.P9370472652729644004

`A213027(eq[8, A134231(n+1)])`
-/

namespace A218477.P9370472652729644004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218477.P9370472652729644004

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

/-! ## A218478.P12307415702799179111

`A213027(eq[8, A025581(n)])`
-/

namespace A218478.P12307415702799179111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218478.P12307415702799179111

/-! ## A218478.P3258872891373854793

`A213027(eq[9, A193739(n)])`
-/

namespace A218478.P3258872891373854793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218478.P3258872891373854793

/-! ## A218478.P14105535437199797161

`A213027(eq[9, A195663(n)])`
-/

namespace A218478.P14105535437199797161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218478.P14105535437199797161

/-! ## A218478.P18121644571378739295

`A213027(eq[17, A099375(n)])`
-/

namespace A218478.P18121644571378739295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218478.P18121644571378739295

/-! ## A218478.P13966852288227135544

`A213027(eq[9, A004736(n+1)])`
-/

namespace A218478.P13966852288227135544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218478.P13966852288227135544

/-! ## A218478.P11169722440655184068

`A213027(eq[9, A243070(n+1)])`
-/

namespace A218478.P11169722440655184068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218478.P11169722440655184068

/-!
# A218479: Number of 3n-length 9-ary words, either empty or beginning with the first letter of the alphabet, that can be built by repeatedly inserting triples of identical letters into the initially empty word.

The programs for A218479, there is no canonical definition to state claims against.
-/

/-! ## A218479.P9223444525831403796

`A213027(eq[8, A116598(n)])`
-/

namespace A218479.P9223444525831403796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218479.P9223444525831403796

/-! ## A218479.P2921872587734777620

`A213027(eq[9, A025581(n)])`
-/

namespace A218479.P2921872587734777620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218479.P2921872587734777620

/-! ## A218479.P267463602467108749

`A213027(eq[10, A193739(n)])`
-/

namespace A218479.P267463602467108749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218479.P267463602467108749

/-! ## A218479.P11788243253715776883

`A213027(eq[10, A195663(n)])`
-/

namespace A218479.P11788243253715776883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218479.P11788243253715776883

/-! ## A218479.P7181071065163060351

`A213027(eq[19, A099375(n)])`
-/

namespace A218479.P7181071065163060351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218479.P7181071065163060351

/-! ## A218479.P15441292317502423063

`A213027(eq[10, A004736(n+1)])`
-/

namespace A218479.P15441292317502423063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218479.P15441292317502423063

/-! ## A218479.P15564986099774402464

`A213027(eq[10, A134231(n+1)])`
-/

namespace A218479.P15564986099774402464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218479.P15564986099774402464

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

/-! ## A218480.P2146178976824265867

`A213027(eq[11, A193739(n)])`
-/

namespace A218480.P2146178976824265867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218480.P2146178976824265867

/-! ## A218480.P9240863327493366992

`A213027(eq[11, A195663(n)])`
-/

namespace A218480.P9240863327493366992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218480.P9240863327493366992

/-! ## A218480.P16563631121032803772

`A213027(eq[12, A116598(n)])`
-/

namespace A218480.P16563631121032803772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218480.P16563631121032803772

/-! ## A218480.P8144754020496221158

`A213027(eq[11, A004736(n+1)])`
-/

namespace A218480.P8144754020496221158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218480.P8144754020496221158

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

/-! ## A218481.P12895560672749144994

`2*a(n-1)+A033999(n)²*A292622(2*n²)` with `a(0)=1`
-/

namespace A218481.P12895560672749144994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A033999 n ^ 2 * A292622 (2 * n ^ 2)

end

end A218481.P12895560672749144994

/-! ## A218481.P5753256663407672134

`2*a(n-1)+A007318(A000096(n))*A292622(2*n²)` with `a(0)=1`
-/

namespace A218481.P5753256663407672134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A007318 (A000096 n).toNat * A292622 (2 * n ^ 2)

end

end A218481.P5753256663407672134

/-! ## A218481.P9869117721160704512

`2*a(n-1)+A134451(A338934(n))*A292622(2*n²)` with `a(0)=1`
-/

namespace A218481.P9869117721160704512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A134451 (A338934 n).toNat * A292622 (2 * n ^ 2)

end

end A218481.P9869117721160704512

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

/-! ## A218482.P9427079873622632456

`A103446(n^floor(atan(n)))`
-/

namespace A218482.P9427079873622632456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103446 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A218482.P9427079873622632456

/-! ## A218482.P14416863306008733736

`A103446(C(n, floor(atan(n))))`
-/

namespace A218482.P14416863306008733736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103446 (Nat.choose n ⌊Real.arctan (n : ℝ)⌋.toNat)

end

end A218482.P14416863306008733736

/-! ## A218482.P12771489329637637620

`gcd(floor(acot(n)), A103446(n))`
-/

namespace A218482.P12771489329637637620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A103446 n)

end

end A218482.P12771489329637637620

/-! ## A218482.P10244151188637718440

`A103446(A028310(n))`
-/

namespace A218482.P10244151188637718440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103446 (A028310 n).toNat

end

end A218482.P10244151188637718440

/-! ## A218482.P3554286056287999369

`A103446(A000007(n)+n)`
-/

namespace A218482.P3554286056287999369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103446 (A000007 n + (n : ℤ)).toNat

end

end A218482.P3554286056287999369

/-! ## A218482.P2325964273989434103

`A103446(xor(n, A000007(n)))`
-/

namespace A218482.P2325964273989434103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103446 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A218482.P2325964273989434103

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

/-! ## A218482.P1000142774060618255

`A103446(A151878(n)+n)`
-/

namespace A218482.P1000142774060618255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103446 (A151878 n + (n : ℤ)).toNat

end

end A218482.P1000142774060618255

/-! ## A218482.P18260130125918618739

`A103446(xor(n, A151878(n)))`
-/

namespace A218482.P18260130125918618739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103446 (Int.xor (n : ℤ) (A151878 n)).toNat

end

end A218482.P18260130125918618739

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

/-! ## A218483.P15516270781238985995

`∩[4*A020742(n)-3, A122781(n+1)]`
-/

namespace A218483.P15516270781238985995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020742 n - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218483.P15516270781238985995

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

/-!
# A218485: Positive numbers differing from next greater square by a square.

The programs for A218485, the canonical program `A218485.P11683830369572626684` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218485 has offset 1).

The definition of A218485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218485.P11683830369572626684

`record[A120070(A061579(n)+2)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A218485

/-- `record[A120070(A061579(n)+2)]` -/
def P11683830369572626684.Spec : Prop :=
  ∀ n, P11683830369572626684.a n = A218485 (n + 1)

theorem P11683830369572626684.correct : P11683830369572626684.Spec := by
  intro n
  simp only [A218485, Nat.add_sub_cancel]

end A218485

/-! ## A218485.P1972399614580307880

`record[A120070(A038722(n+1)+1)]`
-/

namespace A218485.P1972399614580307880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (A038722 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218485.P1972399614580307880

namespace A218485

/-- `record[A120070(A038722(n+1)+1)]` -/
def P1972399614580307880.Spec : Prop :=
  ∀ n, P1972399614580307880.a n = A218485 (n + 1)

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

/-! ## A218486.P959089080620466007

`A008586(A053990(n+2))%A346919(3*(n+1))`
-/

namespace A218486.P959089080620466007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008586 (A053990 (n + 2)).toNat) (A346919 (3 * (n + 1)))

end

end A218486.P959089080620466007

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

/-! ## A218491.P4929531599621595763

`A025428(Δ[A007504(n)])`
-/

namespace A218491.P4929531599621595763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (f1 (n + 1) - f1 n).toNat

end

end A218491.P4929531599621595763

/-! ## A218491.P6195152329920121463

`A025428(A000040(n+1))`
-/

namespace A218491.P6195152329920121463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A000040 (n + 1)).toNat

end

end A218491.P6195152329920121463

/-! ## A218491.P10661416025198279498

`A025428(A006005(n+1))`
-/

namespace A218491.P10661416025198279498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A006005 (n + 1)).toNat

end

end A218491.P10661416025198279498

/-! ## A218491.P3063383146914596402

`A025428(A161847(n+1))`
-/

namespace A218491.P3063383146914596402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A161847 (n + 1)).toNat

end

end A218491.P3063383146914596402

/-! ## A218491.P5344715293715916150

`A025428(A171577(n+1))`
-/

namespace A218491.P5344715293715916150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A171577 (n + 1)).toNat

end

end A218491.P5344715293715916150

/-! ## A218491.P4714494497426926631

`A025428(A008578(n+2))`
-/

namespace A218491.P4714494497426926631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A008578 (n + 2)).toNat

end

end A218491.P4714494497426926631

/-! ## A218491.P445920998550055967

`A025428(A075643(n+2))`
-/

namespace A218491.P445920998550055967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A075643 (n + 2)).toNat

end

end A218491.P445920998550055967

/-! ## A218491.P5204588122236343232

`A025428(A116974(n+2))`
-/

namespace A218491.P5204588122236343232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A116974 (n + 2)).toNat

end

end A218491.P5204588122236343232

/-! ## A218491.P5796935410484514598

`A025428(A171525(n+2))`
-/

namespace A218491.P5796935410484514598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A171525 (n + 2)).toNat

end

end A218491.P5796935410484514598

/-! ## A218491.P2517534582222281647

`A025428(A182986(n+2))`
-/

namespace A218491.P2517534582222281647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A182986 (n + 2)).toNat

end

end A218491.P2517534582222281647

/-! ## A218491.P18237256861927359157

`A025428(sqrt(A001248(n+1)))`
-/

namespace A218491.P18237256861927359157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A218491.P18237256861927359157

/-! ## A218491.P188591326322777721

`A025428(record[A006530(n+2)])`
-/

namespace A218491.P188591326322777721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A218491.P188591326322777721

/-! ## A218491.P13909690816555883640

`A025428(record[A014963(n+2)])`
-/

namespace A218491.P13909690816555883640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A218491.P13909690816555883640

/-! ## A218491.P13474518806338295320

`A025428(record[A020639(n+2)])`
-/

namespace A218491.P13474518806338295320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A218491.P13474518806338295320

/-! ## A218491.P1034390481828437044

`A097203(record[A006530(n+2)])`
-/

namespace A218491.P1034390481828437044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A218491.P1034390481828437044

/-! ## A218491.P17684081976116601946

`A097203(record[A014963(n+2)])`
-/

namespace A218491.P17684081976116601946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A218491.P17684081976116601946

/-! ## A218491.P813169918420241838

`A097203(record[A020639(n+2)])`
-/

namespace A218491.P813169918420241838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A218491.P813169918420241838

/-! ## A218491.P2224774247725855227

`A025428(eq[1, A001222(n+1)]+1)`
-/

namespace A218491.P2224774247725855227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A218491.P2224774247725855227

/-! ## A218491.P5780857552074662145

`A025428(eq[1, A010051(n+1)]+1)`
-/

namespace A218491.P5780857552074662145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A218491.P5780857552074662145

/-!
# A218492: a(n) = lcm(1,...,L(n)), where L(n) = n-th Lucas number.

The programs for A218492, there is no canonical definition to state claims against.
-/

/-! ## A218492.P11185668294210202095

`A003418(A000032(n))`
-/

namespace A218492.P11185668294210202095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A000032 n).toNat

end

end A218492.P11185668294210202095

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

/-! ## A218492.P1580521247850884721

`A139554(4*A000032(n))`
-/

namespace A218492.P1580521247850884721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139554 (4 * A000032 n).toNat

end

end A218492.P1580521247850884721

/-! ## A218492.P8746796380772227470

`A003418(A152163(n)-A152163(n+4))`
-/

namespace A218492.P8746796380772227470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A152163 n - A152163 (n + 4)).toNat

end

end A218492.P8746796380772227470

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

/-! ## A218494.P7762535847248306410

`or(char[1], A001156(n*n²))`
-/

namespace A218494.P7762535847248306410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001156 (n * n ^ 2))

end

end A218494.P7762535847248306410

/-! ## A218494.P11039527376818550188

`A001156(n*n²)+A000035(2*n)`
-/

namespace A218494.P11039527376818550188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (n * n ^ 2) + A000035 (2 * n)

end

end A218494.P11039527376818550188

/-! ## A218494.P2109366041160238687

`A051709(Δ[floor(n*(γ+1))])+A001156(n*n²)`
-/

namespace A218494.P2109366041160238687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.eulerMascheroniConstant + 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (f1 (n + 1) - f1 n).toNat + A001156 (n * n ^ 2)

end

end A218494.P2109366041160238687

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

/-! ## A218495.P856479309979174865

`A003108(n*n)*A003108(A025458(n))`
-/

namespace A218495.P856479309979174865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (n * n) * A003108 (A025458 n).toNat

end

end A218495.P856479309979174865

/-! ## A218495.P13934899528204226018

`A003108(n*n)*A003108(A025459(n))`
-/

namespace A218495.P13934899528204226018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (n * n) * A003108 (A025459 n).toNat

end

end A218495.P13934899528204226018

/-! ## A218495.P7614292994778813222

`A003108(n*n)*A003108(A025460(n))`
-/

namespace A218495.P7614292994778813222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (n * n) * A003108 (A025460 n).toNat

end

end A218495.P7614292994778813222

/-! ## A218495.P4802599750214622028

`A003108(n*n)*A003108(A279760(n))`
-/

namespace A218495.P4802599750214622028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (n * n) * A003108 (A279760 n).toNat

end

end A218495.P4802599750214622028

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

The programs for A218496, there is no canonical definition to state claims against.
-/

/-! ## A218496.P15071757477245071010

`A144303(A052905(n+2))`
-/

namespace A218496.P15071757477245071010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (A052905 (n + 2)).toNat

end

end A218496.P15071757477245071010

/-! ## A218496.P6349869758821000028

`A144303(eq[4, A025581(n)])`
-/

namespace A218496.P6349869758821000028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218496.P6349869758821000028

/-! ## A218496.P10595985986287910019

`A144303(eq[5, A193739(n)])`
-/

namespace A218496.P10595985986287910019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218496.P10595985986287910019

/-! ## A218496.P10246074840391943222

`A144303(eq[9, A099375(n)])`
-/

namespace A218496.P10246074840391943222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218496.P10246074840391943222

/-! ## A218496.P1344087595320729250

`A144303(eq[16, A130321(n)])`
-/

namespace A218496.P1344087595320729250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218496.P1344087595320729250

/-! ## A218496.P14163594012600778975

`A144303(eq[5, A004736(n+1)])`
-/

namespace A218496.P14163594012600778975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218496.P14163594012600778975

/-!
# A218497: 5th iteration of the hyperbinomial transform on the sequence of 1's.

The programs for A218497, there is no canonical definition to state claims against.
-/

/-! ## A218497.P5724711384896468731

`A144303(A055999(n+3))`
-/

namespace A218497.P5724711384896468731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (A055999 (n + 3)).toNat

end

end A218497.P5724711384896468731

/-! ## A218497.P16942664646279834567

`A144303(eq[5, A025581(n)])`
-/

namespace A218497.P16942664646279834567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218497.P16942664646279834567

/-! ## A218497.P11524393087113532647

`A144303(eq[6, A193739(n)])`
-/

namespace A218497.P11524393087113532647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218497.P11524393087113532647

/-! ## A218497.P1544286055991528554

`A144303(Δ[A023551(n+1)])`
-/

namespace A218497.P1544286055991528554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (f1 (n + 1) - f1 n).toNat

end

end A218497.P1544286055991528554

/-! ## A218497.P18023951210568181558

`A144303(A000124(n+6)-7)`
-/

namespace A218497.P18023951210568181558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (A000124 (n + 6) - 7).toNat

end

end A218497.P18023951210568181558

/-! ## A218497.P17750177725398789942

`A144303(eq[6, A004736(n+1)])`
-/

namespace A218497.P17750177725398789942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218497.P17750177725398789942

/-!
# A218498: 6th iteration of the hyperbinomial transform on the sequence of 1's.

The programs for A218498, there is no canonical definition to state claims against.
-/

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

/-! ## A218498.P13787027349550783869

`A144303(eq[7, A193739(n)])`
-/

namespace A218498.P13787027349550783869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218498.P13787027349550783869

/-! ## A218498.P5101487208327479695

`A144303(eq[7, A004736(n+1)])`
-/

namespace A218498.P5101487208327479695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218498.P5101487208327479695

/-! ## A218498.P11187560863357408072

`A144303(Δ[Δ[A055832(n+5)]])`
-/

namespace A218498.P11187560863357408072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (f1 (n + 1) - f1 n).toNat

end

end A218498.P11187560863357408072

/-! ## A218498.P8481542168829094044

`A144303(Δ[A023551(n+2)]-1)`
-/

namespace A218498.P8481542168829094044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (f1 (n + 1) - f1 n - 1).toNat

end

end A218498.P8481542168829094044

/-!
# A218499: 7th iteration of the hyperbinomial transform on the sequence of 1's.

The programs for A218499, there is no canonical definition to state claims against.
-/

/-! ## A218499.P7684010443047479057

`A144303(A155212(n+4))`
-/

namespace A218499.P7684010443047479057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (A155212 (n + 4)).toNat

end

end A218499.P7684010443047479057

/-! ## A218499.P6519265136613075188

`A144303(eq[7, A025581(n)])`
-/

namespace A218499.P6519265136613075188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218499.P6519265136613075188

/-! ## A218499.P6593814481217065525

`A144303(eq[8, A193739(n)])`
-/

namespace A218499.P6593814481217065525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218499.P6593814481217065525

/-! ## A218499.P968813129520244626

`A144303(eq[15, A099375(n)])`
-/

namespace A218499.P968813129520244626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218499.P968813129520244626

/-! ## A218499.P1238375346496746361

`A144303(eq[8, A004736(n+1)])`
-/

namespace A218499.P1238375346496746361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218499.P1238375346496746361

