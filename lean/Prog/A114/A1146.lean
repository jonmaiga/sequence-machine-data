import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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

/-!
# A114600: Greatest prime divisor of A114599(n), or 1 if A114599(n) = 1.

The programs for A114600, there is no canonical definition to state claims against.
-/

/-! ## A114600.P17842026392072727231

`A006530(A114599(n+1))`
-/

namespace A114600.P17842026392072727231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A114599 (n + 1)).toNat

end

end A114600.P17842026392072727231

/-! ## A114600.P17923308782585245200

`A006530(a(n-1)*a(n-2)+1)` with `a(0)=1, a(1)=1`
-/

namespace A114600.P17923308782585245200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A006530 (a (n - 1) * a (n - 2) + 1).toNat

end

end A114600.P17923308782585245200

/-! ## A114600.P17009683771338634572

`A006530(lcm(a(n-1), a(n-2))+1)` with `a(0)=1, a(1)=1`
-/

namespace A114600.P17009683771338634572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A006530 (Int.lcm (a (n - 1)) (a (n - 2)) + 1)

end

end A114600.P17009683771338634572

/-! ## A114600.P4227765223472437696

`A006530(1-ceil(-a(n-1))*a(n-2))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A114600.P4227765223472437696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A006530 (1 - (-a (n - 1)) * a (n - 2)).toNat

end

end A114600.P4227765223472437696

/-! ## A114600.P15717444309620500625

`A006530(1-round(-a(n-1))*a(n-2))` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A114600.P15717444309620500625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A006530 (1 - (-a (n - 1)) * a (n - 2)).toNat

end

end A114600.P15717444309620500625

/-!
# A114604: Numerator of partial sums of A005329/A006125.

The programs for A114604, the canonical program `A114604.P6839653009740357962` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114604 has offset 0).

The definition of A114604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114604.P6839653009740357962

`a(n-1)*2^(n+1)+A005329(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A114604

/-- `a(n-1)*2^(n+1)+A005329(n)` -/
def P6839653009740357962.Spec : Prop :=
  ∀ n, P6839653009740357962.a n = A114604 n

theorem P6839653009740357962.correct : P6839653009740357962.Spec := by
  intro n
  simp only [A114604]

end A114604

/-! ## A114604.P6005074814525503643

`A006125(n+2)-A005329(n+1)`
-/

namespace A114604.P6005074814525503643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (n + 2) - A005329 (n + 1)

end

end A114604.P6005074814525503643

namespace A114604

/-- `A006125(n+2)-A005329(n+1)` -/
def P6005074814525503643.Spec : Prop :=
  ∀ n, P6005074814525503643.a n = A114604 n

end A114604

/-! ## A114604.P15755458971479243764

`A000079(A000217(n+1))-A005329(n+1)`
-/

namespace A114604.P15755458971479243764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000217 (n + 1)).toNat - A005329 (n + 1)

end

end A114604.P15755458971479243764

namespace A114604

/-- `A000079(A000217(n+1))-A005329(n+1)` -/
def P15755458971479243764.Spec : Prop :=
  ∀ n, P15755458971479243764.a n = A114604 n

end A114604

/-! ## A114604.P15211682535645223833

`A060704(n+1)/A000079(∑[n])`
-/

namespace A114604.P15211682535645223833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060704 (n + 1) : ℚ) / (A000079 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A114604.P15211682535645223833

namespace A114604

/-- `A060704(n+1)/A000079(∑[n])` -/
def P15211682535645223833.Spec : Prop :=
  ∀ n, P15211682535645223833.a n = (A114604 n : ℚ)

end A114604

/-! ## A114604.P16810199272240541537

`A060704(n+1)/2^A000217(n)`
-/

namespace A114604.P16810199272240541537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060704 (n + 1) : ℚ) / (2 : ℚ) ^ (A000217 n : ℤ)

end

end A114604.P16810199272240541537

namespace A114604

/-- `A060704(n+1)/2^A000217(n)` -/
def P16810199272240541537.Spec : Prop :=
  ∀ n, P16810199272240541537.a n = (A114604 n : ℚ)

end A114604

/-!
# A114606: Numbers k such that the k-th octagonal number is 3-almost prime.

The programs for A114606, there is no canonical definition to state claims against.
-/

/-! ## A114606.P12531557672657229667

`ceil(sqrt(A129927(n+1)/3))`
-/

namespace A114606.P12531557672657229667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A129927 (n + 1) : ℚ) / 3 : ℝ)⌉

end

end A114606.P12531557672657229667

/-! ## A114606.P17310233819222137165

`eq[2, A001222(n+1)*A001222(3*n+1)]+1`
-/

namespace A114606.P17310233819222137165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A001222 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114606.P17310233819222137165

/-! ## A114606.P3137357854125239271

`eq[5, A193295(3*n+2)+1]+1`
-/

namespace A114606.P3137357854125239271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193295 (3 * n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114606.P3137357854125239271

/-! ## A114606.P17876419634046547731

`eq[4, A193295(A008486(n)+2)]+1`
-/

namespace A114606.P17876419634046547731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193295 (A008486 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114606.P17876419634046547731

/-! ## A114606.P16945044900376739102

`eq[3, ∑{e}[A000567(n), #]]`
-/

namespace A114606.P16945044900376739102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114606.P16945044900376739102

/-!
# A114607: Start with 1 0 1 0 then add a one every time (e.g. 1 1 0 1 1 1 0 1 1 1 1 0 ...).

The programs for A114607, the canonical program `A114607.P8461475155530099092` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114607 has offset 1).

The definition of A114607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114607.P13678327199847177610

`char[comp[∑[comp[17*n]]]]`
-/

namespace A114607.P13678327199847177610
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A114607.P13678327199847177610

namespace A114607

/-- `char[comp[∑[comp[17*n]]]]` -/
def P13678327199847177610.Spec : Prop :=
  ∀ n, (P13678327199847177610.a n : ℤ) = A114607 (n + 1)

end A114607

/-! ## A114607.P15134467231000683170

`(floor(∑{d}[n+1, #]/(n+1))-1)!-char[∑[n+1]]`
-/

namespace A114607.P15134467231000683170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ)⌋ - 1).toNat : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A114607.P15134467231000683170

namespace A114607

/-- `(floor(∑{d}[n+1, #]/(n+1))-1)!-char[∑[n+1]]` -/
def P15134467231000683170.Spec : Prop :=
  ∀ n, P15134467231000683170.a n = A114607 (n + 1)

end A114607

/-! ## A114607.P7706001744617453697

`((1-(n/gcd(4, n))%4)%2)^(xor(n, char[∑[n]])-n)²`
-/

namespace A114607.P7706001744617453697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (1 - Int.tmod (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 4 n : ℚ))) 4) 2 : ℚ) ^ (((Nat.xor n (if ∃ j, f1 j = n then 1 else 0) : ℤ) - (n : ℤ)) ^ 2 : ℤ)

end

end A114607.P7706001744617453697

namespace A114607

/-- `((1-(n/gcd(4, n))%4)%2)^(xor(n, char[∑[n]])-n)²` -/
def P7706001744617453697.Spec : Prop :=
  ∀ n, P7706001744617453697.a n = (A114607 (n + 1) : ℚ)

end A114607

/-! ## A114607.P522698106909548008

`ceil(A326017(n)/7)`
-/

namespace A114607.P522698106909548008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A326017 n : ℚ) / 7⌉

end

end A114607.P522698106909548008

namespace A114607

/-- `ceil(A326017(n)/7)` -/
def P522698106909548008.Spec : Prop :=
  ∀ n, P522698106909548008.a n = A114607 (n + 1)

end A114607

/-! ## A114607.P8461475155530099092

`ceil(A114219(n)/12)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A114607

/-- `ceil(A114219(n)/12)` -/
def P8461475155530099092.Spec : Prop :=
  ∀ n, P8461475155530099092.a n = A114607 (n + 1)

theorem P8461475155530099092.correct : P8461475155530099092.Spec := by
  intro n
  simp only [A114607, Nat.add_sub_cancel]

end A114607

/-! ## A114607.P7842471645587888768

`1-char[A001497(n)]`
-/

namespace A114607.P7842471645587888768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A114607.P7842471645587888768

namespace A114607

/-- `1-char[A001497(n)]` -/
def P7842471645587888768.Spec : Prop :=
  ∀ n, P7842471645587888768.a n = A114607 (n + 1)

end A114607

/-! ## A114607.P13175763272763144581

`1-char[A001498(n)]`
-/

namespace A114607.P13175763272763144581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A114607.P13175763272763144581

namespace A114607

/-- `1-char[A001498(n)]` -/
def P13175763272763144581.Spec : Prop :=
  ∀ n, P13175763272763144581.a n = A114607 (n + 1)

end A114607

/-! ## A114607.P8488816461247955519

`1-char[A025747(n)]`
-/

namespace A114607.P8488816461247955519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025747 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A114607.P8488816461247955519

namespace A114607

/-- `1-char[A025747(n)]` -/
def P8488816461247955519.Spec : Prop :=
  ∀ n, P8488816461247955519.a n = A114607 (n + 1)

end A114607

/-! ## A114607.P3752414188156097951

`1-char[A100861(n)]`
-/

namespace A114607.P3752414188156097951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100861 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A114607.P3752414188156097951

namespace A114607

/-- `1-char[A100861(n)]` -/
def P3752414188156097951.Spec : Prop :=
  ∀ n, P3752414188156097951.a n = A114607 (n + 1)

end A114607

/-! ## A114607.P14857371589887481976

`ceil(A072233(n)/18)`
-/

namespace A114607.P14857371589887481976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A072233 n : ℚ) / 18⌉

end

end A114607.P14857371589887481976

namespace A114607

/-- `ceil(A072233(n)/18)` -/
def P14857371589887481976.Spec : Prop :=
  ∀ n, P14857371589887481976.a n = A114607 (n + 1)

end A114607

/-! ## A114607.P4147044441310106166

`1-char[∑[A242031(n+1)]]`
-/

namespace A114607.P4147044441310106166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242031 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A114607.P4147044441310106166

namespace A114607

/-- `1-char[∑[A242031(n+1)]]` -/
def P4147044441310106166.Spec : Prop :=
  ∀ n, P4147044441310106166.a n = A114607 (n + 1)

end A114607

/-! ## A114607.P1927545007304713423

`1-char[∑[A255408(n+1)]]`
-/

namespace A114607.P1927545007304713423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A114607.P1927545007304713423

namespace A114607

/-- `1-char[∑[A255408(n+1)]]` -/
def P1927545007304713423.Spec : Prop :=
  ∀ n, P1927545007304713423.a n = A114607 (n + 1)

end A114607

/-! ## A114607.P1514314861941300947

`A186741(n*C(2, 3-char[C(n, 2)]))`
-/

namespace A114607.P1514314861941300947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186741 (n * Nat.choose 2 (3 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat)

end

end A114607.P1514314861941300947

namespace A114607

/-- `A186741(n*C(2, 3-char[C(n, 2)]))` -/
def P1514314861941300947.Spec : Prop :=
  ∀ n, P1514314861941300947.a n = A114607 (n + 1)

end A114607

/-! ## A114607.P5806880318095032122

`A010054(A010816(n)²)`
-/

namespace A114607.P5806880318095032122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A010816 n ^ 2).toNat

end

end A114607.P5806880318095032122

namespace A114607

/-- `A010054(A010816(n)²)` -/
def P5806880318095032122.Spec : Prop :=
  ∀ n, P5806880318095032122.a n = A114607 (n + 1)

end A114607

/-! ## A114607.P9695131656769993783

`A121373(A010816(n)²)`
-/

namespace A114607.P9695131656769993783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A010816 n ^ 2).toNat

end

end A114607.P9695131656769993783

namespace A114607

/-- `A121373(A010816(n)²)` -/
def P9695131656769993783.Spec : Prop :=
  ∀ n, P9695131656769993783.a n = A114607 (n + 1)

end A114607

/-! ## A114607.P1490979213114729711

`A010054(A133089(n)²)`
-/

namespace A114607.P1490979213114729711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A133089 n ^ 2).toNat

end

end A114607.P1490979213114729711

namespace A114607

/-- `A010054(A133089(n)²)` -/
def P1490979213114729711.Spec : Prop :=
  ∀ n, P1490979213114729711.a n = A114607 (n + 1)

end A114607

/-! ## A114607.P14817247125364653660

`A010054(A198954(n)²)`
-/

namespace A114607.P14817247125364653660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A198954 n ^ 2).toNat

end

end A114607.P14817247125364653660

namespace A114607

/-- `A010054(A198954(n)²)` -/
def P14817247125364653660.Spec : Prop :=
  ∀ n, P14817247125364653660.a n = A114607 (n + 1)

end A114607

/-! ## A114607.P8813245663909016823

`A121373(A133089(n)²)`
-/

namespace A114607.P8813245663909016823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A133089 n ^ 2).toNat

end

end A114607.P8813245663909016823

namespace A114607

/-- `A121373(A133089(n)²)` -/
def P8813245663909016823.Spec : Prop :=
  ∀ n, P8813245663909016823.a n = A114607 (n + 1)

end A114607

/-! ## A114607.P11793931868983146964

`A238303(n)-A178334(n)`
-/

namespace A114607.P11793931868983146964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238303 n - A178334 n

end

end A114607.P11793931868983146964

namespace A114607

/-- `A238303(n)-A178334(n)` -/
def P11793931868983146964.Spec : Prop :=
  ∀ n, P11793931868983146964.a n = A114607 (n + 1)

end A114607

/-! ## A114607.P2700620253884603734

`A361338(n)-A073424(n)`
-/

namespace A114607.P2700620253884603734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361338 n - A073424 n

end

end A114607.P2700620253884603734

namespace A114607

/-- `A361338(n)-A073424(n)` -/
def P2700620253884603734.Spec : Prop :=
  ∀ n, P2700620253884603734.a n = A114607 (n + 1)

end A114607

/-!
# A114608: Triangle read by rows: T(n,k) is the number of bicolored Dyck paths of semilength n and having k peaks of the form ud (0 <= k <= n). A bicolored Dyck path is a Dyck path in which each up-step is of two kinds: u and U.

The programs for A114608, there is no canonical definition to state claims against.
-/

/-! ## A114608.P4223394533658466867

`A084618(A328297(n))`
-/

namespace A114608.P4223394533658466867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084618 (A328297 n).toNat

end

end A114608.P4223394533658466867

/-! ## A114608.P9524647803202276373

`A269394(A154602(n))`
-/

namespace A114608.P9524647803202276373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (A154602 n).toNat

end

end A114608.P9524647803202276373

/-! ## A114608.P6773462695202306923

`A172094(n)+A037913(A235679(n+1))`
-/

namespace A114608.P6773462695202306923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172094 n + A037913 (A235679 (n + 1)).toNat

end

end A114608.P6773462695202306923

/-!
# A114609: Decimal expansion of Sum_{k=-infinity..+infinity} log(2)/(2^(-k/2) + 2^(k/2)).

The programs for A114609, there is no canonical definition to state claims against.
-/

/-! ## A114609.P14090377647729207136

`A212131(abs(A034549(3*(n+1))-n))`
-/

namespace A114609.P14090377647729207136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212131 (|A034549 (3 * (n + 1)) - (n : ℤ)|.toNat + 1)

end

end A114609.P14090377647729207136

/-! ## A114609.P14795339247787208004

`A000796(A345406(n+1)%A260138(n+1))`
-/

namespace A114609.P14795339247787208004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((Int.tmod (A345406 (n + 1)) (A260138 (n + 1))).toNat + 1)

end

end A114609.P14795339247787208004

/-!
# A114611: Eventual period of the RATS sequence, where 0 indicates a divergent sequence.

The programs for A114611, there is no canonical definition to state claims against.
-/

/-! ## A114611.P2248722269042997654

`A093353(A172504(n+1))%10`
-/

namespace A114611.P2248722269042997654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093353 (A172504 (n + 1)).toNat) 10

end

end A114611.P2248722269042997654

/-! ## A114611.P17897782362258516417

`A163118(7^val(n+1, 3))`
-/

namespace A114611.P17897782362258516417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163118 (7 ^ SequenceMachineLib.valuation (n + 1) 3)

end

end A114611.P17897782362258516417

/-! ## A114611.P12716279195089998388

`A333660(24^val(n+1, 3))`
-/

namespace A114611.P12716279195089998388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333660 (24 ^ SequenceMachineLib.valuation (n + 1) 3)

end

end A114611.P12716279195089998388

/-! ## A114611.P1548310428766656409

`A180018(39^val(n+1, 3))`
-/

namespace A114611.P1548310428766656409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 (39 ^ SequenceMachineLib.valuation (n + 1) 3)

end

end A114611.P1548310428766656409

/-! ## A114611.P2888988001771172239

`A120251(A088838(n+1))`
-/

namespace A114611.P2888988001771172239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120251 (A088838 (n + 1)).toNat

end

end A114611.P2888988001771172239

/-!
# A114612: Starting numbers for which the RATS sequence has eventual period 2.

The programs for A114612, there is no canonical definition to state claims against.
-/

/-! ## A114612.P7005806118898504578

`lt[A091202(A110725(n)), A110725(n)]`
-/

namespace A114612.P7005806118898504578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A110725 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114612.P7005806118898504578

/-! ## A114612.P17825257128884339708

`lt[A178815(n+1), A192006(A007953(n))]`
-/

namespace A114612.P17825257128884339708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114612.P17825257128884339708

/-! ## A114612.P17027784941378794558

`lt[A178815(n+1), A192006(A169805(n))]`
-/

namespace A114612.P17027784941378794558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114612.P17027784941378794558

/-! ## A114612.P18117108107260406767

`eq[2, A114611(n+1)]+1`
-/

namespace A114612.P18117108107260406767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114612.P18117108107260406767

/-! ## A114612.P2438754194228752476

`eq[2, A114611(A028310(n))]`
-/

namespace A114612.P2438754194228752476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114611 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114612.P2438754194228752476

/-!
# A114614: Starting numbers for which the RATS sequence has eventual period 8.

The programs for A114614, there is no canonical definition to state claims against.
-/

/-! ## A114614.P18425833263410102570

`eq[9, A004159(A136614(A108773(n)))]`
-/

namespace A114614.P18425833263410102570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (A136614 (A108773 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114614.P18425833263410102570

/-! ## A114614.P1806358469402854571

`eq[9, A004159(A136614(A136613(n)))]`
-/

namespace A114614.P1806358469402854571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (A136614 (A136613 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114614.P1806358469402854571

/-! ## A114614.P12878942592730073361

`eq[A151878(n), A345978(A007953(n))]`
-/

namespace A114614.P12878942592730073361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345978 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114614.P12878942592730073361

/-! ## A114614.P3844481223693557288

`eq[A000120(A118881(n)), A178815(n+1)]`
-/

namespace A114614.P3844481223693557288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A118881 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114614.P3844481223693557288

/-! ## A114614.P16558597355465922887

`A016051(lt[A238657(n+1), A238628(n+1)])`
-/

namespace A114614.P16558597355465922887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016051 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A114614.P16558597355465922887

/-!
# A114616: Starting numbers for which the RATS sequence has eventual period 18.

The programs for A114616, there is no canonical definition to state claims against.
-/

/-! ## A114616.P14479864576875095199

`eq[4, A025454(A056964(n))]`
-/

namespace A114616.P14479864576875095199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114616.P14479864576875095199

/-! ## A114616.P7410270161124205384

`lt[8, A114611(n+1)]+1`
-/

namespace A114616.P7410270161124205384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A114616.P7410270161124205384

/-! ## A114616.P14602498244564690798

`eq[3, A072405(A093882(n))]`
-/

namespace A114616.P14602498244564690798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (A093882 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114616.P14602498244564690798

/-! ## A114616.P17021181213351610291

`eq[3, A144064(A307629(n))]`
-/

namespace A114616.P17021181213351610291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A307629 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114616.P17021181213351610291

/-! ## A114616.P10964725680511712450

`eq[A144481(n+1), A175674(n)]`
-/

namespace A114616.P10964725680511712450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175674 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114616.P10964725680511712450

/-!
# A114617: Numbers k such that k and k+1 are both refactorable numbers.

The programs for A114617, there is no canonical definition to state claims against.
-/

/-! ## A114617.P8400762504449486912

`A036898(Δ[n²])`
-/

namespace A114617.P8400762504449486912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036898 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A114617.P8400762504449486912

/-! ## A114617.P14560850806657846505

`A036898(2*(n+1))-1`
-/

namespace A114617.P14560850806657846505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036898 (2 * (n + 1)) - 1

end

end A114617.P14560850806657846505

/-! ## A114617.P6146973707615542905

`record[A036898(A000265(n+1))]`
-/

namespace A114617.P6146973707615542905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036898 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114617.P6146973707615542905

/-! ## A114617.P8675960089110916265

`record[A036898(n+1)/A033999(n)]`
-/

namespace A114617.P8675960089110916265
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036898 (n + 1) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114617.P8675960089110916265

/-! ## A114617.P2765663222098371136

`record[A036898(n+1)/A134451(A016777(n))]`
-/

namespace A114617.P2765663222098371136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036898 (n + 1) : ℚ) / (A134451 (A016777 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114617.P2765663222098371136

/-! ## A114617.P859311696550617453

`A160145(A001222(n+1))+A036898(n+n+1)`
-/

namespace A114617.P859311696550617453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160145 (A001222 (n + 1)).toNat + A036898 (n + n + 1)

end

end A114617.P859311696550617453

/-! ## A114617.P11596307948067233228

`A142150(A264527(n+2))+A036898(n+n+1)`
-/

namespace A114617.P11596307948067233228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A264527 (n + 2)).toNat + A036898 (n + n + 1)

end

end A114617.P11596307948067233228

/-! ## A114617.P12622103160887420612

`∩[A036898(n+1), A132411(n)]`
-/

namespace A114617.P12622103160887420612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114617.P12622103160887420612

/-!
# A114618: Numbers k such that the k-th octagonal number is 4-almost prime.

The programs for A114618, the canonical program `A114618.P910294549739018060` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114618 has offset 1).

The definition of A114618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 548 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114618.P910294549739018060

`eq[6, A193295(3*n+2)+1]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A114618

