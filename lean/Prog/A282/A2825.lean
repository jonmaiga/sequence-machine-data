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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A282500: Expansion of 1/(1 - Sum_{k = i^j, i>=1, j>=2} x^k).

The programs for A282500, there is no canonical definition to state claims against.
-/

/-! ## A282500.P7997288272087325634

`A000196(or(A177794(n+2), A326882(2*n)))`
-/

namespace A282500.P7997288272087325634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lor (A177794 (n + 2)) (A326882 (2 * n))).toNat

end

end A282500.P7997288272087325634

/-!
# A282501: Numerator of Sum_{i = 1..n} (if(isprime(i), 0, 1/i)).

The programs for A282501, there is no canonical definition to state claims against.
-/

/-! ## A282501.P17249314814287248557

`A282511(∑[∏{p}[n+1, C(#%n, #)]])`
-/

namespace A282501.P17249314814287248557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282511 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282501.P17249314814287248557

/-! ## A282501.P18371897416734024965

`A282511(∑[C(n, ∑{p}[n+1, C(#, n)])])`
-/

namespace A282501.P18371897416734024965
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282511 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282501.P18371897416734024965

/-! ## A282501.P10995747968092643219

`A282511(n+1-∑[C(C(2, ∑{e}[n+1, #]), 2)])`
-/

namespace A282501.P10995747968092643219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282511 (n + 1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282501.P10995747968092643219

/-! ## A282501.P10214391527094634776

`A282511(A062298(n+1))`
-/

namespace A282501.P10214391527094634776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282511 (A062298 (n + 1)).toNat

end

end A282501.P10214391527094634776

/-! ## A282501.P1971578247593416153

`A282511(∑[A005171(n+1)])`
-/

namespace A282501.P1971578247593416153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282511 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282501.P1971578247593416153

/-!
# A282502: Expansion of 1/(1 - Sum_{k>=0} x^(3*k*(k+1)/2+1)).

The programs for A282502, there is no canonical definition to state claims against.
-/

/-! ## A282502.P4911220289381349677

`or(A025435(A303668(n)), A282582(n))`
-/

namespace A282502.P4911220289381349677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025435 (A303668 n).toNat) (A282582 n)

end

end A282502.P4911220289381349677

/-! ## A282502.P6566523060651011233

`A282582(n)+A144200(A005708(n))`
-/

namespace A282502.P6566523060651011233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282582 n + A144200 (A005708 n).toNat

end

end A282502.P6566523060651011233

/-!
# A282503: Denominator of Sum_{i = 1..n} (if(isprime(i), 0, 1/i)).

The programs for A282503, there is no canonical definition to state claims against.
-/

/-! ## A282503.P14683736403974611287

`A282512(A062298(n+1))`
-/

namespace A282503.P14683736403974611287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282512 (A062298 (n + 1)).toNat

end

end A282503.P14683736403974611287

/-! ## A282503.P14066401899201039171

`A282512(∑[A005171(n+1)])`
-/

namespace A282503.P14066401899201039171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282512 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282503.P14066401899201039171

/-! ## A282503.P5372690342670478905

`A282512(A065855(n+1)+1)`
-/

namespace A282503.P5372690342670478905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282512 (A065855 (n + 1) + 1).toNat

end

end A282503.P5372690342670478905

/-! ## A282503.P3650713815772825911

`A282512(1-A000720(n+1)+n)`
-/

namespace A282503.P3650713815772825911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282512 (1 - A000720 (n + 1) + (n : ℤ)).toNat

end

end A282503.P3650713815772825911

/-! ## A282503.P249549812335989302

`A115838(A120690(n+1))`
-/

namespace A282503.P249549812335989302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115838 (A120690 (n + 1)).toNat

end

end A282503.P249549812335989302

/-!
# A282504: Expansion of 1/(1 - Sum_{k>=0} x^(2*k*(k+1)+1)).

The programs for A282504, there is no canonical definition to state claims against.
-/

/-! ## A282504.P4753585962109517561

`A133137(A322340(n))`
-/

namespace A282504.P4753585962109517561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A322340 n).toNat

end

end A282504.P4753585962109517561

/-! ## A282504.P12146331511521779187

`A322340(n)-∑[A178798(A131689(n))]`
-/

namespace A282504.P12146331511521779187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A131689 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322340 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282504.P12146331511521779187

/-! ## A282504.P5540926019749422744

`A322340(n)+A030308(A098841(n+1))`
-/

namespace A282504.P5540926019749422744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322340 n + A030308 (A098841 (n + 1)).toNat

end

end A282504.P5540926019749422744

/-! ## A282504.P5648455397518236512

`A343779(A181324(n)+1)`
-/

namespace A282504.P5648455397518236512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343779 (A181324 n + 1).toNat

end

end A282504.P5648455397518236512

/-! ## A282504.P14048854834422671565

`A281116(A138815(n+1))+A003520(n)`
-/

namespace A282504.P14048854834422671565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A138815 (n + 1)).toNat + A003520 n

end

end A282504.P14048854834422671565

/-!
# A282505: Numbers k such that (5*10^k - 29)/3 is prime.

The programs for A282505, there is no canonical definition to state claims against.
-/

/-! ## A282505.P16267115378981405689

`∑[A349841(A349975(n))]`
-/

