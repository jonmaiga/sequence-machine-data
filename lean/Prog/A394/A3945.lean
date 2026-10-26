import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A394503: Number of equivalence classes of set partitions of [n] under the adjacency monomial E.

The programs for A394503, there is no canonical definition to state claims against.
-/

/-! ## A394503.P6969691471727555664

`A381349(A179865(n+1))`
-/

namespace A394503.P6969691471727555664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381349 (A179865 (n + 1)).toNat

end

end A394503.P6969691471727555664

/-! ## A394503.P11228298344097820768

`A381349(A102366(n+1))`
-/

namespace A394503.P11228298344097820768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381349 (A102366 (n + 1)).toNat

end

end A394503.P11228298344097820768

/-!
# A394504: Numbers such that each digit d_i is equal to the number of digits to its right that are strictly less than d_i.

The programs for A394504, there is no canonical definition to state claims against.
-/

/-! ## A394504.P9016056909822452914

`A049345(eq[A321765(3*n+1), A336571(n+5)])`
-/

namespace A394504.P9016056909822452914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321765 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336571 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A394504.P9016056909822452914

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

/-!
# A394510: a(2*k) = 2*k*(5*k+1)*(10*k+1), a(2*k+1) = 2*(k+1)*(5*k+4)*(10*k+9), with k >= 0.

The programs for A394510, the canonical program `A394510.P16388077156761870700` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394510 has offset 0).

The definition of A394510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394510.P16388077156761870700

`A132356(n)*A090771(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A394510

/-- `A132356(n)*A090771(n+1)` -/
def P16388077156761870700.Spec : Prop :=
  ∀ n, P16388077156761870700.a n = A394510 n

theorem P16388077156761870700.correct : P16388077156761870700.Spec := by
  intro n
  simp only [A394510]

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

/-! ## A394521.P9354866790933933029

`A007559(2*n)/A007559(n+1)`
-/

namespace A394521.P9354866790933933029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007559 (2 * n) : ℚ) / (A007559 (n + 1) : ℚ)

end

end A394521.P9354866790933933029

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

/-! ## A394525.P8892027519339647946

`A083661(2*(n+2))^A160198(A096585(n))`
-/

namespace A394525.P8892027519339647946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083661 (2 * (n + 2)) : ℚ) ^ (A160198 (A096585 n).toNat : ℤ)

end

end A394525.P8892027519339647946

/-! ## A394525.P1120703124240354016

`A083661(2*(n+2))%A096585(A005408(n))`
-/

namespace A394525.P1120703124240354016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083661 (2 * (n + 2))) (A096585 (A005408 n).toNat)

end

end A394525.P1120703124240354016

/-! ## A394525.P8118676149254317331

`A083661(2*n+4)*A264859(A008578(n+1))`
-/

namespace A394525.P8118676149254317331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083661 (2 * n + 4) * A264859 (A008578 (n + 1)).toNat

end

end A394525.P8118676149254317331

/-!
# A394526: a(n) = n*(5^n - 1) + 1.

The programs for A394526, the canonical program `A394526.P7639771569929179932` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394526 has offset 0).

The definition of A394526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(5^n-1)+1` (program `A394526.P7639771569929179932`, by `A394526.P7639771569929179932.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394526.P7639771569929179932

`n*(5^n-1)+1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394526

/-- `n*(5^n-1)+1` -/
def P7639771569929179932.Spec : Prop :=
  ∀ n, P7639771569929179932.a n = A394526 n

theorem P7639771569929179932.correct : P7639771569929179932.Spec := by
  intro n
  simp only [A394526]

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

The programs for A394529, the canonical program `A394529.P4813404703482126856` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394529 has offset 0).

The definition of A394529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394529.P4813404703482126856

`(n²*A000108(n)+A008549(n))/2`

The canonical program, it is in `Seq.B001.C012`.
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

/-! ## A394529.P7799629956277887481

`A139262(n)+A008549(n)`
-/

namespace A394529.P7799629956277887481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139262 n + A008549 n

end

end A394529.P7799629956277887481

namespace A394529

/-- `A139262(n)+A008549(n)` -/
def P7799629956277887481.Spec : Prop :=
  ∀ n, P7799629956277887481.a n = A394529 n

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