/-- `eq[6, A193295(3*n+2)+1]+1` -/
def P910294549739018060.Spec : Prop :=
  ∀ n, (P910294549739018060.a n : ℤ) = A114618 (n + 1)

theorem P910294549739018060.correct : P910294549739018060.Spec := by
  intro n
  simp only [A114618, Nat.add_sub_cancel]

end A114618

/-! ## A114618.P17758880939444743874

`eq[5, A193295(A008486(n)+2)]+1`
-/

namespace A114618.P17758880939444743874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193295 (A008486 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114618.P17758880939444743874

namespace A114618

/-- `eq[5, A193295(A008486(n)+2)]+1` -/
def P17758880939444743874.Spec : Prop :=
  ∀ n, (P17758880939444743874.a n : ℤ) = A114618 (n + 1)

end A114618

/-! ## A114618.P9301793688558782405

`eq[4, A001222((3*n+1)*(n+1))]+1`
-/

namespace A114618.P9301793688558782405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((3 * n + 1) * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114618.P9301793688558782405

namespace A114618

/-- `eq[4, A001222((3*n+1)*(n+1))]+1` -/
def P9301793688558782405.Spec : Prop :=
  ∀ n, (P9301793688558782405.a n : ℤ) = A114618 (n + 1)

end A114618

/-! ## A114618.P5080437115555153733

`eq[4, A001222(A118239(n+1)-n²)]`
-/

namespace A114618.P5080437115555153733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A118239 (n + 1) - (n ^ 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114618.P5080437115555153733

namespace A114618

/-- `eq[4, A001222(A118239(n+1)-n²)]` -/
def P5080437115555153733.Spec : Prop :=
  ∀ n, (P5080437115555153733.a n : ℤ) = A114618 (n + 1)

end A114618

/-! ## A114618.P8105171832773088767

`eq[1, A101637((3*n+1)*(n+1))]+1`
-/

namespace A114618.P8105171832773088767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 ((3 * n + 1) * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114618.P8105171832773088767

namespace A114618

/-- `eq[1, A101637((3*n+1)*(n+1))]+1` -/
def P8105171832773088767.Spec : Prop :=
  ∀ n, (P8105171832773088767.a n : ℤ) = A114618 (n + 1)

end A114618

/-!
# A114619: a(n) = 2*A079291(n) (twice squares of Pell numbers).

The programs for A114619, the canonical program `A114619.P14883267576841951743` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114619 has offset 0).

The definition of A114619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114619.P14883267576841951743

`2*A079291(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A114619

/-- `2*A079291(n)` -/
def P14883267576841951743.Spec : Prop :=
  ∀ n, P14883267576841951743.a n = A114619 n

theorem P14883267576841951743.correct : P14883267576841951743.Spec := by
  intro n
  simp only [A114619]

end A114619

/-! ## A114619.P16645411913138338640

`2*A000129(n)²`
-/

namespace A114619.P16645411913138338640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000129 n ^ 2

end

end A114619.P16645411913138338640

namespace A114619

/-- `2*A000129(n)²` -/
def P16645411913138338640.Spec : Prop :=
  ∀ n, P16645411913138338640.a n = A114619 n

end A114619

/-! ## A114619.P5844066290129324655

`A001333(n)²-(-1)^n`
-/

namespace A114619.P5844066290129324655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n ^ 2 - (-1) ^ n

end

end A114619.P5844066290129324655

namespace A114619

/-- `A001333(n)²-(-1)^n` -/
def P5844066290129324655.Spec : Prop :=
  ∀ n, P5844066290129324655.a n = A114619 n

end A114619

/-! ## A114619.P10087654406935020059

`ogf((2x-2x^2)/(1-5x-5x^2+x^3))`
-/

namespace A114619.P10087654406935020059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -2] [1, -5, -5, 1] n

end

end A114619.P10087654406935020059

namespace A114619

/-- `ogf((2x-2x^2)/(1-5x-5x^2+x^3))` -/
def P10087654406935020059.Spec : Prop :=
  ∀ n, P10087654406935020059.a n = A114619 n

end A114619

/-! ## A114619.P11288328492665122965

`(lcm(2, round((sqrt(2)+1)^n))/2)²-(-1)^n`
-/

namespace A114619.P11288328492665122965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.lcm 2 (SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n)) : ℚ) / 2) ^ 2 - ((-1) ^ n : ℚ)

end

end A114619.P11288328492665122965

namespace A114619

/-- `(lcm(2, round((sqrt(2)+1)^n))/2)²-(-1)^n` -/
def P11288328492665122965.Spec : Prop :=
  ∀ n, P11288328492665122965.a n = (A114619 n : ℚ)

end A114619

/-! ## A114619.P7969345526938597740

`(((1-sqrt(2))^n+(1+sqrt(2))^n)/2)²+(-1)^(n+1)`
-/

namespace A114619.P7969345526938597740
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((1 - Real.sqrt (2 : ℝ)) ^ n + (1 + Real.sqrt (2 : ℝ)) ^ n) / 2) ^ 2 + ((-1) ^ (n + 1) : ℝ)

end

end A114619.P7969345526938597740

namespace A114619

/-- `(((1-sqrt(2))^n+(1+sqrt(2))^n)/2)²+(-1)^(n+1)` -/
def P7969345526938597740.Spec : Prop :=
  ∀ n, P7969345526938597740.a n = (A114619 n : ℝ)

end A114619

/-! ## A114619.P10178444114368764460

`floor(A052542(n)²/2)`
-/

namespace A114619.P10178444114368764460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052542 n ^ 2 : ℚ) / 2⌋

end

end A114619.P10178444114368764460

namespace A114619

/-- `floor(A052542(n)²/2)` -/
def P10178444114368764460.Spec : Prop :=
  ∀ n, P10178444114368764460.a n = A114619 n

end A114619

/-! ## A114619.P16515830149651896836

`2*Δ[A171842(n)]²`
-/

namespace A114619.P16515830149651896836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) ^ 2

end

end A114619.P16515830149651896836

namespace A114619

/-- `2*Δ[A171842(n)]²` -/
def P16515830149651896836.Spec : Prop :=
  ∀ n, P16515830149651896836.a n = A114619 n

end A114619

/-! ## A114619.P12390367747685784663

`Δ[A001333(n)]²/2`
-/

namespace A114619.P12390367747685784663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2

end

end A114619.P12390367747685784663

namespace A114619

/-- `Δ[A001333(n)]²/2` -/
def P12390367747685784663.Spec : Prop :=
  ∀ n, P12390367747685784663.a n = (A114619 n : ℚ)

end A114619

/-! ## A114619.P11177665425873445428

`Δ[A293004(n)]²/2`
-/

namespace A114619.P11177665425873445428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2

end

end A114619.P11177665425873445428

namespace A114619

/-- `Δ[A293004(n)]²/2` -/
def P11177665425873445428.Spec : Prop :=
  ∀ n, P11177665425873445428.a n = (A114619 n : ℚ)

end A114619

/-! ## A114619.P10373271019107093433

`2*A176981(n+1)²`
-/

namespace A114619.P10373271019107093433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176981 (n + 1) ^ 2

end

end A114619.P10373271019107093433

namespace A114619

/-- `2*A176981(n+1)²` -/
def P10373271019107093433.Spec : Prop :=
  ∀ n, P10373271019107093433.a n = A114619 n

end A114619

/-! ## A114619.P8392841131170426316

`A163271(n+1)²/2`
-/

namespace A114619.P8392841131170426316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163271 (n + 1) ^ 2 : ℚ) / 2

end

end A114619.P8392841131170426316

namespace A114619

/-- `A163271(n+1)²/2` -/
def P8392841131170426316.Spec : Prop :=
  ∀ n, P8392841131170426316.a n = (A114619 n : ℚ)

end A114619

/-! ## A114619.P561018122513146731

`2*(1-A174191(n))²`
-/

namespace A114619.P561018122513146731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - A174191 n) ^ 2

end

end A114619.P561018122513146731

namespace A114619

/-- `2*(1-A174191(n))²` -/
def P561018122513146731.Spec : Prop :=
  ∀ n, P561018122513146731.a n = A114619 n

end A114619

/-! ## A114619.P14602890198882727312

`2*A215936(n+2)²`
-/

namespace A114619.P14602890198882727312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A215936 (n + 2) ^ 2

end

end A114619.P14602890198882727312

namespace A114619

/-- `2*A215936(n+2)²` -/
def P14602890198882727312.Spec : Prop :=
  ∀ n, P14602890198882727312.a n = A114619 n

end A114619

/-! ## A114619.P4880840898343112257

`2*A002965(2*n)²`
-/

namespace A114619.P4880840898343112257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002965 (2 * n) ^ 2

end

end A114619.P4880840898343112257

namespace A114619

/-- `2*A002965(2*n)²` -/
def P4880840898343112257.Spec : Prop :=
  ∀ n, P4880840898343112257.a n = A114619 n

end A114619

/-! ## A114619.P870419995640842487

`2*A116558(2*n)²`
-/

namespace A114619.P870419995640842487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116558 (2 * n) ^ 2

end

end A114619.P870419995640842487

namespace A114619

/-- `2*A116558(2*n)²` -/
def P870419995640842487.Spec : Prop :=
  ∀ n, P870419995640842487.a n = A114619 n

end A114619

/-! ## A114619.P14823255727645161876

`2*A135153(2*n)²`
-/

namespace A114619.P14823255727645161876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135153 (2 * n) ^ 2

end

end A114619.P14823255727645161876

namespace A114619

/-- `2*A135153(2*n)²` -/
def P14823255727645161876.Spec : Prop :=
  ∀ n, P14823255727645161876.a n = A114619 n

end A114619

/-! ## A114619.P4724180410422626624

`2*A249576(3*n)²`
-/

namespace A114619.P4724180410422626624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249576 (3 * n) ^ 2

end

end A114619.P4724180410422626624

namespace A114619

/-- `2*A249576(3*n)²` -/
def P4724180410422626624.Spec : Prop :=
  ∀ n, P4724180410422626624.a n = A114619 n

end A114619

/-! ## A114619.P8407603976778380340

`and(A001108(n)+1, -2)`
-/

namespace A114619.P8407603976778380340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001108 n + 1) (-2)

end

end A114619.P8407603976778380340

namespace A114619

/-- `and(A001108(n)+1, -2)` -/
def P8407603976778380340.Spec : Prop :=
  ∀ n, P8407603976778380340.a n = A114619 n

end A114619

/-! ## A114619.P16914829494665570957

`and(-2, A055997(n+1))`
-/

namespace A114619.P16914829494665570957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A055997 (n + 1))

end

end A114619.P16914829494665570957

namespace A114619

/-- `and(-2, A055997(n+1))` -/
def P16914829494665570957.Spec : Prop :=
  ∀ n, P16914829494665570957.a n = A114619 n

end A114619

/-!
# A114620: 2*A084158 (twice Pell triangles).

The programs for A114620, the canonical program `A114620.P13997147457107866865` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114620 has offset 0).

The definition of A114620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114620.P13997147457107866865

`A000129(n)*A000129(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A114620

/-- `A000129(n)*A000129(n+1)` -/
def P13997147457107866865.Spec : Prop :=
  ∀ n, P13997147457107866865.a n = A114620 n

theorem P13997147457107866865.correct : P13997147457107866865.Spec := by
  intro n
  simp only [A114620]

end A114620

/-! ## A114620.P16996200703078201801

`A002965(2*(n+1))*A002965(2*n)`
-/

namespace A114620.P16996200703078201801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * (n + 1)) * A002965 (2 * n)

end

end A114620.P16996200703078201801

namespace A114620

/-- `A002965(2*(n+1))*A002965(2*n)` -/
def P16996200703078201801.Spec : Prop :=
  ∀ n, P16996200703078201801.a n = A114620 n

end A114620

/-! ## A114620.P3715975220859706519

`A046729(n)/2`
-/

namespace A114620.P3715975220859706519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046729 n : ℚ) / 2

end

end A114620.P3715975220859706519

namespace A114620

/-- `A046729(n)/2` -/
def P3715975220859706519.Spec : Prop :=
  ∀ n, P3715975220859706519.a n = (A114620 n : ℚ)

end A114620

/-! ## A114620.P1885955024514736513

`ogf(2x/(1-5x-5x^2+x^3))`
-/

namespace A114620.P1885955024514736513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -5, -5, 1] n

end

end A114620.P1885955024514736513

namespace A114620

/-- `ogf(2x/(1-5x-5x^2+x^3))` -/
def P1885955024514736513.Spec : Prop :=
  ∀ n, P1885955024514736513.a n = A114620 n

end A114620

/-! ## A114620.P14109972992672699891

`∑[(lcm(2, round((sqrt(2)+1)^n))/2)²-(-1)^n]`
-/

namespace A114620.P14109972992672699891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.lcm 2 (SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n)) : ℚ) / 2) ^ 2 - ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114620.P14109972992672699891

