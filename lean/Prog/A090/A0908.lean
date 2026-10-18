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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A090800: r when numerator(Bernoulli(2*n)/(2*n)) and numerator(Bernoulli(2*n)/(2*n*(2*n-r))) are different and n is minimum for some integer r for the first i irregular primes. These include entries when the irregularity index > 1.

The programs for A090800, there is no canonical definition to state claims against.
-/

/-! ## A090800.P13380609256904761174

`A308765(n+1)-2`
-/

namespace A090800.P13380609256904761174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308765 (n + 1) - 2

end

end A090800.P13380609256904761174

/-! ## A090800.P11305908048567312355

`A023444(A308765(n+1))`
-/

namespace A090800.P11305908048567312355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A308765 (n + 1)).toNat

end

end A090800.P11305908048567312355

/-! ## A090800.P14050278641018974528

`A023445(A308765(n+1)+1)`
-/

namespace A090800.P14050278641018974528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A308765 (n + 1) + 1).toNat

end

end A090800.P14050278641018974528

/-! ## A090800.P1897362360796237981

`A023446(A308765(n+1)+2)`
-/

namespace A090800.P1897362360796237981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A308765 (n + 1) + 2).toNat

end

end A090800.P1897362360796237981

/-! ## A090800.P9055400799437148249

`A004275(A308765(n+1)/2)`
-/

namespace A090800.P9055400799437148249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.roundAway ((A308765 (n + 1) : ℚ) / 2)).toNat

end

end A090800.P9055400799437148249

/-! ## A090800.P6582223802816911720

`A051755(A308765(n+1)/2)`
-/

namespace A090800.P6582223802816911720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (SequenceMachineLib.roundAway ((A308765 (n + 1) : ℚ) / 2)).toNat

end

end A090800.P6582223802816911720

/-! ## A090800.P4715297073814038659

`A289207(lcm(2, A308765(n+1)))`
-/

namespace A090800.P4715297073814038659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (Int.lcm 2 (A308765 (n + 1)))

end

end A090800.P4715297073814038659

/-! ## A090800.P14870205968994171501

`A289207(and(-2, A308765(n+1)))`
-/

namespace A090800.P14870205968994171501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (Int.land (-2) (A308765 (n + 1))).toNat

end

end A090800.P14870205968994171501

/-! ## A090800.P8205797376640486435

`A289207(A308765(n+1))/A000041(gcd(n, n+1))`
-/

namespace A090800.P8205797376640486435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289207 (A308765 (n + 1)).toNat : ℚ) / (A000041 (Nat.gcd n (n + 1)) : ℚ)

end

end A090800.P8205797376640486435

/-! ## A090800.P1863952424886327652

`A289207(A308765(n+1)+A000045(C(n, n+1)))`
-/

namespace A090800.P1863952424886327652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A308765 (n + 1) + A000045 (Nat.choose n (n + 1))).toNat

end

end A090800.P1863952424886327652

/-!
# A090801: Distinct numbers appearing as denominators of Bernoulli numbers.

The programs for A090801, there is no canonical definition to state claims against.
-/

/-! ## A090801.P4358152849337139320

`record[A027642(n)%A095208(n+1)]`
-/

namespace A090801.P4358152849337139320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027642 n) (A095208 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090801.P4358152849337139320

/-! ## A090801.P8970681939572085755

`record[A106458(n)%A095208(n+1)]`
-/

namespace A090801.P8970681939572085755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106458 n) (A095208 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090801.P8970681939572085755

/-! ## A090801.P13492885079002074875

`record[A141056(n)%A095208(n+1)]`
-/

namespace A090801.P13492885079002074875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141056 n) (A095208 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090801.P13492885079002074875

/-! ## A090801.P14480881574838094520

`A027642(eq[A000523(n+1), A078349(n+1)])`
-/

namespace A090801.P14480881574838094520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A090801.P14480881574838094520

/-!
# A090802: Triangle read by rows: a(n,k) = number of k-length walks in the Hasse diagram of a Boolean algebra of order n.

The programs for A090802, the canonical program `A090802.P9470819191447258427` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090802 has offset 0).

The definition of A090802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090802.P9470819191447258427

`A008279(n)*A130321(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A090802

/-- `A008279(n)*A130321(n)` -/
def P9470819191447258427.Spec : Prop :=
  ∀ n, P9470819191447258427.a n = A090802 n

theorem P9470819191447258427.correct : P9470819191447258427.Spec := by
  intro n
  simp only [A090802]

end A090802

/-! ## A090802.P15117886879179671992

`A038207(n)*A233543(n)`
-/

namespace A090802.P15117886879179671992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A233543 n

end

end A090802.P15117886879179671992

namespace A090802

/-- `A038207(n)*A233543(n)` -/
def P15117886879179671992.Spec : Prop :=
  ∀ n, P15117886879179671992.a n = A090802 n

end A090802

/-! ## A090802.P10349460611423368187

`A126064(A061579(n))`
-/

namespace A090802.P10349460611423368187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126064 (A061579 n).toNat

end

end A090802.P10349460611423368187

namespace A090802

/-- `A126064(A061579(n))` -/
def P10349460611423368187.Spec : Prop :=
  ∀ n, P10349460611423368187.a n = A090802 n

end A090802

/-! ## A090802.P14810873769523027948

`A126064(Δ[n-A215630(n+1)]+n+1)`
-/

namespace A090802.P14810873769523027948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A215630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126064 (f1 (n + 1) - f1 n + (n + 1 : ℤ)).toNat

end

end A090802.P14810873769523027948

namespace A090802

/-- `A126064(Δ[n-A215630(n+1)]+n+1)` -/
def P14810873769523027948.Spec : Prop :=
  ∀ n, P14810873769523027948.a n = A090802 n

end A090802

/-! ## A090802.P1874121775202459602

`A094587(A061579(n))*A130321(n)`
-/

namespace A090802.P1874121775202459602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A061579 n).toNat * A130321 n

end

end A090802.P1874121775202459602

namespace A090802

/-- `A094587(A061579(n))*A130321(n)` -/
def P1874121775202459602.Spec : Prop :=
  ∀ n, P1874121775202459602.a n = A090802 n

end A090802

/-! ## A090802.P1702391476757927638

`A068424(n+1)/A003506(n+1)*A038207(n)`
-/

namespace A090802.P1702391476757927638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068424 (n + 1) : ℚ) / (A003506 (n + 1) : ℚ) * (A038207 n : ℚ)

end

end A090802.P1702391476757927638

namespace A090802

/-- `A068424(n+1)/A003506(n+1)*A038207(n)` -/
def P1702391476757927638.Spec : Prop :=
  ∀ n, P1702391476757927638.a n = (A090802 n : ℚ)

end A090802

/-! ## A090802.P634565900821983245

`A028246(n+1)/A008277(n+1)*A038207(n)`
-/

namespace A090802.P634565900821983245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028246 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ) * (A038207 n : ℚ)

end

end A090802.P634565900821983245

namespace A090802

/-- `A028246(n+1)/A008277(n+1)*A038207(n)` -/
def P634565900821983245.Spec : Prop :=
  ∀ n, P634565900821983245.a n = (A090802 n : ℚ)

end A090802

/-!
# A090803: a(n) = largest integer m for which "the reduction lemma implies N(p,n;2) = p-n+1 for 2 <= n <= p <= m".

The programs for A090803, there is no canonical definition to state claims against.
-/

/-! ## A090803.P15438249970562298409

`A353395(2^n)+A194960(n+1)`
-/

namespace A090803.P15438249970562298409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353395 (2 ^ n) + A194960 (n + 1)

end

end A090803.P15438249970562298409

/-! ## A090803.P9296700113895042058

`A260438(A002966(n+1))+A001934(n)`
-/

namespace A090803.P9296700113895042058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260438 (A002966 (n + 1)).toNat + A001934 n

end

end A090803.P9296700113895042058

/-!
# A090804: Numerators in an asymptotic expansion of Ramanujan.

The programs for A090804, there is no canonical definition to state claims against.
-/

/-! ## A090804.P17737516589599403659

`3*A000007(n)-A260306(n)`
-/

namespace A090804.P17737516589599403659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000007 n - A260306 n

end

end A090804.P17737516589599403659

/-! ## A090804.P14654662255885624295

`A065973(n)%5-A260306(n)`
-/

namespace A090804.P14654662255885624295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065973 n) 5 - A260306 n

end

end A090804.P14654662255885624295

/-! ## A090804.P16863458616061408107

`A017910(2*(n+1))*A264150(n)`
-/

namespace A090804.P16863458616061408107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (2 * (n + 1)) * A264150 n

end

end A090804.P16863458616061408107

/-! ## A090804.P8475942138659621855

`A055998(A151933(n))-A260306(n)`
-/

namespace A090804.P8475942138659621855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (A151933 n).toNat - A260306 n

end

end A090804.P8475942138659621855

/-! ## A090804.P16485780887116240028

`A264148(Δ[n²])`
-/

namespace A090804.P16485780887116240028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264148 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A090804.P16485780887116240028

/-!
# A090805: A simple recurrence with one error.

The programs for A090805, the canonical program `A090805.P15602721231349040859` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090805 has offset 0).

The definition of A090805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090805.P15602721231349040859

`n*(a(n-1)+1)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=21, a(4)=85`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A090805

/-- `n*(a(n-1)+1)` -/
def P15602721231349040859.Spec : Prop :=
  ∀ n, (P15602721231349040859.a n : ℤ) = A090805 n

theorem P15602721231349040859.correct : P15602721231349040859.Spec := by
  intro n
  simp only [A090805]

end A090805

/-! ## A090805.P11561011460175645625

`A033540(n+1)-floor(A001710(n)/4)`
-/

namespace A090805.P11561011460175645625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033540 (n + 1) - ⌊(A001710 n : ℚ) / 4⌋

end

end A090805.P11561011460175645625

namespace A090805

/-- `A033540(n+1)-floor(A001710(n)/4)` -/
def P11561011460175645625.Spec : Prop :=
  ∀ n, P11561011460175645625.a n = A090805 n

end A090805

/-! ## A090805.P4048691126854966184

`A326055(n*a(n-1)+n)+1` with `a(0)=1`
-/

namespace A090805.P4048691126854966184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A326055 ((n : ℤ) * a (n - 1) + (n : ℤ)).toNat + 1

end

end A090805.P4048691126854966184

namespace A090805

/-- `A326055(n*a(n-1)+n)+1` -/
def P4048691126854966184.Spec : Prop :=
  ∀ n, P4048691126854966184.a n = A090805 n

end A090805

/-! ## A090805.P13541589533952854916

`A007913(A344229(n))`
-/

namespace A090805.P13541589533952854916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A344229 n).toNat

end

end A090805.P13541589533952854916

namespace A090805

/-- `A007913(A344229(n))` -/
def P13541589533952854916.Spec : Prop :=
  ∀ n, P13541589533952854916.a n = A090805 n

end A090805

/-!
# A090806: Triangular array read by rows: T(n,k) (n >= 2, 1 <= k <= n) = number of partitions of k white balls and n-k black balls in which each part has at least one ball of each color. Also limit of the joint major-index / inversion polynomial for permutations of n elements, as n becomes infinite.

The programs for A090806, there is no canonical definition to state claims against.
-/

/-! ## A090806.P5674368039489404393

`A048766(A001358(A001263(n+1))+A001263(n+1))`
-/

namespace A090806.P5674368039489404393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A001358 (A001263 (n + 1)).toNat + A001263 (n + 1)).toNat

end

end A090806.P5674368039489404393

/-! ## A090806.P9788062635474290917

`A322452(6*A036561(n))`
-/

namespace A090806.P9788062635474290917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322452 (6 * A036561 n).toNat

end

end A090806.P9788062635474290917

/-! ## A090806.P1338308095972650647

`A322452(3*A081954(n+1))`
-/

namespace A090806.P1338308095972650647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322452 (3 * A081954 (n + 1)).toNat

end

end A090806.P1338308095972650647

/-! ## A090806.P6910430710858179114

`A163563(A026626(n))`
-/

namespace A090806.P6910430710858179114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163563 (A026626 n).toNat

end

end A090806.P6910430710858179114

/-! ## A090806.P3272476967830830503

`A264810(A212954(n+1))`
-/

namespace A090806.P3272476967830830503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (A212954 (n + 1)).toNat

end

end A090806.P3272476967830830503

/-!
# A090807: First prime in the earliest chain of n consecutive primes with gaps 2^1, 2^2, ..., 2^(n-1).

The programs for A090807, there is no canonical definition to state claims against.
-/

/-! ## A090807.P13298320907956461431

`A079014(n+1)`
-/

namespace A090807.P13298320907956461431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079014 (n + 1)

end

end A090807.P13298320907956461431

/-! ## A090807.P2836009843368863638

`record[A079014(A000700(n))]`
-/

namespace A090807.P2836009843368863638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079014 (A000700 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090807.P2836009843368863638

/-! ## A090807.P4669172687201616241

`record[A079014(A169995(n))]`
-/

namespace A090807.P4669172687201616241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079014 (A169995 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090807.P4669172687201616241

/-!
# A090809: Coefficient of the irreducible character of S_m indexed by (m-2n+2,2n-2) in the n-th Kronecker power of the representation indexed by (m-2,2).

The programs for A090809, the canonical program `A090809.P13992595601183232083` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090809 has offset 0).

The definition of A090809 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090809.P9882060914680149600

`(n-1)*n*(3*n²+n+10)/24`
-/

namespace A090809.P9882060914680149600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) * ((n : ℚ) * ((3 * n ^ 2 + (n + 10) : ℚ) / 24))

end

end A090809.P9882060914680149600

namespace A090809

/-- `(n-1)*n*(3*n²+n+10)/24` -/
def P9882060914680149600.Spec : Prop :=
  ∀ n, P9882060914680149600.a n = (A090809 n : ℚ)

end A090809

/-! ## A090809.P13992595601183232083

`2*C(n, 2)+4*C(n, 3)+3*C(n, 4)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A090809

/-- `2*C(n, 2)+4*C(n, 3)+3*C(n, 4)` -/
def P13992595601183232083.Spec : Prop :=
  ∀ n, (P13992595601183232083.a n : ℤ) = A090809 n

theorem P13992595601183232083.correct : P13992595601183232083.Spec := by
  intro n
  simp only [A090809]

end A090809

/-! ## A090809.P18233256709720772871

`∑[n*C(n, 2)]-C(n, 3)`
-/

namespace A090809.P18233256709720772871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose n 3 : ℤ)

end

end A090809.P18233256709720772871

namespace A090809

/-- `∑[n*C(n, 2)]-C(n, 3)` -/
def P18233256709720772871.Spec : Prop :=
  ∀ n, P18233256709720772871.a n = A090809 n

end A090809

/-! ## A090809.P14823848859253270368

`∑[∑[n²-n]]+C(n, 4)`
-/

namespace A090809.P14823848859253270368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 4 : ℤ)

end

end A090809.P14823848859253270368

namespace A090809

/-- `∑[∑[n²-n]]+C(n, 4)` -/
def P14823848859253270368.Spec : Prop :=
  ∀ n, P14823848859253270368.a n = A090809 n

end A090809

/-! ## A090809.P4655265079087665256

`C(C(n, 2), 2)+∑[∑[n]]-n`
-/

namespace A090809.P4655265079087665256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.choose n 2) 2 : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A090809.P4655265079087665256

namespace A090809

/-- `C(C(n, 2), 2)+∑[∑[n]]-n` -/
def P4655265079087665256.Spec : Prop :=
  ∀ n, P4655265079087665256.a n = A090809 n

end A090809

/-! ## A090809.P2074576094894154904

`∑[(1-n)*∑[floor(atan(n)-n)]]`
-/

namespace A090809.P2074576094894154904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) - (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090809.P2074576094894154904

namespace A090809

/-- `∑[(1-n)*∑[floor(atan(n)-n)]]` -/
def P2074576094894154904.Spec : Prop :=
  ∀ n, P2074576094894154904.a n = A090809 n

end A090809

/-! ## A090809.P13972926760752928382

`∑[∑[∑[a(n-1)+3]]]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=4`
-/

namespace A090809.P13972926760752928382
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 4] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090809.P13972926760752928382

namespace A090809

/-- `∑[∑[∑[a(n-1)+3]]]` -/
def P13972926760752928382.Spec : Prop :=
  ∀ n, (P13972926760752928382.a n : ℤ) = A090809 n

end A090809

/-! ## A090809.P17374328566370902725

`∑[(C(n, 2)+1)*(2*n)%(n+1)]`
-/

namespace A090809.P17374328566370902725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 1) * (2 * n % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090809.P17374328566370902725

namespace A090809

/-- `∑[(C(n, 2)+1)*(2*n)%(n+1)]` -/
def P17374328566370902725.Spec : Prop :=
  ∀ n, (P17374328566370902725.a n : ℤ) = A090809 n

end A090809

/-! ## A090809.P17532699664592306669

`n²-n+4*C(n, 3)+3*C(n, 4)`
-/

namespace A090809.P17532699664592306669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ) + (4 * Nat.choose n 3 : ℤ) + (3 * Nat.choose n 4 : ℤ)

end

end A090809.P17532699664592306669

namespace A090809

/-- `n²-n+4*C(n, 3)+3*C(n, 4)` -/
def P17532699664592306669.Spec : Prop :=
  ∀ n, P17532699664592306669.a n = A090809 n

end A090809

/-! ## A090809.P2539003063139212823

`A050534(n)+A005581(n)`
-/

namespace A090809.P2539003063139212823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n + A005581 n

end

end A090809.P2539003063139212823

namespace A090809

/-- `A050534(n)+A005581(n)` -/
def P2539003063139212823.Spec : Prop :=
  ∀ n, P2539003063139212823.a n = A090809 n

end A090809

/-! ## A090809.P9702914442699405679

`A001296(n)-A006003(n)`
-/

namespace A090809.P9702914442699405679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 n - A006003 n

end

end A090809.P9702914442699405679

namespace A090809

/-- `A001296(n)-A006003(n)` -/
def P9702914442699405679.Spec : Prop :=
  ∀ n, P9702914442699405679.a n = A090809 n

end A090809

/-! ## A090809.P16164493127144794080

`A002817(n)-A006527(n)`
-/

namespace A090809.P16164493127144794080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n - A006527 n

end

end A090809.P16164493127144794080

namespace A090809

/-- `A002817(n)-A006527(n)` -/
def P16164493127144794080.Spec : Prop :=
  ∀ n, P16164493127144794080.a n = A090809 n

end A090809

/-! ## A090809.P16126994072037663197

`A086602(n)-A007290(n)`
-/

namespace A090809.P16126994072037663197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086602 n - A007290 n

end

end A090809.P16126994072037663197

namespace A090809

/-- `A086602(n)-A007290(n)` -/
def P16126994072037663197.Spec : Prop :=
  ∀ n, P16126994072037663197.a n = A090809 n

end A090809

/-! ## A090809.P681956464670980964

`A103290(n)-A000332(n)`
-/

namespace A090809.P681956464670980964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n - A000332 n

end

end A090809.P681956464670980964

namespace A090809

/-- `A103290(n)-A000332(n)` -/
def P681956464670980964.Spec : Prop :=
  ∀ n, P681956464670980964.a n = A090809 n

end A090809

/-! ## A090809.P1576869423401126792

`A133252(n)-A005894(n)`
-/

namespace A090809.P1576869423401126792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133252 n - A005894 n

end

end A090809.P1576869423401126792

namespace A090809

/-- `A133252(n)-A005894(n)` -/
def P1576869423401126792.Spec : Prop :=
  ∀ n, P1576869423401126792.a n = A090809 n

end A090809

/-! ## A090809.P9448891380405399659

`A163943(n)-A059270(n)`
-/

namespace A090809.P9448891380405399659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163943 n - A059270 n

end

end A090809.P9448891380405399659

namespace A090809

/-- `A163943(n)-A059270(n)` -/
def P9448891380405399659.Spec : Prop :=
  ∀ n, P9448891380405399659.a n = A090809 n

end A090809

/-! ## A090809.P3403028113576337044

`A071246(n)-A212501(n)`
-/

namespace A090809.P3403028113576337044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071246 n - A212501 n

end

end A090809.P3403028113576337044

namespace A090809

/-- `A071246(n)-A212501(n)` -/
def P3403028113576337044.Spec : Prop :=
  ∀ n, P3403028113576337044.a n = A090809 n

end A090809

/-! ## A090809.P7536064428241933147

`A212501(n)-A117662(n)`
-/

namespace A090809.P7536064428241933147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212501 n - A117662 n

end

end A090809.P7536064428241933147

namespace A090809

/-- `A212501(n)-A117662(n)` -/
def P7536064428241933147.Spec : Prop :=
  ∀ n, P7536064428241933147.a n = A090809 n

end A090809

/-! ## A090809.P17943735153389771384

`A215862(n)-A147656(n)`
-/

namespace A090809.P17943735153389771384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215862 n - A147656 n

end

end A090809.P17943735153389771384

namespace A090809

/-- `A215862(n)-A147656(n)` -/
def P17943735153389771384.Spec : Prop :=
  ∀ n, P17943735153389771384.a n = A090809 n

end A090809

/-! ## A090809.P1764649927849322592

`A173704(n)-A212685(n)`
-/

namespace A090809.P1764649927849322592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173704 n - A212685 n

end

end A090809.P1764649927849322592

namespace A090809

/-- `A173704(n)-A212685(n)` -/
def P1764649927849322592.Spec : Prop :=
  ∀ n, P1764649927849322592.a n = A090809 n

end A090809

/-!
# A090810: Distinct numbers appearing as denominators of Bernoulli(2n) for n > 2, divided by 6.

The programs for A090810, there is no canonical definition to state claims against.
-/

/-! ## A090810.P7255636391653248653

`A090801(n+3)/6`
-/

namespace A090810.P7255636391653248653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090801 (n + 3) : ℚ) / 6

end

end A090810.P7255636391653248653

/-! ## A090810.P9873431292850115059

`a(n-1)*ratio[A090801(n+2)]` with `a(0)=1`
-/

namespace A090810.P9873431292850115059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A090810.P9873431292850115059

/-! ## A090810.P5668026540980021886

`A008615(A090801(n+3))`
-/

namespace A090810.P5668026540980021886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A090801 (n + 3)).toNat

end

end A090810.P5668026540980021886

/-! ## A090810.P4318588806901999375

`A091972(A090801(n+3)+1)`
-/

namespace A090810.P4318588806901999375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091972 (A090801 (n + 3) + 1).toNat