namespace A282505.P16267115378981405689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349841 (A349975 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282505.P16267115378981405689

/-! ## A282505.P11858448149759979044

`∑[A261351(A291168(n²))]`
-/

namespace A282505.P11858448149759979044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261351 (A291168 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282505.P11858448149759979044

/-! ## A282505.P15663615324908548914

`∑[A193739(∏[A051052(n)])]`
-/

namespace A282505.P15663615324908548914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051052 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282505.P15663615324908548914

/-! ## A282505.P12876651132882153846

`∑[A194035(A146805(n+1))]`
-/

namespace A282505.P12876651132882153846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194035 (A146805 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282505.P12876651132882153846

/-! ## A282505.P11795802038455098174

`∑[A193739(A052778(n)/6)]`
-/

namespace A282505.P11795802038455098174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (SequenceMachineLib.roundAway ((A052778 n : ℚ) / 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282505.P11795802038455098174

/-!
# A282507: Triangular array read by rows. T(n,k) is the number of chain topologies on an n-set with exactly k open sets where one of the open sets is a single point set, n >= 2, 3 <= k <= n+1.

The programs for A282507, the canonical program `A282507.P5523561072916598635` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282507 has offset 2).

The definition of A282507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282507.P13907437864024226985

`(comp[∑[n]]-n)*A019538(n+1)`
-/

namespace A282507.P13907437864024226985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A019538 (n + 1)

end

end A282507.P13907437864024226985

namespace A282507

/-- `(comp[∑[n]]-n)*A019538(n+1)` -/
def P13907437864024226985.Spec : Prop :=
  ∀ n, P13907437864024226985.a n = A282507 (n + 2)

end A282507

/-! ## A282507.P2279793135528182849

`(comp[∑[n]]-n)*A131689(comp[∑[n]])`
-/

namespace A282507.P2279793135528182849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A131689 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

end

end A282507.P2279793135528182849

namespace A282507

/-- `(comp[∑[n]]-n)*A131689(comp[∑[n]])` -/
def P2279793135528182849.Spec : Prop :=
  ∀ n, P2279793135528182849.a n = A282507 (n + 2)

end A282507

/-! ## A282507.P18098864387315367403

`(comp[∑[n]]-n)*A090582(∑[char[∑[n]]]²-n)`
-/

namespace A282507.P18098864387315367403
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
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A090582 ((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 - n)

end

end A282507.P18098864387315367403

namespace A282507

/-- `(comp[∑[n]]-n)*A090582(∑[char[∑[n]]]²-n)` -/
def P18098864387315367403.Spec : Prop :=
  ∀ n, P18098864387315367403.a n = A282507 (n + 2)

end A282507

/-! ## A282507.P5523561072916598635

`A019538(n+1)*A003057(n+2)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A282507

/-- `A019538(n+1)*A003057(n+2)` -/
def P5523561072916598635.Spec : Prop :=
  ∀ n, P5523561072916598635.a n = A282507 (n + 2)

theorem P5523561072916598635.correct : P5523561072916598635.Spec := by
  intro n
  simp only [A282507, Nat.add_sub_cancel]

end A282507

/-! ## A282507.P18387278199310090174

`A028246(n+1)*A075362(comp[∑[n]])`
-/

namespace A282507.P18387278199310090174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (n + 1) * A075362 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A282507.P18387278199310090174

namespace A282507

/-- `A028246(n+1)*A075362(comp[∑[n]])` -/
def P18387278199310090174.Spec : Prop :=
  ∀ n, P18387278199310090174.a n = A282507 (n + 2)

end A282507

/-!
# A282509: a(n) is the largest number such that every subsequence of digits of the number written in base n is prime.

The programs for A282509, there is no canonical definition to state claims against.
-/

/-! ## A282509.P5010997605393664355

`p?[record[A145064(A106351(n+1))]]`
-/

namespace A282509.P5010997605393664355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (A106351 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282509.P5010997605393664355

/-! ## A282509.P14700991395970992684

`A245277(n+3)%A141214(A000079(n))`
-/

namespace A282509.P14700991395970992684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245277 (n + 3)) (A141214 (A000079 n).toNat)

end

end A282509.P14700991395970992684

/-!
# A282510: Irregular triangle T(n,k) read by rows: Each term is the least positive integer such that no row, column, diagonal, or antidiagonal contains a repeated term; and each row terminates at k when it contains all numbers <= k.

The programs for A282510, there is no canonical definition to state claims against.
-/

/-! ## A282510.P15822645527321958208

`gcd(record[A144358(n+1)], A291266(3*(n+1)))`
-/

namespace A282510.P15822645527321958208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144358 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A291266 (3 * (n + 1)))

end

end A282510.P15822645527321958208

/-! ## A282510.P346182972066016045

`A001222(xor(A051548(n), A051573(n+4)))`
-/

namespace A282510.P346182972066016045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor (A051548 n) (A051573 (n + 4))).toNat

end

end A282510.P346182972066016045

/-! ## A282510.P15284684493559091400

`A001222(or(A173220(n), A218842(3*n+5)))`
-/

namespace A282510.P15284684493559091400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A173220 n) (A218842 (3 * n + 5))).toNat

end

end A282510.P15284684493559091400

/-!
# A282511: Numerator of the sum of the reciprocals of the first n nonprimes.

The programs for A282511, there is no canonical definition to state claims against.
-/

/-! ## A282511.P15060891869879816111

`A282501(lt[1, ∑{e}[n+1, #]])`
-/

namespace A282511.P15060891869879816111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282501 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A282511.P15060891869879816111

/-! ## A282511.P778570469730330784

`A282501(lt[2, ∏{e}[n+1, #+1]])`
-/

namespace A282511.P778570469730330784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282501 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A282511.P778570469730330784

/-! ## A282511.P16184197978607295393

`A282501(Δ[A051349(n)])`
-/

namespace A282511.P16184197978607295393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282501 (f1 (n + 1) - f1 n).toNat

end

end A282511.P16184197978607295393

/-! ## A282511.P3935265148686211947

`A282501(A018252(n+1))`
-/

namespace A282511.P3935265148686211947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282501 (A018252 (n + 1)).toNat

end

end A282511.P3935265148686211947

/-! ## A282511.P5805473788167915406

`A282501(A072668(n+1))`
-/

namespace A282511.P5805473788167915406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282501 (A072668 (n + 1)).toNat

end

end A282511.P5805473788167915406

/-!
# A282512: Denominator of the sum of the reciprocals of the first n nonprimes.

The programs for A282512, there is no canonical definition to state claims against.
-/

/-! ## A282512.P15792835445380886769

`A282503(A018252(n+1))`
-/

namespace A282512.P15792835445380886769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (A018252 (n + 1)).toNat

end

end A282512.P15792835445380886769

/-! ## A282512.P1123061776882153858

`A282503(A072668(n+1))`
-/

namespace A282512.P1123061776882153858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (A072668 (n + 1)).toNat

end

end A282512.P1123061776882153858

/-! ## A282512.P9351114265413079194

`A282503(A060462(n+2))`
-/

namespace A282512.P9351114265413079194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (A060462 (n + 2)).toNat

end

end A282512.P9351114265413079194

/-! ## A282512.P13129446721158412737

`A282503(A065090(n+2))`
-/

namespace A282512.P13129446721158412737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (A065090 (n + 2)).toNat

end

end A282512.P13129446721158412737

/-! ## A282512.P13231915920374549284

`A282503(A141468(n+2))`
-/

namespace A282512.P13231915920374549284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (A141468 (n + 2)).toNat

end

end A282512.P13231915920374549284

/-! ## A282512.P15571493386079338719

`A282503(A166460(n+2))`
-/

namespace A282512.P15571493386079338719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (A166460 (n + 2)).toNat

end

end A282512.P15571493386079338719

/-! ## A282512.P15266987857770372554

`A282503(A002808(n+1)-1)`
-/

namespace A282512.P15266987857770372554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (A002808 (n + 1) - 1).toNat

end

end A282512.P15266987857770372554

/-! ## A282512.P3832314469794966632

`A282503(comp[A006530(n+1)-1])`
-/

namespace A282512.P3832314469794966632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A282512.P3832314469794966632

/-! ## A282512.P16687829083211669115

`A282503(comp[A014963(n+1)-1])`
-/

namespace A282512.P16687829083211669115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A282512.P16687829083211669115

/-! ## A282512.P17162014695027047074

`A282503(A171504(n+1)-(n+1))`
-/

namespace A282512.P17162014695027047074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (A171504 (n + 1) - (n + 1 : ℤ)).toNat

end

end A282512.P17162014695027047074

/-! ## A282512.P10726572758544488471

`A282503(A171523(n+1)/(n+1))`
-/

namespace A282512.P10726572758544488471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (SequenceMachineLib.roundAway ((A171523 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A282512.P10726572758544488471

/-! ## A282512.P15280363179271830507

`A282503(A051349(n+1)-A051349(n))`
-/

namespace A282512.P15280363179271830507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (A051349 (n + 1) - A051349 n).toNat

end

end A282512.P15280363179271830507

/-! ## A282512.P10288665518186631572

`A282503(A000720(A002808(n+1))+n+1)`
-/

namespace A282512.P10288665518186631572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282503 (A000720 (A002808 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A282512.P10288665518186631572

/-!
# A282513: a(n) = floor((3*n + 2)^2/24 + 1/3).

The programs for A282513, the canonical program `A282513.P17319622673382565888` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282513 has offset 0).

The definition of A282513 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((3*n+2)²/24+1/3)` (program `A282513.P17319622673382565888`, by `A282513.P17319622673382565888.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A282513.P17319622673382565888

`floor((3*n+2)²/24+1/3)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282513

/-- `floor((3*n+2)²/24+1/3)` -/
def P17319622673382565888.Spec : Prop :=
  ∀ n, P17319622673382565888.a n = A282513 n

theorem P17319622673382565888.correct : P17319622673382565888.Spec := by
  intro n
  simp only [A282513]

end A282513

/-! ## A282513.P6387890275204817337

`ogf((x+x^2+x^4)/(1-2x+x^2-x^4+2x^5-x^6))`
-/

namespace A282513.P6387890275204817337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 0, 1] [1, -2, 1, 0, -1, 2, -1] n

end

end A282513.P6387890275204817337

namespace A282513

/-- `ogf((x+x^2+x^4)/(1-2x+x^2-x^4+2x^5-x^6))` -/
def P6387890275204817337.Spec : Prop :=
  ∀ n, P6387890275204817337.a n = A282513 n

end A282513

/-! ## A282513.P17866736380794169528

`(6*n²+8*n+3+cos(n*π)-4*cos(n*π/2))/16`
-/

namespace A282513.P17866736380794169528
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((6 * n ^ 2 + 8 * n + 3 : ℝ) + Real.cos ((n : ℝ) * Real.pi) - 4 * Real.cos ((n : ℝ) * Real.pi / 2)) / 16

end

end A282513.P17866736380794169528

namespace A282513

/-- `(6*n²+8*n+3+cos(n*π)-4*cos(n*π/2))/16` -/
def P17866736380794169528.Spec : Prop :=
  ∀ n, P17866736380794169528.a n = (A282513 n : ℝ)

end A282513

/-! ## A282513.P13403694393816788529

`2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=8, a(5)=12`
-/

namespace A282513.P13403694393816788529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 5, 8, 12] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 4) - 2 * a (n - 5) + a (n - 6)

end

end A282513.P13403694393816788529

namespace A282513

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P13403694393816788529.Spec : Prop :=
  ∀ n, P13403694393816788529.a n = A282513 n

end A282513

/-! ## A282513.P11116956811164076979

`A130519(n+3)+A130519(n+2)+A130519(n)`
-/

namespace A282513.P11116956811164076979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (n + 3) + A130519 (n + 2) + A130519 n

end

end A282513.P11116956811164076979

namespace A282513

/-- `A130519(n+3)+A130519(n+2)+A130519(n)` -/
def P11116956811164076979.Spec : Prop :=
  ∀ n, P11116956811164076979.a n = A282513 n

end A282513

/-! ## A282513.P7649509956964455102

`ceil(∑[(∑[n%2]+n)/2])`
-/

namespace A282513.P7649509956964455102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + n : ℕ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A282513.P7649509956964455102

namespace A282513

/-- `ceil(∑[(∑[n%2]+n)/2])` -/
def P7649509956964455102.Spec : Prop :=
  ∀ n, P7649509956964455102.a n = A282513 n

end A282513

/-! ## A282513.P3870844628216242357

`ceil(∑[∑[and(1, n)]+n]/2)`
-/

namespace A282513.P3870844628216242357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌉

end

end A282513.P3870844628216242357

namespace A282513

/-- `ceil(∑[∑[and(1, n)]+n]/2)` -/
def P3870844628216242357.Spec : Prop :=
  ∀ n, P3870844628216242357.a n = A282513 n

end A282513

/-! ## A282513.P10458721792318951442

`∑[a(n-4)+3]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A282513.P10458721792318951442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2] fun n f1 =>
  f1 (n - 4) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282513.P10458721792318951442

namespace A282513

/-- `∑[a(n-4)+3]` -/
def P10458721792318951442.Spec : Prop :=
  ∀ n, (P10458721792318951442.a n : ℤ) = A282513 n

end A282513

/-! ## A282513.P3538421905655541182

`∑[∑[a(n-4)²]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A282513.P3538421905655541182
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0, 1] fun n f2 =>
  f2 (n - 4) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282513.P3538421905655541182

namespace A282513

/-- `∑[∑[a(n-4)²]]` -/
def P3538421905655541182.Spec : Prop :=
  ∀ n, (P3538421905655541182.a n : ℤ) = A282513 n

end A282513

/-! ## A282513.P11279112804583288277

`∑[∑[floor(a(n-4))]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A282513.P11279112804583288277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0, 1] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282513.P11279112804583288277

namespace A282513

/-- `∑[∑[floor(a(n-4))]]` -/
def P11279112804583288277.Spec : Prop :=
  ∀ n, (P11279112804583288277.a n : ℤ) = A282513 n

end A282513

/-! ## A282513.P3585622315584111233

`∑[∑[a(n-4)^3]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A282513.P3585622315584111233
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0, 1] fun n f2 =>
  f2 (n - 4) ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282513.P3585622315584111233

namespace A282513

/-- `∑[∑[a(n-4)^3]]` -/
def P3585622315584111233.Spec : Prop :=
  ∀ n, (P3585622315584111233.a n : ℤ) = A282513 n

end A282513

/-! ## A282513.P2892553665838060322

`a(n-1)-floor((1-3*n)/4)` with `a(0)=0`
-/

namespace A282513.P2892553665838060322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ⌊(1 - (3 * n : ℤ) : ℚ) / 4⌋

end

end A282513.P2892553665838060322

namespace A282513

/-- `a(n-1)-floor((1-3*n)/4)` -/
def P2892553665838060322.Spec : Prop :=
  ∀ n, P2892553665838060322.a n = A282513 n

end A282513

/-! ## A282513.P7380045838357429707

`a(n-1)-floor((n+1)/4)+n` with `a(0)=0`
-/

namespace A282513.P7380045838357429707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ⌊(n + 1 : ℚ) / 4⌋ + (n : ℤ)

end

end A282513.P7380045838357429707

namespace A282513

/-- `a(n-1)-floor((n+1)/4)+n` -/
def P7380045838357429707.Spec : Prop :=
  ∀ n, P7380045838357429707.a n = A282513 n

end A282513

/-! ## A282513.P1140295022802317794

`round(A001859(n)/2)`
-/

namespace A282513.P1140295022802317794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001859 n : ℚ) / 2)

end

end A282513.P1140295022802317794

namespace A282513

/-- `round(A001859(n)/2)` -/
def P1140295022802317794.Spec : Prop :=
  ∀ n, P1140295022802317794.a n = A282513 n

end A282513

/-! ## A282513.P11318619514314172837

`round(∑[A007494(n)/2])`
-/

namespace A282513.P11318619514314172837
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007494 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282513.P11318619514314172837

namespace A282513

/-- `round(∑[A007494(n)/2])` -/
def P11318619514314172837.Spec : Prop :=
  ∀ n, P11318619514314172837.a n = A282513 n

end A282513

/-! ## A282513.P8383062893300257404

`round(Δ[A045947(n)/2])`
-/

namespace A282513.P8383062893300257404
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045947 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A282513.P8383062893300257404

namespace A282513

/-- `round(Δ[A045947(n)/2])` -/
def P8383062893300257404.Spec : Prop :=
  ∀ n, P8383062893300257404.a n = A282513 n

end A282513

/-! ## A282513.P4995458038078037855

`round((A238377(n)-1)/2)`
-/

namespace A282513.P4995458038078037855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A238377 n - 1 : ℚ) / 2)

end

end A282513.P4995458038078037855

namespace A282513

/-- `round((A238377(n)-1)/2)` -/
def P4995458038078037855.Spec : Prop :=
  ∀ n, P4995458038078037855.a n = A282513 n

end A282513

/-! ## A282513.P13262183427234210764

`ceil((A077043(n)+n)/2)`
-/

namespace A282513.P13262183427234210764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077043 n + (n : ℤ) : ℚ) / 2⌉

end

end A282513.P13262183427234210764

namespace A282513

/-- `ceil((A077043(n)+n)/2)` -/
def P13262183427234210764.Spec : Prop :=
  ∀ n, P13262183427234210764.a n = A282513 n

end A282513

/-! ## A282513.P542630910503655442

`∑[A047379(n+1)-n]`
-/

namespace A282513.P542630910503655442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047379 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282513.P542630910503655442

namespace A282513

/-- `∑[A047379(n+1)-n]` -/
def P542630910503655442.Spec : Prop :=
  ∀ n, P542630910503655442.a n = A282513 n

end A282513

/-! ## A282513.P1049339299235096279

`∑[n]-A130519(n+1)`
-/

namespace A282513.P1049339299235096279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A130519 (n + 1)

end

end A282513.P1049339299235096279

namespace A282513

/-- `∑[n]-A130519(n+1)` -/
def P1049339299235096279.Spec : Prop :=
  ∀ n, P1049339299235096279.a n = A282513 n

end A282513

/-!
# A282514: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 485", based on the 5-celled von Neumann neighborhood.

The programs for A282514, there is no canonical definition to state claims against.
-/

/-! ## A282514.P17207362062893654213

`or(2^val(n+1, 2), A279824(A046469(n)))`
-/

namespace A282514.P17207362062893654213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A279824 (A046469 n).toNat)

end

end A282514.P17207362062893654213

/-! ## A282514.P10069456435534822070

`or(2^val(n+1, 2), A279824(A087051(n)))`
-/

namespace A282514.P10069456435534822070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A279824 (A087051 n).toNat)

end

end A282514.P10069456435534822070

/-! ## A282514.P2671522592477786364

`or(2^val(n+1, 2), A279824(A004893(n+1)))`
-/

namespace A282514.P2671522592477786364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A279824 (A004893 (n + 1)).toNat)

end

end A282514.P2671522592477786364

/-! ## A282514.P518093508211052648

`or(2^val(n+1, 2), A279824(A004904(n+1)))`
-/

namespace A282514.P518093508211052648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A279824 (A004904 (n + 1)).toNat)

end

end A282514.P518093508211052648

/-! ## A282514.P7794155498819034490

`or(2^val(n+1, 2), A279824(A004915(n+1)))`
-/

namespace A282514.P7794155498819034490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A279824 (A004915 (n + 1)).toNat)

end

end A282514.P7794155498819034490

/-!
# A282515: Numbers m such that phi(sum of the divisors of m) = phi(sum of the distinct prime divisors of m) where phi is the Euler totient function.

The programs for A282515, there is no canonical definition to state claims against.
-/

/-! ## A282515.P845473935852443634

`A284202(n+1)-A002487(A284204(n+1))`
-/

namespace A282515.P845473935852443634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284202 (n + 1) - A002487 (A284204 (n + 1)).toNat

end

end A282515.P845473935852443634

/-! ## A282515.P13436212441633793040

`A284202(A100793(n))`
-/

namespace A282515.P13436212441633793040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284202 (A100793 n).toNat

end

end A282515.P13436212441633793040

/-!
# A282516: Number T(n,k) of k-element subsets of [n] having a prime element sum; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A282516, there is no canonical definition to state claims against.
-/

/-! ## A282516.P11543122927265877928

`A188172(A052905(n)*A086645(n))`
-/

namespace A282516.P11543122927265877928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188172 (A052905 n * A086645 n).toNat

end

end A282516.P11543122927265877928

/-! ## A282516.P10827780297556269748

`and(A008687(A174412(n)), A036642(n))`
-/

namespace A282516.P10827780297556269748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008687 (A174412 n).toNat) (A036642 n)

end

end A282516.P10827780297556269748

/-! ## A282516.P4013955303515161718

`and(A036642(n), A136610(A152654(n)))`
-/

namespace A282516.P4013955303515161718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036642 n) (A136610 (A152654 n).toNat)

end

end A282516.P4013955303515161718

/-! ## A282516.P16388459435994187364

`A342001(A318287(n+1)^A353846(n))`
-/

namespace A282516.P16388459435994187364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (SequenceMachineLib.roundAway ((A318287 (n + 1) : ℚ) ^ (A353846 n : ℤ))).toNat

end

end A282516.P16388459435994187364

/-!
# A282517: Number of n-element subsets of [2n] having a prime element sum.

The programs for A282517, there is no canonical definition to state claims against.
-/

/-! ## A282517.P10971802371846743086

`A282516(C(2*n+1, 2)+n)`
-/

namespace A282517.P10971802371846743086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (Nat.choose (2 * n + 1) 2 + n)

end

end A282517.P10971802371846743086

/-! ## A282517.P4537289769485355457

`A282516(∑[4*n])`
-/

namespace A282517.P4537289769485355457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282517.P4537289769485355457

/-! ## A282517.P15654280236436577663

`record[A282516(n*A003982(n))]`
-/

namespace A282517.P15654280236436577663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 ((n : ℤ) * A003982 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282517.P15654280236436577663

/-! ## A282517.P4012022307068728777

`record[A282516(n*A008619(n))]`
-/

namespace A282517.P4012022307068728777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282517.P4012022307068728777

/-! ## A282517.P13501846499085468935

`record[A282516((n+1)*A004524(n))]`
-/

namespace A282517.P13501846499085468935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 ((n + 1 : ℤ) * A004524 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282517.P13501846499085468935

/-! ## A282517.P6032113064969324489

`record[A282516((n+1)*A004526(n))]`
-/

namespace A282517.P6032113064969324489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 ((n + 1 : ℤ) * A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282517.P6032113064969324489

/-! ## A282517.P2353011482715425775

`record[A282516(A057979(n²))]`
-/

namespace A282517.P2353011482715425775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (A057979 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282517.P2353011482715425775

/-!
# A282518: Number of n-element subsets of [n+1] having a prime element sum.

The programs for A282518, there is no canonical definition to state claims against.
-/

/-! ## A282518.P12311085418775943371

`A066888(char[1]+n)+char[2]`
-/

namespace A282518.P12311085418775943371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 ((if ∃ j, f1 j = n then 1 else 0) + n) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A282518.P12311085418775943371

/-! ## A282518.P18102698342954709206

`A066888(char[1]-(char[2]-n))`
-/

namespace A282518.P18102698342954709206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A282518.P18102698342954709206

/-! ## A282518.P13811454409001297714

`A197870(A100484(1+n))+A066888(n)`
-/

namespace A282518.P13811454409001297714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 (A100484 (1 + n)).toNat + A066888 n

end

end A282518.P13811454409001297714

/-! ## A282518.P5652723211923665695

`Δ[A000720(A065383(n))]`
-/

namespace A282518.P5652723211923665695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A065383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282518.P5652723211923665695

/-! ## A282518.P11509388874205845002

`Δ[A000720(A000124(n)-A088978(n+1))]`
-/

namespace A282518.P11509388874205845002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000124 n - A088978 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282518.P11509388874205845002

/-! ## A282518.P63503886769952978

`Δ[A061395(2*A065383(n))]`
-/

namespace A282518.P63503886769952978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A065383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282518.P63503886769952978

/-! ## A282518.P16223432668628307370

`A282516(∑[n+2]-1)`
-/

namespace A282518.P16223432668628307370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A282518.P16223432668628307370

/-! ## A282518.P14027044569265429076

`Δ[A000720(A007918(∑[n]))]`
-/

namespace A282518.P14027044569265429076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007918 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282518.P14027044569265429076

/-! ## A282518.P17708900031174129980

`Δ[A061395(A007918((n+1)*n/2))]`
-/

namespace A282518.P17708900031174129980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A007918 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n : ℚ) / 2))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282518.P17708900031174129980

/-! ## A282518.P4243326959359816306

`Δ[A242096(n²+abs(1-n))]`
-/

namespace A282518.P4243326959359816306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 ((n ^ 2 : ℤ) + |1 - (n : ℤ)|).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282518.P4243326959359816306

/-!
# A282520: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 517", based on the 5-celled von Neumann neighborhood.

The programs for A282520, there is no canonical definition to state claims against.
-/

/-! ## A282520.P9692786857644761669

`A007088(A282599(n))`
-/

namespace A282520.P9692786857644761669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282599 n).toNat

end

end A282520.P9692786857644761669

/-! ## A282520.P10447311886328286087

`A305989(A282825(n)/A031242(n+1))`
-/

namespace A282520.P10447311886328286087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A282825 n : ℚ) / (A031242 (n + 1) : ℚ))).toNat

end

end A282520.P10447311886328286087

/-! ## A282520.P2604866347983170408

`A305989(A282825(n))`
-/

namespace A282520.P2604866347983170408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A282825 n).toNat

end

end A282520.P2604866347983170408

/-! ## A282520.P462594269997242418

`A185544(2*A282599(n))`
-/

namespace A282520.P462594269997242418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282599 n).toNat

end

end A282520.P462594269997242418

/-! ## A282520.P2397175418771604869

`A185544(lcm(2, A282599(n)))`
-/

namespace A282520.P2397175418771604869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A282599 n))

end

end A282520.P2397175418771604869

/-!
# A282521: Number of n X n 0..1 arrays with no 1 equal to more than two of its king-move neighbors.

The programs for A282521, there is no canonical definition to state claims against.
-/

/-! ## A282521.P3437031603128153447

`A282528(∑[4*n]+1)`
-/

namespace A282521.P3437031603128153447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A282521.P3437031603128153447

/-! ## A282521.P16461222896396707201

`record[gcd(A114327(n), A282528(n+1))]`
-/

namespace A282521.P16461222896396707201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A282528 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282521.P16461222896396707201

/-! ## A282521.P1065269445786361105

`A052307(n)*A282528(A001844(n))`
-/

namespace A282521.P1065269445786361105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 n * A282528 (A001844 n).toNat

end

end A282521.P1065269445786361105

/-! ## A282521.P7005954845703605330

`lcm(A249095(n), A282528(A001844(n)))`
-/

namespace A282521.P7005954845703605330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A249095 n) (A282528 (A001844 n).toNat)

end

end A282521.P7005954845703605330

/-! ## A282521.P11580481031222180622

`A000041(C(2, n+2))*A282528(A001844(n))`
-/

namespace A282521.P11580481031222180622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A282528 (A001844 n).toNat

end

end A282521.P11580481031222180622

/-!
# A282522: Number of nX2 0..1 arrays with no 1 equal to more than two of its king-move neighbors.

The programs for A282522, the canonical program `A282522.P7029647624613744023` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282522 has offset 1).

The definition of A282522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282522.P5409079101146528406

`ogf((4+3x-6x^2-8x^3)/(1-3x-x^2-2x^3+8x^4))`
-/

namespace A282522.P5409079101146528406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3, -6, -8] [1, -3, -1, -2, 8] n

end

end A282522.P5409079101146528406

namespace A282522

/-- `ogf((4+3x-6x^2-8x^3)/(1-3x-x^2-2x^3+8x^4))` -/
def P5409079101146528406.Spec : Prop :=
  ∀ n, P5409079101146528406.a n = A282522 (n + 1)

end A282522

/-! ## A282522.P7029647624613744023

`3*a(n-1)+a(n-2)+2*a(n-3)-8*a(n-4)` with `a(0)=4, a(1)=15, a(2)=43, a(3)=144`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282522

/-- `3*a(n-1)+a(n-2)+2*a(n-3)-8*a(n-4)` -/
def P7029647624613744023.Spec : Prop :=
  ∀ n, P7029647624613744023.a n = A282522 (n + 1)

theorem P7029647624613744023.correct : P7029647624613744023.Spec := by
  intro n
  simp only [A282522, Nat.add_sub_cancel]

end A282522

/-! ## A282522.P15899472286318029289

`A282528(∑[n+1]+2)`
-/

namespace A282522.P15899472286318029289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A282522.P15899472286318029289

namespace A282522

/-- `A282528(∑[n+1]+2)` -/
def P15899472286318029289.Spec : Prop :=
  ∀ n, P15899472286318029289.a n = A282522 (n + 1)

end A282522

/-! ## A282522.P9117406905914703709

`A282528(A133263(n+1))+A007814(2*n+1)`
-/

namespace A282522.P9117406905914703709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (A133263 (n + 1)).toNat + A007814 (2 * n + 1)

end

end A282522.P9117406905914703709

namespace A282522

/-- `A282528(A133263(n+1))+A007814(2*n+1)` -/
def P9117406905914703709.Spec : Prop :=
  ∀ n, P9117406905914703709.a n = A282522 (n + 1)

end A282522

/-! ## A282522.P12910900222382979255

`A282528(A000096(n)+3)/A001221(A137688(3*n+1))`
-/

namespace A282522.P12910900222382979255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282528 (A000096 n + 3).toNat : ℚ) / (A001221 (A137688 (3 * n + 1)).toNat : ℚ)

end

end A282522.P12910900222382979255

namespace A282522

/-- `A282528(A000096(n)+3)/A001221(A137688(3*n+1))` -/
def P12910900222382979255.Spec : Prop :=
  ∀ n, P12910900222382979255.a n = (A282522 (n + 1) : ℚ)

end A282522

/-!
# A282523: Number of n X 3 0..1 arrays with no 1 equal to more than two of its king-move neighbors.

The programs for A282523, the canonical program `A282523.P6262675445886862830` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282523 has offset 1).

The definition of A282523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282523.P6262675445886862830

`ogf((8+3x-25x^2-11x^3+13x^4-2x^5+4x^6+6x^7)/(1-5x-2x^2+x^3+24x^4-13x^5+2x^7-6x^8))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282523

/-- `ogf((8+3x-25x^2-11x^3+13x^4-2x^5+4x^6+6x^7)/(1-5x-2x^2+x^3+24x^4-13x^5+2x^7-6x^8))` -/
def P6262675445886862830.Spec : Prop :=
  ∀ n, P6262675445886862830.a n = A282523 (n + 1)

theorem P6262675445886862830.correct : P6262675445886862830.Spec := by
  intro n
  simp only [A282523, Nat.add_sub_cancel]

end A282523

/-! ## A282523.P4091588817595133778

`A282528(∑[n+2]+4)`
-/

namespace A282523.P4091588817595133778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282523.P4091588817595133778

namespace A282523

/-- `A282528(∑[n+2]+4)` -/
def P4091588817595133778.Spec : Prop :=
  ∀ n, P4091588817595133778.a n = A282523 (n + 1)

end A282523

/-! ## A282523.P7693576375778033819

`A282528(A167614(n+1))+A185237(n)`
-/

namespace A282523.P7693576375778033819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (A167614 (n + 1)).toNat + A185237 n

end

end A282523.P7693576375778033819

namespace A282523

/-- `A282528(A167614(n+1))+A185237(n)` -/
def P7693576375778033819.Spec : Prop :=
  ∀ n, P7693576375778033819.a n = A282523 (n + 1)

end A282523

/-! ## A282523.P17384034205265008986

`A282528(A167614(n+1))+A185246(n)`
-/

namespace A282523.P17384034205265008986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (A167614 (n + 1)).toNat + A185246 n

end

end A282523.P17384034205265008986

namespace A282523

/-- `A282528(A167614(n+1))+A185246(n)` -/
def P17384034205265008986.Spec : Prop :=
  ∀ n, P17384034205265008986.a n = A282523 (n + 1)

end A282523

/-! ## A282523.P6271234827565889071

`A282528(A167614(n+1))%A187078(n)`
-/

namespace A282523.P6271234827565889071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282528 (A167614 (n + 1)).toNat) (A187078 n)

end

end A282523.P6271234827565889071

namespace A282523

/-- `A282528(A167614(n+1))%A187078(n)` -/
def P6271234827565889071.Spec : Prop :=
  ∀ n, P6271234827565889071.a n = A282523 (n + 1)

end A282523

/-!
# A282524: Number of nX4 0..1 arrays with no 1 equal to more than two of its king-move neighbors.

The programs for A282524, there is no canonical definition to state claims against.
-/

/-! ## A282524.P17447090408078111054

`A282528(A374004(n+1))`
-/

namespace A282524.P17447090408078111054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (A374004 (n + 1)).toNat

end

end A282524.P17447090408078111054

/-! ## A282524.P17283174671205636004

`A282528(A141214(n)+7)`
-/

namespace A282524.P17283174671205636004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (A141214 n + 7).toNat

end

end A282524.P17283174671205636004

/-! ## A282524.P389990349660460390

`A282528(A052905(n)+9)`
-/

namespace A282524.P389990349660460390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (A052905 n + 9).toNat

end

end A282524.P389990349660460390

/-! ## A282524.P16681791999530492232

`A282528(A055999(n)+10)`
-/

namespace A282524.P16681791999530492232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (A055999 n + 10).toNat

end

end A282524.P16681791999530492232

/-! ## A282524.P12635134462400024656

`A282528(A167614(n+2)+1)`
-/

namespace A282524.P12635134462400024656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (A167614 (n + 2) + 1).toNat

end

end A282524.P12635134462400024656

/-!
# A282525: Number of nX5 0..1 arrays with no 1 equal to more than two of its king-move neighbors.

The programs for A282525, there is no canonical definition to state claims against.
-/

/-! ## A282525.P9598270117851582104

`A282528(A374005(n+1))`
-/

namespace A282525.P9598270117851582104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (A374005 (n + 1)).toNat

end

end A282525.P9598270117851582104

/-! ## A282525.P14094311646546063069

`A282528(A056000(n)+15)`
-/

namespace A282525.P14094311646546063069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (A056000 n + 15).toNat

end

end A282525.P14094311646546063069

/-! ## A282525.P9120629181922203678

`A282528(eq[7, A066657(n)])`
-/

namespace A282525.P9120629181922203678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282525.P9120629181922203678

/-! ## A282525.P9464964355142597898

`A282528(A141214(n+1)+8)`
-/

namespace A282525.P9464964355142597898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (A141214 (n + 1) + 8).toNat

end

end A282525.P9464964355142597898

/-! ## A282525.P11414541266085872802

`A282528(A055999(n+1)+11)`
-/

namespace A282525.P11414541266085872802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (A055999 (n + 1) + 11).toNat

end

end A282525.P11414541266085872802

/-!
# A282526: Number of nX6 0..1 arrays with no 1 equal to more than two of its king-move neighbors.

The programs for A282526, there is no canonical definition to state claims against.
-/

/-! ## A282526.P9367627637746916376

`A282528(A374007(n+1))`
-/

namespace A282526.P9367627637746916376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (A374007 (n + 1)).toNat

end

end A282526.P9367627637746916376

/-! ## A282526.P16451970235095154033

`A282528(eq[7, A131818(n+1)])`
-/

namespace A282526.P16451970235095154033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282526.P16451970235095154033

/-! ## A282526.P9383634895539547190

`A282528(Δ[A023545(n+1)]+10)`
-/

namespace A282526.P9383634895539547190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (f1 (n + 1) - f1 n + 10).toNat

end

end A282526.P9383634895539547190

/-! ## A282526.P12651420677013671012

`A282528(Δ[Δ[A006504(n+1)]])`
-/

namespace A282526.P12651420677013671012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (f1 (n + 1) - f1 n).toNat

end

end A282526.P12651420677013671012

/-! ## A282526.P5019483280759216496

`A282528(Δ[A026054(n+3)]+1)`
-/

namespace A282526.P5019483280759216496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (f1 (n + 1) - f1 n + 1).toNat

end

end A282526.P5019483280759216496

/-!
# A282527: Number of n X 7 0..1 arrays with no 1 equal to more than two of its king-move neighbors.

The programs for A282527, there is no canonical definition to state claims against.
-/

/-! ## A282527.P8446673578259497967

`A282528(A374008(n+1))`
-/

namespace A282527.P8446673578259497967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (A374008 (n + 1)).toNat

end

end A282527.P8446673578259497967

/-! ## A282527.P6963232117388101271

`A282528(eq[11, A066657(n)])`
-/

namespace A282527.P6963232117388101271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282527.P6963232117388101271

/-! ## A282527.P4957441372384235930

`A282528(A167499(n+5)+2)`
-/

namespace A282527.P4957441372384235930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (A167499 (n + 5) + 2).toNat

end

end A282527.P4957441372384235930

/-! ## A282527.P6828892057876437466

`A282528(eq[8, A131818(n+1)])`
-/

namespace A282527.P6828892057876437466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282527.P6828892057876437466

/-! ## A282527.P7711977764291507891

`A282528(Δ[A026054(n+3)]+13)`
-/

namespace A282527.P7711977764291507891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282528 (f1 (n + 1) - f1 n + 13).toNat

end

end A282527.P7711977764291507891

/-!
# A282528: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than two of its king-move neighbors.

The programs for A282528, there is no canonical definition to state claims against.
-/

/-! ## A282528.P4847922483375121210

`A081524(A297094(n+1))`
-/

namespace A282528.P4847922483375121210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081524 (A297094 (n + 1)).toNat

end

end A282528.P4847922483375121210

/-! ## A282528.P14589102418546100422

`A267508(A134346(n)+1)`
-/

namespace A282528.P14589102418546100422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267508 (A134346 n + 1).toNat

end

end A282528.P14589102418546100422

/-! ## A282528.P8177308383558060176

`A325118(A297085(n+1))`
-/

namespace A282528.P8177308383558060176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325118 (A297085 (n + 1)).toNat

end

end A282528.P8177308383558060176

/-! ## A282528.P15232108240610064590

`A267508(A297094(n+1)+A185237(n))`
-/

namespace A282528.P15232108240610064590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267508 (A297094 (n + 1) + A185237 n).toNat

end

end A282528.P15232108240610064590

/-! ## A282528.P4680588771287064402

`A267508(A297094(n+1)+A185246(n))`
-/

namespace A282528.P4680588771287064402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267508 (A297094 (n + 1) + A185246 n).toNat

end

end A282528.P4680588771287064402

/-!
# A282530: Number of finite FRUTE loops of order n up to isomorphism.

The programs for A282530, there is no canonical definition to state claims against.
-/

/-! ## A282530.P13755000838371951008

`A276183(A074939(n+1)-A074939(n))`
-/

namespace A282530.P13755000838371951008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (A074939 (n + 1) - A074939 n).toNat

end

end A282530.P13755000838371951008

/-! ## A282530.P14713182077822489648

`A017545(n)%A159284(A160467(n+1))`
-/

namespace A282530.P14713182077822489648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017545 n) (A159284 (A160467 (n + 1)).toNat)

end

end A282530.P14713182077822489648

/-! ## A282530.P9555056572407726554

`∑[A040094(n)]%A159284(A160467(n+1))`
-/

namespace A282530.P9555056572407726554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A159284 (A160467 (n + 1)).toNat)

end

end A282530.P9555056572407726554

/-! ## A282530.P9920145294579458703

`A133608(n+1)%A284713(A204988(n+1))`
-/

namespace A282530.P9920145294579458703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133608 (n + 1)) (A284713 (A204988 (n + 1)).toNat)

end

end A282530.P9920145294579458703

/-! ## A282530.P6543692161797051234

`A064989(A181821(n+1))%A227362(A292589(n+1))`
-/

namespace A282530.P6543692161797051234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064989 (A181821 (n + 1)).toNat) (A227362 (A292589 (n + 1)).toNat)

end

end A282530.P6543692161797051234

/-!
# A282531: Numbers k where records occur for d(k+1)/d(k), where d(k) is A000005(k).

The programs for A282531, there is no canonical definition to state claims against.
-/

/-! ## A282531.P1416698188509344773

`A326393(n+3)%A005153(A320242(3*n+1))`
-/

namespace A282531.P1416698188509344773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326393 (n + 3)) (A005153 (A320242 (3 * n + 1)).toNat)

end

end A282531.P1416698188509344773

/-! ## A282531.P3081896525406871275

`record[A343251(A058197(n+1))]`
-/

namespace A282531.P3081896525406871275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343251 (A058197 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282531.P3081896525406871275

/-! ## A282531.P2099279263138066089

`p?[A343018(n+1)]%A333052(2*n+1)`
-/

namespace A282531.P2099279263138066089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A333052 (2 * n + 1))

end

end A282531.P2099279263138066089

/-! ## A282531.P4097009935206364503

`record[A058197(2*n+1)%A058220(n+5)]`
-/

namespace A282531.P4097009935206364503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (2 * n + 1)) (A058220 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282531.P4097009935206364503

/-! ## A282531.P12972136044906321753

`A326393(n+3)%A006753(A274977(n))`
-/

namespace A282531.P12972136044906321753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326393 (n + 3)) (A006753 (A274977 n).toNat)

end

end A282531.P12972136044906321753

/-!
# A282533: Primes that are the sum of two proper prime powers (A246547) in more than one way.

The programs for A282533, there is no canonical definition to state claims against.
-/

/-! ## A282533.P8844413374750799609

`p?[A225103(n+1)]`
-/

namespace A282533.P8844413374750799609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282533.P8844413374750799609

/-! ## A282533.P3900545383632641224

`record[A020639(A225103(n+2))]`
-/

namespace A282533.P3900545383632641224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A225103 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282533.P3900545383632641224

/-! ## A282533.P3499212013930432193

`filter[A225103(n+1), A003415(#)]`
-/

namespace A282533.P3499212013930432193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A003415 (f1 j).toNat = 1) n)

end

end A282533.P3499212013930432193

/-!
# A282534: Integers that are powers of Mersenne numbers A000225 (i.e., of the form (2^n - 1)^m).

The programs for A282534, there is no canonical definition to state claims against.
-/

/-! ## A282534.P6561350391404297948

`record[(n+1)*A036987(A052410(n+1))]`
-/

namespace A282534.P6561350391404297948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A036987 (A052410 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282534.P6561350391404297948

/-! ## A282534.P17643363330981602615

`eq[2, A052410(A052410(n+1)+1)]+1`
-/

namespace A282534.P17643363330981602615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A052410 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A282534.P17643363330981602615

/-! ## A282534.P16873127616628119256

`record[A036987(A052410(n+1))*A109613(n)]`
-/

namespace A282534.P16873127616628119256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A052410 (n + 1)).toNat * A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282534.P16873127616628119256

/-! ## A282534.P17600905099193201339

`record[A036987(A052410(n+1))*A263449(n)]`
-/

namespace A282534.P17600905099193201339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A052410 (n + 1)).toNat * A263449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282534.P17600905099193201339

/-! ## A282534.P10405667602493952880

`record[gcd((n+1)^6, A323553(n+1))]`
-/

namespace A282534.P10405667602493952880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 6 : ℤ) (A323553 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282534.P10405667602493952880

/-!
# A282537: Coefficients of the '5th-order' mock theta function Psi(q) with a(0)=1.

The programs for A282537, there is no canonical definition to state claims against.
-/

/-! ## A282537.P6671518058957093588

`A053267(C(2, (n+1)²)+n)`
-/

namespace A282537.P6671518058957093588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053267 (Nat.choose 2 ((n + 1) ^ 2) + n)

end

end A282537.P6671518058957093588

/-! ## A282537.P13277684509238509495

`A053267(n-C(dr(a(n-1)), n))` with `a(0)=1`
-/

namespace A282537.P13277684509238509495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053267 (n - Nat.choose (SequenceMachineLib.digitalRoot (a (n - 1))) n)

end

end A282537.P13277684509238509495

/-! ## A282537.P2546201800061927165

`A000007(n)+A053267(n)`
-/

namespace A282537.P2546201800061927165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + A053267 n

end

end A282537.P2546201800061927165

/-! ## A282537.P5225727588161882683

`A053267(A000038(n)+n)`
-/

namespace A282537.P5225727588161882683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053267 (A000038 n + (n : ℤ)).toNat

end

end A282537.P5225727588161882683

/-! ## A282537.P12614441425287921094

`A053267(gcd(n, A000038(n)))`
-/

namespace A282537.P12614441425287921094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053267 (Int.gcd (n : ℤ) (A000038 n))

end

end A282537.P12614441425287921094

/-! ## A282537.P2017072056046477198

`A060396(2*n)+A053267(n)`
-/

namespace A282537.P2017072056046477198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060396 (2 * n) + A053267 n

end

end A282537.P2017072056046477198

/-! ## A282537.P17669500799143588496

`A053267(n)+char[A023086(n+1)]`
-/

namespace A282537.P17669500799143588496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023086 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053267 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A282537.P17669500799143588496

/-! ## A282537.P17948130242862407567

`A173856(2*n+1)+A053267(n)`
-/

namespace A282537.P17948130242862407567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173856 (2 * n + 1) + A053267 n

end

end A282537.P17948130242862407567

/-! ## A282537.P8013998477881152574

`A173861(2*n+1)+A053267(n)`
-/

namespace A282537.P8013998477881152574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173861 (2 * n + 1) + A053267 n

end

end A282537.P8013998477881152574

/-! ## A282537.P13381021065835496755

`A173864(2*n+1)+A053267(n)`
-/

namespace A282537.P13381021065835496755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173864 (2 * n + 1) + A053267 n

end

end A282537.P13381021065835496755

/-! ## A282537.P16141271922320214619

`A053267(A053267(C(3, a(n-1)))+n)` with `a(0)=1`
-/

namespace A282537.P16141271922320214619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053267 (A053267 (Nat.choose 3 (a (n - 1)).toNat) + (n : ℤ)).toNat

end

end A282537.P16141271922320214619

/-! ## A282537.P4397017629463504000

`A053267(n)+A010054(A010054(n)+n)`
-/

namespace A282537.P4397017629463504000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053267 n + A010054 (A010054 n + (n : ℤ)).toNat

end

end A282537.P4397017629463504000

/-! ## A282537.P12467721219610100955

`A053267(n)+A007814(A107801(n+1))`
-/

namespace A282537.P12467721219610100955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053267 n + A007814 (A107801 (n + 1)).toNat

end

end A282537.P12467721219610100955

/-!
# A282538: Odd integers n with the property that the largest prime factor of n^2+4 is less than n.

The programs for A282538, there is no canonical definition to state claims against.
-/

/-! ## A282538.P13747602210131152702

`lt[A006530(n²+4), A093178(n)]`
-/

namespace A282538.P13747602210131152702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n ^ 2 + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A282538.P13747602210131152702

/-! ## A282538.P16448608155567033639

`lt[A006530(n²+4), A124625(n)]`
-/

namespace A282538.P16448608155567033639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n ^ 2 + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A282538.P16448608155567033639

/-! ## A282538.P243529173650334163

`lt[A006530(n²+4), C(A348717(n+1), n)]`
-/

namespace A282538.P243529173650334163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n ^ 2 + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A348717 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A282538.P243529173650334163

/-! ## A282538.P497125997744980790

`lt[A006530(A087475(n)), A141310(n+1)]`
-/

namespace A282538.P497125997744980790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087475 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A282538.P497125997744980790

/-! ## A282538.P3786642302573843757

`lt[A006530(2*(n²+4)), n^(n%2)]`
-/

namespace A282538.P3786642302573843757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n ^ 2 + 4))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A282538.P3786642302573843757