namespace A114620

/-- `∑[(lcm(2, round((sqrt(2)+1)^n))/2)²-(-1)^n]` -/
def P14109972992672699891.Spec : Prop :=
  ∀ n, P14109972992672699891.a n = (A114620 n : ℚ)

end A114620

/-! ## A114620.P6042632340967601222

`∑[A114619(n)]`
-/

namespace A114620.P6042632340967601222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114620.P6042632340967601222

namespace A114620

/-- `∑[A114619(n)]` -/
def P6042632340967601222.Spec : Prop :=
  ∀ n, P6042632340967601222.a n = A114620 n

end A114620

/-! ## A114620.P6670667909656814296

`2*A084158(n)`
-/

namespace A114620.P6670667909656814296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084158 n

end

end A114620.P6670667909656814296

namespace A114620

/-- `2*A084158(n)` -/
def P6670667909656814296.Spec : Prop :=
  ∀ n, P6670667909656814296.a n = A114620 n

end A114620

/-! ## A114620.P9929757821946170277

`∑[2*A079291(n)]`
-/

namespace A114620.P9929757821946170277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114620.P9929757821946170277

namespace A114620

/-- `∑[2*A079291(n)]` -/
def P9929757821946170277.Spec : Prop :=
  ∀ n, P9929757821946170277.a n = A114620 n

end A114620

/-! ## A114620.P9282482398828405609

`∑[2*A000129(n)²]`
-/

namespace A114620.P9282482398828405609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000129 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114620.P9282482398828405609

namespace A114620

/-- `∑[2*A000129(n)²]` -/
def P9282482398828405609.Spec : Prop :=
  ∀ n, P9282482398828405609.a n = A114620 n

end A114620

/-! ## A114620.P6199121470814678308

`Δ[(A001333(n)/2)²]`
-/

namespace A114620.P6199121470814678308
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001333 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114620.P6199121470814678308

namespace A114620

/-- `Δ[(A001333(n)/2)²]` -/
def P6199121470814678308.Spec : Prop :=
  ∀ n, P6199121470814678308.a n = (A114620 n : ℚ)

end A114620

/-! ## A114620.P6489359982457148798

`Δ[(A123335(n)/2)²]`
-/

namespace A114620.P6489359982457148798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A123335 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114620.P6489359982457148798

namespace A114620

/-- `Δ[(A123335(n)/2)²]` -/
def P6489359982457148798.Spec : Prop :=
  ∀ n, P6489359982457148798.a n = (A114620 n : ℚ)

end A114620

/-! ## A114620.P12325084796647896098

`∑[A001108(n)+n%2]`
-/

namespace A114620.P12325084796647896098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114620.P12325084796647896098

namespace A114620

/-- `∑[A001108(n)+n%2]` -/
def P12325084796647896098.Spec : Prop :=
  ∀ n, P12325084796647896098.a n = A114620 n

end A114620

/-! ## A114620.P15983170907936211892

`∑[floor(A052542(n)²/2)]`
-/

namespace A114620.P15983170907936211892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052542 n ^ 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114620.P15983170907936211892

namespace A114620

/-- `∑[floor(A052542(n)²/2)]` -/
def P15983170907936211892.Spec : Prop :=
  ∀ n, P15983170907936211892.a n = A114620 n

end A114620

/-! ## A114620.P5712948067489447552

`∑[2*Δ[A171842(n)]²]`
-/

namespace A114620.P5712948067489447552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114620.P5712948067489447552

namespace A114620

/-- `∑[2*Δ[A171842(n)]²]` -/
def P5712948067489447552.Spec : Prop :=
  ∀ n, P5712948067489447552.a n = A114620 n

end A114620

/-! ## A114620.P4503382831096974687

`∑[Δ[A293004(n)]²/2]`
-/

namespace A114620.P4503382831096974687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) - f2 n) ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114620.P4503382831096974687

namespace A114620

/-- `∑[Δ[A293004(n)]²/2]` -/
def P4503382831096974687.Spec : Prop :=
  ∀ n, P4503382831096974687.a n = (A114620 n : ℚ)

end A114620

/-! ## A114620.P13558912834072913606

`Δ[Δ[A174191(n)/2]²]`
-/

namespace A114620.P13558912834072913606
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174191 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114620.P13558912834072913606

namespace A114620

/-- `Δ[Δ[A174191(n)/2]²]` -/
def P13558912834072913606.Spec : Prop :=
  ∀ n, P13558912834072913606.a n = (A114620 n : ℚ)

end A114620

/-! ## A114620.P1695373157573430744

`A001542(n)-a(n-1)` with `a(0)=0`
-/

namespace A114620.P1695373157573430744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001542 n - a (n - 1)

end

end A114620.P1695373157573430744

namespace A114620

/-- `A001542(n)-a(n-1)` -/
def P1695373157573430744.Spec : Prop :=
  ∀ n, P1695373157573430744.a n = A114620 n

end A114620

/-! ## A114620.P11138718185673623238

`∑[2*A176981(n+1)²]`
-/

namespace A114620.P11138718185673623238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176981 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114620.P11138718185673623238

namespace A114620

/-- `∑[2*A176981(n+1)²]` -/
def P11138718185673623238.Spec : Prop :=
  ∀ n, P11138718185673623238.a n = A114620 n

end A114620

/-! ## A114620.P12465059081596860082

`∑[A163271(n+1)²/2]`
-/

namespace A114620.P12465059081596860082
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163271 (n + 1) ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114620.P12465059081596860082

namespace A114620

/-- `∑[A163271(n+1)²/2]` -/
def P12465059081596860082.Spec : Prop :=
  ∀ n, P12465059081596860082.a n = (A114620 n : ℚ)

end A114620

/-! ## A114620.P5593308700136948673

`∑[2*A215936(n+2)²]`
-/

namespace A114620.P5593308700136948673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A215936 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114620.P5593308700136948673

namespace A114620

/-- `∑[2*A215936(n+2)²]` -/
def P5593308700136948673.Spec : Prop :=
  ∀ n, P5593308700136948673.a n = A114620 n

end A114620

/-!
# A114621: Numbers k such that the k-th octagonal number is 5-almost prime.

The programs for A114621, the canonical program `A114621.P4720647436464804670` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114621 has offset 1).

The definition of A114621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 423 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114621.P4720647436464804670

`eq[6, A193295(A008486(n)+2)]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A114621

/-- `eq[6, A193295(A008486(n)+2)]+1` -/
def P4720647436464804670.Spec : Prop :=
  ∀ n, (P4720647436464804670.a n : ℤ) = A114621 (n + 1)

theorem P4720647436464804670.correct : P4720647436464804670.Spec := by
  intro n
  simp only [A114621, Nat.add_sub_cancel]

end A114621

/-! ## A114621.P3294368563177941604

`eq[5, A001222((n+1)*(3*n+1))]+1`
-/

namespace A114621.P3294368563177941604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) * (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114621.P3294368563177941604

namespace A114621

/-- `eq[5, A001222((n+1)*(3*n+1))]+1` -/
def P3294368563177941604.Spec : Prop :=
  ∀ n, (P3294368563177941604.a n : ℤ) = A114621 (n + 1)

end A114621

/-! ## A114621.P1527124400092276602

`eq[5, A001222(A118239(n+1)-n²)]`
-/

namespace A114621.P1527124400092276602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A118239 (n + 1) - (n ^ 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114621.P1527124400092276602

namespace A114621

/-- `eq[5, A001222(A118239(n+1)-n²)]` -/
def P1527124400092276602.Spec : Prop :=
  ∀ n, (P1527124400092276602.a n : ℤ) = A114621 (n + 1)

end A114621

/-!
# A114623: Number of nodes in row n of the power tree A114622.

The programs for A114623, there is no canonical definition to state claims against.
-/

/-! ## A114623.P9637473524062980033

`A003065(n)-A076142(A246563(n))`
-/

namespace A114623.P9637473524062980033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003065 n - A076142 (A246563 n).toNat

end

end A114623.P9637473524062980033

/-! ## A114623.P1532705877398133837

`A002024(A000009(n)*A331684(n+1))`
-/

namespace A114623.P1532705877398133837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A000009 n * A331684 (n + 1)).toNat

end

end A114623.P1532705877398133837

/-! ## A114623.P6311975696800625391

`A349150(A339484(n+1))`
-/

namespace A114623.P6311975696800625391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349150 (A339484 (n + 1)).toNat

end

end A114623.P6311975696800625391

/-! ## A114623.P17304452448616320281

`A352079(n)+A064547(A304887(n))`
-/

namespace A114623.P17304452448616320281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352079 n + A064547 (A304887 n).toNat

end

end A114623.P17304452448616320281

/-! ## A114623.P9046374942894295883

`A163101(A107479(n+1))+A064547(A304887(n))`
-/

namespace A114623.P9046374942894295883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163101 (A107479 (n + 1)).toNat + A064547 (A304887 n).toNat

end

end A114623.P9046374942894295883

/-!
# A114624: Row sums of the power tree A114622.

The programs for A114624, there is no canonical definition to state claims against.
-/

/-! ## A114624.P4049719412746378214

`or(A263569(A214997(n)), A263593(n+1))`
-/

namespace A114624.P4049719412746378214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A263569 (A214997 n).toNat) (A263593 (n + 1))

end

end A114624.P4049719412746378214

/-! ## A114624.P12705071352132727859

`A032793(A208957(n+1)^A146409(n+1))`
-/

namespace A114624.P12705071352132727859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (SequenceMachineLib.roundAway ((A208957 (n + 1) : ℚ) ^ (A146409 (n + 1) : ℤ))).toNat

end

end A114624.P12705071352132727859

/-! ## A114624.P17549845415530660670

`A032793(C(A208957(n+1), A146409(n+1)))`
-/

namespace A114624.P17549845415530660670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (Nat.choose (A208957 (n + 1)).toNat (A146409 (n + 1)).toNat)

end

end A114624.P17549845415530660670

/-!
# A114625: Leftmost node in rows of the power tree A114622.

The programs for A114625, there is no canonical definition to state claims against.
-/

/-! ## A114625.P8170456756845236793

`A108549(record[Δ[A249576(n)]])`
-/

namespace A114625.P8170456756845236793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108549 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A114625.P8170456756845236793

/-! ## A114625.P5444841030539973568

`Δ[A286545(A182027(n+4))]`
-/

namespace A114625.P5444841030539973568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286545 (A182027 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114625.P5444841030539973568

/-! ## A114625.P16642196423290262616

`A319110(A032555(n+1))+1`
-/

namespace A114625.P16642196423290262616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319110 (A032555 (n + 1)).toNat + 1

end

end A114625.P16642196423290262616

/-! ## A114625.P13148400294404135886

`A319110(A032559(n+1))+1`
-/

namespace A114625.P13148400294404135886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319110 (A032559 (n + 1)).toNat + 1

end

end A114625.P13148400294404135886

/-!
# A114626: Triangle read by rows: T(n,k) is the number of hill-free Dyck paths of semilength n and having k peaks at level 2; 0<= k<=n-1, n>=2 (a Dyck path is said to be hill-free if it has no peaks at level 1).

The programs for A114626, there is no canonical definition to state claims against.
-/

/-! ## A114626.P592505845110921197

`A034968(A328924(n+1))`
-/

namespace A114626.P592505845110921197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A328924 (n + 1)).toNat

end

end A114626.P592505845110921197

/-!
# A114627: Number of hill-free Dyck paths of semilength n+3 and having no peaks at level 2 (a Dyck path is said to be hill-free if it has no peaks at level 1).

The programs for A114627, there is no canonical definition to state claims against.
-/

/-! ## A114627.P6678297809270595301

`record[A114626(n+3)]`
-/

namespace A114627.P6678297809270595301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114626 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114627.P6678297809270595301

/-! ## A114627.P5523368100238880600

`A114626(∑[n+2]+2)`
-/

namespace A114627.P5523368100238880600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114626 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A114627.P5523368100238880600

/-! ## A114627.P14695565310317346357

`A114626(A000124(n+2))+A024155(n+1)`
-/

namespace A114627.P14695565310317346357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114626 (A000124 (n + 2)).toNat + A024155 (n + 1)

end

end A114627.P14695565310317346357

/-! ## A114627.P8840898183232813277

`A114626(A000124(n+2))+A070138(n+1)`
-/

namespace A114627.P8840898183232813277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114626 (A000124 (n + 2)).toNat + A070138 (n + 1)

end

end A114627.P8840898183232813277

/-! ## A114627.P18090604703616655824

`A114626(A000124(n+2))+A070201(n+1)`
-/

namespace A114627.P18090604703616655824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114626 (A000124 (n + 2)).toNat + A070201 (n + 1)

end

end A114627.P18090604703616655824

/-!
# A114628: Number of even Latin squares of order n.

The programs for A114628, there is no canonical definition to state claims against.
-/

/-! ## A114628.P1801774282896059997

`A114630(n+1)+A114629(n+1)`
-/

namespace A114628.P1801774282896059997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114630 (n + 1) + A114629 (n + 1)

end

end A114628.P1801774282896059997

/-! ## A114628.P12579645790630193957

`A002860(n+1)-A114629(n+1)`
-/

namespace A114628.P12579645790630193957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002860 (n + 1) - A114629 (n + 1)

end

end A114628.P12579645790630193957

/-! ## A114628.P5625386270262045233

`sqrt(A343697(n+1))-A114629(n+1)`
-/

namespace A114628.P5625386270262045233
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A343697 (n + 1) : ℝ) - (A114629 (n + 1) : ℝ)

end

end A114628.P5625386270262045233

/-! ## A114628.P9650881817655641784

`(n+1)!*A000479(n+1)-A114629(n+1)`
-/

namespace A114628.P9650881817655641784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A000479 (n + 1) - A114629 (n + 1)

end

end A114628.P9650881817655641784

/-!
# A114629: Number of odd Latin squares of order n.

The programs for A114629, there is no canonical definition to state claims against.
-/

/-! ## A114629.P8485576533963468756

`A002860(n+1)-A114628(n+1)`
-/

namespace A114629.P8485576533963468756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002860 (n + 1) - A114628 (n + 1)

end

end A114629.P8485576533963468756

/-! ## A114629.P14530382931912973004

`A114628(n+1)-A114630(n+1)`
-/

namespace A114629.P14530382931912973004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114628 (n + 1) - A114630 (n + 1)

end

end A114629.P14530382931912973004

/-! ## A114629.P901997408723473922

`sqrt(A343697(n+1))-A114628(n+1)`
-/

namespace A114629.P901997408723473922
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A343697 (n + 1) : ℝ) - (A114628 (n + 1) : ℝ)

end

end A114629.P901997408723473922

/-! ## A114629.P5683379199634058177

`(n+1)!*A000479(n+1)-A114628(n+1)`
-/

namespace A114629.P5683379199634058177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A000479 (n + 1) - A114628 (n + 1)

end

end A114629.P5683379199634058177

/-!
# A114630: a(n) = A114628(n) - A114629(n).

The programs for A114630, there is no canonical definition to state claims against.
-/

/-! ## A114630.P2865320107341053191

`A114628(n+1)-A114629(n+1)`
-/

namespace A114630.P2865320107341053191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114628 (n + 1) - A114629 (n + 1)

end

end A114630.P2865320107341053191

/-! ## A114630.P10749291730337727509

`A002860(n+1)-A114629(n+1)-A114629(n+1)`
-/

namespace A114630.P10749291730337727509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002860 (n + 1) - A114629 (n + 1) - A114629 (n + 1)

end

end A114630.P10749291730337727509

/-! ## A114630.P14104663535223567303

`A114628(n+1)-(A002860(n+1)-A114628(n+1))`
-/

namespace A114630.P14104663535223567303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114628 (n + 1) - (A002860 (n + 1) - A114628 (n + 1))

end

end A114630.P14104663535223567303

/-! ## A114630.P17329322348923801040

`A114628(n+1)-(sqrt(A343697(n+1))-A114628(n+1))`
-/

namespace A114630.P17329322348923801040
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A114628 (n + 1) : ℝ) - (Real.sqrt (A343697 (n + 1) : ℝ) - (A114628 (n + 1) : ℝ))

end

end A114630.P17329322348923801040

/-!
# A114631: Number of even fixed diagonal Latin squares.

The programs for A114631, there is no canonical definition to state claims against.
-/

/-! ## A114631.P6549846980031086599

`A000479(n+1)-A114632(n+1)`
-/

namespace A114631.P6549846980031086599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000479 (n + 1) - A114632 (n + 1)

end

end A114631.P6549846980031086599

/-!
# A114632: Number of odd fixed diagonal Latin squares.

The programs for A114632, there is no canonical definition to state claims against.
-/

/-! ## A114632.P3062955819677894254

`A000479(n+1)-A114631(n+1)`
-/

namespace A114632.P3062955819677894254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000479 (n + 1) - A114631 (n + 1)

end

end A114632.P3062955819677894254

/-!
# A114633: a(n) = (n+1)*(n+2)/2 * Sum_{k=0..floor(n/2)} n!/(n-2*k)!.

The programs for A114633, the canonical program `A114633.P429876956605843083` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114633 has offset 0).

The definition of A114633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114633.P429876956605843083

`A087208(n)*(n+1)*(n+2)/2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A114633