end

end A090810.P4318588806901999375

/-! ## A090810.P14056433519991041972

`A152467(A090801(n+3)+1)`
-/

namespace A090810.P14056433519991041972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A090801 (n + 3) + 1).toNat

end

end A090810.P14056433519991041972

/-! ## A090810.P14137596160429120333

`A255591(lcm(2, A090801(n+3)))`
-/

namespace A090810.P14137596160429120333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (Int.lcm 2 (A090801 (n + 3)))

end

end A090810.P14137596160429120333

/-! ## A090810.P5923229258364604802

`A060789(∏{p}[A090801(n+3), #])`
-/

namespace A090810.P5923229258364604802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A090810.P5923229258364604802

/-! ## A090810.P12240696884368821630

`∑[A112689(Δ[A090801(n+2)])]`
-/

namespace A090810.P12240696884368821630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090810.P12240696884368821630

/-! ## A090810.P17253579879315746256

`record[A112689(A090801(n+1)+1)]`
-/

namespace A090810.P17253579879315746256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A090801 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090810.P17253579879315746256

/-! ## A090810.P4849575453909817740

`A051724(A090801(comp[2*n]-n+2))`
-/

namespace A090810.P4849575453909817740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A090801 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + 2).toNat).toNat

end

end A090810.P4849575453909817740

/-!
# A090811: Next new gap between successive prime powers.

The programs for A090811, there is no canonical definition to state claims against.
-/

/-! ## A090811.P16858946453563750022

`A057820(A376340(n+1)+1)`
-/

namespace A090811.P16858946453563750022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (A376340 (n + 1) + 1).toNat

end

end A090811.P16858946453563750022

/-!
# A090815: a(n)=denominator(B(2*prime(n))) where prime(n)=n-th prime and B(k) denotes the k-th Bernoulli number.

The programs for A090815, the canonical program `A090815.P12031940070283116509` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090815 has offset 1).

The definition of A090815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090815.P6776709432573499050

`A002445(p?[comp[n²]])`
-/

namespace A090815.P6776709432573499050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A090815.P6776709432573499050

namespace A090815

/-- `A002445(p?[comp[n²]])` -/
def P6776709432573499050.Spec : Prop :=
  ∀ n, P6776709432573499050.a n = A090815 (n + 1)

end A090815

/-! ## A090815.P8875102902587135738

`A002445(A000040(n+1))`
-/

namespace A090815.P8875102902587135738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (A000040 (n + 1)).toNat

end

end A090815.P8875102902587135738

namespace A090815

/-- `A002445(A000040(n+1))` -/
def P8875102902587135738.Spec : Prop :=
  ∀ n, P8875102902587135738.a n = A090815 (n + 1)

end A090815

/-! ## A090815.P14290508781334671557

`A002445(A008578(n+2))`
-/

namespace A090815.P14290508781334671557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (A008578 (n + 2)).toNat

end

end A090815.P14290508781334671557

namespace A090815

/-- `A002445(A008578(n+2))` -/
def P14290508781334671557.Spec : Prop :=
  ∀ n, P14290508781334671557.a n = A090815 (n + 1)

end A090815

/-! ## A090815.P9805214247454775623

`A002445(record[A006530(n+2)])`
-/

namespace A090815.P9805214247454775623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090815.P9805214247454775623

namespace A090815

/-- `A002445(record[A006530(n+2)])` -/
def P9805214247454775623.Spec : Prop :=
  ∀ n, P9805214247454775623.a n = A090815 (n + 1)

end A090815

/-! ## A090815.P17603045858462786119

`A002445(record[A014963(n+2)])`
-/

namespace A090815.P17603045858462786119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090815.P17603045858462786119

namespace A090815

/-- `A002445(record[A014963(n+2)])` -/
def P17603045858462786119.Spec : Prop :=
  ∀ n, P17603045858462786119.a n = A090815 (n + 1)

end A090815

/-! ## A090815.P14110722712415248125

`A002445(record[A020639(n+2)])`
-/

namespace A090815.P14110722712415248125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090815.P14110722712415248125

namespace A090815

/-- `A002445(record[A020639(n+2)])` -/
def P14110722712415248125.Spec : Prop :=
  ∀ n, P14110722712415248125.a n = A090815 (n + 1)

end A090815

/-! ## A090815.P12031940070283116509

`A027762(record[A006530(n+2)])`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A090815

/-- `A027762(record[A006530(n+2)])` -/
def P12031940070283116509.Spec : Prop :=
  ∀ n, P12031940070283116509.a n = A090815 (n + 1)

theorem P12031940070283116509.correct : P12031940070283116509.Spec := by
  intro n
  simp only [A090815, Nat.add_sub_cancel]

end A090815

/-! ## A090815.P438197023932587475

`A027762(record[A014963(n+2)])`
-/

namespace A090815.P438197023932587475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027762 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090815.P438197023932587475

namespace A090815

/-- `A027762(record[A014963(n+2)])` -/
def P438197023932587475.Spec : Prop :=
  ∀ n, P438197023932587475.a n = A090815 (n + 1)

end A090815

/-! ## A090815.P12077278750770112093

`A027762(record[A020639(n+2)])`
-/

namespace A090815.P12077278750770112093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027762 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090815.P12077278750770112093

namespace A090815

/-- `A027762(record[A020639(n+2)])` -/
def P12077278750770112093.Spec : Prop :=
  ∀ n, P12077278750770112093.a n = A090815 (n + 1)

end A090815

/-! ## A090815.P1861914675242045304

`A002445(A008864(n+1)-1)`
-/

namespace A090815.P1861914675242045304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (A008864 (n + 1) - 1).toNat

end

end A090815.P1861914675242045304

namespace A090815

/-- `A002445(A008864(n+1)-1)` -/
def P1861914675242045304.Spec : Prop :=
  ∀ n, P1861914675242045304.a n = A090815 (n + 1)

end A090815

/-! ## A090815.P5081950155289132051

`A002445(eq[2, A000005(n+1)]+1)`
-/

namespace A090815.P5081950155289132051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A090815.P5081950155289132051

namespace A090815

/-- `A002445(eq[2, A000005(n+1)]+1)` -/
def P5081950155289132051.Spec : Prop :=
  ∀ n, P5081950155289132051.a n = A090815 (n + 1)

end A090815

/-! ## A090815.P4775758991496800954

`A106458(2*A000040(n+1))`
-/

namespace A090815.P4775758991496800954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (2 * A000040 (n + 1)).toNat

end

end A090815.P4775758991496800954

namespace A090815

/-- `A106458(2*A000040(n+1))` -/
def P4775758991496800954.Spec : Prop :=
  ∀ n, P4775758991496800954.a n = A090815 (n + 1)

end A090815

/-! ## A090815.P17668533561914215612

`A106458(2*eq[1, A175126(n)])`
-/

namespace A090815.P17668533561914215612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090815.P17668533561914215612

namespace A090815

/-- `A106458(2*eq[1, A175126(n)])` -/
def P17668533561914215612.Spec : Prop :=
  ∀ n, P17668533561914215612.a n = A090815 (n + 1)

end A090815

/-! ## A090815.P17315059208948976358

`A106458(2*eq[2, A319410(n)])`
-/

namespace A090815.P17315059208948976358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090815.P17315059208948976358

namespace A090815

/-- `A106458(2*eq[2, A319410(n)])` -/
def P17315059208948976358.Spec : Prop :=
  ∀ n, P17315059208948976358.a n = A090815 (n + 1)

end A090815

/-! ## A090815.P3958474626316629327

`A106458(A000040(n+1)+A000040(n+1))`
-/

namespace A090815.P3958474626316629327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A090815.P3958474626316629327

namespace A090815

/-- `A106458(A000040(n+1)+A000040(n+1))` -/
def P3958474626316629327.Spec : Prop :=
  ∀ n, P3958474626316629327.a n = A090815 (n + 1)

end A090815

/-! ## A090815.P7548197357129872800

`A141056(2*A000040(n+1))`
-/

namespace A090815.P7548197357129872800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (2 * A000040 (n + 1)).toNat

end

end A090815.P7548197357129872800

namespace A090815

/-- `A141056(2*A000040(n+1))` -/
def P7548197357129872800.Spec : Prop :=
  ∀ n, P7548197357129872800.a n = A090815 (n + 1)

end A090815

/-! ## A090815.P3579284618067098637

`A141056(2*A008578(n+2))`
-/

namespace A090815.P3579284618067098637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (2 * A008578 (n + 2)).toNat

end

end A090815.P3579284618067098637

namespace A090815

/-- `A141056(2*A008578(n+2))` -/
def P3579284618067098637.Spec : Prop :=
  ∀ n, P3579284618067098637.a n = A090815 (n + 1)

end A090815

/-! ## A090815.P7511989106248330278

`A141056(2*eq[1, A105700(n)])`
-/

namespace A090815.P7511989106248330278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090815.P7511989106248330278

namespace A090815

/-- `A141056(2*eq[1, A105700(n)])` -/
def P7511989106248330278.Spec : Prop :=
  ∀ n, P7511989106248330278.a n = A090815 (n + 1)

end A090815

/-! ## A090815.P12747432813741692212

`A141056(record[2*A020639(n+2)])`
-/

namespace A090815.P12747432813741692212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090815.P12747432813741692212

namespace A090815

/-- `A141056(record[2*A020639(n+2)])` -/
def P12747432813741692212.Spec : Prop :=
  ∀ n, P12747432813741692212.a n = A090815 (n + 1)

end A090815

/-! ## A090815.P1527785903114576380

`A141056(A000040(n+1)+A000040(n+1))`
-/

namespace A090815.P1527785903114576380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A090815.P1527785903114576380

namespace A090815

/-- `A141056(A000040(n+1)+A000040(n+1))` -/
def P1527785903114576380.Spec : Prop :=
  ∀ n, P1527785903114576380.a n = A090815 (n + 1)

end A090815

/-!
# A090816: a(n) = (3*n+1)!/((2*n)! * n!).

The programs for A090816, the canonical program `A090816.P4122459984160275442` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090816 has offset 0).

The definition of A090816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090816.P4122459984160275442

`A005809(n)*A016777(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A090816

/-- `A005809(n)*A016777(n)` -/
def P4122459984160275442.Spec : Prop :=
  ∀ n, P4122459984160275442.a n = A090816 n

theorem P4122459984160275442.correct : P4122459984160275442.Spec := by
  intro n
  simp only [A090816]

end A090816

/-! ## A090816.P6054432647692135982

`(3*n+1)!/((2*n)!*n!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A090816.P6054432647692135982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (3 * n + 1) : ℚ) / (Nat.factorial (2 * n) * Nat.factorial n : ℚ)

end

end A090816.P6054432647692135982

namespace A090816

/-- `(3*n+1)!/((2*n)!*n!)` -/
def P6054432647692135982.Spec : Prop :=
  ∀ n, P6054432647692135982.a n = (A090816 n : ℚ)

end A090816

/-! ## A090816.P2027229708466150938

`(n+1)*A117671(n)`
-/

namespace A090816.P2027229708466150938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A117671 n

end

end A090816.P2027229708466150938

namespace A090816

/-- `(n+1)*A117671(n)` -/
def P2027229708466150938.Spec : Prop :=
  ∀ n, P2027229708466150938.a n = A090816 n

end A090816

/-! ## A090816.P3589647947631773204

`Δ[n²]*A045721(n)`
-/

namespace A090816.P3589647947631773204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A045721 n

end

end A090816.P3589647947631773204

namespace A090816

/-- `Δ[n²]*A045721(n)` -/
def P3589647947631773204.Spec : Prop :=
  ∀ n, P3589647947631773204.a n = A090816 n

end A090816

/-! ## A090816.P4081260875860578309

`(n+1)*A081181(2*n)`
-/

namespace A090816.P4081260875860578309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A081181 (2 * n)

end

end A090816.P4081260875860578309

namespace A090816

/-- `(n+1)*A081181(2*n)` -/
def P4081260875860578309.Spec : Prop :=
  ∀ n, P4081260875860578309.a n = A090816 n

end A090816

/-! ## A090816.P4303169666345623129

`(n+1)*A099576(2*n)`
-/

namespace A090816.P4303169666345623129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A099576 (2 * n)

end

end A090816.P4303169666345623129

namespace A090816

/-- `(n+1)*A099576(2*n)` -/
def P4303169666345623129.Spec : Prop :=
  ∀ n, P4303169666345623129.a n = A090816 n

end A090816

/-! ## A090816.P4473201680230017497

`Δ[n²]*A099578(2*n)`
-/

namespace A090816.P4473201680230017497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A099578 (2 * n)

end

end A090816.P4473201680230017497

namespace A090816

/-- `Δ[n²]*A099578(2*n)` -/
def P4473201680230017497.Spec : Prop :=
  ∀ n, P4473201680230017497.a n = A090816 n

end A090816

/-! ## A090816.P14010012928052295566

`(3*n+1)*A264772(∑[n])`
-/

namespace A090816.P14010012928052295566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A264772 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090816.P14010012928052295566

namespace A090816

/-- `(3*n+1)*A264772(∑[n])` -/
def P14010012928052295566.Spec : Prop :=
  ∀ n, P14010012928052295566.a n = A090816 n

end A090816

/-! ## A090816.P7374696537046750283

`∑[4*n+1]*A006013(n)`
-/

namespace A090816.P7374696537046750283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A006013 n

end

end A090816.P7374696537046750283

namespace A090816

/-- `∑[4*n+1]*A006013(n)` -/
def P7374696537046750283.Spec : Prop :=
  ∀ n, P7374696537046750283.a n = A090816 n

end A090816

/-! ## A090816.P8363652336398622706

`(3*n+1)*A081204(2*n)`
-/

namespace A090816.P8363652336398622706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A081204 (2 * n)

end

end A090816.P8363652336398622706

namespace A090816

/-- `(3*n+1)*A081204(2*n)` -/
def P8363652336398622706.Spec : Prop :=
  ∀ n, P8363652336398622706.a n = A090816 n

end A090816

/-! ## A090816.P13922311224201823028

`Δ[n²]*A065942(2*n+1)`
-/

namespace A090816.P13922311224201823028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A065942 (2 * n + 1)

end

end A090816.P13922311224201823028

namespace A090816

/-- `Δ[n²]*A065942(2*n+1)` -/
def P13922311224201823028.Spec : Prop :=
  ∀ n, P13922311224201823028.a n = A090816 n

end A090816

/-! ## A090816.P10437886136392499898

`(3*n+1)*A303259(2*n+1)`
-/

namespace A090816.P10437886136392499898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A303259 (2 * n + 1)

end

end A090816.P10437886136392499898

namespace A090816

/-- `(3*n+1)*A303259(2*n+1)` -/
def P10437886136392499898.Spec : Prop :=
  ∀ n, P10437886136392499898.a n = A090816 n

end A090816

/-! ## A090816.P15517223809229984147

`lcm(A005809(n), A045721(n))`
-/

namespace A090816.P15517223809229984147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005809 n) (A045721 n)

end

end A090816.P15517223809229984147

namespace A090816

/-- `lcm(A005809(n), A045721(n))` -/
def P15517223809229984147.Spec : Prop :=
  ∀ n, (P15517223809229984147.a n : ℤ) = A090816 n

end A090816

/-! ## A090816.P18044425620487304616

`A045721(n)*A109613(2*n)`
-/

namespace A090816.P18044425620487304616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 n * A109613 (2 * n)

end

end A090816.P18044425620487304616

namespace A090816

/-- `A045721(n)*A109613(2*n)` -/
def P18044425620487304616.Spec : Prop :=
  ∀ n, P18044425620487304616.a n = A090816 n

end A090816

/-! ## A090816.P13637998328825061356

`A000969(3*n)*A001764(n)`
-/

namespace A090816.P13637998328825061356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000969 (3 * n) * A001764 n

end

end A090816.P13637998328825061356

namespace A090816

/-- `A000969(3*n)*A001764(n)` -/
def P13637998328825061356.Spec : Prop :=
  ∀ n, P13637998328825061356.a n = A090816 n

end A090816

/-! ## A090816.P15547297001513567742

`A000326(2*n+1)*A001764(n)`
-/

namespace A090816.P15547297001513567742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (2 * n + 1) * A001764 n

end

end A090816.P15547297001513567742

namespace A090816

/-- `A000326(2*n+1)*A001764(n)` -/
def P15547297001513567742.Spec : Prop :=
  ∀ n, P15547297001513567742.a n = A090816 n

end A090816

/-! ## A090816.P4703687608475489416

`lcm(A065942(2*n+1), A065942(2*n))`
-/

namespace A090816.P4703687608475489416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065942 (2 * n + 1)) (A065942 (2 * n))

end

end A090816.P4703687608475489416

namespace A090816

/-- `lcm(A065942(2*n+1), A065942(2*n))` -/
def P4703687608475489416.Spec : Prop :=
  ∀ n, (P4703687608475489416.a n : ℤ) = A090816 n

end A090816

/-! ## A090816.P12905628814236362758

`A065942(2*n+1)/2*A005843(2*n+1)`
-/

namespace A090816.P12905628814236362758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065942 (2 * n + 1) : ℚ) / 2 * (A005843 (2 * n + 1) : ℚ)

end

end A090816.P12905628814236362758

namespace A090816

/-- `A065942(2*n+1)/2*A005843(2*n+1)` -/
def P12905628814236362758.Spec : Prop :=
  ∀ n, P12905628814236362758.a n = (A090816 n : ℚ)

end A090816

/-! ## A090816.P17290337223237467381

`A006013(n)+A006013(n)*A014106(n)`
-/

namespace A090816.P17290337223237467381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n + A006013 n * A014106 n

end

end A090816.P17290337223237467381

namespace A090816

/-- `A006013(n)+A006013(n)*A014106(n)` -/
def P17290337223237467381.Spec : Prop :=
  ∀ n, P17290337223237467381.a n = A090816 n

end A090816

/-!
# A090817: a(n)=numerator(B(2*prime(n))) where prime(n)=n-th prime and B(k) denotes the k-th Bernoulli number.

The programs for A090817, there is no canonical definition to state claims against.
-/

/-! ## A090817.P7509815899467470740

`abs(A000367(p?[xor(1, n)+1]))`
-/

namespace A090817.P7509815899467470740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000367 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))|

end

end A090817.P7509815899467470740

/-! ## A090817.P6371579443478660643

`abs(A000367(p?[n-(-1)^n]))`
-/

namespace A090817.P6371579443478660643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000367 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A090817.P6371579443478660643

/-! ## A090817.P3499544659931357243

`A027641(lcm(2, p?[xor(1, n)+1]))`
-/

namespace A090817.P3499544659931357243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (Nat.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A090817.P3499544659931357243

/-! ## A090817.P14230889685873393064

`A164555(∏{p}[4*p?[round(8*n/7)], #])`
-/

namespace A090817.P14230889685873393064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A090817.P14230889685873393064

/-! ## A090817.P4340889211273096741

`A176144(A062876(n+1))`
-/

namespace A090817.P4340889211273096741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176144 (A062876 (n + 1)).toNat

end

end A090817.P4340889211273096741

/-!
# A090819: Primes p such that the p-th Fibonacci number is nonprime.

The programs for A090819, there is no canonical definition to state claims against.
-/

/-! ## A090819.P5955745594796816709

`p?[A261312(n+1)]`
-/

namespace A090819.P5955745594796816709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090819.P5955745594796816709

/-! ## A090819.P7242653034230201469

`A000040(A134787(n+1))`
-/

namespace A090819.P7242653034230201469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A134787 (n + 1)).toNat

end

end A090819.P7242653034230201469

/-! ## A090819.P7834334248877992383

`record[A006530(A261312(n+2))]`
-/

namespace A090819.P7834334248877992383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A261312 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090819.P7834334248877992383

/-! ## A090819.P18200557182374337537

`A000040(comp[A339082(n+1)])`
-/

namespace A090819.P18200557182374337537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339082 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A090819.P18200557182374337537

/-! ## A090819.P17782945833852469924

`A008578(A134787(n+1)+1)`
-/

namespace A090819.P17782945833852469924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A134787 (n + 1) + 1).toNat

end

end A090819.P17782945833852469924

/-! ## A090819.P1370465055136786132

`filter[A261312(n+1), A010051(#)]`
-/

namespace A090819.P1370465055136786132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A090819.P1370465055136786132

/-! ## A090819.P18396656627673213610

`filter[A261312(n+1), A323153(#)]`
-/

namespace A090819.P18396656627673213610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A090819.P18396656627673213610

/-! ## A090819.P3061959989335259860

`∩[A000040(n+1), A261312(n+1)]`
-/

namespace A090819.P3061959989335259860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090819.P3061959989335259860

/-! ## A090819.P10110888463590416497

`∩[A036844(n+1), A261312(n+1)]`
-/

namespace A090819.P10110888463590416497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090819.P10110888463590416497

/-! ## A090819.P14857787577287962666

`∩[A045319(n+1), A261312(n+1)]`
-/

namespace A090819.P14857787577287962666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090819.P14857787577287962666

/-! ## A090819.P12756184704664498857

`∩[A045344(n+1), A261312(n+1)]`
-/

namespace A090819.P12756184704664498857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090819.P12756184704664498857

/-! ## A090819.P17001089549846860094

`∩[A051948(n+1), A261312(n+1)]`
-/

namespace A090819.P17001089549846860094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090819.P17001089549846860094

/-! ## A090819.P8364417713278954843

`∩[A053813(n+1), A261312(n+1)]`
-/

namespace A090819.P8364417713278954843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090819.P8364417713278954843

/-! ## A090819.P14049411249530721038

`∩[A066191(n+1), A261312(n+1)]`
-/

namespace A090819.P14049411249530721038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090819.P14049411249530721038

/-! ## A090819.P5153968825376659569

`∩[A079603(n+1), A261312(n+1)]`
-/

namespace A090819.P5153968825376659569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090819.P5153968825376659569

/-! ## A090819.P383426555115328785

`record[A014963(A114305(n+4))]`
-/

namespace A090819.P383426555115328785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A114305 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090819.P383426555115328785

/-!
# A090820: Composite n such that Fibonacci(n) == Legendre(n,5) (mod n).

The programs for A090820, there is no canonical definition to state claims against.
-/

/-! ## A090820.P8750223042300506458

`∩[A241505(n+1), A350744(n+1)]`
-/

namespace A090820.P8750223042300506458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090820.P8750223042300506458

/-! ## A090820.P3624554188385946489

`∩[A161577(n+1), A241505(n+1)]`
-/