/-!
# A282542: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with x,y,z,w nonnegative integers such that x + 3*y + 5*z and (at least) one of y,z,w are squares.

The programs for A282542, there is no canonical definition to state claims against.
-/

/-! ## A282542.P3525148031798669503

`A271518(n)-A045698(A113092(n))`
-/

namespace A282542.P3525148031798669503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271518 n - A045698 (A113092 n).toNat

end

end A282542.P3525148031798669503

/-! ## A282542.P6830608322909487720

`A271518(n)-A261887(A333988(n))`
-/

namespace A282542.P6830608322909487720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271518 n - A261887 (A333988 n).toNat

end

end A282542.P6830608322909487720

/-!
# A282544: Expansion of (phi(x)^4 + 3*phi(x^3)^4) / 4 in powers of x where phi() is a Ramanujan theta function.

The programs for A282544, there is no canonical definition to state claims against.
-/

/-! ## A282544.P16937408285304554058

`A033712(2*n)`
-/

namespace A282544.P16937408285304554058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033712 (2 * n)

end

end A282544.P16937408285304554058

/-! ## A282544.P15157778708226401717

`A125510(n)/A010684(n)`
-/

namespace A282544.P15157778708226401717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125510 n : ℚ) / (A010684 n : ℚ)

end

end A282544.P15157778708226401717