/-- `A087208(n)*(n+1)*(n+2)/2` -/
def P429876956605843083.Spec : Prop :=
  ∀ n, P429876956605843083.a n = (A114633 n : ℚ)

end A114633

/-! ## A114633.P10684471055947774160

`(2*a(n-2)+1)*∑[n+1]` with `a(0)=1, a(1)=3`
-/

namespace A114633.P10684471055947774160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 * a (n - 2) + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114633.P10684471055947774160

namespace A114633

/-- `(2*a(n-2)+1)*∑[n+1]` -/
def P10684471055947774160.Spec : Prop :=
  ∀ n, (P10684471055947774160.a n : ℤ) = A114633 n

end A114633

/-! ## A114633.P17220707600579460202

`∑[n+1]*A087208(n)`
-/

namespace A114633.P17220707600579460202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A087208 n

end

end A114633.P17220707600579460202

namespace A114633

/-- `∑[n+1]*A087208(n)` -/
def P17220707600579460202.Spec : Prop :=
  ∀ n, P17220707600579460202.a n = A114633 n

end A114633

/-! ## A114633.P17460089477755963211

`∑[n+1]*Δ[A291484(n)]`
-/

namespace A114633.P17460089477755963211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f2 (n + 1) - f2 n)

end

end A114633.P17460089477755963211

namespace A114633

/-- `∑[n+1]*Δ[A291484(n)]` -/
def P17460089477755963211.Spec : Prop :=
  ∀ n, P17460089477755963211.a n = A114633 n

end A114633

/-! ## A114633.P4113339802940062487

`Δ[A263102(n+1)]/(n+3)*C(n+3, 2)`
-/

namespace A114633.P4113339802940062487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263102 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 3 : ℚ) * (Nat.choose (n + 3) 2 : ℚ)

end

end A114633.P4113339802940062487

namespace A114633

/-- `Δ[A263102(n+1)]/(n+3)*C(n+3, 2)` -/
def P4113339802940062487.Spec : Prop :=
  ∀ n, P4113339802940062487.a n = (A114633 n : ℚ)

end A114633

/-! ## A114633.P11372718028215127994

`Δ[A291484(n)]*A278818(∑[n])`
-/

namespace A114633.P11372718028215127994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291484 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A278818 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A114633.P11372718028215127994

namespace A114633

/-- `Δ[A291484(n)]*A278818(∑[n])` -/
def P11372718028215127994.Spec : Prop :=
  ∀ n, P11372718028215127994.a n = A114633 n

end A114633

/-!
# A114634: Numbers k such that the k-th octagonal number is 6-almost prime.

The programs for A114634, the canonical program `A114634.P18393525407052447743` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114634 has offset 1).

The definition of A114634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114634.P18393525407052447743

`eq[8, A193295(A008486(n)+2)+1]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A114634

/-- `eq[8, A193295(A008486(n)+2)+1]+1` -/
def P18393525407052447743.Spec : Prop :=
  ∀ n, (P18393525407052447743.a n : ℤ) = A114634 (n + 1)

theorem P18393525407052447743.correct : P18393525407052447743.Spec := by
  intro n
  simp only [A114634, Nat.add_sub_cancel]

end A114634

/-! ## A114634.P715569944318451627

`eq[7, A193295(3*(n-1-and(1, A139250(n)))+5)]`
-/

namespace A114634.P715569944318451627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193295 (3 * ((n : ℤ) - 1 - Int.land 1 (A139250 n)) + 5).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114634.P715569944318451627

namespace A114634

/-- `eq[7, A193295(3*(n-1-and(1, A139250(n)))+5)]` -/
def P715569944318451627.Spec : Prop :=
  ∀ n, (P715569944318451627.a n : ℤ) = A114634 (n + 1)

end A114634

/-! ## A114634.P10326104085094497816

`eq[6, A001222((3*n+1)*(n+1))]+1`
-/

namespace A114634.P10326104085094497816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((3 * n + 1) * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114634.P10326104085094497816

namespace A114634

/-- `eq[6, A001222((3*n+1)*(n+1))]+1` -/
def P10326104085094497816.Spec : Prop :=
  ∀ n, (P10326104085094497816.a n : ℤ) = A114634 (n + 1)

end A114634

/-! ## A114634.P2840900182075526003

`eq[6, A001222(A118239(n+1)-n²)]`
-/

namespace A114634.P2840900182075526003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A118239 (n + 1) - (n ^ 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114634.P2840900182075526003

namespace A114634

/-- `eq[6, A001222(A118239(n+1)-n²)]` -/
def P2840900182075526003.Spec : Prop :=
  ∀ n, (P2840900182075526003.a n : ℤ) = A114634 (n + 1)

end A114634

/-! ## A114634.P4303401129522537725

`A000005(A345099(2*n+5))*A114441(n+1)`
-/

namespace A114634.P4303401129522537725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A345099 (2 * n + 5)).toNat * A114441 (n + 1)

end

end A114634.P4303401129522537725

namespace A114634

/-- `A000005(A345099(2*n+5))*A114441(n+1)` -/
def P4303401129522537725.Spec : Prop :=
  ∀ n, P4303401129522537725.a n = A114634 (n + 1)

end A114634

/-!
# A114635: Numbers k such that the k-th octagonal number is 7-almost prime.

The programs for A114635, the canonical program `A114635.P11927019839315697127` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114635 has offset 1).

The definition of A114635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114635.P11927019839315697127

`eq[8, A193295(A008486(n)+2)]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A114635

/-- `eq[8, A193295(A008486(n)+2)]+1` -/
def P11927019839315697127.Spec : Prop :=
  ∀ n, (P11927019839315697127.a n : ℤ) = A114635 (n + 1)

theorem P11927019839315697127.correct : P11927019839315697127.Spec := by
  intro n
  simp only [A114635, Nat.add_sub_cancel]

end A114635

/-! ## A114635.P17686528714505281593

`2*(eq[4, A001222(∑[3*n+1])]+1)`
-/

namespace A114635.P17686528714505281593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A114635.P17686528714505281593

namespace A114635

/-- `2*(eq[4, A001222(∑[3*n+1])]+1)` -/
def P17686528714505281593.Spec : Prop :=
  ∀ n, (P17686528714505281593.a n : ℤ) = A114635 (n + 1)

end A114635

/-! ## A114635.P3728236109075059020

`A001222(A115708(n+1))*A114443(n+1)`
-/

namespace A114635.P3728236109075059020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A115708 (n + 1)).toNat * A114443 (n + 1)

end

end A114635.P3728236109075059020

namespace A114635

/-- `A001222(A115708(n+1))*A114443(n+1)` -/
def P3728236109075059020.Spec : Prop :=
  ∀ n, P3728236109075059020.a n = A114635 (n + 1)

end A114635

/-! ## A114635.P6922606529897321449

`(eq[4, A259652(n+1)]+1)*A008481(A033476(2*(n+1)))`
-/

namespace A114635.P6922606529897321449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) * A008481 (A033476 (2 * (n + 1))).toNat

end

end A114635.P6922606529897321449

namespace A114635

/-- `(eq[4, A259652(n+1)]+1)*A008481(A033476(2*(n+1)))` -/
def P6922606529897321449.Spec : Prop :=
  ∀ n, P6922606529897321449.a n = A114635 (n + 1)

end A114635

/-! ## A114635.P14697481457012003940

`A212790(A114443(n+1))`
-/

namespace A114635.P14697481457012003940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212790 (A114443 (n + 1)).toNat

end

end A114635.P14697481457012003940

namespace A114635

/-- `A212790(A114443(n+1))` -/
def P14697481457012003940.Spec : Prop :=
  ∀ n, P14697481457012003940.a n = A114635 (n + 1)

end A114635

/-!
# A114636: Numbers k such that the k-th octagonal number is 8-almost prime.

The programs for A114636, there is no canonical definition to state claims against.
-/

/-! ## A114636.P15336120538747136306

`A114445(n+1)*A328317(A093178(n))`
-/

namespace A114636.P15336120538747136306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114445 (n + 1) * A328317 (A093178 n).toNat

end

end A114636.P15336120538747136306

/-! ## A114636.P15852048187412175345

`A004277(A114445(n+1)²)/A114445(n+1)`
-/

namespace A114636.P15852048187412175345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A114445 (n + 1) ^ 2).toNat : ℚ) / (A114445 (n + 1) : ℚ)

end

end A114636.P15852048187412175345

/-! ## A114636.P16460170956914190730

`A272305(A114445(n+1))`
-/

namespace A114636.P16460170956914190730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272305 (A114445 (n + 1)).toNat

end

end A114636.P16460170956914190730

/-!
# A114637: Nonnegative numbers excluding 1 and 2.

The programs for A114637, the canonical program `A114637.P15311792268826575605` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114637 has offset 1).

The definition of A114637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114637.P15311792268826575605

`ceil(n*exp(acot(n)))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114637

/-- `ceil(n*exp(acot(n)))` -/
def P15311792268826575605.Spec : Prop :=
  ∀ n, P15311792268826575605.a n = A114637 (n + 1)

theorem P15311792268826575605.correct : P15311792268826575605.Spec := by
  intro n
  simp only [A114637, Nat.add_sub_cancel]

end A114637

/-!
# A114641: a(n) = 2^(a(n-2) + log_{2}(a(n-1))), a(1)=1, a(2)=2.

The programs for A114641, the canonical program `A114641.P2457838845251481696` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114641 has offset 1).

The definition of A114641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114641.P2457838845251481696

`a(n-1)*2^a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114641

/-- `a(n-1)*2^a(n-2)` -/
def P2457838845251481696.Spec : Prop :=
  ∀ n, (P2457838845251481696.a n : ℤ) = A114641 (n + 1)

theorem P2457838845251481696.correct : P2457838845251481696.Spec := by
  intro n
  simp only [A114641, Nat.add_sub_cancel]

end A114641

/-! ## A114641.P9523774020181573886

`2^∑[a(n-1)²]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A114641.P9523774020181573886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114641.P9523774020181573886

namespace A114641

/-- `2^∑[a(n-1)²]` -/
def P9523774020181573886.Spec : Prop :=
  ∀ n, (P9523774020181573886.a n : ℤ) = A114641 (n + 1)

end A114641

/-! ## A114641.P14312637011834344080

`2^∑[4^a(n-2)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A114641.P14312637011834344080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2] fun n f1 =>
  4 ^ f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114641.P14312637011834344080

namespace A114641

/-- `2^∑[4^a(n-2)]` -/
def P14312637011834344080.Spec : Prop :=
  ∀ n, (P14312637011834344080.a n : ℤ) = A114641 (n + 1)

end A114641

/-!
# A114642: a(n) = 2^(log_{2}(a(n-2))+a(n-1)), a(1)=1, a(2)=2.

The programs for A114642, there is no canonical definition to state claims against.
-/

/-! ## A114642.P3415212066035986400

`2^(a(n-1)-2+n)` with `a(0)=1, a(1)=2`
-/

namespace A114642.P3415212066035986400
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 : ℝ) ^ (a (n - 1) - 2 + (n : ℝ))

end

end A114642.P3415212066035986400

/-!
# A114643: Number of real primitive Dirichlet characters modulo n.

The programs for A114643, the canonical program `A114643.P3385208476335884825` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114643 has offset 1).

The definition of A114643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114643.P5365906399720637940

`A307381(n+1)%4`
-/

namespace A114643.P5365906399720637940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307381 (n + 1)) 4

end

end A114643.P5365906399720637940

namespace A114643

/-- `A307381(n+1)%4` -/
def P5365906399720637940.Spec : Prop :=
  ∀ n, P5365906399720637940.a n = A114643 (n + 1)

end A114643

/-! ## A114643.P16273860391804100793

`A007877(A007431(n+1))`
-/

namespace A114643.P16273860391804100793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A007431 (n + 1)).toNat

end

end A114643.P16273860391804100793

namespace A114643

/-- `A007877(A007431(n+1))` -/
def P16273860391804100793.Spec : Prop :=
  ∀ n, P16273860391804100793.a n = A114643 (n + 1)

end A114643

/-! ## A114643.P9366560780562398510

`A007877(A160499(n+1))`
-/

namespace A114643.P9366560780562398510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A160499 (n + 1)).toNat

end

end A114643.P9366560780562398510

namespace A114643

/-- `A007877(A160499(n+1))` -/
def P9366560780562398510.Spec : Prop :=
  ∀ n, P9366560780562398510.a n = A114643 (n + 1)

end A114643

/-! ## A114643.P8627028971351225529

`A007877(A307381(n+1))`
-/

namespace A114643.P8627028971351225529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A307381 (n + 1)).toNat

end

end A114643.P8627028971351225529

namespace A114643

/-- `A007877(A307381(n+1))` -/
def P8627028971351225529.Spec : Prop :=
  ∀ n, P8627028971351225529.a n = A114643 (n + 1)

end A114643

/-! ## A114643.P17843841179300831567

`A007877(A329272(n+1))`
-/

namespace A114643.P17843841179300831567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A329272 (n + 1)).toNat

end

end A114643.P17843841179300831567

namespace A114643

/-- `A007877(A329272(n+1))` -/
def P17843841179300831567.Spec : Prop :=
  ∀ n, P17843841179300831567.a n = A114643 (n + 1)

end A114643

/-! ## A114643.P15888679499248287642

`A010873(abs(Δ[A309288(n)]))`
-/

namespace A114643.P15888679499248287642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 |f1 (n + 1) - f1 n|.toNat

end

end A114643.P15888679499248287642

namespace A114643

/-- `A010873(abs(Δ[A309288(n)]))` -/
def P15888679499248287642.Spec : Prop :=
  ∀ n, P15888679499248287642.a n = A114643 (n + 1)

end A114643

/-! ## A114643.P7503721763333795287

`and(A010684(n), A307381(n+1))`
-/

namespace A114643.P7503721763333795287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010684 n) (A307381 (n + 1))

end

end A114643.P7503721763333795287

namespace A114643

/-- `and(A010684(n), A307381(n+1))` -/
def P7503721763333795287.Spec : Prop :=
  ∀ n, P7503721763333795287.a n = A114643 (n + 1)

end A114643

/-! ## A114643.P13441545107182479348

`lcm(A053865(n+1), A361984(n+1))`
-/

namespace A114643.P13441545107182479348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053865 (n + 1)) (A361984 (n + 1))

end

end A114643.P13441545107182479348

namespace A114643

/-- `lcm(A053865(n+1), A361984(n+1))` -/
def P13441545107182479348.Spec : Prop :=
  ∀ n, (P13441545107182479348.a n : ℤ) = A114643 (n + 1)

end A114643

/-! ## A114643.P3385208476335884825