/-!
# A394532: Numbers k such that every abelian group of order k appears as a group of units of the ring Z/mZ for at least one m.

The programs for A394532, there is no canonical definition to state claims against.
-/

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

/-! ## A394532.P12495984632118235611

`A106039(A297881(n)+A118849(n+1))`
-/

namespace A394532.P12495984632118235611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106039 (A297881 n + A118849 (n + 1)).toNat

end

end A394532.P12495984632118235611

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

/-! ## A394533.P3440519086518107038

`(n+1)*A381635(a(n-1)²)` with `a(0)=1`
-/

namespace A394533.P3440519086518107038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A381635 (a (n - 1) ^ 2).toNat

end

end A394533.P3440519086518107038

/-! ## A394533.P7425388615800971745

`A284559(A057777(n+1))`
-/

namespace A394533.P7425388615800971745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 (A057777 (n + 1)).toNat

end

end A394533.P7425388615800971745

/-!
# A394539: Number of graphs with n vertices that have no induced regular subgraph of order 5.

The programs for A394539, there is no canonical definition to state claims against.
-/

/-! ## A394539.P11107127291691006044

`A135646(A150507(n))`
-/

namespace A394539.P11107127291691006044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135646 (A150507 n).toNat

end

end A394539.P11107127291691006044

/-! ## A394539.P168368373226349743

`A353848(A136101(record[xor(n, 2*n)/3]))`
-/

namespace A394539.P168368373226349743
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 (A136101 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat).toNat

end

end A394539.P168368373226349743

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

/-! ## A394540.P11278495907691730565

`gcd(A007413(A299261(n)), A299261(n))`
-/

namespace A394540.P11278495907691730565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007413 (A299261 n).toNat) (A299261 n)

end

end A394540.P11278495907691730565

/-! ## A394540.P1387882774116703919

`A082067(A020743(n))`
-/

namespace A394540.P1387882774116703919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (A020743 n).toNat

end

end A394540.P1387882774116703919

/-! ## A394540.P17156417695018407069

`A082067(A048584(n+1))`
-/

namespace A394540.P17156417695018407069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (A048584 (n + 1)).toNat

end

end A394540.P17156417695018407069

/-!
# A394544: Largest prime factor of the n-th base 10 palindrome with a(1)=a(2)=1.

The programs for A394544, there is no canonical definition to state claims against.
-/

/-! ## A394544.P4177789967702685547

`A006530(∏{p}[A002113(n+1), #])`
-/

namespace A394544.P4177789967702685547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A394544.P4177789967702685547

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

/-! ## A394545.P173256386390732362

`A002113(n+3)%A262259(n+1)`
-/

namespace A394545.P173256386390732362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002113 (n + 3)) (A262259 (n + 1))

end

end A394545.P173256386390732362

/-! ## A394545.P9528400784663792660

`A002113(n+3)%A113155(A002522(n))`
-/

namespace A394545.P9528400784663792660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002113 (n + 3)) (A113155 (A002522 n).toNat)

end

end A394545.P9528400784663792660

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

/-! ## A394560.P17368009033713598348

`record[A394559(n+1)]`
-/

namespace A394560.P17368009033713598348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A394560.P17368009033713598348

/-! ## A394560.P9466714247096928410

`record[A011655(n)*A394559(n)]`
-/

namespace A394560.P9466714247096928410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n * A394559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A394560.P9466714247096928410

/-! ## A394560.P5828672450286106096

`record[A394559(n)%A164111(n)]`
-/

namespace A394560.P5828672450286106096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394559 n) (A164111 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A394560.P5828672450286106096

/-! ## A394560.P3316198855670100613

`A189006(n)*A394559(A000124(n))`
-/

namespace A394560.P3316198855670100613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 n * A394559 (A000124 n).toNat

end

end A394560.P3316198855670100613

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

/-! ## A394561.P11779238856807384841

`A324825(A018002(n+1))-A324883(n+4)`
-/

namespace A394561.P11779238856807384841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324825 (A018002 (n + 1)).toNat - A324883 (n + 4)

end

end A394561.P11779238856807384841

/-! ## A394561.P7999909388273199806

`A331310(3*n+1)-A030315(A000225(n))`
-/

namespace A394561.P7999909388273199806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331310 (3 * n + 1) - A030315 (A000225 n).toNat

end

end A394561.P7999909388273199806

/-! ## A394561.P156415222297776560

`A037807(A090119(n+1))`
-/

namespace A394561.P156415222297776560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037807 (A090119 (n + 1)).toNat

end

end A394561.P156415222297776560

/-! ## A394561.P15075700578773141409

`A277150(A171231(n+1))`
-/

namespace A394561.P15075700578773141409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277150 (A171231 (n + 1)).toNat

end

end A394561.P15075700578773141409

/-!
# A394565: a(n) = binomial(5*n+3,n).

The programs for A394565, the canonical program `A394565.P11846621640199777546` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394565 has offset 0).

