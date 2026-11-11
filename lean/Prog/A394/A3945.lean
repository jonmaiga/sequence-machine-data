import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A394500: Ways to represent n = k + p where p is prime and k > 0 is not squarefree.

The programs for A394500, there is no canonical definition to state claims against.
-/

/-! ## A394500.P2940983640512049706

`A284256(A000041(comp[2*(n+1)]))`
-/

namespace A394500.P2940983640512049706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (A000041 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A394500.P2940983640512049706

/-!
# A394503: Number of equivalence classes of set partitions of [n] under the adjacency monomial E.

The programs for A394503, there is no canonical definition to state claims against.
-/

/-! ## A394503.P7706994795325739712

`A381349(∑[n-char[1]]+1)`
-/

namespace A394503.P7706994795325739712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381349 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A394503.P7706994795325739712

/-!
# A394504: Numbers such that each digit d_i is equal to the number of digits to its right that are strictly less than d_i.

The programs for A394504, there is no canonical definition to state claims against.
-/

/-! ## A394504.P3931052405434577192

`10*A007953(A000540(n))`
-/

namespace A394504.P3931052405434577192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A007953 (A000540 n).toNat

end

end A394504.P3931052405434577192

/-!
# A394505: Number of ways to place non-attacking knights on a 5 X n chessboard.

The programs for A394505, there is no canonical definition to state claims against.
-/

/-! ## A394505.P8712547962329741101

`A395243(A055999(n+3))`
-/

namespace A394505.P8712547962329741101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395243 (A055999 (n + 3)).toNat

end

end A394505.P8712547962329741101

/-! ## A394505.P9783005917766506405

`A395243(A167499(n+4))`
-/

namespace A394505.P9783005917766506405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395243 (A167499 (n + 4)).toNat

end

end A394505.P9783005917766506405

/-!
# A394508: Write the primes in a column. Add new columns to the right, with each entry being the prime whose index is the entry to its left. The sequence a(n) is given by the antidiagonal sums.

The programs for A394508, there is no canonical definition to state claims against.
-/

/-! ## A394508.P8919306293270713112

`A359278(n+2)-(n+2)`
-/

namespace A394508.P8919306293270713112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359278 (n + 2) - (n + 2 : ℤ)

end

end A394508.P8919306293270713112

/-! ## A394508.P713633939214205108

`∑[A030530(A030530(n+4)*A274378(n))]`
-/

namespace A394508.P713633939214205108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (A030530 (n + 4) * A274378 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394508.P713633939214205108

/-!
# A394509: Numbers k for which sopf(2*k) = sopf(k + 2) where sopf = A008472.

The programs for A394509, there is no canonical definition to state claims against.
-/

/-! ## A394509.P14697470691953880516

`∪[A001359(n+1), A064745(A197891(3*n+1))]`
-/

namespace A394509.P14697470691953880516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064745 (A197891 (3 * n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A394509.P14697470691953880516

/-!
# A394510: a(2*k) = 2*k*(5*k+1)*(10*k+1), a(2*k+1) = 2*(k+1)*(5*k+4)*(10*k+9), with k >= 0.

The programs for A394510, the canonical program `A394510.P16388077156761870700` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394510 has offset 0).

The definition of A394510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394510.P2290236318883399483

`ogf((72x+60x^2+336x^3+60x^4+72x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`
-/

namespace A394510.P2290236318883399483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 72, 60, 336, 60, 72] [1, -1, -3, 3, 3, -3, -1, 1] n

end

end A394510.P2290236318883399483

namespace A394510

/-- `ogf((72x+60x^2+336x^3+60x^4+72x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P2290236318883399483.Spec : Prop :=
  ∀ n, P2290236318883399483.a n = A394510 n

end A394510

/-! ## A394510.P16388077156761870700

`A132356(n)*A090771(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A394510

/-- `A132356(n)*A090771(n+1)` -/
def P16388077156761870700.Spec : Prop :=
  ∀ n, P16388077156761870700.a n = A394510 n

theorem P16388077156761870700.correct : P16388077156761870700.Spec := by
  intro n
  simp only [A394510]

end A394510

/-! ## A394510.P4153814393979423980

`(∑[8/gcd(2, n)²]-1)*∑[2*n*(and(1, n)+1)²]`
-/

namespace A394510.P4153814393979423980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 / (Nat.gcd 2 n ^ 2 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (Nat.land 1 n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A394510.P4153814393979423980

namespace A394510

/-- `(∑[8/gcd(2, n)²]-1)*∑[2*n*(and(1, n)+1)²]` -/
def P4153814393979423980.Spec : Prop :=
  ∀ n, P4153814393979423980.a n = (A394510 n : ℚ)

end A394510

/-! ## A394510.P17597000769211602899

`(n²+n+6*ceil(n/2)²)*A090771(n+1)`
-/

namespace A394510.P17597000769211602899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + n : ℤ) + 6 * ⌈(n : ℚ) / 2⌉ ^ 2) * A090771 (n + 1)

end

end A394510.P17597000769211602899

namespace A394510

/-- `(n²+n+6*ceil(n/2)²)*A090771(n+1)` -/
def P17597000769211602899.Spec : Prop :=
  ∀ n, P17597000769211602899.a n = A394510 n

end A394510

/-! ## A394510.P461032835622500007

`lcm(n²+n+6*ceil(n/2)², A322489(1+n))`
-/

namespace A394510.P461032835622500007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n ^ 2 + n : ℤ) + 6 * ⌈(n : ℚ) / 2⌉ ^ 2) (A322489 (1 + n))

end

end A394510.P461032835622500007

namespace A394510

/-- `lcm(n²+n+6*ceil(n/2)², A322489(1+n))` -/
def P461032835622500007.Spec : Prop :=
  ∀ n, (P461032835622500007.a n : ℤ) = A394510 n

end A394510

/-! ## A394510.P828979390869493368

`A090771(1+n)*A132356(n)`
-/

namespace A394510.P828979390869493368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (1 + n) * A132356 n

end

end A394510.P828979390869493368

namespace A394510

/-- `A090771(1+n)*A132356(n)` -/
def P828979390869493368.Spec : Prop :=
  ∀ n, P828979390869493368.a n = A394510 n

theorem P828979390869493368.correct : P828979390869493368.Spec := by
  intro n
  simp only [A394510, Nat.add_sub_cancel, A394510.P828979390869493368.a, A394510.P16388077156761870700.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A394510

/-! ## A394510.P6651480063635192208

`A219190(n+1)*A322489(n+1)`
-/

namespace A394510.P6651480063635192208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219190 (n + 1) * A322489 (n + 1)

end

end A394510.P6651480063635192208

namespace A394510

/-- `A219190(n+1)*A322489(n+1)` -/
def P6651480063635192208.Spec : Prop :=
  ∀ n, P6651480063635192208.a n = A394510 n

end A394510

/-! ## A394510.P5773672413868052971

`(A090771(n+1)+A090771(n+1))*A219190(n+1)`
-/

namespace A394510.P5773672413868052971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090771 (n + 1) + A090771 (n + 1)) * A219190 (n + 1)

end

end A394510.P5773672413868052971

namespace A394510

/-- `(A090771(n+1)+A090771(n+1))*A219190(n+1)` -/
def P5773672413868052971.Spec : Prop :=
  ∀ n, P5773672413868052971.a n = A394510 n

end A394510

/-! ## A394510.P6781705691223628298

`(A047208(n+1)+A008851(n+2))*A132356(n)`
-/

namespace A394510.P6781705691223628298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047208 (n + 1) + A008851 (n + 2)) * A132356 n