namespace A090820.P3624554188385946489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090820.P3624554188385946489

/-! ## A090820.P10955111868957705105

`∩[A037917(n+1), A241505(n+1)]`
-/

namespace A090820.P10955111868957705105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090820.P10955111868957705105

/-! ## A090820.P7664745215703259457

`∩[A127787(n+1), A241505(n+1)]`
-/

namespace A090820.P7664745215703259457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090820.P7664745215703259457

/-! ## A090820.P370996291535564508

`∩[A241505(n+1), A297305(n+1)]`
-/

namespace A090820.P370996291535564508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090820.P370996291535564508

/-!
# A090821: Numbers that are products of two consecutive nonprimes.

The programs for A090821, there is no canonical definition to state claims against.
-/

/-! ## A090821.P8512632711905784158

`2*A144551(n+2)`
-/

namespace A090821.P8512632711905784158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144551 (n + 2)

end

end A090821.P8512632711905784158

/-! ## A090821.P13445026171222176126

`∏{d}[-a(n-1), A018252(#+n)]` with `a(0)=2`
-/

namespace A090821.P13445026171222176126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A018252 (d + n)

end

end A090821.P13445026171222176126

/-! ## A090821.P15550067521609490260

`(comp[p?[xor(1, n)]-1]+1)*A002808(n+1)`
-/

namespace A090821.P15550067521609490260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) * A002808 (n + 1)

end

end A090821.P15550067521609490260

/-! ## A090821.P2087880140929309383

`A004277(A144551(n+2))`
-/

namespace A090821.P2087880140929309383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A144551 (n + 2)).toNat

end

end A090821.P2087880140929309383

/-! ## A090821.P5150352925444329797

`∏{p}[A006094(n+1), A026234(#)]`
-/

namespace A090821.P5150352925444329797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A026234 p

end

end A090821.P5150352925444329797

/-!
# A090822: Gijswijt's sequence: a(1) = 1; for n>1, a(n) = largest integer k such that the word a(1)a(2)...a(n-1) is of the form xy^k for words x and y (where y has positive length), i.e., the maximal number of repeating blocks at the end of the sequence so far.

The programs for A090822, there is no canonical definition to state claims against.
-/

/-! ## A090822.P2610311374385710984

`A093955(n+1)+1`
-/

namespace A090822.P2610311374385710984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093955 (n + 1) + 1

end

end A090822.P2610311374385710984

/-! ## A090822.P14522273360897801278

`A091586(n)+a(n-1)` with `a(0)=1`
-/

namespace A090822.P14522273360897801278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091586 n + a (n - 1)

end

end A090822.P14522273360897801278

/-! ## A090822.P3831572415103027362

`∑[A091586(abs(1-n)+1)]`
-/

namespace A090822.P3831572415103027362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091586 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090822.P3831572415103027362

/-! ## A090822.P8305901978932916086

`∑[A091586(floor(acot(n)+n))]+1`
-/

namespace A090822.P8305901978932916086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091586 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A090822.P8305901978932916086

/-! ## A090822.P9735398683881262716

`∑[A091586(round(sqrt(n²+1)))]+1`
-/

namespace A090822.P9735398683881262716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091586 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A090822.P9735398683881262716

/-! ## A090822.P16631670282965384106

`Δ[A091413(n)]`
-/

namespace A090822.P16631670282965384106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090822.P16631670282965384106

/-! ## A090822.P10976343102413839133

`A091413(n+1)-A091413(n)`
-/

namespace A090822.P10976343102413839133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091413 (n + 1) - A091413 n

end

end A090822.P10976343102413839133

/-! ## A090822.P14225456797409921092

`A156988(A064664(n+1))`
-/

namespace A090822.P14225456797409921092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156988 (A064664 (n + 1)).toNat

end

end A090822.P14225456797409921092

/-!
# A090824: Triangle read by rows: T(n,k) = number of partitions of binomial(n,k) into parts greater than k and not greater than n, 0<=k<=n.

The programs for A090824, there is no canonical definition to state claims against.
-/

/-! ## A090824.P2463536211483223249

`A262360(A133687(n+1))%A293311(n+1)`
-/

namespace A090824.P2463536211483223249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262360 (A133687 (n + 1)).toNat) (A293311 (n + 1))

end

end A090824.P2463536211483223249

/-! ## A090824.P11909253283658796245

`A133687(n+1)%A171926(A271316(n))`
-/

namespace A090824.P11909253283658796245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133687 (n + 1)) (A171926 (A271316 n).toNat)

end

end A090824.P11909253283658796245

/-! ## A090824.P8867884625841344317

`A133687(A143265(n+1))%A130321(n)`
-/

namespace A090824.P8867884625841344317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133687 (A143265 (n + 1)).toNat) (A130321 n)

end

end A090824.P8867884625841344317

/-! ## A090824.P13888586572912254574

`A005136(A278986(n+1))`
-/

namespace A090824.P13888586572912254574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A278986 (n + 1)).toNat

end

end A090824.P13888586572912254574

/-! ## A090824.P5620449596013345853

`A106348(A370366(n+1))`
-/

namespace A090824.P5620449596013345853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106348 (A370366 (n + 1)).toNat

end

end A090824.P5620449596013345853

/-!
# A090825: Nonprimes n such that (3/2)*(1/n)*(2*n+1)*(3^n+1)*B(2*n) is an integer, where B(k) denotes the k-th Bernoulli number.

The programs for A090825, there is no canonical definition to state claims against.
-/

/-! ## A090825.P17819422513408595798

`∏{e}[3^n, A157342(#)]`
-/

namespace A090825.P17819422513408595798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A157342 (Nat.factorization (f1 n) p)

end

end A090825.P17819422513408595798

/-! ## A090825.P6121661647461387762

`∏{e}[A000244(n), A350704(#)]`
-/

namespace A090825.P6121661647461387762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A350704 (Nat.factorization (f1 n).natAbs p)

end

end A090825.P6121661647461387762

/-! ## A090825.P607097182143345763

`∩[A156543(n+1), A287918(n+1)]`
-/

namespace A090825.P607097182143345763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090825.P607097182143345763

/-! ## A090825.P224771919333399103

`∩[A156543(n+1), A380410(n+1)]`
-/

namespace A090825.P224771919333399103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090825.P224771919333399103

/-! ## A090825.P10654809207442573446

`A157342(A295235(n*a(comp[2*(n+5)]-n)+1))` with `a(0)=1`
-/

namespace A090825.P10654809207442573446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A157342 (A295235 ((n : ℤ) * a (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) + 1).toNat).toNat

end

end A090825.P10654809207442573446

/-!
# A090826: Convolution of Catalan and Fibonacci numbers.

The programs for A090826, the canonical program `A090826.P12053548945664516622` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090826 has offset 0).

The definition of A090826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090826.P12053548945664516622

`a(n-1)+a(n-2)+A000108(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A090826

/-- `a(n-1)+a(n-2)+A000108(n-1)` -/
def P12053548945664516622.Spec : Prop :=
  ∀ n, P12053548945664516622.a n = A090826 n

theorem P12053548945664516622.correct : P12053548945664516622.Spec := by
  intro n
  simp only [A090826]

end A090826

/-! ## A090826.P17407452991121696379

`record[A139375(n)-A198954(n)]`
-/

namespace A090826.P17407452991121696379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139375 n - A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090826.P17407452991121696379

namespace A090826

/-- `record[A139375(n)-A198954(n)]` -/
def P17407452991121696379.Spec : Prop :=
  ∀ n, P17407452991121696379.a n = A090826 n

end A090826

/-! ## A090826.P1954587172212533874

`A185937(∑[n+1]+1)`
-/

namespace A090826.P1954587172212533874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185937 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A090826.P1954587172212533874

namespace A090826

/-- `A185937(∑[n+1]+1)` -/
def P1954587172212533874.Spec : Prop :=
  ∀ n, P1954587172212533874.a n = A090826 n

end A090826

/-! ## A090826.P15662748557628414752

`A139375(A000124(n))%A137635(n)`
-/

namespace A090826.P15662748557628414752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139375 (A000124 n).toNat) (A137635 n)

end

end A090826.P15662748557628414752

namespace A090826

/-- `A139375(A000124(n))%A137635(n)` -/
def P15662748557628414752.Spec : Prop :=
  ∀ n, P15662748557628414752.a n = A090826 n

end A090826

/-!
# A090827: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A089869/A089870.

The programs for A090827, there is no canonical definition to state claims against.
-/

/-! ## A090827.P3676963522770729459

`A008615(2*A143141(n+1))`
-/

namespace A090827.P3676963522770729459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A143141 (n + 1)).toNat

end

end A090827.P3676963522770729459

/-! ## A090827.P11437668193132091395

`A008679(4*A143141(n+1))`
-/

namespace A090827.P11437668193132091395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (4 * A143141 (n + 1)).toNat

end

end A090827.P11437668193132091395

/-! ## A090827.P5408819850777545801

`A008620(A043537(n+1)*A143141(n+1))`
-/

namespace A090827.P5408819850777545801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A043537 (n + 1) * A143141 (n + 1)).toNat

end

end A090827.P5408819850777545801

/-! ## A090827.P13231189781619799947

`A008620(A143141(n+1)^A043537(n+1))`
-/

namespace A090827.P13231189781619799947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (SequenceMachineLib.roundAway ((A143141 (n + 1) : ℚ) ^ (A043537 (n + 1) : ℤ))).toNat

end

end A090827.P13231189781619799947

/-! ## A090827.P4736757084128946505

`A008615(A143141(n+1)+A143141(n+1)+2)`
-/

namespace A090827.P4736757084128946505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A143141 (n + 1) + (A143141 (n + 1) + 2)).toNat

end

end A090827.P4736757084128946505

/-!
# A090828: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A085163/A085164.

The programs for A090828, there is no canonical definition to state claims against.
-/

/-! ## A090828.P3061134642619714591

`A226190(A045628(n)+A003214(n))`
-/

namespace A090828.P3061134642619714591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A045628 n + A003214 n).toNat

end

end A090828.P3061134642619714591

/-!
# A090830: Least common multiple of all cycle sizes in range [A014137(n-1)..A014138(n-1)] of permutation A085163/A085164.

The programs for A090830, there is no canonical definition to state claims against.
-/

/-! ## A090830.P1958704094317706757

`∏[gcd(n, A147955(A147955(n)))]`
-/

namespace A090830.P1958704094317706757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A147955 (A147955 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A090830.P1958704094317706757

/-! ## A090830.P14621721146673822282

`A323072(A003418(n)*A097992(n))`
-/

namespace A090830.P14621721146673822282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323072 (A003418 n * A097992 n).toNat

end

end A090830.P14621721146673822282

/-! ## A090830.P16896728384173303455

`gcd(A000567(A003418(n)), A001710(n))`
-/

namespace A090830.P16896728384173303455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000567 (A003418 n).toNat) (A001710 n)

end

end A090830.P16896728384173303455

/-! ## A090830.P9554803718713259224

`A257088(gcd(A003418(n), A279683(n)))`
-/

namespace A090830.P9554803718713259224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (Int.gcd (A003418 n) (A279683 n))

end

end A090830.P9554803718713259224

/-! ## A090830.P12819410559021830071

`∏[A082299(n^A237976(n))]`
-/

namespace A090830.P12819410559021830071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A237976 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A090830.P12819410559021830071

/-!
# A090831: a(n) = prime(n)^1 + prime(n-1)^2 + prime(n-2)^3 + ... + prime(1)^n.

The programs for A090831, there is no canonical definition to state claims against.
-/

/-! ## A090831.P4239872071371133090

`A116991(A053156(n+2))`
-/

namespace A090831.P4239872071371133090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116991 (A053156 (n + 2)).toNat

end

end A090831.P4239872071371133090

/-!
# A090832: Numbers k such that p(k), p(k)+6, p(k)+12, p(k)+18 are consecutive primes, where p(k) denotes k-th prime.

The programs for A090832, there is no canonical definition to state claims against.
-/

/-! ## A090832.P1408734211762080534

`∪[A090835(n+1), A090838(n+1)]`
-/

namespace A090832.P1408734211762080534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090832.P1408734211762080534

/-! ## A090832.P11538410389197103324

`∩[A219096(n+1)-1, A219096(n+1)]`
-/

namespace A090832.P11538410389197103324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219096 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090832.P11538410389197103324

/-! ## A090832.P14986801990784631818

`∩[A064149(n+1), A219096(n+1)]`
-/

namespace A090832.P14986801990784631818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090832.P14986801990784631818

/-! ## A090832.P18059040021378264213

`∩[A022884(n+1), A219096(n+1)]`
-/

namespace A090832.P18059040021378264213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090832.P18059040021378264213

/-! ## A090832.P17787652875843108704

`A000720(A033451(n+1))`
-/

namespace A090832.P17787652875843108704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A033451 (n + 1)).toNat

end

end A090832.P17787652875843108704

/-!
# A090833: Numbers n such that 6n+5, 6n+11, 6n+17, 6n+23 are consecutive primes or 6n+1, 6n+7, 6n+13, 6n+19 are consecutive primes.

The programs for A090833, there is no canonical definition to state claims against.
-/

/-! ## A090833.P17132443694148322956

`floor(A033451(n+1)/6)`
-/

namespace A090833.P17132443694148322956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033451 (n + 1) : ℚ) / 6⌋

end

end A090833.P17132443694148322956

/-! ## A090833.P4238346235880811408

`floor(A033449(A016813(n))/6)`
-/

namespace A090833.P4238346235880811408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033449 (A016813 n).toNat : ℚ) / 6⌋

end

end A090833.P4238346235880811408

/-! ## A090833.P5009269056931601624

`floor(A033449(Δ[A000384(n)])/6)`
-/

namespace A090833.P5009269056931601624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033449 (f1 (n + 1) - f1 n).toNat : ℚ) / 6⌋

end

end A090833.P5009269056931601624

/-! ## A090833.P9948006602140359196

`∪[A090836(n+1), A090839(n+1)]`
-/

namespace A090833.P9948006602140359196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090833.P9948006602140359196

/-! ## A090833.P16521072424002424663

`record[round((A033451(A344180(n))-4)/6)]`
-/

namespace A090833.P16521072424002424663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A033451 (A344180 n).toNat - 4 : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090833.P16521072424002424663

/-!
# A090834: Primes p such that p, p+6, p+12, p+18 are consecutive primes and p=6*k+5 for some k.

The programs for A090834, there is no canonical definition to state claims against.
-/

/-! ## A090834.P1744910674114021864

`6*A296011(n+1)-1`
-/

namespace A090834.P1744910674114021864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A296011 (n + 1) - 1

end

end A090834.P1744910674114021864

/-! ## A090834.P8452379269259295485

`6*A090836(n+1)+5`
-/

namespace A090834.P8452379269259295485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A090836 (n + 1) + 5

end

end A090834.P8452379269259295485

/-! ## A090834.P7068483872471203992

`A057428(n+1)+6*A296011(n+1)`
-/

namespace A090834.P7068483872471203992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + 6 * A296011 (n + 1)

end

end A090834.P7068483872471203992

/-! ## A090834.P6325830415514849275

`A090836(n+1)+lcm(5, A296011(n+1))`
-/

namespace A090834.P6325830415514849275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090836 (n + 1) + (Int.lcm 5 (A296011 (n + 1)) : ℤ)

end

end A090834.P6325830415514849275

/-! ## A090834.P17865573185644004662

`A008683(A052033(n+1))+6*A296011(n+1)`
-/

namespace A090834.P17865573185644004662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A052033 (n + 1)).toNat + 6 * A296011 (n + 1)

end

end A090834.P17865573185644004662

/-! ## A090834.P16655961088391625105

`A008683(A005385(n+1))+6*A296011(n+1)`
-/

namespace A090834.P16655961088391625105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005385 (n + 1)).toNat + 6 * A296011 (n + 1)

end

end A090834.P16655961088391625105

/-! ## A090834.P18140155116523193243

`A008683(A086006(n+1))+6*A296011(n+1)`
-/

namespace A090834.P18140155116523193243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A086006 (n + 1)).toNat + 6 * A296011 (n + 1)

end

end A090834.P18140155116523193243

/-! ## A090834.P1526070668843643963

`∩[A023271(n+1), A185941(n+1)]`
-/

namespace A090834.P1526070668843643963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090834.P1526070668843643963

/-! ## A090834.P8515300328048388807

`∩[A033451(n+1), A185941(n+1)]`
-/

namespace A090834.P8515300328048388807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090834.P8515300328048388807

/-! ## A090834.P13900953724428396642

`∩[A023271(n+1), A185938(n+1)]`
-/

namespace A090834.P13900953724428396642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090834.P13900953724428396642

/-! ## A090834.P1760448047130016493

`A038608(A004736(∑[n+1]))+6*A296011(n+1)`
-/

namespace A090834.P1760448047130016493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A004736 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 6 * A296011 (n + 1)

end

end A090834.P1760448047130016493

/-! ## A090834.P4877573037196425177

`∩[A052159(n+1), A054800(n+1)]`
-/

namespace A090834.P4877573037196425177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090834.P4877573037196425177

/-! ## A090834.P17362392081784790756

`∩[A033449(n+1), A132232(n+1)]`
-/

namespace A090834.P17362392081784790756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090834.P17362392081784790756

/-! ## A090834.P11088368706190596364

`∩[A054800(n+1), A132232(n+1)]`
-/

namespace A090834.P11088368706190596364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090834.P11088368706190596364

/-!
# A090835: Numbers m such that if p=prime(m), then p, p+6, p+12, p+18 are consecutive primes with p=6*k+5 for some k, where prime(m) denotes m-th prime.

The programs for A090835, there is no canonical definition to state claims against.
-/

/-! ## A090835.P3889776404716106037

`filter[A090832(n+1), A132194(#)]`
-/

namespace A090835.P3889776404716106037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132194 (f1 j).toNat = 1) n)

end

end A090835.P3889776404716106037

/-! ## A090835.P12777032252198326374

`A000720(A090834(n+1))`
-/

namespace A090835.P12777032252198326374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A090834 (n + 1)).toNat

end

end A090835.P12777032252198326374

/-! ## A090835.P1994197430109599865

`A061395(p?[A090834(n+1)])`
-/

namespace A090835.P1994197430109599865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090835.P1994197430109599865

/-! ## A090835.P7900174250169879724

`A000720(6*A296011(n+1))`
-/

namespace A090835.P7900174250169879724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (6 * A296011 (n + 1)).toNat

end

end A090835.P7900174250169879724

/-! ## A090835.P3125995655922646184

`A061395(or(1, A090834(n+1)))`
-/

namespace A090835.P3125995655922646184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A090834 (n + 1))).toNat

end

end A090835.P3125995655922646184

/-!
# A090836: Numbers k such that 6*k+5, 6*k+11, 6*k+17, 6*k+23 are consecutive primes.

The programs for A090836, there is no canonical definition to state claims against.
-/

/-! ## A090836.P17930898198035893890

`A296011(n+1)-1`
-/

namespace A090836.P17930898198035893890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296011 (n + 1) - 1

end

end A090836.P17930898198035893890

/-! ## A090836.P16395157932839767904

`floor(A090834(n+1)/6)`
-/

namespace A090836.P16395157932839767904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090834 (n + 1) : ℚ) / 6⌋

end

end A090836.P16395157932839767904

/-! ## A090836.P14497417315892706389

`A090834(n+1)%A296011(n+1)`
-/

namespace A090836.P14497417315892706389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090834 (n + 1)) (A296011 (n + 1))

end

end A090836.P14497417315892706389

/-! ## A090836.P2949049601344878993

`A332732(A000040(n+1))+A296011(n+1)`
-/

namespace A090836.P2949049601344878993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332732 (A000040 (n + 1)).toNat + A296011 (n + 1)

end

end A090836.P2949049601344878993

/-! ## A090836.P3058511780182470808

`A321804(A103689(n+1))+A296011(n+1)`
-/

namespace A090836.P3058511780182470808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A103689 (n + 1)).toNat + A296011 (n + 1)

end

end A090836.P3058511780182470808

/-! ## A090836.P8699337923663887663

`A321804(A113901(n+1))+A296011(n+1)`
-/

namespace A090836.P8699337923663887663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A113901 (n + 1)).toNat + A296011 (n + 1)

end

end A090836.P8699337923663887663

/-! ## A090836.P7511660687368441315

`A296043(A020639(2*(n+1)))+A296011(n+1)`
-/

namespace A090836.P7511660687368441315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296043 (A020639 (2 * (n + 1))).toNat + A296011 (n + 1)

end

end A090836.P7511660687368441315

/-! ## A090836.P3012542458391384301

`round(A090834(n+1)/6)-A341996(4*A331731(n+1))`
-/

namespace A090836.P3012542458391384301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A090834 (n + 1) : ℚ) / 6) - A341996 (4 * A331731 (n + 1)).toNat

end

end A090836.P3012542458391384301

/-! ## A090836.P3321175654936267535

`A332732(A155075(n+1))+A296011(n+1)`
-/

namespace A090836.P3321175654936267535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332732 (A155075 (n + 1)).toNat + A296011 (n + 1)

end

end A090836.P3321175654936267535

/-! ## A090836.P5350329585251287851

`A000027(round(A090834(n+1)/6)-1)`
-/

namespace A090836.P5350329585251287851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A090834 (n + 1) : ℚ) / 6) - 1).toNat

end

end A090836.P5350329585251287851

/-!
# A090837: Primes p such that p, p+6, p+12, p+18 are consecutive primes and p = 6*k+1 for some k.

The programs for A090837, there is no canonical definition to state claims against.
-/

/-! ## A090837.P6235816643186694807

`6*A090839(n+1)+1`
-/

namespace A090837.P6235816643186694807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A090839 (n + 1) + 1

end

end A090837.P6235816643186694807

/-! ## A090837.P6215370097029955900

`∩[A023271(n+1), A185942(n+1)]`
-/

namespace A090837.P6215370097029955900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090837.P6215370097029955900

/-! ## A090837.P12271222607706055779

`∩[A033451(n+1), A185942(n+1)]`
-/

namespace A090837.P12271222607706055779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090837.P12271222607706055779

/-! ## A090837.P5853899294352264290

`∩[A052230(n+1), A054800(n+1)]`
-/

namespace A090837.P5853899294352264290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090837.P5853899294352264290

/-! ## A090837.P7102135365967133068

`∩[A052158(n+1), A054800(n+1)]`
-/

namespace A090837.P7102135365967133068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090837.P7102135365967133068