`and(A050361(n+1), A063659(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A114643

/-- `and(A050361(n+1), A063659(n+1))` -/
def P3385208476335884825.Spec : Prop :=
  ∀ n, P3385208476335884825.a n = A114643 (n + 1)

theorem P3385208476335884825.correct : P3385208476335884825.Spec := by
  intro n
  simp only [A114643, Nat.add_sub_cancel]

end A114643

/-! ## A114643.P15245465193997151843

`and(A061704(n+1), A063659(n+1))`
-/

namespace A114643.P15245465193997151843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061704 (n + 1)) (A063659 (n + 1))

end

end A114643.P15245465193997151843

namespace A114643

/-- `and(A061704(n+1), A063659(n+1))` -/
def P15245465193997151843.Spec : Prop :=
  ∀ n, P15245465193997151843.a n = A114643 (n + 1)

end A114643

/-! ## A114643.P14659142986840830053

`and(A063659(n+1), A072911(n+1))`
-/

namespace A114643.P14659142986840830053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063659 (n + 1)) (A072911 (n + 1))

end

end A114643.P14659142986840830053

namespace A114643

/-- `and(A063659(n+1), A072911(n+1))` -/
def P14659142986840830053.Spec : Prop :=
  ∀ n, P14659142986840830053.a n = A114643 (n + 1)

end A114643

/-! ## A114643.P16666843008876165869

`and(A050361(n+1), A160499(n+1))`
-/

namespace A114643.P16666843008876165869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050361 (n + 1)) (A160499 (n + 1))

end

end A114643.P16666843008876165869

namespace A114643

/-- `and(A050361(n+1), A160499(n+1))` -/
def P16666843008876165869.Spec : Prop :=
  ∀ n, P16666843008876165869.a n = A114643 (n + 1)

end A114643

/-! ## A114643.P1566284798288943413

`and(A053150(n+1), A160499(n+1))`
-/

namespace A114643.P1566284798288943413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053150 (n + 1)) (A160499 (n + 1))

end

end A114643.P1566284798288943413

namespace A114643

/-- `and(A053150(n+1), A160499(n+1))` -/
def P1566284798288943413.Spec : Prop :=
  ∀ n, P1566284798288943413.a n = A114643 (n + 1)

end A114643

/-! ## A114643.P15753046361844895910

`and(A055229(n+1), A160499(n+1))`
-/

namespace A114643.P15753046361844895910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055229 (n + 1)) (A160499 (n + 1))

end

end A114643.P15753046361844895910

namespace A114643

/-- `and(A055229(n+1), A160499(n+1))` -/
def P15753046361844895910.Spec : Prop :=
  ∀ n, P15753046361844895910.a n = A114643 (n + 1)

end A114643

/-! ## A114643.P5598880645559988548

`and(A056832(n+1), A160499(n+1))`
-/

namespace A114643.P5598880645559988548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056832 (n + 1)) (A160499 (n + 1))

end

end A114643.P5598880645559988548

namespace A114643

/-- `and(A056832(n+1), A160499(n+1))` -/
def P5598880645559988548.Spec : Prop :=
  ∀ n, P5598880645559988548.a n = A114643 (n + 1)

end A114643

/-! ## A114643.P3326143381467201742

`∑{d}[n+1, A008683(#)*A060594((n+1)/#)]`
-/

namespace A114643.P3326143381467201742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A060594 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114643.P3326143381467201742

namespace A114643

/-- `∑{d}[n+1, A008683(#)*A060594((n+1)/#)]` -/
def P3326143381467201742.Spec : Prop :=
  ∀ n, P3326143381467201742.a n = A114643 (n + 1)

end A114643

/-! ## A114643.P15582953221922321842

`∑{d}[n+1, A007427(#)*A092089((n+1)/#)]`
-/

namespace A114643.P15582953221922321842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A092089 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114643.P15582953221922321842

namespace A114643

/-- `∑{d}[n+1, A007427(#)*A092089((n+1)/#)]` -/
def P15582953221922321842.Spec : Prop :=
  ∀ n, P15582953221922321842.a n = A114643 (n + 1)

end A114643

/-! ## A114643.P12193651403145938540

`∑{d}[n+1, A145390(#)*A307445((n+1)/#)]`
-/

namespace A114643.P12193651403145938540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A145390 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114643.P12193651403145938540

namespace A114643

/-- `∑{d}[n+1, A145390(#)*A307445((n+1)/#)]` -/
def P12193651403145938540.Spec : Prop :=
  ∀ n, P12193651403145938540.a n = A114643 (n + 1)

end A114643

/-! ## A114643.P6419584569173431683

`∑{d}[n+1, A008683(#)*A319100((n+1)/#)]%4`
-/

namespace A114643.P6419584569173431683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A008683 d * A319100 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) 4

end

end A114643.P6419584569173431683

namespace A114643

/-- `∑{d}[n+1, A008683(#)*A319100((n+1)/#)]%4` -/
def P6419584569173431683.Spec : Prop :=
  ∀ n, P6419584569173431683.a n = A114643 (n + 1)

end A114643

/-! ## A114643.P424165481312251659

`and(A007318(A160467(n+1)), A160499(n+1))`
-/

namespace A114643.P424165481312251659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 (A160467 (n + 1)).toNat) (A160499 (n + 1))

end

end A114643.P424165481312251659

namespace A114643

/-- `and(A007318(A160467(n+1)), A160499(n+1))` -/
def P424165481312251659.Spec : Prop :=
  ∀ n, P424165481312251659.a n = A114643 (n + 1)

end A114643

/-!
# A114644: Numbers with no "e" in Dutch.

The programs for A114644, there is no canonical definition to state claims against.
-/

/-! ## A114644.P14243132697130053851

`A115072(comp[8*n])`
-/

namespace A114644.P14243132697130053851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115072 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A114644.P14243132697130053851

/-! ## A114644.P11496397388345999327

`record[A115072(A308993(n+1))]`
-/

namespace A114644.P11496397388345999327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115072 (A308993 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114644.P11496397388345999327

/-! ## A114644.P13783045182438484156

`record[A115072(A367699(n+1))]`
-/

namespace A114644.P13783045182438484156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115072 (A367699 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114644.P13783045182438484156

/-! ## A114644.P11390682799018802544

`A243830(n)+A115072(A004709(n+1))`
-/

namespace A114644.P11390682799018802544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243830 n + A115072 (A004709 (n + 1)).toNat

end

end A114644.P11390682799018802544

/-! ## A114644.P4386817386409063665

`A115072(A004709(n+1))*A299203(2*n+1)`
-/

namespace A114644.P4386817386409063665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115072 (A004709 (n + 1)).toNat * A299203 (2 * n + 1)

end

end A114644.P4386817386409063665

/-!
# A114646: Let M(n) be the n X n matrix m(i,j)=min(i,j) for 1<=i,j<=n then a(n) is the trace of M(n)^(-4).

The programs for A114646, the canonical program `A114646.P8188597421172090499` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114646 has offset 1).

The definition of A114646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114646.P8188597421172090499

`a(n-1)+70` with `a(0)=1, a(1)=47`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114646

/-- `a(n-1)+70` -/
def P8188597421172090499.Spec : Prop :=
  ∀ n, (P8188597421172090499.a n : ℤ) = A114646 (n + 1)

theorem P8188597421172090499.correct : P8188597421172090499.Spec := by
  intro n
  simp only [A114646, Nat.add_sub_cancel]

end A114646

/-!
# A114647: Expansion of (3 -4*x -3*x^2)/((1-x^2)*(1-2*x-x^2)); a Pellian-related sequence.

The programs for A114647, the canonical program `A114647.P1219889185228559506` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114647 has offset 0).

The definition of A114647 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3-4x-3x^2)/(1-2x-2x^2+2x^3+x^4))` (program `A114647.P1219889185228559506`, by `A114647.P1219889185228559506.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114647.P1219889185228559506

`ogf((3-4x-3x^2)/(1-2x-2x^2+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114647

/-- `ogf((3-4x-3x^2)/(1-2x-2x^2+2x^3+x^4))` -/
def P1219889185228559506.Spec : Prop :=
  ∀ n, P1219889185228559506.a n = A114647 n

theorem P1219889185228559506.correct : P1219889185228559506.Spec := by
  intro n
  simp only [A114647]

end A114647

/-! ## A114647.P17141913888551365385

`2*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=3, a(1)=2, a(2)=7, a(3)=12`
-/

namespace A114647.P17141913888551365385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 7, 12] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A114647.P17141913888551365385

namespace A114647

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` -/
def P17141913888551365385.Spec : Prop :=
  ∀ n, P17141913888551365385.a n = A114647 n

end A114647

/-! ## A114647.P3064506029706965055

`A000129(n+1)+1+(-1)^n`
-/

namespace A114647.P3064506029706965055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + 1 + (-1) ^ n

end

end A114647.P3064506029706965055

namespace A114647

/-- `A000129(n+1)+1+(-1)^n` -/
def P3064506029706965055.Spec : Prop :=
  ∀ n, P3064506029706965055.a n = A114647 n

end A114647

/-! ## A114647.P4699093311137840483

`A000129(n+1)+2*A059841(n)`
-/

namespace A114647.P4699093311137840483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + 2 * A059841 n

end

end A114647.P4699093311137840483

namespace A114647

/-- `A000129(n+1)+2*A059841(n)` -/
def P4699093311137840483.Spec : Prop :=
  ∀ n, P4699093311137840483.a n = A114647 n

end A114647

/-! ## A114647.P253797863780378602

`xor(1, A052937(n))`
-/

namespace A114647.P253797863780378602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A052937 n)

end

end A114647.P253797863780378602

namespace A114647

/-- `xor(1, A052937(n))` -/
def P253797863780378602.Spec : Prop :=
  ∀ n, P253797863780378602.a n = A114647 n

end A114647

/-! ## A114647.P4609076297916670870

`xor(1, A174191(n+1))`
-/

namespace A114647.P4609076297916670870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A174191 (n + 1))

end

end A114647.P4609076297916670870

namespace A114647

/-- `xor(1, A174191(n+1))` -/
def P4609076297916670870.Spec : Prop :=
  ∀ n, P4609076297916670870.a n = A114647 n

end A114647

/-! ## A114647.P10991062172622430933

`abs(A077985(n)+1)+1`
-/

namespace A114647.P10991062172622430933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077985 n + 1| + 1

end

end A114647.P10991062172622430933

namespace A114647

/-- `abs(A077985(n)+1)+1` -/
def P10991062172622430933.Spec : Prop :=
  ∀ n, P10991062172622430933.a n = A114647 n

end A114647

/-! ## A114647.P13766264346165328626

`xor(1, ∑[A001333(n)]+1)`
-/

namespace A114647.P13766264346165328626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A114647.P13766264346165328626

namespace A114647

/-- `xor(1, ∑[A001333(n)]+1)` -/
def P13766264346165328626.Spec : Prop :=
  ∀ n, P13766264346165328626.a n = A114647 n

end A114647

/-! ## A114647.P13598142721081312623

`xor(1, A000129(n+1)+1)`
-/

namespace A114647.P13598142721081312623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000129 (n + 1) + 1)

end

end A114647.P13598142721081312623

namespace A114647

/-- `xor(1, A000129(n+1)+1)` -/
def P13598142721081312623.Spec : Prop :=
  ∀ n, P13598142721081312623.a n = A114647 n

end A114647

/-! ## A114647.P12618934678215999018

`xor(1, A215928(n+1)+1)`
-/

namespace A114647.P12618934678215999018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A215928 (n + 1) + 1)

end

end A114647.P12618934678215999018

namespace A114647

/-- `xor(1, A215928(n+1)+1)` -/
def P12618934678215999018.Spec : Prop :=
  ∀ n, P12618934678215999018.a n = A114647 n

end A114647

/-! ## A114647.P14259511162420416900

`∑[A052542(n)-a(n-1)]` with `a(0)=3`
-/

namespace A114647.P14259511162420416900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A052542 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114647.P14259511162420416900

namespace A114647

/-- `∑[A052542(n)-a(n-1)]` -/
def P14259511162420416900.Spec : Prop :=
  ∀ n, P14259511162420416900.a n = A114647 n

end A114647

/-! ## A114647.P3155497158113047608

`A052937(n)+A033999(n)`
-/

namespace A114647.P3155497158113047608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 n + A033999 n

end

end A114647.P3155497158113047608

namespace A114647

/-- `A052937(n)+A033999(n)` -/
def P3155497158113047608.Spec : Prop :=
  ∀ n, P3155497158113047608.a n = A114647 n

end A114647

/-! ## A114647.P15214967092883873948

`A001333(n)+A111954(n)+1`
-/

namespace A114647.P15214967092883873948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (A111954 n + 1)

end

end A114647.P15214967092883873948

namespace A114647

/-- `A001333(n)+A111954(n)+1` -/
def P15214967092883873948.Spec : Prop :=
  ∀ n, P15214967092883873948.a n = A114647 n

end A114647

/-! ## A114647.P4505569445659202047

`A174191(n+1)+A033999(n)`
-/

namespace A114647.P4505569445659202047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 (n + 1) + A033999 n

end

end A114647.P4505569445659202047

namespace A114647

/-- `A174191(n+1)+A033999(n)` -/
def P4505569445659202047.Spec : Prop :=
  ∀ n, P4505569445659202047.a n = A114647 n

end A114647

/-! ## A114647.P4218244589240471250

`A209971(n+1)+A114285(n)`
-/

namespace A114647.P4218244589240471250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209971 (n + 1) + A114285 n

end

end A114647.P4218244589240471250

namespace A114647

/-- `A209971(n+1)+A114285(n)` -/
def P4218244589240471250.Spec : Prop :=
  ∀ n, P4218244589240471250.a n = A114647 n

end A114647

/-! ## A114647.P7053617206385716798

`A059841(n)+2*A113225(n)`
-/

namespace A114647.P7053617206385716798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + 2 * A113225 n

end

end A114647.P7053617206385716798

namespace A114647

/-- `A059841(n)+2*A113225(n)` -/
def P7053617206385716798.Spec : Prop :=
  ∀ n, P7053617206385716798.a n = A114647 n

end A114647

/-! ## A114647.P8978767651162225208

`A004442(n)+A052937(n)-n`
-/

namespace A114647.P8978767651162225208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n + (A052937 n - (n : ℤ))

end

end A114647.P8978767651162225208

namespace A114647

/-- `A004442(n)+A052937(n)-n` -/
def P8978767651162225208.Spec : Prop :=
  ∀ n, P8978767651162225208.a n = A114647 n

end A114647

/-! ## A114647.P6365707757923225431

`∑[A002203(n)-Δ[A111954(n)]]`
-/

namespace A114647.P6365707757923225431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114647.P6365707757923225431

namespace A114647

/-- `∑[A002203(n)-Δ[A111954(n)]]` -/
def P6365707757923225431.Spec : Prop :=
  ∀ n, P6365707757923225431.a n = A114647 n

end A114647

/-! ## A114647.P3834515902680209660

`A000035(n+1)+A000129(n+1)+A000035(n+1)`
-/

namespace A114647.P3834515902680209660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (A000129 (n + 1) + A000035 (n + 1))

end

end A114647.P3834515902680209660

namespace A114647

/-- `A000035(n+1)+A000129(n+1)+A000035(n+1)` -/
def P3834515902680209660.Spec : Prop :=
  ∀ n, P3834515902680209660.a n = A114647 n

end A114647

/-! ## A114647.P9371221496823792078

`Δ[A097075(n+1)]+1`
-/

namespace A114647.P9371221496823792078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A114647.P9371221496823792078

namespace A114647

/-- `Δ[A097075(n+1)]+1` -/
def P9371221496823792078.Spec : Prop :=
  ∀ n, P9371221496823792078.a n = A114647 n

end A114647

/-!
# A114648: Number of occurrences of 6 as a denominator in Bernoulli(k) for 0<=k<=10^n.

The programs for A114648, there is no canonical definition to state claims against.
-/

/-! ## A114648.P6943514435946885683

`A024542(∑[∑[A114469(n)]])`
-/

namespace A114648.P6943514435946885683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114469 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024542 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114648.P6943514435946885683

/-!
# A114649: Denominators of BernoulliB ranked by frequency of occurrence.

The programs for A114649, there is no canonical definition to state claims against.
-/

/-! ## A114649.P6536699310891395810

`A002445(lt[lcm(6, (n+1)^3)/6, 31*n])`
-/

namespace A114649.P6536699310891395810
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A114649.P6536699310891395810

/-! ## A114649.P16855147052523359570

`A193473(A073150(n+1))`
-/

namespace A114649.P16855147052523359570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193473 (A073150 (n + 1)).toNat

end

end A114649.P16855147052523359570

/-!
# A114652: a(1)=1. For n>1, a(n) = a(n-1) + (number of terms among {a(1),a(2),...,a(n-1)} which are coprime to n).

The programs for A114652, there is no canonical definition to state claims against.
-/

/-! ## A114652.P4019671667834959855

`A114653(n)+a(n-1)` with `a(0)=1`
-/

namespace A114652.P4019671667834959855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A114653 n + a (n - 1)

end

end A114652.P4019671667834959855

/-!
# A114653: A114652(n+1) - A114652(n).

The programs for A114653, there is no canonical definition to state claims against.
-/

/-! ## A114653.P12800924430166142176

`A114652(n+2)-A114652(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114653.P12800924430166142176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114652 (n + 2) - A114652 (n + 1)

end

end A114653.P12800924430166142176

/-! ## A114653.P10062277219885542554

`Δ[A114652(n+1)]`
-/

namespace A114653.P10062277219885542554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114653.P10062277219885542554

/-! ## A114653.P688145303379088857

`Δ[record[A114652(A328397(n))]]`
-/

namespace A114653.P688145303379088857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114652 (A328397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114653.P688145303379088857

/-! ## A114653.P11991522960136428272

`Δ[record[A114652(A065648(n))]]`
-/

namespace A114653.P11991522960136428272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114652 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114653.P11991522960136428272

/-! ## A114653.P12337075335826532055

`Δ[record[A114652(A193739(n))]]`
-/

namespace A114653.P12337075335826532055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114652 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114653.P12337075335826532055

/-!
# A114654: Discriminant of the polynomial x^n + x + 1.

The programs for A114654, there is no canonical definition to state claims against.
-/

/-! ## A114654.P11525250680800446615

`A127630(xor(n^n, A048861(n+1)))`
-/

namespace A114654.P11525250680800446615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127630 (Int.xor (n ^ n : ℤ) (A048861 (n + 1))).toNat

end

end A114654.P11525250680800446615

/-!
# A114655: Triangle read by rows: T(n,k) is the number of Schroeder paths of length 2n and having k weak ascents (1<=k<=n). A Schroeder path of length 2n is a lattice path from (0,0) to (2n,0) consisting of U=(1,1), D=(1,-1) and H=(2,0) steps and never going below the x-axis. A weak ascent in a Schroeder path is a maximal sequence of consecutive U and H steps.

The programs for A114655, there is no canonical definition to state claims against.
-/

/-! ## A114655.P8241597435899299572

`2*A114656(n+1)`
-/

namespace A114655.P8241597435899299572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114656 (n + 1)

end

end A114655.P8241597435899299572

/-! ## A114655.P45192280308525368

`2*A114687(∑[char[∑[n]]]²-n)`
-/

namespace A114655.P45192280308525368
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114687 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A114655.P45192280308525368

/-! ## A114655.P13843209197955172965

`2^(C(comp[∑[n]]-n, 2)-n)*A001263(n+1)`
-/

namespace A114655.P13843209197955172965
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) * (A001263 (n + 1) : ℚ)

end

end A114655.P13843209197955172965

/-! ## A114655.P10776771258239045756

`2^(C(comp[∑[n]]-n, 2)-n)*ceil(A132787(n+1)/2)`
-/

namespace A114655.P10776771258239045756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) * (⌈(A132787 (n + 1) : ℚ) / 2⌉ : ℚ)

end

end A114655.P10776771258239045756

/-! ## A114655.P15364190280528720844

`A001263(n+1)*A090988(n+1)`
-/

namespace A114655.P15364190280528720844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A090988 (n + 1)

end

end A114655.P15364190280528720844

/-! ## A114655.P17493346927672315741

`(A130330(n)+1)*A001263(n+1)`
-/

namespace A114655.P17493346927672315741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130330 n + 1) * A001263 (n + 1)

end

end A114655.P17493346927672315741

/-! ## A114655.P2873145863384794350

`(A132787(n+1)+1)*A130321(n)`
-/

namespace A114655.P2873145863384794350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132787 (n + 1) + 1) * A130321 n

end

end A114655.P2873145863384794350

/-! ## A114655.P4290709160040489590

`2*A001263(n+1)*A130321(n)`
-/

namespace A114655.P4290709160040489590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001263 (n + 1) * A130321 n)

end

end A114655.P4290709160040489590

/-! ## A114655.P11624045194556127869

`A001263(n+1)*A137206(A099375(n))`
-/

namespace A114655.P11624045194556127869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A137206 (A099375 n).toNat

end

end A114655.P11624045194556127869

/-!
# A114656: Triangle read by rows: T(n,k) is the number of double rise-bicolored Dyck paths (double rises come in two colors; also called marked Dyck paths) of semilength n and having k peaks (1 <= k <= n).

The programs for A114656, the canonical program `A114656.P12625337701375377770` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114656 has offset 1).

The definition of A114656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9368 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114656.P12625337701375377770

`A001263(n+1)*A130321(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A114656

/-- `A001263(n+1)*A130321(n)` -/
def P12625337701375377770.Spec : Prop :=
  ∀ n, P12625337701375377770.a n = A114656 (n + 1)

theorem P12625337701375377770.correct : P12625337701375377770.Spec := by
  intro n
  simp only [A114656, Nat.add_sub_cancel]

end A114656

/-! ## A114656.P17786432014177586801

`2^A025581(n)*A001263(n+1)`
-/

namespace A114656.P17786432014177586801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025581 n : ℤ) * (A001263 (n + 1) : ℚ)