end

end A394510.P6781705691223628298

namespace A394510

/-- `(A047208(n+1)+A008851(n+2))*A132356(n)` -/
def P6781705691223628298.Spec : Prop :=
  ∀ n, P6781705691223628298.a n = A394510 n

end A394510

/-!
# A394515: Number of mixed partitions of an n-element set with at least one unlabeled block and at least one labeled block.

The programs for A394515, there is no canonical definition to state claims against.
-/

/-! ## A394515.P9937440408308689761

`n*A033270(A090351(n))`
-/

namespace A394515.P9937440408308689761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033270 (A090351 n).toNat

end

end A394515.P9937440408308689761

/-! ## A394515.P17473609036849397356

`A004523(∑[A087761(n)-1])`
-/

namespace A394515.P17473609036849397356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087761 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A394515.P17473609036849397356

/-!
# A394520: E.g.f. A(x) satisfies A(x) = 1/(1 - 3*x*A(x)^2)^(1/3).

The programs for A394520, there is no canonical definition to state claims against.
-/

/-! ## A394520.P5125592599060259180

`A085225(A326675(n!)*C(n+2, 4))`
-/

namespace A394520.P5125592599060259180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085225 (A326675 (Nat.factorial n) * (Nat.choose (n + 2) 4 : ℤ)).toNat

end

end A394520.P5125592599060259180

/-!
# A394521: E.g.f. A(x) satisfies A(x) = 1/(1 - 3*x*A(x)^3)^(1/3).

The programs for A394521, there is no canonical definition to state claims against.
-/

/-! ## A394521.P1383289351242281392

`A136214((n+1)²+n²)`
-/

namespace A394521.P1383289351242281392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136214 ((n + 1) ^ 2 + n ^ 2)

end

end A394521.P1383289351242281392

/-! ## A394521.P7511372877230337526

`A007559(2*n)/record[A371077(n)]`
-/

namespace A394521.P7511372877230337526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007559 (2 * n) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A394521.P7511372877230337526

/-! ## A394521.P9354866790933933029

`A007559(2*n)/A007559(n+1)`
-/

namespace A394521.P9354866790933933029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007559 (2 * n) : ℚ) / (A007559 (n + 1) : ℚ)

end

end A394521.P9354866790933933029

/-! ## A394521.P1811446097980725164

`A136214(A001844(n))%A127231(n)`
-/

namespace A394521.P1811446097980725164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136214 (A001844 n).toNat) (A127231 n)

end

end A394521.P1811446097980725164

/-! ## A394521.P3992127821001321098

`lcm(A136214(n), A136214(A001844(n)))`
-/

namespace A394521.P3992127821001321098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A136214 n) (A136214 (A001844 n).toNat)

end

end A394521.P3992127821001321098

/-!
# A394522: E.g.f. A(x) satisfies A(x) = 1/(1 - 4*x*A(x)^2)^(1/4).

The programs for A394522, there is no canonical definition to state claims against.
-/

/-! ## A394522.P13850805208551610664

`A060639(n)*A085180(A060639(n))`
-/

namespace A394522.P13850805208551610664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060639 n * A085180 (A060639 n).toNat

end

end A394522.P13850805208551610664

/-!
# A394524: E.g.f. A(x) satisfies A(x) = 1/(1 - 4*x*A(x)^4)^(1/4).

The programs for A394524, there is no canonical definition to state claims against.
-/

/-! ## A394524.P3760656824633705715

`A007696(2*n)/A007696(n+1)`
-/

namespace A394524.P3760656824633705715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007696 (2 * n) : ℚ) / (A007696 (n + 1) : ℚ)

end

end A394524.P3760656824633705715

/-!
# A394525: a(n) is the length of the finite sequence of positive integers (x_1, x_2, ...), where x_1 = n and, for i >= 1, x_{i+1} = max { k > 0 | x_i + k^2 is a perfect square } if such a k exists; otherwise x_i is the last term of the sequence.

The programs for A394525, there is no canonical definition to state claims against.
-/

/-! ## A394525.P17336999643323838543

`A124768(lcm(A213652(n), A284459(n+1)))`
-/

namespace A394525.P17336999643323838543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (Int.lcm (A213652 n) (A284459 (n + 1)))

end

end A394525.P17336999643323838543

/-! ## A394525.P14468260600467096351

`A393547(A100981(n+1))`
-/

namespace A394525.P14468260600467096351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393547 (A100981 (n + 1)).toNat

end

end A394525.P14468260600467096351

/-! ## A394525.P2392904679224172680

`A194548(n+2)%A002808(A285665(n))`
-/

namespace A394525.P2392904679224172680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194548 (n + 2)) (A002808 (A285665 n).toNat)

end

end A394525.P2392904679224172680

/-! ## A394525.P8045337980490529831

`A194548(n+2)*A325403(A057468(n+3))`
-/

namespace A394525.P8045337980490529831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194548 (n + 2) * A325403 (A057468 (n + 3)).toNat

end

end A394525.P8045337980490529831

/-! ## A394525.P16945036503969677517

`A194548(n+2)+A010054(A399982(n+5))`
-/

namespace A394525.P16945036503969677517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194548 (n + 2) + A010054 (A399982 (n + 5)).toNat

end

end A394525.P16945036503969677517

/-!
# A394526: a(n) = n*(5^n - 1) + 1.

The programs for A394526, the canonical program `A394526.P7639771569929179932` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394526 has offset 0).

The definition of A394526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(5^n-1)+1` (program `A394526.P7639771569929179932`, by `A394526.P7639771569929179932.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394526.P7639771569929179932