/-! ## A090837.P2437419808647755892

`∩[A033451(n+1), A052230(n+1)]`
-/

namespace A090837.P2437419808647755892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090837.P2437419808647755892

/-! ## A090837.P13873141289373462727

`∩[A033451(n+1), A185936(n+1)]`
-/

namespace A090837.P13873141289373462727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090837.P13873141289373462727

/-! ## A090837.P11525007211078029366

`∩[A033451(n+1), A052158(n+1)]`
-/

namespace A090837.P11525007211078029366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090837.P11525007211078029366

/-!
# A090838: Numbers n such that p(n),p(n)+6,p(n)+12,p(n)+18 are consecutive primes and p(n)=6*k+1 for some k, where p(n) denotes n-th prime.

The programs for A090838, there is no canonical definition to state claims against.
-/

/-! ## A090838.P432058845001303675

`A000720(A090837(n+1))`
-/

namespace A090838.P432058845001303675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A090837 (n + 1)).toNat

end

end A090838.P432058845001303675

/-! ## A090838.P4874595694393889683

`A061395(p?[A090837(n+1)])`
-/

namespace A090838.P4874595694393889683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090838.P4874595694393889683

/-! ## A090838.P16470121574558287992

`A061395(or(1, A090837(n+1)))`
-/

namespace A090838.P16470121574558287992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A090837 (n + 1))).toNat

end

end A090838.P16470121574558287992

/-! ## A090838.P4272336786013480297

`filter[A090832(n+1), A099618(#)]`
-/

namespace A090838.P4272336786013480297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099618 (f1 j).toNat = 1) n)

end

end A090838.P4272336786013480297

/-! ## A090838.P3604413821666991470

`∑{d}[A090837(n+1), A061395(#)]`
-/

namespace A090838.P3604413821666991470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A090838.P3604413821666991470

/-!
# A090839: Numbers k such that 6*k+1, 6*k+7, 6*k+13, 6*k+19 are consecutive primes.

The programs for A090839, there is no canonical definition to state claims against.
-/

/-! ## A090839.P13497954200127689066

`floor(A090837(n+1)/6)`
-/

namespace A090839.P13497954200127689066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090837 (n + 1) : ℚ) / 6⌋

end

end A090839.P13497954200127689066

/-! ## A090839.P7265226005719562213

`round(A090837(n+1)/6)%A063442(n+2)`
-/

namespace A090839.P7265226005719562213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A090837 (n + 1) : ℚ) / 6)) (A063442 (n + 2))

end

end A090839.P7265226005719562213

/-! ## A090839.P8190534544975344941

`ceil(A090837(n+1)/6-A007318(C(2, n)))`
-/

namespace A090839.P8190534544975344941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A090837 (n + 1) : ℚ) / 6 - (A007318 (Nat.choose 2 n) : ℚ)⌉

end

end A090839.P8190534544975344941

/-! ## A090839.P1204045690649851484

`round(A008683(8*(n+1))+A090837(n+1)/6)`
-/

namespace A090839.P1204045690649851484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008683 (8 * (n + 1)) : ℚ) + (A090837 (n + 1) : ℚ) / 6)

end

end A090839.P1204045690649851484

/-! ## A090839.P9720818555143234462

`lcm(round(A090837(n+1)/6), A014963(4*n+2))`
-/

namespace A090839.P9720818555143234462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A090837 (n + 1) : ℚ) / 6)) (A014963 (4 * n + 2))

end

end A090839.P9720818555143234462

/-! ## A090839.P16049830250225664646

`floor(p?[A033451(n+1)%3*A033451(n+1)]/6)`
-/

namespace A090839.P16049830250225664646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033451 (n + 1)) 3 * A033451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 6⌋

end

end A090839.P16049830250225664646

/-!
# A090840: Smallest prime whose product of digits is 5^n.

The programs for A090840, there is no canonical definition to state claims against.
-/

/-! ## A090840.P17605280098166728460

`A341634(A071604(5^n))`
-/

namespace A090840.P17605280098166728460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341634 (A071604 (5 ^ n)).toNat

end

end A090840.P17605280098166728460

/-!
# A090841: Smallest prime whose product of digits is 7^n.

The programs for A090841, there is no canonical definition to state claims against.
-/

/-! ## A090841.P6347500946508962234

`A341634(A232093(n))`
-/

namespace A090841.P6347500946508962234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341634 (A232093 n).toNat

end

end A090841.P6347500946508962234

/-!
# A090842: Square array of numbers read by antidiagonals where T(n,k) = ((k+3)*(k+2)^n-2)/(k+1).

The programs for A090842, there is no canonical definition to state claims against.
-/

/-! ## A090842.P16400518087415072532

`A112739(eq[0, A113125(n)])`
-/

namespace A090842.P16400518087415072532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090842.P16400518087415072532

/-! ## A090842.P10404802186738993391

`A112739(lt[A113125(n), 1])`
-/

namespace A090842.P10404802186738993391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113125 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112739 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A090842.P10404802186738993391

/-! ## A090842.P17303096489541968232

`A112739(lt[2, A025581(n)])`
-/

namespace A090842.P17303096489541968232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A090842.P17303096489541968232

/-! ## A090842.P16301923178600756574

`A112739(lt[2, A079216(n)])`
-/

namespace A090842.P16301923178600756574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A090842.P16301923178600756574

/-! ## A090842.P14672549760913266900

`A112739(lt[4, A130321(n)])`
-/

namespace A090842.P14672549760913266900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A090842.P14672549760913266900

/-!
# A090843: Number of nodes on a tree with degree 11 interior nodes and degree 1 boundary nodes.

The programs for A090843, the canonical program `A090843.P16783865532369578241` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090843 has offset 0).

The definition of A090843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090843.P16783865532369578241

