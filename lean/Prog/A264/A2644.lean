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
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A264401: Triangle read by rows: T(n,k) is the number of partitions of n having least gap k.

The programs for A264401, there is no canonical definition to state claims against.
-/

/-! ## A264401.P179065355489636849

`∑{e}[6*a(n-2)-a(n-4), #]` with `a(0)=11, a(1)=1, a(2)=5, a(3)=7`
-/

namespace A264401.P179065355489636849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11, 1, 5, 7] fun n f1 =>
  6 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A264401.P179065355489636849

/-! ## A264401.P4325761438265103796

`A061358(A060369(A130824(n)+6))`
-/

namespace A264401.P4325761438265103796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A060369 (A130824 n + 6).toNat).toNat

end

end A264401.P4325761438265103796

/-!
# A264402: Triangle read by rows: T(n,k) is the number of partitions of n that have k parts larger than the smallest part (n>=1, k>=0).

The programs for A264402, there is no canonical definition to state claims against.
-/

/-! ## A264402.P613663299872647608

`A316829(A352057(n+1))+A098925(n)`
-/

namespace A264402.P613663299872647608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 (A352057 (n + 1)).toNat + A098925 n

end

end A264402.P613663299872647608

/-! ## A264402.P10444491707820902390

`A344087(A389985(n+1))/A373269(n+1)`
-/

namespace A264402.P10444491707820902390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344087 (A389985 (n + 1)).toNat : ℚ) / (A373269 (n + 1) : ℚ)

end

end A264402.P10444491707820902390

/-! ## A264402.P5159470188300728874

`A001222(A168596(n)-A066856(2*(n+1)))`
-/

namespace A264402.P5159470188300728874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A168596 n - A066856 (2 * (n + 1))).toNat

end

end A264402.P5159470188300728874

/-! ## A264402.P14056953749903910414

`A000005(gcd(A325667(n+1), A325680(2*n)))`
-/

namespace A264402.P14056953749903910414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A325667 (n + 1)) (A325680 (2 * n)))

end

end A264402.P14056953749903910414

/-! ## A264402.P9815368085525785342

`A001221(or(A195020(3*n+1), A297901(n+1)))`
-/

namespace A264402.P9815368085525785342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A195020 (3 * n + 1)) (A297901 (n + 1))).toNat

end

end A264402.P9815368085525785342

/-!
# A264403: Triangle read by rows: T(n,k) is the number of partitions of n in which the sum of the parts of multiplicity 1 is equal to k (0<=k<=n).

The programs for A264403, there is no canonical definition to state claims against.
-/

/-! ## A264403.P12084648128200407936

`A037808(or(25, A291348(n+1)))`
-/

namespace A264403.P12084648128200407936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (Int.lor 25 (A291348 (n + 1))).toNat

end

end A264403.P12084648128200407936

/-! ## A264403.P4942621129095151148

`A269241(A057723(n+1)+A001911(n))`
-/

namespace A264403.P4942621129095151148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269241 (A057723 (n + 1) + A001911 n).toNat

end

end A264403.P4942621129095151148

/-! ## A264403.P17325638056326533262

`A144261(A141214(2*n+1))%A285731(n+2)`
-/

namespace A264403.P17325638056326533262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144261 (A141214 (2 * n + 1)).toNat) (A285731 (n + 2))

end

end A264403.P17325638056326533262

/-! ## A264403.P5442618001808151898

`A118269(11*n*A000040(n+1))`
-/

namespace A264403.P5442618001808151898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118269 ((11 * n : ℤ) * A000040 (n + 1)).toNat

end

end A264403.P5442618001808151898

/-! ## A264403.P12149927869544883975

`A085977(A102702(n)-A054861(n))`
-/

namespace A264403.P12149927869544883975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085977 (A102702 n - A054861 n).toNat

end

end A264403.P12149927869544883975

/-!
# A264404: Triangle read by rows: T(n,k) is the number of partitions of n in which the sum of the parts of multiplicity greater than 1 is k (0<=k). For example, in the partition [3,2,2,1,1,1] the sum k is 2 + 1 = 3.

The programs for A264404, there is no canonical definition to state claims against.
-/

/-! ## A264404.P9999080524552609354

`A127321(p?[A259361(A050165(n))])`
-/

namespace A264404.P9999080524552609354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A050165 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A264404.P9999080524552609354

/-! ## A264404.P496413035280844857

`gcd(A004523(n), A046951(A038754(n)))`
-/

namespace A264404.P496413035280844857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004523 n) (A046951 (A038754 n).toNat)

end

end A264404.P496413035280844857

/-! ## A264404.P10424173058052032552

`gcd(A008621(n), A226046(A008706(n)))`
-/

namespace A264404.P10424173058052032552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008621 n) (A226046 (A008706 n).toNat)

end

end A264404.P10424173058052032552

/-! ## A264404.P7184065058684826275

`A007302(A290569(2*n))`
-/

namespace A264404.P7184065058684826275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A290569 (2 * n)).toNat

end

end A264404.P7184065058684826275

/-! ## A264404.P13839043601018768736

`A043562(Δ[∏[A010882(n)]])`
-/

namespace A264404.P13839043601018768736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (f1 (n + 1) - f1 n).toNat

end

end A264404.P13839043601018768736

/-!
# A264405: Triangle read by rows: T(n,k) is the number of integer partitions of n having k repeated parts (each occurrence is counted).

The programs for A264405, there is no canonical definition to state claims against.
-/

/-! ## A264405.P10985235209294172344

`A328891(A269695(n))`
-/

namespace A264405.P10985235209294172344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328891 (A269695 n).toNat

end

end A264405.P10985235209294172344

/-! ## A264405.P3767645652860394212

`A257217(A160797(n+1))`
-/

namespace A264405.P3767645652860394212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257217 (A160797 (n + 1)).toNat

end

end A264405.P3767645652860394212

/-! ## A264405.P5749564345733632055

`A144092(A323651(n+1))`
-/

namespace A264405.P5749564345733632055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144092 (A323651 (n + 1)).toNat

end

end A264405.P5749564345733632055

/-! ## A264405.P3398992479157488505

`A302354(8*A071044(n))`
-/

namespace A264405.P3398992479157488505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (8 * A071044 n).toNat

end

end A264405.P3398992479157488505

/-! ## A264405.P14868598161747530015

`A048853(3*n+2)%A334028(A334015(n+1))`
-/

namespace A264405.P14868598161747530015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048853 (3 * n + 2)) (A334028 (A334015 (n + 1)).toNat)

end

end A264405.P14868598161747530015

/-!
# A264406: Smallest palindrome of each distinct decimal type (A002113) in increasing order.

The programs for A264406, there is no canonical definition to state claims against.
-/

/-! ## A264406.P18225478895815290051

`∩[A002113(n+1), A266946(n+1)]`
-/

namespace A264406.P18225478895815290051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264406.P18225478895815290051

/-! ## A264406.P1874587907940322685

`∩[A029950(n+1), A266946(n+1)]`
-/

namespace A264406.P1874587907940322685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264406.P1874587907940322685

/-! ## A264406.P5928830937447332236

`∩[A043036(n+1), A266946(n+1)]`
-/

namespace A264406.P5928830937447332236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264406.P5928830937447332236

/-! ## A264406.P4664559790778206429

`∩[A083160(n+1), A266946(n+1)]`
-/

namespace A264406.P4664559790778206429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264406.P4664559790778206429

/-! ## A264406.P5734650031370717894

`∩[A095984(n+1), A266946(n+1)]`
-/

namespace A264406.P5734650031370717894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264406.P5734650031370717894

/-!
# A264407: E.g.f. satisfies: A(x) = 1/(1-x)^(A(x)^2).

The programs for A264407, there is no canonical definition to state claims against.
-/

/-! ## A264407.P11669713149507388109

`A247523(n!²)`
-/

namespace A264407.P11669713149507388109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247523 (Nat.factorial n ^ 2)

end

end A264407.P11669713149507388109

/-!
# A264408: E.g.f. satisfies: A(x) = 1/(1-x)^(A(x)^3).

The programs for A264408, there is no canonical definition to state claims against.
-/

/-! ## A264408.P14838524403149421135

`A023446(or(4, A364985(n)))`
-/

namespace A264408.P14838524403149421135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (Int.lor 4 (A364985 n)).toNat

end

end A264408.P14838524403149421135

/-!
# A264409: a(n) = Sum_{k=0..n} binomial(n, k) * binomial((n-k)*k, k).

The programs for A264409, there is no canonical definition to state claims against.
-/

/-! ## A264409.P17762893839862694493

`A362965(A191277(n))+A006765(n+1)`
-/

namespace A264409.P17762893839862694493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362965 (A191277 n).toNat + A006765 (n + 1)

end

end A264409.P17762893839862694493

/-!
# A264411: a(n) = binomial(2*n^2, n).

The programs for A264411, the canonical program `A264411.P9331486582402048830` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264411 has offset 0).

The definition of A264411 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n², n)` (program `A264411.P9331486582402048830`, by `A264411.P9331486582402048830.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A264411.P9331486582402048830