`n*(5^n-1)+1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394526

/-- `n*(5^n-1)+1` -/
def P7639771569929179932.Spec : Prop :=
  ∀ n, P7639771569929179932.a n = A394526 n

theorem P7639771569929179932.correct : P7639771569929179932.Spec := by
  intro n
  simp only [A394526]

end A394526

/-! ## A394526.P13802012997815079955

`ogf((1-7x+35x^2-45x^3)/(1-12x+46x^2-60x^3+25x^4))`
-/

namespace A394526.P13802012997815079955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7, 35, -45] [1, -12, 46, -60, 25] n

end

end A394526.P13802012997815079955

namespace A394526

/-- `ogf((1-7x+35x^2-45x^3)/(1-12x+46x^2-60x^3+25x^4))` -/
def P13802012997815079955.Spec : Prop :=
  ∀ n, P13802012997815079955.a n = A394526 n

end A394526

/-! ## A394526.P5162386776157438114

`or(1, n*(5^n-1))`
-/

namespace A394526.P5162386776157438114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * ((5 ^ n : ℤ) - 1))

end

end A394526.P5162386776157438114

namespace A394526

/-- `or(1, n*(5^n-1))` -/
def P5162386776157438114.Spec : Prop :=
  ∀ n, P5162386776157438114.a n = A394526 n

end A394526

/-! ## A394526.P16591502252564907227

`xor(1, (5^n-1)*n)`
-/

namespace A394526.P16591502252564907227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((5 ^ n : ℤ) - 1) * (n : ℤ))

end

end A394526.P16591502252564907227

namespace A394526

/-- `xor(1, (5^n-1)*n)` -/
def P16591502252564907227.Spec : Prop :=
  ∀ n, P16591502252564907227.a n = A394526 n

end A394526

/-! ## A394526.P5903873251610561306

`abs(n-A050916(n))`
-/

namespace A394526.P5903873251610561306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A050916 n|

end

end A394526.P5903873251610561306

namespace A394526

/-- `abs(n-A050916(n))` -/
def P5903873251610561306.Spec : Prop :=
  ∀ n, P5903873251610561306.a n = A394526 n

end A394526

/-! ## A394526.P9143311674789320526

`abs(A036291(n)+1-n)`
-/

namespace A394526.P9143311674789320526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A036291 n + (1 - (n : ℤ))|

end

end A394526.P9143311674789320526

namespace A394526

/-- `abs(A036291(n)+1-n)` -/
def P9143311674789320526.Spec : Prop :=
  ∀ n, P9143311674789320526.a n = A394526 n

end A394526

/-! ## A394526.P5136839454646513335

`abs(n*A000351(n)+1-n)`
-/

namespace A394526.P5136839454646513335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A000351 n + 1 - (n : ℤ)|

end

end A394526.P5136839454646513335

namespace A394526

/-- `abs(n*A000351(n)+1-n)` -/
def P5136839454646513335.Spec : Prop :=
  ∀ n, P5136839454646513335.a n = A394526 n

end A394526

/-! ## A394526.P966803672260942195

`(A050916(n)-n)%A092315(n+2)`
-/

namespace A394526.P966803672260942195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050916 n - (n : ℤ)) (A092315 (n + 2))

end

end A394526.P966803672260942195

namespace A394526

/-- `(A050916(n)-n)%A092315(n+2)` -/
def P966803672260942195.Spec : Prop :=
  ∀ n, P966803672260942195.a n = A394526 n

end A394526

/-!
# A394529: Total number of cells under all Dyck paths of semilength n in the first quadrant of the square grid.

The programs for A394529, the canonical program `A394529.P4813404703482126856` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394529 has offset 0).

The definition of A394529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394529.P4813404703482126856

`(n²*A000108(n)+A008549(n))/2`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A394529

/-- `(n²*A000108(n)+A008549(n))/2` -/
def P4813404703482126856.Spec : Prop :=
  ∀ n, P4813404703482126856.a n = (A394529 n : ℚ)

end A394529

/-! ## A394529.P2995404962519334105

`(n²*C(2*n, n)/(n+1)+4^n-C(2*n+1, n))/2`
-/

namespace A394529.P2995404962519334105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 * Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) + (4 ^ n : ℚ) - (Nat.choose (2 * n + 1) n : ℚ)) / 2

end

end A394529.P2995404962519334105

namespace A394529

/-- `(n²*C(2*n, n)/(n+1)+4^n-C(2*n+1, n))/2` -/
def P2995404962519334105.Spec : Prop :=
  ∀ n, P2995404962519334105.a n = (A394529 n : ℚ)

end A394529

/-! ## A394529.P10424426785377733424

`A139262(n)+4^n-∏[4-2/(n+1)]/2`
-/

namespace A394529.P10424426785377733424
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139262 n : ℚ) + ((4 ^ n : ℚ) - (∏ j ∈ Finset.range (n + 1), f1 j) / 2)

end

end A394529.P10424426785377733424

namespace A394529

/-- `A139262(n)+4^n-∏[4-2/(n+1)]/2` -/
def P10424426785377733424.Spec : Prop :=
  ∀ n, P10424426785377733424.a n = (A394529 n : ℚ)

end A394529

/-! ## A394529.P11618663545686292018

`A191309(2*n)+A008549(n)`
-/

namespace A394529.P11618663545686292018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191309 (2 * n) + A008549 n

end

end A394529.P11618663545686292018

namespace A394529

/-- `A191309(2*n)+A008549(n)` -/
def P11618663545686292018.Spec : Prop :=
  ∀ n, P11618663545686292018.a n = A394529 n

end A394529

/-! ## A394529.P7943638680899098367

`A398446(n+3)-A051960(n)`
-/

namespace A394529.P7943638680899098367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398446 (n + 3) - A051960 n

end

end A394529.P7943638680899098367

namespace A394529

/-- `A398446(n+3)-A051960(n)` -/
def P7943638680899098367.Spec : Prop :=
  ∀ n, P7943638680899098367.a n = A394529 n

end A394529

/-! ## A394529.P4737953047014001880

`A110609(n)-A139262(n)`
-/

namespace A394529.P4737953047014001880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110609 n - A139262 n

end

end A394529.P4737953047014001880

namespace A394529

/-- `A110609(n)-A139262(n)` -/
def P4737953047014001880.Spec : Prop :=
  ∀ n, P4737953047014001880.a n = A394529 n

end A394529

/-! ## A394529.P16453883759198186918

`A034275(n+1)-A116078(n)`
-/

namespace A394529.P16453883759198186918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034275 (n + 1) - A116078 n

end

end A394529.P16453883759198186918

namespace A394529

/-- `A034275(n+1)-A116078(n)` -/
def P16453883759198186918.Spec : Prop :=
  ∀ n, P16453883759198186918.a n = A394529 n

end A394529

/-!
# A394530: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals downwards, where A(n,k) = k^(n*(k-1)) - Sum_{j=1..k-1} k^(n*(k-1-j)) * j^n * A(n,j).

The programs for A394530, there is no canonical definition to state claims against.
-/

/-! ## A394530.P6096707413230269523

`A341975(A256893(n)+1)`
-/

namespace A394530.P6096707413230269523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341975 ((A256893 n + 1).toNat + 11)

end

end A394530.P6096707413230269523

/-! ## A394530.P14532290629375419394

`A355401(A249157(n+1))`
-/

namespace A394530.P14532290629375419394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355401 (A249157 (n + 1)).toNat

end

end A394530.P14532290629375419394

/-! ## A394530.P452942863704664723

`A354794(n)+A056881(A078077(n))`
-/

namespace A394530.P452942863704664723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354794 n + A056881 (A078077 n).toNat

end

end A394530.P452942863704664723

/-! ## A394530.P5926775016203483928

`A354794(n)+A014037(A257627(n))`
-/

namespace A394530.P5926775016203483928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354794 n + A014037 (A257627 n).toNat

end

end A394530.P5926775016203483928

/-! ## A394530.P3559432282669541719

`A370222(A005176(n))+A354794(n)`
-/

namespace A394530.P3559432282669541719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370222 (A005176 n).toNat + A354794 n

end

end A394530.P3559432282669541719

/-!
# A394531: Sum_{k=1..n} k^2 * a(k)/n^(2*k) = 1.

The programs for A394531, there is no canonical definition to state claims against.
-/

/-! ## A394531.P8211651943713850451

`A394530(A340266(n+1))`
-/

namespace A394531.P8211651943713850451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394530 (A340266 (n + 1)).toNat

end

end A394531.P8211651943713850451

/-! ## A394531.P9160268688341725481

`A394530(A167614(n+1)-1)`
-/

namespace A394531.P9160268688341725481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394530 (A167614 (n + 1) - 1).toNat

end

end A394531.P9160268688341725481

/-! ## A394531.P4599815873846998108

`A394530(eq[3, A002260(n+1)])`
-/

namespace A394531.P4599815873846998108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A394531.P4599815873846998108

/-!
# A394532: Numbers k such that every abelian group of order k appears as a group of units of the ring Z/mZ for at least one m.

The programs for A394532, there is no canonical definition to state claims against.
-/

/-! ## A394532.P11594253544777112464

`eq[0, A394390(n+1)]+1`
-/

namespace A394532.P11594253544777112464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394390 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A394532.P11594253544777112464

/-! ## A394532.P9438599364503644374

`eq[A000688(n+1), A380578(n+1)]+1`
-/

namespace A394532.P9438599364503644374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A394532.P9438599364503644374

/-! ## A394532.P16085182615906547820

`eq[A244145(n+1), A321759(n+1)]`
-/

namespace A394532.P16085182615906547820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321759 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394532.P16085182615906547820

/-! ## A394532.P15795146916830800319

`eq[A321759(n+1), A346468(n+1)]`
-/

namespace A394532.P15795146916830800319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394532.P15795146916830800319

/-! ## A394532.P6968487561334005513

`eq[A321759(n+1), A391237(n+1)]`
-/

namespace A394532.P6968487561334005513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391237 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394532.P6968487561334005513

/-!
# A394533: Binary expansion of a(n) obtained from binary expansion of n with increased number of zeros separated by every next 1 by total number of zeros lying from the left side of selected 1.

The programs for A394533, there is no canonical definition to state claims against.
-/

/-! ## A394533.P4008243647947028453

`A333220(A253565(n+1))`
-/

namespace A394533.P4008243647947028453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333220 (A253565 (n + 1)).toNat

end

end A394533.P4008243647947028453

/-! ## A394533.P5241503509661945297

`(n+1)*A072344(3^n)`
-/

namespace A394533.P5241503509661945297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A072344 (3 ^ n)

end

end A394533.P5241503509661945297

/-! ## A394533.P13975316173417978023

`C(n+1, A374629(C(n, 4)))`
-/

namespace A394533.P13975316173417978023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A374629 (Nat.choose n 4)).toNat

end

end A394533.P13975316173417978023

/-! ## A394533.P15588589491673381993

`C(n+1, gcd(n, A135907(n)))`
-/

namespace A394533.P15588589491673381993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Int.gcd (n : ℤ) (A135907 n))

end

end A394533.P15588589491673381993

/-! ## A394533.P1872932638950979739

`lcm(n+1, gcd(∑[n], A396036(n)))`
-/

namespace A394533.P1872932638950979739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A396036 n))

end

end A394533.P1872932638950979739

/-!
# A394539: Number of graphs with n vertices that have no induced regular subgraph of order 5.

The programs for A394539, there is no canonical definition to state claims against.
-/

/-! ## A394539.P14441410888739237020

`A378280(∑[A123526(n+2)])+A000085(n+1)`
-/

namespace A394539.P14441410888739237020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123526 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378280 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000085 (n + 1)

end

end A394539.P14441410888739237020

/-! ## A394539.P1192771989474599450

`A357861(floor(a(n-2)*200/38))-1` with `a(0)=1, a(1)=2`
-/

namespace A394539.P1192771989474599450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A357861 ⌊(a (n - 2) * 200 : ℚ) / 38⌋.toNat - 1

end

end A394539.P1192771989474599450

/-!
# A394540: Sequence where, for every step t starting from 2, k is appended if t is a multiple of s(k-1), where s is Sylvester's sequence (A000058). If multiple numbers trigger on the same step, they are appended in increasing order.

The programs for A394540, there is no canonical definition to state claims against.
-/

/-! ## A394540.P1424639310329536461

`A000120(gcd(A000584(2*(n+2)), A375165(n+4)))`
-/

namespace A394540.P1424639310329536461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.gcd (A000584 (2 * (n + 2))) (A375165 (n + 4)))

end

end A394540.P1424639310329536461

/-! ## A394540.P6883553748624669721

`A098281(A379047(n+1))`
-/

namespace A394540.P6883553748624669721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098281 (A379047 (n + 1)).toNat

end

end A394540.P6883553748624669721

/-! ## A394540.P11848387952809735225

`gcd(A000005(A000716(n)), A010739(n))`
-/

namespace A394540.P11848387952809735225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A000716 n).toNat) (A010739 n)

end

end A394540.P11848387952809735225

/-! ## A394540.P11278495907691730565

`gcd(A007413(A299261(n)), A299261(n))`
-/

namespace A394540.P11278495907691730565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007413 (A299261 n).toNat) (A299261 n)

end

end A394540.P11278495907691730565

/-! ## A394540.P7501711929123649991

`gcd(A161789(n+2), A326685(A326685(2*(n+2))))`
-/

namespace A394540.P7501711929123649991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A161789 (n + 2)) (A326685 (A326685 (2 * (n + 2))).toNat)

end

end A394540.P7501711929123649991

/-!
# A394544: Largest prime factor of the n-th base 10 palindrome with a(1)=a(2)=1.

The programs for A394544, there is no canonical definition to state claims against.
-/

/-! ## A394544.P3331125975938853686

`A006530(∏{p}[A002113(1+n), #])`
-/

namespace A394544.P3331125975938853686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A394544.P3331125975938853686

/-! ## A394544.P17492757807337749583

`A006530(or(C(3, n)%3, A002113(n+1)))`
-/

namespace A394544.P17492757807337749583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor ((Nat.choose 3 n % 3 : ℕ) : ℤ) (A002113 (n + 1))).toNat

end

end A394544.P17492757807337749583

/-! ## A394544.P14066611728308185956

`A006530(A002113(n+1)+floor(1/(n+1)))`
-/

namespace A394544.P14066611728308185956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002113 (n + 1) + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A394544.P14066611728308185956

/-! ## A394544.P11796308934161093371

`A006530(or(A000007(n), A002113(n+1)))`
-/

namespace A394544.P11796308934161093371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor (A000007 n) (A002113 (n + 1))).toNat