`10*a(n-1)+2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A090843

/-- `10*a(n-1)+2` -/
def P16783865532369578241.Spec : Prop :=
  ∀ n, (P16783865532369578241.a n : ℤ) = A090843 n

theorem P16783865532369578241.correct : P16783865532369578241.Spec := by
  intro n
  simp only [A090843]

end A090843

/-! ## A090843.P842002754527648544

`(11*10^n-2)/9`
-/

namespace A090843.P842002754527648544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * 10 ^ n : ℤ) - 2 : ℚ) / 9

end

end A090843.P842002754527648544

namespace A090843

/-- `(11*10^n-2)/9` -/
def P842002754527648544.Spec : Prop :=
  ∀ n, P842002754527648544.a n = (A090843 n : ℚ)

theorem P842002754527648544.correct : P842002754527648544.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A090843, Nat.add_sub_cancel, A090843.P842002754527648544.a, A090843.P16783865532369578241.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A090843, Nat.add_sub_cancel, A090843.P842002754527648544.a, A090843.P16783865532369578241.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A090843

/-! ## A090843.P11287791493560767543

`ogf((1+x)/(1-11x+10x^2))`
-/

namespace A090843.P11287791493560767543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -11, 10] n

end

end A090843.P11287791493560767543

namespace A090843

/-- `ogf((1+x)/(1-11x+10x^2))` -/
def P11287791493560767543.Spec : Prop :=
  ∀ n, P11287791493560767543.a n = A090843 n

end A090843

/-! ## A090843.P4907749352311133571

`∑[10*a(n-1)]` with `a(0)=1, a(1)=11`
-/

namespace A090843.P4907749352311133571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090843.P4907749352311133571

namespace A090843

/-- `∑[10*a(n-1)]` -/
def P4907749352311133571.Spec : Prop :=
  ∀ n, (P4907749352311133571.a n : ℤ) = A090843 n

end A090843

/-! ## A090843.P14528921173062872824

`-xor(10*a(n-1), -2)` with `a(0)=1`
-/

namespace A090843.P14528921173062872824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -Int.xor (10 * a (n - 1)) (-2)

end

end A090843.P14528921173062872824

namespace A090843

/-- `-xor(10*a(n-1), -2)` -/
def P14528921173062872824.Spec : Prop :=
  ∀ n, P14528921173062872824.a n = A090843 n

end A090843

/-! ## A090843.P13026792282002966719

`xor(5, xor(7, 10*a(n-1)))` with `a(0)=1, a(1)=12`
-/

namespace A090843.P13026792282002966719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n a =>
  Nat.xor 5 (Nat.xor 7 (10 * a (n - 1)))

end

end A090843.P13026792282002966719

namespace A090843

/-- `xor(5, xor(7, 10*a(n-1)))` -/
def P13026792282002966719.Spec : Prop :=
  ∀ n, (P13026792282002966719.a n : ℤ) = A090843 n

end A090843

/-! ## A090843.P6346032780240205692

`4-2*(1-5*a(n-1))` with `a(0)=1`
-/

namespace A090843.P6346032780240205692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 - 2 * (1 - 5 * a (n - 1))

end

end A090843.P6346032780240205692

namespace A090843

/-- `4-2*(1-5*a(n-1))` -/
def P6346032780240205692.Spec : Prop :=
  ∀ n, P6346032780240205692.a n = A090843 n

end A090843

/-! ## A090843.P15478741085176421635

`∑[10^n]+round(or(1, 10^n)/9)`
-/

namespace A090843.P15478741085176421635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway ((Nat.lor 1 (10 ^ n) : ℚ) / 9)

end

end A090843.P15478741085176421635

namespace A090843

/-- `∑[10^n]+round(or(1, 10^n)/9)` -/
def P15478741085176421635.Spec : Prop :=
  ∀ n, P15478741085176421635.a n = A090843 n

end A090843

/-! ## A090843.P14588603273802342252

`∑[and(-2, 10^n)]+ceil(10^n/9)`
-/

namespace A090843.P14588603273802342252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌈(10 ^ n : ℚ) / 9⌉

end

end A090843.P14588603273802342252

namespace A090843

/-- `∑[and(-2, 10^n)]+ceil(10^n/9)` -/
def P14588603273802342252.Spec : Prop :=
  ∀ n, P14588603273802342252.a n = A090843 n

end A090843

/-! ## A090843.P10054198792519658247

`∑[and(-2, 10^n)/10]+∑[10^n]`
-/

namespace A090843.P10054198792519658247
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (10 ^ n : ℤ) : ℚ) / 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A090843.P10054198792519658247

namespace A090843

/-- `∑[and(-2, 10^n)/10]+∑[10^n]` -/
def P10054198792519658247.Spec : Prop :=
  ∀ n, P10054198792519658247.a n = (A090843 n : ℚ)

end A090843

/-! ## A090843.P3343328720786800051

`∑[A003953(n)]`
-/

namespace A090843.P3343328720786800051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090843.P3343328720786800051

namespace A090843

/-- `∑[A003953(n)]` -/
def P3343328720786800051.Spec : Prop :=
  ∀ n, P3343328720786800051.a n = A090843 n

end A090843

/-! ## A090843.P53064735053622312

`A094624(Δ[n²])`
-/

namespace A090843.P53064735053622312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094624 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A090843.P53064735053622312

namespace A090843

/-- `A094624(Δ[n²])` -/
def P53064735053622312.Spec : Prop :=
  ∀ n, P53064735053622312.a n = A090843 n

end A090843

/-! ## A090843.P7854339049644653486

`A094626(Δ[n²])`
-/

namespace A090843.P7854339049644653486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094626 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A090843.P7854339049644653486

namespace A090843

/-- `A094626(Δ[n²])` -/
def P7854339049644653486.Spec : Prop :=
  ∀ n, P7854339049644653486.a n = A090843 n

end A090843

/-! ## A090843.P9803768571479136628

`∑[∑[A105694(n)]]`
-/

namespace A090843.P9803768571479136628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105694 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090843.P9803768571479136628

namespace A090843

/-- `∑[∑[A105694(n)]]` -/
def P9803768571479136628.Spec : Prop :=
  ∀ n, P9803768571479136628.a n = A090843 n

end A090843

/-! ## A090843.P15486758978297683483

`∑[A164851(∑[n])]`
-/

namespace A090843.P15486758978297683483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164851 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090843.P15486758978297683483

namespace A090843

/-- `∑[A164851(∑[n])]` -/
def P15486758978297683483.Spec : Prop :=
  ∀ n, P15486758978297683483.a n = A090843 n

end A090843

/-! ## A090843.P11875560188479127196

`A094623(2*n)+1`
-/

namespace A090843.P11875560188479127196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094623 (2 * n) + 1

end

end A090843.P11875560188479127196

namespace A090843

/-- `A094623(2*n)+1` -/
def P11875560188479127196.Spec : Prop :=
  ∀ n, P11875560188479127196.a n = A090843 n

end A090843

/-! ## A090843.P14846107251531193111

`A094624(2*n)+1`
-/

namespace A090843.P14846107251531193111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094624 (2 * n) + 1

end

end A090843.P14846107251531193111

namespace A090843

/-- `A094624(2*n)+1` -/
def P14846107251531193111.Spec : Prop :=
  ∀ n, P14846107251531193111.a n = A090843 n

end A090843

/-! ## A090843.P7615107211588541261

`11*A002275(n)+1`
-/

namespace A090843.P7615107211588541261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A002275 n + 1

end

end A090843.P7615107211588541261

namespace A090843

/-- `11*A002275(n)+1` -/
def P7615107211588541261.Spec : Prop :=
  ∀ n, P7615107211588541261.a n = A090843 n

end A090843

/-! ## A090843.P1460499317844619093

`10^n+A002276(n)`
-/

namespace A090843.P1460499317844619093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) + A002276 n

end

end A090843.P1460499317844619093

namespace A090843

/-- `10^n+A002276(n)` -/
def P1460499317844619093.Spec : Prop :=
  ∀ n, P1460499317844619093.a n = A090843 n

end A090843

/-! ## A090843.P5323813101370233056

`∑[A164899(∑[n+2])]`
-/

namespace A090843.P5323813101370233056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164899 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090843.P5323813101370233056

namespace A090843

/-- `∑[A164899(∑[n+2])]` -/
def P5323813101370233056.Spec : Prop :=
  ∀ n, P5323813101370233056.a n = A090843 n

end A090843

/-!
# A090844: Square array of numbers read by antidiagonals with T(n,k)=((k+3)(k+1)^n-2*0^n)/(k+1).

The programs for A090844, there is no canonical definition to state claims against.
-/

/-! ## A090844.P14044965754401238973

`A009999(n)+2*A004248(A038722(n+1))`
-/

namespace A090844.P14044965754401238973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 n + 2 * A004248 (A038722 (n + 1)).toNat

end

end A090844.P14044965754401238973

/-! ## A090844.P4356635032175012276

`A000005((2-char[∑[n]])^A299741(n))`
-/

namespace A090844.P4356635032175012276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) ^ (A299741 n : ℤ))).toNat

end

end A090844.P4356635032175012276

/-! ## A090844.P1248227244671706769

`A257243(A176991(n+1))+A036600(n)`
-/

namespace A090844.P1248227244671706769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257243 (A176991 (n + 1)).toNat + A036600 n

end

end A090844.P1248227244671706769

/-! ## A090844.P8482883907641281596

`A182718(A328463(n+1))`
-/

namespace A090844.P8482883907641281596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182718 (A328463 (n + 1)).toNat

end

end A090844.P8482883907641281596

/-! ## A090844.P1245429995250276779

`A070939((2-char[∑[n]])^A299741(n))`
-/

namespace A090844.P1245429995250276779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) ^ (A299741 n : ℤ))).toNat

end

end A090844.P1245429995250276779

/-!
# A090845: Let A denote the sequence; A is equal to the union of the self-convolutions A^2 and A^3, with terms in ascending order by size.

The programs for A090845, there is no canonical definition to state claims against.
-/

/-! ## A090845.P13842149338879395159

`A001281(2*A262990(n+1))`
-/

namespace A090845.P13842149338879395159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A262990 (n + 1)).toNat

end

end A090845.P13842149338879395159

/-! ## A090845.P11205218511787860250

`A004525(2*A262990(n+1))`
-/

namespace A090845.P11205218511787860250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A262990 (n + 1)).toNat

end

end A090845.P11205218511787860250

/-! ## A090845.P10089277706724564393

`A004526(2*A262990(n+1))`
-/

namespace A090845.P10089277706724564393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A262990 (n + 1)).toNat

end

end A090845.P10089277706724564393

/-! ## A090845.P18075546894837115877

`A006370(2*A262990(n+1))`
-/

namespace A090845.P18075546894837115877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (2 * A262990 (n + 1)).toNat

end

end A090845.P18075546894837115877

/-! ## A090845.P3282165444916434486

`A025480(2*A262990(n+1))`
-/

namespace A090845.P3282165444916434486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (2 * A262990 (n + 1)).toNat

end

end A090845.P3282165444916434486

/-!
# A090846: Positions of the terms of A090845^3 in A090845, where A090845 is equal to the union of the self-convolutions A090845^2 and A090845^3, in ascending order by size, starting with A090845(0)=1.

The programs for A090846, there is no canonical definition to state claims against.
-/

/-! ## A090846.P4562823744929767995

`A131914(A000217(2*n+1))+A032634(n)`
-/

namespace A090846.P4562823744929767995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131914 (A000217 (2 * n + 1)).toNat + A032634 n

end

end A090846.P4562823744929767995

/-! ## A090846.P8955876927404191309

`A088141(A010063(n)+A005899(n))`
-/

namespace A090846.P8955876927404191309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A010063 n + A005899 n).toNat

end

end A090846.P8955876927404191309

/-! ## A090846.P8015365347133967322

`A184627(n+1)-A318762(A185007(n+1))`
-/

namespace A090846.P8015365347133967322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184627 (n + 1) - A318762 (A185007 (n + 1)).toNat

end

end A090846.P8015365347133967322

/-! ## A090846.P15224918679454090657

`A184627(n+1)-A126168(A142006(n+1))`
-/

namespace A090846.P15224918679454090657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184627 (n + 1) - A126168 (A142006 (n + 1)).toNat

end

end A090846.P15224918679454090657

/-! ## A090846.P1920272754960667753

`A184627(n+1)-A316524(A184636(2*(n+1)))`
-/

namespace A090846.P1920272754960667753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184627 (n + 1) - A316524 (A184636 (2 * (n + 1))).toNat

end

end A090846.P1920272754960667753

/-!
# A090847: Let A denote the sequence; then A is equal to the union of the self-convolutions A^2 and A^4, with terms in ascending order by size, where a(0)=1.

The programs for A090847, there is no canonical definition to state claims against.
-/

/-! ## A090847.P16496715166097344886

`Δ[A003056(A096140(n))]+A019586(n+1)²`
-/

namespace A090847.P16496715166097344886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A096140 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A019586 (n + 1) ^ 2

end

end A090847.P16496715166097344886

/-!
# A090848: Positions of the terms of A090847^4 in A090847, where A090847 is equal to the union of the self-convolutions A090847^2 and A090847^4 when ordered by size.

The programs for A090848, there is no canonical definition to state claims against.
-/

/-! ## A090848.P8865074098175132743

`round(ceil(2/acot(3*n))/log(10))`
-/

namespace A090848.P8865074098175132743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌈2 / SequenceMachineLib.acot (3 * n : ℝ)⌉ : ℝ) / Real.log (10 : ℝ))

end

end A090848.P8865074098175132743

/-! ## A090848.P16981920179849582436

`round((A008458(n)+1)/log(10))`
-/

namespace A090848.P16981920179849582436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008458 n + 1 : ℝ) / Real.log (10 : ℝ))

end

end A090848.P16981920179849582436

/-! ## A090848.P13608212345577545838

`A065033(A001959(4*n))`
-/

namespace A090848.P13608212345577545838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A001959 (4 * n)).toNat

end

end A090848.P13608212345577545838

/-! ## A090848.P13115011834937322878

`ceil(A001959(A008574(n))/2)`
-/

namespace A090848.P13115011834937322878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001959 (A008574 n).toNat : ℚ) / 2⌉

end

end A090848.P13115011834937322878

/-! ## A090848.P12491526210574203893

`A000007(n)+ceil(A001959(4*n)/2)`
-/

namespace A090848.P12491526210574203893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ⌈(A001959 (4 * n) : ℚ) / 2⌉

end

end A090848.P12491526210574203893

/-! ## A090848.P13655912087402297664

`record[A065033(A001959(A022998(n)))]`
-/

namespace A090848.P13655912087402297664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A001959 (A022998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090848.P13655912087402297664

/-! ## A090848.P972701047287972890

`A008619(A057428(n)+A001959(4*n))`
-/

namespace A090848.P972701047287972890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A057428 n + A001959 (4 * n)).toNat

end

end A090848.P972701047287972890

/-! ## A090848.P1148592129107833384

`A110654(xor(A000007(n), A001959(4*n)))`
-/

namespace A090848.P1148592129107833384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.xor (A000007 n) (A001959 (4 * n))).toNat

end

end A090848.P1148592129107833384

/-! ## A090848.P3836118161903919857

`A004526(A057428(n)+A001959(4*n))+1`
-/

namespace A090848.P3836118161903919857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057428 n + A001959 (4 * n)).toNat + 1

end

end A090848.P3836118161903919857

/-! ## A090848.P10988734267601525584

`round(A001959(A008574(n))/2)%A000040(2*n+1)`
-/

namespace A090848.P10988734267601525584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001959 (A008574 n).toNat : ℚ) / 2)) (A000040 (2 * n + 1))

end

end A090848.P10988734267601525584

/-!
# A090850: Clark's triangle with f=6 read by row.

The programs for A090850, the canonical program `A090850.P13475755000448756326` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090850 has offset 0).

The definition of A090850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090850.P13475755000448756326

`A046902(A061579(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A090850

/-- `A046902(A061579(n))` -/
def P13475755000448756326.Spec : Prop :=
  ∀ n, P13475755000448756326.a n = A090850 n

theorem P13475755000448756326.correct : P13475755000448756326.Spec := by
  intro n
  simp only [A090850]

end A090850

/-! ## A090850.P2596118424572516887

`A046902(A114327(n)+n)`
-/

namespace A090850.P2596118424572516887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 (A114327 n + (n : ℤ)).toNat

end

end A090850.P2596118424572516887

namespace A090850

/-- `A046902(A114327(n)+n)` -/
def P2596118424572516887.Spec : Prop :=
  ∀ n, P2596118424572516887.a n = A090850 n

end A090850

/-! ## A090850.P17299102342530315018

`A046902(A038722(n+1)-1)`
-/

namespace A090850.P17299102342530315018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 (A038722 (n + 1) - 1).toNat

end

end A090850.P17299102342530315018

namespace A090850

/-- `A046902(A038722(n+1)-1)` -/
def P17299102342530315018.Spec : Prop :=
  ∀ n, P17299102342530315018.a n = A090850 n

end A090850

/-! ## A090850.P11398314892158393743

`A046902((n²+n)%comp[A000217(n)])`
-/

namespace A090850.P11398314892158393743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 ((n ^ 2 + n) % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A090850.P11398314892158393743

namespace A090850

/-- `A046902((n²+n)%comp[A000217(n)])` -/
def P11398314892158393743.Spec : Prop :=
  ∀ n, P11398314892158393743.a n = A090850 n

end A090850

/-! ## A090850.P3224432352698660771

`A046902(A002024(n+1)²-(n+1))`
-/

namespace A090850.P3224432352698660771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A090850.P3224432352698660771

namespace A090850

/-- `A046902(A002024(n+1)²-(n+1))` -/
def P3224432352698660771.Spec : Prop :=
  ∀ n, P3224432352698660771.a n = A090850 n

end A090850

/-! ## A090850.P7237726083528322816

`A046902((1-A003057(n+2))²-(n+1))`
-/

namespace A090850.P7237726083528322816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 ((1 - A003057 (n + 2)) ^ 2 - (n + 1 : ℤ)).toNat

end

end A090850.P7237726083528322816

namespace A090850

/-- `A046902((1-A003057(n+2))²-(n+1))` -/
def P7237726083528322816.Spec : Prop :=
  ∀ n, P7237726083528322816.a n = A090850 n

end A090850

/-!
# A090852: a(n) is the least positive integer such that the integer part of the arithmetic-geometric mean of a(n) and 1 is equal to n.

The programs for A090852, there is no canonical definition to state claims against.
-/

/-! ## A090852.P12965791029317940352

`floor(∑[root(A136117(2*n+1), 7)])`
-/

namespace A090852.P12965791029317940352
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A136117 (2 * n + 1) : ℝ) ^ (1 / (7 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A090852.P12965791029317940352

/-! ## A090852.P2311644413782132948

`A095861(A000040(∑[A324519(n+1)]))`
-/

namespace A090852.P2311644413782132948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A090852.P2311644413782132948

/-! ## A090852.P3305139816355024130

`A046155(A325142(2*n+1)+A141214(2*n))`
-/

namespace A090852.P3305139816355024130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A325142 (2 * n + 1) + A141214 (2 * n)).toNat

end

end A090852.P3305139816355024130

/-! ## A090852.P14686387679585190647

`A046155(A141214(2*n)-A100051(2*n+1))`
-/

namespace A090852.P14686387679585190647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A141214 (2 * n) - A100051 (2 * n + 1)).toNat

end

end A090852.P14686387679585190647

/-! ## A090852.P8339912164905275821

`floor(log(A113717(n+1))+n)`
-/

namespace A090852.P8339912164905275821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A113717 (n + 1) : ℝ) + (n : ℝ)⌋

end

end A090852.P8339912164905275821

/-!
# A090853: a(n) is the least positive integer such that the arithmetic-geometric mean satisfies: floor( agm(a(n),a(n-2)) ) = a(n-1) for n>2, with a(1)=1, a(2)=2.

The programs for A090853, there is no canonical definition to state claims against.
-/

/-! ## A090853.P13830520359430222479

`∑[A340745(a(n-1)+1)]` with `a(0)=1, a(1)=1`
-/

namespace A090853.P13830520359430222479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A340745 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090853.P13830520359430222479

/-! ## A090853.P15302836360593510364

`∑[∑[A334440(A006951(n))]]-n`
-/

namespace A090853.P15302836360593510364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334440 (A006951 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A090853.P15302836360593510364

/-! ## A090853.P2334472374072398198

`∑[∑[A334440(A283221(n))]]`
-/

namespace A090853.P2334472374072398198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334440 (A283221 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090853.P2334472374072398198

/-! ## A090853.P10787200660261380535

`∑[∑[A114206(A049002(n+1))]]`
-/

namespace A090853.P10787200660261380535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114206 (A049002 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090853.P10787200660261380535

/-! ## A090853.P1447447624025951050

`∑[A036042(A053304(n))]`
-/

namespace A090853.P1447447624025951050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A053304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090853.P1447447624025951050

/-!
# A090854: a(n) is the least positive integer such that the integer part of the arithmetic-geometric mean of a(n) and 1 is equal to Fibonacci(n).

The programs for A090854, there is no canonical definition to state claims against.
-/

/-! ## A090854.P6180138093420402201

`A090852(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A090854.P6180138093420402201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090852 (f1 (n + 1) - f1 n).toNat

end

end A090854.P6180138093420402201

/-! ## A090854.P2299360549982770053

`A090852(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A090854.P2299360549982770053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090852 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090854.P2299360549982770053

/-! ## A090854.P9250997208015850401

`A090852(A036355(∑[n]))`
-/

namespace A090854.P9250997208015850401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090852 (A036355 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A090854.P9250997208015850401

/-! ## A090854.P7467931234555426776

`A090852(A037027(∑[n]))`
-/

namespace A090854.P7467931234555426776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090852 (A037027 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A090854.P7467931234555426776

/-! ## A090854.P9506628198908785781

`A090852(A058071(∑[n]))`
-/

namespace A090854.P9506628198908785781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090852 (A058071 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A090854.P9506628198908785781

/-!
# A090855: a(n) is the least positive integer such that the integer part of the arithmetic-geometric mean of a(n) and 1 is equal to 2^n.

The programs for A090855, there is no canonical definition to state claims against.
-/

/-! ## A090855.P6434933245450643257

`A090852(2^n)`
-/

namespace A090855.P6434933245450643257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090852 (2 ^ n)

end

end A090855.P6434933245450643257

/-! ## A090855.P3359644938639537532

`record[A090852(A001316(n))]`
-/

namespace A090855.P3359644938639537532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090852 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090855.P3359644938639537532

/-! ## A090855.P10247244629354388345

`record[A090852(A059268(n))]`
-/

namespace A090855.P10247244629354388345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090852 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090855.P10247244629354388345

/-! ## A090855.P16124172129856557166

`record[A090852(A130321(n))]`
-/

namespace A090855.P16124172129856557166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090852 (A130321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090855.P16124172129856557166

/-! ## A090855.P14952349997718883419

`record[A090852(A131816(n))]`
-/

namespace A090855.P14952349997718883419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090852 (A131816 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090855.P14952349997718883419

/-!
# A090856: a(n) is the least positive integer such that the integer part of the arithmetic-geometric mean of a(n) and 1 is equal to 3^n.

The programs for A090856, there is no canonical definition to state claims against.
-/

/-! ## A090856.P16199698578987212326

`A090852(3^n)`
-/

namespace A090856.P16199698578987212326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090852 (3 ^ n)

end

end A090856.P16199698578987212326

/-! ## A090856.P2345704907351770407

`record[A090852(A048883(n))]`
-/

namespace A090856.P2345704907351770407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090852 (A048883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090856.P2345704907351770407

/-! ## A090856.P15519762460164535513

`record[A090852(A140303(n))]`
-/

namespace A090856.P15519762460164535513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090852 (A140303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090856.P15519762460164535513

/-! ## A090856.P12340671073901351153

`record[A090852(A143453(n))]`
-/

namespace A090856.P12340671073901351153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090852 (A143453 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090856.P12340671073901351153

/-! ## A090856.P11560963592987753368

`record[A090852(A190906(n))]`
-/

namespace A090856.P11560963592987753368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090852 (A190906 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090856.P11560963592987753368

/-!
# A090857: a(n) is the least positive integer such that the integer part of the arithmetic-geometric mean of a(n) and 2^n is equal to 3^n.

The programs for A090857, there is no canonical definition to state claims against.
-/

/-! ## A090857.P7452943249580168194

`A225545(or(1, A073390(n)))`
-/

namespace A090857.P7452943249580168194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225545 (Int.lor 1 (A073390 n)).toNat

end

end A090857.P7452943249580168194

/-! ## A090857.P2282275259159027247

`A225545(A073390(n)+n)`
-/

namespace A090857.P2282275259159027247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225545 (A073390 n + (n : ℤ)).toNat

end

end A090857.P2282275259159027247

/-!
# A090858: Number of partitions of n such that there is exactly one part which occurs twice, while all other parts occur only once.

The programs for A090858, there is no canonical definition to state claims against.
-/

/-! ## A090858.P5507323235341580467

`∑[A096765(abs(1-n))]-(A265251(n)+1)`
-/

namespace A090858.P5507323235341580467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A265251 n + 1)

end

end A090858.P5507323235341580467

/-! ## A090858.P2349387058597387578

`∑[A096765(abs(n-1))]-A265251(n)-1`
-/

namespace A090858.P2349387058597387578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 |(n : ℤ) - 1|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A265251 n - 1

end

end A090858.P2349387058597387578

/-! ## A090858.P13010762102366836263

`A038348(n)-(A265251(n)+A000009(n))`
-/

namespace A090858.P13010762102366836263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038348 n - (A265251 n + A000009 n)

end

end A090858.P13010762102366836263

/-! ## A090858.P5967295019769537501

`∑[A096765(A000007(n)-1+n)]-A265251(n)`
-/

namespace A090858.P5967295019769537501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (A000007 n - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A265251 n

end

end A090858.P5967295019769537501

/-! ## A090858.P12710683093074209207

`(A036469(n)+A025147(n))/2-(A265251(n)+(A333147(n)+1)/2)`
-/

namespace A090858.P12710683093074209207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036469 n + A025147 n : ℚ) / 2 - ((A265251 n : ℚ) + (A333147 n + 1 : ℚ) / 2)

end

end A090858.P12710683093074209207

/-! ## A090858.P10787199564192237036

`A264405(∑[C(n, a(n-1))])` with `a(0)=4`
-/

namespace A090858.P10787199564192237036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090858.P10787199564192237036

/-! ## A090858.P751040184331856238

`A264405(C(n, n²)+∑[char[1]+n]+1)`
-/

namespace A090858.P751040184331856238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (Nat.choose n (n ^ 2) + (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A090858.P751040184331856238

/-! ## A090858.P4520913062087516179

`A264405(char[1]+A000217(n)+2)`
-/

namespace A090858.P4520913062087516179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A000217 n + 2)).toNat

end

end A090858.P4520913062087516179

/-! ## A090858.P3896036072829322322

`A264405(A133263(n)+C(n, n²))`
-/

namespace A090858.P3896036072829322322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (A133263 n + (Nat.choose n (n ^ 2) : ℤ)).toNat

end

end A090858.P3896036072829322322

/-! ## A090858.P459398611614279640

`A264405(A060576(n)+A000124(n))`
-/

namespace A090858.P459398611614279640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (A060576 n + A000124 n).toNat

end

end A090858.P459398611614279640

/-! ## A090858.P15716642151513011528

`A157928(n)*A264405(A133263(n))`
-/

namespace A090858.P15716642151513011528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A264405 (A133263 n).toNat

end

end A090858.P15716642151513011528

/-! ## A090858.P867764005886545711

`A264405(A133263(n))%A000041(n)`
-/

namespace A090858.P867764005886545711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264405 (A133263 n).toNat) (A000041 n)

end

end A090858.P867764005886545711

/-! ## A090858.P15569732911920181483

`A264405(A133263(n)+char[A060022(n)])`
-/

namespace A090858.P15569732911920181483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060022 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (A133263 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A090858.P15569732911920181483

/-! ## A090858.P1089853658315237734

`A264405(A133263(n)+char[A088705(n)])`
-/

namespace A090858.P1089853658315237734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (A133263 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A090858.P1089853658315237734

/-! ## A090858.P2105957381406533810

`A264405(A133263(n)+char[A152163(n)])`
-/

namespace A090858.P2105957381406533810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (A133263 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A090858.P2105957381406533810

/-! ## A090858.P13633550074308092515

`A264405(A133263(n)+1-A157928(n))`
-/

namespace A090858.P13633550074308092515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (A133263 n + (1 - A157928 n)).toNat

end

end A090858.P13633550074308092515

/-! ## A090858.P8310957323431436104

`A264405(1-(A157928(n)-A133263(n)))`
-/

namespace A090858.P8310957323431436104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (1 - (A157928 n - A133263 n)).toNat

end

end A090858.P8310957323431436104

/-! ## A090858.P15809099042730517677

`A264405(2-(A060576(n)-A000124(n)))`
-/

namespace A090858.P15809099042730517677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (2 - (A060576 n - A000124 n)).toNat

end

end A090858.P15809099042730517677

/-! ## A090858.P10563674825082165496

`A264405(A133263(n))-A000045(C(2, n+1))`
-/

namespace A090858.P10563674825082165496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (A133263 n).toNat - A000045 (Nat.choose 2 (n + 1))

end

end A090858.P10563674825082165496

/-! ## A090858.P9298265153280116831

`and(A055010(n), A264405(A152950(n+1)-1))`
-/

namespace A090858.P9298265153280116831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055010 n) (A264405 (A152950 (n + 1) - 1).toNat)

end

end A090858.P9298265153280116831

/-!
# A090859: Sequence coincides with union of its first and 2nd binomial transforms, ordered by size, with a(0)=1.

The programs for A090859, there is no canonical definition to state claims against.
-/

/-! ## A090859.P2352861257729800148

`A020888(A351880(n))%A201223(3*n+5)`
-/

namespace A090859.P2352861257729800148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020888 (A351880 n).toNat) (A201223 (3 * n + 5))

end

end A090859.P2352861257729800148

/-!
# A090860: Number of ways of 4-coloring a map in which there is a central circle surrounded by an annulus divided into n-1 regions. There are n regions in all.

The programs for A090860, the canonical program `A090860.P7677700640755955594` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090860 has offset 4).

The definition of A090860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090860.P7677700640755955594

`2^(n+5)-8*(-1)^(n+4)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A090860

/-- `2^(n+5)-8*(-1)^(n+4)` -/
def P7677700640755955594.Spec : Prop :=
  ∀ n, P7677700640755955594.a n = A090860 (n + 4)

theorem P7677700640755955594.correct : P7677700640755955594.Spec := by
  intro n
  simp only [A090860, Nat.add_sub_cancel]

end A090860

/-! ## A090860.P14027765345838364324

`24*A001045(n+2)`
-/

namespace A090860.P14027765345838364324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A001045 (n + 2)

end

end A090860.P14027765345838364324

namespace A090860

/-- `24*A001045(n+2)` -/
def P14027765345838364324.Spec : Prop :=
  ∀ n, P14027765345838364324.a n = A090860 (n + 4)

end A090860

/-! ## A090860.P3634357262363280529

`24*A283642(n)`
-/

namespace A090860.P3634357262363280529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A283642 n

end

end A090860.P3634357262363280529

namespace A090860

/-- `24*A283642(n)` -/
def P3634357262363280529.Spec : Prop :=
  ∀ n, P3634357262363280529.a n = A090860 (n + 4)

end A090860

/-! ## A090860.P4361669338807278056

`4*A092297(n+3)`
-/

namespace A090860.P4361669338807278056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A092297 (n + 3)

end

end A090860.P4361669338807278056

namespace A090860

/-- `4*A092297(n+3)` -/
def P4361669338807278056.Spec : Prop :=
  ∀ n, P4361669338807278056.a n = A090860 (n + 4)

end A090860

/-! ## A090860.P14424081886265534020

`6*A097073(n+3)`
-/

namespace A090860.P14424081886265534020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A097073 (n + 3)

end

end A090860.P14424081886265534020

namespace A090860

/-- `6*A097073(n+3)` -/
def P14424081886265534020.Spec : Prop :=
  ∀ n, P14424081886265534020.a n = A090860 (n + 4)

end A090860

/-! ## A090860.P12998084839408226753

`8*A062510(n+2)`
-/

namespace A090860.P12998084839408226753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A062510 (n + 2)

end

end A090860.P12998084839408226753

namespace A090860

/-- `8*A062510(n+2)` -/
def P12998084839408226753.Spec : Prop :=
  ∀ n, P12998084839408226753.a n = A090860 (n + 4)

end A090860

/-! ## A090860.P15810421000286174783

`8*(A014131(n)+3)`
-/

namespace A090860.P15810421000286174783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A014131 n + 3)

end

end A090860.P15810421000286174783

namespace A090860

/-- `8*(A014131(n)+3)` -/
def P15810421000286174783.Spec : Prop :=
  ∀ n, P15810421000286174783.a n = A090860 (n + 4)

end A090860

/-! ## A090860.P13347717197463248313

`12*A078008(n+3)`
-/

namespace A090860.P13347717197463248313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A078008 (n + 3)

end

end A090860.P13347717197463248313

namespace A090860

/-- `12*A078008(n+3)` -/
def P13347717197463248313.Spec : Prop :=
  ∀ n, P13347717197463248313.a n = A090860 (n + 4)

end A090860

/-! ## A090860.P15190615372205598540

`3*Δ[A093380(n+2)]`
-/

namespace A090860.P15190615372205598540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093380 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A090860.P15190615372205598540

namespace A090860

/-- `3*Δ[A093380(n+2)]` -/
def P15190615372205598540.Spec : Prop :=
  ∀ n, P15190615372205598540.a n = A090860 (n + 4)

end A090860

/-! ## A090860.P8121364552046206

`4*Δ[A087288(n+2)]`
-/

namespace A090860.P8121364552046206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087288 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n)

end

end A090860.P8121364552046206

namespace A090860

/-- `4*Δ[A087288(n+2)]` -/
def P8121364552046206.Spec : Prop :=
  ∀ n, P8121364552046206.a n = A090860 (n + 4)

end A090860

/-! ## A090860.P17597809731160524085

`4*Δ[A284353(n+2)]`
-/

namespace A090860.P17597809731160524085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284353 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n)

end

end A090860.P17597809731160524085

namespace A090860

/-- `4*Δ[A284353(n+2)]` -/
def P17597809731160524085.Spec : Prop :=
  ∀ n, P17597809731160524085.a n = A090860 (n + 4)

end A090860

/-! ## A090860.P772026760951302099

`24*(∑[A014113(n)]+1)`
-/

namespace A090860.P772026760951302099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A090860.P772026760951302099

namespace A090860

/-- `24*(∑[A014113(n)]+1)` -/
def P772026760951302099.Spec : Prop :=
  ∀ n, P772026760951302099.a n = A090860 (n + 4)

end A090860

/-! ## A090860.P1977514651251209636

`24*A167167(2*n+2-n)`
-/

namespace A090860.P1977514651251209636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A167167 ((2 * n : ℤ) + (2 - (n : ℤ))).toNat

end

end A090860.P1977514651251209636

namespace A090860

/-- `24*A167167(2*n+2-n)` -/
def P1977514651251209636.Spec : Prop :=
  ∀ n, P1977514651251209636.a n = A090860 (n + 4)

end A090860

/-! ## A090860.P7656286958089919646

`(A060590(n+1)+1)*A040134(n+1)`
-/

namespace A090860.P7656286958089919646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060590 (n + 1) + 1) * A040134 (n + 1)

end

end A090860.P7656286958089919646

namespace A090860

/-- `(A060590(n+1)+1)*A040134(n+1)` -/
def P7656286958089919646.Spec : Prop :=
  ∀ n, P7656286958089919646.a n = A090860 (n + 4)

end A090860

/-! ## A090860.P12064942729975361075

`(A175165(n+1)+A040554(n+1))/2`
-/

namespace A090860.P12064942729975361075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175165 (n + 1) + A040554 (n + 1) : ℚ) / 2

end

end A090860.P12064942729975361075

namespace A090860

/-- `(A175165(n+1)+A040554(n+1))/2` -/
def P12064942729975361075.Spec : Prop :=
  ∀ n, P12064942729975361075.a n = (A090860 (n + 4) : ℚ)

end A090860

/-!
# A090861: Permutation of natural numbers arising from a spiral.

The programs for A090861, there is no canonical definition to state claims against.
-/

/-! ## A090861.P13012789849291133769

`A020703(A090929(n+1))`
-/

namespace A090861.P13012789849291133769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A090929 (n + 1)).toNat

end

end A090861.P13012789849291133769

/-! ## A090861.P2827976807732893855

`A068226(A185413(n+1))`
-/

namespace A090861.P2827976807732893855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068226 (A185413 (n + 1)).toNat

end

end A090861.P2827976807732893855

/-! ## A090861.P4391022534033154231

`A090928(A090930(n+1))`
-/

namespace A090861.P4391022534033154231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A090930 (n + 1)).toNat

end

end A090861.P4391022534033154231

/-! ## A090861.P13889845930208806934

`A090915(A090925(n+1))`
-/

namespace A090861.P13889845930208806934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A090925 (n + 1)).toNat

end

end A090861.P13889845930208806934

/-! ## A090861.P10432123063534073514

`A090925(A020703(n+1))`
-/

namespace A090861.P10432123063534073514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090925 (A020703 (n + 1)).toNat

end

end A090861.P10432123063534073514

/-! ## A090861.P12027078739061181444

`A090929(A090915(n+1))`
-/

namespace A090861.P12027078739061181444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A090915 (n + 1)).toNat

end

end A090861.P12027078739061181444

/-! ## A090861.P15718122734419215209

`A185413(A068225(n+1))`
-/

namespace A090861.P15718122734419215209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185413 (A068225 (n + 1)).toNat

end

end A090861.P15718122734419215209

/-! ## A090861.P13592603045874686229

`A020703(A090930(A020703(A038722(A038722(n+1)))))`
-/

namespace A090861.P13592603045874686229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A090930 (A020703 (A038722 (A038722 (n + 1)).toNat).toNat).toNat).toNat

end

end A090861.P13592603045874686229

/-! ## A090861.P34839428145942982

`A020703(A090930(A020703(A132665(A132665(n+1)))))`
-/

namespace A090861.P34839428145942982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A090930 (A020703 (A132665 (A132665 (n + 1)).toNat).toNat).toNat).toNat

end

end A090861.P34839428145942982

/-! ## A090861.P10040426567427628122

`A020703(A090930(A020703(A210882(A210882(n+1)))))`
-/

namespace A090861.P10040426567427628122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A090930 (A020703 (A210882 (A210882 (n + 1)).toNat).toNat).toNat).toNat

end

end A090861.P10040426567427628122

/-!
# A090863: Numbers n such that F(n+1)*F(n-1)*B(2n) is an integer, where F(k)=k-th Fibonacci number and B(2k)=2k-th Bernoulli number.

The programs for A090863, there is no canonical definition to state claims against.
-/

/-! ## A090863.P13999843598861269330

`eq[A000217(A178334(n)), A092904(n)]`
-/

namespace A090863.P13999843598861269330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A178334 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092904 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090863.P13999843598861269330

/-! ## A090863.P12828532432495707501

`A156543(n+1)+A010894(A247140(2*(n+1)))`
-/

namespace A090863.P12828532432495707501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1) + A010894 ((A247140 (2 * (n + 1))).toNat + 21)

end

end A090863.P12828532432495707501

/-!
# A090864: Complement of generalized pentagonal numbers (A001318).

The programs for A090864, the canonical program `A090864.P12852176110486031095` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090864 has offset 1).

The definition of A090864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090864.P10384821488606241220

`comp[∑[gcd(n, ∑[n])]]`
-/

namespace A090864.P10384821488606241220
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A090864.P10384821488606241220

namespace A090864

/-- `comp[∑[gcd(n, ∑[n])]]` -/
def P10384821488606241220.Spec : Prop :=
  ∀ n, (P10384821488606241220.a n : ℤ) = A090864 (n + 1)

end A090864

/-! ## A090864.P5550330680881647947

`eq[0, A010815(n)]`
-/

namespace A090864.P5550330680881647947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090864.P5550330680881647947

namespace A090864

/-- `eq[0, A010815(n)]` -/
def P5550330680881647947.Spec : Prop :=
  ∀ n, (P5550330680881647947.a n : ℤ) = A090864 (n + 1)

end A090864

/-! ## A090864.P15368908702597219009

`eq[0, A080332(n)]`
-/

namespace A090864.P15368908702597219009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080332 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090864.P15368908702597219009

namespace A090864

/-- `eq[0, A080332(n)]` -/
def P15368908702597219009.Spec : Prop :=
  ∀ n, (P15368908702597219009.a n : ℤ) = A090864 (n + 1)

end A090864

/-! ## A090864.P12852176110486031095

`eq[0, A080995(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A090864

/-- `eq[0, A080995(n)]` -/
def P12852176110486031095.Spec : Prop :=
  ∀ n, (P12852176110486031095.a n : ℤ) = A090864 (n + 1)

theorem P12852176110486031095.correct : P12852176110486031095.Spec := by
  intro n
  simp only [A090864, Nat.add_sub_cancel]

end A090864

/-! ## A090864.P35830837006010431

`eq[0, A116916(n)]`
-/

namespace A090864.P35830837006010431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090864.P35830837006010431

namespace A090864

/-- `eq[0, A116916(n)]` -/
def P35830837006010431.Spec : Prop :=
  ∀ n, (P35830837006010431.a n : ℤ) = A090864 (n + 1)

end A090864

/-! ## A090864.P15526437943143368756

`eq[0, A121373(n)]`
-/

namespace A090864.P15526437943143368756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090864.P15526437943143368756

namespace A090864

/-- `eq[0, A121373(n)]` -/
def P15526437943143368756.Spec : Prop :=
  ∀ n, (P15526437943143368756.a n : ℤ) = A090864 (n + 1)

end A090864

/-! ## A090864.P8166196538538149029

`eq[0, A133079(n)]`
-/

namespace A090864.P8166196538538149029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090864.P8166196538538149029

namespace A090864

/-- `eq[0, A133079(n)]` -/
def P8166196538538149029.Spec : Prop :=
  ∀ n, (P8166196538538149029.a n : ℤ) = A090864 (n + 1)

end A090864

/-! ## A090864.P1399726308259920338

`eq[0, A133985(n)]`
-/

namespace A090864.P1399726308259920338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133985 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090864.P1399726308259920338

namespace A090864

/-- `eq[0, A133985(n)]` -/
def P1399726308259920338.Spec : Prop :=
  ∀ n, (P1399726308259920338.a n : ℤ) = A090864 (n + 1)

end A090864

/-! ## A090864.P14841531229340142457

`eq[0, A134756(n)]`
-/

namespace A090864.P14841531229340142457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090864.P14841531229340142457

namespace A090864

/-- `eq[0, A134756(n)]` -/
def P14841531229340142457.Spec : Prop :=
  ∀ n, (P14841531229340142457.a n : ℤ) = A090864 (n + 1)

end A090864

/-! ## A090864.P11773726479373479199

`eq[0, A143278(n)]`
-/

namespace A090864.P11773726479373479199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143278 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090864.P11773726479373479199

namespace A090864

/-- `eq[0, A143278(n)]` -/
def P11773726479373479199.Spec : Prop :=
  ∀ n, (P11773726479373479199.a n : ℤ) = A090864 (n + 1)

end A090864

/-! ## A090864.P18155511383334937311

`eq[0, A178902(n)]`
-/

namespace A090864.P18155511383334937311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178902 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090864.P18155511383334937311

namespace A090864

/-- `eq[0, A178902(n)]` -/
def P18155511383334937311.Spec : Prop :=
  ∀ n, (P18155511383334937311.a n : ℤ) = A090864 (n + 1)

end A090864

/-! ## A090864.P12484761444993093941

`eq[0, A199918(n)]`
-/

namespace A090864.P12484761444993093941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090864.P12484761444993093941

namespace A090864

/-- `eq[0, A199918(n)]` -/
def P12484761444993093941.Spec : Prop :=
  ∀ n, (P12484761444993093941.a n : ℤ) = A090864 (n + 1)

end A090864

/-! ## A090864.P4834889472246017129

`eq[0, A206958(n)]`
-/

namespace A090864.P4834889472246017129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090864.P4834889472246017129

namespace A090864

/-- `eq[0, A206958(n)]` -/
def P4834889472246017129.Spec : Prop :=
  ∀ n, (P4834889472246017129.a n : ℤ) = A090864 (n + 1)

end A090864

/-! ## A090864.P2986769847223387022

`eq[0, A206959(n)]`
-/

namespace A090864.P2986769847223387022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090864.P2986769847223387022

namespace A090864

/-- `eq[0, A206959(n)]` -/
def P2986769847223387022.Spec : Prop :=
  ∀ n, (P2986769847223387022.a n : ℤ) = A090864 (n + 1)

end A090864

/-! ## A090864.P11456334954481296674

`eq[1, A007706(n)]`
-/

namespace A090864.P11456334954481296674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090864.P11456334954481296674

namespace A090864

/-- `eq[1, A007706(n)]` -/
def P11456334954481296674.Spec : Prop :=
  ∀ n, (P11456334954481296674.a n : ℤ) = A090864 (n + 1)

end A090864

/-!
# A090865: Primes p such that (p-1)/2 is prime if p == 3 (mod 4) or (p-1)/4 is prime if p == 1 (mod 4).

The programs for A090865, there is no canonical definition to state claims against.
-/

/-! ## A090865.P16179664697341839092

`∩[A058500(n+1), A079151(n+1)]`
-/

namespace A090865.P16179664697341839092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090865.P16179664697341839092

/-! ## A090865.P12929952845354913034

`∩[A058500(n+1), A216371(n+1)]`
-/

namespace A090865.P12929952845354913034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090865.P12929952845354913034

/-! ## A090865.P9489583398685260533

`∩[A007885(n+1), A058500(n+1)]`
-/

namespace A090865.P9489583398685260533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090865.P9489583398685260533

/-! ## A090865.P14746492211852214495

`∩[A058500(n+1), A179538(n+1)]`
-/

namespace A090865.P14746492211852214495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090865.P14746492211852214495

/-! ## A090865.P7261053332969194104

`∩[A039786(n+1), A058500(n+1)]`
-/

namespace A090865.P7261053332969194104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090865.P7261053332969194104

/-! ## A090865.P7769205227848030459

`∩[A039786(n+1), A067466(n+1)]`
-/

namespace A090865.P7769205227848030459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090865.P7769205227848030459

/-! ## A090865.P14654802956668573751

`∩[A058500(n+1), A066651(n+1)]`
-/

namespace A090865.P14654802956668573751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090865.P14654802956668573751

/-! ## A090865.P14701830755564828712

`∩[A066651(n+1), A067466(n+1)]`
-/

namespace A090865.P14701830755564828712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090865.P14701830755564828712

/-! ## A090865.P12699408756538317780

`∩[A058500(n+1), A089189(n+1)]`
-/

namespace A090865.P12699408756538317780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090865.P12699408756538317780

/-! ## A090865.P16668595836816777024

`∩[A042987(n+1), A058500(n+1)]`
-/

namespace A090865.P16668595836816777024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090865.P16668595836816777024

/-! ## A090865.P9416923240221534596

`∩[A045395(n+1), A058500(n+1)]`
-/

namespace A090865.P9416923240221534596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090865.P9416923240221534596

/-! ## A090865.P12811973417001872937

`∩[A007885(n+1), A066669(n+1)]`
-/

namespace A090865.P12811973417001872937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090865.P12811973417001872937

/-! ## A090865.P13453536588506369629

`∩[A042987(n+1), A066669(n+1)]`
-/

namespace A090865.P13453536588506369629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090865.P13453536588506369629

/-! ## A090865.P15137206507883925451

`∩[A045395(n+1), A066669(n+1)]`
-/

namespace A090865.P15137206507883925451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090865.P15137206507883925451

/-! ## A090865.P16061478259704243019

`∩[A066651(n+1), A066669(n+1)]`
-/

namespace A090865.P16061478259704243019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090865.P16061478259704243019

/-! ## A090865.P13045399637228831563

`∩[A066669(n+1), A079151(n+1)]`
-/

namespace A090865.P13045399637228831563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090865.P13045399637228831563

/-! ## A090865.P5987012607483845825

`∩[A066669(n+1), A089189(n+1)]`
-/

namespace A090865.P5987012607483845825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090865.P5987012607483845825

/-! ## A090865.P3833493666345032208

`∩[A066669(n+1), A179538(n+1)]`
-/

namespace A090865.P3833493666345032208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090865.P3833493666345032208

/-! ## A090865.P1169723849806790778

`∩[A066669(n+1), A216371(n+1)]`
-/

namespace A090865.P1169723849806790778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090865.P1169723849806790778

/-! ## A090865.P18027264519554008074

`p?[2*A001751(n+2)+1]`
-/

namespace A090865.P18027264519554008074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001751 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090865.P18027264519554008074

/-!
# A090866: Primes p == 1 (mod 4) such that (p-1)/4 is prime.

The programs for A090866, there is no canonical definition to state claims against.
-/

/-! ## A090866.P15900825862257213392

`4*A023212(n+1)+1`
-/

namespace A090866.P15900825862257213392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A023212 (n + 1) + 1

end

end A090866.P15900825862257213392

/-! ## A090866.P3478816910613158288

`∩[A075519(n+1), A180642(n+1)]`
-/

namespace A090866.P3478816910613158288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090866.P3478816910613158288

/-! ## A090866.P7865601640443097387

`∩[A090865(n+1), A180642(n+1)]`
-/

namespace A090866.P7865601640443097387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090866.P7865601640443097387

/-! ## A090866.P5442898915159378400

`∩[A058500(n+1), A180642(n+1)]`
-/

namespace A090866.P5442898915159378400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090866.P5442898915159378400

/-! ## A090866.P17677914318218665420

`∩[A074781(n+1), A180642(n+1)]`
-/

namespace A090866.P17677914318218665420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090866.P17677914318218665420

/-! ## A090866.P14118504158436773122

`∩[A067466(n+1), A180642(n+1)]`
-/

namespace A090866.P14118504158436773122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090866.P14118504158436773122

/-! ## A090866.P16974164664363232917

`∩[A077500(n+1), A180642(n+1)]`
-/

namespace A090866.P16974164664363232917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090866.P16974164664363232917

/-! ## A090866.P2597965981073876956

`p?[A180642(n+1)]`
-/

namespace A090866.P2597965981073876956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090866.P2597965981073876956

/-! ## A090866.P16941298103626981040

`p?[A001749(n+1)+1]`
-/

namespace A090866.P16941298103626981040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090866.P16941298103626981040

/-! ## A090866.P8546864326048025887

`∩[A058500(n+1), A063640(n+1)]`
-/

namespace A090866.P8546864326048025887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090866.P8546864326048025887

/-! ## A090866.P7129890301462811221

`∩[A063640(n+1), A074781(n+1)]`
-/

namespace A090866.P7129890301462811221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090866.P7129890301462811221

/-! ## A090866.P16074639374688424370

`∩[A063640(n+1), A090865(n+1)]`
-/

namespace A090866.P16074639374688424370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090866.P16074639374688424370

/-! ## A090866.P7827460013680383837

`∩[A063640(n+1), A180642(n+1)]`
-/

namespace A090866.P7827460013680383837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090866.P7827460013680383837

/-! ## A090866.P11720691363355689274

`∩[A058500(n+1), A213050(n+1)]`
-/

namespace A090866.P11720691363355689274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090866.P11720691363355689274

/-! ## A090866.P17302871795237816678

`∩[A090865(n+1), A213050(n+1)]`
-/

namespace A090866.P17302871795237816678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090866.P17302871795237816678

/-! ## A090866.P6397423737614615849

`∩[A079151(n+1), A180642(n+1)]`
-/

namespace A090866.P6397423737614615849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090866.P6397423737614615849

/-! ## A090866.P16373219721708291733

`∩[A079151(n+1), A286658(n+1)]`
-/

namespace A090866.P16373219721708291733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090866.P16373219721708291733

/-! ## A090866.P315380028802687071

`∩[A079151(n+1), A352926(n+1)]`
-/

namespace A090866.P315380028802687071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090866.P315380028802687071

/-! ## A090866.P5831075298636620993

`∩[A007521(n+1), A058500(n+1)]`
-/

namespace A090866.P5831075298636620993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090866.P5831075298636620993

/-! ## A090866.P14595681642697896030

`∩[A007521(n+1), A063640(n+1)]`
-/

namespace A090866.P14595681642697896030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090866.P14595681642697896030

/-!
# A090867: Number of partitions of n such that the set of even parts has only one element.

The programs for A090867, there is no canonical definition to state claims against.
-/

/-! ## A090867.P1710930715971285314

`A341494(n)+A341495(n)`
-/

namespace A090867.P1710930715971285314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341494 n + A341495 n

end

end A090867.P1710930715971285314

/-! ## A090867.P7938175924692620622

`A341496(n)+A341497(n)`
-/

namespace A090867.P7938175924692620622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341496 n + A341497 n

end

end A090867.P7938175924692620622

/-! ## A090867.P9721054558700209058

`A305082(n)-A067588(n)`
-/

namespace A090867.P9721054558700209058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305082 n - A067588 n

end

end A090867.P9721054558700209058

/-! ## A090867.P13219637947654297098

`A067588(n)-(A116680(n)+A116676(n))`
-/

namespace A090867.P13219637947654297098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 n - (A116680 n + A116676 n)

end

end A090867.P13219637947654297098

/-! ## A090867.P11818100945406368662

`A116680(n)+2*A341496(n)`
-/

namespace A090867.P11818100945406368662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116680 n + 2 * A341496 n

end

end A090867.P11818100945406368662

/-! ## A090867.P15954472446104907187

`2*A341497(n)-A116680(n)`
-/

namespace A090867.P15954472446104907187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341497 n - A116680 n

end

end A090867.P15954472446104907187

/-!
# A090868: Number of partitions of n such that the set of odd parts has only one element.

The programs for A090868, there is no canonical definition to state claims against.
-/

/-! ## A090868.P11801273003356496382

`A276426(A022554(n)+2+n)`
-/

namespace A090868.P11801273003356496382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276426 (A022554 n + 2 + (n : ℤ)).toNat

end

end A090868.P11801273003356496382

/-! ## A090868.P9654444326909535306

`A355019(n)+A354982(A355063(n+1))`
-/

namespace A090868.P9654444326909535306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355019 n + A354982 (A355063 (n + 1)).toNat

end

end A090868.P9654444326909535306

/-!
# A090869: Irregular primes whose indices are irregular primes of order one.

The programs for A090869, there is no canonical definition to state claims against.
-/

/-! ## A090869.P991266039887884403

`A000928(A000928(n+1))`
-/

namespace A090869.P991266039887884403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (A000928 (n + 1)).toNat

end

end A090869.P991266039887884403

/-! ## A090869.P16024631027386917884

`A000928(p?[A000928(-xor(n, -1))])`
-/

namespace A090869.P16024631027386917884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090869.P16024631027386917884

/-! ## A090869.P12337017725381374763

`p?[A000928(A000928(Δ[n²]-n))]`
-/

namespace A090869.P12337017725381374763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (A000928 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090869.P12337017725381374763

/-! ## A090869.P2931955538249436223

`A000928(p?[A000928(1-(n-2*n))])`
-/

namespace A090869.P2931955538249436223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090869.P2931955538249436223

/-! ## A090869.P687040307771576948

`A000928(record[A000928(ceil(C(or(1, n), n)/2))])`
-/

namespace A090869.P687040307771576948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090869.P687040307771576948

/-! ## A090869.P10037548125807499384

`record[A000928(A000928(A065648(n)))]`
-/

namespace A090869.P10037548125807499384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (A000928 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090869.P10037548125807499384

/-! ## A090869.P17979116370146931249

`record[A000928(A000928(A126759(n)))]`
-/

namespace A090869.P17979116370146931249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (A000928 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090869.P17979116370146931249

/-! ## A090869.P1993227353037742011

`A000040(A105018(A000040(A105018(n+1))))`
-/

namespace A090869.P1993227353037742011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A105018 (A000040 (A105018 (n + 1)).toNat).toNat).toNat

end

end A090869.P1993227353037742011

/-! ## A090869.P7915082170579970571

`record[A000928(A000928(A020986(n)))]`
-/

namespace A090869.P7915082170579970571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (A000928 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090869.P7915082170579970571

/-! ## A090869.P4605013990501892840

`A000928(record[A000928(A028920(n))])`
-/

namespace A090869.P4605013990501892840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090869.P4605013990501892840

/-!
# A090870: a(n) is the smallest m such that d(m+k-1) = 2k for k = 1, ..., n where d(t)= prime(t+1) - prime(t) (differences of consecutive primes in arithmetic progression).

The programs for A090870, there is no canonical definition to state claims against.
-/

/-! ## A090870.P3719577392666950930

`A000720(A016045(n+1))`
-/

namespace A090870.P3719577392666950930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A016045 (n + 1)).toNat

end

end A090870.P3719577392666950930

/-!
# A090876: Sum of regular and irregular primes of the same index.

The programs for A090876, there is no canonical definition to state claims against.
-/

/-! ## A090876.P13643959623742265138

`2*A000928(n+1)-A090877(n+1)`
-/

namespace A090876.P13643959623742265138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000928 (n + 1) - A090877 (n + 1)

end

end A090876.P13643959623742265138

/-! ## A090876.P16286727195054634057

`A004277(A000928(n+1))-A090877(n+1)`
-/

namespace A090876.P16286727195054634057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000928 (n + 1)).toNat - A090877 (n + 1)

end

end A090876.P16286727195054634057

/-! ## A090876.P6792530879561993888

`A000928(n+1)+record[A226159(n+1)]`
-/

namespace A090876.P6792530879561993888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090876.P6792530879561993888

/-! ## A090876.P16252788630493059494

`A000040(A105018(n+1))+record[A226159(n+1)]`
-/

namespace A090876.P16252788630493059494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A105018 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090876.P16252788630493059494

/-!
# A090877: Difference between irregular and regular primes of the same index.

The programs for A090877, there is no canonical definition to state claims against.
-/

/-! ## A090877.P15537942474662207397

`A000928(n+1)-p?[comp[A000928(n+1)]]`
-/

namespace A090877.P15537942474662207397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1) - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A090877.P15537942474662207397

/-! ## A090877.P4274964193720441095

`2*A000928(n+1)-A090876(n+1)`
-/

namespace A090877.P4274964193720441095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000928 (n + 1) - A090876 (n + 1)

end

end A090877.P4274964193720441095

/-! ## A090877.P1804833707413251012

`A004277(A000928(n+1))-A090876(n+1)`
-/

namespace A090877.P1804833707413251012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000928 (n + 1)).toNat - A090876 (n + 1)

end

end A090877.P1804833707413251012

/-! ## A090877.P5347221393189991039

`A004277(p?[A000928(n+1)])%A090876(n+1)`
-/

namespace A090877.P5347221393189991039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A090876 (n + 1))

end

end A090877.P5347221393189991039

/-!
# A090878: Numerator of Integral_{x>=0} exp(-x)*(1+x/n)^n dx.

The programs for A090878, there is no canonical definition to state claims against.
-/

/-! ## A090878.P16688399476747950812

`A226931(n+1)-(n+1)*A036505(n)`
-/

namespace A090878.P16688399476747950812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226931 (n + 1) - (n + 1 : ℤ) * A036505 n

end

end A090878.P16688399476747950812

/-! ## A090878.P6883251918891425147

`A120266(n+1)/A051696(n+1)*A214402(n+1)`
-/

namespace A090878.P6883251918891425147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120266 (n + 1) : ℚ) / (A051696 (n + 1) : ℚ) * (A214402 (n + 1) : ℚ)

end

end A090878.P6883251918891425147

/-! ## A090878.P13675934234748655753

`A095996(n+1)/A214401(n+1)*A120266(n+1)`
-/

namespace A090878.P13675934234748655753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095996 (n + 1) : ℚ) / (A214401 (n + 1) : ℚ) * (A120266 (n + 1) : ℚ)

end

end A090878.P13675934234748655753

/-! ## A090878.P12907150409248064647

`gcd(A095996(n+1), A214402(n+1))*A120266(n+1)`
-/

namespace A090878.P12907150409248064647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A095996 (n + 1)) (A214402 (n + 1)) : ℤ) * A120266 (n + 1)

end

end A090878.P12907150409248064647

/-! ## A090878.P2082488636295012207

`A063170(n+1)/A000312(n+1)*A036505(n)`
-/

namespace A090878.P2082488636295012207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063170 (n + 1) : ℚ) / (A000312 (n + 1) : ℚ) * (A036505 n : ℚ)

end

end A090878.P2082488636295012207

/-!
# A090879: a(n) = Sum_{d|n} d*2^(n-d).

The programs for A090879, the canonical program `A090879.P12099569344754824197` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090879 has offset 1).

The definition of A090879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090879.P12099569344754824197

`∑{d}[n+1, 2^(n+1-#)*#]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A090879

/-- `∑{d}[n+1, 2^(n+1-#)*#]` -/
def P12099569344754824197.Spec : Prop :=
  ∀ n, P12099569344754824197.a n = (A090879 (n + 1) : ℚ)

end A090879

/-! ## A090879.P6222850107900446834

`∑[A011782(n)]*∑{d}[n+1, #/A011782(#)]`
-/

namespace A090879.P6222850107900446834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) * (∑ d ∈ Nat.divisors (f2 n), (d : ℚ) / (A011782 d : ℚ))

end

end A090879.P6222850107900446834

namespace A090879

/-- `∑[A011782(n)]*∑{d}[n+1, #/A011782(#)]` -/
def P6222850107900446834.Spec : Prop :=
  ∀ n, P6222850107900446834.a n = (A090879 (n + 1) : ℚ)

end A090879

/-! ## A090879.P12738076551608056313

`∑{d}[n+1, #/A000079(#)]*A000079(n+1)`
-/

namespace A090879.P12738076551608056313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (A000079 d : ℚ)) * (A000079 (n + 1) : ℚ)

end

end A090879.P12738076551608056313

namespace A090879

/-- `∑{d}[n+1, #/A000079(#)]*A000079(n+1)` -/
def P12738076551608056313.Spec : Prop :=
  ∀ n, P12738076551608056313.a n = (A090879 (n + 1) : ℚ)

end A090879

/-! ## A090879.P14038918541454305222

`∑{d}[n+1, #/A011782(#)]*A011782(n+1)`
-/

namespace A090879.P14038918541454305222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (A011782 d : ℚ)) * (A011782 (n + 1) : ℚ)

end

end A090879.P14038918541454305222

namespace A090879

/-- `∑{d}[n+1, #/A011782(#)]*A011782(n+1)` -/
def P14038918541454305222.Spec : Prop :=
  ∀ n, P14038918541454305222.a n = (A090879 (n + 1) : ℚ)

end A090879

/-!
# A090880: Suppose n=(p1^e1)*(p2^e2)*... where p1,p2,... are the prime numbers and e1,e2,... are nonnegative integers. Then a(n) = e1 + (e2)*3 + (e3)*9 + (e4)*27 + ... + (ek)*(3^(k-1)) + ...

The programs for A090880, there is no canonical definition to state claims against.
-/

/-! ## A090880.P12858558594286975443

`3^(A055396(n+1)-1)+a(A032742(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A090880.P12858558594286975443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (3 : ℚ) ^ (A055396 (n + 1) - 1 : ℤ) + a (A032742 (n + 1) - 1).toNat

end

end A090880.P12858558594286975443

/-! ## A090880.P9302995571967093425

`A104244(∑[n+2]+4)`
-/

namespace A090880.P9302995571967093425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A090880.P9302995571967093425

/-! ## A090880.P4785147645600170403

`A104244(A167614(n+1))%(2^n)`
-/

namespace A090880.P4785147645600170403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104244 (A167614 (n + 1)).toNat) (2 ^ n : ℤ)

end

end A090880.P4785147645600170403

/-! ## A090880.P1503670360504524229

`A104244(A167614(n+1))*A178334(n)`
-/

namespace A090880.P1503670360504524229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 (A167614 (n + 1)).toNat * A178334 n

end

end A090880.P1503670360504524229

/-! ## A090880.P7662323925493815617

`A104244(A046691(n)+7)%A017501(n)`
-/

namespace A090880.P7662323925493815617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104244 (A046691 n + 7).toNat) (A017501 n)

end

end A090880.P7662323925493815617

/-! ## A090880.P18018168367496923260

`A104244(A167499(n)+n)*A158388(n)`
-/

namespace A090880.P18018168367496923260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 (A167499 n + (n : ℤ)).toNat * A158388 n

end

end A090880.P18018168367496923260

/-! ## A090880.P13067625655950189273

`A104244(A167499(n)+n)%A003945(n)`
-/

namespace A090880.P13067625655950189273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104244 (A167499 n + (n : ℤ)).toNat) (A003945 n)

end

end A090880.P13067625655950189273

/-! ## A090880.P6580621011209562157

`A104244(A167614(n+1))*A211261(A098058(n+1))`
-/

namespace A090880.P6580621011209562157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 (A167614 (n + 1)).toNat * A211261 (A098058 (n + 1)).toNat

end

end A090880.P6580621011209562157

/-! ## A090880.P6085032346654826264

`A104244(A340266(n+1)+1)%A000732(n)`
-/

namespace A090880.P6085032346654826264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104244 (A340266 (n + 1) + 1).toNat) (A000732 n)

end

end A090880.P6085032346654826264

/-!
# A090881: Suppose n=(p1^e1)(p2^e2)... where p1,p2,... are the prime numbers and e1,e2,... are nonnegative integers. Then a(n) = e1 + (e2)*4 + (e3)*16 + (e4)*64 + ... + (ek)*(4^(k-1)) + ...

The programs for A090881, there is no canonical definition to state claims against.
-/

/-! ## A090881.P11191383336698646580

`A104244(∑[n+3]+7)`
-/

namespace A090881.P11191383336698646580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A090881.P11191383336698646580

/-! ## A090881.P2911419436043885942

`∑{d}[n+1, A297108(#)²]`
-/

namespace A090881.P2911419436043885942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297108 d ^ 2

end

end A090881.P2911419436043885942

/-! ## A090881.P7248675873469968549

`A048675(A319525(n+1))`
-/

namespace A090881.P7248675873469968549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A319525 (n + 1)).toNat

end

end A090881.P7248675873469968549

/-! ## A090881.P11514152780660522656

`A048675(A297002(n+1))/2`
-/

namespace A090881.P11514152780660522656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048675 (A297002 (n + 1)).toNat : ℚ) / 2

end

end A090881.P11514152780660522656

/-! ## A090881.P6548740899281206699

`∑{d}[n+1, A048675(A014963(#))²]`
-/

namespace A090881.P6548740899281206699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048675 (A014963 d).toNat ^ 2

end

end A090881.P6548740899281206699

/-! ## A090881.P6666907849392818487

`∑{e}[A181821(n+1), A011782(#)²]`
-/

namespace A090881.P6666907849392818487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A011782 (Nat.factorization (f1 n).natAbs p) ^ 2

end

end A090881.P6666907849392818487

/-! ## A090881.P4222810901594303777

`A104244(A167614(n+2)+1)+and(2, char[1])`
-/

namespace A090881.P4222810901594303777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 (A167614 (n + 2) + 1).toNat + (Nat.land 2 (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A090881.P4222810901594303777

/-!
# A090882: Suppose n=(p1^e1)(p2^e2)... where p1,p2,... are the prime numbers and e1,e2,... are nonnegative integers. Then a(n) = e1 + (e2)*5 + (e3)*25 + (e4)*125 + ... + (ek)*(5^(k-1)) + ...

The programs for A090882, there is no canonical definition to state claims against.
-/

/-! ## A090882.P8639620026182902877

`A104244(C(n+5, 2)+5)`
-/

namespace A090882.P8639620026182902877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 (Nat.choose (n + 5) 2 + 5)

end

end A090882.P8639620026182902877

/-! ## A090882.P11574673851732455568

`A104244(A167499(n+3))`
-/

namespace A090882.P11574673851732455568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 (A167499 (n + 3)).toNat

end

end A090882.P11574673851732455568

/-! ## A090882.P11804758949895452449

`A104244(A155212(n)+13)`
-/

namespace A090882.P11804758949895452449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 (A155212 n + 13).toNat

end

end A090882.P11804758949895452449

/-! ## A090882.P15329740330359776246

`A104244(A056000(n)+15)`
-/

namespace A090882.P15329740330359776246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 (A056000 n + 15).toNat

end

end A090882.P15329740330359776246

/-! ## A090882.P2367201222260490846

`A104244(∑[A020705(n)]+11)`
-/

namespace A090882.P2367201222260490846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A090882.P2367201222260490846

/-!
# A090883: Write n as Product_{i=1..k} prime(i)^e_i, where prime(i) is the i-th prime number and e_i is a nonnegative integer. a(n) = Sum_{i=1..k} e_i*n^(i-1).

The programs for A090883, there is no canonical definition to state claims against.
-/

/-! ## A090883.P12068288734491861692

`A104244((n+1)²+n²)`
-/

namespace A090883.P12068288734491861692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 ((n + 1) ^ 2 + n ^ 2)

end

end A090883.P12068288734491861692

/-! ## A090883.P3320630178256983841

`A007318(∑[n])*A104244(A001844(n))`
-/

namespace A090883.P3320630178256983841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A104244 (A001844 n).toNat

end

end A090883.P3320630178256983841

/-! ## A090883.P11447918341621462374

`A104244(∑[A008574(n)])%A177129(n)`
-/

namespace A090883.P11447918341621462374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104244 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A177129 n)

end

end A090883.P11447918341621462374

/-! ## A090883.P8089733086595356451

`A014963(12*(n+1))*A104244(A001844(n))`
-/

namespace A090883.P8089733086595356451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A104244 (A001844 n).toNat

end

end A090883.P8089733086595356451

/-! ## A090883.P11081713985628430271

`A007318(C(3, n+2))+A104244(A001844(n))-1`
-/

namespace A090883.P11081713985628430271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 (n + 2)) + (A104244 (A001844 n).toNat - 1)

end

end A090883.P11081713985628430271

/-!
# A090884: a(n) is the derivative of n via transport of structure from polynomials. Completely multiplicative with a(2) = 1, a(prime(i+1)) = prime(i)^i for i > 0.

The programs for A090884, there is no canonical definition to state claims against.
-/

/-! ## A090884.P681620530509065221

`A064989(n+1)^A126760(A077168(n))`
-/

namespace A090884.P681620530509065221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (n + 1) : ℚ) ^ (A126760 (A077168 n).toNat : ℤ)

end

end A090884.P681620530509065221

/-! ## A090884.P16143521855312915513

`A064989(A077168(n))^A252735(n+1)`
-/

namespace A090884.P16143521855312915513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (A077168 n).toNat : ℚ) ^ (A252735 (n + 1) : ℤ)

end

end A090884.P16143521855312915513

/-! ## A090884.P10730106844774325665

`A250470(n+1)^A126760(A077168(n))`
-/

namespace A090884.P10730106844774325665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250470 (n + 1) : ℚ) ^ (A126760 (A077168 n).toNat : ℤ)

end

end A090884.P10730106844774325665

/-! ## A090884.P14528019505801834386

`A299200(n+1)^A126760(A077168(n))`
-/

namespace A090884.P14528019505801834386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299200 (n + 1) : ℚ) ^ (A126760 (A077168 n).toNat : ℤ)

end

end A090884.P14528019505801834386

/-! ## A090884.P18040142758875058718

`A028310(A064989(n+1)^A252735(n+1))`
-/

namespace A090884.P18040142758875058718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A064989 (n + 1) : ℚ) ^ (A252735 (n + 1) : ℤ))).toNat