`C(2*n², n)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264411

/-- `C(2*n², n)` -/
def P9331486582402048830.Spec : Prop :=
  ∀ n, (P9331486582402048830.a n : ℤ) = A264411 n

theorem P9331486582402048830.correct : P9331486582402048830.Spec := by
  intro n
  simp only [A264411]

end A264411

/-! ## A264411.P3300538144277704010

`abs(1-C(n*2*n, n))+1`
-/

namespace A264411.P3300538144277704010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.choose (n * (2 * n)) n : ℤ)| + 1

end

end A264411.P3300538144277704010

namespace A264411

/-- `abs(1-C(n*2*n, n))+1` -/
def P3300538144277704010.Spec : Prop :=
  ∀ n, P3300538144277704010.a n = A264411 n

end A264411

/-! ## A264411.P13798594486343137895

`C(2, n+3)+C(n*2*n, n)`
-/

namespace A264411.P13798594486343137895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 3) + Nat.choose (n * (2 * n)) n

end

end A264411.P13798594486343137895

namespace A264411

/-- `C(2, n+3)+C(n*2*n, n)` -/
def P13798594486343137895.Spec : Prop :=
  ∀ n, (P13798594486343137895.a n : ℤ) = A264411 n

end A264411

/-! ## A264411.P7474077677174185926

`C(n*2*n, n)-and(1, 2*n)`
-/

namespace A264411.P7474077677174185926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n * (2 * n)) n : ℤ) - (Nat.land 1 (2 * n) : ℤ)

end

end A264411.P7474077677174185926

namespace A264411

/-- `C(n*2*n, n)-and(1, 2*n)` -/
def P7474077677174185926.Spec : Prop :=
  ∀ n, P7474077677174185926.a n = A264411 n

theorem P7474077677174185926.correct : P7474077677174185926.Spec := by
  intro n
  simp only [A264411, Nat.add_sub_cancel, A264411.P7474077677174185926.a, A264411.P9331486582402048830.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A264411

/-! ## A264411.P6018985277813825787

`lcm(gcd(2, n-1), C(n*2*n, n))`
-/

namespace A264411.P6018985277813825787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Int.gcd 2 ((n : ℤ) - 1)) (Nat.choose (n * (2 * n)) n)

end

end A264411.P6018985277813825787

namespace A264411

/-- `lcm(gcd(2, n-1), C(n*2*n, n))` -/
def P6018985277813825787.Spec : Prop :=
  ∀ n, (P6018985277813825787.a n : ℤ) = A264411 n

end A264411

/-!
# A264412: G.f. A(x) satisfies: A(x)^2 = A(x^2) + 6*x.

The programs for A264412, there is no canonical definition to state claims against.
-/

/-! ## A264412.P3885401339845798427

`A292511(A097662(n)+A011626(n))`
-/

namespace A264412.P3885401339845798427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292511 (A097662 n + A011626 n).toNat

end

end A264412.P3885401339845798427

/-!
# A264416: G.f.: Sum_{n>=0} x^n * (d/dx)^(n^2) x^(n^2) * (1+x)^n / (n^2)!, where (d/dx)^k denotes the k-th derivative operator.

The programs for A264416, there is no canonical definition to state claims against.
-/

/-! ## A264416.P3380278543594131644

`A130446(A006605(n))`
-/

namespace A264416.P3380278543594131644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A006605 n).toNat

end

end A264416.P3380278543594131644

/-!
# A264417: Number of (n+1)X(2+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,1 2,2 1,0 -1,2 -2,-1 or -1,-1.

The programs for A264417, there is no canonical definition to state claims against.
-/

/-! ## A264417.P17286764070092036411

`A264422(∑[n+2])`
-/

namespace A264417.P17286764070092036411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264417.P17286764070092036411

/-! ## A264417.P4759496866204616797

`record[A264422(Δ[A003453(n+5)])]`
-/

namespace A264417.P4759496866204616797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264417.P4759496866204616797

/-! ## A264417.P3069649587934562173

`record[A264422(lt[A008292(n+1), n])]`
-/

namespace A264417.P3069649587934562173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264417.P3069649587934562173

/-! ## A264417.P15679370429541836738

`record[A264422(lt[A264422(n+1), n])]`
-/

namespace A264417.P15679370429541836738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264417.P15679370429541836738

/-! ## A264417.P11955273030765203052

`record[A010054(n+3)*A264422(n+2)]`
-/

namespace A264417.P11955273030765203052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A264422 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264417.P11955273030765203052

/-!
# A264418: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,1 2,2 1,0 -1,2 -2,-1 or -1,-1.

The programs for A264418, there is no canonical definition to state claims against.
-/

/-! ## A264418.P15888597476709538041

`A264422(∑[n+3]+1)`
-/

namespace A264418.P15888597476709538041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264418.P15888597476709538041

/-! ## A264418.P3623008423340335549

`record[A023531(n+2)*A264422(n+1)]`
-/

namespace A264418.P3623008423340335549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 2) * A264422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264418.P3623008423340335549

/-! ## A264418.P8806735566013554873

`record[A010054(n+3)*A264422(n+1)]`
-/

namespace A264418.P8806735566013554873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A264422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264418.P8806735566013554873

/-! ## A264418.P4682616358940906869

`A264422(A034856(n+2))+A025437(n)`
-/

namespace A264418.P4682616358940906869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (A034856 (n + 2)).toNat + A025437 n

end

end A264418.P4682616358940906869

/-! ## A264418.P13914701798612248218

`A264422(A034856(n+2))+A000007(n+1)`
-/

namespace A264418.P13914701798612248218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A264418.P13914701798612248218

/-!
# A264419: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,1 2,2 1,0 -1,2 -2,-1 or -1,-1.

The programs for A264419, there is no canonical definition to state claims against.
-/

/-! ## A264419.P10929307092317938390

`A264422(Δ[n²]+∑[n+2]+4)`
-/

namespace A264419.P10929307092317938390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A264419.P10929307092317938390

/-! ## A264419.P16962915674278196270

`ceil(acot(n))*A264422(A052905(n+1)+2)`
-/

namespace A264419.P16962915674278196270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A264422 (A052905 (n + 1) + 2).toNat

end

end A264419.P16962915674278196270

/-!
# A264420: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,1 2,2 1,0 -1,2 -2,-1 or -1,-1.

The programs for A264420, there is no canonical definition to state claims against.
-/

/-! ## A264420.P5150159497018493755

`A264422(∑[n+5]+6)`
-/

namespace A264420.P5150159497018493755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A264420.P5150159497018493755

/-!
# A264421: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change 0,1 2,2 1,0 -1,2 -2,-1 or -1,-1.

The programs for A264421, there is no canonical definition to state claims against.
-/

/-! ## A264421.P12716454169758481868

`A264422(A052905(n+3))`
-/

namespace A264421.P12716454169758481868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (A052905 (n + 3)).toNat

end

end A264421.P12716454169758481868

/-! ## A264421.P13697239904756734569

`A264422(eq[3, A219347(n)])`
-/

namespace A264421.P13697239904756734569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264421.P13697239904756734569

/-! ## A264421.P15026561573698119996

`A264422(eq[5, A152157(n)])`
-/

namespace A264421.P15026561573698119996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264421.P15026561573698119996

/-!
# A264423: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,1 2,2 1,0 -1,2 -2,-1 or -1,-1.

The programs for A264423, there is no canonical definition to state claims against.
-/

/-! ## A264423.P18295460563913770553

`A264422(∑[n+1]+2)`
-/

namespace A264423.P18295460563913770553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264423.P18295460563913770553

/-! ## A264423.P13191337872228215282

`record[A127247(n)*A264422(n+3)]`
-/

namespace A264423.P13191337872228215282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127247 n * A264422 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264423.P13191337872228215282

/-! ## A264423.P1027637006869276604

`record[gcd(A097230(n), A264422(n+1))]`
-/

namespace A264423.P1027637006869276604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A264422 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264423.P1027637006869276604

/-! ## A264423.P16304250586079756734

`record[gcd(A264422(n+2), A264428(n))]`
-/

namespace A264423.P16304250586079756734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A264422 (n + 2)) (A264428 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264423.P16304250586079756734

/-! ## A264423.P14581979437622881939

`record[A264422(n+3)/A008292(n+2)]`
-/

namespace A264423.P14581979437622881939
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264422 (n + 3) : ℚ) / (A008292 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264423.P14581979437622881939

/-!
# A264424: Number of (3+1) X (n+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,1 2,2 1,0 -1,2 -2,-1 or -1,-1.

The programs for A264424, there is no canonical definition to state claims against.
-/

/-! ## A264424.P14909489358066258338

`A264422(∑[n+2]+4)`
-/

namespace A264424.P14909489358066258338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264424.P14909489358066258338

/-! ## A264424.P11792054677114606960

`record[A264422(A152950(n+1))]`
-/

namespace A264424.P11792054677114606960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (A152950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264424.P11792054677114606960

/-! ## A264424.P1133077627180472391

`record[gcd(A262495(n), A264422(n+3))]`
-/

namespace A264424.P1133077627180472391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A262495 n) (A264422 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264424.P1133077627180472391

/-! ## A264424.P17135267343145688684

`A264422(A167614(n+1))+A025437(n)`
-/

namespace A264424.P17135267343145688684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (A167614 (n + 1)).toNat + A025437 n

end

end A264424.P17135267343145688684

/-! ## A264424.P14333140362133849196

`A264422(A167614(n+1))+A025469(n)`
-/

namespace A264424.P14333140362133849196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (A167614 (n + 1)).toNat + A025469 n

end

end A264424.P14333140362133849196

/-!
# A264425: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,1 2,2 1,0 -1,2 -2,-1 or -1,-1.

The programs for A264425, there is no canonical definition to state claims against.
-/

/-! ## A264425.P17277252114064256279

`A264422(A141214(n)+7)`
-/

namespace A264425.P17277252114064256279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (A141214 n + 7).toNat

end

end A264425.P17277252114064256279

/-! ## A264425.P3300890936663486519

`A264422(A052905(n)+9)`
-/

namespace A264425.P3300890936663486519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (A052905 n + 9).toNat

end

end A264425.P3300890936663486519

/-! ## A264425.P11289732382972153533

`A264422(A055999(n)+10)`
-/

namespace A264425.P11289732382972153533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (A055999 n + 10).toNat

end

end A264425.P11289732382972153533

/-! ## A264425.P12523939402526257743

`A264422(eq[5, A066657(n)])`
-/

namespace A264425.P12523939402526257743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264425.P12523939402526257743

/-! ## A264425.P15422918793961830734

`A264422(A167614(n+2)+1)`
-/

namespace A264425.P15422918793961830734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (A167614 (n + 2) + 1).toNat

end

end A264425.P15422918793961830734

/-!
# A264426: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,1 2,2 1,0 -1,2 -2,-1 or -1,-1.

The programs for A264426, there is no canonical definition to state claims against.
-/

/-! ## A264426.P18430363212393167941

`A264422(A155212(n)+13)`
-/

namespace A264426.P18430363212393167941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (A155212 n + 13).toNat

end

end A264426.P18430363212393167941

/-! ## A264426.P11126806748949091625

`A264422(A056000(n)+15)`
-/

namespace A264426.P11126806748949091625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (A056000 n + 15).toNat

end

end A264426.P11126806748949091625

/-! ## A264426.P2445132447531900752

`A264422(eq[7, A066657(n)])`
-/

namespace A264426.P2445132447531900752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264426.P2445132447531900752

/-! ## A264426.P8857544319956690827

`A264422(A167614(n+3)+2)`
-/

namespace A264426.P8857544319956690827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (A167614 (n + 3) + 2).toNat

end

end A264426.P8857544319956690827

/-! ## A264426.P1485600473765934250

`A264422(A145018(n+5)+1)`
-/

namespace A264426.P1485600473765934250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (A145018 (n + 5) + 1).toNat

end

end A264426.P1485600473765934250

/-!
# A264427: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having directed index change 0,1 2,2 1,0 -1,2 -2,-1 or -1,-1.

The programs for A264427, there is no canonical definition to state claims against.
-/

/-! ## A264427.P1644138351372642301

`A264422(A166136(n+4))`
-/

namespace A264427.P1644138351372642301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (A166136 (n + 4)).toNat

end

end A264427.P1644138351372642301

/-! ## A264427.P6729474321858899850

`A264422(A056115(n)+21)`
-/

namespace A264427.P6729474321858899850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (A056115 n + 21).toNat

end

end A264427.P6729474321858899850

/-! ## A264427.P12851357433899294

`A264422(Δ[A264443(n)]+10)`
-/

namespace A264427.P12851357433899294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (f1 (n + 1) - f1 n + 10).toNat

end

end A264427.P12851357433899294

/-! ## A264427.P611044299007673562

`A264422(A167499(n+4)+1)`
-/

namespace A264427.P611044299007673562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264422 (A167499 (n + 4) + 1).toNat

end

end A264427.P611044299007673562

/-!
# A264428: Triangle read by rows, Bell transform of Bell numbers.

The programs for A264428, there is no canonical definition to state claims against.
-/

/-! ## A264428.P5674802884368167598

`A352366(n)+A016389(A060637(n))`
-/

namespace A264428.P5674802884368167598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352366 n + A016389 (A060637 n).toNat

end

end A264428.P5674802884368167598

/-! ## A264428.P10995769302124186045

`A352366(n)+A184964(A008550(n))`
-/

namespace A264428.P10995769302124186045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352366 n + A184964 (A008550 n).toNat

end

end A264428.P10995769302124186045

/-! ## A264428.P13859561128670497919

`A352366(n)+A185274(A055807(n))`
-/

namespace A264428.P13859561128670497919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352366 n + A185274 (A055807 n).toNat

end

end A264428.P13859561128670497919

/-! ## A264428.P9205741093586146062

`A352366(n)+A180649(A084938(n))`
-/

namespace A264428.P9205741093586146062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352366 n + A180649 (A084938 n).toNat

end

end A264428.P9205741093586146062

/-! ## A264428.P16791739300874661191

`A352366(n)+A225099(A352366(n+2))`
-/

namespace A264428.P16791739300874661191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352366 n + A225099 (A352366 (n + 2)).toNat

end

end A264428.P16791739300874661191

/-!
# A264429: Triangle read by rows, inverse Bell transform of Bell numbers.

The programs for A264429, there is no canonical definition to state claims against.
-/

/-! ## A264429.P2555916809108481121

`A264434(lcm(n, A008550(n)))`
-/

namespace A264429.P2555916809108481121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264434 (Int.lcm (n : ℤ) (A008550 n))

end

end A264429.P2555916809108481121

/-! ## A264429.P16744324415544702459

`A264434(C(n, A322127(n+1)))`
-/

namespace A264429.P16744324415544702459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264434 (Nat.choose n (A322127 (n + 1)).toNat)

end

end A264429.P16744324415544702459

/-! ## A264429.P14435824442316147932

`A264431(n)+A083892(A001644(n))`
-/

namespace A264429.P14435824442316147932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264431 n + A083892 (A001644 n).toNat

end

end A264429.P14435824442316147932

/-! ## A264429.P3220812583628843564

`A264434(n)+A083892(A001644(n))`
-/

namespace A264429.P3220812583628843564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264434 n + A083892 (A001644 n).toNat

end

end A264429.P3220812583628843564

/-! ## A264429.P5528851307053140243

`A264434(n)+A129184(A020743(n))`
-/

namespace A264429.P5528851307053140243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264434 n + A129184 (A020743 n).toNat

end

end A264429.P5528851307053140243

/-!
# A264430: Triangle read by rows, Bell transform of second order Bell numbers (A187761).

The programs for A264430, there is no canonical definition to state claims against.
-/

/-! ## A264430.P11490629742783195117

`A118759(A132393(n))-char[(8*n+4)²]`
-/

namespace A264430.P11490629742783195117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n + 4) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A132393 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264430.P11490629742783195117

/-! ## A264430.P727819387191908796

`A122304(A122304(A132393(n)))`
-/

namespace A264430.P727819387191908796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122304 (A122304 (A132393 n).toNat).toNat

end

end A264430.P727819387191908796

/-! ## A264430.P12470168811858135362

`A132393(n)+A016389(A181332(n))`
-/

namespace A264430.P12470168811858135362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n + A016389 (A181332 n).toNat

end

end A264430.P12470168811858135362

/-! ## A264430.P12475038552566360900

`A264433(n)+A016389(A181332(n))`
-/

namespace A264430.P12475038552566360900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264433 n + A016389 (A181332 n).toNat

end

end A264430.P12475038552566360900

/-! ## A264430.P1849577532206997880

`A132393(n)-A016389(A060637(n))`
-/

namespace A264430.P1849577532206997880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n - A016389 (A060637 n).toNat

end

end A264430.P1849577532206997880

/-!
# A264431: Triangle read by rows, inverse Bell transform of second order Bell numbers (A187761).

The programs for A264431, there is no canonical definition to state claims against.
-/

/-! ## A264431.P101713008014098405

`A264434(n)+A016389(A060637(n))`
-/

namespace A264431.P101713008014098405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264434 n + A016389 (A060637 n).toNat

end

end A264431.P101713008014098405

/-! ## A264431.P1504261132620325652

`A264434(n)+A184964(A008550(n))`
-/

namespace A264431.P1504261132620325652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264434 n + A184964 (A008550 n).toNat

end

end A264431.P1504261132620325652

/-! ## A264431.P6202764682204027138

`A264434(n)+A185274(A055807(n))`
-/

namespace A264431.P6202764682204027138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264434 n + A185274 (A055807 n).toNat

end

end A264431.P6202764682204027138

/-! ## A264431.P7922068494039995327

`A264434(n)+A180649(A084938(n))`
-/

namespace A264431.P7922068494039995327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264434 n + A180649 (A084938 n).toNat

end

end A264431.P7922068494039995327

/-! ## A264431.P10548886382359839466

`A264434(A055645(n))`
-/

namespace A264431.P10548886382359839466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264434 (A055645 n).toNat

end

end A264431.P10548886382359839466

/-!
# A264432: Third-order Bell numbers.

The programs for A264432, there is no canonical definition to state claims against.
-/

/-! ## A264432.P1438901910849034010

`A265312(∑[n+3]+n+3)`
-/

namespace A264432.P1438901910849034010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265312 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A264432.P1438901910849034010

/-! ## A264432.P17023842077204092922

`A060576(n+2)*A265312(A046691(n+2))`
-/

namespace A264432.P17023842077204092922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 2) * A265312 (A046691 (n + 2)).toNat

end

end A264432.P17023842077204092922

/-! ## A264432.P10764517534359417976

`A014963(6*(n+2))*A265312(A046691(n+2))`
-/

namespace A264432.P10764517534359417976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * A265312 (A046691 (n + 2)).toNat

end

end A264432.P10764517534359417976

/-! ## A264432.P3515941490470460324

`A265312(A046691(n+2))/A014963(A008458(n))`
-/

namespace A264432.P3515941490470460324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265312 (A046691 (n + 2)).toNat : ℚ) / (A014963 (A008458 n).toNat : ℚ)

end

end A264432.P3515941490470460324

/-! ## A264432.P2769858243968418353

`A265312(A046691(n+2))^A014963(A001157(n+1))`
-/

namespace A264432.P2769858243968418353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265312 (A046691 (n + 2)).toNat : ℚ) ^ (A014963 (A001157 (n + 1)).toNat : ℤ)

end

end A264432.P2769858243968418353

/-! ## A264432.P16896982470007342465

`A179455(A077169(n)-1)`
-/

namespace A264432.P16896982470007342465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179455 (A077169 n - 1).toNat

end

end A264432.P16896982470007342465

/-!
# A264433: Triangle read by rows, Bell transform of the third-order Bell numbers, T(n,k) for n >= 0 and 0 <= k <= n.

The programs for A264433, there is no canonical definition to state claims against.
-/

/-! ## A264433.P10071669923129449603

`A132393(n)-A016389(A213275(n))`
-/

namespace A264433.P10071669923129449603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n - A016389 (A213275 n).toNat

end

end A264433.P10071669923129449603

/-! ## A264433.P5623673977770297512

`A132393(n)-A185238(A055830(n))`
-/

namespace A264433.P5623673977770297512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n - A185238 (A055830 n).toNat

end

end A264433.P5623673977770297512

/-! ## A264433.P7956842760464806227

`A132393(n)-A025469(A270467(n))`
-/

namespace A264433.P7956842760464806227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n - A025469 (A270467 n).toNat

end

end A264433.P7956842760464806227

/-! ## A264433.P4104728629708204490

`A132393(n)-A374092(A008864(n+1))`
-/

namespace A264433.P4104728629708204490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n - A374092 (A008864 (n + 1)).toNat

end

end A264433.P4104728629708204490

/-! ## A264433.P17792841679140930141

`abs(A335520(3*n+4)+A048994(n))`
-/

namespace A264433.P17792841679140930141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A335520 (3 * n + 4) + A048994 n|

end

end A264433.P17792841679140930141

/-!
# A264434: Triangle read by rows, inverse Bell transform of the third-order Bell numbers, T(n,k) for n >= 0 and 0 <= k <= n.

The programs for A264434, there is no canonical definition to state claims against.
-/

/-! ## A264434.P13259247940059583853

`(A097807(n)+A011744(A186746(n)))*A048993(n)`
-/

namespace A264434.P13259247940059583853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097807 n + A011744 (A186746 n).toNat) * A048993 n

end

end A264434.P13259247940059583853

/-! ## A264434.P16408951684563695212

`(A097807(n)+A011738(A198316(n)))*A048993(n)`
-/

namespace A264434.P16408951684563695212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097807 n + A011738 (A198316 n).toNat) * A048993 n

end

end A264434.P16408951684563695212

/-! ## A264434.P5372534110795856433

`A048993(n-A011744(A186746(n)))*A097807(n)`
-/

namespace A264434.P5372534110795856433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 ((n : ℤ) - A011744 (A186746 n).toNat).toNat * A097807 n

end

end A264434.P5372534110795856433

/-! ## A264434.P14221095822740001540

`A048993(n-A011738(A198316(n)))*A097807(n)`
-/

namespace A264434.P14221095822740001540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 ((n : ℤ) - A011738 (A198316 n).toNat).toNat * A097807 n

end

end A264434.P14221095822740001540

/-! ## A264434.P7268556342947884891

`A264431(n)-A025469(A084546(2*n+3))`
-/

namespace A264434.P7268556342947884891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264431 n - A025469 (A084546 (2 * n + 3)).toNat

end

end A264434.P7268556342947884891

/-!
# A264435: Triangle read by rows, Bell transform of the complementary Bell numbers (A000587).

The programs for A264435, there is no canonical definition to state claims against.
-/

/-! ## A264435.P12186965793006423455

`and(A144633(n), A256697(A269946(n)))`
-/

namespace A264435.P12186965793006423455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144633 n) (A256697 (A269946 n).toNat)

end

end A264435.P12186965793006423455

/-! ## A264435.P1708180444177675546

`A014963(n+1)%2*A256697(A269946(n))`
-/

namespace A264435.P1708180444177675546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (n + 1)) 2 * A256697 (A269946 n).toNat

end

end A264435.P1708180444177675546

/-! ## A264435.P4535795767802664

`A256697(A269946(n))%A000040(A002260(n+1))`
-/

namespace A264435.P4535795767802664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256697 (A269946 n).toNat) (A000040 (A002260 (n + 1)).toNat)

end

end A264435.P4535795767802664

/-! ## A264435.P16102919624753729190

`A309103(A264954(n+2))`
-/

namespace A264435.P16102919624753729190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309103 (A264954 (n + 2)).toNat

end

end A264435.P16102919624753729190

/-! ## A264435.P7874867095719182839

`A319933(A056940(n)-A120730(n))`
-/

namespace A264435.P7874867095719182839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319933 (A056940 n - A120730 n).toNat

end

end A264435.P7874867095719182839

/-!
# A264436: Triangle read by rows, inverse Bell transform of the complementary Bell numbers (A000587); T(n,k) for n>=0 and 0<=k<=n.

The programs for A264436, there is no canonical definition to state claims against.
-/

/-! ## A264436.P1196313073576220385

`A003986(A084938(n)^3)`
-/

namespace A264436.P1196313073576220385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A084938 n ^ 3).toNat

end

end A264436.P1196313073576220385

/-! ## A264436.P13008422912985081559

`A003986(A130167(n)^3)`
-/

namespace A264436.P13008422912985081559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A130167 n ^ 3).toNat

end

end A264436.P13008422912985081559

/-! ## A264436.P15409579735134437323

`A000196(A269947(n)+A034852(n))`
-/

namespace A264436.P15409579735134437323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A269947 n + A034852 n).toNat

end

end A264436.P15409579735134437323

/-! ## A264436.P9433681941733928968

`A264428(n)+A010418(A069777(n))`
-/

namespace A264436.P9433681941733928968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264428 n + A010418 (A069777 n).toNat

end

end A264436.P9433681941733928968

/-! ## A264436.P3580941550919193027

`A000196(A293162(n)+A269947(n))`
-/

namespace A264436.P3580941550919193027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A293162 n + A269947 n).toNat

end

end A264436.P3580941550919193027

/-!
# A264437: a(n) = Bernoulli(n, 1)*Pochhammer(n+1, n).

The programs for A264437, there is no canonical definition to state claims against.
-/

/-! ## A264437.P13993183906325949593

`A000108(n)*A129825(n+1)`
-/

namespace A264437.P13993183906325949593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A129825 (n + 1)

end

end A264437.P13993183906325949593

/-! ## A264437.P5117385893513753417

`A120588(n+1)*A129825(n+1)`
-/

namespace A264437.P5117385893513753417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) * A129825 (n + 1)

end

end A264437.P5117385893513753417

/-! ## A264437.P4374125862809479112

`A028303(2*n)*A129825(n+1)`
-/

namespace A264437.P4374125862809479112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n) * A129825 (n + 1)

end

end A264437.P4374125862809479112

/-! ## A264437.P17781475057060144883

`∑{d}[n+1, A034742(#)]*A129825(n+1)`
-/

namespace A264437.P17781475057060144883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A034742 d) * A129825 (n + 1)

end

end A264437.P17781475057060144883

/-! ## A264437.P14229221145306859057

`A000108(n)*A080779(A000217(n))`
-/

namespace A264437.P14229221145306859057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A080779 (A000217 n).toNat

end

end A264437.P14229221145306859057

/-!
# A264438: One-half of the x member of the positive proper fundamental solution (x = x2(n), y = y2(n)) of the second class for the Pell equation x^2 - D(n)*y^2 = +8 for even D(n) = A264354(n).

The programs for A264438, there is no canonical definition to state claims against.
-/

/-! ## A264438.P7131783046327271174

`ceil(sqrt(A261246(n+1))*A264439(n+1))`
-/

namespace A264438.P7131783046327271174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A261246 (n + 1) : ℝ) * (A264439 (n + 1) : ℝ)⌉