/-! ## A282544.P4431855400181208650

`A125510(n)/A010873(2*n+1)`
-/

namespace A282544.P4431855400181208650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125510 n : ℚ) / (A010873 (2 * n + 1) : ℚ)

end

end A282544.P4431855400181208650

/-! ## A282544.P6178787013977675410

`A033712(A005843(n))%A001248(n+1)`
-/

namespace A282544.P6178787013977675410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033712 (A005843 n).toNat) (A001248 (n + 1))

end

end A282544.P6178787013977675410

/-! ## A282544.P3037067664322489659

`abs(A246707(2*n))`
-/

namespace A282544.P3037067664322489659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246707 (2 * n)|

end

end A282544.P3037067664322489659

/-! ## A282544.P3380739976428813255

`(A246707(2*n)+A246707(4*n))/2`
-/

namespace A282544.P3380739976428813255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246707 (2 * n) + A246707 (4 * n) : ℚ) / 2

end

end A282544.P3380739976428813255

/-! ## A282544.P14212241345219005804

`A033712(n+n)%A320163(A000118(n))`
-/

namespace A282544.P14212241345219005804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033712 (n + n)) (A320163 (A000118 n).toNat)

end

end A282544.P14212241345219005804

/-!
# A282548: Expansion of phi_{12, 1}(x) where phi_{r, s}(x) = Sum_{n, m>0} m^r * n^s * x^{m*n}.

The programs for A282548, the canonical program `A282548.P6451292733900858238` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282548 has offset 0).

The definition of A282548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282548.P6451292733900858238

`∑{d}[n, n*#^11]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282548

/-- `∑{d}[n, n*#^11]` -/
def P6451292733900858238.Spec : Prop :=
  ∀ n, (P6451292733900858238.a n : ℤ) = A282548 n

theorem P6451292733900858238.correct : P6451292733900858238.Spec := by
  intro n
  simp only [A282548]

end A282548

/-! ## A282548.P2673478775354798457

`n*A013959(abs(1-n)+1)`
-/

namespace A282548.P2673478775354798457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A013959 (|1 - (n : ℤ)| + 1).toNat

end

end A282548.P2673478775354798457

namespace A282548

/-- `n*A013959(abs(1-n)+1)` -/
def P2673478775354798457.Spec : Prop :=
  ∀ n, P2673478775354798457.a n = A282548 n

end A282548

/-! ## A282548.P14369827237196249729

`A013959(A028310(n))*n`
-/

namespace A282548.P14369827237196249729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013959 (A028310 n).toNat * (n : ℤ)

end

end A282548.P14369827237196249729

namespace A282548

/-- `A013959(A028310(n))*n` -/
def P14369827237196249729.Spec : Prop :=
  ∀ n, P14369827237196249729.a n = A282548 n

end A282548

/-!
# A282549: Coefficients in q-expansion of E_2*E_4^3, where E_2 and E_4 are respectively the Eisenstein series A006352 and A004009.

The programs for A282549, there is no canonical definition to state claims against.
-/

/-! ## A282549.P11214364015997739546

`A058550(n)+n*A008411(n)`
-/

namespace A282549.P11214364015997739546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058550 n + (n : ℤ) * A008411 n

end

end A282549.P11214364015997739546

/-! ## A282549.P9902425654284021845

`A058550(n)-n*A008411(n)*A309873(A016825(n))`
-/

namespace A282549.P9902425654284021845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058550 n - (n : ℤ) * A008411 n * A309873 (A016825 n).toNat

end

end A282549.P9902425654284021845

/-! ## A282549.P4771241304653893142

`A058550(n)+n*(2*A008691(n)-A008700(n))`
-/

namespace A282549.P4771241304653893142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058550 n + (n : ℤ) * (2 * A008691 n - A008700 n)

end

end A282549.P4771241304653893142

/-! ## A282549.P14062713721888552297

`A058550(n)+n*(A008693(n)+A008688(n))/2`
-/

namespace A282549.P14062713721888552297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058550 n : ℚ) + (n : ℚ) * ((A008693 n + A008688 n : ℚ) / 2)

end

end A282549.P14062713721888552297

/-! ## A282549.P5449261843420902529

`A058550(n)+n*(2*A008690(n)-A008693(n))`
-/

namespace A282549.P5449261843420902529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058550 n + (n : ℤ) * (2 * A008690 n - A008693 n)

end

end A282549.P5449261843420902529

/-! ## A282549.P1762509010999500947

`A058550(n)+n*(A008688(n)+A008704(n)-A008691(n))`
-/

namespace A282549.P1762509010999500947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058550 n + (n : ℤ) * (A008688 n + (A008704 n - A008691 n))

end

end A282549.P1762509010999500947

/-!
# A282550: Perfect powers that are the sum of two distinct proper prime powers (A246547).

The programs for A282550, there is no canonical definition to state claims against.
-/

/-! ## A282550.P13044337897372311996

`∩[A001597(n+1), A225102(n+1)]`
-/

namespace A282550.P13044337897372311996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282550.P13044337897372311996

/-! ## A282550.P2440611730706271880

`∩[A002760(n+1), A225102(n+1)]`
-/

namespace A282550.P2440611730706271880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282550.P2440611730706271880

/-! ## A282550.P16159084798576535321

`∩[A225102(n+1), A265731(n+1)]`
-/

namespace A282550.P16159084798576535321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282550.P16159084798576535321

/-! ## A282550.P7780551777295310154

`∩[abs(A157985(n+1)), A225102(n+1)]`
-/

namespace A282550.P7780551777295310154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282550.P7780551777295310154

/-! ## A282550.P13856591530335746963

`∩[A045542(n+1)+1, A225102(n+1)]`
-/

namespace A282550.P13856591530335746963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282550.P13856591530335746963

/-!
# A282551: Dimension of the kernel of the modulo 2 Wendt matrix of dimension n.

The programs for A282551, there is no canonical definition to state claims against.
-/

/-! ## A282551.P11825294645026520839

`A257697(gcd(2*(n+1), A073138(2*(n+1))))`
-/

namespace A282551.P11825294645026520839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257697 (Int.gcd (2 * (n + 1) : ℤ) (A073138 (2 * (n + 1))))

end

end A282551.P11825294645026520839

/-! ## A282551.P15422715790059185010

`A048735(gcd(A073138(2*(n+1)), A317440(n+1)))`
-/

namespace A282551.P15422715790059185010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (Int.gcd (A073138 (2 * (n + 1))) (A317440 (n + 1)))

end

end A282551.P15422715790059185010

/-! ## A282551.P9819775562576586147

`and(A000005(A007283(n)), A049073(n+1))`
-/

namespace A282551.P9819775562576586147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A007283 n).toNat) (A049073 (n + 1))

end

end A282551.P9819775562576586147

/-! ## A282551.P11154730830284590664

`A213370(A049073(n+1))%A000005(2^(n+1))`
-/

namespace A282551.P11154730830284590664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213370 (A049073 (n + 1)).toNat) (A000005 (2 ^ (n + 1)))

end

end A282551.P11154730830284590664

/-! ## A282551.P3392794144799153655

`A348710(gcd(A103517(n), A348714(n+1)))`
-/

namespace A282551.P3392794144799153655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348710 (Int.gcd (A103517 n) (A348714 (n + 1)))

end

end A282551.P3392794144799153655

/-!
# A282552: Difference between the multiplicative orders of 2 modulo p^2 and 2 modulo p, where p = prime(n).

The programs for A282552, there is no canonical definition to state claims against.
-/

/-! ## A282552.P4915069573349564011

`A243905(n+2)-A014664(n+2)`
-/

namespace A282552.P4915069573349564011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243905 (n + 2) - A014664 (n + 2)

end

end A282552.P4915069573349564011

/-! ## A282552.P3008981358432056283

`A243905(n+2)-A002326(A005097(n+1))`
-/

namespace A282552.P3008981358432056283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243905 (n + 2) - A002326 (A005097 (n + 1)).toNat

end

end A282552.P3008981358432056283

/-! ## A282552.P5520127643717746389

`A243905(n+2)-A007733(A065091(n+1))`
-/

namespace A282552.P5520127643717746389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243905 (n + 2) - A007733 (A065091 (n + 1)).toNat

end

end A282552.P5520127643717746389

/-! ## A282552.P10561760043681489372

`A243905(n+2)-A336843(A000040(n+1))`
-/

namespace A282552.P10561760043681489372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243905 (n + 2) - A336843 (A000040 (n + 1)).toNat

end

end A282552.P10561760043681489372

/-! ## A282552.P12524064885097695234

`A243905(n+2)-A007733(A000040(n+2))`
-/

namespace A282552.P12524064885097695234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243905 (n + 2) - A007733 (A000040 (n + 2)).toNat

end

end A282552.P12524064885097695234

/-! ## A282552.P3297859680038175711

`A243905(n+2)-A002326(A102781(n+2))`
-/

namespace A282552.P3297859680038175711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243905 (n + 2) - A002326 (A102781 (n + 2)).toNat

end

end A282552.P3297859680038175711

/-! ## A282552.P17701492254371409328

`A243905(n+2)-A002326(A130290(n+2))`
-/

namespace A282552.P17701492254371409328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243905 (n + 2) - A002326 (A130290 (n + 2)).toNat

end

end A282552.P17701492254371409328