end

end A394544.P11796308934161093371

/-! ## A394544.P14340433882683864343

`A006530(xor(A000007(n), A002113(n+1)))`
-/

namespace A394544.P14340433882683864343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.xor (A000007 n) (A002113 (n + 1))).toNat

end

end A394544.P14340433882683864343

/-! ## A394544.P3465437438675750503

`A006530(A154272(n+3)+A002113(n+1))`
-/

namespace A394544.P3465437438675750503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A154272 (n + 3) + A002113 (n + 1)).toNat

end

end A394544.P3465437438675750503

/-! ## A394544.P8096403199570448426

`A088387(∏{p}[A002113(n+1), #])`
-/

namespace A394544.P8096403199570448426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A394544.P8096403199570448426

/-! ## A394544.P5061862725290288540

`A034699(∏{p}[sqrt(A014186(1+n)), #])`
-/

namespace A394544.P5061862725290288540
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014186 (1 + n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A394544.P5061862725290288540

/-! ## A394544.P1427147510679114864

`A300518(∏{p}[A002113(n+1), #])`
-/

namespace A394544.P1427147510679114864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300518 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A394544.P1427147510679114864

/-! ## A394544.P6464383156672413313

`A345941(∏{p}[A002113(n+1), #])`
-/

namespace A394544.P6464383156672413313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A394544.P6464383156672413313

/-! ## A394544.P14715078165306833100

`A002034(∏{p}[A002113(n+1), #])`
-/

namespace A394544.P14715078165306833100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A394544.P14715078165306833100

/-! ## A394544.P14293359949451331726

`A006530(A002113(n+1)^A178334(n))`
-/

namespace A394544.P14293359949451331726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A002113 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A394544.P14293359949451331726

/-!
# A394545: Base 10 palindromes greater than 1 such that division by their highest prime factor also results in a palindrome.

The programs for A394545, there is no canonical definition to state claims against.
-/

/-! ## A394545.P9792694843102118550

`A324988(n+2)+A063524(A288068(n+1))`
-/

namespace A394545.P9792694843102118550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 2) + A063524 (A288068 (n + 1)).toNat