end

end A264438.P7131783046327271174

/-! ## A264438.P11035088216862068910

`ceil(sqrt(A264354(n+1)/4)*A264439(n+1))`
-/

namespace A264438.P11035088216862068910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A264354 (n + 1) : ℚ) / 4 : ℝ) * (A264439 (n + 1) : ℝ)⌉

end

end A264438.P11035088216862068910

/-!
# A264439: The y member of the positive proper fundamental solution (x = x2(n), y = y2(n)) of the second class for the Pell equation x^2 - D(n)*y^2 = +8 for even D(n) = A264354(n).

The programs for A264439, there is no canonical definition to state claims against.
-/

/-! ## A264439.P6457597236204976808

`floor(A264438(n+1)/sqrt(A261246(n+1)))`
-/

namespace A264439.P6457597236204976808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A264438 (n + 1) : ℝ) / Real.sqrt (A261246 (n + 1) : ℝ)⌋

end

end A264439.P6457597236204976808

/-! ## A264439.P1001231771941190706

`floor(A264438(n+1)/sqrt(A264354(n+1)/4))`
-/

namespace A264439.P1001231771941190706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A264438 (n + 1) : ℝ) / Real.sqrt ((A264354 (n + 1) : ℚ) / 4 : ℝ)⌋

end

end A264439.P1001231771941190706

/-!
# A264440: Row lengths of the irregular triangle A137510 (number of divisors d of n with 1 < d < n, or 0 if no such d exists).

The programs for A264440, the canonical program `A264440.P13852650709322467696` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264440 has offset 1).

The definition of A264440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264440.P6388725674102755793

`floor(log2(A069626(n+1)+1))`
-/

namespace A264440.P6388725674102755793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A069626 (n + 1) + 1).toNat

end

end A264440.P6388725674102755793

namespace A264440

/-- `floor(log2(A069626(n+1)+1))` -/
def P6388725674102755793.Spec : Prop :=
  ∀ n, (P6388725674102755793.a n : ℤ) = A264440 (n + 1)

end A264440

/-! ## A264440.P2048736770288729472

`round(sqrt(A070824(n+1)²+1))`
-/

namespace A264440.P2048736770288729472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A070824 (n + 1) ^ 2 + 1 : ℝ))

end

end A264440.P2048736770288729472

namespace A264440

/-- `round(sqrt(A070824(n+1)²+1))` -/
def P2048736770288729472.Spec : Prop :=
  ∀ n, P2048736770288729472.a n = A264440 (n + 1)

end A264440

/-! ## A264440.P17070119043991907856

`round(sqrt((2-A000005(n+1))²+1))`
-/

namespace A264440.P17070119043991907856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((2 - A000005 (n + 1)) ^ 2 + 1 : ℝ))

end

end A264440.P17070119043991907856

namespace A264440

/-- `round(sqrt((2-A000005(n+1))²+1))` -/
def P17070119043991907856.Spec : Prop :=
  ∀ n, P17070119043991907856.a n = A264440 (n + 1)

end A264440

/-! ## A264440.P16519055133473651405

`A028310(Δ[A325459(n)])`
-/

namespace A264440.P16519055133473651405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A264440.P16519055133473651405

namespace A264440

/-- `A028310(Δ[A325459(n)])` -/
def P16519055133473651405.Spec : Prop :=
  ∀ n, P16519055133473651405.a n = A264440 (n + 1)

end A264440

/-! ## A264440.P13852650709322467696