end

end A090884.P18040142758875058718

/-!
# A090885: Sum of the squares of the exponents in the prime factorization of n.

The programs for A090885, the canonical program `A090885.P2462700995715430818` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090885 has offset 1).

The definition of A090885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090885.P2462700995715430818

`∑{e}[n+1, #²]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A090885

/-- `∑{e}[n+1, #²]` -/
def P2462700995715430818.Spec : Prop :=
  ∀ n, (P2462700995715430818.a n : ℤ) = A090885 (n + 1)

theorem P2462700995715430818.correct : P2462700995715430818.Spec := by
  intro n
  simp only [A090885, Nat.add_sub_cancel]

end A090885

/-! ## A090885.P7615573523766149887

`log(∏{e}[n+1, exp(#²)])`
-/

namespace A090885.P7615573523766149887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ p ∈ Nat.primeFactors (f1 n), Real.exp (Nat.factorization (f1 n) p ^ 2 : ℝ))

end

end A090885.P7615573523766149887

namespace A090885

/-- `log(∏{e}[n+1, exp(#²)])` -/
def P7615573523766149887.Spec : Prop :=
  ∀ n, P7615573523766149887.a n = (A090885 (n + 1) : ℝ)

end A090885

/-! ## A090885.P12309994302786187764

`log2(∏{e}[n+1, 2^#²])`
-/