/-! ## A282552.P4703169312028246640

`A243905(n+2)-A336843(A008578(n+2))`
-/

namespace A282552.P4703169312028246640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243905 (n + 2) - A336843 (A008578 (n + 2)).toNat

end

end A282552.P4703169312028246640

/-! ## A282552.P5454919533628876556

`A243905(n+2)-A336843(record[A014963(n+2)])`
-/

namespace A282552.P5454919533628876556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243905 (n + 2) - A336843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A282552.P5454919533628876556

/-! ## A282552.P16504379253220565885

`A243905(n+2)-A002326(eq[2, A278223(n+1)])`
-/

namespace A282552.P16504379253220565885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243905 (n + 2) - A002326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282552.P16504379253220565885

/-! ## A282552.P8365377634936583388

`A243905(n+2)-A002326(eq[2, A077462(2*n+1)])`
-/

namespace A282552.P8365377634936583388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243905 (n + 2) - A002326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282552.P8365377634936583388

/-! ## A282552.P14799308988011027397

`A243905(n+2)-A002326(eq[2, A101296(2*n+1)])`
-/

namespace A282552.P14799308988011027397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243905 (n + 2) - A002326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282552.P14799308988011027397

/-! ## A282552.P8157609039736949546

`A243905(n+2)-A002326(A163057(n+1)-(n+1))`
-/

namespace A282552.P8157609039736949546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243905 (n + 2) - A002326 (A163057 (n + 1) - (n + 1 : ℤ)).toNat

end

end A282552.P8157609039736949546

/-! ## A282552.P13489995726689391585

`A243905(n+2)-(A065091(n+1)-1)/A001917(n+2)`
-/

namespace A282552.P13489995726689391585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243905 (n + 2) : ℚ) - (A065091 (n + 1) - 1 : ℚ) / (A001917 (n + 2) : ℚ)

end

end A282552.P13489995726689391585

/-!
# A282553: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 485", based on the 5-celled von Neumann neighborhood.

The programs for A282553, there is no canonical definition to state claims against.
-/

/-! ## A282553.P10794230114943036594

`or(A099040(n)², A279825(A004892(n+1)))`
-/

namespace A282553.P10794230114943036594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A099040 n ^ 2) (A279825 (A004892 (n + 1)).toNat)

end

end A282553.P10794230114943036594

/-! ## A282553.P4575597312000379457

`or(A099040(n)², A279825(A004903(n+1)))`
-/

namespace A282553.P4575597312000379457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A099040 n ^ 2) (A279825 (A004903 (n + 1)).toNat)

end

end A282553.P4575597312000379457

/-!
# A282554: Number of nX2 0..1 arrays with no 1 equal to more than two of its king-move neighbors, with the exception of exactly one element.

The programs for A282554, the canonical program `A282554.P1937941367250115119` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282554 has offset 1).

The definition of A282554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282554.P1937941367250115119

`ogf((10x^2-24x^3+8x^4)/(1-6x+7x^2+2x^3+29x^4-44x^5-12x^6-32x^7+64x^8))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282554

/-- `ogf((10x^2-24x^3+8x^4)/(1-6x+7x^2+2x^3+29x^4-44x^5-12x^6-32x^7+64x^8))` -/
def P1937941367250115119.Spec : Prop :=
  ∀ n, P1937941367250115119.a n = A282554 (n + 1)

theorem P1937941367250115119.correct : P1937941367250115119.Spec := by
  intro n
  simp only [A282554, Nat.add_sub_cancel]

end A282554

/-! ## A282554.P5230717689354444719

`A282560(∑[n+1]+2)`
-/

namespace A282554.P5230717689354444719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A282554.P5230717689354444719

namespace A282554

/-- `A282560(∑[n+1]+2)` -/
def P5230717689354444719.Spec : Prop :=
  ∀ n, P5230717689354444719.a n = A282554 (n + 1)

end A282554

/-! ## A282554.P16634893671054921040

`lcm(2, A282560(A133263(n+1)))`
-/

namespace A282554.P16634893671054921040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A282560 (A133263 (n + 1)).toNat)

end

end A282554.P16634893671054921040

namespace A282554

/-- `lcm(2, A282560(A133263(n+1)))` -/
def P16634893671054921040.Spec : Prop :=
  ∀ n, (P16634893671054921040.a n : ℤ) = A282554 (n + 1)

end A282554

/-! ## A282554.P1684004275687478650

`A000034(and(n+2, n+3))*A282560(A133263(n+1))`
-/

namespace A282554.P1684004275687478650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (Nat.land (n + 2) (n + 3)) * A282560 (A133263 (n + 1)).toNat

end

end A282554.P1684004275687478650

namespace A282554

/-- `A000034(and(n+2, n+3))*A282560(A133263(n+1))` -/
def P1684004275687478650.Spec : Prop :=
  ∀ n, P1684004275687478650.a n = A282554 (n + 1)

end A282554

/-!
# A282555: Number of nX3 0..1 arrays with no 1 equal to more than two of its king-move neighbors, with the exception of exactly one element.

The programs for A282555, there is no canonical definition to state claims against.
-/

/-! ## A282555.P18040196578373703776

`A282560(∑[n+2]+4)`
-/

namespace A282555.P18040196578373703776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282555.P18040196578373703776

/-! ## A282555.P14109044523229470464

`A282560(A167614(n+1))+A185264(n)`
-/

namespace A282555.P14109044523229470464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (A167614 (n + 1)).toNat + A185264 n

end

end A282555.P14109044523229470464

/-! ## A282555.P9378597637878753699

`A014740(n)*A282560(A167614(n+1))`
-/

namespace A282555.P9378597637878753699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014740 n * A282560 (A167614 (n + 1)).toNat

end

end A282555.P9378597637878753699

/-! ## A282555.P3923453519956442999

`A057427(n)*A282560(A167614(n+1))`
-/

namespace A282555.P3923453519956442999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A282560 (A167614 (n + 1)).toNat

end

end A282555.P3923453519956442999

/-! ## A282555.P15968270997060581320

`A178334(n)*A282560(A167614(n+1))`
-/

namespace A282555.P15968270997060581320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A282560 (A167614 (n + 1)).toNat

end

end A282555.P15968270997060581320

/-!
# A282556: Number of n X 4 0..1 arrays with no 1 equal to more than two of its king-move neighbors, with the exception of exactly one element.

The programs for A282556, there is no canonical definition to state claims against.
-/

/-! ## A282556.P6237664712419541884

`A282560(A374004(n+1))`
-/

namespace A282556.P6237664712419541884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (A374004 (n + 1)).toNat

end

end A282556.P6237664712419541884

/-! ## A282556.P9883029101627394174

`A282560(A141214(n)+7)`
-/

namespace A282556.P9883029101627394174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (A141214 n + 7).toNat

end

end A282556.P9883029101627394174

/-! ## A282556.P12811438028658014360

`A282560(A167614(n+2)+1)`
-/

namespace A282556.P12811438028658014360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (A167614 (n + 2) + 1).toNat

end

end A282556.P12811438028658014360

/-! ## A282556.P13976788128583514290

`A282560(A155212(n)+8-n)`
-/

namespace A282556.P13976788128583514290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (A155212 n + (8 - (n : ℤ))).toNat

end

end A282556.P13976788128583514290

/-! ## A282556.P1408412297742823020

`A282560(Δ[A264443(n)-n²])`
-/

namespace A282556.P1408412297742823020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (f1 (n + 1) - f1 n).toNat

end

end A282556.P1408412297742823020

/-!
# A282557: Number of nX5 0..1 arrays with no 1 equal to more than two of its king-move neighbors, with the exception of exactly one element.

The programs for A282557, there is no canonical definition to state claims against.
-/

/-! ## A282557.P15578825174058334750

`A282560(A374005(n+1))`
-/

namespace A282557.P15578825174058334750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (A374005 (n + 1)).toNat

end

end A282557.P15578825174058334750

/-! ## A282557.P10194331370982184644

`A282560(A155212(n)+13)`
-/

namespace A282557.P10194331370982184644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (A155212 n + 13).toNat

end

end A282557.P10194331370982184644

/-! ## A282557.P5658804619312905951

`A282560(A056000(n)+15)`
-/

namespace A282557.P5658804619312905951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (A056000 n + 15).toNat

end

end A282557.P5658804619312905951

/-! ## A282557.P1094904642915625001

`A282560(A141214(n+1)+8)`
-/

namespace A282557.P1094904642915625001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (A141214 (n + 1) + 8).toNat

end

end A282557.P1094904642915625001

/-! ## A282557.P11164882170900237874

`A282560(eq[6, A131818(n+1)])`
-/

namespace A282557.P11164882170900237874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282557.P11164882170900237874

/-!
# A282558: Number of nX6 0..1 arrays with no 1 equal to more than two of its king-move neighbors, with the exception of exactly one element.

The programs for A282558, there is no canonical definition to state claims against.
-/

/-! ## A282558.P881281431629643142

`A282560(A374007(n+1))`
-/

namespace A282558.P881281431629643142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (A374007 (n + 1)).toNat

end

end A282558.P881281431629643142

/-! ## A282558.P11292285091303446319

`A282560(eq[7, A131818(n+1)])`
-/

namespace A282558.P11292285091303446319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282558.P11292285091303446319

/-! ## A282558.P16071626202703842917

`A282560(eq[3, A219347(n)])`
-/

namespace A282558.P16071626202703842917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282558.P16071626202703842917

/-! ## A282558.P6200558346978263096

`A282560(eq[5, A193592(n)])`
-/

namespace A282558.P6200558346978263096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282558.P6200558346978263096

/-! ## A282558.P12231619288362631083

`A282560(eq[8, A185782(n+1)])`
-/

namespace A282558.P12231619288362631083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282558.P12231619288362631083

/-!
# A282559: Number of nX7 0..1 arrays with no 1 equal to more than two of its king-move neighbors, with the exception of exactly one element.

The programs for A282559, there is no canonical definition to state claims against.
-/

/-! ## A282559.P14237549416871280958

`A282560(A374008(n+1))`
-/

namespace A282559.P14237549416871280958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (A374008 (n + 1)).toNat

end

end A282559.P14237549416871280958

/-! ## A282559.P13508189153410094246

`A282560(eq[11, A066657(n)])`
-/

namespace A282559.P13508189153410094246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282559.P13508189153410094246

/-! ## A282559.P1814258823077729900

`A282560(eq[8, A131818(n+1)])`
-/

namespace A282559.P1814258823077729900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282559.P1814258823077729900

/-! ## A282559.P12543856412973843661

`A282560(eq[4, A219347(n)])`
-/

namespace A282559.P12543856412973843661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282559.P12543856412973843661

/-! ## A282559.P15778955438083710394

`A282560(eq[6, A193592(n)])`
-/

namespace A282559.P15778955438083710394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282559.P15778955438083710394

/-!
# A282560: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than two of its king-move neighbors, with the exception of exactly one element.

The programs for A282560, there is no canonical definition to state claims against.
-/

/-! ## A282560.P8415911399764899173

`A199523(A219528(n+1))%A199523(n+1)`
-/

namespace A282560.P8415911399764899173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199523 (A219528 (n + 1)).toNat) (A199523 (n + 1))

end

end A282560.P8415911399764899173

/-! ## A282560.P7618855631009236020

`C(∑{e}[A059106(n+1), #], 2)`
-/

namespace A282560.P7618855631009236020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059106 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) 2

end

end A282560.P7618855631009236020

/-! ## A282560.P18398334107575544104

`A110249(A022185(n))`
-/

namespace A282560.P18398334107575544104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110249 (A022185 n).toNat

end

end A282560.P18398334107575544104

/-! ## A282560.P8164155199016974165

`A059571(A174919(n))`
-/

namespace A282560.P8164155199016974165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059571 (A174919 n).toNat

end

end A282560.P8164155199016974165

/-! ## A282560.P3677347175587672628

`A072292(A173890(n))`
-/

namespace A282560.P3677347175587672628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072292 (A173890 n).toNat

end

end A282560.P3677347175587672628

/-!
# A282563: One third of the number of edges in the metrically regular triangulation of the n-th approximation of the Koch snowflake fractal.

The programs for A282563, the canonical program `A282563.P7262951381395720140` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282563 has offset 1).

The definition of A282563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282563.P14113290998900969530

`ogf((1-5x)/(1-13x+36x^2))`
-/

namespace A282563.P14113290998900969530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -13, 36] n

end

end A282563.P14113290998900969530

namespace A282563

/-- `ogf((1-5x)/(1-13x+36x^2))` -/
def P14113290998900969530.Spec : Prop :=
  ∀ n, P14113290998900969530.a n = A282563 (n + 1)

end A282563

/-! ## A282563.P16709599289195797291

`1/5*(4*9^n+4^n)`
-/

namespace A282563.P16709599289195797291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * (4 * 9 ^ n + 4 ^ n : ℚ)

end

end A282563.P16709599289195797291

namespace A282563

/-- `1/5*(4*9^n+4^n)` -/
def P16709599289195797291.Spec : Prop :=
  ∀ n, P16709599289195797291.a n = (A282563 (n + 1) : ℚ)

theorem P16709599289195797291.correct : P16709599289195797291.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A282563, Nat.add_sub_cancel, A282563.P16709599289195797291.a, A282563.P7262951381395720140.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      simp only [A282563, Nat.add_sub_cancel, A282563.P16709599289195797291.a, A282563.P7262951381395720140.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A282563

/-! ## A282563.P7262951381395720140

`13*a(n-1)-36*a(n-2)` with `a(0)=1, a(1)=8, a(2)=68`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282563

/-- `13*a(n-1)-36*a(n-2)` -/
def P7262951381395720140.Spec : Prop :=
  ∀ n, P7262951381395720140.a n = A282563 (n + 1)

theorem P7262951381395720140.correct : P7262951381395720140.Spec := by
  intro n
  simp only [A282563, Nat.add_sub_cancel]

end A282563

/-! ## A282563.P813757494694113887

`A133467(2*n)`
-/

namespace A282563.P813757494694113887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133467 (2 * n)

end

end A282563.P813757494694113887

namespace A282563

/-- `A133467(2*n)` -/
def P813757494694113887.Spec : Prop :=
  ∀ n, P813757494694113887.a n = A282563 (n + 1)

end A282563

/-! ## A282563.P9350555645958414957

`A091004(Δ[n²])`
-/

namespace A282563.P9350555645958414957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091004 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A282563.P9350555645958414957

namespace A282563

/-- `A091004(Δ[n²])` -/
def P9350555645958414957.Spec : Prop :=
  ∀ n, P9350555645958414957.a n = A282563 (n + 1)

end A282563

/-! ## A282563.P12623168966480773532

`Δ[A091002(2*n)]`
-/

namespace A282563.P12623168966480773532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282563.P12623168966480773532

namespace A282563

/-- `Δ[A091002(2*n)]` -/
def P12623168966480773532.Spec : Prop :=
  ∀ n, P12623168966480773532.a n = A282563 (n + 1)

end A282563

/-! ## A282563.P2495896299962599907

`record[A091004(n+1)]`
-/

namespace A282563.P2495896299962599907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282563.P2495896299962599907

namespace A282563

/-- `record[A091004(n+1)]` -/
def P2495896299962599907.Spec : Prop :=
  ∀ n, P2495896299962599907.a n = A282563 (n + 1)

end A282563

/-! ## A282563.P4135339829541873690

`record[Δ[A091005(n+1)]]`
-/

namespace A282563.P4135339829541873690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282563.P4135339829541873690

namespace A282563

/-- `record[Δ[A091005(n+1)]]` -/
def P4135339829541873690.Spec : Prop :=
  ∀ n, P4135339829541873690.a n = A282563 (n + 1)

end A282563

/-! ## A282563.P18393617749675693697

`abs(A091004(2*n+1))`
-/

namespace A282563.P18393617749675693697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091004 (2 * n + 1)|

end

end A282563.P18393617749675693697

namespace A282563

/-- `abs(A091004(2*n+1))` -/
def P18393617749675693697.Spec : Prop :=
  ∀ n, P18393617749675693697.a n = A282563 (n + 1)

end A282563

/-! ## A282563.P10317055647933713233

`9^n-A015441(2*n)`
-/

namespace A282563.P10317055647933713233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) - A015441 (2 * n)