`A028310(A070824(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A264440

/-- `A028310(A070824(n+1))` -/
def P13852650709322467696.Spec : Prop :=
  ∀ n, P13852650709322467696.a n = A264440 (n + 1)

theorem P13852650709322467696.correct : P13852650709322467696.Spec := by
  intro n
  simp only [A264440, Nat.add_sub_cancel]

end A264440

/-! ## A264440.P15856134187673313602

`A028310(A325765(n)-1)`
-/

namespace A264440.P15856134187673313602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A325765 n - 1).toNat

end

end A264440.P15856134187673313602

namespace A264440

/-- `A028310(A325765(n)-1)` -/
def P15856134187673313602.Spec : Prop :=
  ∀ n, P15856134187673313602.a n = A264440 (n + 1)

end A264440

/-! ## A264440.P5367693954211189296

`A289207(A032741(n+1))+1`
-/

namespace A264440.P5367693954211189296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A032741 (n + 1)).toNat + 1

end

end A264440.P5367693954211189296

namespace A264440

/-- `A289207(A032741(n+1))+1` -/
def P5367693954211189296.Spec : Prop :=
  ∀ n, P5367693954211189296.a n = A264440 (n + 1)

end A264440

/-! ## A264440.P17128230629344219537

`A233583(A000005(n+1))-1`
-/

namespace A264440.P17128230629344219537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A000005 (n + 1)).toNat - 1

end

end A264440.P17128230629344219537

namespace A264440

/-- `A233583(A000005(n+1))-1` -/
def P17128230629344219537.Spec : Prop :=
  ∀ n, P17128230629344219537.a n = A264440 (n + 1)

end A264440

/-! ## A264440.P2415578866784315190

`A065033(2*(A325765(n)-1))`
-/

namespace A264440.P2415578866784315190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * (A325765 n - 1)).toNat

end

end A264440.P2415578866784315190

namespace A264440

/-- `A065033(2*(A325765(n)-1))` -/
def P2415578866784315190.Spec : Prop :=
  ∀ n, P2415578866784315190.a n = A264440 (n + 1)

end A264440

/-! ## A264440.P8795184289185826828

`A325765(n)-A066247(n+1)`
-/

namespace A264440.P8795184289185826828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n - A066247 (n + 1)

end

end A264440.P8795184289185826828

namespace A264440

/-- `A325765(n)-A066247(n+1)` -/
def P8795184289185826828.Spec : Prop :=
  ∀ n, P8795184289185826828.a n = A264440 (n + 1)

end A264440

/-! ## A264440.P13189889822805882515

`A028310(abs(2-Δ[A006218(n)]))`
-/

namespace A264440.P13189889822805882515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 |2 - (f1 (n + 1) - f1 n)|.toNat

end

end A264440.P13189889822805882515

namespace A264440

/-- `A028310(abs(2-Δ[A006218(n)]))` -/
def P13189889822805882515.Spec : Prop :=
  ∀ n, P13189889822805882515.a n = A264440 (n + 1)

end A264440

/-! ## A264440.P6366168560439574365

`A028310(abs(2-A000005(n+1)))`
-/

namespace A264440.P6366168560439574365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 |2 - A000005 (n + 1)|.toNat

end

end A264440.P6366168560439574365

namespace A264440

/-- `A028310(abs(2-A000005(n+1)))` -/
def P6366168560439574365.Spec : Prop :=
  ∀ n, P6366168560439574365.a n = A264440 (n + 1)

end A264440

/-! ## A264440.P13547182371623701980

`A137734((2-A000005(n+1))²)`
-/

namespace A264440.P13547182371623701980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 ((2 - A000005 (n + 1)) ^ 2).toNat

end

end A264440.P13547182371623701980

namespace A264440

/-- `A137734((2-A000005(n+1))²)` -/
def P13547182371623701980.Spec : Prop :=
  ∀ n, P13547182371623701980.a n = A264440 (n + 1)

end A264440

/-! ## A264440.P18212835978718813845

`A137735((2-A000005(n+1))²)`
-/

namespace A264440.P18212835978718813845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 ((2 - A000005 (n + 1)) ^ 2).toNat

end

end A264440.P18212835978718813845

namespace A264440

/-- `A137735((2-A000005(n+1))²)` -/
def P18212835978718813845.Spec : Prop :=
  ∀ n, P18212835978718813845.a n = A264440 (n + 1)

end A264440

/-! ## A264440.P7226393902463598050

`A026729(2*A070824(n+1)²)`
-/

namespace A264440.P7226393902463598050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (2 * A070824 (n + 1) ^ 2).toNat

end

end A264440.P7226393902463598050

namespace A264440

/-- `A026729(2*A070824(n+1)²)` -/
def P7226393902463598050.Spec : Prop :=
  ∀ n, P7226393902463598050.a n = A264440 (n + 1)

end A264440

/-! ## A264440.P9041261214276129626

`A289207(A000005(n+1)-1)+1`
-/

namespace A264440.P9041261214276129626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A000005 (n + 1) - 1).toNat + 1

end

end A264440.P9041261214276129626

namespace A264440

/-- `A289207(A000005(n+1)-1)+1` -/
def P9041261214276129626.Spec : Prop :=
  ∀ n, P9041261214276129626.a n = A264440 (n + 1)

end A264440

/-! ## A264440.P14494618746828577856

`A291709(C(A000005(n+1), 2)+2)`
-/

namespace A264440.P14494618746828577856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (Nat.choose (A000005 (n + 1)).toNat 2 + 2)

end

end A264440.P14494618746828577856

namespace A264440

/-- `A291709(C(A000005(n+1), 2)+2)` -/
def P14494618746828577856.Spec : Prop :=
  ∀ n, P14494618746828577856.a n = A264440 (n + 1)

end A264440

/-! ## A264440.P5299034419676436806

`A080339(n+1)+A070824(n+1)`
-/

namespace A264440.P5299034419676436806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1) + A070824 (n + 1)

end

end A264440.P5299034419676436806

namespace A264440

/-- `A080339(n+1)+A070824(n+1)` -/
def P5299034419676436806.Spec : Prop :=
  ∀ n, P5299034419676436806.a n = A264440 (n + 1)

end A264440

/-! ## A264440.P7809704590933489728

`A005451(n+1)%A059292(n+1)`
-/

namespace A264440.P7809704590933489728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005451 (n + 1)) (A059292 (n + 1))

end

end A264440.P7809704590933489728

namespace A264440

/-- `A005451(n+1)%A059292(n+1)` -/
def P7809704590933489728.Spec : Prop :=
  ∀ n, P7809704590933489728.a n = A264440 (n + 1)

end A264440

/-! ## A264440.P13383333090321063071

`A014683(n+1)%A059292(n+1)`
-/

namespace A264440.P13383333090321063071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014683 (n + 1)) (A059292 (n + 1))

end

end A264440.P13383333090321063071

namespace A264440

/-- `A014683(n+1)%A059292(n+1)` -/
def P13383333090321063071.Spec : Prop :=
  ∀ n, P13383333090321063071.a n = A264440 (n + 1)

end A264440

/-!
# A264441: Length of row n of the irregular triangle A133995 (positive integers <= n which are neither divisors of n nor coprime to n).

The programs for A264441, the canonical program `A264441.P18237955088571379997` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264441 has offset 1).

The definition of A264441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264441.P18237955088571379997

`floor(sqrt(A045763(n+1)²+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A264441

/-- `floor(sqrt(A045763(n+1)²+1))` -/
def P18237955088571379997.Spec : Prop :=
  ∀ n, P18237955088571379997.a n = A264441 (n + 1)

theorem P18237955088571379997.correct : P18237955088571379997.Spec := by
  intro n
  simp only [A264441, Nat.add_sub_cancel]

end A264441

/-! ## A264441.P7661697090342390824

`A028310(A045763(n+1))`
-/

namespace A264441.P7661697090342390824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A045763 (n + 1)).toNat

end

end A264441.P7661697090342390824

namespace A264441

/-- `A028310(A045763(n+1))` -/
def P7661697090342390824.Spec : Prop :=
  ∀ n, P7661697090342390824.a n = A264441 (n + 1)

end A264441

/-! ## A264441.P17592288786770273734

`A028310(A062968(n+1)-A000010(n+1))`
-/

namespace A264441.P17592288786770273734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A062968 (n + 1) - A000010 (n + 1)).toNat

end

end A264441.P17592288786770273734

namespace A264441

/-- `A028310(A062968(n+1)-A000010(n+1))` -/
def P17592288786770273734.Spec : Prop :=
  ∀ n, P17592288786770273734.a n = A264441 (n + 1)

end A264441

/-! ## A264441.P7051560668226050996

`A154271(3*A045763(n+1)+1)+A045763(n+1)`
-/

namespace A264441.P7051560668226050996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (3 * A045763 (n + 1) + 1).toNat + A045763 (n + 1)

end

end A264441.P7051560668226050996

namespace A264441

/-- `A154271(3*A045763(n+1)+1)+A045763(n+1)` -/
def P7051560668226050996.Spec : Prop :=
  ∀ n, P7051560668226050996.a n = A264441 (n + 1)

end A264441

/-! ## A264441.P3108465838125454364

`A046640(n+1)-A304118(A001222(A046640(n+1))+1)`
-/

namespace A264441.P3108465838125454364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046640 (n + 1) - A304118 (A001222 (A046640 (n + 1)).toNat + 1).toNat

end

end A264441.P3108465838125454364

namespace A264441

/-- `A046640(n+1)-A304118(A001222(A046640(n+1))+1)` -/
def P3108465838125454364.Spec : Prop :=
  ∀ n, P3108465838125454364.a n = A264441 (n + 1)

end A264441

/-! ## A264441.P13246185945457470709

`or(A045763(n+1), A324822(A002033(n)))`
-/

namespace A264441.P13246185945457470709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A045763 (n + 1)) (A324822 (A002033 n).toNat)

end

end A264441.P13246185945457470709

namespace A264441

/-- `or(A045763(n+1), A324822(A002033(n)))` -/
def P13246185945457470709.Spec : Prop :=
  ∀ n, P13246185945457470709.a n = A264441 (n + 1)

end A264441

/-! ## A264441.P9329793467440043209

`A065033(2*A045763(n+1))`
-/

namespace A264441.P9329793467440043209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A045763 (n + 1)).toNat

end

end A264441.P9329793467440043209

namespace A264441

/-- `A065033(2*A045763(n+1))` -/
def P9329793467440043209.Spec : Prop :=
  ∀ n, P9329793467440043209.a n = A264441 (n + 1)

end A264441

/-! ## A264441.P9550360337439569323

`A123108(2*A045763(n+1))`
-/

namespace A264441.P9550360337439569323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * A045763 (n + 1)).toNat

end

end A264441.P9550360337439569323

namespace A264441

/-- `A123108(2*A045763(n+1))` -/
def P9550360337439569323.Spec : Prop :=
  ∀ n, P9550360337439569323.a n = A264441 (n + 1)

end A264441

/-! ## A264441.P8303036684930878438

`A270010(2*A045763(n+1))+A045763(n+1)`
-/

namespace A264441.P8303036684930878438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270010 (2 * A045763 (n + 1)).toNat + A045763 (n + 1)

end

end A264441.P8303036684930878438

namespace A264441

/-- `A270010(2*A045763(n+1))+A045763(n+1)` -/
def P8303036684930878438.Spec : Prop :=
  ∀ n, P8303036684930878438.a n = A264441 (n + 1)

end A264441

/-! ## A264441.P2542263200959914431

`A154271(A045763(n+1)²+1)+A045763(n+1)`
-/

namespace A264441.P2542263200959914431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (A045763 (n + 1) ^ 2 + 1).toNat + A045763 (n + 1)

end

end A264441.P2542263200959914431

namespace A264441

/-- `A154271(A045763(n+1)²+1)+A045763(n+1)` -/
def P2542263200959914431.Spec : Prop :=
  ∀ n, P2542263200959914431.a n = A264441 (n + 1)

end A264441

/-! ## A264441.P15095737441978831982

`A000194(A045763(n+1)²+1)`
-/

namespace A264441.P15095737441978831982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A045763 (n + 1) ^ 2 + 1).toNat

end

end A264441.P15095737441978831982

namespace A264441

/-- `A000194(A045763(n+1)²+1)` -/
def P15095737441978831982.Spec : Prop :=
  ∀ n, P15095737441978831982.a n = A264441 (n + 1)

end A264441

/-! ## A264441.P18239201254425217364

`A045763(n+1)+A000007(A045763(n+1)²)`
-/

namespace A264441.P18239201254425217364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) + A000007 (A045763 (n + 1) ^ 2).toNat

end

end A264441.P18239201254425217364

namespace A264441

/-- `A045763(n+1)+A000007(A045763(n+1)²)` -/
def P18239201254425217364.Spec : Prop :=
  ∀ n, P18239201254425217364.a n = A264441 (n + 1)

end A264441

/-!
# A264442: Triangle read by rows giving successive states of cellular automaton generated by "Rule 169" initiated with a single ON (black) cell.

The programs for A264442, there is no canonical definition to state claims against.
-/

/-! ## A264442.P10206751906482371657

`A267841(A020703(n+1)-1)`
-/

namespace A264442.P10206751906482371657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267841 (A020703 (n + 1) - 1).toNat

end

end A264442.P10206751906482371657

/-! ## A264442.P16327097177482975634

`A267841(A020703(n+2)%A103517(n))`
-/

namespace A264442.P16327097177482975634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267841 (Int.tmod (A020703 (n + 2)) (A103517 n)).toNat

end

end A264442.P16327097177482975634

/-! ## A264442.P3159488859686229334

`A267841(A153881(3*n+5)+A020703(n+1))`
-/

namespace A264442.P3159488859686229334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267841 (A153881 (3 * n + 5) + A020703 (n + 1)).toNat

end

end A264442.P3159488859686229334

/-! ## A264442.P12171821846217820243

`and(A061939(n+1), A144611(A000010(n+1)))`
-/

namespace A264442.P12171821846217820243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061939 (n + 1)) (A144611 (A000010 (n + 1)).toNat)

end

end A264442.P12171821846217820243

/-! ## A264442.P8807817260781589999

`A226464(xor(A000040(n+1)², A000040((n+1)²)))`
-/

namespace A264442.P8807817260781589999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226464 (Int.xor (A000040 (n + 1) ^ 2) (A000040 ((n + 1) ^ 2))).toNat

end

end A264442.P8807817260781589999

/-!
# A264443: a(n) = n*(n + 5)*(n + 10)/6.

The programs for A264443, the canonical program `A264443.P17305780701701451161` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264443 has offset 0).

The definition of A264443 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+5)*(n+10)/6` (program `A264443.P7849377604156687416`, by `A264443.P7849377604156687416.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A264443.P7849377604156687416

`n*(n+5)*(n+10)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264443.P7849377604156687416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 5) * (n + 10) : ℚ) / 6

end

end A264443.P7849377604156687416

namespace A264443

/-- `n*(n+5)*(n+10)/6` -/
def P7849377604156687416.Spec : Prop :=
  ∀ n, P7849377604156687416.a n = (A264443 n : ℚ)

theorem P7849377604156687416.correct : P7849377604156687416.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A264443, Nat.add_sub_cancel, A264443.P7849377604156687416.a, A264443.P17305780701701451161.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A264443, Nat.add_sub_cancel, A264443.P7849377604156687416.a, A264443.P17305780701701451161.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A264443

/-! ## A264443.P17305780701701451161

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=11, a(2)=28, a(3)=52`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264443

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17305780701701451161.Spec : Prop :=
  ∀ n, P17305780701701451161.a n = A264443 n

theorem P17305780701701451161.correct : P17305780701701451161.Spec := by
  intro n
  simp only [A264443]

end A264443

/-! ## A264443.P11881375958946011005

`record[C(n+1, 3)-4*n]`
-/

namespace A264443.P11881375958946011005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 3 : ℤ) - (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264443.P11881375958946011005

namespace A264443

/-- `record[C(n+1, 3)-4*n]` -/
def P11881375958946011005.Spec : Prop :=
  ∀ n, P11881375958946011005.a n = A264443 n

end A264443

/-! ## A264443.P11681966566557353457

`a(n-1)+∑[n+3]+n+3` with `a(0)=0`
-/

namespace A264443.P11681966566557353457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A264443.P11681966566557353457

namespace A264443

/-- `a(n-1)+∑[n+3]+n+3` -/
def P11681966566557353457.Spec : Prop :=
  ∀ n, (P11681966566557353457.a n : ℤ) = A264443 n

end A264443

/-! ## A264443.P977777833219657861

`∑[(∑[n+4]+2)%(2*(n+1)^3)]`
-/

namespace A264443.P977777833219657861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 2) % (2 * (n + 1) ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264443.P977777833219657861

namespace A264443

/-- `∑[(∑[n+4]+2)%(2*(n+1)^3)]` -/
def P977777833219657861.Spec : Prop :=
  ∀ n, (P977777833219657861.a n : ℤ) = A264443 n

end A264443

/-! ## A264443.P1483620465707857342

`A111396(n)-n`
-/

namespace A264443.P1483620465707857342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n - (n : ℤ)

end

end A264443.P1483620465707857342

namespace A264443

/-- `A111396(n)-n` -/
def P1483620465707857342.Spec : Prop :=
  ∀ n, P1483620465707857342.a n = A264443 n

end A264443

/-! ## A264443.P5961560775792752415

`A023545(n+1)-6`
-/

namespace A264443.P5961560775792752415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - 6

end

end A264443.P5961560775792752415

namespace A264443

/-- `A023545(n+1)-6` -/
def P5961560775792752415.Spec : Prop :=
  ∀ n, P5961560775792752415.a n = A264443 n

end A264443

/-! ## A264443.P6296105784986375988

`round(a(n-1)+A056000(n)+6)` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A264443.P6296105784986375988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A056000 n + 6)