namespace A090885.P12309994302786187764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p ^ 2 : ℕ) : ℝ)

end

end A090885.P12309994302786187764

namespace A090885

/-- `log2(∏{e}[n+1, 2^#²])` -/
def P12309994302786187764.Spec : Prop :=
  ∀ n, P12309994302786187764.a n = (A090885 (n + 1) : ℝ)

end A090885

/-! ## A090885.P5578682064480955004

`val(∏{e}[n+1, 2^#²], 2)`
-/

namespace A090885.P5578682064480955004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p ^ 2) 2

end

end A090885.P5578682064480955004

namespace A090885

/-- `val(∏{e}[n+1, 2^#²], 2)` -/
def P5578682064480955004.Spec : Prop :=
  ∀ n, (P5578682064480955004.a n : ℤ) = A090885 (n + 1)

end A090885

/-! ## A090885.P2436997592717157322

`floor(∑{e}[n+1, #^(4/2)])`
-/

namespace A090885.P2436997592717157322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℝ) ^ ((4 : ℚ) / 2 : ℝ)⌋

end

end A090885.P2436997592717157322

namespace A090885

/-- `floor(∑{e}[n+1, #^(4/2)])` -/
def P2436997592717157322.Spec : Prop :=
  ∀ n, P2436997592717157322.a n = A090885 (n + 1)

end A090885

/-! ## A090885.P3041201832740623016

`ceil(∑{e}[n+1, #^(4/2)])`
-/

namespace A090885.P3041201832740623016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℝ) ^ ((4 : ℚ) / 2 : ℝ)⌉

end

end A090885.P3041201832740623016

namespace A090885

/-- `ceil(∑{e}[n+1, #^(4/2)])` -/
def P3041201832740623016.Spec : Prop :=
  ∀ n, P3041201832740623016.a n = A090885 (n + 1)

end A090885

/-! ## A090885.P9727816236184136048

`round(∑{e}[n+1, #^(4/2)])`
-/

namespace A090885.P9727816236184136048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℝ) ^ ((4 : ℚ) / 2 : ℝ))

end

end A090885.P9727816236184136048

namespace A090885

/-- `round(∑{e}[n+1, #^(4/2)])` -/
def P9727816236184136048.Spec : Prop :=
  ∀ n, P9727816236184136048.a n = A090885 (n + 1)

end A090885

/-! ## A090885.P11188873260564236745

`∑{p}[n+1, val(n+1, #)²]`
-/

namespace A090885.P11188873260564236745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p ^ 2

end

end A090885.P11188873260564236745

namespace A090885

/-- `∑{p}[n+1, val(n+1, #)²]` -/
def P11188873260564236745.Spec : Prop :=
  ∀ n, (P11188873260564236745.a n : ℤ) = A090885 (n + 1)

end A090885

/-! ## A090885.P3364479114006340482

`A289506(A181819(n+1))`
-/

namespace A090885.P3364479114006340482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (A181819 (n + 1)).toNat

end

end A090885.P3364479114006340482

namespace A090885

/-- `A289506(A181819(n+1))` -/
def P3364479114006340482.Spec : Prop :=
  ∀ n, P3364479114006340482.a n = A090885 (n + 1)

end A090885

/-! ## A090885.P1110988059890176447

`A351397(n+1)+A351397(n+1)-A001222(n+1)`
-/

namespace A090885.P1110988059890176447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351397 (n + 1) + (A351397 (n + 1) - A001222 (n + 1))

end

end A090885.P1110988059890176447

namespace A090885

/-- `A351397(n+1)+A351397(n+1)-A001222(n+1)` -/
def P1110988059890176447.Spec : Prop :=
  ∀ n, P1110988059890176447.a n = A090885 (n + 1)

end A090885

/-! ## A090885.P6177366448417802831

`∑{e}[record[(n-1)²], #²]/4`
-/

namespace A090885.P6177366448417802831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2 : ℕ) : ℚ) / 4

end

end A090885.P6177366448417802831

namespace A090885

/-- `∑{e}[record[(n-1)²], #²]/4` -/
def P6177366448417802831.Spec : Prop :=
  ∀ n, P6177366448417802831.a n = (A090885 (n + 1) : ℚ)

end A090885

/-! ## A090885.P11879915536894566664

`∑{digits}[A054841(n+1), #²]`
-/

namespace A090885.P11879915536894566664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A090885.P11879915536894566664

namespace A090885

/-- `∑{digits}[A054841(n+1), #²]` -/
def P11879915536894566664.Spec : Prop :=
  ∀ n, (P11879915536894566664.a n : ℤ) = A090885 (n + 1)

end A090885

/-! ## A090885.P15087156848656943627

`∑{e}[n+1, A000290(#)]%A001653(n+1)`
-/

namespace A090885.P15087156848656943627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ p ∈ Nat.primeFactors (f1 n), A000290 (Nat.factorization (f1 n) p)) (A001653 (n + 1))

end

end A090885.P15087156848656943627

namespace A090885

/-- `∑{e}[n+1, A000290(#)]%A001653(n+1)` -/
def P15087156848656943627.Spec : Prop :=
  ∀ n, P15087156848656943627.a n = A090885 (n + 1)

end A090885

/-!
# A090887: Irregular primes the indices of whose indices are irregular primes of order two.

The programs for A090887, there is no canonical definition to state claims against.
-/

/-! ## A090887.P17615169775985525337

`A090869(A000928(n+1))`
-/

namespace A090887.P17615169775985525337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090869 (A000928 (n + 1)).toNat

end

end A090887.P17615169775985525337

/-!
# A090889: Double partial sums of (n * its dyadic valuation).

The programs for A090889, the canonical program `A090889.P13733676400612938855` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090889 has offset 0).

The definition of A090889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090889.P13733676400612938855