end

end A114656.P17786432014177586801

namespace A114656

/-- `2^A025581(n)*A001263(n+1)` -/
def P17786432014177586801.Spec : Prop :=
  ∀ n, P17786432014177586801.a n = (A114656 (n + 1) : ℚ)

end A114656

/-! ## A114656.P7980176712743110882

`A001263(n+1)/2*A090988(n+1)`
-/

namespace A114656.P7980176712743110882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / 2 * (A090988 (n + 1) : ℚ)

end

end A114656.P7980176712743110882

namespace A114656

/-- `A001263(n+1)/2*A090988(n+1)` -/
def P7980176712743110882.Spec : Prop :=
  ∀ n, P7980176712743110882.a n = (A114656 (n + 1) : ℚ)

end A114656

/-! ## A114656.P6592963646643667103

`A001263(n+1)/2*A137206(A099375(n))`
-/

namespace A114656.P6592963646643667103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / 2 * (A137206 (A099375 n).toNat : ℚ)

end

end A114656.P6592963646643667103

namespace A114656

/-- `A001263(n+1)/2*A137206(A099375(n))` -/
def P6592963646643667103.Spec : Prop :=
  ∀ n, P6592963646643667103.a n = (A114656 (n + 1) : ℚ)

end A114656

/-! ## A114656.P13163189657983611357

`A001263(n+1)/A007318(n)*A038207(n)`
-/

namespace A114656.P13163189657983611357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A038207 n : ℚ)

end

end A114656.P13163189657983611357

namespace A114656

/-- `A001263(n+1)/A007318(n)*A038207(n)` -/
def P13163189657983611357.Spec : Prop :=
  ∀ n, P13163189657983611357.a n = (A114656 (n + 1) : ℚ)

end A114656

/-! ## A114656.P2267537605730330155

`A114687(A038722(n+1))`
-/

namespace A114656.P2267537605730330155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114687 (A038722 (n + 1)).toNat

end

end A114656.P2267537605730330155

namespace A114656

/-- `A114687(A038722(n+1))` -/
def P2267537605730330155.Spec : Prop :=
  ∀ n, P2267537605730330155.a n = A114656 (n + 1)

end A114656

/-! ## A114656.P4114729852228199442

`A114687(A061579(n)+1)`
-/

namespace A114656.P4114729852228199442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114687 (A061579 n + 1).toNat

end

end A114656.P4114729852228199442

namespace A114656

/-- `A114687(A061579(n)+1)` -/
def P4114729852228199442.Spec : Prop :=
  ∀ n, P4114729852228199442.a n = A114656 (n + 1)

end A114656

/-! ## A114656.P11065309915214200296

`A114687(A002024(n+1)²-n)`
-/

namespace A114656.P11065309915214200296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114687 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A114656.P11065309915214200296

namespace A114656

/-- `A114687(A002024(n+1)²-n)` -/
def P11065309915214200296.Spec : Prop :=
  ∀ n, P11065309915214200296.a n = A114656 (n + 1)

end A114656

/-! ## A114656.P318221728002853185

`A105278(n+1)/A132159(n)*A038207(n)`
-/

namespace A114656.P318221728002853185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105278 (n + 1) : ℚ) / (A132159 n : ℚ) * (A038207 n : ℚ)

end

end A114656.P318221728002853185

namespace A114656

/-- `A105278(n+1)/A132159(n)*A038207(n)` -/
def P318221728002853185.Spec : Prop :=
  ∀ n, P318221728002853185.a n = (A114656 (n + 1) : ℚ)

end A114656

/-! ## A114656.P1800134004554443212

`A114655(n+1)/2`
-/

namespace A114656.P1800134004554443212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114655 (n + 1) : ℚ) / 2

end

end A114656.P1800134004554443212

namespace A114656

/-- `A114655(n+1)/2` -/
def P1800134004554443212.Spec : Prop :=
  ∀ n, P1800134004554443212.a n = (A114656 (n + 1) : ℚ)

end A114656

/-!
# A114687: Triangle read by rows: T(n,k) is the number of double rise-bicolored Dyck paths (double rises come in two colors; also called marked Dyck paths) of semilength n and having k double rises (0 <= k <= n-1).

The programs for A114687, the canonical program `A114687.P6567509454073305954` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114687 has offset 1).

The definition of A114687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9392 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114687.P6567509454073305954