end

end A264443.P6296105784986375988

namespace A264443

/-- `round(a(n-1)+A056000(n)+6)` -/
def P6296105784986375988.Spec : Prop :=
  ∀ n, P6296105784986375988.a n = A264443 n

end A264443

/-! ## A264443.P13507362001881283779

`A028557(n)+A005586(n)`
-/

namespace A264443.P13507362001881283779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 n + A005586 n

end

end A264443.P13507362001881283779

namespace A264443

/-- `A028557(n)+A005586(n)` -/
def P13507362001881283779.Spec : Prop :=
  ∀ n, P13507362001881283779.a n = A264443 n

end A264443

/-! ## A264443.P947315580023992038

`A028563(n)+A006503(n)`
-/

namespace A264443.P947315580023992038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028563 n + A006503 n

end

end A264443.P947315580023992038

namespace A264443

/-- `A028563(n)+A006503(n)` -/
def P947315580023992038.Spec : Prop :=
  ∀ n, P947315580023992038.a n = A264443 n

end A264443

/-! ## A264443.P17877490554137520245

`A139576(n)+A005581(n)`
-/

namespace A264443.P17877490554137520245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139576 n + A005581 n

end

end A264443.P17877490554137520245

namespace A264443

/-- `A139576(n)+A005581(n)` -/
def P17877490554137520245.Spec : Prop :=
  ∀ n, P17877490554137520245.a n = A264443 n

end A264443

/-! ## A264443.P3663568345304798884

`A132755(n)+A026057(n)`
-/

namespace A264443.P3663568345304798884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132755 n + A026057 n

end

end A264443.P3663568345304798884

namespace A264443

/-- `A132755(n)+A026057(n)` -/
def P3663568345304798884.Spec : Prop :=
  ∀ n, P3663568345304798884.a n = A264443 n

end A264443

/-! ## A264443.P15855892558411256465

`A323221(n)+A046691(n)`
-/

namespace A264443.P15855892558411256465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323221 n + A046691 n

end

end A264443.P15855892558411256465

namespace A264443

/-- `A323221(n)+A046691(n)` -/
def P15855892558411256465.Spec : Prop :=
  ∀ n, P15855892558411256465.a n = A264443 n

end A264443

/-! ## A264443.P1058238356302483004

`A096957(n)-A027691(n)`
-/

namespace A264443.P1058238356302483004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096957 n - A027691 n

end

end A264443.P1058238356302483004

namespace A264443

/-- `A096957(n)-A027691(n)` -/
def P1058238356302483004.Spec : Prop :=
  ∀ n, P1058238356302483004.a n = A264443 n

end A264443

/-! ## A264443.P16436336191427838792

`A163661(n)-A004068(n)`
-/

namespace A264443.P16436336191427838792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163661 n - A004068 n

end

end A264443.P16436336191427838792

namespace A264443

/-- `A163661(n)-A004068(n)` -/
def P16436336191427838792.Spec : Prop :=
  ∀ n, P16436336191427838792.a n = A264443 n

end A264443

/-! ## A264443.P1451852630126384990

`A264444(n)-A028566(n)`
-/

namespace A264443.P1451852630126384990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264444 n - A028566 n

end

end A264443.P1451852630126384990

namespace A264443

/-- `A264444(n)-A028566(n)` -/
def P1451852630126384990.Spec : Prop :=
  ∀ n, P1451852630126384990.a n = A264443 n

end A264443

/-! ## A264443.P1968560699235023499

`A052905(n)+A034857(n+1)`
-/

namespace A264443.P1968560699235023499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n + A034857 (n + 1)

end

end A264443.P1968560699235023499

namespace A264443

/-- `A052905(n)+A034857(n+1)` -/
def P1968560699235023499.Spec : Prop :=
  ∀ n, P1968560699235023499.a n = A264443 n

end A264443

/-! ## A264443.P9652283872280871961

`A283551(n)+A166137(n+1)`
-/

namespace A264443.P9652283872280871961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283551 n + A166137 (n + 1)

end

end A264443.P9652283872280871961

namespace A264443

/-- `A283551(n)+A166137(n+1)` -/
def P9652283872280871961.Spec : Prop :=
  ∀ n, P9652283872280871961.a n = A264443 n

end A264443

/-! ## A264443.P18188822495498116799

`A092286(n)+A028347(n+2)`
-/

namespace A264443.P18188822495498116799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092286 n + A028347 (n + 2)

end

end A264443.P18188822495498116799

namespace A264443

/-- `A092286(n)+A028347(n+2)` -/
def P18188822495498116799.Spec : Prop :=
  ∀ n, P18188822495498116799.a n = A264443 n

end A264443

/-!
# A264444: a(n) = n*(n + 7)*(n + 14)/6.

The programs for A264444, the canonical program `A264444.P10838941988066339323` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264444 has offset 0).

The definition of A264444 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+7)*(n+14)/6` (program `A264444.P11117340666077629691`, by `A264444.P11117340666077629691.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A264444.P11117340666077629691

`n*(n+7)*(n+14)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264444.P11117340666077629691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 7) * (n + 14) : ℚ) / 6

end

end A264444.P11117340666077629691

namespace A264444

/-- `n*(n+7)*(n+14)/6` -/
def P11117340666077629691.Spec : Prop :=
  ∀ n, P11117340666077629691.a n = (A264444 n : ℚ)

theorem P11117340666077629691.correct : P11117340666077629691.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A264444, Nat.add_sub_cancel, A264444.P11117340666077629691.a, A264444.P10838941988066339323.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A264444, Nat.add_sub_cancel, A264444.P11117340666077629691.a, A264444.P10838941988066339323.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A264444

/-! ## A264444.P10838941988066339323

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=20, a(2)=48, a(3)=85`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264444

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P10838941988066339323.Spec : Prop :=
  ∀ n, P10838941988066339323.a n = A264444 n

theorem P10838941988066339323.correct : P10838941988066339323.Spec := by
  intro n
  simp only [A264444]

end A264444

/-! ## A264444.P6081260736751730120

`record[C(n+1, 3)-8*n]`
-/

namespace A264444.P6081260736751730120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 3 : ℤ) - (8 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264444.P6081260736751730120

namespace A264444

/-- `record[C(n+1, 3)-8*n]` -/
def P6081260736751730120.Spec : Prop :=
  ∀ n, P6081260736751730120.a n = A264444 n

end A264444

/-! ## A264444.P6635455483533112628

`∑[a(n-1)+n+6]` with `a(0)=0, a(1)=20`
-/

namespace A264444.P6635455483533112628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 20] fun n f1 =>
  f1 (n - 1) + (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264444.P6635455483533112628

namespace A264444

/-- `∑[a(n-1)+n+6]` -/
def P6635455483533112628.Spec : Prop :=
  ∀ n, (P6635455483533112628.a n : ℤ) = A264444 n

end A264444

/-! ## A264444.P1334344149213462919

`C(n, 3)+(n+4)*4*n`
-/

namespace A264444.P1334344149213462919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 + (n + 4) * (4 * n)

end

end A264444.P1334344149213462919

namespace A264444

/-- `C(n, 3)+(n+4)*4*n` -/
def P1334344149213462919.Spec : Prop :=
  ∀ n, (P1334344149213462919.a n : ℤ) = A264444 n

end A264444

/-! ## A264444.P280907409410837837

`A140680(n)+∑[∑[n]]`
-/

namespace A264444.P280907409410837837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140680 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A264444.P280907409410837837

namespace A264444

/-- `A140680(n)+∑[∑[n]]` -/
def P280907409410837837.Spec : Prop :=
  ∀ n, P280907409410837837.a n = A264444 n

end A264444

/-! ## A264444.P10154768151570907414

`A139579(n)+∑[∑[n+2]-2]`
-/

namespace A264444.P10154768151570907414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139579 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264444.P10154768151570907414

namespace A264444

/-- `A139579(n)+∑[∑[n+2]-2]` -/
def P10154768151570907414.Spec : Prop :=
  ∀ n, P10154768151570907414.a n = A264444 n

end A264444

/-! ## A264444.P5536927901544844351

`A111396(n)+A028563(n)`
-/

namespace A264444.P5536927901544844351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n + A028563 n

end

end A264444.P5536927901544844351

namespace A264444

/-- `A111396(n)+A028563(n)` -/
def P5536927901544844351.Spec : Prop :=
  ∀ n, P5536927901544844351.a n = A264444 n

end A264444

/-! ## A264444.P17604148679123543964

`A139578(n)+A005586(n)`
-/

namespace A264444.P17604148679123543964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139578 n + A005586 n

end

end A264444.P17604148679123543964

namespace A264444

/-- `A139578(n)+A005586(n)` -/
def P17604148679123543964.Spec : Prop :=
  ∀ n, P17604148679123543964.a n = A264444 n

end A264444

/-! ## A264444.P15024644504721033727

`A264443(n)+A028566(n)`
-/

namespace A264444.P15024644504721033727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n + A028566 n

end

end A264444.P15024644504721033727

namespace A264444

/-- `A264443(n)+A028566(n)` -/
def P15024644504721033727.Spec : Prop :=
  ∀ n, P15024644504721033727.a n = A264444 n

end A264444

/-! ## A264444.P1565324889068731188

`A111144(n)-A098848(n)`
-/

namespace A264444.P1565324889068731188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111144 n - A098848 n

end

end A264444.P1565324889068731188

namespace A264444

/-- `A111144(n)-A098848(n)` -/
def P1565324889068731188.Spec : Prop :=
  ∀ n, P1565324889068731188.a n = A264444 n

end A264444

/-! ## A264444.P16426811274577257867

`A101860(n)-A116668(n)`
-/

namespace A264444.P16426811274577257867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101860 n - A116668 n

end

end A264444.P16426811274577257867

namespace A264444

/-- `A101860(n)-A116668(n)` -/
def P16426811274577257867.Spec : Prop :=
  ∀ n, P16426811274577257867.a n = A264444 n

end A264444

/-! ## A264444.P5667742790099462904

`A275874(n+4)+A151542(n)`
-/

namespace A264444.P5667742790099462904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275874 (n + 4) + A151542 n

end

end A264444.P5667742790099462904

namespace A264444

/-- `A275874(n+4)+A151542(n)` -/
def P5667742790099462904.Spec : Prop :=
  ∀ n, P5667742790099462904.a n = A264444 n

end A264444

/-! ## A264444.P8288052763852371461

`A028560(n)+A111396(n)+n`
-/

namespace A264444.P8288052763852371461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 n + (A111396 n + (n : ℤ))

end

end A264444.P8288052763852371461

namespace A264444

/-- `A028560(n)+A111396(n)+n` -/
def P8288052763852371461.Spec : Prop :=
  ∀ n, P8288052763852371461.a n = A264444 n

end A264444

/-! ## A264444.P761689538184369809

`n²+A111396(n)+A008589(n)`
-/

namespace A264444.P761689538184369809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A111396 n + A008589 n)

end

end A264444.P761689538184369809

namespace A264444

/-- `n²+A111396(n)+A008589(n)` -/
def P761689538184369809.Spec : Prop :=
  ∀ n, P761689538184369809.a n = A264444 n

end A264444

/-! ## A264444.P12973217090934287005

`record[∑[C(n, 2)]-8*n]`
-/

namespace A264444.P12973217090934287005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (8 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264444.P12973217090934287005

namespace A264444

/-- `record[∑[C(n, 2)]-8*n]` -/
def P12973217090934287005.Spec : Prop :=
  ∀ n, P12973217090934287005.a n = A264444 n

end A264444

/-! ## A264444.P1535869158310339608

`record[∑[∑[n-1]-7]+8]`
-/

namespace A264444.P1535869158310339608
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264444.P1535869158310339608

namespace A264444

/-- `record[∑[∑[n-1]-7]+8]` -/
def P1535869158310339608.Spec : Prop :=
  ∀ n, P1535869158310339608.a n = A264444 n

end A264444

/-!
# A264445: a(n) = n*(n + 11)*(n + 22)/6.

The programs for A264445, the canonical program `A264445.P16574238708852997594` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264445 has offset 0).

The definition of A264445 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+11)*(n+22)/6` (program `A264445.P2940067812234342892`, by `A264445.P2940067812234342892.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A264445.P2940067812234342892

`n*(n+11)*(n+22)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264445.P2940067812234342892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 11) * (n + 22) : ℚ) / 6

end

end A264445.P2940067812234342892

namespace A264445

/-- `n*(n+11)*(n+22)/6` -/
def P2940067812234342892.Spec : Prop :=
  ∀ n, P2940067812234342892.a n = (A264445 n : ℚ)

theorem P2940067812234342892.correct : P2940067812234342892.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A264445, Nat.add_sub_cancel, A264445.P2940067812234342892.a, A264445.P16574238708852997594.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A264445, Nat.add_sub_cancel, A264445.P2940067812234342892.a, A264445.P16574238708852997594.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A264445

/-! ## A264445.P16574238708852997594

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=46, a(2)=104, a(3)=175`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264445

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16574238708852997594.Spec : Prop :=
  ∀ n, P16574238708852997594.a n = A264445 n

theorem P16574238708852997594.correct : P16574238708852997594.Spec := by
  intro n
  simp only [A264445]

end A264445

/-! ## A264445.P9832849573903038230

`record[C(n+1, 3)-20*n]`
-/