end

end A282563.P10317055647933713233

namespace A282563

/-- `9^n-A015441(2*n)` -/
def P10317055647933713233.Spec : Prop :=
  ∀ n, P10317055647933713233.a n = A282563 (n + 1)

end A282563

/-! ## A282563.P7768973984672592197

`Δ[A094039(2*n+1)/5]`
-/

namespace A282563.P7768973984672592197
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094039 (2 * n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282563.P7768973984672592197

namespace A282563

/-- `Δ[A094039(2*n+1)/5]` -/
def P7768973984672592197.Spec : Prop :=
  ∀ n, P7768973984672592197.a n = (A282563 (n + 1) : ℚ)

end A282563

/-! ## A282563.P16854065566011083639

`A270473(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A282563.P16854065566011083639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270473 n + 4 * a (n - 1)

end

end A282563.P16854065566011083639

namespace A282563

/-- `A270473(n)+4*a(n-1)` -/
def P16854065566011083639.Spec : Prop :=
  ∀ n, P16854065566011083639.a n = A282563 (n + 1)

end A282563

/-! ## A282563.P18419450869918452380

`record[Δ[A091002(A302402(n))]]`
-/

namespace A282563.P18419450869918452380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 (A302402 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282563.P18419450869918452380

namespace A282563

/-- `record[Δ[A091002(A302402(n))]]` -/
def P18419450869918452380.Spec : Prop :=
  ∀ n, P18419450869918452380.a n = A282563 (n + 1)

end A282563

/-! ## A282563.P15000356244275223372

`A000244(n)²-A016153(n)`
-/

namespace A282563.P15000356244275223372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 - A016153 n

end

end A282563.P15000356244275223372

namespace A282563

/-- `A000244(n)²-A016153(n)` -/
def P15000356244275223372.Spec : Prop :=
  ∀ n, P15000356244275223372.a n = A282563 (n + 1)

end A282563

/-! ## A282563.P5475380947469023880

`A165314(n)+2*A016153(n)`
-/

namespace A282563.P5475380947469023880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165314 n + 2 * A016153 n

end

end A282563.P5475380947469023880

namespace A282563

/-- `A165314(n)+2*A016153(n)` -/
def P5475380947469023880.Spec : Prop :=
  ∀ n, P5475380947469023880.a n = A282563 (n + 1)

end A282563

/-! ## A282563.P6464734226419163459

`A000244(2*n)-A016153(n)`
-/

namespace A282563.P6464734226419163459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * n) - A016153 n

end

end A282563.P6464734226419163459

namespace A282563

/-- `A000244(2*n)-A016153(n)` -/
def P6464734226419163459.Spec : Prop :=
  ∀ n, P6464734226419163459.a n = A282563 (n + 1)

end A282563

/-! ## A282563.P4530332265539014171

`A016153(n+1)-A001047(2*n)`
-/

namespace A282563.P4530332265539014171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016153 (n + 1) - A001047 (2 * n)

end

end A282563.P4530332265539014171

namespace A282563

/-- `A016153(n+1)-A001047(2*n)` -/
def P4530332265539014171.Spec : Prop :=
  ∀ n, P4530332265539014171.a n = A282563 (n + 1)

end A282563

/-! ## A282563.P8802314865729071546

`A140725(2*n)+A091003(2*n)`
-/

namespace A282563.P8802314865729071546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140725 (2 * n) + A091003 (2 * n)

end

end A282563.P8802314865729071546

namespace A282563

/-- `A140725(2*n)+A091003(2*n)` -/
def P8802314865729071546.Spec : Prop :=
  ∀ n, P8802314865729071546.a n = A282563 (n + 1)

end A282563

/-! ## A282563.P18014639612310830520

`A087451(2*n)-A232015(2*n)`
-/

namespace A282563.P18014639612310830520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087451 (2 * n) - A232015 (2 * n)

end

end A282563.P18014639612310830520

namespace A282563

/-- `A087451(2*n)-A232015(2*n)` -/
def P18014639612310830520.Spec : Prop :=
  ∀ n, P18014639612310830520.a n = A282563 (n + 1)

end A282563

/-! ## A282563.P9102801849627644664

`A091005(2*n+1)+A000244(n)²`
-/

namespace A282563.P9102801849627644664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091005 (2 * n + 1) + A000244 n ^ 2

end

end A282563.P9102801849627644664

namespace A282563

/-- `A091005(2*n+1)+A000244(n)²` -/
def P9102801849627644664.Spec : Prop :=
  ∀ n, P9102801849627644664.a n = A282563 (n + 1)

end A282563

/-!
# A282564: Real part of A000178(n) * Sum_{k=0..n} i^k/k!, where i = sqrt(-1).

The programs for A282564, the canonical program `A282564.P10077136610171241754` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282564 has offset 0).

The definition of A282564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282564.P10077136610171241754

`n!*a(n-1)+A000178(n-1)*cos(π/2*n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A282564

/-- `n!*a(n-1)+A000178(n-1)*cos(π/2*n)` -/
def P10077136610171241754.Spec : Prop :=
  ∀ n, P10077136610171241754.a n = (A282564 n : ℝ)

end A282564

/-!
# A282565: a(n) is the largest prime p < 2^n such that p + 2^n is also prime.

The programs for A282565, there is no canonical definition to state claims against.
-/

/-! ## A282565.P1959216272648542652

`p?[A233867(n+1)*A299233(n+1)]`
-/

namespace A282565.P1959216272648542652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233867 (n + 1) * A299233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282565.P1959216272648542652

/-! ## A282565.P15828445638634560681

`A092789(xor(A004524(n), A027557(n)))`
-/

namespace A282565.P15828445638634560681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092789 (Int.xor (A004524 n) (A027557 n)).toNat

end

end A282565.P15828445638634560681

/-! ## A282565.P7897434969702677256

`A260684(A260651(n+2)+A155996(2*n+1))`
-/

namespace A282565.P7897434969702677256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260684 (A260651 (n + 2) + A155996 (2 * n + 1)).toNat

end

end A282565.P7897434969702677256

/-!
# A282566: Number of compositions (ordered partitions) of n into deficient numbers (A005100).

The programs for A282566, there is no canonical definition to state claims against.
-/

/-! ## A282566.P8808946753583325941

`Δ[record[A001592(A030545(n))]]`
-/

namespace A282566.P8808946753583325941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 (A030545 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282566.P8808946753583325941

/-! ## A282566.P13107534780026184859

`Δ[record[A001592(A110355(n+1))]]`
-/

namespace A282566.P13107534780026184859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 (A110355 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282566.P13107534780026184859

/-! ## A282566.P2551388674018306819

`Δ[record[A001592(A167971(n+1))]]`
-/

namespace A282566.P2551388674018306819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 (A167971 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282566.P2551388674018306819

/-! ## A282566.P10745337913981761094

`Δ[record[A001592(A195829(n+1))]]`
-/

namespace A282566.P10745337913981761094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 (A195829 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282566.P10745337913981761094

/-! ## A282566.P9324935940701885062

`Δ[record[A001592(A325178(n+1))]]`
-/

namespace A282566.P9324935940701885062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 (A325178 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282566.P9324935940701885062

/-!
# A282567: Imaginary part of A000178(n) * Sum_{k=0..n} i^k/k!, where i = sqrt(-1).

The programs for A282567, the canonical program `A282567.P13609526141642110053` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282567 has offset 0).

The definition of A282567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282567.P13609526141642110053

`n!*a(n-1)+A000178(n-1)*sin(π/2*n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A282567

/-- `n!*a(n-1)+A000178(n-1)*sin(π/2*n)` -/
def P13609526141642110053.Spec : Prop :=
  ∀ n, P13609526141642110053.a n = (A282567 n : ℝ)

end A282567

/-! ## A282567.P6699275807287664639

`A000178(n)/A000142(n)*A009551(n)`
-/

namespace A282567.P6699275807287664639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000178 n : ℚ) / (A000142 n : ℚ) * (A009551 n : ℚ)

end

end A282567.P6699275807287664639

namespace A282567

/-- `A000178(n)/A000142(n)*A009551(n)` -/
def P6699275807287664639.Spec : Prop :=
  ∀ n, P6699275807287664639.a n = (A282567 n : ℚ)

end A282567

/-!
# A282568: Number of compositions (ordered partitions) of n into abundant numbers (A005101).

The programs for A282568, there is no canonical definition to state claims against.
-/

/-! ## A282568.P2282047064571093207

`A001221(C(A161577(n+1), A097798(n)))`
-/

namespace A282568.P2282047064571093207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A161577 (n + 1)).toNat (A097798 n).toNat)

end

end A282568.P2282047064571093207

/-! ## A282568.P4847618556525192013

`A321936(A289813(n)*A321936(n)+n)`
-/

namespace A282568.P4847618556525192013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A289813 n * A321936 n + (n : ℤ)).toNat

end

end A282568.P4847618556525192013

/-! ## A282568.P3712591683094320367

`A185238(n*A185238(n))+A097798(n)`
-/

namespace A282568.P3712591683094320367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 ((n : ℤ) * A185238 n).toNat + A097798 n

end

end A282568.P3712591683094320367

/-! ## A282568.P16471207926147183077

`A097798(n)+A185238(n)^A133263(n)`
-/

namespace A282568.P16471207926147183077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097798 n : ℚ) + (A185238 n : ℚ) ^ (A133263 n : ℤ)

end

end A282568.P16471207926147183077

/-! ## A282568.P7600568315784762986

`A097798(n)+A185238(n)^A155212(n)`
-/

namespace A282568.P7600568315784762986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097798 n : ℚ) + (A185238 n : ℚ) ^ (A155212 n : ℤ)

end

end A282568.P7600568315784762986

/-!
# A282569: Number of compositions (ordered partitions) of n into multiplicatively perfect numbers (A007422).

The programs for A282569, there is no canonical definition to state claims against.
-/

/-! ## A282569.P159498443028147768

`A028310(Δ[A172471(A133476(n))])`
-/

namespace A282569.P159498443028147768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A133476 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A282569.P159498443028147768

/-!
# A282570: Number of ways to write n as an ordered sum of two multiplicatively perfect numbers (A007422).

The programs for A282570, there is no canonical definition to state claims against.
-/

/-! ## A282570.P8494138007785498573

`and(A025581(A109606(n+1)), A103277(n+1))`
-/

namespace A282570.P8494138007785498573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025581 (A109606 (n + 1)).toNat) (A103277 (n + 1))

end

end A282570.P8494138007785498573

/-! ## A282570.P15093930336815016993

`and(A008611(A007088(n)), A294185(n+1))`
-/

namespace A282570.P15093930336815016993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008611 (A007088 n).toNat) (A294185 (n + 1))

end

end A282570.P15093930336815016993

/-! ## A282570.P2339606761397174363

`and(A007895(n), A069558(n+2))`
-/

namespace A282570.P2339606761397174363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007895 n) (A069558 (n + 2))

end

end A282570.P2339606761397174363

/-! ## A282570.P5017241381250887087

`A287331(A008382(2*n+1)+60)`
-/

namespace A282570.P5017241381250887087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287331 (A008382 (2 * n + 1) + 60).toNat

end

end A282570.P5017241381250887087

/-! ## A282570.P2060690742851960529

`A083917(xor(81, A294919(3*n+5)))`
-/

namespace A282570.P2060690742851960529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083917 (Int.xor 81 (A294919 (3 * n + 5))).toNat

end

end A282570.P2060690742851960529

/-!
# A282572: Integers that are a product of Mersenne numbers A000225, (i.e., product of numbers of the form 2^n - 1).

The programs for A282572, there is no canonical definition to state claims against.
-/

/-! ## A282572.P13242494232780832979

`∩[2*n+1, A070932(n+1)]`
-/

namespace A282572.P13242494232780832979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282572.P13242494232780832979

/-! ## A282572.P9362229745378926537

`record[A000265(A070932(n+2))]`
-/

namespace A282572.P9362229745378926537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A070932 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282572.P9362229745378926537

/-! ## A282572.P16772404455659098159

`∩[A070932(n+1), A305409(n+1)]`
-/

namespace A282572.P16772404455659098159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282572.P16772404455659098159

/-! ## A282572.P5008927004830127911

`record[A093178(A070932(n+1))]`
-/

namespace A282572.P5008927004830127911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A070932 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282572.P5008927004830127911

/-! ## A282572.P14440735348373464903

`∩[A070932(n+1), A060747(n)]`
-/

namespace A282572.P14440735348373464903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282572.P14440735348373464903

/-! ## A282572.P6917983873715110560

`record[A106617(A070932(n+5))]`
-/

namespace A282572.P6917983873715110560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A070932 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282572.P6917983873715110560

/-! ## A282572.P17387676846667575601

`filter[A070932(n+1), A000035(#)]`
-/

namespace A282572.P17387676846667575601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A282572.P17387676846667575601

/-!
# A282576: Coefficients in q-expansion of E_2*E_6^2, where E_2 and E_6 are respectively the Eisenstein series A006352 and A013973.

The programs for A282576, there is no canonical definition to state claims against.
-/

/-! ## A282576.P12645374301861179742

`A058550(n)+n*A280869(n)`
-/

namespace A282576.P12645374301861179742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058550 n + (n : ℤ) * A280869 n

end

end A282576.P12645374301861179742

/-!
# A282577: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 553", based on the 5-celled von Neumann neighborhood.

The programs for A282577, the canonical program `A282577.P13042507924974709549` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282577 has offset 0).

The definition of A282577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282577.P12864670509805275528

`ogf((1-4x^2+4x^4)/(1-5x^2+4x^4))`
-/

namespace A282577.P12864670509805275528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -4, 0, 4] [1, 0, -5, 0, 4] n

end

end A282577.P12864670509805275528

namespace A282577

/-- `ogf((1-4x^2+4x^4)/(1-5x^2+4x^4))` -/
def P12864670509805275528.Spec : Prop :=
  ∀ n, P12864670509805275528.a n = A282577 n

end A282577

/-! ## A282577.P13862934986291076233

`(gcd(2, a(n-1))^n-1)/3` with `a(0)=1`
-/

namespace A282577.P13862934986291076233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 1))) ^ n : ℤ) - 1 : ℚ) / 3

end

end A282577.P13862934986291076233

namespace A282577

/-- `(gcd(2, a(n-1))^n-1)/3` -/
def P13862934986291076233.Spec : Prop :=
  ∀ n, P13862934986291076233.a n = (A282577 n : ℚ)

end A282577

/-! ## A282577.P12498279285259277422

`a(n%2)+4*a(n-2)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A282577.P12498279285259277422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n % 2) + 4 * a (n - 2)

end

end A282577.P12498279285259277422

namespace A282577

/-- `a(n%2)+4*a(n-2)` -/
def P12498279285259277422.Spec : Prop :=
  ∀ n, (P12498279285259277422.a n : ℤ) = A282577 n

end A282577

/-! ## A282577.P12648625429030227646

`or(4*a(n-2), a(n-2))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A282577.P12648625429030227646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  Nat.lor (4 * a (n - 2)) (a (n - 2))

end

end A282577.P12648625429030227646

namespace A282577

/-- `or(4*a(n-2), a(n-2))` -/
def P12648625429030227646.Spec : Prop :=
  ∀ n, (P12648625429030227646.a n : ℤ) = A282577 n

end A282577

/-! ## A282577.P13042507924974709549

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=5`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282577

/-- `5*a(n-2)-4*a(n-4)` -/
def P13042507924974709549.Spec : Prop :=
  ∀ n, P13042507924974709549.a n = A282577 n

theorem P13042507924974709549.correct : P13042507924974709549.Spec := by
  intro n
  simp only [A282577]

end A282577

/-! ## A282577.P9530947962393116733

`char[2*n]*A152046(n)`
-/

namespace A282577.P9530947962393116733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A152046 n

end

end A282577.P9530947962393116733

namespace A282577

/-- `char[2*n]*A152046(n)` -/
def P9530947962393116733.Spec : Prop :=
  ∀ n, P9530947962393116733.a n = A282577 n

end A282577

/-! ## A282577.P17205091749558297350

`lcm((n+1)%2, A167167(n))`
-/

namespace A282577.P17205091749558297350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((n + 1) % 2 : ℕ) : ℤ) (A167167 n)

end

end A282577.P17205091749558297350

namespace A282577

/-- `lcm((n+1)%2, A167167(n))` -/
def P17205091749558297350.Spec : Prop :=
  ∀ n, (P17205091749558297350.a n : ℤ) = A282577 n

end A282577

/-! ## A282577.P4036943395605067524

`A279030(abs(A097141(n)))`
-/

namespace A282577.P4036943395605067524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279030 |A097141 n|.toNat

end

end A282577.P4036943395605067524

namespace A282577

/-- `A279030(abs(A097141(n)))` -/
def P4036943395605067524.Spec : Prop :=
  ∀ n, P4036943395605067524.a n = A282577 n

end A282577

/-! ## A282577.P1461765758971436712

`A193652(n)-A167167(n)`
-/

namespace A282577.P1461765758971436712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193652 n - A167167 n

end

end A282577.P1461765758971436712

namespace A282577

/-- `A193652(n)-A167167(n)` -/
def P1461765758971436712.Spec : Prop :=
  ∀ n, P1461765758971436712.a n = A282577 n

end A282577

/-! ## A282577.P3711145306293617886

`lcm(A056594(n), A152046(n))`
-/

namespace A282577.P3711145306293617886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A152046 n)

end

end A282577.P3711145306293617886

namespace A282577

/-- `lcm(A056594(n), A152046(n))` -/
def P3711145306293617886.Spec : Prop :=
  ∀ n, (P3711145306293617886.a n : ℤ) = A282577 n

end A282577

/-! ## A282577.P8805660219010234269

`and(A115634(n), A152046(n))`
-/

namespace A282577.P8805660219010234269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115634 n) (A152046 n)

end

end A282577.P8805660219010234269

namespace A282577

/-- `and(A115634(n), A152046(n))` -/
def P8805660219010234269.Spec : Prop :=
  ∀ n, P8805660219010234269.a n = A282577 n

end A282577

/-! ## A282577.P15848626835450079277

`and(A115634(n), A167167(n))`
-/

namespace A282577.P15848626835450079277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115634 n) (A167167 n)

end

end A282577.P15848626835450079277

namespace A282577

/-- `and(A115634(n), A167167(n))` -/
def P15848626835450079277.Spec : Prop :=
  ∀ n, P15848626835450079277.a n = A282577 n

end A282577

/-! ## A282577.P14155541131639171589

`(A134451(n)-1)*A167167(n)`
-/

namespace A282577.P14155541131639171589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134451 n - 1) * A167167 n

end

end A282577.P14155541131639171589

namespace A282577

/-- `(A134451(n)-1)*A167167(n)` -/
def P14155541131639171589.Spec : Prop :=
  ∀ n, P14155541131639171589.a n = A282577 n

end A282577

/-! ## A282577.P15156929693787887429

`lcm(A091337(n+1), A167167(n))`
-/

namespace A282577.P15156929693787887429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A091337 (n + 1)) (A167167 n)

end

end A282577.P15156929693787887429

namespace A282577

/-- `lcm(A091337(n+1), A167167(n))` -/
def P15156929693787887429.Spec : Prop :=
  ∀ n, (P15156929693787887429.a n : ℤ) = A282577 n

end A282577

/-! ## A282577.P12816866385732626483

`or(1, A001045(n))*A059841(n)`
-/

namespace A282577.P12816866385732626483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001045 n) * A059841 n

end

end A282577.P12816866385732626483

namespace A282577

/-- `or(1, A001045(n))*A059841(n)` -/
def P12816866385732626483.Spec : Prop :=
  ∀ n, P12816866385732626483.a n = A282577 n

end A282577

/-! ## A282577.P7636006576878210308

`lcm(A167166(A124625(n)), A167167(n))`
-/

namespace A282577.P7636006576878210308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A167166 (A124625 n).toNat) (A167167 n)

end

end A282577.P7636006576878210308

namespace A282577

/-- `lcm(A167166(A124625(n)), A167167(n))` -/
def P7636006576878210308.Spec : Prop :=
  ∀ n, (P7636006576878210308.a n : ℤ) = A282577 n

end A282577

/-! ## A282577.P6901079794018910292

`A001045(n*A059841(n))+A000007(n)`
-/

namespace A282577.P6901079794018910292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 ((n : ℤ) * A059841 n).toNat + A000007 n

end

end A282577.P6901079794018910292

namespace A282577

/-- `A001045(n*A059841(n))+A000007(n)` -/
def P6901079794018910292.Spec : Prop :=
  ∀ n, P6901079794018910292.a n = A282577 n

end A282577

/-! ## A282577.P6632919081692220497

`(A036987(n)+A001045(n))*A000035(n+1)`
-/

namespace A282577.P6632919081692220497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036987 n + A001045 n) * A000035 (n + 1)

end

end A282577.P6632919081692220497

namespace A282577

/-- `(A036987(n)+A001045(n))*A000035(n+1)` -/
def P6632919081692220497.Spec : Prop :=
  ∀ n, P6632919081692220497.a n = A282577 n

end A282577

/-! ## A282577.P5783423253109904974

`(A105348(n)+A001045(n))*A000035(n+1)`
-/

namespace A282577.P5783423253109904974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A105348 n + A001045 n) * A000035 (n + 1)

end

end A282577.P5783423253109904974

namespace A282577

/-- `(A105348(n)+A001045(n))*A000035(n+1)` -/
def P5783423253109904974.Spec : Prop :=
  ∀ n, P5783423253109904974.a n = A282577 n

end A282577

/-! ## A282577.P5714894805240601571

`(A147612(n)+A001045(n))*A000035(n+1)`
-/

namespace A282577.P5714894805240601571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A147612 n + A001045 n) * A000035 (n + 1)

end

end A282577.P5714894805240601571

namespace A282577

/-- `(A147612(n)+A001045(n))*A000035(n+1)` -/
def P5714894805240601571.Spec : Prop :=
  ∀ n, P5714894805240601571.a n = A282577 n

end A282577

/-!
# A282579: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 553", based on the 5-celled von Neumann neighborhood.

The programs for A282579, the canonical program `A282579.P3077572221382953646` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282579 has offset 0).

The definition of A282579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282579.P7301450513246002757

`ogf((1-x^2+4x^4)/(1-5x^2+4x^4))`
-/

namespace A282579.P7301450513246002757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 0, 4] [1, 0, -5, 0, 4] n

end

end A282579.P7301450513246002757

namespace A282579

/-- `ogf((1-x^2+4x^4)/(1-5x^2+4x^4))` -/
def P7301450513246002757.Spec : Prop :=
  ∀ n, P7301450513246002757.a n = A282579 n

end A282579

/-! ## A282579.P11364543993327091334

`(a(n-2)+1)*a(gcd(2, n))` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A282579.P11364543993327091334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  (a (n - 2) + 1) * a (Nat.gcd 2 n)

end

end A282579.P11364543993327091334

namespace A282579

/-- `(a(n-2)+1)*a(gcd(2, n))` -/
def P11364543993327091334.Spec : Prop :=
  ∀ n, (P11364543993327091334.a n : ℤ) = A282579 n

end A282579

/-! ## A282579.P6765691509665968355

`4*(a(n-2)+a(n%2))` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A282579.P6765691509665968355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  4 * (a (n - 2) + a (n % 2))

end

end A282579.P6765691509665968355

namespace A282579

/-- `4*(a(n-2)+a(n%2))` -/
def P6765691509665968355.Spec : Prop :=
  ∀ n, (P6765691509665968355.a n : ℤ) = A282579 n

end A282579

/-! ## A282579.P2342023159352188555

`or(4*a(n-2), a(n-2))` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A282579.P2342023159352188555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  Nat.lor (4 * a (n - 2)) (a (n - 2))

end

end A282579.P2342023159352188555

namespace A282579

/-- `or(4*a(n-2), a(n-2))` -/
def P2342023159352188555.Spec : Prop :=
  ∀ n, (P2342023159352188555.a n : ℤ) = A282579 n

end A282579

/-! ## A282579.P1905962187948263902

`∑[4*a(n-2)]-(a(n-1)+1)` with `a(0)=1, a(1)=0`
-/

namespace A282579.P1905962187948263902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + 1)

end

end A282579.P1905962187948263902

namespace A282579

/-- `∑[4*a(n-2)]-(a(n-1)+1)` -/
def P1905962187948263902.Spec : Prop :=
  ∀ n, P1905962187948263902.a n = A282579 n

end A282579

/-! ## A282579.P5844847796901908000

`∑[4*a(n-2)]-1-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A282579.P5844847796901908000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - a (n - 1)

end

end A282579.P5844847796901908000

namespace A282579

/-- `∑[4*a(n-2)]-1-a(n-1)` -/
def P5844847796901908000.Spec : Prop :=
  ∀ n, P5844847796901908000.a n = A282579 n

end A282579

/-! ## A282579.P3077572221382953646

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=0, a(4)=20`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282579

/-- `5*a(n-2)-4*a(n-4)` -/
def P3077572221382953646.Spec : Prop :=
  ∀ n, P3077572221382953646.a n = A282579 n

theorem P3077572221382953646.correct : P3077572221382953646.Spec := by
  intro n
  simp only [A282579]

end A282579

/-! ## A282579.P15565489518031724080

`lcm(4, a(n-2)+a(n-2)^a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A282579.P15565489518031724080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.lcm 4 (a (n - 2) + a (n - 2) ^ a (n - 1))

end

end A282579.P15565489518031724080

namespace A282579

/-- `lcm(4, a(n-2)+a(n-2)^a(n-1))` -/
def P15565489518031724080.Spec : Prop :=
  ∀ n, (P15565489518031724080.a n : ℤ) = A282579 n

end A282579

/-! ## A282579.P3452204191346884727

`A199572(n)+a(n-2)` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A282579.P3452204191346884727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  A199572 n + a (n - 2)

end

end A282579.P3452204191346884727

namespace A282579

/-- `A199572(n)+a(n-2)` -/
def P3452204191346884727.Spec : Prop :=
  ∀ n, P3452204191346884727.a n = A282579 n

end A282579

/-! ## A282579.P15037922881323501565

`A095121(n)-A060590(n)`
-/

namespace A282579.P15037922881323501565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n - A060590 n

end

end A282579.P15037922881323501565

namespace A282579

/-- `A095121(n)-A060590(n)` -/
def P15037922881323501565.Spec : Prop :=
  ∀ n, P15037922881323501565.a n = A282579 n

end A282579

/-! ## A282579.P11145514793903105857

`A026644(n)*A059841(n)`
-/

namespace A282579.P11145514793903105857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026644 n * A059841 n

end

end A282579.P11145514793903105857

namespace A282579

/-- `A026644(n)*A059841(n)` -/
def P11145514793903105857.Spec : Prop :=
  ∀ n, P11145514793903105857.a n = A282579 n

end A282579

/-! ## A282579.P13282792272861904377

`A101432(n)*A282577(n)`
-/

namespace A282579.P13282792272861904377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101432 n * A282577 n

end

end A282579.P13282792272861904377

namespace A282579

/-- `A101432(n)*A282577(n)` -/
def P13282792272861904377.Spec : Prop :=
  ∀ n, P13282792272861904377.a n = A282579 n

end A282579

/-! ## A282579.P16967948819636682696

`A113311(n)*A282577(n)`
-/

namespace A282579.P16967948819636682696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 n * A282577 n

end

end A282579.P16967948819636682696

namespace A282579

/-- `A113311(n)*A282577(n)` -/
def P16967948819636682696.Spec : Prop :=
  ∀ n, P16967948819636682696.a n = A282579 n

end A282579

/-! ## A282579.P9802409721165510593

`A123932(n)*A282577(n)`
-/

namespace A282579.P9802409721165510593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n * A282577 n

end

end A282579.P9802409721165510593

namespace A282579

/-- `A123932(n)*A282577(n)` -/
def P9802409721165510593.Spec : Prop :=
  ∀ n, P9802409721165510593.a n = A282579 n

end A282579

/-! ## A282579.P4573166048932334288

`A151798(n)*A282577(n)`
-/

namespace A282579.P4573166048932334288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151798 n * A282577 n

end

end A282579.P4573166048932334288

namespace A282579

/-- `A151798(n)*A282577(n)` -/
def P4573166048932334288.Spec : Prop :=
  ∀ n, P4573166048932334288.a n = A282579 n

end A282579

/-! ## A282579.P2382119510756900164

`A026644(n)%A153265(n)`
-/

namespace A282579.P2382119510756900164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026644 n) (A153265 n)

end

end A282579.P2382119510756900164

namespace A282579

/-- `A026644(n)%A153265(n)` -/
def P2382119510756900164.Spec : Prop :=
  ∀ n, P2382119510756900164.a n = A282579 n

end A282579

/-! ## A282579.P13048100439785410630

`lcm(A026644(n), A056594(n))`
-/

namespace A282579.P13048100439785410630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026644 n) (A056594 n)