The definition of A394565 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*n+3, n)` (program `A394565.P11846621640199777546`, by `A394565.P11846621640199777546.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394565.P11846621640199777546

`C(5*n+3, n)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394565

/-- `C(5*n+3, n)` -/
def P11846621640199777546.Spec : Prop :=
  ∀ n, (P11846621640199777546.a n : ℤ) = A394565 n

theorem P11846621640199777546.correct : P11846621640199777546.Spec := by
  intro n
  simp only [A394565]

end A394565

/-! ## A394565.P1802723395243789972

`(n+1)*A118971(n)`
-/

namespace A394565.P1802723395243789972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A118971 n

end

end A394565.P1802723395243789972

namespace A394565

/-- `(n+1)*A118971(n)` -/
def P1802723395243789972.Spec : Prop :=
  ∀ n, P1802723395243789972.a n = A394565 n

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
# A394571: Positive integers k such that (2*k)^m + 1 is composite for every m >= 1 that is not a power of 2 with value >= 4.

The programs for A394571, the canonical program `A394571.P16805881212187566263` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394571 has offset 1).

The definition of A394571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7723 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394571.P16805881212187566263

`∩[A047845(n+1), A094550(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A394571

/-- `∩[A047845(n+1), A094550(n+1)]` -/
def P16805881212187566263.Spec : Prop :=
  ∀ n, (P16805881212187566263.a n : ℤ) = A394571 (n + 1)

theorem P16805881212187566263.correct : P16805881212187566263.Spec := by
  intro n
  simp only [A394571, Nat.add_sub_cancel]

end A394571

/-!
# A394572: Minimal value of Sum_{i=1..n} p(i)*p((i mod n)+1), as p ranges over all permutations of powers of 2 {1,2,4,...,2^(n-1)}.

The programs for A394572, the canonical program `A394572.P3430094835660377810` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394572 has offset 0).

The definition of A394572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394572.P3430094835660377810

`ceil(2^(n-4)*(10*n-3-(-1)^n))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394572

/-- `ceil(2^(n-4)*(10*n-3-(-1)^n))` -/
def P3430094835660377810.Spec : Prop :=
  ∀ n, P3430094835660377810.a n = A394572 n

theorem P3430094835660377810.correct : P3430094835660377810.Spec := by
  intro n
  simp only [A394572]

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

theorem P12579869537728333588.correct : P12579869537728333588.Spec := by
  intro n
  simp only [A394572, Nat.add_sub_cancel, A394572.P12579869537728333588.a, A394572.P3430094835660377810.a, A395767, A395767.P6540470511524819013.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

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

theorem P10848587837491753013.correct : P10848587837491753013.Spec := by
  intro n
  simp only [A394572, Nat.add_sub_cancel, A394572.P10848587837491753013.a, A394572.P3430094835660377810.a, A131577, A131577.P3998309598604981540.a, A395770, A395770.P6054457820381532371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

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
# A394576: a(1) = 1; a(n+1) as the smallest positive integer greater than a(n) that avoids violating the condition a(k) + a(k+1) + a(k+2) is not term.

The programs for A394576, there is no canonical definition to state claims against.
-/

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

/-! ## A394576.P13494920739717171356

`A076642(A067588(n+1))`
-/

namespace A394576.P13494920739717171356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076642 (A067588 (n + 1)).toNat

end

end A394576.P13494920739717171356

/-! ## A394576.P15390843042993844727

`lt[A231429(n), A278038(A008299(n+2))]`
-/

namespace A394576.P15390843042993844727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 (A008299 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394576.P15390843042993844727

/-! ## A394576.P17133151378115527770

`lt[A242091(A174066(n+1)), A134466(n+1)]`
-/

namespace A394576.P17133151378115527770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242091 (A174066 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134466 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394576.P17133151378115527770

/-! ## A394576.P7452163433737577080

`A084558(A137356(n))+n`
-/

namespace A394576.P7452163433737577080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A137356 n).toNat + (n : ℤ)

end

end A394576.P7452163433737577080

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

The programs for A394579, the canonical program `A394579.P10493215658390247642` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394579 has offset 1).

The definition of A394579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8769 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394579.P8996503193519353570

`filter[A004144(n+2), A212793(#)]`
-/

namespace A394579.P8996503193519353570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A394579.P8996503193519353570

namespace A394579

/-- `filter[A004144(n+2), A212793(#)]` -/
def P8996503193519353570.Spec : Prop :=
  ∀ n, P8996503193519353570.a n = A394579 (n + 1)

end A394579

/-! ## A394579.P10493215658390247642

`filter[A081754(n+2), A212793(#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A394579

/-- `filter[A081754(n+2), A212793(#)]` -/
def P10493215658390247642.Spec : Prop :=
  ∀ n, P10493215658390247642.a n = A394579 (n + 1)

theorem P10493215658390247642.correct : P10493215658390247642.Spec := by
  intro n
  simp only [A394579, Nat.add_sub_cancel]

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

The programs for A394582, the canonical program `A394582.P68130475209840128` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394582 has offset 1).

The definition of A394582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n)+1)*T(n-1,k-1)+(col(n)+1)%2*T(n-1,k)` (program `A394582.P68130475209840128`, by `A394582.P68130475209840128.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394582.P68130475209840128

`(row(n)-col(n)+1)*T(n-1,k-1)+(col(n)+1)%2*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C040`.
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

/-! ## A394582.P10506525940540266539

`A346701(A391045(n))`
-/

namespace A394582.P10506525940540266539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346701 (A391045 n).toNat

end

end A394582.P10506525940540266539

namespace A394582

/-- `A346701(A391045(n))` -/
def P10506525940540266539.Spec : Prop :=
  ∀ n, P10506525940540266539.a n = A394582 (n + 1)

end A394582

/-! ## A394582.P3393733083909555061

`A357097(A300003(n+1))`
-/

namespace A394582.P3393733083909555061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357097 (A300003 (n + 1)).toNat

end

end A394582.P3393733083909555061

namespace A394582

/-- `A357097(A300003(n+1))` -/
def P3393733083909555061.Spec : Prop :=
  ∀ n, P3393733083909555061.a n = A394582 (n + 1)

end A394582

/-! ## A394582.P683189709833254895

`A123349(n*A123349(A123349(n+1)))`
-/

namespace A394582.P683189709833254895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123349 ((n : ℤ) * A123349 (A123349 (n + 1)).toNat).toNat

end

end A394582.P683189709833254895

namespace A394582

/-- `A123349(n*A123349(A123349(n+1)))` -/
def P683189709833254895.Spec : Prop :=
  ∀ n, P683189709833254895.a n = A394582 (n + 1)

end A394582

/-!
# A394583: Numbers k such that the k-th Stieltjes constant is positive.

The programs for A394583, there is no canonical definition to state claims against.
-/

/-! ## A394583.P12222206523516153951

`comp[A395455(n+1)]`
-/

namespace A394583.P12222206523516153951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A394583.P12222206523516153951

/-! ## A394583.P13799314740256243459

`eq[1, A114523(n)]`
-/

namespace A394583.P13799314740256243459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A394583.P13799314740256243459

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

/-! ## A394590.P7647740158492968

`∑[∑[a(n-1)^a(n-1)]]` with `a(0)=1, a(1)=-2, a(2)=2`
-/

namespace A394590.P7647740158492968
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [1, -2, 2] fun n f2 =>
  f2 (n - 1) ^ (f2 (n - 1))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394590.P7647740158492968

/-!
# A394595: Row sums of A394559, inverse of a sequence transform with torus symmetry.

The programs for A394595, there is no canonical definition to state claims against.
-/

/-! ## A394595.P260553690483510591

`A057364(n^(n+1))+1`
-/

namespace A394595.P260553690483510591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 (n ^ (n + 1)) + 1

end

end A394595.P260553690483510591