`A001263(n+1)*A059268(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A114687

/-- `A001263(n+1)*A059268(n)` -/
def P6567509454073305954.Spec : Prop :=
  ∀ n, P6567509454073305954.a n = A114687 (n + 1)

theorem P6567509454073305954.correct : P6567509454073305954.Spec := by
  intro n
  simp only [A114687, Nat.add_sub_cancel]

end A114687

/-! ## A114687.P5790956685836774673

`A133200(n+1)*A232089(n)`
-/

namespace A114687.P5790956685836774673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133200 (n + 1) * A232089 n

end

end A114687.P5790956685836774673

namespace A114687

/-- `A133200(n+1)*A232089(n)` -/
def P5790956685836774673.Spec : Prop :=
  ∀ n, P5790956685836774673.a n = A114687 (n + 1)

end A114687

/-! ## A114687.P18309834205549209867

`2^A002262(n)*A001263(n+1)`
-/

namespace A114687.P18309834205549209867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A001263 (n + 1) : ℚ)

end

end A114687.P18309834205549209867

namespace A114687

/-- `2^A002262(n)*A001263(n+1)` -/
def P18309834205549209867.Spec : Prop :=
  ∀ n, P18309834205549209867.a n = (A114687 (n + 1) : ℚ)

end A114687

/-! ## A114687.P5754103756425196773

`A001263(n+1)/A007318(n)*A013609(n)`
-/

namespace A114687.P5754103756425196773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A013609 n : ℚ)

end

end A114687.P5754103756425196773

namespace A114687

/-- `A001263(n+1)/A007318(n)*A013609(n)` -/
def P5754103756425196773.Spec : Prop :=
  ∀ n, P5754103756425196773.a n = (A114687 (n + 1) : ℚ)

end A114687

/-! ## A114687.P16885226052226064761

`A114656(A038722(n+1))`
-/

namespace A114687.P16885226052226064761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114656 (A038722 (n + 1)).toNat

end

end A114687.P16885226052226064761

namespace A114687

/-- `A114656(A038722(n+1))` -/
def P16885226052226064761.Spec : Prop :=
  ∀ n, P16885226052226064761.a n = A114687 (n + 1)

end A114687

/-! ## A114687.P16463939009727954091

`A114656(A061579(n)+1)`
-/

namespace A114687.P16463939009727954091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114656 (A061579 n + 1).toNat

end

end A114687.P16463939009727954091

namespace A114687

/-- `A114656(A061579(n)+1)` -/
def P16463939009727954091.Spec : Prop :=
  ∀ n, P16463939009727954091.a n = A114687 (n + 1)

end A114687

/-! ## A114687.P1226494481516949892

`A001263(n+1)*A135764(n+1)/A000265(A135764(n+1))`
-/

namespace A114687.P1226494481516949892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) * A135764 (n + 1) : ℚ) / (A000265 (A135764 (n + 1)).toNat : ℚ)

end

end A114687.P1226494481516949892

namespace A114687

/-- `A001263(n+1)*A135764(n+1)/A000265(A135764(n+1))` -/
def P1226494481516949892.Spec : Prop :=
  ∀ n, P1226494481516949892.a n = (A114687 (n + 1) : ℚ)

end A114687

/-! ## A114687.P9918112120039811977

`A000010(2^A002260(n+1))*A001263(n+1)`
-/

namespace A114687.P9918112120039811977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002260 (n + 1) : ℤ))).toNat * A001263 (n + 1)

end

end A114687.P9918112120039811977

namespace A114687

/-- `A000010(2^A002260(n+1))*A001263(n+1)` -/
def P9918112120039811977.Spec : Prop :=
  ∀ n, P9918112120039811977.a n = A114687 (n + 1)

end A114687

/-! ## A114687.P5634149287365296861

`A156136(n)/A004736(n+1)`
-/

namespace A114687.P5634149287365296861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156136 n : ℚ) / (A004736 (n + 1) : ℚ)

end

end A114687.P5634149287365296861

namespace A114687

/-- `A156136(n)/A004736(n+1)` -/
def P5634149287365296861.Spec : Prop :=
  ∀ n, P5634149287365296861.a n = (A114687 (n + 1) : ℚ)

end A114687

/-! ## A114687.P4791323765549578559

`A156136(n)/A373214(n+1)`
-/

namespace A114687.P4791323765549578559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156136 n : ℚ) / (A373214 (n + 1) : ℚ)

end

end A114687.P4791323765549578559

namespace A114687

/-- `A156136(n)/A373214(n+1)` -/
def P4791323765549578559.Spec : Prop :=
  ∀ n, P4791323765549578559.a n = (A114687 (n + 1) : ℚ)

end A114687

/-!
# A114688: Expansion of (1 +3*x -x^2)/((1-x^2)*(1-2*x-x^2)); a Pellian-related sequence.

The programs for A114688, the canonical program `A114688.P11860447927993223588` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114688 has offset 0).

The definition of A114688 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x-x^2)/(1-2x-2x^2+2x^3+x^4))` (program `A114688.P11860447927993223588`, by `A114688.P11860447927993223588.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114688.P11860447927993223588

`ogf((1+3x-x^2)/(1-2x-2x^2+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114688

/-- `ogf((1+3x-x^2)/(1-2x-2x^2+2x^3+x^4))` -/
def P11860447927993223588.Spec : Prop :=
  ∀ n, P11860447927993223588.a n = A114688 n

theorem P11860447927993223588.correct : P11860447927993223588.Spec := by
  intro n
  simp only [A114688]

end A114688

/-! ## A114688.P2609887854718936600

`2*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=11, a(3)=30`
-/

namespace A114688.P2609887854718936600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 11, 30] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A114688.P2609887854718936600

namespace A114688

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` -/
def P2609887854718936600.Spec : Prop :=
  ∀ n, P2609887854718936600.a n = A114688 n

end A114688

/-! ## A114688.P7108140904616966663

`(10*A000129(n+1)-3*(1+(-1)^n))/4`
-/

namespace A114688.P7108140904616966663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * A000129 (n + 1) - 3 * (1 + (-1) ^ n) : ℚ) / 4

end

end A114688.P7108140904616966663

namespace A114688

/-- `(10*A000129(n+1)-3*(1+(-1)^n))/4` -/
def P7108140904616966663.Spec : Prop :=
  ∀ n, P7108140904616966663.a n = (A114688 n : ℚ)

end A114688

/-! ## A114688.P1482416974055162547

`A114689(n)-A105635(n)`
-/

namespace A114688.P1482416974055162547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114689 n - A105635 n

end

end A114688.P1482416974055162547

namespace A114688

/-- `A114689(n)-A105635(n)` -/
def P1482416974055162547.Spec : Prop :=
  ∀ n, P1482416974055162547.a n = A114688 n

end A114688

/-! ## A114688.P7002190761657388511

`A105635(n)+∑[A182143(n)]`
-/

namespace A114688.P7002190761657388511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105635 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114688.P7002190761657388511

namespace A114688

/-- `A105635(n)+∑[A182143(n)]` -/
def P7002190761657388511.Spec : Prop :=
  ∀ n, P7002190761657388511.a n = A114688 n

end A114688

/-! ## A114688.P14390314432606815768

`∑[A078343(n+1)-A111352(n)]`
-/

namespace A114688.P14390314432606815768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 (n + 1) - A111352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114688.P14390314432606815768

namespace A114688

/-- `∑[A078343(n+1)-A111352(n)]` -/
def P14390314432606815768.Spec : Prop :=
  ∀ n, P14390314432606815768.a n = A114688 n

end A114688

/-! ## A114688.P14515149347550895077

`A000129(n+1)+3*A105635(n)`
-/

namespace A114688.P14515149347550895077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + 3 * A105635 n

end

end A114688.P14515149347550895077

namespace A114688

/-- `A000129(n+1)+3*A105635(n)` -/
def P14515149347550895077.Spec : Prop :=
  ∀ n, P14515149347550895077.a n = A114688 n

end A114688

/-! ## A114688.P17171264320110346689

`A163271(n+2)+∑[A111352(n+1)]`
-/

namespace A114688.P17171264320110346689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114688.P17171264320110346689

namespace A114688

/-- `A163271(n+2)+∑[A111352(n+1)]` -/
def P17171264320110346689.Spec : Prop :=
  ∀ n, P17171264320110346689.a n = A114688 n

end A114688

/-! ## A114688.P12216757872529851730

`A113224(n)+A114689(n)-A114697(n)`
-/

namespace A114688.P12216757872529851730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113224 n + (A114689 n - A114697 n)

end

end A114688.P12216757872529851730

namespace A114688

/-- `A113224(n)+A114689(n)-A114697(n)` -/
def P12216757872529851730.Spec : Prop :=
  ∀ n, P12216757872529851730.a n = A114688 n

end A114688

/-! ## A114688.P16838818830970672350

`A000129(n+1)+A114696(n)-A114697(n)`
-/

namespace A114688.P16838818830970672350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A114696 n - A114697 n)

end

end A114688.P16838818830970672350

namespace A114688

/-- `A000129(n+1)+A114696(n)-A114697(n)` -/
def P16838818830970672350.Spec : Prop :=
  ∀ n, P16838818830970672350.a n = A114688 n

end A114688

/-! ## A114688.P4056581558941359601

`A111955(n+1)+A113224(n)-A113225(n)`
-/

namespace A114688.P4056581558941359601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111955 (n + 1) + (A113224 n - A113225 n)

end

end A114688.P4056581558941359601

namespace A114688

/-- `A111955(n+1)+A113224(n)-A113225(n)` -/
def P4056581558941359601.Spec : Prop :=
  ∀ n, P4056581558941359601.a n = A114688 n

end A114688

/-! ## A114688.P9367753277089681086

`A114689(n)+A114697(n)-A005409(n+2)`
-/

namespace A114688.P9367753277089681086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114689 n + (A114697 n - A005409 (n + 2))

end

end A114688.P9367753277089681086

namespace A114688

/-- `A114689(n)+A114697(n)-A005409(n+2)` -/
def P9367753277089681086.Spec : Prop :=
  ∀ n, P9367753277089681086.a n = A114688 n

end A114688

/-! ## A114688.P13272233340748651397

`A113224(n+1)+A097076(n)-A113225(n+1)`
-/

namespace A114688.P13272233340748651397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113224 (n + 1) + (A097076 n - A113225 (n + 1))

end

end A114688.P13272233340748651397

namespace A114688

/-- `A113224(n+1)+A097076(n)-A113225(n+1)` -/
def P13272233340748651397.Spec : Prop :=
  ∀ n, P13272233340748651397.a n = A114688 n

end A114688

/-!
# A114689: Expansion of (1 +4*x -x^2)/((1-x^2)*(1-2*x-x^2)); a Pellian-related sequence.

The programs for A114689, the canonical program `A114689.P878954772585604485` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114689 has offset 0).

The definition of A114689 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x-x^2)/(1-2x-2x^2+2x^3+x^4))` (program `A114689.P878954772585604485`, by `A114689.P878954772585604485.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114689.P878954772585604485

`ogf((1+4x-x^2)/(1-2x-2x^2+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114689

/-- `ogf((1+4x-x^2)/(1-2x-2x^2+2x^3+x^4))` -/
def P878954772585604485.Spec : Prop :=
  ∀ n, P878954772585604485.a n = A114689 n

theorem P878954772585604485.correct : P878954772585604485.Spec := by
  intro n
  simp only [A114689]

end A114689

/-! ## A114689.P2097322250138054201

`2*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=13, a(3)=36`
-/

namespace A114689.P2097322250138054201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 13, 36] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A114689.P2097322250138054201

namespace A114689

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` -/
def P2097322250138054201.Spec : Prop :=
  ∀ n, P2097322250138054201.a n = A114689 n

end A114689

/-! ## A114689.P3577958070535202040

`3*A000129(n+1)-(1+(-1)^n)`
-/

namespace A114689.P3577958070535202040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000129 (n + 1) - (1 + (-1) ^ n)

end

end A114689.P3577958070535202040

namespace A114689

/-- `3*A000129(n+1)-(1+(-1)^n)` -/
def P3577958070535202040.Spec : Prop :=
  ∀ n, P3577958070535202040.a n = A114689 n

end A114689

/-! ## A114689.P13891175451469856446

`xor(1, 3*A000129(n+1))-1`
-/

namespace A114689.P13891175451469856446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (3 * A000129 (n + 1)) - 1

end

end A114689.P13891175451469856446

namespace A114689

/-- `xor(1, 3*A000129(n+1))-1` -/
def P13891175451469856446.Spec : Prop :=
  ∀ n, P13891175451469856446.a n = A114689 n

end A114689

/-! ## A114689.P11251915199112365350

`xor(1, 3*A215928(n+1))-1`
-/

namespace A114689.P11251915199112365350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (3 * A215928 (n + 1)) - 1

end

end A114689.P11251915199112365350

namespace A114689

/-- `xor(1, 3*A215928(n+1))-1` -/
def P11251915199112365350.Spec : Prop :=
  ∀ n, P11251915199112365350.a n = A114689 n

end A114689

/-! ## A114689.P11812365350653340443

`A114688(n)+A105635(n)`
-/

namespace A114689.P11812365350653340443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114688 n + A105635 n

end

end A114689.P11812365350653340443

namespace A114689

/-- `A114688(n)+A105635(n)` -/
def P11812365350653340443.Spec : Prop :=
  ∀ n, P11812365350653340443.a n = A114689 n

end A114689

/-! ## A114689.P1856916025067197778

`A048654(n)+A182143(n)-1`
-/

namespace A114689.P1856916025067197778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n + (A182143 n - 1)

end

end A114689.P1856916025067197778

namespace A114689

/-- `A048654(n)+A182143(n)-1` -/
def P1856916025067197778.Spec : Prop :=
  ∀ n, P1856916025067197778.a n = A114689 n

end A114689

/-! ## A114689.P11069165745026822804

`∑[A002203(n)+Δ[A111954(n)]]`
-/

namespace A114689.P11069165745026822804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114689.P11069165745026822804

namespace A114689

/-- `∑[A002203(n)+Δ[A111954(n)]]` -/
def P11069165745026822804.Spec : Prop :=
  ∀ n, P11069165745026822804.a n = A114689 n

end A114689

/-! ## A114689.P9750878918177314772

`∑[A182143(n)]+2*A105635(n)`
-/

namespace A114689.P9750878918177314772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A105635 n

end

end A114689.P9750878918177314772

namespace A114689

/-- `∑[A182143(n)]+2*A105635(n)` -/
def P9750878918177314772.Spec : Prop :=
  ∀ n, P9750878918177314772.a n = A114689 n

end A114689

/-! ## A114689.P7139830532834201312

`A001333(n)+xor(1, ∑[A001333(n+1)])`
-/

namespace A114689.P7139830532834201312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114689.P7139830532834201312

namespace A114689

/-- `A001333(n)+xor(1, ∑[A001333(n+1)])` -/
def P7139830532834201312.Spec : Prop :=
  ∀ n, P7139830532834201312.a n = A114689 n

end A114689

/-! ## A114689.P11572327279611490211

`A001333(n+1)+A111955(n+1)-1`
-/

namespace A114689.P11572327279611490211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + (A111955 (n + 1) - 1)

end

end A114689.P11572327279611490211

namespace A114689

/-- `A001333(n+1)+A111955(n+1)-1` -/
def P11572327279611490211.Spec : Prop :=
  ∀ n, P11572327279611490211.a n = A114689 n

end A114689

/-! ## A114689.P9837152003006670865

`A002203(n+1)+A002203(n)-A114647(n)`
-/

namespace A114689.P9837152003006670865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1) + (A002203 n - A114647 n)

end

end A114689.P9837152003006670865

namespace A114689

/-- `A002203(n+1)+A002203(n)-A114647(n)` -/
def P9837152003006670865.Spec : Prop :=
  ∀ n, P9837152003006670865.a n = A114689 n

end A114689

/-! ## A114689.P1057822046708772057

`A059841(n+1)+A114696(n)-A000129(n)`
-/

namespace A114689.P1057822046708772057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + (A114696 n - A000129 n)

end

end A114689.P1057822046708772057

namespace A114689

/-- `A059841(n+1)+A114696(n)-A000129(n)` -/
def P1057822046708772057.Spec : Prop :=
  ∀ n, P1057822046708772057.a n = A114689 n

end A114689

/-! ## A114689.P7672677547817016483

`A000129(n+1)+A114696(n)-A113224(n)`
-/

namespace A114689.P7672677547817016483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A114696 n - A113224 n)

end

end A114689.P7672677547817016483

namespace A114689

/-- `A000129(n+1)+A114696(n)-A113224(n)` -/
def P7672677547817016483.Spec : Prop :=
  ∀ n, P7672677547817016483.a n = A114689 n

end A114689

/-! ## A114689.P11166593644240535956

`A111955(n+1)+A114697(n)-A113225(n)`
-/

namespace A114689.P11166593644240535956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111955 (n + 1) + (A114697 n - A113225 n)

end

end A114689.P11166593644240535956

namespace A114689

/-- `A111955(n+1)+A114697(n)-A113225(n)` -/
def P11166593644240535956.Spec : Prop :=
  ∀ n, P11166593644240535956.a n = A114689 n

end A114689

/-! ## A114689.P15586533125342003462

`A000129(n+1)+A133654(n+1)-A033999(n)`
-/

namespace A114689.P15586533125342003462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A133654 (n + 1) - A033999 n)

end

end A114689.P15586533125342003462

namespace A114689

/-- `A000129(n+1)+A133654(n+1)-A033999(n)` -/
def P15586533125342003462.Spec : Prop :=
  ∀ n, P15586533125342003462.a n = A114689 n

end A114689

/-! ## A114689.P5157019953916830951

`A100227(n+1)+A182143(n)-A000129(n+1)`
-/

namespace A114689.P5157019953916830951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 (n + 1) + (A182143 n - A000129 (n + 1))

end

end A114689.P5157019953916830951

namespace A114689

/-- `A100227(n+1)+A182143(n)-A000129(n+1)` -/
def P5157019953916830951.Spec : Prop :=
  ∀ n, P5157019953916830951.a n = A114689 n

end A114689

/-! ## A114689.P3275608238623323064

`A111954(n+1)+A113224(n+1)-A100828(n)`
-/

namespace A114689.P3275608238623323064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 (n + 1) + (A113224 (n + 1) - A100828 n)

end

end A114689.P3275608238623323064

namespace A114689

/-- `A111954(n+1)+A113224(n+1)-A100828(n)` -/
def P3275608238623323064.Spec : Prop :=
  ∀ n, P3275608238623323064.a n = A114689 n

end A114689

/-! ## A114689.P15475957600957758097

`A033999(n+1)+A133654(n+1)+A000129(n+1)`
-/

namespace A114689.P15475957600957758097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + (A133654 (n + 1) + A000129 (n + 1))

end

end A114689.P15475957600957758097

namespace A114689

/-- `A033999(n+1)+A133654(n+1)+A000129(n+1)` -/
def P15475957600957758097.Spec : Prop :=
  ∀ n, P15475957600957758097.a n = A114689 n

end A114689

/-! ## A114689.P6904617002869643621

`Δ[A002203(n+1)]-A114647(n)`
-/

namespace A114689.P6904617002869643621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A114647 n

end

end A114689.P6904617002869643621

namespace A114689

/-- `Δ[A002203(n+1)]-A114647(n)` -/
def P6904617002869643621.Spec : Prop :=
  ∀ n, P6904617002869643621.a n = A114689 n

end A114689

/-!
# A114693: Number of returns to the x-axis in all hill-free Schroeder paths of length 2n+4. A Schroeder path of length 2n is a lattice path from (0,0) to (2n,0) consisting of U=(1,1), D=(1,-1) and H=(2,0) steps and never going below the x-axis. A hill is a peak at height 1.

The programs for A114693, the canonical program `A114693.P40457601980009517` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114693 has offset 0).

The definition of A114693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114693.P15198299800890580448

`A239204(n)+A065096(n+1)`
-/

namespace A114693.P15198299800890580448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239204 n + A065096 (n + 1)

end

end A114693.P15198299800890580448

namespace A114693

/-- `A239204(n)+A065096(n+1)` -/
def P15198299800890580448.Spec : Prop :=
  ∀ n, P15198299800890580448.a n = A114693 n

end A114693

/-! ## A114693.P171448901205287054

`Δ[A239204(n)-∑[A001003(n)]]`
-/

namespace A114693.P171448901205287054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239204 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114693.P171448901205287054

namespace A114693

/-- `Δ[A239204(n)-∑[A001003(n)]]` -/
def P171448901205287054.Spec : Prop :=
  ∀ n, P171448901205287054.a n = A114693 n

end A114693

/-! ## A114693.P40457601980009517

`∑[A065096(n+1)+A010683(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A114693

/-- `∑[A065096(n+1)+A010683(n)]` -/
def P40457601980009517.Spec : Prop :=
  ∀ n, P40457601980009517.a n = A114693 n

theorem P40457601980009517.correct : P40457601980009517.Spec := by
  intro n
  simp only [A114693]

end A114693

/-! ## A114693.P1758543471392046610

`Δ[A239204(n)]-A001003(n+1)`
-/

namespace A114693.P1758543471392046610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001003 (n + 1)

end

end A114693.P1758543471392046610

namespace A114693

/-- `Δ[A239204(n)]-A001003(n+1)` -/
def P1758543471392046610.Spec : Prop :=
  ∀ n, P1758543471392046610.a n = A114693 n

end A114693

/-! ## A114693.P11779075661386885502

`A239204(n+1)-A010683(n+1)`
-/

namespace A114693.P11779075661386885502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239204 (n + 1) - A010683 (n + 1)

end

end A114693.P11779075661386885502

namespace A114693

/-- `A239204(n+1)-A010683(n+1)` -/
def P11779075661386885502.Spec : Prop :=
  ∀ n, P11779075661386885502.a n = A114693 n

end A114693

/-! ## A114693.P8568975442274503215

`2*(A010736(n+1)-A010683(n+1))`
-/

namespace A114693.P8568975442274503215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A010736 (n + 1) - A010683 (n + 1))

end

end A114693.P8568975442274503215

namespace A114693

/-- `2*(A010736(n+1)-A010683(n+1))` -/
def P8568975442274503215.Spec : Prop :=
  ∀ n, P8568975442274503215.a n = A114693 n

end A114693

/-! ## A114693.P7812239627377111796

`A001003(n+1)+A065096(n+1)+A065096(n)`
-/

namespace A114693.P7812239627377111796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 (n + 1) + (A065096 (n + 1) + A065096 n)

end

end A114693.P7812239627377111796

namespace A114693

/-- `A001003(n+1)+A065096(n+1)+A065096(n)` -/
def P7812239627377111796.Spec : Prop :=
  ∀ n, P7812239627377111796.a n = A114693 n

end A114693

/-! ## A114693.P959721046180168276

`A239204(n+1)-(A239204(n)+A001003(n+1))`
-/

namespace A114693.P959721046180168276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239204 (n + 1) - (A239204 n + A001003 (n + 1))

end

end A114693.P959721046180168276

namespace A114693

/-- `A239204(n+1)-(A239204(n)+A001003(n+1))` -/
def P959721046180168276.Spec : Prop :=
  ∀ n, P959721046180168276.a n = A114693 n

end A114693

/-!
# A114694: Numbers n such that A055081(n) = A055081(n+1).

The programs for A114694, there is no canonical definition to state claims against.
-/

/-! ## A114694.P10910197754708523787

`eq[A055081(n+1), A055081(n+2)]+1`
-/

namespace A114694.P10910197754708523787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055081 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A114694.P10910197754708523787

/-!
# A114695: Three consecutive elements of the sequence built from a quadratic form over four consecutive Fibonacci numbers A000045.

The programs for A114695, there is no canonical definition to state claims against.
-/

/-! ## A114695.P15397446199215740030

`A071456(A120482(n+1))`
-/

namespace A114695.P15397446199215740030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071456 (A120482 (n + 1)).toNat

end

end A114695.P15397446199215740030

/-!
# A114696: Expansion of (1+4*x+x^2)/((1-x^2)*(1-2*x-x^2)); a Pellian-related sequence.

The programs for A114696, the canonical program `A114696.P11471053181855429089` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114696 has offset 0).

The definition of A114696 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x+x^2)/(1-2x-2x^2+2x^3+x^4))` (program `A114696.P11471053181855429089`, by `A114696.P11471053181855429089.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114696.P11471053181855429089

`ogf((1+4x+x^2)/(1-2x-2x^2+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114696

/-- `ogf((1+4x+x^2)/(1-2x-2x^2+2x^3+x^4))` -/
def P11471053181855429089.Spec : Prop :=
  ∀ n, P11471053181855429089.a n = A114696 n

theorem P11471053181855429089.correct : P11471053181855429089.Spec := by
  intro n
  simp only [A114696]

end A114696

/-! ## A114696.P9430532911413760960

`3*A000129(n+1)+A000129(n)-(3+(-1)^n)/2`
-/

namespace A114696.P9430532911413760960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A000129 (n + 1) + A000129 n : ℚ) - (3 + (-1) ^ n : ℚ) / 2

end

end A114696.P9430532911413760960

namespace A114696

/-- `3*A000129(n+1)+A000129(n)-(3+(-1)^n)/2` -/
def P9430532911413760960.Spec : Prop :=
  ∀ n, P9430532911413760960.a n = (A114696 n : ℚ)

end A114696

/-! ## A114696.P8911330801466842902

`2*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=15, a(3)=40`
-/

namespace A114696.P8911330801466842902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 15, 40] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A114696.P8911330801466842902

namespace A114696

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` -/
def P8911330801466842902.Spec : Prop :=
  ∀ n, P8911330801466842902.a n = A114696 n

end A114696

/-! ## A114696.P2274314014871180874

`1/2*(A002203(n+2)-3-(-1)^n)`
-/

namespace A114696.P2274314014871180874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A002203 (n + 2) - 3 - (-1) ^ n : ℚ)

end

end A114696.P2274314014871180874

namespace A114696

/-- `1/2*(A002203(n+2)-3-(-1)^n)` -/
def P2274314014871180874.Spec : Prop :=
  ∀ n, P2274314014871180874.a n = (A114696 n : ℚ)

end A114696

/-! ## A114696.P659825129176108152

`∑[A137199(n+2)]`
-/

namespace A114696.P659825129176108152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137199 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114696.P659825129176108152

namespace A114696

/-- `∑[A137199(n+2)]` -/
def P659825129176108152.Spec : Prop :=
  ∀ n, P659825129176108152.a n = A114696 n

end A114696

/-! ## A114696.P9608710171524028379

`∑[abs(Δ[A113224(n)])]`
-/

namespace A114696.P9608710171524028379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113224 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114696.P9608710171524028379

namespace A114696

/-- `∑[abs(Δ[A113224(n)])]` -/
def P9608710171524028379.Spec : Prop :=
  ∀ n, P9608710171524028379.a n = A114696 n

end A114696

/-! ## A114696.P15715792481530635701

`A113224(n+1)-1`
-/

namespace A114696.P15715792481530635701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113224 (n + 1) - 1

end

end A114696.P15715792481530635701

namespace A114696

/-- `A113224(n+1)-1` -/
def P15715792481530635701.Spec : Prop :=
  ∀ n, P15715792481530635701.a n = A114696 n

end A114696

/-! ## A114696.P4800163151438314316

`A078057(n+1)-gcd(2, n)`
-/

namespace A114696.P4800163151438314316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (n + 1) - (Nat.gcd 2 n : ℤ)

end

end A114696.P4800163151438314316

namespace A114696

/-- `A078057(n+1)-gcd(2, n)` -/
def P4800163151438314316.Spec : Prop :=
  ∀ n, P4800163151438314316.a n = A114696 n

end A114696

/-! ## A114696.P9128036971053216916

`∑[∑[A002203(n)]]-char[2*n]`
-/

namespace A114696.P9128036971053216916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A114696.P9128036971053216916

namespace A114696

/-- `∑[∑[A002203(n)]]-char[2*n]` -/
def P9128036971053216916.Spec : Prop :=
  ∀ n, P9128036971053216916.a n = A114696 n

end A114696

/-! ## A114696.P10870371428190312896

`∑[A002203(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A114696.P10870371428190312896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A002203 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114696.P10870371428190312896

namespace A114696

/-- `∑[A002203(n+1)-a(n-1)]` -/
def P10870371428190312896.Spec : Prop :=
  ∀ n, P10870371428190312896.a n = A114696 n

end A114696

/-! ## A114696.P17429622816511914521

`2*∑[A000129(n+1)]-char[2*n]`
-/

namespace A114696.P17429622816511914521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A114696.P17429622816511914521

namespace A114696

/-- `2*∑[A000129(n+1)]-char[2*n]` -/
def P17429622816511914521.Spec : Prop :=
  ∀ n, P17429622816511914521.a n = A114696 n

end A114696

/-! ## A114696.P8531652751633541486

`∑[2*A001333(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A114696.P8531652751633541486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * A001333 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114696.P8531652751633541486

namespace A114696

/-- `∑[2*A001333(n+1)-a(n-1)]` -/
def P8531652751633541486.Spec : Prop :=
  ∀ n, P8531652751633541486.a n = A114696 n

end A114696

/-! ## A114696.P14313484402298956660

`A097076(n)+A048745(n)`
-/

namespace A114696.P14313484402298956660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 n + A048745 n

end

end A114696.P14313484402298956660

namespace A114696

/-- `A097076(n)+A048745(n)` -/
def P14313484402298956660.Spec : Prop :=
  ∀ n, P14313484402298956660.a n = A114696 n

end A114696

/-! ## A114696.P17569157155042145554

`A034182(n+1)+A000035(n)`
-/

namespace A114696.P17569157155042145554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034182 (n + 1) + A000035 n

end

end A114696.P17569157155042145554

namespace A114696

/-- `A034182(n+1)+A000035(n)` -/
def P17569157155042145554.Spec : Prop :=
  ∀ n, P17569157155042145554.a n = A114696 n

end A114696

/-! ## A114696.P14427605994184215407

`2*A048739(n)-A059841(n)`
-/

namespace A114696.P14427605994184215407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048739 n - A059841 n

end

end A114696.P14427605994184215407

namespace A114696

/-- `2*A048739(n)-A059841(n)` -/
def P14427605994184215407.Spec : Prop :=
  ∀ n, P14427605994184215407.a n = A114696 n

end A114696

/-! ## A114696.P5945293983638597591

`A078057(n+1)-Δ[A007494(n)]`
-/

namespace A114696.P5945293983638597591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (n + 1) - (f1 (n + 1) - f1 n)

end

end A114696.P5945293983638597591

namespace A114696

/-- `A078057(n+1)-Δ[A007494(n)]` -/
def P5945293983638597591.Spec : Prop :=
  ∀ n, P5945293983638597591.a n = A114696 n

end A114696

/-! ## A114696.P5263932162598559180

`A100828(n+1)-Δ[A014601(n)]`
-/

namespace A114696.P5263932162598559180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100828 (n + 1) - (f1 (n + 1) - f1 n)

end

end A114696.P5263932162598559180

namespace A114696

/-- `A100828(n+1)-Δ[A014601(n)]` -/
def P5263932162598559180.Spec : Prop :=
  ∀ n, P5263932162598559180.a n = A114696 n

end A114696

/-! ## A114696.P1034960026110155014

`A078057(n+1)-A000034(n+1)`
-/

namespace A114696.P1034960026110155014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (n + 1) - A000034 (n + 1)

end

end A114696.P1034960026110155014

namespace A114696

/-- `A078057(n+1)-A000034(n+1)` -/
def P1034960026110155014.Spec : Prop :=
  ∀ n, P1034960026110155014.a n = A114696 n

end A114696

/-! ## A114696.P15102995448178268282

`A001333(n+2)-A000034(n+1)`
-/

namespace A114696.P15102995448178268282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 2) - A000034 (n + 1)

end

end A114696.P15102995448178268282

namespace A114696

/-- `A001333(n+2)-A000034(n+1)` -/
def P15102995448178268282.Spec : Prop :=
  ∀ n, P15102995448178268282.a n = A114696 n

end A114696

/-! ## A114696.P529600669522709852

`A001333(n+2)-A040001(n+2)`
-/

namespace A114696.P529600669522709852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 2) - A040001 (n + 2)

end

end A114696.P529600669522709852

namespace A114696

/-- `A001333(n+2)-A040001(n+2)` -/
def P529600669522709852.Spec : Prop :=
  ∀ n, P529600669522709852.a n = A114696 n

end A114696

/-!
# A114697: Expansion of (1+x+x^2)/((1-x^2)*(1-2*x-x^2)); a Pellian-related sequence.

The programs for A114697, the canonical program `A114697.P14729601606481391852` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114697 has offset 0).