end

end A282579.P13048100439785410630

namespace A282579

/-- `lcm(A026644(n), A056594(n))` -/
def P13048100439785410630.Spec : Prop :=
  ∀ n, (P13048100439785410630.a n : ℤ) = A282579 n

end A282579

/-! ## A282579.P18106833155373675528

`and(A026644(n), A052992(n))`
-/

namespace A282579.P18106833155373675528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026644 n) (A052992 n)

end

end A282579.P18106833155373675528

namespace A282579

/-- `and(A026644(n), A052992(n))` -/
def P18106833155373675528.Spec : Prop :=
  ∀ n, P18106833155373675528.a n = A282579 n

end A282579

/-! ## A282579.P15976771897451971011

`and(A026644(n), A084181(n))`
-/

namespace A282579.P15976771897451971011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026644 n) (A084181 n)

end

end A282579.P15976771897451971011

namespace A282579

/-- `and(A026644(n), A084181(n))` -/
def P15976771897451971011.Spec : Prop :=
  ∀ n, P15976771897451971011.a n = A282579 n

end A282579

/-! ## A282579.P10890439593713012683

`and(A026644(n), A105812(n))`
-/

namespace A282579.P10890439593713012683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026644 n) (A105812 n)

end

end A282579.P10890439593713012683

namespace A282579

/-- `and(A026644(n), A105812(n))` -/
def P10890439593713012683.Spec : Prop :=
  ∀ n, P10890439593713012683.a n = A282579 n

end A282579

/-!
# A282580: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 557", based on the 5-celled von Neumann neighborhood.

The programs for A282580, there is no canonical definition to state claims against.
-/

/-! ## A282580.P6139942488023056484

`A007088(A282776(n))`
-/

namespace A282580.P6139942488023056484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282776 n).toNat

end

end A282580.P6139942488023056484

/-! ## A282580.P9386010545145386664

`A185544(2*A282776(n))`
-/

namespace A282580.P9386010545145386664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282776 n).toNat

end

end A282580.P9386010545145386664

/-! ## A282580.P6520300610449855889

`A283013(A062399(n))`
-/

namespace A282580.P6520300610449855889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283013 (A062399 n).toNat

end

end A282580.P6520300610449855889

/-! ## A282580.P2786594245306042561

`A283013(A120126(n))`
-/

namespace A282580.P2786594245306042561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283013 (A120126 n).toNat

end

end A282580.P2786594245306042561

/-! ## A282580.P10818953407383637304

`A283013(A351870(n))`
-/

namespace A282580.P10818953407383637304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283013 (A351870 n).toNat

end

end A282580.P10818953407383637304