namespace A264445.P9832849573903038230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 3 : ℤ) - (20 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264445.P9832849573903038230

namespace A264445

/-- `record[C(n+1, 3)-20*n]` -/
def P9832849573903038230.Spec : Prop :=
  ∀ n, P9832849573903038230.a n = A264445 n

end A264445

/-! ## A264445.P16426491111429078824

`A000292(n)+(n+8)*5*n`
-/

namespace A264445.P16426491111429078824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + ((n + 8) * (5 * n) : ℤ)

end

end A264445.P16426491111429078824

namespace A264445

/-- `A000292(n)+(n+8)*5*n` -/
def P16426491111429078824.Spec : Prop :=
  ∀ n, P16426491111429078824.a n = A264445 n

end A264445

/-! ## A264445.P13428832894790855230

`A111144(n)+A098603(n)`
-/

namespace A264445.P13428832894790855230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111144 n + A098603 n

end

end A264445.P13428832894790855230

namespace A264445

/-- `A111144(n)+A098603(n)` -/
def P13428832894790855230.Spec : Prop :=
  ∀ n, P13428832894790855230.a n = A264445 n

end A264445

/-! ## A264445.P397334106947417251

`∑[Δ[A026060(n+5)]%A026064(n+6)]`
-/

namespace A264445.P397334106947417251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026060 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A026064 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264445.P397334106947417251

namespace A264445

/-- `∑[Δ[A026060(n+5)]%A026064(n+6)]` -/
def P397334106947417251.Spec : Prop :=
  ∀ n, P397334106947417251.a n = A264445 n

end A264445

/-! ## A264445.P6423323880970200842

`record[∑[∑[n]-(n+20)]+20]`
-/

namespace A264445.P6423323880970200842
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - (n + 20 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264445.P6423323880970200842

namespace A264445

/-- `record[∑[∑[n]-(n+20)]+20]` -/
def P6423323880970200842.Spec : Prop :=
  ∀ n, P6423323880970200842.a n = A264445 n

end A264445

/-! ## A264445.P7961770729743136533

`A118354(A167614(n+2))+4*n`
-/

namespace A264445.P7961770729743136533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118354 (A167614 (n + 2)).toNat + (4 * n : ℤ)

end

end A264445.P7961770729743136533

namespace A264445

/-- `A118354(A167614(n+2))+4*n` -/
def P7961770729743136533.Spec : Prop :=
  ∀ n, P7961770729743136533.a n = A264445 n

end A264445

/-!
# A264446: a(n) = n*(n + 5)*(n + 10)*(n + 15)/24.

The programs for A264446, the canonical program `A264446.P2199967440428264253` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264446 has offset 0).

The definition of A264446 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+5)*(n+10)*(n+15)/24` (program `A264446.P5377143512342022832`, by `A264446.P5377143512342022832.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A264446.P5377143512342022832

`n*(n+5)*(n+10)*(n+15)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264446.P5377143512342022832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 5) * (n + 10) * (n + 15) : ℚ) / 24

end

end A264446.P5377143512342022832

namespace A264446

/-- `n*(n+5)*(n+10)*(n+15)/24` -/
def P5377143512342022832.Spec : Prop :=
  ∀ n, P5377143512342022832.a n = (A264446 n : ℚ)

theorem P5377143512342022832.correct : P5377143512342022832.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A264446, Nat.add_sub_cancel, A264446.P5377143512342022832.a, A264446.P2199967440428264253.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A264446, Nat.add_sub_cancel, A264446.P5377143512342022832.a, A264446.P2199967440428264253.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A264446

/-! ## A264446.P2199967440428264253

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=44, a(2)=119, a(3)=234, a(4)=399`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264446

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2199967440428264253.Spec : Prop :=
  ∀ n, P2199967440428264253.a n = A264446 n

theorem P2199967440428264253.correct : P2199967440428264253.Spec := by
  intro n
  simp only [A264446]

end A264446

/-! ## A264446.P17585810022896269148

`A006504(n+3)-A017281(n+5)`
-/

namespace A264446.P17585810022896269148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 3) - A017281 (n + 5)

end

end A264446.P17585810022896269148

namespace A264446

/-- `A006504(n+3)-A017281(n+5)` -/
def P17585810022896269148.Spec : Prop :=
  ∀ n, P17585810022896269148.a n = A264446 n

end A264446

/-! ## A264446.P14285102005256280453

`record[A005582(n)-A056115(2*n)]`
-/

namespace A264446.P14285102005256280453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n - A056115 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264446.P14285102005256280453

namespace A264446

/-- `record[A005582(n)-A056115(2*n)]` -/
def P14285102005256280453.Spec : Prop :=
  ∀ n, P14285102005256280453.a n = A264446 n

end A264446

/-! ## A264446.P15200213354868042203

`A011117(A167614(n+2)+1)-A028310(n)`
-/

namespace A264446.P15200213354868042203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (A167614 (n + 2) + 1).toNat - A028310 n

end

end A264446.P15200213354868042203

namespace A264446

/-- `A011117(A167614(n+2)+1)-A028310(n)` -/
def P15200213354868042203.Spec : Prop :=
  ∀ n, P15200213354868042203.a n = A264446 n

end A264446

/-!
# A264447: a(n) = n*(n + 7)*(n + 14)*(n + 21)/24.

The programs for A264447, the canonical program `A264447.P13827889544676083130` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264447 has offset 0).

The definition of A264447 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+7)*(n+14)*(n+21)/24` (program `A264447.P12189841300105370555`, by `A264447.P12189841300105370555.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A264447.P12189841300105370555

`n*(n+7)*(n+14)*(n+21)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A264447.P12189841300105370555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 7) * (n + 14) * (n + 21) : ℚ) / 24

end

end A264447.P12189841300105370555

namespace A264447

/-- `n*(n+7)*(n+14)*(n+21)/24` -/
def P12189841300105370555.Spec : Prop :=
  ∀ n, P12189841300105370555.a n = (A264447 n : ℚ)

theorem P12189841300105370555.correct : P12189841300105370555.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A264447, Nat.add_sub_cancel, A264447.P12189841300105370555.a, A264447.P13827889544676083130.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A264447, Nat.add_sub_cancel, A264447.P12189841300105370555.a, A264447.P13827889544676083130.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A264447

/-! ## A264447.P13827889544676083130

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=110, a(2)=276, a(3)=510, a(4)=825`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264447

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13827889544676083130.Spec : Prop :=
  ∀ n, P13827889544676083130.a n = A264447 n

theorem P13827889544676083130.correct : P13827889544676083130.Spec := by
  intro n
  simp only [A264447]

end A264447

/-! ## A264447.P12635874610286310974

`A118343(eq[5, A002260(n+1)])-3*n`
-/

namespace A264447.P12635874610286310974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - (3 * n : ℤ)

end

end A264447.P12635874610286310974

namespace A264447

/-- `A118343(eq[5, A002260(n+1)])-3*n` -/
def P12635874610286310974.Spec : Prop :=
  ∀ n, P12635874610286310974.a n = A264447 n

end A264447

/-!
# A264448: a(n) = n*(n + 11)*(n + 22)*(n + 33)/24.

The programs for A264448, the canonical program `A264448.P10052184330128183376` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264448 has offset 0).

The definition of A264448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A264448.P10052184330128183376

`n*(n+11)*(n+22)*(n+33)/24`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264448

/-- `n*(n+11)*(n+22)*(n+33)/24` -/
def P10052184330128183376.Spec : Prop :=
  ∀ n, P10052184330128183376.a n = (A264448 n : ℚ)

end A264448

/-!
# A264449: a(n) = n*(n + 7)*(n + 14)*(n + 21)*(n + 28)/120.

The programs for A264449, the canonical program `A264449.P5910090040537304062` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264449 has offset 0).

The definition of A264449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A264449.P5910090040537304062

`n*(n+7)*(n+14)*(n+21)*(n+28)/120`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264449

/-- `n*(n+7)*(n+14)*(n+21)*(n+28)/120` -/
def P5910090040537304062.Spec : Prop :=
  ∀ n, P5910090040537304062.a n = (A264449 n : ℚ)

end A264449

/-!
# A264450: a(n) = n*(n + 11)*(n + 22)*(n + 33)*(n + 44)/120.

The programs for A264450, the canonical program `A264450.P5918982435056207342` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264450 has offset 0).

The definition of A264450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A264450.P5918982435056207342

`n*(n+11)*(n+22)*(n+33)*(n+44)/120`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264450

/-- `n*(n+11)*(n+22)*(n+33)*(n+44)/120` -/
def P5918982435056207342.Spec : Prop :=
  ∀ n, P5918982435056207342.a n = (A264450 n : ℚ)

end A264450

/-!
# A264451: Number of permutations of [n] with exactly two (possibly overlapping) occurrences of the generalized pattern 12-3.

The programs for A264451, there is no canonical definition to state claims against.
-/

/-! ## A264451.P2844447040186680877

`xor(A167865(A285147(n+1)), A285147(n+1))`
-/

namespace A264451.P2844447040186680877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A167865 (A285147 (n + 1)).toNat) (A285147 (n + 1))

end

end A264451.P2844447040186680877

/-!
# A264454: Number of permutations of [n] with exactly five (possibly overlapping) occurrences of the generalized pattern 12-3.

The programs for A264454, there is no canonical definition to state claims against.
-/

/-! ## A264454.P4964646978546140334

`A260665(A000125(n+3)+6)`
-/

namespace A264454.P4964646978546140334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260665 (A000125 (n + 3) + 6).toNat

end

end A264454.P4964646978546140334

/-!
# A264460: Number of permutations of [n] with exactly one occurrence of the generalized pattern 23-1.

The programs for A264460, there is no canonical definition to state claims against.
-/

/-! ## A264460.P16205222135831323083

`A276951(Δ[A001764(n+1)])`
-/

namespace A264460.P16205222135831323083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276951 (f1 (n + 1) - f1 n).toNat

end

end A264460.P16205222135831323083

/-!
# A264470: Number of (n+1) X (n+1) arrays of permutations of 0..(n+1)^2-1 with each element having directed index change 0,1 1,0 2,1 or -1,-1.

The programs for A264470, there is no canonical definition to state claims against.
-/

/-! ## A264470.P6791712435456113255

`A264476(∑[4*n]+1)`
-/

namespace A264470.P6791712435456113255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264470.P6791712435456113255

/-! ## A264470.P5080197584464721059

`lcm(2, A264476(A001844(n)))`
-/

namespace A264470.P5080197584464721059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A264476 (A001844 n).toNat)

end

end A264470.P5080197584464721059

/-! ## A264470.P10410797302956672843

`record[A003982(n)*A264476(n+1)]`
-/

namespace A264470.P10410797302956672843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A264476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264470.P10410797302956672843

/-! ## A264470.P1360892487653801414

`record[A214505(n)*A264476(n+1)]`
-/

namespace A264470.P1360892487653801414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A264476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264470.P1360892487653801414

/-! ## A264470.P5921816750400436877

`A007318(C(2, n))*A264476(A001844(n))`
-/

namespace A264470.P5921816750400436877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A264476 (A001844 n).toNat

end

end A264470.P5921816750400436877

/-!
# A264471: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,1 1,0 2,1 or -1,-1.

The programs for A264471, there is no canonical definition to state claims against.
-/

/-! ## A264471.P16530294596991044029

`A264476(∑[n+3]+1)`
-/

namespace A264471.P16530294596991044029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264471.P16530294596991044029

/-! ## A264471.P11844121994083562219

`record[A264476(n+1)-A243098(n+3)]`
-/

namespace A264471.P11844121994083562219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (n + 1) - A243098 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264471.P11844121994083562219

/-! ## A264471.P13545426922173418838

`record[floor(A264476(n+1)/A079502(n+3))]`
-/

namespace A264471.P13545426922173418838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A264476 (n + 1) : ℚ) / (A079502 (n + 3) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264471.P13545426922173418838

/-! ## A264471.P4977942053571801553

`A264476(A034856(n+2))%A182604(n)`
-/

namespace A264471.P4977942053571801553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264476 (A034856 (n + 2)).toNat) (A182604 n)

end

end A264471.P4977942053571801553

/-! ## A264471.P4246780982742319439

`A059841(2*n)*A264476(A034856(n+2))`
-/

namespace A264471.P4246780982742319439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) * A264476 (A034856 (n + 2)).toNat

end

end A264471.P4246780982742319439

/-!
# A264472: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,1 1,0 2,1 or -1,-1.

The programs for A264472, there is no canonical definition to state claims against.
-/

/-! ## A264472.P17151716876878202345

`A264476(A141214(n+1))`
-/

namespace A264472.P17151716876878202345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A141214 (n + 1)).toNat

end

end A264472.P17151716876878202345

/-! ## A264472.P17678323563728376432

`A264476(A027379(n+2))`
-/

namespace A264472.P17678323563728376432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A027379 (n + 2)).toNat

end

end A264472.P17678323563728376432

/-! ## A264472.P9954406909238681907

`A264476(A155212(n)+5)`
-/

namespace A264472.P9954406909238681907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A155212 n + 5).toNat

end

end A264472.P9954406909238681907

/-! ## A264472.P11478713994175355830

`A264476(A056000(n)+7)`
-/

namespace A264472.P11478713994175355830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A056000 n + 7).toNat

end

end A264472.P11478713994175355830

/-! ## A264472.P1201984454008984665

`A264476(eq[3, A193592(n)])`
-/

namespace A264472.P1201984454008984665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264472.P1201984454008984665

/-!
# A264473: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,1 1,0 2,1 or -1,-1.

The programs for A264473, there is no canonical definition to state claims against.
-/

/-! ## A264473.P10195221529398121121

`A264476(Δ[A264443(n)])`
-/

namespace A264473.P10195221529398121121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (f1 (n + 1) - f1 n).toNat

end

end A264473.P10195221529398121121

/-! ## A264473.P9388166290794215726

`A264476(A046691(n+3))`
-/

namespace A264473.P9388166290794215726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A046691 (n + 3)).toNat

end

end A264473.P9388166290794215726

/-! ## A264473.P15196064694131387210

`A264476(eq[4, A193592(n)])`
-/

namespace A264473.P15196064694131387210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264473.P15196064694131387210

/-! ## A264473.P10971368493193979615

`A264476(eq[10, A027421(n)])`
-/

namespace A264473.P10971368493193979615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264473.P10971368493193979615

/-! ## A264473.P9853495625673727779

`A264476(Δ[A023545(n+1)])`
-/