end

end A394545.P9792694843102118550

/-! ## A394545.P1697199079211808397

`A010051(A082599(n+1))*A324988(n+2)`
-/

namespace A394545.P1697199079211808397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A082599 (n + 1)).toNat * A324988 (n + 2)

end

end A394545.P1697199079211808397

/-! ## A394545.P2468485095391985612

`A324988(n+2)%A305417(A002385(n+1))`
-/

namespace A394545.P2468485095391985612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324988 (n + 2)) (A305417 (A002385 (n + 1)).toNat)

end

end A394545.P2468485095391985612

/-! ## A394545.P8989904908547499100

`A324988(n+2)+A063524(A237637(n+1))`
-/

namespace A394545.P8989904908547499100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 2) + A063524 (A237637 (n + 1)).toNat

end

end A394545.P8989904908547499100

/-! ## A394545.P18177358694627337473

`A324988(n+2)+A063524(A185633(n+1))`
-/

namespace A394545.P18177358694627337473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 2) + A063524 (A185633 (n + 1)).toNat

end

end A394545.P18177358694627337473

/-!
# A394557: G.f. A(x) satisfies [x^n] exp(n^3*x) (1 - E^3(x*A(x))) = 0 for n > 0, where E is the Euler operator x*d/dx.

The programs for A394557, there is no canonical definition to state claims against.
-/

/-! ## A394557.P6759542806128665963

`A107675(n)/(n+1)^3`
-/

namespace A394557.P6759542806128665963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107675 n : ℚ) / ((n + 1) ^ 3 : ℚ)

end

end A394557.P6759542806128665963

/-! ## A394557.P12052105071572060335

`A082168(n+1)/A006690(n+1)*A107675(n)`
-/

namespace A394557.P12052105071572060335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082168 (n + 1) : ℚ) / (A006690 (n + 1) : ℚ) * (A107675 n : ℚ)

end

end A394557.P12052105071572060335

/-! ## A394557.P9076966692984640687

`A107673(n)/A107672(n)*A107675(n)`
-/

namespace A394557.P9076966692984640687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107673 n : ℚ) / (A107672 n : ℚ) * (A107675 n : ℚ)

end

end A394557.P9076966692984640687

/-! ## A394557.P14353638679510307866

`A107673(n)*A107674(∑[n])/A107672(n)`
-/

namespace A394557.P14353638679510307866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107673 n * A107674 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A107672 n : ℚ)

end

end A394557.P14353638679510307866

/-!
# A394560: The coefficients of the exponential expansion of the compositional inverse of f(t) = Sum_{m>=1} tau3(m)*(-1)^(m + 1)*t^m/m.

The programs for A394560, there is no canonical definition to state claims against.
-/

/-! ## A394560.P2902642578457243832

`A394559(∑[n]+1)`
-/

namespace A394560.P2902642578457243832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394559 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A394560.P2902642578457243832

/-! ## A394560.P15138287138837769413

`record[A394559(1+n)]`
-/

namespace A394560.P15138287138837769413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394559 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A394560.P15138287138837769413

/-! ## A394560.P18254884334209834809

`record[col(n)*A394559(n)]`
-/

namespace A394560.P18254884334209834809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) * A394559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A394560.P18254884334209834809

/-! ## A394560.P17384839993312987050

`record[Δ[A394559(A028310(n))]]`
-/

namespace A394560.P17384839993312987050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394559 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A394560.P17384839993312987050

/-! ## A394560.P9253897740326516879

`record[A394559(n)-A000007(n)]`
-/

namespace A394560.P9253897740326516879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394559 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A394560.P9253897740326516879

/-!
# A394561: Number of divisors d | A286708(n) such that d is an Achilles number (in A052486).

The programs for A394561, there is no canonical definition to state claims against.
-/

/-! ## A394561.P18306683687501826983

`A376657(A365787(n+1))`
-/

namespace A394561.P18306683687501826983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376657 (A365787 (n + 1)).toNat

end

end A394561.P18306683687501826983

/-! ## A394561.P1060463560188878526

`A392276(A392264(n+1)^A392265(n+1))`
-/

namespace A394561.P1060463560188878526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392276 (SequenceMachineLib.roundAway ((A392264 (n + 1) : ℚ) ^ (A392265 (n + 1) : ℤ))).toNat

end

end A394561.P1060463560188878526

/-! ## A394561.P11779238856807384841

`A324825(A018002(n+1))-A324883(n+4)`
-/

namespace A394561.P11779238856807384841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324825 (A018002 (n + 1)).toNat - A324883 (n + 4)

end

end A394561.P11779238856807384841

/-! ## A394561.P15698098956420309726

`A219660(n)-A024326(A000740(n+1))`
-/

namespace A394561.P15698098956420309726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219660 n - A024326 (A000740 (n + 1)).toNat

end

end A394561.P15698098956420309726

/-! ## A394561.P7999909388273199806

`A331310(3*n+1)-A030315(A000225(n))`
-/

namespace A394561.P7999909388273199806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331310 (3 * n + 1) - A030315 (A000225 n).toNat

end

end A394561.P7999909388273199806

/-!
# A394565: a(n) = binomial(5*n+3,n).

The programs for A394565, the canonical program `A394565.P11846621640199777546` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394565 has offset 0).

The definition of A394565 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*n+3, n)` (program `A394565.P11846621640199777546`, by `A394565.P11846621640199777546.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394565.P11846621640199777546