`∑[∑[n*∑{e}[and(n, -n), #]]]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A090889

/-- `∑[∑[n*∑{e}[and(n, -n), #]]]` -/
def P13733676400612938855.Spec : Prop :=
  ∀ n, (P13733676400612938855.a n : ℤ) = A090889 n

theorem P13733676400612938855.correct : P13733676400612938855.Spec := by
  intro n
  simp only [A090889]

end A090889

/-! ## A090889.P11562421515702697319

`∑[A249152(n)]`
-/

namespace A090889.P11562421515702697319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090889.P11562421515702697319

namespace A090889

/-- `∑[A249152(n)]` -/
def P11562421515702697319.Spec : Prop :=
  ∀ n, P11562421515702697319.a n = A090889 n

end A090889

/-! ## A090889.P11398501832738256827

`∑[∑[n]]-A099027(n)`
-/

namespace A090889.P11398501832738256827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A099027 n

end

end A090889.P11398501832738256827

namespace A090889

/-- `∑[∑[n]]-A099027(n)` -/
def P11398501832738256827.Spec : Prop :=
  ∀ n, P11398501832738256827.a n = A090889 n

end A090889

/-! ## A090889.P14546872931024234973

`∑[A143157(n)-∑[n]]`
-/

namespace A090889.P14546872931024234973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143157 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090889.P14546872931024234973

namespace A090889

/-- `∑[A143157(n)-∑[n]]` -/
def P14546872931024234973.Spec : Prop :=
  ∀ n, P14546872931024234973.a n = A090889 n

end A090889

/-! ## A090889.P11268560708129163492

`∑[A249153(A004526(n))]`
-/

namespace A090889.P11268560708129163492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249153 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090889.P11268560708129163492

namespace A090889

/-- `∑[A249153(A004526(n))]` -/
def P11268560708129163492.Spec : Prop :=
  ∀ n, P11268560708129163492.a n = A090889 n

end A090889

/-! ## A090889.P9334401733961990080

`∑[∑[n*A007814(A302436(n))]]`
-/

namespace A090889.P9334401733961990080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007814 (A302436 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090889.P9334401733961990080

namespace A090889

/-- `∑[∑[n*A007814(A302436(n))]]` -/
def P9334401733961990080.Spec : Prop :=
  ∀ n, P9334401733961990080.a n = A090889 n

end A090889

/-! ## A090889.P4965704071358005631

`∑[∑[n*A007814(A206332(n+1))]]`
-/

namespace A090889.P4965704071358005631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007814 (A206332 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090889.P4965704071358005631

namespace A090889

/-- `∑[∑[n*A007814(A206332(n+1))]]` -/
def P4965704071358005631.Spec : Prop :=
  ∀ n, P4965704071358005631.a n = A090889 n

end A090889

/-! ## A090889.P10817022585544997469

`∑[∑[val(n^n, 2)]]`
-/

namespace A090889.P10817022585544997469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n ^ n) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090889.P10817022585544997469

namespace A090889

/-- `∑[∑[val(n^n, 2)]]` -/
def P10817022585544997469.Spec : Prop :=
  ∀ n, (P10817022585544997469.a n : ℤ) = A090889 n

end A090889

/-!
# A090892: Solutions x to equation floor(x*r*floor(x/r)) = floor(x/r*floor(x*r)) when r = sqrt(2).

The programs for A090892, the canonical program `A090892.P11463110273139367639` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090892 has offset 0).

The definition of A090892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090892.P6855190526217581522

`lt[(floor(n*sqrt(2))-2)%2, 1]`
-/

namespace A090892.P6855190526217581522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ - 2) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A090892.P6855190526217581522

namespace A090892

/-- `lt[(floor(n*sqrt(2))-2)%2, 1]` -/
def P6855190526217581522.Spec : Prop :=
  ∀ n, (P6855190526217581522.a n : ℤ) = A090892 n

end A090892

/-! ## A090892.P13057559585973542751

`lt[floor(n*sqrt(2))%2*C(n, 2), 2]`
-/

namespace A090892.P13057559585973542751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ 2 * (Nat.choose n 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A090892.P13057559585973542751

namespace A090892

/-- `lt[floor(n*sqrt(2))%2*C(n, 2), 2]` -/
def P13057559585973542751.Spec : Prop :=
  ∀ n, (P13057559585973542751.a n : ℤ) = A090892 n

end A090892

/-! ## A090892.P11463110273139367639

`lt[A093178(A001951(n)), 2]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A090892

/-- `lt[A093178(A001951(n)), 2]` -/
def P11463110273139367639.Spec : Prop :=
  ∀ n, (P11463110273139367639.a n : ℤ) = A090892 n

theorem P11463110273139367639.correct : P11463110273139367639.Spec := by
  intro n
  simp only [A090892]

end A090892

/-! ## A090892.P577788933292095100

`∪[A120752(n+1), A001014(n)]`
-/

namespace A090892.P577788933292095100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090892.P577788933292095100

namespace A090892

/-- `∪[A120752(n+1), A001014(n)]` -/
def P577788933292095100.Spec : Prop :=
  ∀ n, (P577788933292095100.a n : ℤ) = A090892 n

end A090892

/-! ## A090892.P16570140479494258308

`∪[A120752(n+1), A001016(n)]`
-/

namespace A090892.P16570140479494258308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090892.P16570140479494258308

namespace A090892

/-- `∪[A120752(n+1), A001016(n)]` -/
def P16570140479494258308.Spec : Prop :=
  ∀ n, (P16570140479494258308.a n : ℤ) = A090892 n

end A090892

/-! ## A090892.P7378557092841079182

`∪[A120752(n+1), A001017(n)]`
-/

namespace A090892.P7378557092841079182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090892.P7378557092841079182

namespace A090892

/-- `∪[A120752(n+1), A001017(n)]` -/
def P7378557092841079182.Spec : Prop :=
  ∀ n, (P7378557092841079182.a n : ℤ) = A090892 n

end A090892

/-! ## A090892.P16778280296847578332

`∪[A054623(n), A120752(n+1)]`
-/

namespace A090892.P16778280296847578332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054623 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090892.P16778280296847578332

namespace A090892

/-- `∪[A054623(n), A120752(n+1)]` -/
def P16778280296847578332.Spec : Prop :=
  ∀ n, (P16778280296847578332.a n : ℤ) = A090892 n

end A090892

/-! ## A090892.P15815030765816431053

`∪[A113596(n), A120752(n+1)]`
-/

namespace A090892.P15815030765816431053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090892.P15815030765816431053

namespace A090892

/-- `∪[A113596(n), A120752(n+1)]` -/
def P15815030765816431053.Spec : Prop :=
  ∀ n, (P15815030765816431053.a n : ℤ) = A090892 n

end A090892

/-! ## A090892.P11776489024921061260

`lt[n, A000265(A001951(n)+1)+1]`
-/

namespace A090892.P11776489024921061260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001951 n + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A090892.P11776489024921061260

namespace A090892

/-- `lt[n, A000265(A001951(n)+1)+1]` -/
def P11776489024921061260.Spec : Prop :=
  ∀ n, (P11776489024921061260.a n : ℤ) = A090892 n

end A090892

/-! ## A090892.P2029884900705269288

`record[n^(A289037(n+1)%2)]`
-/

namespace A090892.P2029884900705269288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.tmod (A289037 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090892.P2029884900705269288

namespace A090892

/-- `record[n^(A289037(n+1)%2)]` -/
def P2029884900705269288.Spec : Prop :=
  ∀ n, P2029884900705269288.a n = (A090892 n : ℚ)

end A090892

/-! ## A090892.P1867268072770974272

`eq[n, n^gcd(2, A289036(n+2))]`
-/

namespace A090892.P1867268072770974272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Int.gcd 2 (A289036 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090892.P1867268072770974272

namespace A090892

/-- `eq[n, n^gcd(2, A289036(n+2))]` -/
def P1867268072770974272.Spec : Prop :=
  ∀ n, (P1867268072770974272.a n : ℤ) = A090892 n

end A090892

/-! ## A090892.P6264904877887329653

`record[A120752(A001951(n)%(n+1)+1)%(n+1)]`
-/

namespace A090892.P6264904877887329653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120752 (Int.tmod (A001951 n) (n + 1 : ℤ) + 1).toNat) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090892.P6264904877887329653

namespace A090892

/-- `record[A120752(A001951(n)%(n+1)+1)%(n+1)]` -/
def P6264904877887329653.Spec : Prop :=
  ∀ n, P6264904877887329653.a n = A090892 n

end A090892

/-! ## A090892.P11932641283793874955

`lt[A035455(floor(2*n*sqrt(1/2))+1), 2]`
-/

namespace A090892.P11932641283793874955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035455 (⌊(2 * n : ℝ) * Real.sqrt ((1 : ℚ) / 2 : ℝ)⌋ + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A090892.P11932641283793874955

namespace A090892

/-- `lt[A035455(floor(2*n*sqrt(1/2))+1), 2]` -/
def P11932641283793874955.Spec : Prop :=
  ∀ n, (P11932641283793874955.a n : ℤ) = A090892 n

end A090892

/-! ## A090892.P7180044827230865105

`lt[A185544(A001951(n)), A169967(n+2)]`
-/

namespace A090892.P7180044827230865105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A001951 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169967 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090892.P7180044827230865105

namespace A090892

/-- `lt[A185544(A001951(n)), A169967(n+2)]` -/
def P7180044827230865105.Spec : Prop :=
  ∀ n, (P7180044827230865105.a n : ℤ) = A090892 n

end A090892

/-! ## A090892.P138488345457586602

`lt[A185544(A001951(n)), 2*A284380(n+1)]`
-/

namespace A090892.P138488345457586602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A001951 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090892.P138488345457586602

namespace A090892

/-- `lt[A185544(A001951(n)), 2*A284380(n+1)]` -/
def P138488345457586602.Spec : Prop :=
  ∀ n, (P138488345457586602.a n : ℤ) = A090892 n

end A090892

/-! ## A090892.P4504806149824080935

`record[n^A056594(2*A001951(n))]`
-/

namespace A090892.P4504806149824080935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A056594 (2 * A001951 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090892.P4504806149824080935

namespace A090892

/-- `record[n^A056594(2*A001951(n))]` -/
def P4504806149824080935.Spec : Prop :=
  ∀ n, P4504806149824080935.a n = (A090892 n : ℚ)

end A090892

/-! ## A090892.P13806738598108138811

`lt[A057174(A289037(n+1)), A285476(n)]`
-/

namespace A090892.P13806738598108138811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 (A289037 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090892.P13806738598108138811

namespace A090892

/-- `lt[A057174(A289037(n+1)), A285476(n)]` -/
def P13806738598108138811.Spec : Prop :=
  ∀ n, (P13806738598108138811.a n : ℤ) = A090892 n

end A090892

/-! ## A090892.P14100486483200871766

`lt[A057174(A289037(n+1)), A285412(n+4)]`
-/

namespace A090892.P14100486483200871766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 (A289037 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285412 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090892.P14100486483200871766

namespace A090892

/-- `lt[A057174(A289037(n+1)), A285412(n+4)]` -/
def P14100486483200871766.Spec : Prop :=
  ∀ n, (P14100486483200871766.a n : ℤ) = A090892 n

end A090892

/-! ## A090892.P15131770980828782113

`lt[0, A282414(A195119(n))]`
-/

namespace A090892.P15131770980828782113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282414 (A195119 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A090892.P15131770980828782113

namespace A090892

/-- `lt[0, A282414(A195119(n))]` -/
def P15131770980828782113.Spec : Prop :=
  ∀ n, (P15131770980828782113.a n : ℤ) = A090892 n

end A090892

/-! ## A090892.P8569034990400537980

`lt[n-2, A131575(floor(n*sqrt(2))+1)]`
-/

namespace A090892.P8569034990400537980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090892.P8569034990400537980

namespace A090892

/-- `lt[n-2, A131575(floor(n*sqrt(2))+1)]` -/
def P8569034990400537980.Spec : Prop :=
  ∀ n, (P8569034990400537980.a n : ℤ) = A090892 n

end A090892

/-!
# A090893: Solutions x to equation floor(x*r*floor(x/r)) = floor(x/r*floor(x*r)) when r=sqrt(3).

The programs for A090893, the canonical program `A090893.P80685579650298146` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090893 has offset 0).

The definition of A090893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1927 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090893.P80685579650298146

`eq[1, A110091(A198081(n))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A090893

/-- `eq[1, A110091(A198081(n))]` -/
def P80685579650298146.Spec : Prop :=
  ∀ n, (P80685579650298146.a n : ℤ) = A090893 n

theorem P80685579650298146.correct : P80685579650298146.Spec := by
  intro n
  simp only [A090893]

end A090893

/-! ## A090893.P376707147526372192

`record[A000027(n+1)-A110091(A198081(n))]`
-/

namespace A090893.P376707147526372192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A110091 (A198081 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090893.P376707147526372192

namespace A090893

/-- `record[A000027(n+1)-A110091(A198081(n))]` -/
def P376707147526372192.Spec : Prop :=
  ∀ n, P376707147526372192.a n = A090893 n

end A090893

/-! ## A090893.P8840031495286747945

`record[A328399(2*n)-A110091(A198081(n))]`
-/

namespace A090893.P8840031495286747945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * n) - A110091 (A198081 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090893.P8840031495286747945

namespace A090893

/-- `record[A328399(2*n)-A110091(A198081(n))]` -/
def P8840031495286747945.Spec : Prop :=
  ∀ n, P8840031495286747945.a n = A090893 n

end A090893

/-! ## A090893.P11209690131444710823

`record[A008619(2*n)-A110091(A198081(n))]`
-/

namespace A090893.P11209690131444710823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A110091 (A198081 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090893.P11209690131444710823

namespace A090893

/-- `record[A008619(2*n)-A110091(A198081(n))]` -/
def P11209690131444710823.Spec : Prop :=
  ∀ n, P11209690131444710823.a n = A090893 n

end A090893

/-! ## A090893.P637824088552496647

`record[A028242(2*n)-A110091(A198081(n))]`
-/

namespace A090893.P637824088552496647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n) - A110091 (A198081 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090893.P637824088552496647

namespace A090893

/-- `record[A028242(2*n)-A110091(A198081(n))]` -/
def P637824088552496647.Spec : Prop :=
  ∀ n, P637824088552496647.a n = A090893 n

end A090893

/-! ## A090893.P16385451534326296944

`record[n^A163806(A198269(n))]`
-/

namespace A090893.P16385451534326296944
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A163806 (A198269 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090893.P16385451534326296944

namespace A090893

/-- `record[n^A163806(A198269(n))]` -/
def P16385451534326296944.Spec : Prop :=
  ∀ n, P16385451534326296944.a n = (A090893 n : ℚ)

end A090893

/-! ## A090893.P15457328307485581851

`eq[(n^A163806(A198269(n)))², A000290(n)]`
-/

namespace A090893.P15457328307485581851
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) ^ (A163806 (A198269 n).toNat : ℤ)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A090893.P15457328307485581851

namespace A090893

/-- `eq[(n^A163806(A198269(n)))², A000290(n)]` -/
def P15457328307485581851.Spec : Prop :=
  ∀ n, (P15457328307485581851.a n : ℤ) = A090893 n

end A090893

/-! ## A090893.P3065351824621267535

`eq[(n^A163806(A198269(n)))², (n%A270454(n))²]`
-/

namespace A090893.P3065351824621267535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) ^ (A163806 (A198269 n).toNat : ℤ)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A270454 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A090893.P3065351824621267535

namespace A090893

/-- `eq[(n^A163806(A198269(n)))², (n%A270454(n))²]` -/
def P3065351824621267535.Spec : Prop :=
  ∀ n, (P3065351824621267535.a n : ℤ) = A090893 n

end A090893

/-! ## A090893.P1126914855654534713

`eq[A026254(A080590(n+1)), A059555(n+1)]`
-/

namespace A090893.P1126914855654534713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026254 (A080590 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059555 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090893.P1126914855654534713

namespace A090893

/-- `eq[A026254(A080590(n+1)), A059555(n+1)]` -/
def P1126914855654534713.Spec : Prop :=
  ∀ n, (P1126914855654534713.a n : ℤ) = A090893 n

end A090893

/-! ## A090893.P11087381111261737368

`eq[0, A083054(A233583(n+1))]`
-/

namespace A090893.P11087381111261737368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083054 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090893.P11087381111261737368

namespace A090893

/-- `eq[0, A083054(A233583(n+1))]` -/
def P11087381111261737368.Spec : Prop :=
  ∀ n, (P11087381111261737368.a n : ℤ) = A090893 n

end A090893

/-!
# A090894: Numbers in n-th downward diagonal of triangle T : 0; 1, 2; 3, 4, 5; 6, 7, 8, 9; ...

The programs for A090894, the canonical program `A090894.P5043155219363739056` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090894 has offset 0).

The definition of A090894 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091995, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A090894.P5043155219363739056

`A091995(n+1)-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A090894

/-- `A091995(n+1)-1` -/
def P5043155219363739056.Spec : Prop :=
  ∀ n, P5043155219363739056.a n = A090894 n

theorem P5043155219363739056.correct : P5043155219363739056.Spec := by
  intro n
  simp only [A090894]

end A090894

/-! ## A090894.P17535845321448884492

`abs(1-A091995(-xor(n, -1)))`
-/

namespace A090894.P17535845321448884492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A091995 (-Int.xor (n : ℤ) (-1)).toNat|

end

end A090894.P17535845321448884492

namespace A090894

/-- `abs(1-A091995(-xor(n, -1)))` -/
def P17535845321448884492.Spec : Prop :=
  ∀ n, P17535845321448884492.a n = A090894 n

end A090894

/-! ## A090894.P11998696875554413339

`abs(1-A091995(Δ[n²]-n))`
-/

namespace A090894.P11998696875554413339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A091995 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A090894.P11998696875554413339

namespace A090894

/-- `abs(1-A091995(Δ[n²]-n))` -/
def P11998696875554413339.Spec : Prop :=
  ∀ n, P11998696875554413339.a n = A090894 n

end A090894

/-! ## A090894.P7048798355083459240

`A056536(C(ceil(2*sqrt(n+1)), 2)-n)-1`
-/

namespace A090894.P7048798355083459240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056536 (Nat.choose ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat 2 - n) - 1

end

end A090894.P7048798355083459240

namespace A090894

/-- `A056536(C(ceil(2*sqrt(n+1)), 2)-n)-1` -/
def P7048798355083459240.Spec : Prop :=
  ∀ n, P7048798355083459240.a n = A090894 n

end A090894

/-! ## A090894.P17941187700208503195

`A091018(C(ceil(2*sqrt(n+1)), 2)-n-1)`
-/

namespace A090894.P17941187700208503195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091018 ((Nat.choose ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A090894.P17941187700208503195

namespace A090894

/-- `A091018(C(ceil(2*sqrt(n+1)), 2)-n-1)` -/
def P17941187700208503195.Spec : Prop :=
  ∀ n, P17941187700208503195.a n = A090894 n

end A090894

/-! ## A090894.P8564613173474209890

`A023443(A091995(n+1))`
-/

namespace A090894.P8564613173474209890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A091995 (n + 1)).toNat

end

end A090894.P8564613173474209890

namespace A090894

/-- `A023443(A091995(n+1))` -/
def P8564613173474209890.Spec : Prop :=
  ∀ n, P8564613173474209890.a n = A090894 n

end A090894

/-! ## A090894.P9391963499481388550

`A023444(A091995(n+1)+1)`
-/

namespace A090894.P9391963499481388550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A091995 (n + 1) + 1).toNat

end

end A090894.P9391963499481388550

namespace A090894

/-- `A023444(A091995(n+1)+1)` -/
def P9391963499481388550.Spec : Prop :=
  ∀ n, P9391963499481388550.a n = A090894 n

end A090894

/-! ## A090894.P14818408579086872716

`A289207(A091995(n+1)+1)`
-/

namespace A090894.P14818408579086872716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A091995 (n + 1) + 1).toNat

end

end A090894.P14818408579086872716

namespace A090894

/-- `A289207(A091995(n+1)+1)` -/
def P14818408579086872716.Spec : Prop :=
  ∀ n, P14818408579086872716.a n = A090894 n

end A090894

/-! ## A090894.P5152623533383356528

`A285723(A274428(n+1))-1`
-/

namespace A090894.P5152623533383356528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285723 (A274428 (n + 1)).toNat - 1

end

end A090894.P5152623533383356528

namespace A090894

/-- `A285723(A274428(n+1))-1` -/
def P5152623533383356528.Spec : Prop :=
  ∀ n, P5152623533383356528.a n = A090894 n

end A090894

/-! ## A090894.P9553864200112696100

`A023447(A091995(n+1)+4)`
-/

namespace A090894.P9553864200112696100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A091995 (n + 1) + 4).toNat

end

end A090894.P9553864200112696100

namespace A090894

/-- `A023447(A091995(n+1)+4)` -/
def P9553864200112696100.Spec : Prop :=
  ∀ n, P9553864200112696100.a n = A090894 n

end A090894

/-!
# A090895: a(1)=1 then a(n)=a(n-1)/2 if a(n-1) is even, a(n)=a(n-1)+n otherwise.

The programs for A090895, the canonical program `A090895.P10164178978893114590` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090895 has offset 1).

The definition of A090895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090895.P1725754081964733601

`(a(n-1)+2*(n+1))/gcd(2, a(n-1))-(n+1)` with `a(0)=1`
-/

namespace A090895.P1725754081964733601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (2 * (n + 1) : ℚ)) / (Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) - (n + 1 : ℚ)

end

end A090895.P1725754081964733601

namespace A090895

/-- `(a(n-1)+2*(n+1))/gcd(2, a(n-1))-(n+1)` -/
def P1725754081964733601.Spec : Prop :=
  ∀ n, P1725754081964733601.a n = (A090895 (n + 1) : ℚ)

end A090895

/-! ## A090895.P10164178978893114590

`(a(n-1)+n+1)%(((n+1)*a(n-1))%(2*n+1)+n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A090895

/-- `(a(n-1)+n+1)%(((n+1)*a(n-1))%(2*n+1)+n+1)` -/
def P10164178978893114590.Spec : Prop :=
  ∀ n, (P10164178978893114590.a n : ℤ) = A090895 (n + 1)

theorem P10164178978893114590.correct : P10164178978893114590.Spec := by
  intro n
  simp only [A090895, Nat.add_sub_cancel]

end A090895

/-! ## A090895.P6693119416639363391

`A026741(a(n-1))+(n+1)*A000035(a(n-1))` with `a(0)=1`
-/

namespace A090895.P6693119416639363391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026741 (a (n - 1)).toNat + (n + 1 : ℤ) * A000035 (a (n - 1)).toNat

end

end A090895.P6693119416639363391

namespace A090895

/-- `A026741(a(n-1))+(n+1)*A000035(a(n-1))` -/
def P6693119416639363391.Spec : Prop :=
  ∀ n, P6693119416639363391.a n = A090895 (n + 1)

end A090895

/-! ## A090895.P14406202100344180397

`A026741(a(n-1)+2*(n+1))-(n+1)` with `a(0)=1`
-/

namespace A090895.P14406202100344180397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026741 (a (n - 1) + (2 * (n + 1) : ℤ)).toNat - (n + 1 : ℤ)

end

end A090895.P14406202100344180397

namespace A090895

/-- `A026741(a(n-1)+2*(n+1))-(n+1)` -/
def P14406202100344180397.Spec : Prop :=
  ∀ n, P14406202100344180397.a n = A090895 (n + 1)

end A090895

/-! ## A090895.P7305878218974530208

`A026741(A005843(n+1)+a(n-1))-(n+1)` with `a(0)=1`
-/

namespace A090895.P7305878218974530208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026741 (A005843 (n + 1) + a (n - 1)).toNat - (n + 1 : ℤ)

end

end A090895.P7305878218974530208

namespace A090895

/-- `A026741(A005843(n+1)+a(n-1))-(n+1)` -/
def P7305878218974530208.Spec : Prop :=
  ∀ n, P7305878218974530208.a n = A090895 (n + 1)

end A090895

/-!
# A090896: a(n) = sigma^n(n), where sigma^n denotes functional iteration.

The programs for A090896, there is no canonical definition to state claims against.
-/

/-! ## A090896.P9112198344706128555

`A129246(∑[4*n]+1)`
-/

namespace A090896.P9112198344706128555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129246 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A090896.P9112198344706128555

/-! ## A090896.P8202286045620334111

`lcm(A001221(n+5), A129246(A001844(n)))`
-/

namespace A090896.P8202286045620334111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 5)) (A129246 (A001844 n).toNat)

end

end A090896.P8202286045620334111

/-! ## A090896.P11255367158912757626

`A001221(A333537(n+1))*A129246(A001844(n))`
-/

namespace A090896.P11255367158912757626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A333537 (n + 1)).toNat * A129246 (A001844 n).toNat

end

end A090896.P11255367158912757626

/-! ## A090896.P14433287172451856044

`A001221(A100587(2*(n+1))+1)*A129246(A001844(n))`
-/

namespace A090896.P14433287172451856044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A100587 (2 * (n + 1)) + 1).toNat * A129246 (A001844 n).toNat

end

end A090896.P14433287172451856044

/-! ## A090896.P2339944325049770460

`A001221(A251964(n+1))*A129246(A001844(n))`
-/

namespace A090896.P2339944325049770460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A251964 (n + 1)).toNat * A129246 (A001844 n).toNat

end

end A090896.P2339944325049770460

/-!
# A090898: Index of first occurrence of the first n digits of e in the decimal expansion of Pi.

The programs for A090898, there is no canonical definition to state claims against.
-/

/-! ## A090898.P2494327692983014510

`A071918(n+1)-1`
-/

namespace A090898.P2494327692983014510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071918 (n + 1) - 1

end

end A090898.P2494327692983014510

/-! ## A090898.P3573355347424947149

`abs(1-A071918(Δ[n²]-n))`
-/

namespace A090898.P3573355347424947149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A071918 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A090898.P3573355347424947149

/-! ## A090898.P2193541326668535225

`record[A071918(A102885(n))-1]`
-/

namespace A090898.P2193541326668535225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071918 (A102885 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090898.P2193541326668535225

/-! ## A090898.P8513007024481644836

`record[A071918(A328577(n))-1]`
-/

namespace A090898.P8513007024481644836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071918 (A328577 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090898.P8513007024481644836

/-!
# A090899: Number of nonisomorphic indecomposable self-dual quantum codes on n qubits.

The programs for A090899, there is no canonical definition to state claims against.
-/

/-! ## A090899.P15250690231393348687

`A324935(A329382(n!))`
-/

namespace A090899.P15250690231393348687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324935 (A329382 (Nat.factorial n)).toNat

end

end A090899.P15250690231393348687

/-! ## A090899.P15065908077495274977

`A001087(A157134(n+1))`
-/

namespace A090899.P15065908077495274977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001087 (A157134 (n + 1)).toNat

end

end A090899.P15065908077495274977

/-! ## A090899.P12315344819812621199

`A147680(A148033(n+1))`
-/

namespace A090899.P12315344819812621199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147680 (A148033 (n + 1)).toNat

end

end A090899.P12315344819812621199

/-! ## A090899.P12823866029692020656

`A052347(A052955(n))-n`
-/

namespace A090899.P12823866029692020656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052347 (A052955 n).toNat - (n : ℤ)

end

end A090899.P12823866029692020656