namespace A264473.P9853495625673727779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (f1 (n + 1) - f1 n).toNat

end

end A264473.P9853495625673727779

/-!
# A264474: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change 0,1 1,0 2,1 or -1,-1.

The programs for A264474, there is no canonical definition to state claims against.
-/

/-! ## A264474.P12558615979635555450

`A264476(A052905(n+3))`
-/

namespace A264474.P12558615979635555450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A052905 (n + 3)).toNat

end

end A264474.P12558615979635555450

/-! ## A264474.P3109552393786930422

`A264476(A056119(n)+16)`
-/

namespace A264474.P3109552393786930422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A056119 n + 16).toNat

end

end A264474.P3109552393786930422

/-! ## A264474.P9152439650263681518

`A264476(eq[3, A219347(n)])`
-/

namespace A264474.P9152439650263681518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264474.P9152439650263681518

/-! ## A264474.P8611572826002550751

`A264476(eq[5, A193592(n)])`
-/

namespace A264474.P8611572826002550751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264474.P8611572826002550751

/-! ## A264474.P2327316048981956706

`A264476(A155212(n+2)+3)`
-/

namespace A264474.P2327316048981956706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A155212 (n + 2) + 3).toNat

end

end A264474.P2327316048981956706

/-!
# A264475: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having directed index change 0,1 1,0 2,1 or -1,-1.

The programs for A264475, there is no canonical definition to state claims against.
-/

/-! ## A264475.P5364836531902045339

`A264476(eq[4, A219347(n)])`
-/

namespace A264475.P5364836531902045339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264475.P5364836531902045339

/-! ## A264475.P16312025790984404927

`A264476(eq[6, A193592(n)])`
-/

namespace A264475.P16312025790984404927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264475.P16312025790984404927

/-! ## A264475.P7602587092463639485

`A264476(Δ[A023551(n+2)])`
-/

namespace A264475.P7602587092463639485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (f1 (n + 1) - f1 n).toNat

end

end A264475.P7602587092463639485

/-! ## A264475.P15503544154002053112

`A264476(A155212(n+3)+2)`
-/

namespace A264475.P15503544154002053112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A155212 (n + 3) + 2).toNat

end

end A264475.P15503544154002053112

/-! ## A264475.P8786908411041501312

`A264476(eq[7, A200370(n+1)])`
-/

namespace A264475.P8786908411041501312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264475.P8786908411041501312

/-!
# A264476: T(n,k)=Number of (n+1)X(k+1) arrays of permutations of 0..(n+1)*(k+1)-1 with each element having directed index change 0,1 1,0 2,1 or -1,-1.

The programs for A264476, there is no canonical definition to state claims against.
-/

/-! ## A264476.P2176818896906716089

`and(A026741(n), A336684(A108347(n+1)))`
-/

namespace A264476.P2176818896906716089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026741 n) (A336684 (A108347 (n + 1)).toNat)

end

end A264476.P2176818896906716089

/-! ## A264476.P1090878503624254810

`and(A074378(n), A336684(A108347(n+1)))`
-/

namespace A264476.P1090878503624254810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A074378 n) (A336684 (A108347 (n + 1)).toNat)

end

end A264476.P1090878503624254810

/-! ## A264476.P15553213014001549449

`and(A160747(n), A336684(A108347(n+1)))`
-/

namespace A264476.P15553213014001549449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160747 n) (A336684 (A108347 (n + 1)).toNat)

end

end A264476.P15553213014001549449

/-! ## A264476.P14991599213417510971

`A110657(A268410(n))%A278222(n+2)`
-/

namespace A264476.P14991599213417510971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110657 (A268410 n).toNat) (A278222 (n + 2))

end

end A264476.P14991599213417510971

/-!
# A264477: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,1 1,0 2,1 or -1,-1.

The programs for A264477, there is no canonical definition to state claims against.
-/

/-! ## A264477.P15759242517791425274

`A264476(∑[n+2]+4)`
-/

namespace A264477.P15759242517791425274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264477.P15759242517791425274

/-! ## A264477.P12728119198405813426

`A264476(A167614(n+1))+A185203(n)`
-/

namespace A264477.P12728119198405813426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A167614 (n + 1)).toNat + A185203 n

end

end A264477.P12728119198405813426

/-! ## A264477.P13847012916465850836

`A264476(A167614(n+1))%A007483(n)`
-/

namespace A264477.P13847012916465850836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264476 (A167614 (n + 1)).toNat) (A007483 n)

end

end A264477.P13847012916465850836

/-! ## A264477.P7739306013254298599

`lcm(A033999(n), A264476(A167614(n+1)))`
-/

namespace A264477.P7739306013254298599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A264476 (A167614 (n + 1)).toNat)

end

end A264477.P7739306013254298599

/-! ## A264477.P15185973581174839819

`and(A057428(n), A264476(A167614(n+1)))`
-/

namespace A264477.P15185973581174839819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A264476 (A167614 (n + 1)).toNat)

end

end A264477.P15185973581174839819

/-!
# A264478: Number of (4+1) X (n+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,1 1,0 2,1 or -1,-1.

The programs for A264478, there is no canonical definition to state claims against.
-/

/-! ## A264478.P10743073071861397240

`A264476(A141214(n)+7)`
-/

namespace A264478.P10743073071861397240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A141214 n + 7).toNat

end

end A264478.P10743073071861397240

/-! ## A264478.P10026909397338821661

`A264476(A055999(n)+10)`
-/

namespace A264478.P10026909397338821661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A055999 n + 10).toNat

end

end A264478.P10026909397338821661

/-! ## A264478.P11504282381114670211

`A264476(A167614(n+2)+1)`
-/

namespace A264478.P11504282381114670211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A167614 (n + 2) + 1).toNat

end

end A264478.P11504282381114670211

/-! ## A264478.P1123669576300348998

`A264476(A134227(n+1)+10)`
-/

namespace A264478.P1123669576300348998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A134227 (n + 1) + 10).toNat

end

end A264478.P1123669576300348998

/-! ## A264478.P2793472840368282783

`A264476(Δ[A264443(n)-n²])`
-/

namespace A264478.P2793472840368282783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (f1 (n + 1) - f1 n).toNat

end

end A264478.P2793472840368282783

/-!
# A264479: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,1 1,0 2,1 or -1,-1.

The programs for A264479, there is no canonical definition to state claims against.
-/

/-! ## A264479.P13698662942674325686

`A264476(A167499(n+3))`
-/

namespace A264479.P13698662942674325686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A167499 (n + 3)).toNat

end

end A264479.P13698662942674325686

/-! ## A264479.P3494191330063742716

`A264476(A155212(n)+13)`
-/

namespace A264479.P3494191330063742716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A155212 n + 13).toNat

end

end A264479.P3494191330063742716

/-! ## A264479.P4423816898162089498

`A264476(A000217(n+4)+5)`
-/

namespace A264479.P4423816898162089498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A000217 (n + 4) + 5).toNat

end

end A264479.P4423816898162089498

/-! ## A264479.P17968402415615812541

`A264476(A052905(n+1)+10)`
-/

namespace A264479.P17968402415615812541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A052905 (n + 1) + 10).toNat

end

end A264479.P17968402415615812541

/-! ## A264479.P158309156131381607

`A264476(A025747(n+4)-n)`
-/

namespace A264479.P158309156131381607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A025747 (n + 4) - (n : ℤ)).toNat

end

end A264479.P158309156131381607

/-!
# A264480: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having directed index change 0,1 1,0 2,1 or -1,-1.

The programs for A264480, there is no canonical definition to state claims against.
-/

/-! ## A264480.P879563516639287617

`A264476(A056115(n)+21)`
-/

namespace A264480.P879563516639287617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A056115 n + 21).toNat

end

end A264480.P879563516639287617

/-! ## A264480.P6623143030012122795

`A264476(A167499(n+4)+1)`
-/

namespace A264480.P6623143030012122795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A167499 (n + 4) + 1).toNat

end

end A264480.P6623143030012122795

/-! ## A264480.P13986982511401392622

`A264476(A000217(n+5)+6)`
-/

namespace A264480.P13986982511401392622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A000217 (n + 5) + 6).toNat

end

end A264480.P13986982511401392622

/-! ## A264480.P18100148454669089713

`A264476(eq[6, A130270(n+1)])`
-/

namespace A264480.P18100148454669089713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264480.P18100148454669089713

/-! ## A264480.P16347937078604692597

`A264476(eq[7, A131818(n+1)])`
-/

namespace A264480.P16347937078604692597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264480.P16347937078604692597

/-!
# A264481: Number of (7+1)X(n+1) arrays of permutations of 0..n*8+7 with each element having directed index change 0,1 1,0 2,1 or -1,-1.

The programs for A264481, there is no canonical definition to state claims against.
-/

/-! ## A264481.P16202435025561427629

`A264476(eq[11, A066657(n)])`
-/

namespace A264481.P16202435025561427629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264481.P16202435025561427629

/-! ## A264481.P1375416757407749730

`A264476(A167614(n+5)+4)`
-/

namespace A264481.P1375416757407749730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A167614 (n + 5) + 4).toNat

end

end A264481.P1375416757407749730

/-! ## A264481.P1988966549920970737

`A264476(A000124(n+6)+6)`
-/

namespace A264481.P1988966549920970737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A000124 (n + 6) + 6).toNat

end

end A264481.P1988966549920970737

/-! ## A264481.P12979798357362406405

`A264476(A027379(n+4)+10)`
-/

namespace A264481.P12979798357362406405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (A027379 (n + 4) + 10).toNat

end

end A264481.P12979798357362406405

/-! ## A264481.P5692396883145268004

`A264476(eq[8, A131818(n+1)])`
-/

namespace A264481.P5692396883145268004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264481.P5692396883145268004

/-!
# A264482: Triangle T(n,k) (1 <= k <= n) read by rows: row n lists the set of n coprime numbers that minimizes the difference between first and last terms, and then minimizes the average of the terms.

The programs for A264482, there is no canonical definition to state claims against.
-/

/-! ## A264482.P13012185787006639675

`dr(xor(A092080(n+1), A184955(n)))`
-/

namespace A264482.P13012185787006639675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.xor (A092080 (n + 1)) (A184955 n))

end

end A264482.P13012185787006639675

/-! ## A264482.P3909223152896906700

`or(A002260(n+1), A089615(A238003(n+1)))`
-/

namespace A264482.P3909223152896906700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002260 (n + 1)) (A089615 (A238003 (n + 1)).toNat)

end

end A264482.P3909223152896906700

/-! ## A264482.P12186864930214578160

`or(A089615(A238003(n+1)), A092080(n+1))`
-/

namespace A264482.P12186864930214578160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089615 (A238003 (n + 1)).toNat) (A092080 (n + 1))

end

end A264482.P12186864930214578160

/-! ## A264482.P9634634028646090668

`A092080(A000005(Δ[A050732(n+1)]))`
-/

namespace A264482.P9634634028646090668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092080 (A000005 (f1 (n + 1) - f1 n).toNat).toNat

end

end A264482.P9634634028646090668

/-! ## A264482.P12655550946032330051

`or(A002260(n+1), A341021(A008279(n+3)))`
-/

namespace A264482.P12655550946032330051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002260 (n + 1)) (A341021 ((A008279 (n + 3)).toNat + 20))

end

end A264482.P12655550946032330051

/-!
# A264483: First column of A264482.

The programs for A264483, there is no canonical definition to state claims against.
-/

/-! ## A264483.P10716483601363833005

`A264482(∑[n]+1)`
-/

namespace A264483.P10716483601363833005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264482 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264483.P10716483601363833005

/-! ## A264483.P14089209010467551456

`or(1, A264482(A000124(n)))`
-/

namespace A264483.P14089209010467551456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A264482 (A000124 n).toNat)

end

end A264483.P14089209010467551456

/-! ## A264483.P18385730396952579204

`or(char[1], A264482(A000217(n)+1))`
-/

namespace A264483.P18385730396952579204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A264482 (A000217 n + 1).toNat)

end

end A264483.P18385730396952579204

/-! ## A264483.P1144743857234059288

`A264482(A000124(n))%A074388(n+1)`
-/

namespace A264483.P1144743857234059288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264482 (A000124 n).toNat) (A074388 (n + 1))

end

end A264483.P1144743857234059288

/-! ## A264483.P8072372792437588382

`A264482(A152947(n+2))%A069512(n+5)`
-/

namespace A264483.P8072372792437588382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264482 (A152947 (n + 2)).toNat) (A069512 (n + 5))

end

end A264483.P8072372792437588382

/-!
# A264484: Number of (n+1) X (1+1) arrays of permutations of 0..n*2+1 with each element having directed index change 2,-1 1,0 2,1 0,-1 -2,-2 or -1,0.

The programs for A264484, there is no canonical definition to state claims against.
-/

/-! ## A264484.P3524222936584770006

`A264490(∑[n+1])`
-/

namespace A264484.P3524222936584770006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264484.P3524222936584770006

/-! ## A264484.P6881515291520068440

`record[A264490(∑[A057979(n)])]`
-/

namespace A264484.P6881515291520068440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264484.P6881515291520068440

/-! ## A264484.P12831198601904548029

`record[A264490(A056534(n+1))]`
-/

namespace A264484.P12831198601904548029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264484.P12831198601904548029

/-! ## A264484.P8226458802626145205

`record[A264490(A093055(n+1))]`
-/

namespace A264484.P8226458802626145205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A093055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264484.P8226458802626145205

/-! ## A264484.P12213415384692039761

`record[A264490(A115017(n+1))]`
-/

namespace A264484.P12213415384692039761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A115017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264484.P12213415384692039761

/-!
# A264485: Number of (n+1)X(2+1) arrays of permutations of 0..n*3+2 with each element having directed index change 2,-1 1,0 2,1 0,-1 -2,-2 or -1,0.

The programs for A264485, there is no canonical definition to state claims against.
-/

/-! ## A264485.P2916867229929441559

`A264490(∑[n+2])`
-/

namespace A264485.P2916867229929441559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264485.P2916867229929441559

/-! ## A264485.P1053323267571705273

`A264490(A000096(n+1))+A036876(n+1)`
-/

namespace A264485.P1053323267571705273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A000096 (n + 1)).toNat + A036876 (n + 1)