`C(5*n+3, n)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394565

/-- `C(5*n+3, n)` -/
def P11846621640199777546.Spec : Prop :=
  ∀ n, (P11846621640199777546.a n : ℤ) = A394565 n

theorem P11846621640199777546.correct : P11846621640199777546.Spec := by
  intro n
  simp only [A394565]

end A394565

/-! ## A394565.P12891750499488991789

`(1+n)*A118971(n)`
-/

namespace A394565.P12891750499488991789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A118971 n

end

end A394565.P12891750499488991789

namespace A394565

/-- `(1+n)*A118971(n)` -/
def P12891750499488991789.Spec : Prop :=
  ∀ n, P12891750499488991789.a n = A394565 n

end A394565

/-! ## A394565.P11409895714139059742

`(n+1)*A370061(Δ[n²])`
-/

namespace A394565.P11409895714139059742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A370061 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A394565.P11409895714139059742

namespace A394565

/-- `(n+1)*A370061(Δ[n²])` -/
def P11409895714139059742.Spec : Prop :=
  ∀ n, P11409895714139059742.a n = A394565 n

end A394565

/-! ## A394565.P3132905291292578813

`(n+1)/5*A337292(n+1)`
-/

namespace A394565.P3132905291292578813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 5 * (A337292 (n + 1) : ℚ)

end

end A394565.P3132905291292578813

namespace A394565

/-- `(n+1)/5*A337292(n+1)` -/
def P3132905291292578813.Spec : Prop :=
  ∀ n, P3132905291292578813.a n = (A394565 n : ℚ)

end A394565

/-! ## A394565.P6032273694823672712

`A051052(A016885(n))`
-/

namespace A394565.P6032273694823672712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051052 (A016885 n).toNat

end

end A394565.P6032273694823672712

namespace A394565

/-- `A051052(A016885(n))` -/
def P6032273694823672712.Spec : Prop :=
  ∀ n, P6032273694823672712.a n = A394565 n

end A394565

/-! ## A394565.P16522199077028933359

`A159965(2*(n+1)²)`
-/

namespace A394565.P16522199077028933359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159965 (2 * (n + 1) ^ 2)

end

end A394565.P16522199077028933359

namespace A394565

/-- `A159965(2*(n+1)²)` -/
def P16522199077028933359.Spec : Prop :=
  ∀ n, P16522199077028933359.a n = A394565 n

end A394565

/-! ## A394565.P18401068358800343624

`A193635(A056220(n+1))`
-/

namespace A394565.P18401068358800343624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193635 (A056220 (n + 1)).toNat

end

end A394565.P18401068358800343624

namespace A394565

/-- `A193635(A056220(n+1))` -/
def P18401068358800343624.Spec : Prop :=
  ∀ n, P18401068358800343624.a n = A394565 n

end A394565

/-! ## A394565.P129656395631051144

`A144484(2*(n+1)²)`
-/

namespace A394565.P129656395631051144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144484 (2 * (n + 1) ^ 2)

end

end A394565.P129656395631051144

namespace A394565

/-- `A144484(2*(n+1)²)` -/
def P129656395631051144.Spec : Prop :=
  ∀ n, P129656395631051144.a n = A394565 n

end A394565

/-! ## A394565.P12147287877181799908

`(n+1)*A329060(∑[n])`
-/

namespace A394565.P12147287877181799908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A329060 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A394565.P12147287877181799908

namespace A394565

/-- `(n+1)*A329060(∑[n])` -/
def P12147287877181799908.Spec : Prop :=
  ∀ n, P12147287877181799908.a n = A394565 n

end A394565

/-!
# A394566: Number of labeled elementary Abelian groups (C_2)^n with a fixed identity.

The programs for A394566, there is no canonical definition to state claims against.
-/

/-! ## A394566.P13631032384199222821

`A246137(2^(n+1))`
-/

namespace A394566.P13631032384199222821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246137 (2 ^ (n + 1))

end

end A394566.P13631032384199222821

/-!
# A394569: Numbers k such that gcd(k, Omega(k)) is prime.

The programs for A394569, there is no canonical definition to state claims against.
-/

/-! ## A394569.P2444934190980450653

`∪[A134333(n+1), A274584(A126025(3*n+1))]`
-/

namespace A394569.P2444934190980450653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274584 (A126025 (3 * n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A394569.P2444934190980450653

/-!
# A394571: Positive integers k such that (2*k)^m + 1 is composite for every m >= 1 that is not a power of 2 with value >= 4.

The programs for A394571, the canonical program `A394571.P16805881212187566263` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394571 has offset 1).

The definition of A394571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7723 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394571.P16805881212187566263

`∩[A047845(n+1), A094550(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A394571

/-- `∩[A047845(n+1), A094550(n+1)]` -/
def P16805881212187566263.Spec : Prop :=
  ∀ n, (P16805881212187566263.a n : ℤ) = A394571 (n + 1)

theorem P16805881212187566263.correct : P16805881212187566263.Spec := by
  intro n
  simp only [A394571, Nat.add_sub_cancel]

end A394571

/-! ## A394571.P6914552908328582155

`lt[A325385(A270339(n+1)), A001222(2*n+1)]`
-/

namespace A394571.P6914552908328582155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325385 (A270339 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394571.P6914552908328582155

namespace A394571

/-- `lt[A325385(A270339(n+1)), A001222(2*n+1)]` -/
def P6914552908328582155.Spec : Prop :=
  ∀ n, (P6914552908328582155.a n : ℤ) = A394571 (n + 1)

end A394571

/-!
# A394572: Minimal value of Sum_{i=1..n} p(i)*p((i mod n)+1), as p ranges over all permutations of powers of 2 {1,2,4,...,2^(n-1)}.

The programs for A394572, the canonical program `A394572.P3430094835660377810` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394572 has offset 0).

The definition of A394572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394572.P3430094835660377810

`ceil(2^(n-4)*(10*n-3-(-1)^n))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394572

/-- `ceil(2^(n-4)*(10*n-3-(-1)^n))` -/
def P3430094835660377810.Spec : Prop :=
  ∀ n, P3430094835660377810.a n = A394572 n

theorem P3430094835660377810.correct : P3430094835660377810.Spec := by
  intro n
  simp only [A394572]

end A394572

/-! ## A394572.P1868666856706024208

`ogf((x+2x^2+2x^3)/(1-2x-4x^2+8x^3))`
-/

namespace A394572.P1868666856706024208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 2] [1, -2, -4, 8] n

end

end A394572.P1868666856706024208

namespace A394572

/-- `ogf((x+2x^2+2x^3)/(1-2x-4x^2+8x^3))` -/
def P1868666856706024208.Spec : Prop :=
  ∀ n, P1868666856706024208.a n = A394572 n

end A394572

/-! ## A394572.P13638230978338276529

`2*a(n-1)+4*a(n-2)-8*a(n-3)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=14`
-/

namespace A394572.P13638230978338276529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 14] fun n a =>
  2 * a (n - 1) + 4 * a (n - 2) - 8 * a (n - 3)

end

end A394572.P13638230978338276529

namespace A394572

/-- `2*a(n-1)+4*a(n-2)-8*a(n-3)` -/
def P13638230978338276529.Spec : Prop :=
  ∀ n, P13638230978338276529.a n = A394572 n

end A394572

/-! ## A394572.P12579869537728333588

`A395767(n+1)-2^n`
-/

namespace A394572.P12579869537728333588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395767 (n + 1) - (2 ^ n : ℤ)

end

end A394572.P12579869537728333588

namespace A394572

/-- `A395767(n+1)-2^n` -/
def P12579869537728333588.Spec : Prop :=
  ∀ n, P12579869537728333588.a n = A394572 n

end A394572

/-! ## A394572.P10848587837491753013

`A395770(n+1)-A131577(n)`
-/

namespace A394572.P10848587837491753013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395770 (n + 1) - A131577 n

end

end A394572.P10848587837491753013

namespace A394572

/-- `A395770(n+1)-A131577(n)` -/
def P10848587837491753013.Spec : Prop :=
  ∀ n, P10848587837491753013.a n = A394572 n

end A394572

/-! ## A394572.P2586043971973067974

`A395770(n+2)+A395767(n+1)-A395767(n+2)`
-/

namespace A394572.P2586043971973067974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395770 (n + 2) + A395767 (n + 1) - A395767 (n + 2)

end

end A394572.P2586043971973067974

namespace A394572

/-- `A395770(n+2)+A395767(n+1)-A395767(n+2)` -/
def P2586043971973067974.Spec : Prop :=
  ∀ n, P2586043971973067974.a n = A394572 n

end A394572

/-!
# A394576: a(1) = 1; a(n+1) is the smallest positive integer greater than a(n) that avoids violating the condition a(k) + a(k+1) + a(k+2) is not a term.

The programs for A394576, there is no canonical definition to state claims against.
-/

/-! ## A394576.P11253761629634835728

`eq[char[A299489(4*n-(n-2))], A000038(n)]`
-/

namespace A394576.P11253761629634835728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299489 ((4 * n : ℤ) - ((n : ℤ) - 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A394576.P11253761629634835728

/-! ## A394576.P12161431382170577247

`lt[n/2, A048571(A357370(3*n+1))]`
-/

namespace A394576.P12161431382170577247
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048571 (A357370 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A394576.P12161431382170577247

/-! ## A394576.P2093137510146935872

`lt[Δ[A339627(A009003(n+1))], 1]+1`
-/

namespace A394576.P2093137510146935872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339627 (A009003 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A394576.P2093137510146935872

/-! ## A394576.P11162425935639579438

`∑[A091090((A000009(n)-A083915(n+1))²)]`
-/

namespace A394576.P11162425935639579438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 ((A000009 n - A083915 (n + 1)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394576.P11162425935639579438

/-! ## A394576.P10325144785957123359

`A110591(A326626(3*n))+n`
-/

namespace A394576.P10325144785957123359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A326626 (3 * n)).toNat + (n : ℤ)

end

end A394576.P10325144785957123359

/-!
# A394577: Number of almost irreducible meanders with n intersections.

The programs for A394577, there is no canonical definition to state claims against.
-/

/-! ## A394577.P2456398642619186345

`and(A217148(3*n+1), A394481(A364345(n)))`
-/

namespace A394577.P2456398642619186345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A217148 (3 * n + 1)) (A394481 (A364345 n).toNat)

end

end A394577.P2456398642619186345

/-!
# A394578: a(n) = 2^(2*n-1) * p(n, n+1/2), where p(n,x) is the Lagrange interpolating polynomial through (1,0) and (k,1) for k=2..n+1.

The programs for A394578, there is no canonical definition to state claims against.
-/

/-! ## A394578.P13346715259024642289

`A273888(A083099(n+1))`
-/

namespace A394578.P13346715259024642289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273888 (A083099 (n + 1)).toNat

end

end A394578.P13346715259024642289

/-! ## A394578.P14802131226059195368

`A059995(A001075(n+2))-A002371(n+1)`
-/

namespace A394578.P14802131226059195368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A001075 (n + 2)).toNat - A002371 (n + 1)

end

end A394578.P14802131226059195368

/-!
# A394579: Moduli m in which a multiplicative square-root function exists over the ring of integers Z_m.

The programs for A394579, the canonical program `A394579.P8996503193519353570` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394579 has offset 1).

The definition of A394579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394579.P8996503193519353570

`filter[A004144(n+2), A212793(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A394579

/-- `filter[A004144(n+2), A212793(#)]` -/
def P8996503193519353570.Spec : Prop :=
  ∀ n, P8996503193519353570.a n = A394579 (n + 1)

theorem P8996503193519353570.correct : P8996503193519353570.Spec := by
  intro n
  simp only [A394579, Nat.add_sub_cancel]

end A394579

/-! ## A394579.P11941942391443539689

`filter[A081754(2+n), A212793(#)]`
-/

namespace A394579.P11941942391443539689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A394579.P11941942391443539689

namespace A394579

/-- `filter[A081754(2+n), A212793(#)]` -/
def P11941942391443539689.Spec : Prop :=
  ∀ n, P11941942391443539689.a n = A394579 (n + 1)

end A394579

/-! ## A394579.P3813981971424100457

`lt[10, A007954(A001105(3*n))]`
-/

namespace A394579.P3813981971424100457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A001105 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A394579.P3813981971424100457

namespace A394579

/-- `lt[10, A007954(A001105(3*n))]` -/
def P3813981971424100457.Spec : Prop :=
  ∀ n, (P3813981971424100457.a n : ℤ) = A394579 (n + 1)

end A394579

/-! ## A394579.P12118647421603282690

`lt[A316524(n+3), A225600(A284103(3*n+2))]`
-/

namespace A394579.P12118647421603282690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225600 (A284103 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394579.P12118647421603282690

namespace A394579

/-- `lt[A316524(n+3), A225600(A284103(3*n+2))]` -/
def P12118647421603282690.Spec : Prop :=
  ∀ n, (P12118647421603282690.a n : ℤ) = A394579 (n + 1)

end A394579

/-! ## A394579.P15909316725625464023

`lt[A163255(A355777(n)), A045774(n)]`
-/

namespace A394579.P15909316725625464023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163255 (A355777 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045774 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394579.P15909316725625464023

namespace A394579

/-- `lt[A163255(A355777(n)), A045774(n)]` -/
def P15909316725625464023.Spec : Prop :=
  ∀ n, (P15909316725625464023.a n : ℤ) = A394579 (n + 1)

end A394579

/-!
# A394580: Largest prime(n)-smooth k < primorial(n+1), where primorial = A002110.

The programs for A394580, there is no canonical definition to state claims against.
-/

/-! ## A394580.P13046198260692448387

`A379746(A363061(n+2)-1)`
-/

namespace A394580.P13046198260692448387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379746 (A363061 (n + 2) - 1).toNat

end

end A394580.P13046198260692448387

/-! ## A394580.P246772679350982813

`A090958(A090959(n+2)-2)`
-/

namespace A394580.P246772679350982813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090958 (A090959 (n + 2) - 2).toNat

end

end A394580.P246772679350982813

/-!
# A394582: Square array read by ascending antidiagonals: T(n, k) = n * T(n, k-1) + (k mod 2) * T(n-1, k), and T(n, 1) = T(1, k) = 1.

The programs for A394582, the canonical program `A394582.P68130475209840128` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394582 has offset 1).

The definition of A394582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n)+1)*T(n-1,k-1)+(col(n)+1)%2*T(n-1,k)` (program `A394582.P68130475209840128`, by `A394582.P68130475209840128.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394582.P68130475209840128

`(row(n)-col(n)+1)*T(n-1,k-1)+(col(n)+1)%2*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394582

/-- `(row(n)-col(n)+1)*T(n-1,k-1)+(col(n)+1)%2*T(n-1,k)` -/
def P68130475209840128.Spec : Prop :=
  ∀ n, P68130475209840128.a n = A394582 (n + 1)

theorem P68130475209840128.correct : P68130475209840128.Spec := by
  intro n
  simp only [A394582, Nat.add_sub_cancel]

end A394582

/-! ## A394582.P5197561348594194878

`A048266(A123349(n))`
-/

namespace A394582.P5197561348594194878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A123349 n).toNat

end

end A394582.P5197561348594194878

namespace A394582

/-- `A048266(A123349(n))` -/
def P5197561348594194878.Spec : Prop :=
  ∀ n, P5197561348594194878.a n = A394582 (n + 1)

end A394582

/-! ## A394582.P12382023653584931129

`A185284(A187503(n))+A123349(n)`
-/

namespace A394582.P12382023653584931129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A187503 n).toNat + A123349 n

end

end A394582.P12382023653584931129

namespace A394582

/-- `A185284(A187503(n))+A123349(n)` -/
def P12382023653584931129.Spec : Prop :=
  ∀ n, P12382023653584931129.a n = A394582 (n + 1)

end A394582

/-! ## A394582.P3908203298323259174

`A123349(n)*A209229(A011782(n))`
-/

namespace A394582.P3908203298323259174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123349 n * A209229 (A011782 n).toNat

end

end A394582.P3908203298323259174

namespace A394582

/-- `A123349(n)*A209229(A011782(n))` -/
def P3908203298323259174.Spec : Prop :=
  ∀ n, P3908203298323259174.a n = A394582 (n + 1)

end A394582

/-! ## A394582.P5016999300052076390

`A123349(n)%A001844(A049853(n))`
-/

namespace A394582.P5016999300052076390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123349 n) (A001844 (A049853 n).toNat)

end

end A394582.P5016999300052076390

namespace A394582

/-- `A123349(n)%A001844(A049853(n))` -/
def P5016999300052076390.Spec : Prop :=
  ∀ n, P5016999300052076390.a n = A394582 (n + 1)

end A394582

/-!
# A394583: Numbers k such that the k-th Stieltjes constant is positive.

The programs for A394583, there is no canonical definition to state claims against.
-/

/-! ## A394583.P10556162003746992949

`comp[A395455(1+n)]`
-/

namespace A394583.P10556162003746992949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395455 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A394583.P10556162003746992949

/-! ## A394583.P1935219810942980959

`lt[0, A114523(n)]`
-/

namespace A394583.P1935219810942980959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A394583.P1935219810942980959

/-! ## A394583.P17205936220135142225

`eq[A060576(n), A114523(n)]`
-/

namespace A394583.P17205936220135142225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394583.P17205936220135142225

/-! ## A394583.P12031192535792093414

`eq[A114523(n), A179184(n)]`
-/

namespace A394583.P12031192535792093414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394583.P12031192535792093414

/-! ## A394583.P16011121655825686055

`eq[A114523(n), A267927(n)]`
-/

namespace A394583.P16011121655825686055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267927 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394583.P16011121655825686055

/-! ## A394583.P6085581700101502859

`eq[A114523(n), A267936(n)]`
-/

namespace A394583.P6085581700101502859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267936 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394583.P6085581700101502859

/-! ## A394583.P1246085374782332128

`eq[A114523(n), A329684(n)]`
-/

namespace A394583.P1246085374782332128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394583.P1246085374782332128

/-! ## A394583.P16954884094951580362

`eq[A114523(n), A373565(n)]`
-/

namespace A394583.P16954884094951580362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394583.P16954884094951580362

/-! ## A394583.P3241724997431191400

`eq[A114523(n), A171905(n+1)]`
-/

namespace A394583.P3241724997431191400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394583.P3241724997431191400

/-! ## A394583.P5727378180404922871

`eq[1, A114523(n)]%A005897(n)`
-/

namespace A394583.P5727378180404922871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A005897 n)

end

end A394583.P5727378180404922871

/-! ## A394583.P17439901804418841242

`eq[A037165(n+1)%2, A114523(n)]`
-/

namespace A394583.P17439901804418841242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037165 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394583.P17439901804418841242

/-! ## A394583.P13418192876973491923

`eq[A092738(n+1)%2, A114523(n)]`
-/

namespace A394583.P13418192876973491923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092738 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394583.P13418192876973491923

/-! ## A394583.P14645957927849137007

`eq[A157995(n+1)%2, A114523(n)]`
-/

namespace A394583.P14645957927849137007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157995 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394583.P14645957927849137007

/-! ## A394583.P14213204192715416599

`eq[A067029(A141056(2*n+3)), A114523(n)]`
-/

namespace A394583.P14213204192715416599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A141056 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394583.P14213204192715416599

/-! ## A394583.P17591098298864805902

`eq[A114523(n), A160094(2*n+1)]`
-/

namespace A394583.P17591098298864805902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394583.P17591098298864805902

/-! ## A394583.P13718508727498619513

`eq[A114523(3*n+1)², A114523(n)]`
-/

namespace A394583.P13718508727498619513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 (3 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394583.P13718508727498619513

/-! ## A394583.P8634970242552097352

`eq[A086711(n+1)%2, A114523(n)]`
-/

namespace A394583.P8634970242552097352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086711 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394583.P8634970242552097352

/-! ## A394583.P330836752763202410

`eq[A067029(A000040(n+1)), A114523(n)]`
-/

namespace A394583.P330836752763202410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394583.P330836752763202410

/-! ## A394583.P6210542445407627032

`eq[A001222(A120337(n+1)), A114523(n)]`
-/

namespace A394583.P6210542445407627032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A120337 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394583.P6210542445407627032

/-! ## A394583.P9318079468105341072

`eq[A001222(A071695(n+1)), A114523(n)]`
-/

namespace A394583.P9318079468105341072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071695 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394583.P9318079468105341072

/-!
# A394589: Number of partitions of n with at least one even part minus the number of partitions of n into odd parts.

The programs for A394589, there is no canonical definition to state claims against.
-/

/-! ## A394589.P401530300974899428

`A047967(n)-A000009(n)`
-/

namespace A394589.P401530300974899428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n - A000009 n

end

end A394589.P401530300974899428

/-! ## A394589.P2469280255017344347

`A000041(n)-2*A000009(n)`
-/

namespace A394589.P2469280255017344347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - 2 * A000009 n

end

end A394589.P2469280255017344347

/-! ## A394589.P14502824108422161552

`A000065(n)-A333147(n)`
-/

namespace A394589.P14502824108422161552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n - A333147 n

end

end A394589.P14502824108422161552

/-! ## A394589.P4280737691851021354

`A047967(n)-abs(A081360(n))`
-/

namespace A394589.P4280737691851021354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n - |A081360 n|

end

end A394589.P4280737691851021354

/-! ## A394589.P1325165940650859294

`A047967(n)-∑[A087897(n)]`
-/

namespace A394589.P1325165940650859294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394589.P1325165940650859294

/-! ## A394589.P14308210002840543765

`A047967(n)-(A111133(n)+1)`
-/

namespace A394589.P14308210002840543765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n - (A111133 n + 1)

end

end A394589.P14308210002840543765

/-! ## A394589.P1267326787686374208

`A047967(n)-ceil(A087135(n)/2)`
-/

namespace A394589.P1267326787686374208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n - ⌈(A087135 n : ℚ) / 2⌉

end

end A394589.P1267326787686374208

/-! ## A394589.P10924089741354377762

`A047967(n)+A047967(n)-A000041(n)`
-/

namespace A394589.P10924089741354377762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + (A047967 n - A000041 n)

end

end A394589.P10924089741354377762

/-! ## A394589.P5185561179368880169

`A032741(n)+A167930(n)-A000009(n)`
-/

namespace A394589.P5185561179368880169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + (A167930 n - A000009 n)

end

end A394589.P5185561179368880169

/-! ## A394589.P13756946785987495293

`A047967(n)-(A331848(n)+A000700(n))`
-/

namespace A394589.P13756946785987495293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n - (A331848 n + A000700 n)

end

end A394589.P13756946785987495293

/-! ## A394589.P8431864170076455473

`A047967(n)+A167930(n)-A167934(n)`
-/

namespace A394589.P8431864170076455473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + (A167930 n - A167934 n)

end

end A394589.P8431864170076455473

/-!
# A394590: Number of permutations of [2*n] with the number moved left exceeding the number moved right by n.

The programs for A394590, there is no canonical definition to state claims against.
-/

/-! ## A394590.P12635189584326654708

`∑{#}[floor(n/2), C(2*n, n+2*#)*A271697(C(n+2*#+1, 2)+#)]`
-/

namespace A394590.P12635189584326654708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose (2 * n) (n + 2 * k) : ℤ) * A271697 (Nat.choose (n + 2 * k + 1) 2 + k)

end

end A394590.P12635189584326654708

/-!
# A394595: Row sums of A394559, inverse of a sequence transform with torus symmetry.

The programs for A394595, there is no canonical definition to state claims against.
-/

/-! ## A394595.P10400830386800183953

`A347664(2+n*∑[n])`
-/

namespace A394595.P10400830386800183953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347664 (2 + n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A394595.P10400830386800183953