/-!
# A282582: Number of compositions (ordered partitions) of n into tetrahedral (or triangular pyramidal) numbers (A000292).

The programs for A282582, there is no canonical definition to state claims against.
-/

/-! ## A282582.P7799120954889747615

`A282502(n)-∑[A144200(3*(n+1))]`
-/

namespace A282582.P7799120954889747615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144200 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282502 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282582.P7799120954889747615

/-! ## A282582.P4290835438644229605

`A282502(n)%A004061(n+1)`
-/

namespace A282582.P4290835438644229605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282502 n) (A004061 (n + 1))

end

end A282582.P4290835438644229605

/-! ## A282582.P3971158890380117705

`A282502(n)+A000038(A063705(n))`
-/

namespace A282582.P3971158890380117705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282502 n + A000038 (A063705 n).toNat

end

end A282582.P3971158890380117705

/-! ## A282582.P12283109147780784326

`A282502(n)+A185017(A126042(n))`
-/

namespace A282582.P12283109147780784326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282502 n + A185017 (A126042 n).toNat

end

end A282582.P12283109147780784326

/-! ## A282582.P16106411537703886808

`A282502(n)%A017137(A001595(n))`
-/

namespace A282582.P16106411537703886808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282502 n) (A017137 (A001595 n).toNat)

end

end A282582.P16106411537703886808

/-!
# A282583: Number of compositions (ordered partitions) of n into quarter-squares (A002620).

The programs for A282583, there is no canonical definition to state claims against.
-/

/-! ## A282583.P13730624749673022920

`A172471(or(n, A093045(n)+1))`
-/

namespace A282583.P13730624749673022920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Int.lor (n : ℤ) (A093045 n + 1)).toNat

end

end A282583.P13730624749673022920

/-! ## A282583.P9611926612776464661

`A172471(or(1, or(n, A093045(n))))`
-/

namespace A282583.P9611926612776464661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Int.lor 1 (Int.lor (n : ℤ) (A093045 n))).toNat

end

end A282583.P9611926612776464661

/-! ## A282583.P3011391746909495146

`A344615(n)+A089868(A345195(n))`
-/

namespace A282583.P3011391746909495146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344615 n + A089868 (A345195 n).toNat

end

end A282583.P3011391746909495146

/-! ## A282583.P5246104666292541351

`A028310(A172471(or(n, A093045(n))))`
-/

namespace A282583.P5246104666292541351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A172471 (Int.lor (n : ℤ) (A093045 n)).toNat).toNat

end

end A282583.P5246104666292541351

/-! ## A282583.P4336530885648199082

`A172471(or(A053197(n), A093045(n)))`
-/

namespace A282583.P4336530885648199082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Int.lor (A053197 n) (A093045 n)).toNat

end

end A282583.P4336530885648199082

/-!
# A282584: Number of compositions (ordered partitions) of n into decimal palindromes (A002113).

The programs for A282584, there is no canonical definition to state claims against.
-/

/-! ## A282584.P13186192656118787406

`A194632(n+2)+A079998(A143543(n+1))`
-/

namespace A282584.P13186192656118787406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194632 (n + 2) + A079998 (A143543 (n + 1)).toNat

end

end A282584.P13186192656118787406

/-! ## A282584.P5868840683937053342

`A011782(n)-A048766(A255380(n))`
-/

namespace A282584.P5868840683937053342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A048766 (A255380 n).toNat

end

end A282584.P5868840683937053342

/-! ## A282584.P2062150527869717951

`A274867(n)-A048766(A255380(n))`
-/

namespace A282584.P2062150527869717951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274867 n - A048766 (A255380 n).toNat

end

end A282584.P2062150527869717951

/-! ## A282584.P1379720495336899396

`A056649(n+1)+A004525(A172319(n))`
-/

namespace A282584.P1379720495336899396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056649 (n + 1) + A004525 (A172319 n).toNat

end

end A282584.P1379720495336899396

/-! ## A282584.P14520287087560292396

`A056649(n+1)+A004525(A234591(n))`
-/

namespace A282584.P14520287087560292396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056649 (n + 1) + A004525 (A234591 n).toNat

end

end A282584.P14520287087560292396

/-!
# A282587: Number of nX2 0..1 arrays with no 1 equal to more than two of its king-move neighbors, with the exception of exactly two elements.

The programs for A282587, there is no canonical definition to state claims against.
-/

/-! ## A282587.P2613096287353911298

`A282593(∑[n+1]+2)`
-/

namespace A282587.P2613096287353911298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A282587.P2613096287353911298

/-! ## A282587.P16097154063591162561

`lcm(2, A282593(C(n+2, 2)+2))`
-/

namespace A282587.P16097154063591162561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A282593 (Nat.choose (n + 2) 2 + 2))

end

end A282587.P16097154063591162561

/-! ## A282587.P9379997962312075584

`A178334(n)*A282593(C(n+2, 2)+2)`
-/

namespace A282587.P9379997962312075584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A282593 (Nat.choose (n + 2) 2 + 2)

end

end A282587.P9379997962312075584

/-! ## A282587.P9333978138554423906

`A282593(C(n+2, 2)+2)%A188129(n)`
-/

namespace A282587.P9333978138554423906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282593 (Nat.choose (n + 2) 2 + 2)) (A188129 n)

end

end A282587.P9333978138554423906

/-! ## A282587.P3907827448765916594

`A000034(A248403(n+1))*A282593(C(n+2, 2)+2)`
-/

namespace A282587.P3907827448765916594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A248403 (n + 1)).toNat * A282593 (Nat.choose (n + 2) 2 + 2)

end

end A282587.P3907827448765916594

/-!
# A282588: Number of nX3 0..1 arrays with no 1 equal to more than two of its king-move neighbors, with the exception of exactly two elements.

The programs for A282588, there is no canonical definition to state claims against.
-/

/-! ## A282588.P4510326593760916036

`A282593(∑[n+2]+4)`
-/

namespace A282588.P4510326593760916036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282588.P4510326593760916036

/-! ## A282588.P14540227970823217330

`A282593(A167614(n+1))%A035725(n)`
-/

namespace A282588.P14540227970823217330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282593 (A167614 (n + 1)).toNat) (A035725 n)

end

end A282588.P14540227970823217330

/-! ## A282588.P8063735764863160444

`A282593(A167614(n+1))+A000007(n+1)`
-/

namespace A282588.P8063735764863160444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A282588.P8063735764863160444

/-! ## A282588.P10804337796440716902

`lcm(A009001(2*n), A282593(A167614(n+1)))`
-/

namespace A282588.P10804337796440716902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009001 (2 * n)) (A282593 (A167614 (n + 1)).toNat)

end

end A282588.P10804337796440716902

/-! ## A282588.P175806807294365627

`record[gcd(A230614(n+1), A282593(n+1))]`
-/

namespace A282588.P175806807294365627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A230614 (n + 1)) (A282593 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282588.P175806807294365627

/-!
# A282589: Number of nX4 0..1 arrays with no 1 equal to more than two of its king-move neighbors, with the exception of exactly two elements.

The programs for A282589, there is no canonical definition to state claims against.
-/

/-! ## A282589.P5964960920991043246

`A282593(A374004(n+1))`
-/

namespace A282589.P5964960920991043246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (A374004 (n + 1)).toNat

end

end A282589.P5964960920991043246

/-! ## A282589.P4995077706385092748

`A282593(A141214(n)+7)`
-/

namespace A282589.P4995077706385092748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (A141214 n + 7).toNat

end

end A282589.P4995077706385092748

/-! ## A282589.P4768786132878767639

`A282593(A052905(n)+9)`
-/

namespace A282589.P4768786132878767639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (A052905 n + 9).toNat

end

end A282589.P4768786132878767639

/-! ## A282589.P14122296828453362935

`A282593(A167614(n+2)+1)`
-/

namespace A282589.P14122296828453362935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (A167614 (n + 2) + 1).toNat

end

end A282589.P14122296828453362935

/-! ## A282589.P9001412386081190542

`A282593(Δ[A264443(n)-n²])`
-/

namespace A282589.P9001412386081190542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (f1 (n + 1) - f1 n).toNat

end

end A282589.P9001412386081190542

/-!
# A282590: Number of n X 5 0..1 arrays with no 1 equal to more than two of its king-move neighbors, with the exception of exactly two elements.

The programs for A282590, there is no canonical definition to state claims against.
-/

/-! ## A282590.P13468347855101650743

`A282593(A374005(n+1))`
-/

namespace A282590.P13468347855101650743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (A374005 (n + 1)).toNat

end

end A282590.P13468347855101650743

/-! ## A282590.P15935816204189561273

`A282593(A155212(n)+13)`
-/

namespace A282590.P15935816204189561273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (A155212 n + 13).toNat

end

end A282590.P15935816204189561273

/-! ## A282590.P2189005343854201130

`A282593(A056000(n)+15)`
-/

namespace A282590.P2189005343854201130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (A056000 n + 15).toNat

end

end A282590.P2189005343854201130

/-! ## A282590.P4586775246463674517

`A282593(Δ[A264443(n)])`
-/

namespace A282590.P4586775246463674517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (f1 (n + 1) - f1 n).toNat

end

end A282590.P4586775246463674517

/-! ## A282590.P14870622883265052886

`A282593(A046691(n+3))`
-/

namespace A282590.P14870622883265052886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (A046691 (n + 3)).toNat

end

end A282590.P14870622883265052886

/-!
# A282591: Number of nX6 0..1 arrays with no 1 equal to more than two of its king-move neighbors, with the exception of exactly two elements.

The programs for A282591, there is no canonical definition to state claims against.
-/

/-! ## A282591.P12631196067975170536

`A282593(A374007(n+1))`
-/

namespace A282591.P12631196067975170536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (A374007 (n + 1)).toNat

end

end A282591.P12631196067975170536

/-! ## A282591.P17991095168236012029

`A282593(eq[7, A131818(n+1)])`
-/

namespace A282591.P17991095168236012029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282591.P17991095168236012029

/-! ## A282591.P8982233054672148555

`A282593(eq[3, A219347(n)])`
-/

namespace A282591.P8982233054672148555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282591.P8982233054672148555

/-! ## A282591.P9240491436948824665

`A282593(eq[5, A152157(n)])`
-/

namespace A282591.P9240491436948824665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282591.P9240491436948824665

/-! ## A282591.P6492865136617528185

`A282593(eq[5, A193592(n)])`
-/

namespace A282591.P6492865136617528185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282591.P6492865136617528185

/-!
# A282592: Number of nX7 0..1 arrays with no 1 equal to more than two of its king-move neighbors, with the exception of exactly two elements.

The programs for A282592, there is no canonical definition to state claims against.
-/

/-! ## A282592.P4685169275478631830

`A282593(A374008(n+1))`
-/

namespace A282592.P4685169275478631830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (A374008 (n + 1)).toNat

end

end A282592.P4685169275478631830

/-! ## A282592.P7356998908768494315

`A282593(A000217(n+6)+7)`
-/

namespace A282592.P7356998908768494315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (A000217 (n + 6) + 7).toNat

end

end A282592.P7356998908768494315

/-! ## A282592.P15411015556171910884

`A282593(eq[8, A131818(n+1)])`
-/

namespace A282592.P15411015556171910884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282592.P15411015556171910884

/-! ## A282592.P3307643479933768403

`A282593(eq[4, A219347(n)])`
-/

namespace A282592.P3307643479933768403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282592.P3307643479933768403

/-! ## A282592.P14987394622374368429

`A282593(eq[6, A193592(n)])`
-/

namespace A282592.P14987394622374368429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282592.P14987394622374368429

/-!
# A282593: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than two of its king-move neighbors, with the exception of exactly two elements.

The programs for A282593, there is no canonical definition to state claims against.
-/

/-! ## A282593.P105927121454443313

`lcm(4, A301361(A172349(n)))`
-/

namespace A282593.P105927121454443313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A301361 (A172349 n).toNat)

end

end A282593.P105927121454443313

/-! ## A282593.P2185017600372612802

`A259361(A266249(A172349(n))²)`
-/

namespace A282593.P2185017600372612802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A266249 (A172349 n).toNat ^ 2).toNat

end

end A282593.P2185017600372612802

/-! ## A282593.P11863569952889867560

`A055926(A022170(n))%A172352(n)`
-/

namespace A282593.P11863569952889867560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055926 (A022170 n).toNat) (A172352 n)

end

end A282593.P11863569952889867560

/-! ## A282593.P15754322697592777139

`A335354(A022168(n))%A118185(n)`
-/

namespace A282593.P15754322697592777139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335354 (A022168 n).toNat) (A118185 n)

end

end A282593.P15754322697592777139

/-! ## A282593.P13020702870376495773

`and(A118759(A111910(n)), A203610(n+1))`
-/

namespace A282593.P13020702870376495773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118759 (A111910 n).toNat) (A203610 (n + 1))

end

end A282593.P13020702870376495773

/-!
# A282594: Primes p > 5 such that odd part of (p^2-q^2)/3 is composite for every prime q, 3 < q < p.

The programs for A282594, there is no canonical definition to state claims against.
-/

/-! ## A282594.P8280319294236880769

`p?[A020756(A262749(2*n+1))]`
-/

namespace A282594.P8280319294236880769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020756 (A262749 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A282594.P8280319294236880769

/-!
# A282597: Expansion of phi_{14, 1}(x) where phi_{r, s}(x) = Sum_{n, m>0} m^r * n^s * x^{m*n}.

The programs for A282597, the canonical program `A282597.P14756100575214586376` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282597 has offset 0).

The definition of A282597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282597.P11429930087227207187

`(3*A282012(n)+4*A282287(n)-7*A282596(n))/144`
-/

namespace A282597.P11429930087227207187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A282012 n + 4 * A282287 n - 7 * A282596 n : ℚ) / 144

end

end A282597.P11429930087227207187

namespace A282597

/-- `(3*A282012(n)+4*A282287(n)-7*A282596(n))/144` -/
def P11429930087227207187.Spec : Prop :=
  ∀ n, P11429930087227207187.a n = (A282597 n : ℚ)

end A282597

/-! ## A282597.P14756100575214586376

`∑{d}[n, n*#^13]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A282597

/-- `∑{d}[n, n*#^13]` -/
def P14756100575214586376.Spec : Prop :=
  ∀ n, (P14756100575214586376.a n : ℤ) = A282597 n

theorem P14756100575214586376.correct : P14756100575214586376.Spec := by
  intro n
  simp only [A282597]

end A282597

/-! ## A282597.P9040827450849225751

`n*A013961(round(sqrt(n²+1)))`
-/

namespace A282597.P9040827450849225751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A013961 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A282597.P9040827450849225751

namespace A282597

/-- `n*A013961(round(sqrt(n²+1)))` -/
def P9040827450849225751.Spec : Prop :=
  ∀ n, P9040827450849225751.a n = A282597 n

end A282597

/-!
# A282599: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 517", based on the 5-celled von Neumann neighborhood.

The programs for A282599, there is no canonical definition to state claims against.
-/

/-! ## A282599.P9014960221480639618

`A030101(A282825(n)/A031242(n+1))`
-/

namespace A282599.P9014960221480639618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A282825 n : ℚ) / (A031242 (n + 1) : ℚ))).toNat

end

end A282599.P9014960221480639618

/-! ## A282599.P12508038779863265959

`A030101(A282825(n))`
-/

namespace A282599.P12508038779863265959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A282825 n).toNat

end

end A282599.P12508038779863265959

/-! ## A282599.P4394737285609333874

`A281589(lcm(2, A282825(n)))`
-/

namespace A282599.P4394737285609333874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A282825 n))

end

end A282599.P4394737285609333874

/-! ## A282599.P7066748109313043033

`A281589(2*A282825(n))`
-/

namespace A282599.P7066748109313043033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A282825 n).toNat

end

end A282599.P7066748109313043033

/-! ## A282599.P1467753237751547608

`A325401(2*A282825(n))`
-/

namespace A282599.P1467753237751547608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A282825 n).toNat

end

end A282599.P1467753237751547608