end

end A264485.P1053323267571705273

/-! ## A264485.P11545922664524801970

`A353349(n+2)+A264490(A000096(n+1))`
-/

namespace A264485.P11545922664524801970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353349 (n + 2) + A264490 (A000096 (n + 1)).toNat

end

end A264485.P11545922664524801970

/-! ## A264485.P11255371166893002766

`A264490(A000096(n+1))+A000035(2*n)`
-/

namespace A264485.P11255371166893002766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A000096 (n + 1)).toNat + A000035 (2 * n)

end

end A264485.P11255371166893002766

/-! ## A264485.P2615536504867967521

`A000034(2*n)*A264490(A000096(n+1))`
-/

namespace A264485.P2615536504867967521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A264490 (A000096 (n + 1)).toNat

end

end A264485.P2615536504867967521

/-!
# A264486: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change 2,-1 1,0 2,1 0,-1 -2,-2 or -1,0.

The programs for A264486, there is no canonical definition to state claims against.
-/

/-! ## A264486.P2394068020424608028

`A264490(∑[n+3]+1)`
-/

namespace A264486.P2394068020424608028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264486.P2394068020424608028

/-! ## A264486.P7465859566061578249

`record[A264490(A198464(n+1))]`
-/

namespace A264486.P7465859566061578249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264486.P7465859566061578249

/-! ## A264486.P13004142224277643038

`record[char[A055998(n)]*A264490(n+1)]`
-/

namespace A264486.P13004142224277643038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A264490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264486.P13004142224277643038

/-! ## A264486.P2246845593132385347

`record[A010054(n+3)*A264490(n+1)]`
-/

namespace A264486.P2246845593132385347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A264490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264486.P2246845593132385347

/-! ## A264486.P11121528901946429755

`record[A264490(n+1)/A264490(n+4)]`
-/

namespace A264486.P11121528901946429755
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264490 (n + 1) : ℚ) / (A264490 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264486.P11121528901946429755

/-!
# A264487: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having directed index change 2,-1 1,0 2,1 0,-1 -2,-2 or -1,0.

The programs for A264487, there is no canonical definition to state claims against.
-/

/-! ## A264487.P15993466204794314477

`A264490(∑[n+3]+n+4)`
-/

namespace A264487.P15993466204794314477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A264487.P15993466204794314477

/-!
# A264488: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change 2,-1 1,0 2,1 0,-1 -2,-2 or -1,0.

The programs for A264488, there is no canonical definition to state claims against.
-/

/-! ## A264488.P2024615107565254185

`A264490(∑[n+5]+6)`
-/

namespace A264488.P2024615107565254185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A264488.P2024615107565254185

/-! ## A264488.P4209296478738974824

`A264490(A046691(n+3))+A102683(A306100(n))`
-/

namespace A264488.P4209296478738974824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A046691 (n + 3)).toNat + A102683 (A306100 n).toNat

end

end A264488.P4209296478738974824

/-!
# A264489: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change 2,-1 1,0 2,1 0,-1 -2,-2 or -1,0.

The programs for A264489, there is no canonical definition to state claims against.
-/

/-! ## A264489.P5831330030237818566

`A264490(A052905(n+3))`
-/

namespace A264489.P5831330030237818566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A052905 (n + 3)).toNat

end

end A264489.P5831330030237818566

/-! ## A264489.P1548379631635284410

`A264490(A056119(n)+16)`
-/

namespace A264489.P1548379631635284410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A056119 n + 16).toNat

end

end A264489.P1548379631635284410

/-! ## A264489.P7138042191167350906

`A264490(eq[3, A219347(n)])`
-/

namespace A264489.P7138042191167350906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264489.P7138042191167350906

/-! ## A264489.P9390183695673255575

`A264490(eq[5, A152157(n)])`
-/

namespace A264489.P9390183695673255575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264489.P9390183695673255575

/-!
# A264491: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having directed index change 2,-1 1,0 2,1 0,-1 -2,-2 or -1,0.

The programs for A264491, the canonical program `A264491.P14249031380426336601` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264491 has offset 1).

The definition of A264491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264491.P14249031380426336601

`3*a(n-2)+2*a(n-3)+a(n-4)-a(n-5)` with `a(0)=3, a(1)=1, a(2)=10, a(3)=8, a(4)=35`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264491

/-- `3*a(n-2)+2*a(n-3)+a(n-4)-a(n-5)` -/
def P14249031380426336601.Spec : Prop :=
  ∀ n, P14249031380426336601.a n = A264491 (n + 1)

theorem P14249031380426336601.correct : P14249031380426336601.Spec := by
  intro n
  simp only [A264491, Nat.add_sub_cancel]

end A264491

/-! ## A264491.P17497520611453055387

`A264490(∑[n+1]+2)`
-/

namespace A264491.P17497520611453055387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264491.P17497520611453055387

namespace A264491

/-- `A264490(∑[n+1]+2)` -/
def P17497520611453055387.Spec : Prop :=
  ∀ n, P17497520611453055387.a n = A264491 (n + 1)

end A264491

/-!
# A264492: Number of (4+1) X (n+1) arrays of permutations of 0..n*5+4 with each element having directed index change 2,-1 1,0 2,1 0,-1 -2,-2 or -1,0.

The programs for A264492, there is no canonical definition to state claims against.
-/

/-! ## A264492.P15253494197865822033

`A264490(∑[n+3]+7)`
-/

namespace A264492.P15253494197865822033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A264492.P15253494197865822033

/-! ## A264492.P3626070759182184878

`A264490(A167614(n+2)+1)+A185226(n)`
-/

namespace A264492.P3626070759182184878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A167614 (n + 2) + 1).toNat + A185226 n

end

end A264492.P3626070759182184878

/-! ## A264492.P12455346445442361301

`A133848(n+1)*A264490(A167614(n+2)+1)`
-/

namespace A264492.P12455346445442361301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133848 (n + 1) * A264490 (A167614 (n + 2) + 1).toNat

end

end A264492.P12455346445442361301

/-!
# A264493: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having directed index change 2,-1 1,0 2,1 0,-1 -2,-2 or -1,0.

The programs for A264493, there is no canonical definition to state claims against.
-/

/-! ## A264493.P9645600984657981275

`A264490(A167499(n+3))`
-/

namespace A264493.P9645600984657981275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A167499 (n + 3)).toNat

end

end A264493.P9645600984657981275

/-! ## A264493.P2448157126171379916

`A264490(A077169(n+5))`
-/

namespace A264493.P2448157126171379916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A077169 (n + 5)).toNat

end

end A264493.P2448157126171379916

/-! ## A264493.P3060458273088906744

`A264490(A155212(n)+13)`
-/

namespace A264493.P3060458273088906744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A155212 n + 13).toNat

end

end A264493.P3060458273088906744

/-! ## A264493.P3290742327326873908

`A264490(A056000(n)+15)`
-/

namespace A264493.P3290742327326873908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A056000 n + 15).toNat

end

end A264493.P3290742327326873908

/-! ## A264493.P6479734241656128908

`A264490(eq[7, A066657(n)])`
-/

namespace A264493.P6479734241656128908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264493.P6479734241656128908

/-!
# A264494: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having directed index change 2,-1 1,0 2,1 0,-1 -2,-2 or -1,0.

The programs for A264494, there is no canonical definition to state claims against.
-/

/-! ## A264494.P4077149029453088538

`A264490(A166136(n+4))`
-/

namespace A264494.P4077149029453088538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A166136 (n + 4)).toNat

end

end A264494.P4077149029453088538

/-! ## A264494.P6740295840020053890

`A264490(A167499(n+4)+1)`
-/

namespace A264494.P6740295840020053890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A167499 (n + 4) + 1).toNat

end

end A264494.P6740295840020053890

/-! ## A264494.P8571862126814116209

`A264490(A167614(n+4)+3)`
-/

namespace A264494.P8571862126814116209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A167614 (n + 4) + 3).toNat

end

end A264494.P8571862126814116209

/-! ## A264494.P16419047574844950028

`A264490(A000124(n+5)+5)`
-/

namespace A264494.P16419047574844950028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A000124 (n + 5) + 5).toNat

end

end A264494.P16419047574844950028

/-! ## A264494.P6586748892219458969

`A264490(A027379(n+3)+9)`
-/

namespace A264494.P6586748892219458969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A027379 (n + 3) + 9).toNat

end

end A264494.P6586748892219458969

/-!
# A264495: Number of (7+1)X(n+1) arrays of permutations of 0..n*8+7 with each element having directed index change 2,-1 1,0 2,1 0,-1 -2,-2 or -1,0.

The programs for A264495, there is no canonical definition to state claims against.
-/

/-! ## A264495.P3711183137123886728

`A264490(eq[11, A066657(n)])`
-/

namespace A264495.P3711183137123886728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264495.P3711183137123886728

/-! ## A264495.P975288414072541407

`A264490(A167499(n+5)+2)`
-/

namespace A264495.P975288414072541407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A167499 (n + 5) + 2).toNat

end

end A264495.P975288414072541407

/-! ## A264495.P12903594817513725263

`A264490(A167614(n+5)+4)`
-/

namespace A264495.P12903594817513725263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A167614 (n + 5) + 4).toNat

end

end A264495.P12903594817513725263

/-! ## A264495.P8824158123334333695

`A264490(A027379(n+4)+10)`
-/

namespace A264495.P8824158123334333695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264490 (A027379 (n + 4) + 10).toNat

end

end A264495.P8824158123334333695

/-!
# A264498: Numbers n that are the product of three distinct odd primes and x^2 + y^2 = n has integer solutions.

The programs for A264498, there is no canonical definition to state claims against.
-/

/-! ## A264498.P66056277254916008

`∩[A025287(n+1), A159781(n+1)]`
-/

namespace A264498.P66056277254916008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264498.P66056277254916008

/-! ## A264498.P5953671043864042433

`∩[A025305(n+1), A159781(n+1)]`
-/

namespace A264498.P5953671043864042433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264498.P5953671043864042433

/-! ## A264498.P12251887396259832287

`∩[A097102(n+1), A159781(n+1)]`
-/

namespace A264498.P12251887396259832287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264498.P12251887396259832287

/-! ## A264498.P6096792546947264802

`∩[A025287(n+1), A248649(n+1)]`
-/

namespace A264498.P6096792546947264802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264498.P6096792546947264802

/-! ## A264498.P14054467954212489909

`∩[A025295(n+1), A248649(n+1)]`
-/

namespace A264498.P14054467954212489909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264498.P14054467954212489909

/-! ## A264498.P16048721928335446322

`∩[A025305(n+1), A248649(n+1)]`
-/

namespace A264498.P16048721928335446322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264498.P16048721928335446322

/-! ## A264498.P2768573369380090867

`∩[A097102(n+1), A248649(n+1)]`
-/

namespace A264498.P2768573369380090867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264498.P2768573369380090867

/-! ## A264498.P3715225606100346694

`∩[A159781(n+1), A248649(n+1)]`
-/

namespace A264498.P3715225606100346694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264498.P3715225606100346694

/-! ## A264498.P2927397399351977418

`∩[A248649(n+1), A281877(n+1)]`
-/

namespace A264498.P2927397399351977418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264498.P2927397399351977418

/-! ## A264498.P10876104875589243617

`∩[A025313(n+1), A248649(n+1)]`
-/

namespace A264498.P10876104875589243617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264498.P10876104875589243617

/-! ## A264498.P14770528877658638880

`∩[A025294(n+1), A248649(n+1)]`
-/

namespace A264498.P14770528877658638880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264498.P14770528877658638880

/-! ## A264498.P6783476288133095775

`∩[A248649(n+1), A285579(n+1)]`
-/

namespace A264498.P6783476288133095775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264498.P6783476288133095775

/-! ## A264498.P11613793518516249191

`∩[A024409(n+1), A248649(n+1)]`
-/

namespace A264498.P11613793518516249191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264498.P11613793518516249191

/-! ## A264498.P405165000619501740

`∩[A120961(n+1), A248649(n+1)]`
-/

namespace A264498.P405165000619501740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264498.P405165000619501740

/-! ## A264498.P3818938822235695063

`∩[A159781(n+1), A274044(n+1)]`
-/

namespace A264498.P3818938822235695063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264498.P3818938822235695063

/-! ## A264498.P15549884465762716809

`∩[A025287(n+1), A038513(n)]`
-/

namespace A264498.P15549884465762716809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038513 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264498.P15549884465762716809

/-! ## A264498.P10032987662165656386

`∩[A025295(n+1), A038513(n)]`
-/

namespace A264498.P10032987662165656386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038513 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264498.P10032987662165656386

/-! ## A264498.P2891680557252820310

`∩[A025305(n+1), A038513(n)]`
-/

namespace A264498.P2891680557252820310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038513 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264498.P2891680557252820310

/-!
# A264499: Numbers n that are the product of four distinct odd primes and x^2 + y^2 = n has integer solutions.

The programs for A264499, there is no canonical definition to state claims against.
-/

/-! ## A264499.P5875628107107122201

`∩[A025291(n+1), A248712(n+1)]`
-/

namespace A264499.P5875628107107122201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264499.P5875628107107122201

/-! ## A264499.P2916379761065575847

`∩[A025297(n+1), A248712(n+1)]`
-/

namespace A264499.P2916379761065575847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264499.P2916379761065575847

/-! ## A264499.P10214916659040634585

`∩[A025298(n+1), A248712(n+1)]`
-/

namespace A264499.P10214916659040634585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264499.P10214916659040634585

/-! ## A264499.P11204995225186013615

`∩[A025299(n+1), A248712(n+1)]`
-/

namespace A264499.P11204995225186013615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264499.P11204995225186013615

/-! ## A264499.P15909030629576596357

`∩[A097282(n+1), A248712(n+1)]`
-/

namespace A264499.P15909030629576596357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264499.P15909030629576596357

/-! ## A264499.P16070717604089632638

`∩[A025315(n+1), A248712(n+1)]`
-/

namespace A264499.P16070717604089632638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264499.P16070717604089632638

/-! ## A264499.P4691491475801855091

`∩[A025296(n+1), A248712(n+1)]`
-/

namespace A264499.P4691491475801855091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264499.P4691491475801855091