The definition of A114697 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2)/(1-2x-2x^2+2x^3+x^4))` (program `A114697.P14729601606481391852`, by `A114697.P14729601606481391852.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114697.P14729601606481391852

`ogf((1+x+x^2)/(1-2x-2x^2+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114697

/-- `ogf((1+x+x^2)/(1-2x-2x^2+2x^3+x^4))` -/
def P14729601606481391852.Spec : Prop :=
  ∀ n, P14729601606481391852.a n = A114697 n

theorem P14729601606481391852.correct : P14729601606481391852.Spec := by
  intro n
  simp only [A114697]

end A114697

/-! ## A114697.P11834499421961637779

`2*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=22`
-/

namespace A114697.P11834499421961637779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 22] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A114697.P11834499421961637779

namespace A114697

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` -/
def P11834499421961637779.Spec : Prop :=
  ∀ n, P11834499421961637779.a n = A114697 n

end A114697

/-! ## A114697.P2440243113414750799

`(2*A078343(n+2)-A010694(n))/4`
-/

namespace A114697.P2440243113414750799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A078343 (n + 2) - A010694 n : ℚ) / 4

end

end A114697.P2440243113414750799

namespace A114697

/-- `(2*A078343(n+2)-A010694(n))/4` -/
def P2440243113414750799.Spec : Prop :=
  ∀ n, P2440243113414750799.a n = (A114697 n : ℚ)

end A114697

/-! ## A114697.P14530067552377894234

`(3*A002203(n)+10*A000129(n)-3+(-1)^n)/4`
-/

namespace A114697.P14530067552377894234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A002203 n + 10 * A000129 n - 3 + (-1) ^ n : ℚ) / 4

end

end A114697.P14530067552377894234

namespace A114697

/-- `(3*A002203(n)+10*A000129(n)-3+(-1)^n)/4` -/
def P14530067552377894234.Spec : Prop :=
  ∀ n, P14530067552377894234.a n = (A114697 n : ℚ)

end A114697

/-! ## A114697.P7408056978205570858

`2*a(n-1)+a(n-2)+gcd(2, n)` with `a(0)=1, a(1)=3`
-/

namespace A114697.P7408056978205570858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) + (a (n - 2) + Nat.gcd 2 n)

end

end A114697.P7408056978205570858

namespace A114697

/-- `2*a(n-1)+a(n-2)+gcd(2, n)` -/
def P7408056978205570858.Spec : Prop :=
  ∀ n, (P7408056978205570858.a n : ℤ) = A114697 n

end A114697

/-! ## A114697.P14481902491320467040

`round(∑[A048655(n)/2])`
-/

namespace A114697.P14481902491320467040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048655 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114697.P14481902491320467040

namespace A114697

/-- `round(∑[A048655(n)/2])` -/
def P14481902491320467040.Spec : Prop :=
  ∀ n, P14481902491320467040.a n = A114697 n

end A114697

/-! ## A114697.P10794485014593352564

`∑[∑[A111955(n)]+1]`
-/

namespace A114697.P10794485014593352564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111955 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114697.P10794485014593352564

namespace A114697

/-- `∑[∑[A111955(n)]+1]` -/
def P10794485014593352564.Spec : Prop :=
  ∀ n, P10794485014593352564.a n = A114697 n

end A114697

/-! ## A114697.P6145595511127143050

`A098586(n)-(a(n-1)+1)` with `a(0)=1`
-/

namespace A114697.P6145595511127143050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098586 n - (a (n - 1) + 1)

end

end A114697.P6145595511127143050

namespace A114697

/-- `A098586(n)-(a(n-1)+1)` -/
def P6145595511127143050.Spec : Prop :=
  ∀ n, P6145595511127143050.a n = A114697 n

end A114697

/-! ## A114697.P10821853020539078516

`∑[A078343(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A114697.P10821853020539078516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A078343 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114697.P10821853020539078516

namespace A114697

/-- `∑[A078343(n+1)-a(n-1)]` -/
def P10821853020539078516.Spec : Prop :=
  ∀ n, P10821853020539078516.a n = A114697 n

end A114697

/-! ## A114697.P5098032169561786795

`A113224(n)+A105635(n)`
-/

namespace A114697.P5098032169561786795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113224 n + A105635 n

end

end A114697.P5098032169561786795

namespace A114697

/-- `A113224(n)+A105635(n)` -/
def P5098032169561786795.Spec : Prop :=
  ∀ n, P5098032169561786795.a n = A114697 n

end A114697

/-! ## A114697.P7452477168505579

`A391272(n)+A008619(n)`
-/

namespace A114697.P7452477168505579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391272 n + A008619 n

end

end A114697.P7452477168505579

namespace A114697

/-- `A391272(n)+A008619(n)` -/
def P7452477168505579.Spec : Prop :=
  ∀ n, P7452477168505579.a n = A114697 n

end A114697

/-! ## A114697.P16038232464585368619

`∑[A000129(n)+∑[A111954(n)]]`
-/

namespace A114697.P16038232464585368619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114697.P16038232464585368619

namespace A114697

/-- `∑[A000129(n)+∑[A111954(n)]]` -/
def P16038232464585368619.Spec : Prop :=
  ∀ n, P16038232464585368619.a n = A114697 n

end A114697

/-! ## A114697.P3164574917723729248

`A098790(n+1)-A113225(n+1)`
-/

namespace A114697.P3164574917723729248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098790 (n + 1) - A113225 (n + 1)

end

end A114697.P3164574917723729248

namespace A114697

/-- `A098790(n+1)-A113225(n+1)` -/
def P3164574917723729248.Spec : Prop :=
  ∀ n, P3164574917723729248.a n = A114697 n

end A114697

/-! ## A114697.P14443980484976345713

`A097076(n+1)+∑[A097075(n+1)]`
-/

namespace A114697.P14443980484976345713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114697.P14443980484976345713

namespace A114697

/-- `A097076(n+1)+∑[A097075(n+1)]` -/
def P14443980484976345713.Spec : Prop :=
  ∀ n, P14443980484976345713.a n = A114697 n

end A114697

/-! ## A114697.P16358284692283609526

`A097076(n+1)+A113225(n+1)-1`
-/

namespace A114697.P16358284692283609526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 (n + 1) + (A113225 (n + 1) - 1)

end

end A114697.P16358284692283609526

namespace A114697

/-- `A097076(n+1)+A113225(n+1)-1` -/
def P16358284692283609526.Spec : Prop :=
  ∀ n, P16358284692283609526.a n = A114697 n

end A114697

/-! ## A114697.P14927381501784447897

`A000129(n+1)+A114696(n)-A114688(n)`
-/

namespace A114697.P14927381501784447897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A114696 n - A114688 n)

end

end A114697.P14927381501784447897

namespace A114697

/-- `A000129(n+1)+A114696(n)-A114688(n)` -/
def P14927381501784447897.Spec : Prop :=
  ∀ n, P14927381501784447897.a n = A114697 n

end A114697

/-! ## A114697.P12741206146073367926

`A005409(n+2)+A114688(n)-A114689(n)`
-/

namespace A114697.P12741206146073367926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005409 (n + 2) + (A114688 n - A114689 n)

end

end A114697.P12741206146073367926

namespace A114697

/-- `A005409(n+2)+A114688(n)-A114689(n)` -/
def P12741206146073367926.Spec : Prop :=
  ∀ n, P12741206146073367926.a n = A114697 n

end A114697

/-! ## A114697.P3130339230236459767

`A105635(n+1)+A105635(n+1)-A113225(n)`
-/

namespace A114697.P3130339230236459767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105635 (n + 1) + (A105635 (n + 1) - A113225 n)

end

end A114697.P3130339230236459767

namespace A114697

/-- `A105635(n+1)+A105635(n+1)-A113225(n)` -/
def P3130339230236459767.Spec : Prop :=
  ∀ n, P3130339230236459767.a n = A114697 n

end A114697

/-! ## A114697.P5696503844750202595

`ceil(A048746(n)/2)`
-/

namespace A114697.P5696503844750202595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048746 n : ℚ) / 2⌉

end

end A114697.P5696503844750202595

namespace A114697

/-- `ceil(A048746(n)/2)` -/
def P5696503844750202595.Spec : Prop :=
  ∀ n, P5696503844750202595.a n = A114697 n

end A114697

/-! ## A114697.P6667265432966439706

`(A114689(n+1)-A100828(n+1))/2`
-/

namespace A114697.P6667265432966439706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114689 (n + 1) - A100828 (n + 1) : ℚ) / 2

end

end A114697.P6667265432966439706

namespace A114697

/-- `(A114689(n+1)-A100828(n+1))/2` -/
def P6667265432966439706.Spec : Prop :=
  ∀ n, P6667265432966439706.a n = (A114697 n : ℚ)

end A114697

/-!
# A114698: Let M(n) be the n X n matrix m(i,j)=min(i,j) for 1<=i,j<=n then a(n) is the trace of M(n)^(-3).

The programs for A114698, the canonical program `A114698.P14662672217882295365` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114698 has offset 1).

The definition of A114698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114698.P14662672217882295365

`floor(abs(20*n-ϕ))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114698

/-- `floor(abs(20*n-ϕ))` -/
def P14662672217882295365.Spec : Prop :=
  ∀ n, P14662672217882295365.a n = A114698 (n + 1)

theorem P14662672217882295365.correct : P14662672217882295365.Spec := by
  intro n
  simp only [A114698, Nat.add_sub_cancel]

end A114698

/-!
# A114699: A000799(n) - A064355(n).

The programs for A114699, the canonical program `A114699.P8287388229855982445` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114699 has offset 0).

The definition of A114699 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064355, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A114699.P8287388229855982445

`A000799(n+1)-A064355(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A114699

/-- `A000799(n+1)-A064355(n+1)` -/
def P8287388229855982445.Spec : Prop :=
  ∀ n, P8287388229855982445.a n = A114699 n

theorem P8287388229855982445.correct : P8287388229855982445.Spec := by
  intro n
  simp only [A114699]

end A114699

/-! ## A114699.P11752292579600565633

`floor(A182256(n+1)/(n+1))`
-/

namespace A114699.P11752292579600565633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182256 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A114699.P11752292579600565633

namespace A114699

/-- `floor(A182256(n+1)/(n+1))` -/
def P11752292579600565633.Spec : Prop :=
  ∀ n, P11752292579600565633.a n = A114699 n

end A114699

/-! ## A114699.P11010112597441389219

`A000799(n+1)-2*A000048(n+1)`
-/

namespace A114699.P11010112597441389219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (n + 1) - 2 * A000048 (n + 1)

end

end A114699.P11010112597441389219

namespace A114699

/-- `A000799(n+1)-2*A000048(n+1)` -/
def P11010112597441389219.Spec : Prop :=
  ∀ n, P11010112597441389219.a n = A114699 n

end A114699

/-! ## A114699.P16166674934145288065

`(A054650(n+1)+A006788(n+1))%A000048(n+1)`
-/

namespace A114699.P16166674934145288065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054650 (n + 1) + A006788 (n + 1)) (A000048 (n + 1))

end

end A114699.P16166674934145288065

namespace A114699

/-- `(A054650(n+1)+A006788(n+1))%A000048(n+1)` -/
def P16166674934145288065.Spec : Prop :=
  ∀ n, P16166674934145288065.a n = A114699 n

end A114699

/-! ## A114699.P7231068747569352397

`floor(2^(n+1)/(n+1))%A000048(1-∑{p}[n+1, C(#, n)]+n)`
-/

namespace A114699.P7231068747569352397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 ^ (n + 1) : ℚ) / (n + 1 : ℚ)⌋ (A000048 (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ)).toNat)

end

end A114699.P7231068747569352397

namespace A114699

/-- `floor(2^(n+1)/(n+1))%A000048(1-∑{p}[n+1, C(#, n)]+n)` -/
def P7231068747569352397.Spec : Prop :=
  ∀ n, P7231068747569352397.a n = A114699 n

end A114699

/-! ## A114699.P17553650377566735335

`A000799(n+1)-2*A053633(∑[n]+1)`
-/

namespace A114699.P17553650377566735335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (n + 1) - 2 * A053633 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A114699.P17553650377566735335

namespace A114699

/-- `A000799(n+1)-2*A053633(∑[n]+1)` -/
def P17553650377566735335.Spec : Prop :=
  ∀ n, P17553650377566735335.a n = A114699 n

end A114699

/-! ## A114699.P14548805777930591941

`A000799(n+1)%A053633(A000124(n))`
-/

namespace A114699.P14548805777930591941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000799 (n + 1)) (A053633 (A000124 n).toNat)

end

end A114699.P14548805777930591941

namespace A114699

/-- `A000799(n+1)%A053633(A000124(n))` -/
def P14548805777930591941.Spec : Prop :=
  ∀ n, P14548805777930591941.a n = A114699 n

end A114699

