import SequenceMachineLib
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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

/-!
# A190400: Number of ways to place 5 nonattacking grasshoppers on a toroidal chessboard of size n x n.

The programs for A190400, there is no canonical definition to state claims against.
-/

/-! ## A190400.P857941194553022876

`A005234(A016116(2*n))-A000945(n+1)`
-/

namespace A190400.P857941194553022876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005234 (A016116 (2 * n)).toNat - A000945 (n + 1)

end

end A190400.P857941194553022876

/-!
# A190401: Number of ways to place 6 nonattacking grasshoppers on a toroidal chessboard of size n x n.

The programs for A190401, there is no canonical definition to state claims against.
-/

/-! ## A190401.P4258801347305466035

`A017666(n+1)*A188346(A335548(2*n+1))`
-/

namespace A190401.P4258801347305466035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1) * A188346 (A335548 (2 * n + 1)).toNat

end

end A190401.P4258801347305466035

/-!
# A190402: Number n for which phi(n) = phi(n'), where phi is the Euler totient function and n' the arithmetic derivative of n.

The programs for A190402, there is no canonical definition to state claims against.
-/

/-! ## A190402.P16694668144162625195

`eq[A000010(n+1), A229340(n+1)]+1`
-/

namespace A190402.P16694668144162625195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190402.P16694668144162625195

/-! ## A190402.P387174781809087545

`eq[sqrt(A127473(n+1)), A229340(n+1)]+1`
-/

namespace A190402.P387174781809087545
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A190402.P387174781809087545

/-! ## A190402.P13194607755540358235

`eq[A109606(n+1)+1, A229340(n+1)]+1`
-/

namespace A190402.P13194607755540358235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190402.P13194607755540358235

/-! ## A190402.P17540962608660719971

`eq[A039649(n+1)-1, A229340(n+1)]+1`
-/

namespace A190402.P17540962608660719971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190402.P17540962608660719971

/-! ## A190402.P5859762103159175106

`eq[n-A219428(n+1), A229340(n+1)]+1`
-/

namespace A190402.P5859762103159175106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190402.P5859762103159175106

/-! ## A190402.P13980808583530289439

`eq[1-A051953(n+1)+n, A229340(n+1)]+1`
-/

namespace A190402.P13980808583530289439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051953 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190402.P13980808583530289439

/-! ## A190402.P6303301844017752388

`eq[A121048(n+1)-(n+1), A229340(n+1)]+1`
-/

namespace A190402.P6303301844017752388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190402.P6303301844017752388

/-!
# A190403: Number n for which sigma(n)=sigma(n'), where sigma is the sum of divisors and n' the arithmetic derivative of n.

The programs for A190403, there is no canonical definition to state claims against.
-/

/-! ## A190403.P13392138353941117153

`∩[A365883(n+1), A385095(n+1)]`
-/

namespace A190403.P13392138353941117153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190403.P13392138353941117153

/-!
# A190405: Decimal expansion of Sum_{k>=1} (1/2)^T(k), where T=A000217 (triangular numbers); based on column 1 of the natural number array, A000027.

The programs for A190405, there is no canonical definition to state claims against.
-/

/-! ## A190405.P8892417345694894600

`A299998(n+1)`
-/

namespace A190405.P8892417345694894600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299998 (n + 1 + 1)

end

end A190405.P8892417345694894600

/-! ## A190405.P11810214938920128372

`Δ[A023443(∑[A299998(n)])]`
-/

namespace A190405.P11810214938920128372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299998 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190405.P11810214938920128372

/-!
# A190408: Decimal expansion of sum of odd-numbered rows of array G defined at A190404.

The programs for A190408, there is no canonical definition to state claims against.
-/

/-! ## A190408.P10884419384937843304

`9-A190409(n)`
-/

namespace A190408.P10884419384937843304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A190409 n

end

end A190408.P10884419384937843304

/-!
# A190409: Decimal expansion of sum of even-numbered rows of array G defined at A190404.

The programs for A190409, there is no canonical definition to state claims against.
-/

/-! ## A190409.P16633107216251660686

`9-A190408(n)`
-/

namespace A190409.P16633107216251660686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A190408 n

end

end A190409.P16633107216251660686

/-!
# A190410: Decimal expansion of sum of odd-numbered columns of array G defined at A190404.

The programs for A190410, there is no canonical definition to state claims against.
-/

/-! ## A190410.P6239617650234552759

`9-A190411(n)`
-/

namespace A190410.P6239617650234552759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A190411 n

end

end A190410.P6239617650234552759

/-!
# A190411: Decimal expansion of sum of even-numbered columns of array G defined at A190404.

The programs for A190411, there is no canonical definition to state claims against.
-/

/-! ## A190411.P2647436898167889361

`9-A190410(n)`
-/

namespace A190411.P2647436898167889361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A190410 n

end

end A190411.P2647436898167889361

/-!
# A190412: Decimal expansion of sum over upper triangular subarray of array G defined at A190404.

The programs for A190412, there is no canonical definition to state claims against.
-/

/-! ## A190412.P10933893267333921588

`9-A190415(n)`
-/

namespace A190412.P10933893267333921588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A190415 n

end

end A190412.P10933893267333921588

/-!
# A190413: primepi(R_{n*m}) <= n*primepi(R_m) for m >= a(n), where R_k is the k-th Ramanujan prime (A104272).

The programs for A190413, there is no canonical definition to state claims against.
-/

/-! ## A190413.P7400243848073452784

`A190414(n+1)/(n+1)`
-/

namespace A190413.P7400243848073452784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190414 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A190413.P7400243848073452784

/-!
# A190414: primepi(R_m) <= i*primepi(R_j) for any factorization m=i*j if j >= a(i), where R_k is the k-th Ramanujan prime (A104272).

The programs for A190414, there is no canonical definition to state claims against.
-/

/-! ## A190414.P18001729127989391684

`(n+1)*A190413(n+1)`
-/

namespace A190414.P18001729127989391684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A190413 (n + 1)

end

end A190414.P18001729127989391684

/-!
# A190415: Decimal expansion of sum over lower triangular subarray of array G defined at A190404.

The programs for A190415, there is no canonical definition to state claims against.
-/

/-! ## A190415.P7167514192291389537

`9-A190412(n)`
-/

namespace A190415.P7167514192291389537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A190412 n

end

end A190415.P7167514192291389537

/-!
# A190419: Number of (n+2)X(n+2) symmetric binary matrices without the pattern 1 1 1 diagonally.

The programs for A190419, there is no canonical definition to state claims against.
-/

/-! ## A190419.P1441523462776789051

`A254231(n+6)`
-/

namespace A190419.P1441523462776789051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254231 (n + 6)

end

end A190419.P1441523462776789051

/-! ## A190419.P2755185376455860857

`8*∏[A000073(n+6)]`
-/

namespace A190419.P2755185376455860857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A190419.P2755185376455860857

/-! ## A190419.P4840421117124645221

`8*∏[Δ[A225605(n+2)]]`
-/

namespace A190419.P4840421117124645221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225605 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A190419.P4840421117124645221

/-! ## A190419.P16022812370660915974

`8*∏[A243044(A034856(n+1)-n)]`
-/

namespace A190419.P16022812370660915974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243044 (A034856 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A190419.P16022812370660915974

/-!
# A190423: Primes p such that the least k with p+k and p+2k both prime sets a new record.

The programs for A190423, there is no canonical definition to state claims against.
-/

/-! ## A190423.P9691625274985568700

`A032529(A322439(n)+n)`
-/

namespace A190423.P9691625274985568700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032529 (A322439 n + (n : ℤ)).toNat

end

end A190423.P9691625274985568700

/-!
# A190424: RECORDS transform of A120627.

The programs for A190424, there is no canonical definition to state claims against.
-/

/-! ## A190424.P10103259519512301489

`record[A120627(n+1)]`
-/

namespace A190424.P10103259519512301489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190424.P10103259519512301489

/-! ## A190424.P13621656050398697245

`record[xor(1, A120627(A028310(n)))]-1`
-/

namespace A190424.P13621656050398697245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A120627 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A190424.P13621656050398697245

/-! ## A190424.P6093479650862328805

`record[xor(1, A120627(A342022(n)))]-1`
-/

namespace A190424.P6093479650862328805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A120627 (A342022 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A190424.P6093479650862328805

/-! ## A190424.P9865927331281180586

`record[A142150(A165138(n+1)-A000040(n+1))]`
-/

namespace A190424.P9865927331281180586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A165138 (n + 1) - A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190424.P9865927331281180586

/-! ## A190424.P14325547827667918682

`record[A142150(A165138(n+1)-A008578(n+2))]`
-/

namespace A190424.P14325547827667918682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A165138 (n + 1) - A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190424.P14325547827667918682

/-!
# A190425: Number of one-sided prudent walks from (0,0) to (n,n), with floor(n/2)+n east steps, floor(n/2) west steps and n north steps.

The programs for A190425, the canonical program `A190425.P1676898405664856003` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190425 has offset 0).

The definition of A190425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190425.P1676898405664856003

`C(2*n, n)*A046899(A007590(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A190425

/-- `C(2*n, n)*A046899(A007590(n))` -/
def P1676898405664856003.Spec : Prop :=
  ∀ n, P1676898405664856003.a n = A190425 n

theorem P1676898405664856003.correct : P1676898405664856003.Spec := by
  intro n
  simp only [A190425]

end A190425

/-! ## A190425.P4007855774533019740

`A000984(n)*A046899(A007590(n))`
-/

namespace A190425.P4007855774533019740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A046899 (A007590 n).toNat

end

end A190425.P4007855774533019740

namespace A190425

/-- `A000984(n)*A046899(A007590(n))` -/
def P4007855774533019740.Spec : Prop :=
  ∀ n, P4007855774533019740.a n = A190425 n

end A190425

/-! ## A190425.P2399828161584118068

`record[A092392(n)]*A046899(A007590(n))`
-/

namespace A190425.P2399828161584118068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A046899 (A007590 n).toNat

end

end A190425.P2399828161584118068

namespace A190425

/-- `record[A092392(n)]*A046899(A007590(n))` -/
def P2399828161584118068.Spec : Prop :=
  ∀ n, P2399828161584118068.a n = A190425 n

end A190425

/-! ## A190425.P17388284106189092444

`record[A126869(n)]*A046899(A007590(n))`
-/

namespace A190425.P17388284106189092444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A046899 (A007590 n).toNat

end

end A190425.P17388284106189092444

namespace A190425

/-- `record[A126869(n)]*A046899(A007590(n))` -/
def P17388284106189092444.Spec : Prop :=
  ∀ n, P17388284106189092444.a n = A190425 n

end A190425

/-! ## A190425.P14477771137858250704

`A001405(2*n)*A046899(A007590(n))`
-/

namespace A190425.P14477771137858250704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A046899 (A007590 n).toNat

end

end A190425.P14477771137858250704

namespace A190425

/-- `A001405(2*n)*A046899(A007590(n))` -/
def P14477771137858250704.Spec : Prop :=
  ∀ n, P14477771137858250704.a n = A190425 n

end A190425

/-! ## A190425.P9569918479567876321

`A046899(A007590(n))*A126869(2*n)`
-/

namespace A190425.P9569918479567876321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A007590 n).toNat * A126869 (2 * n)

end

end A190425.P9569918479567876321

namespace A190425

/-- `A046899(A007590(n))*A126869(2*n)` -/
def P9569918479567876321.Spec : Prop :=
  ∀ n, P9569918479567876321.a n = A190425 n

end A190425

/-! ## A190425.P6946941231224513920

`A046899(A007590(n))*A129383(2*n)`
-/

namespace A190425.P6946941231224513920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A007590 n).toNat * A129383 (2 * n)

end

end A190425.P6946941231224513920

namespace A190425

/-- `A046899(A007590(n))*A129383(2*n)` -/
def P6946941231224513920.Spec : Prop :=
  ∀ n, P6946941231224513920.a n = A190425 n

end A190425

/-! ## A190425.P17981175120461880075

`A053438(n)*A120588(n)*A182584(n)`
-/

namespace A190425.P17981175120461880075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n * A120588 n * A182584 n

end

end A190425.P17981175120461880075

namespace A190425

/-- `A053438(n)*A120588(n)*A182584(n)` -/
def P17981175120461880075.Spec : Prop :=
  ∀ n, P17981175120461880075.a n = A190425 n

end A190425

/-! ## A190425.P4304482422327390445

`A046899(A000096(n))*A046899(A007590(n))`
-/

namespace A190425.P4304482422327390445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A000096 n).toNat * A046899 (A007590 n).toNat

end

end A190425.P4304482422327390445

namespace A190425

/-- `A046899(A000096(n))*A046899(A007590(n))` -/
def P4304482422327390445.Spec : Prop :=
  ∀ n, P4304482422327390445.a n = A190425 n

end A190425

/-! ## A190425.P10792503291893387151

`A046899(A007590(n))*A124927(2*n²)`
-/

namespace A190425.P10792503291893387151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A007590 n).toNat * A124927 (2 * n ^ 2)

end

end A190425.P10792503291893387151

namespace A190425

/-- `A046899(A007590(n))*A124927(2*n²)` -/
def P10792503291893387151.Spec : Prop :=
  ∀ n, P10792503291893387151.a n = A190425 n

end A190425

/-!
# A190427: a(n) = [(b*n+c)*r] - b*[n*r] - [c*r], where (r,b,c)=(golden ratio,2,1) and []=floor.

The programs for A190427, the canonical program `A190427.P17614517244899195498` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190427 has offset 1).

The definition of A190427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190427.P17614517244899195498

`floor((2*(n+1)+1)*ϕ)-2*floor((n+1)*ϕ)-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A190427

/-- `floor((2*(n+1)+1)*ϕ)-2*floor((n+1)*ϕ)-1` -/
def P17614517244899195498.Spec : Prop :=
  ∀ n, P17614517244899195498.a n = A190427 (n + 1)

theorem P17614517244899195498.correct : P17614517244899195498.Spec := by
  intro n
  simp only [A190427, Nat.add_sub_cancel]

end A190427

/-! ## A190427.P12018629685418588072

`round(sqrt(A190451(n+1)))`
-/

namespace A190427.P12018629685418588072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A190451 (n + 1) : ℝ))

end

end A190427.P12018629685418588072

namespace A190427

/-- `round(sqrt(A190451(n+1)))` -/
def P12018629685418588072.Spec : Prop :=
  ∀ n, P12018629685418588072.a n = A190427 (n + 1)

end A190427

/-! ## A190427.P15419083518744140689

`A026274(2*(n+1))%A001950(n+1)`
-/

namespace A190427.P15419083518744140689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026274 (2 * (n + 1))) (A001950 (n + 1))

end

end A190427.P15419083518744140689

namespace A190427

/-- `A026274(2*(n+1))%A001950(n+1)` -/
def P15419083518744140689.Spec : Prop :=
  ∀ n, P15419083518744140689.a n = A190427 (n + 1)

end A190427

/-! ## A190427.P18303578989561285787

`A001950(2*n+3)%∑[Δ[ceil(ϕ*n)]+1]`
-/

namespace A190427.P18303578989561285787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001950 (2 * n + 3)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190427.P18303578989561285787

namespace A190427

/-- `A001950(2*n+3)%∑[Δ[ceil(ϕ*n)]+1]` -/
def P18303578989561285787.Spec : Prop :=
  ∀ n, P18303578989561285787.a n = A190427 (n + 1)

end A190427

/-! ## A190427.P13597534798844974376

`A004956(2*n+3)%A004956(n+1)`
-/

namespace A190427.P13597534798844974376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004956 (2 * n + 3)) (A004956 (n + 1))

end

end A190427.P13597534798844974376

namespace A190427

/-- `A004956(2*n+3)%A004956(n+1)` -/
def P13597534798844974376.Spec : Prop :=
  ∀ n, P13597534798844974376.a n = A190427 (n + 1)

end A190427

/-! ## A190427.P4362805693292349805

`A026356(2*(n+2))%record[A050411(n+1)]`
-/

namespace A190427.P4362805693292349805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026356 (2 * (n + 2))) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A190427.P4362805693292349805

namespace A190427

/-- `A026356(2*(n+2))%record[A050411(n+1)]` -/
def P4362805693292349805.Spec : Prop :=
  ∀ n, P4362805693292349805.a n = A190427 (n + 1)

end A190427

/-! ## A190427.P15962348552450731380

`A284749(A026356(2*(n+2))-A288713(n+2))`
-/

namespace A190427.P15962348552450731380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (A026356 (2 * (n + 2)) - A288713 (n + 2)).toNat

end

end A190427.P15962348552450731380

namespace A190427

/-- `A284749(A026356(2*(n+2))-A288713(n+2))` -/
def P15962348552450731380.Spec : Prop :=
  ∀ n, P15962348552450731380.a n = A190427 (n + 1)

end A190427

/-! ## A190427.P13690410498999604413

`A383670(A075317(n+2))`
-/

namespace A190427.P13690410498999604413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383670 (A075317 (n + 2)).toNat

end

end A190427.P13690410498999604413

namespace A190427

/-- `A383670(A075317(n+2))` -/
def P13690410498999604413.Spec : Prop :=
  ∀ n, P13690410498999604413.a n = A190427 (n + 1)

end A190427

/-! ## A190427.P15621355055781807528

`A383671(A283233(n+2))`
-/

namespace A190427.P15621355055781807528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383671 (A283233 (n + 2)).toNat

end

end A190427.P15621355055781807528

namespace A190427

/-- `A383671(A283233(n+2))` -/
def P15621355055781807528.Spec : Prop :=
  ∀ n, P15621355055781807528.a n = A190427 (n + 1)

end A190427

/-!
# A190428: Positions of 0 in A190427.

The programs for A190428, the canonical program `A190428.P8313817222985090579` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190428 has offset 1).

The definition of A190428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190428.P6106537675259005094

`round(ϕ*A190430(n+1))`
-/

namespace A190428.P6106537675259005094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A190430 (n + 1) : ℝ))

end

end A190428.P6106537675259005094

namespace A190428

/-- `round(ϕ*A190430(n+1))` -/
def P6106537675259005094.Spec : Prop :=
  ∀ n, P6106537675259005094.a n = A190428 (n + 1)

end A190428

/-! ## A190428.P8313817222985090579

`A190430(n+1)+A005653(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190428

/-- `A190430(n+1)+A005653(n+1)` -/
def P8313817222985090579.Spec : Prop :=
  ∀ n, P8313817222985090579.a n = A190428 (n + 1)

theorem P8313817222985090579.correct : P8313817222985090579.Spec := by
  intro n
  simp only [A190428, Nat.add_sub_cancel]

end A190428

/-! ## A190428.P12059209382666860312

`A001950(A005653(n+1))`
-/

namespace A190428.P12059209382666860312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A005653 (n + 1)).toNat

end

end A190428.P12059209382666860312

namespace A190428

/-- `A001950(A005653(n+1))` -/
def P12059209382666860312.Spec : Prop :=
  ∀ n, P12059209382666860312.a n = A190428 (n + 1)

end A190428

/-! ## A190428.P10823672755975820335

`A001950(A191330(n+1)/2)`
-/

namespace A190428.P10823672755975820335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (SequenceMachineLib.roundAway ((A191330 (n + 1) : ℚ) / 2)).toNat

end

end A190428.P10823672755975820335

namespace A190428

/-- `A001950(A191330(n+1)/2)` -/
def P10823672755975820335.Spec : Prop :=
  ∀ n, P10823672755975820335.a n = A190428 (n + 1)

end A190428

/-! ## A190428.P7627537965179871082

`A001950(∪[A001950(n+1), A190442(n+1)])`
-/

namespace A190428.P7627537965179871082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A190428.P7627537965179871082

namespace A190428

/-- `A001950(∪[A001950(n+1), A190442(n+1)])` -/
def P7627537965179871082.Spec : Prop :=
  ∀ n, P7627537965179871082.a n = A190428 (n + 1)

end A190428

/-! ## A190428.P13115567870219008445

`A001950(eq[2, A001962(n+1)/A001950(n+1)]+1)`
-/

namespace A190428.P13115567870219008445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001962 (n + 1) : ℚ) / (A001950 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A190428.P13115567870219008445

namespace A190428

/-- `A001950(eq[2, A001962(n+1)/A001950(n+1)]+1)` -/
def P13115567870219008445.Spec : Prop :=
  ∀ n, P13115567870219008445.a n = A190428 (n + 1)

end A190428

/-! ## A190428.P5982524567190971441

`A001950(A279933(n+2)-1)`
-/

namespace A190428.P5982524567190971441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A279933 (n + 2) - 1).toNat

end

end A190428.P5982524567190971441

namespace A190428

/-- `A001950(A279933(n+2)-1)` -/
def P5982524567190971441.Spec : Prop :=
  ∀ n, P5982524567190971441.a n = A190428 (n + 1)

end A190428

/-! ## A190428.P14326927097161679653

`∩[A001950(n+1), A004937(n)]`
-/

namespace A190428.P14326927097161679653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190428.P14326927097161679653

namespace A190428

/-- `∩[A001950(n+1), A004937(n)]` -/
def P14326927097161679653.Spec : Prop :=
  ∀ n, (P14326927097161679653.a n : ℤ) = A190428 (n + 1)

end A190428

/-! ## A190428.P13795466983931194027

`∩[A101868(n+1), A004937(n)]`
-/

namespace A190428.P13795466983931194027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190428.P13795466983931194027

namespace A190428

/-- `∩[A101868(n+1), A004937(n)]` -/
def P13795466983931194027.Spec : Prop :=
  ∀ n, (P13795466983931194027.a n : ℤ) = A190428 (n + 1)

end A190428

/-! ## A190428.P4772660206232836801

`∩[A140398(n+1), A004937(n)]`
-/

namespace A190428.P4772660206232836801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190428.P4772660206232836801

namespace A190428

/-- `∩[A140398(n+1), A004937(n)]` -/
def P4772660206232836801.Spec : Prop :=
  ∀ n, (P4772660206232836801.a n : ℤ) = A190428 (n + 1)

end A190428

/-! ## A190428.P17609462519322360483

`∩[A187949(n+1), A004937(n)]`
-/

namespace A190428.P17609462519322360483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190428.P17609462519322360483

namespace A190428

/-- `∩[A187949(n+1), A004937(n)]` -/
def P17609462519322360483.Spec : Prop :=
  ∀ n, (P17609462519322360483.a n : ℤ) = A190428 (n + 1)

end A190428

/-! ## A190428.P5885923160986540026

`∩[A188025(n+1), A004937(n)]`
-/

namespace A190428.P5885923160986540026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190428.P5885923160986540026

namespace A190428

/-- `∩[A188025(n+1), A004937(n)]` -/
def P5885923160986540026.Spec : Prop :=
  ∀ n, (P5885923160986540026.a n : ℤ) = A190428 (n + 1)

end A190428

/-! ## A190428.P18129399883387299212

`∩[A188434(n+1), A004937(n)]`
-/

namespace A190428.P18129399883387299212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190428.P18129399883387299212

namespace A190428

/-- `∩[A188434(n+1), A004937(n)]` -/
def P18129399883387299212.Spec : Prop :=
  ∀ n, (P18129399883387299212.a n : ℤ) = A190428 (n + 1)

end A190428

/-! ## A190428.P4520956348030390334

`∩[A190249(n+1), A004937(n)]`
-/

namespace A190428.P4520956348030390334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190428.P4520956348030390334

namespace A190428

/-- `∩[A190249(n+1), A004937(n)]` -/
def P4520956348030390334.Spec : Prop :=
  ∀ n, (P4520956348030390334.a n : ℤ) = A190428 (n + 1)

end A190428

/-! ## A190428.P561891955156437167

`∩[A190437(n+1), A004937(n)]`
-/

namespace A190428.P561891955156437167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190428.P561891955156437167

namespace A190428

/-- `∩[A190437(n+1), A004937(n)]` -/
def P561891955156437167.Spec : Prop :=
  ∀ n, (P561891955156437167.a n : ℤ) = A190428 (n + 1)

end A190428

/-! ## A190428.P9397238078756420532

`∩[A188036(n+1), A004937(n)]`
-/

namespace A190428.P9397238078756420532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190428.P9397238078756420532

namespace A190428

/-- `∩[A188036(n+1), A004937(n)]` -/
def P9397238078756420532.Spec : Prop :=
  ∀ n, (P9397238078756420532.a n : ℤ) = A190428 (n + 1)

end A190428

/-! ## A190428.P1559672579320329028

`∩[A188016(n+1), A004937(n)]`
-/

namespace A190428.P1559672579320329028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190428.P1559672579320329028

namespace A190428

/-- `∩[A188016(n+1), A004937(n)]` -/
def P1559672579320329028.Spec : Prop :=
  ∀ n, (P1559672579320329028.a n : ℤ) = A190428 (n + 1)

end A190428

/-! ## A190428.P16669062776027549767

`∩[A188191(n+1), A004937(n)]`
-/

namespace A190428.P16669062776027549767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190428.P16669062776027549767

namespace A190428

/-- `∩[A188191(n+1), A004937(n)]` -/
def P16669062776027549767.Spec : Prop :=
  ∀ n, (P16669062776027549767.a n : ℤ) = A190428 (n + 1)

end A190428

/-! ## A190428.P15564699745129822358

`filter[A001950(n+1), A339052(#)]`
-/

namespace A190428.P15564699745129822358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A339052 (f1 j).toNat = 1) n)

end

end A190428.P15564699745129822358

namespace A190428

/-- `filter[A001950(n+1), A339052(#)]` -/
def P15564699745129822358.Spec : Prop :=
  ∀ n, P15564699745129822358.a n = A190428 (n + 1)

end A190428

/-! ## A190428.P13293140758922215940

`filter[A101868(n+1), A339052(#)]`
-/

namespace A190428.P13293140758922215940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A339052 (f1 j).toNat = 1) n)

end

end A190428.P13293140758922215940

namespace A190428

/-- `filter[A101868(n+1), A339052(#)]` -/
def P13293140758922215940.Spec : Prop :=
  ∀ n, P13293140758922215940.a n = A190428 (n + 1)

end A190428

/-!
# A190429: Positions of 1 in A190427.

The programs for A190429, the canonical program `A190429.P12891291036984290959` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190429 has offset 1).

The definition of A190429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190429.P18377453926997668016

`comp[A257962(2*n+1)]/2`
-/

namespace A190429.P18377453926997668016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257962 (2 * n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2

end

end A190429.P18377453926997668016

namespace A190429

/-- `comp[A257962(2*n+1)]/2` -/
def P18377453926997668016.Spec : Prop :=
  ∀ n, P18377453926997668016.a n = (A190429 (n + 1) : ℚ)

end A190429

/-! ## A190429.P12891291036984290959

`∪[A007064(n+1), A189379(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A190429

/-- `∪[A007064(n+1), A189379(n+1)]` -/
def P12891291036984290959.Spec : Prop :=
  ∀ n, (P12891291036984290959.a n : ℤ) = A190429 (n + 1)

theorem P12891291036984290959.correct : P12891291036984290959.Spec := by
  intro n
  simp only [A190429, Nat.add_sub_cancel]

end A190429

/-! ## A190429.P9747231249309355709

`∪[A007064(n+1), A190453(n+1)]`
-/

namespace A190429.P9747231249309355709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190429.P9747231249309355709

namespace A190429

/-- `∪[A007064(n+1), A190453(n+1)]` -/
def P9747231249309355709.Spec : Prop :=
  ∀ n, (P9747231249309355709.a n : ℤ) = A190429 (n + 1)

end A190429

/-! ## A190429.P4746251551774915718

`∪[A189379(n+1), A190454(n+1)]`
-/

namespace A190429.P4746251551774915718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190429.P4746251551774915718

namespace A190429

/-- `∪[A189379(n+1), A190454(n+1)]` -/
def P4746251551774915718.Spec : Prop :=
  ∀ n, (P4746251551774915718.a n : ℤ) = A190429 (n + 1)

end A190429

/-! ## A190429.P5000839037037819190

`∪[A190453(n+1), A190454(n+1)]`
-/

namespace A190429.P5000839037037819190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190429.P5000839037037819190

namespace A190429

/-- `∪[A190453(n+1), A190454(n+1)]` -/
def P5000839037037819190.Spec : Prop :=
  ∀ n, (P5000839037037819190.a n : ℤ) = A190429 (n + 1)

end A190429

/-! ## A190429.P14059767375616846420

`eq[1, A190427(n+1)]+1`
-/

namespace A190429.P14059767375616846420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190429.P14059767375616846420

namespace A190429

/-- `eq[1, A190427(n+1)]+1` -/
def P14059767375616846420.Spec : Prop :=
  ∀ n, (P14059767375616846420.a n : ℤ) = A190429 (n + 1)

end A190429

/-! ## A190429.P11628314992276090027

`eq[n+1, (n+1)*gcd(2, A001965(n))]`
-/

namespace A190429.P11628314992276090027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd 2 (A001965 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190429.P11628314992276090027

namespace A190429

/-- `eq[n+1, (n+1)*gcd(2, A001965(n))]` -/
def P11628314992276090027.Spec : Prop :=
  ∀ n, (P11628314992276090027.a n : ℤ) = A190429 (n + 1)

end A190429

/-! ## A190429.P4969562075965492215

`lt[2, A020639(A001966(n))]`
-/

namespace A190429.P4969562075965492215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001966 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190429.P4969562075965492215

namespace A190429

/-- `lt[2, A020639(A001966(n))]` -/
def P4969562075965492215.Spec : Prop :=
  ∀ n, (P4969562075965492215.a n : ℤ) = A190429 (n + 1)

end A190429

/-! ## A190429.P12452586398105387769

`eq[2, A020639(A001966(n)+1)]`
-/

namespace A190429.P12452586398105387769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001966 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190429.P12452586398105387769

namespace A190429

/-- `eq[2, A020639(A001966(n)+1)]` -/
def P12452586398105387769.Spec : Prop :=
  ∀ n, (P12452586398105387769.a n : ℤ) = A190429 (n + 1)

end A190429

/-! ## A190429.P14504685183635390705

`eq[2, A001966(val(A001966(n), 2))]`
-/

namespace A190429.P14504685183635390705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001966 (SequenceMachineLib.valuation (A001966 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190429.P14504685183635390705

namespace A190429

/-- `eq[2, A001966(val(A001966(n), 2))]` -/
def P14504685183635390705.Spec : Prop :=
  ∀ n, (P14504685183635390705.a n : ℤ) = A190429 (n + 1)

end A190429

/-! ## A190429.P13995213207404269274

`eq[A089809(n+1), A339052(n)]`
-/

namespace A190429.P13995213207404269274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190429.P13995213207404269274

namespace A190429

/-- `eq[A089809(n+1), A339052(n)]` -/
def P13995213207404269274.Spec : Prop :=
  ∀ n, (P13995213207404269274.a n : ℤ) = A190429 (n + 1)

end A190429

/-! ## A190429.P17498689262492621657

`eq[2, A020639(A003622(2*n+1))]`
-/

namespace A190429.P17498689262492621657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003622 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190429.P17498689262492621657

namespace A190429

/-- `eq[2, A020639(A003622(2*n+1))]` -/
def P17498689262492621657.Spec : Prop :=
  ∀ n, (P17498689262492621657.a n : ℤ) = A190429 (n + 1)

end A190429

/-! ## A190429.P6894486958485955305

`eq[n*A380151(n+1), A380151(n+1)]`
-/

namespace A190429.P6894486958485955305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A380151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380151 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190429.P6894486958485955305

namespace A190429

/-- `eq[n*A380151(n+1), A380151(n+1)]` -/
def P6894486958485955305.Spec : Prop :=
  ∀ n, (P6894486958485955305.a n : ℤ) = A190429 (n + 1)

end A190429

/-! ## A190429.P5152895285873447159

`eq[A380151(n+1)+A096270(n), A096270(n)]`
-/

namespace A190429.P5152895285873447159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380151 (n + 1) + A096270 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190429.P5152895285873447159

namespace A190429

/-- `eq[A380151(n+1)+A096270(n), A096270(n)]` -/
def P5152895285873447159.Spec : Prop :=
  ∀ n, (P5152895285873447159.a n : ℤ) = A190429 (n + 1)

end A190429

/-! ## A190429.P6739737548336306149

`lt[1, A060680(A184516(n+1)+1)]`
-/

namespace A190429.P6739737548336306149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (A184516 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190429.P6739737548336306149

namespace A190429

/-- `lt[1, A060680(A184516(n+1)+1)]` -/
def P6739737548336306149.Spec : Prop :=
  ∀ n, (P6739737548336306149.a n : ℤ) = A190429 (n + 1)

end A190429

/-! ## A190429.P860023593523681740

`eq[1, A006519(A001965(n)+2)]`
-/

namespace A190429.P860023593523681740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A001965 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190429.P860023593523681740

namespace A190429

/-- `eq[1, A006519(A001965(n)+2)]` -/
def P860023593523681740.Spec : Prop :=
  ∀ n, (P860023593523681740.a n : ℤ) = A190429 (n + 1)

end A190429

/-! ## A190429.P8231355302905240741

`lt[n*A085002(2*n+1), n]`
-/

namespace A190429.P8231355302905240741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A085002 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A190429.P8231355302905240741

namespace A190429

/-- `lt[n*A085002(2*n+1), n]` -/
def P8231355302905240741.Spec : Prop :=
  ∀ n, (P8231355302905240741.a n : ℤ) = A190429 (n + 1)

end A190429

/-! ## A190429.P13048523902357451872

`eq[A114986(n+1)+A003849(n+1), A003849(2*n)]`
-/

namespace A190429.P13048523902357451872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (n + 1) + A003849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190429.P13048523902357451872

namespace A190429

/-- `eq[A114986(n+1)+A003849(n+1), A003849(2*n)]` -/
def P13048523902357451872.Spec : Prop :=
  ∀ n, (P13048523902357451872.a n : ℤ) = A190429 (n + 1)

end A190429

/-! ## A190429.P17654527576600706880

`lt[A035337(2*n)%2, 1]`
-/

namespace A190429.P17654527576600706880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035337 (2 * n)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A190429.P17654527576600706880

namespace A190429

/-- `lt[A035337(2*n)%2, 1]` -/
def P17654527576600706880.Spec : Prop :=
  ∀ n, (P17654527576600706880.a n : ℤ) = A190429 (n + 1)

end A190429

/-! ## A190429.P2973947976204610218

`eq[2, A020639(A000201(2*n+1))]`
-/

namespace A190429.P2973947976204610218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000201 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190429.P2973947976204610218

namespace A190429

/-- `eq[2, A020639(A000201(2*n+1))]` -/
def P2973947976204610218.Spec : Prop :=
  ∀ n, (P2973947976204610218.a n : ℤ) = A190429 (n + 1)

end A190429

/-!
# A190430: Positions of 2 in A190427.

The programs for A190430, the canonical program `A190430.P14013397080452855136` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190430 has offset 1).

The definition of A190430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190430.P14013397080452855136

`∩[floor(ϕ*(n+1)), round(ϕ*n)]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A190430

/-- `∩[floor(ϕ*(n+1)), round(ϕ*n)]` -/
def P14013397080452855136.Spec : Prop :=
  ∀ n, (P14013397080452855136.a n : ℤ) = A190430 (n + 1)

theorem P14013397080452855136.correct : P14013397080452855136.Spec := by
  intro n
  simp only [A190430, Nat.add_sub_cancel]

end A190430

/-! ## A190430.P6738212127872799585

`floor(ϕ*A005653(n+1))`
-/

namespace A190430.P6738212127872799585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A005653 (n + 1) : ℝ)⌋

end

end A190430.P6738212127872799585

namespace A190430

/-- `floor(ϕ*A005653(n+1))` -/
def P6738212127872799585.Spec : Prop :=
  ∀ n, P6738212127872799585.a n = A190430 (n + 1)

end A190430

/-! ## A190430.P3107147586660110674

`floor(A190428(n+1)/ϕ)`
-/

namespace A190430.P3107147586660110674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190428 (n + 1) : ℝ) / Real.goldenRatio⌋

end

end A190430.P3107147586660110674

namespace A190430

/-- `floor(A190428(n+1)/ϕ)` -/
def P3107147586660110674.Spec : Prop :=
  ∀ n, P3107147586660110674.a n = A190430 (n + 1)

end A190430

/-! ## A190430.P13900050400879524641

`A190428(n+1)-A005653(n+1)`
-/

namespace A190430.P13900050400879524641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190428 (n + 1) - A005653 (n + 1)

end

end A190430.P13900050400879524641

namespace A190430

/-- `A190428(n+1)-A005653(n+1)` -/
def P13900050400879524641.Spec : Prop :=
  ∀ n, P13900050400879524641.a n = A190430 (n + 1)

end A190430

/-! ## A190430.P6252099457082325460

`∪[A188012(n+1), A190455(n+1)]`
-/

namespace A190430.P6252099457082325460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190430.P6252099457082325460

namespace A190430

/-- `∪[A188012(n+1), A190455(n+1)]` -/
def P6252099457082325460.Spec : Prop :=
  ∀ n, (P6252099457082325460.a n : ℤ) = A190430 (n + 1)

end A190430

/-! ## A190430.P8433321970092753410

`∪[A188018(n+1), A190455(n+1)]`
-/

namespace A190430.P8433321970092753410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190430.P8433321970092753410

namespace A190430

/-- `∪[A188018(n+1), A190455(n+1)]` -/
def P8433321970092753410.Spec : Prop :=
  ∀ n, (P8433321970092753410.a n : ℤ) = A190430 (n + 1)

end A190430

/-! ## A190430.P8907501087284169105

`∪[A188032(n+1), A190455(n+1)]`
-/

namespace A190430.P8907501087284169105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190430.P8907501087284169105

namespace A190430

/-- `∪[A188032(n+1), A190455(n+1)]` -/
def P8907501087284169105.Spec : Prop :=
  ∀ n, (P8907501087284169105.a n : ℤ) = A190430 (n + 1)

end A190430

/-! ## A190430.P12568875800792981590

`filter[A140400(n+1), A327174(#)]`
-/

namespace A190430.P12568875800792981590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327174 (f1 j).toNat = 1) n)

end

end A190430.P12568875800792981590

namespace A190430

/-- `filter[A140400(n+1), A327174(#)]` -/
def P12568875800792981590.Spec : Prop :=
  ∀ n, P12568875800792981590.a n = A190430 (n + 1)

end A190430

/-! ## A190430.P17255790507699319885

`filter[A004957(n+1), A327174(#)]`
-/

namespace A190430.P17255790507699319885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327174 (f1 j).toNat = 1) n)

end

end A190430.P17255790507699319885

namespace A190430

/-- `filter[A004957(n+1), A327174(#)]` -/
def P17255790507699319885.Spec : Prop :=
  ∀ n, P17255790507699319885.a n = A190430 (n + 1)

end A190430

/-! ## A190430.P8759767169443345147

`filter[A184657(n+1), A327174(#)]`
-/

namespace A190430.P8759767169443345147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327174 (f1 j).toNat = 1) n)

end

end A190430.P8759767169443345147

namespace A190430

/-- `filter[A184657(n+1), A327174(#)]` -/
def P8759767169443345147.Spec : Prop :=
  ∀ n, P8759767169443345147.a n = A190430 (n + 1)

end A190430

/-! ## A190430.P6455865105579191653

`filter[A026352(n), A327174(#)]`
-/

namespace A190430.P6455865105579191653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327174 (f1 j).toNat = 1) n)

end

end A190430.P6455865105579191653

namespace A190430

/-- `filter[A026352(n), A327174(#)]` -/
def P6455865105579191653.Spec : Prop :=
  ∀ n, P6455865105579191653.a n = A190430 (n + 1)

end A190430

/-! ## A190430.P8381217652065958531

`filter[A188028(n+1), A327174(#)]`
-/

namespace A190430.P8381217652065958531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327174 (f1 j).toNat = 1) n)

end

end A190430.P8381217652065958531

namespace A190430

/-- `filter[A188028(n+1), A327174(#)]` -/
def P8381217652065958531.Spec : Prop :=
  ∀ n, P8381217652065958531.a n = A190430 (n + 1)

end A190430

/-! ## A190430.P10726102360789763176

`filter[A187952(n+1), A327174(#)]`
-/

namespace A190430.P10726102360789763176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327174 (f1 j).toNat = 1) n)

end

end A190430.P10726102360789763176

namespace A190430

/-- `filter[A187952(n+1), A327174(#)]` -/
def P10726102360789763176.Spec : Prop :=
  ∀ n, P10726102360789763176.a n = A190430 (n + 1)

end A190430

/-! ## A190430.P5734902486510112230

`filter[A004957(n), A339051(#)]`
-/

namespace A190430.P5734902486510112230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A339051 (f1 j).toNat = 1) n)

end

end A190430.P5734902486510112230

namespace A190430

/-- `filter[A004957(n), A339051(#)]` -/
def P5734902486510112230.Spec : Prop :=
  ∀ n, P5734902486510112230.a n = A190430 (n + 1)

end A190430

/-! ## A190430.P14214623007458805427

`filter[A026352(n), A339051(#)]`
-/

namespace A190430.P14214623007458805427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A339051 (f1 j).toNat = 1) n)

end

end A190430.P14214623007458805427

namespace A190430

/-- `filter[A026352(n), A339051(#)]` -/
def P14214623007458805427.Spec : Prop :=
  ∀ n, P14214623007458805427.a n = A190430 (n + 1)

end A190430

/-! ## A190430.P2472099892607318479

`filter[A184657(n+1), A096270(#)]`
-/

namespace A190430.P2472099892607318479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A190430.P2472099892607318479

namespace A190430

/-- `filter[A184657(n+1), A096270(#)]` -/
def P2472099892607318479.Spec : Prop :=
  ∀ n, P2472099892607318479.a n = A190430 (n + 1)

end A190430

/-! ## A190430.P1781367133207937991

`filter[A005652(n+1), A327174(#)]`
-/

namespace A190430.P1781367133207937991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327174 (f1 j).toNat = 1) n)

end

end A190430.P1781367133207937991

namespace A190430

/-- `filter[A005652(n+1), A327174(#)]` -/
def P1781367133207937991.Spec : Prop :=
  ∀ n, P1781367133207937991.a n = A190430 (n + 1)

end A190430

/-! ## A190430.P10780479434017660844

`filter[A005652(n+1), A339051(#)]`
-/

namespace A190430.P10780479434017660844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A339051 (f1 j).toNat = 1) n)

end

end A190430.P10780479434017660844

namespace A190430

/-- `filter[A005652(n+1), A339051(#)]` -/
def P10780479434017660844.Spec : Prop :=
  ∀ n, P10780479434017660844.a n = A190430 (n + 1)

end A190430

/-! ## A190430.P8950479528780182231

`filter[A327176(n+1), A096270(#)]`
-/

namespace A190430.P8950479528780182231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A190430.P8950479528780182231

namespace A190430

/-- `filter[A327176(n+1), A096270(#)]` -/
def P8950479528780182231.Spec : Prop :=
  ∀ n, P8950479528780182231.a n = A190430 (n + 1)

end A190430

/-! ## A190430.P3817185987359367952

`filter[A140400(n+1), A339051(#)]`
-/

namespace A190430.P3817185987359367952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A339051 (f1 j).toNat = 1) n)

end

end A190430.P3817185987359367952

namespace A190430

/-- `filter[A140400(n+1), A339051(#)]` -/
def P3817185987359367952.Spec : Prop :=
  ∀ n, P3817185987359367952.a n = A190430 (n + 1)

end A190430

/-!
# A190431: a(n) = [(b*n+c)*r] - b*[n*r] - [c*r], where (r,b,c)=(golden ratio,3,1) and []=floor.

The programs for A190431, the canonical program `A190431.P9903202753503012131` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190431 has offset 1).

The definition of A190431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190431.P9903202753503012131

`floor((3*(n+1)+1)*(1+sqrt(5))/2)-3*floor((n+1)*(1+sqrt(5))/2)-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A190431

/-- `floor((3*(n+1)+1)*(1+sqrt(5))/2)-3*floor((n+1)*(1+sqrt(5))/2)-1` -/
def P9903202753503012131.Spec : Prop :=
  ∀ n, P9903202753503012131.a n = A190431 (n + 1)

theorem P9903202753503012131.correct : P9903202753503012131.Spec := by
  intro n
  simp only [A190431, Nat.add_sub_cancel]

end A190431

/-! ## A190431.P3911404978795949489

`A003231(3*n+4)%(A003231(n+1)+1)`
-/

namespace A190431.P3911404978795949489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003231 (3 * n + 4)) (A003231 (n + 1) + 1)

end

end A190431.P3911404978795949489

namespace A190431

/-- `A003231(3*n+4)%(A003231(n+1)+1)` -/
def P3911404978795949489.Spec : Prop :=
  ∀ n, P3911404978795949489.a n = A190431 (n + 1)

end A190431

/-! ## A190431.P9881047401738318774

`A026352(3*n+4)%A026352(n+1)`
-/

namespace A190431.P9881047401738318774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026352 (3 * n + 4)) (A026352 (n + 1))

end

end A190431.P9881047401738318774

namespace A190431

/-- `A026352(3*n+4)%A026352(n+1)` -/
def P9881047401738318774.Spec : Prop :=
  ∀ n, P9881047401738318774.a n = A190431 (n + 1)

end A190431

/-! ## A190431.P12793291084061907595

`A000201(A000201(3*n+4)+1)%A000201(A000201(n+1)+1)`
-/

namespace A190431.P12793291084061907595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000201 (A000201 (3 * n + 4) + 1).toNat) (A000201 (A000201 (n + 1) + 1).toNat)

end

end A190431.P12793291084061907595

namespace A190431

/-- `A000201(A000201(3*n+4)+1)%A000201(A000201(n+1)+1)` -/
def P12793291084061907595.Spec : Prop :=
  ∀ n, P12793291084061907595.a n = A190431 (n + 1)

end A190431

/-!
# A190432: Positions of 0 in A190431.

The programs for A190432, the canonical program `A190432.P422911984236821990` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190432 has offset 1).

The definition of A190432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190432.P422911984236821990

`A190435(n+1)+A140398(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A190432

/-- `A190435(n+1)+A140398(n+1)` -/
def P422911984236821990.Spec : Prop :=
  ∀ n, P422911984236821990.a n = A190432 (n + 1)

theorem P422911984236821990.correct : P422911984236821990.Spec := by
  intro n
  simp only [A190432, Nat.add_sub_cancel]

end A190432

/-! ## A190432.P10326114541768629963

`A302253(n+1)-A190435(n+1)`
-/

namespace A190432.P10326114541768629963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302253 (n + 1) - A190435 (n + 1)

end

end A190432.P10326114541768629963

namespace A190432

/-- `A302253(n+1)-A190435(n+1)` -/
def P10326114541768629963.Spec : Prop :=
  ∀ n, P10326114541768629963.a n = A190432 (n + 1)

end A190432

/-! ## A190432.P14679834771161250430

`A001950(A140398(n+1))`
-/

namespace A190432.P14679834771161250430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A140398 (n + 1)).toNat

end

end A190432.P14679834771161250430

namespace A190432

/-- `A001950(A140398(n+1))` -/
def P14679834771161250430.Spec : Prop :=
  ∀ n, P14679834771161250430.a n = A190432 (n + 1)

end A190432

/-! ## A190432.P17089824132082864096

`A001950(∩[A001950(n+1), A181713(n+1)])`
-/

namespace A190432.P17089824132082864096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181713 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A190432.P17089824132082864096

namespace A190432

/-- `A001950(∩[A001950(n+1), A181713(n+1)])` -/
def P17089824132082864096.Spec : Prop :=
  ∀ n, P17089824132082864096.a n = A190432 (n + 1)

end A190432

/-! ## A190432.P3361599679095661060

`A002251(A190435(n+1))`
-/

namespace A190432.P3361599679095661060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A190435 (n + 1)).toNat

end

end A190432.P3361599679095661060

namespace A190432

/-- `A002251(A190435(n+1))` -/
def P3361599679095661060.Spec : Prop :=
  ∀ n, P3361599679095661060.a n = A190432 (n + 1)

end A190432

/-! ## A190432.P13314335703214894952

`record[A002251(A184659(n+1))]`
-/

namespace A190432.P13314335703214894952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A184659 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190432.P13314335703214894952

namespace A190432

/-- `record[A002251(A184659(n+1))]` -/
def P13314335703214894952.Spec : Prop :=
  ∀ n, P13314335703214894952.a n = A190432 (n + 1)

end A190432

/-! ## A190432.P6618593177840208157

`A022342(A190435(n+1)+1)`
-/

namespace A190432.P6618593177840208157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A190435 (n + 1) + 1).toNat

end

end A190432.P6618593177840208157

namespace A190432

/-- `A022342(A190435(n+1)+1)` -/
def P6618593177840208157.Spec : Prop :=
  ∀ n, P6618593177840208157.a n = A190432 (n + 1)

end A190432

/-! ## A190432.P8922898803854147886

`A066096(∩[A184659(n+1), A066096(n)])+1`
-/

namespace A190432.P8922898803854147886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A190432.P8922898803854147886

namespace A190432

/-- `A066096(∩[A184659(n+1), A066096(n)])+1` -/
def P8922898803854147886.Spec : Prop :=
  ∀ n, P8922898803854147886.a n = A190432 (n + 1)

end A190432

/-! ## A190432.P9531958962845684654

`A190435(n+1)+A060143(A190435(n+1)+1)`
-/

namespace A190432.P9531958962845684654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190435 (n + 1) + A060143 (A190435 (n + 1) + 1).toNat

end

end A190432.P9531958962845684654

namespace A190432

/-- `A190435(n+1)+A060143(A190435(n+1)+1)` -/
def P9531958962845684654.Spec : Prop :=
  ∀ n, P9531958962845684654.a n = A190432 (n + 1)

end A190432

/-! ## A190432.P17985371345280908419

`A000201(∩[A000201(n+1), A184659(n+1)])+1`
-/

namespace A190432.P17985371345280908419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A190432.P17985371345280908419

namespace A190432

/-- `A000201(∩[A000201(n+1), A184659(n+1)])+1` -/
def P17985371345280908419.Spec : Prop :=
  ∀ n, P17985371345280908419.a n = A190432 (n + 1)

end A190432

/-! ## A190432.P16995787521494846206

`A005206(A302253(n+1))`
-/

namespace A190432.P16995787521494846206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A302253 (n + 1)).toNat

end

end A190432.P16995787521494846206

namespace A190432

/-- `A005206(A302253(n+1))` -/
def P16995787521494846206.Spec : Prop :=
  ∀ n, P16995787521494846206.a n = A190432 (n + 1)

end A190432

/-! ## A190432.P1571029948763147552

`eq[1, A190431(n+1)+1]+1`
-/

namespace A190432.P1571029948763147552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190431 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190432.P1571029948763147552

namespace A190432

/-- `eq[1, A190431(n+1)+1]+1` -/
def P1571029948763147552.Spec : Prop :=
  ∀ n, (P1571029948763147552.a n : ℤ) = A190432 (n + 1)

end A190432

/-! ## A190432.P11085323309776321460

`A026272(A302253(n+1)-1)`
-/

namespace A190432.P11085323309776321460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A302253 (n + 1) - 1).toNat

end

end A190432.P11085323309776321460

namespace A190432

/-- `A026272(A302253(n+1)-1)` -/
def P11085323309776321460.Spec : Prop :=
  ∀ n, P11085323309776321460.a n = A190432 (n + 1)

end A190432

/-! ## A190432.P3457178651350840620

`record[A002251(3*A003623(n+1))/3]`
-/

namespace A190432.P3457178651350840620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002251 (3 * A003623 (n + 1)).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190432.P3457178651350840620

namespace A190432

/-- `record[A002251(3*A003623(n+1))/3]` -/
def P3457178651350840620.Spec : Prop :=
  ∀ n, P3457178651350840620.a n = (A190432 (n + 1) : ℚ)

end A190432

/-! ## A190432.P3269187370301996605

`eq[A001468(3*n), A188009(A035487(n+1))]`
-/

namespace A190432.P3269187370301996605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188009 (A035487 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190432.P3269187370301996605

namespace A190432

/-- `eq[A001468(3*n), A188009(A035487(n+1))]` -/
def P3269187370301996605.Spec : Prop :=
  ∀ n, (P3269187370301996605.a n : ℤ) = A190432 (n + 1)

end A190432

/-! ## A190432.P16492184918319205694

`eq[A083368(3*n+1), A188432(A288713(n+1))]`
-/

namespace A190432.P16492184918319205694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083368 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (A288713 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190432.P16492184918319205694

namespace A190432

/-- `eq[A083368(3*n+1), A188432(A288713(n+1))]` -/
def P16492184918319205694.Spec : Prop :=
  ∀ n, (P16492184918319205694.a n : ℤ) = A190432 (n + 1)

end A190432

/-! ## A190432.P18379913146573583041

`lt[A003849(A284395(n+1)), A188432(n+1)]`
-/

namespace A190432.P18379913146573583041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A284395 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190432.P18379913146573583041

namespace A190432

/-- `lt[A003849(A284395(n+1)), A188432(n+1)]` -/
def P18379913146573583041.Spec : Prop :=
  ∀ n, (P18379913146573583041.a n : ℤ) = A190432 (n + 1)

end A190432

/-! ## A190432.P8514453090959594630

`lt[A289034(n+1), A003849(A284395(n+1)-1)]`
-/

namespace A190432.P8514453090959594630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A284395 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190432.P8514453090959594630

namespace A190432

/-- `lt[A289034(n+1), A003849(A284395(n+1)-1)]` -/
def P8514453090959594630.Spec : Prop :=
  ∀ n, (P8514453090959594630.a n : ℤ) = A190432 (n + 1)

end A190432

/-! ## A190432.P11141332182659633217

`lt[A096270(3*n), A289034(A284395(n+1))]`
-/

namespace A190432.P11141332182659633217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (A284395 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190432.P11141332182659633217

namespace A190432

/-- `lt[A096270(3*n), A289034(A284395(n+1))]` -/
def P11141332182659633217.Spec : Prop :=
  ∀ n, (P11141332182659633217.a n : ℤ) = A190432 (n + 1)

end A190432

/-! ## A190432.P10349980499971482619

`lt[A188432(A284395(n+1)+2), A188432(n+1)]`
-/

namespace A190432.P10349980499971482619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (A284395 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190432.P10349980499971482619

namespace A190432

/-- `lt[A188432(A284395(n+1)+2), A188432(n+1)]` -/
def P10349980499971482619.Spec : Prop :=
  ∀ n, (P10349980499971482619.a n : ℤ) = A190432 (n + 1)

end A190432

/-!
# A190433: Positions of 1 in A190431.

The programs for A190433, the canonical program `A190433.P4222480435465815802` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190433 has offset 1).

The definition of A190433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190433.P4222480435465815802

`eq[1, A190431(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190433

/-- `eq[1, A190431(n+1)]+1` -/
def P4222480435465815802.Spec : Prop :=
  ∀ n, (P4222480435465815802.a n : ℤ) = A190433 (n + 1)

theorem P4222480435465815802.correct : P4222480435465815802.Spec := by
  intro n
  simp only [A190433, Nat.add_sub_cancel]

end A190433

/-! ## A190433.P2521530401321746882

`eq[2, A003622(3*n+1)%3]`
-/

namespace A190433.P2521530401321746882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003622 (3 * n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190433.P2521530401321746882

namespace A190433

/-- `eq[2, A003622(3*n+1)%3]` -/
def P2521530401321746882.Spec : Prop :=
  ∀ n, (P2521530401321746882.a n : ℤ) = A190433 (n + 1)

end A190433

/-! ## A190433.P15705653297418482982

`eq[2, dr(A002939(A005206(3*n)))]`
-/

namespace A190433.P15705653297418482982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A002939 (A005206 (3 * n)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190433.P15705653297418482982

namespace A190433

/-- `eq[2, dr(A002939(A005206(3*n)))]` -/
def P15705653297418482982.Spec : Prop :=
  ∀ n, (P15705653297418482982.a n : ℤ) = A190433 (n + 1)

end A190433

/-! ## A190433.P13291525929361503182

`eq[3, A020639(A288709(3*n+2))]`
-/

namespace A190433.P13291525929361503182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A288709 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190433.P13291525929361503182

namespace A190433

/-- `eq[3, A020639(A288709(3*n+2))]` -/
def P13291525929361503182.Spec : Prop :=
  ∀ n, (P13291525929361503182.a n : ℤ) = A190433 (n + 1)

end A190433

/-! ## A190433.P4765100516712711821

`eq[3, A020639(A288713(3*n+2))]`
-/

namespace A190433.P4765100516712711821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A288713 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190433.P4765100516712711821

namespace A190433

/-- `eq[3, A020639(A288713(3*n+2))]` -/
def P4765100516712711821.Spec : Prop :=
  ∀ n, (P4765100516712711821.a n : ℤ) = A190433 (n + 1)

end A190433

/-! ## A190433.P343106286595330069

`eq[4, A284621(3*n+2)%A284621(n+1)]`
-/

namespace A190433.P343106286595330069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284621 (3 * n + 2)) (A284621 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190433.P343106286595330069

namespace A190433

/-- `eq[4, A284621(3*n+2)%A284621(n+1)]` -/
def P343106286595330069.Spec : Prop :=
  ∀ n, (P343106286595330069.a n : ℤ) = A190433 (n + 1)

end A190433

/-! ## A190433.P6296459095760061262

`eq[A008611(A060143(3*n+1)), A060143(n)]`
-/

namespace A190433.P6296459095760061262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A060143 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190433.P6296459095760061262

namespace A190433

/-- `eq[A008611(A060143(3*n+1)), A060143(n)]` -/
def P6296459095760061262.Spec : Prop :=
  ∀ n, (P6296459095760061262.a n : ℤ) = A190433 (n + 1)

end A190433

/-! ## A190433.P18110751496977238472

`eq[0, A010892(A000201(3*n+1))]`
-/

namespace A190433.P18110751496977238472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A000201 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190433.P18110751496977238472

namespace A190433

/-- `eq[0, A010892(A000201(3*n+1))]` -/
def P18110751496977238472.Spec : Prop :=
  ∀ n, (P18110751496977238472.a n : ℤ) = A190433 (n + 1)

end A190433

/-! ## A190433.P13847806103607026345

`lt[A289034(n+1), A003849(A284395(n+1))]`
-/

namespace A190433.P13847806103607026345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A284395 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190433.P13847806103607026345

namespace A190433

/-- `lt[A289034(n+1), A003849(A284395(n+1))]` -/
def P13847806103607026345.Spec : Prop :=
  ∀ n, (P13847806103607026345.a n : ℤ) = A190433 (n + 1)

end A190433

/-! ## A190433.P3914962944350530092

`A189663(lt[A287523(n+1), A189661(3*n+2)])`
-/

namespace A190433.P3914962944350530092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190433.P3914962944350530092

namespace A190433

/-- `A189663(lt[A287523(n+1), A189661(3*n+2)])` -/
def P3914962944350530092.Spec : Prop :=
  ∀ n, P3914962944350530092.a n = A190433 (n + 1)

end A190433

/-! ## A190433.P3118441177053746443

`A189663(lt[A287523(n+1), A289034(3*n+2)])`
-/

namespace A190433.P3118441177053746443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190433.P3118441177053746443

namespace A190433

/-- `A189663(lt[A287523(n+1), A289034(3*n+2)])` -/
def P3118441177053746443.Spec : Prop :=
  ∀ n, P3118441177053746443.a n = A190433 (n + 1)

end A190433

/-! ## A190433.P5730354049669848036

`lt[A109614(A003622(2*n+1+n)), A109624(n+1)]`
-/

namespace A190433.P5730354049669848036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 (A003622 (2 * n + 1 + n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190433.P5730354049669848036

namespace A190433

/-- `lt[A109614(A003622(2*n+1+n)), A109624(n+1)]` -/
def P5730354049669848036.Spec : Prop :=
  ∀ n, (P5730354049669848036.a n : ℤ) = A190433 (n + 1)

end A190433

/-! ## A190433.P16176523119028820258

`eq[6, A188670(A005206(3*n))]`
-/

namespace A190433.P16176523119028820258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188670 (A005206 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190433.P16176523119028820258

namespace A190433

/-- `eq[6, A188670(A005206(3*n))]` -/
def P16176523119028820258.Spec : Prop :=
  ∀ n, (P16176523119028820258.a n : ℤ) = A190433 (n + 1)

end A190433

/-! ## A190433.P9869572756684066115

`eq[1, A080427(A276855(3*n+1))]`
-/

namespace A190433.P9869572756684066115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080427 (A276855 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190433.P9869572756684066115

namespace A190433

/-- `eq[1, A080427(A276855(3*n+1))]` -/
def P9869572756684066115.Spec : Prop :=
  ∀ n, (P9869572756684066115.a n : ℤ) = A190433 (n + 1)

end A190433

/-!
# A190434: Positions of 2 in A190431.

The programs for A190434, the canonical program `A190434.P6463104720898244872` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190434 has offset 1).

The definition of A190434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190434.P6463104720898244872

`eq[2, A190431(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190434

/-- `eq[2, A190431(n+1)]+1` -/
def P6463104720898244872.Spec : Prop :=
  ∀ n, (P6463104720898244872.a n : ℤ) = A190434 (n + 1)

theorem P6463104720898244872.correct : P6463104720898244872.Spec := by
  intro n
  simp only [A190434, Nat.add_sub_cancel]

end A190434

/-! ## A190434.P15545512602460579947

`eq[2, A005206(3*n)%3]`
-/

namespace A190434.P15545512602460579947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005206 (3 * n)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190434.P15545512602460579947

namespace A190434

/-- `eq[2, A005206(3*n)%3]` -/
def P15545512602460579947.Spec : Prop :=
  ∀ n, (P15545512602460579947.a n : ℤ) = A190434 (n + 1)

end A190434

/-! ## A190434.P17556327816294699111

`eq[0, A003622(3*n+1)%3]`
-/

namespace A190434.P17556327816294699111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003622 (3 * n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190434.P17556327816294699111

namespace A190434

/-- `eq[0, A003622(3*n+1)%3]` -/
def P17556327816294699111.Spec : Prop :=
  ∀ n, (P17556327816294699111.a n : ℤ) = A190434 (n + 1)

end A190434

/-! ## A190434.P17094095238515567137

`lt[1, A026355(3*n+2)%3]`
-/

namespace A190434.P17094095238515567137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026355 (3 * n + 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190434.P17094095238515567137

namespace A190434

/-- `lt[1, A026355(3*n+2)%3]` -/
def P17094095238515567137.Spec : Prop :=
  ∀ n, (P17094095238515567137.a n : ℤ) = A190434 (n + 1)

end A190434

/-! ## A190434.P371024980350167666

`eq[lcm(3, A000201(3*n+1)), A000201(3*n+1)]`
-/

namespace A190434.P371024980350167666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A000201 (3 * n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190434.P371024980350167666

namespace A190434

/-- `eq[lcm(3, A000201(3*n+1)), A000201(3*n+1)]` -/
def P371024980350167666.Spec : Prop :=
  ∀ n, (P371024980350167666.a n : ℤ) = A190434 (n + 1)

end A190434

/-! ## A190434.P15107555871295521660

`eq[A005206(3*n), A244477(A005378(3*n))]`
-/

namespace A190434.P15107555871295521660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244477 (A005378 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190434.P15107555871295521660

namespace A190434

/-- `eq[A005206(3*n), A244477(A005378(3*n))]` -/
def P15107555871295521660.Spec : Prop :=
  ∀ n, (P15107555871295521660.a n : ℤ) = A190434 (n + 1)

end A190434

/-! ## A190434.P505018937230889225

`A005206(lt[A003849(3*n+2), A003849(n)])`
-/

namespace A190434.P505018937230889225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190434.P505018937230889225

namespace A190434

/-- `A005206(lt[A003849(3*n+2), A003849(n)])` -/
def P505018937230889225.Spec : Prop :=
  ∀ n, P505018937230889225.a n = A190434 (n + 1)

end A190434

/-! ## A190434.P12024062209127643396

`A005206(lt[A014675(n), A014675(3*n+2)])`
-/

namespace A190434.P12024062209127643396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190434.P12024062209127643396

namespace A190434

/-- `A005206(lt[A014675(n), A014675(3*n+2)])` -/
def P12024062209127643396.Spec : Prop :=
  ∀ n, P12024062209127643396.a n = A190434 (n + 1)

end A190434

/-! ## A190434.P16306000073890628154

`record[A000201(n+1)*A005614(A101864(n+1)+n)]`
-/

namespace A190434.P16306000073890628154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) * A005614 (A101864 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190434.P16306000073890628154

namespace A190434

/-- `record[A000201(n+1)*A005614(A101864(n+1)+n)]` -/
def P16306000073890628154.Spec : Prop :=
  ∀ n, P16306000073890628154.a n = A190434 (n + 1)

end A190434

/-! ## A190434.P5298115232476881963

`eq[0, A010892(A002251(3*n))]`
-/

namespace A190434.P5298115232476881963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A002251 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190434.P5298115232476881963

namespace A190434

/-- `eq[0, A010892(A002251(3*n))]` -/
def P5298115232476881963.Spec : Prop :=
  ∀ n, (P5298115232476881963.a n : ℤ) = A190434 (n + 1)

end A190434

/-! ## A190434.P3626385564832799332

`A002251(lt[A001468(n), A001468(3*n)])`
-/

namespace A190434.P3626385564832799332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190434.P3626385564832799332

namespace A190434

/-- `A002251(lt[A001468(n), A001468(3*n)])` -/
def P3626385564832799332.Spec : Prop :=
  ∀ n, P3626385564832799332.a n = A190434 (n + 1)

end A190434

/-! ## A190434.P3151977274259319041

`A005206(lt[A001468(n), A001468(3*n)])`
-/

namespace A190434.P3151977274259319041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190434.P3151977274259319041

namespace A190434

/-- `A005206(lt[A001468(n), A001468(3*n)])` -/
def P3151977274259319041.Spec : Prop :=
  ∀ n, P3151977274259319041.a n = A190434 (n + 1)

end A190434

/-! ## A190434.P17583775568711063280

`A002251(lt[A289034(3*n+2), A188432(n+1)])`
-/

namespace A190434.P17583775568711063280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190434.P17583775568711063280

namespace A190434

/-- `A002251(lt[A289034(3*n+2), A188432(n+1)])` -/
def P17583775568711063280.Spec : Prop :=
  ∀ n, P17583775568711063280.a n = A190434 (n + 1)

end A190434

/-! ## A190434.P15093210474925540783

`lt[A188432(n+1), A003849(A284395(n+1)+1)]`
-/

namespace A190434.P15093210474925540783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A284395 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190434.P15093210474925540783

namespace A190434

/-- `lt[A188432(n+1), A003849(A284395(n+1)+1)]` -/
def P15093210474925540783.Spec : Prop :=
  ∀ n, (P15093210474925540783.a n : ℤ) = A190434 (n + 1)

end A190434

/-!
# A190435: Positions of 3 in A190431.

The programs for A190435, the canonical program `A190435.P4495769777369891294` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190435 has offset 1).

The definition of A190435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5394 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190435.P12801068227405046757

`A190432(n+1)-A140398(n+1)`
-/

namespace A190435.P12801068227405046757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190432 (n + 1) - A140398 (n + 1)

end

end A190435.P12801068227405046757

namespace A190435

/-- `A190432(n+1)-A140398(n+1)` -/
def P12801068227405046757.Spec : Prop :=
  ∀ n, P12801068227405046757.a n = A190435 (n + 1)

end A190435

/-! ## A190435.P11036670472759657218

`A302253(n+1)-A190432(n+1)`
-/

namespace A190435.P11036670472759657218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302253 (n + 1) - A190432 (n + 1)

end

end A190435.P11036670472759657218

namespace A190435

/-- `A302253(n+1)-A190432(n+1)` -/
def P11036670472759657218.Spec : Prop :=
  ∀ n, P11036670472759657218.a n = A190435 (n + 1)

end A190435

/-! ## A190435.P4495769777369891294

`filter[A184659(n+1), A327174(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A190435

/-- `filter[A184659(n+1), A327174(#)]` -/
def P4495769777369891294.Spec : Prop :=
  ∀ n, P4495769777369891294.a n = A190435 (n + 1)

theorem P4495769777369891294.correct : P4495769777369891294.Spec := by
  intro n
  simp only [A190435, Nat.add_sub_cancel]

end A190435

/-! ## A190435.P17660815227712341150

`∩[A184659(n+1), A004957(n)]`
-/

namespace A190435.P17660815227712341150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190435.P17660815227712341150

namespace A190435

/-- `∩[A184659(n+1), A004957(n)]` -/
def P17660815227712341150.Spec : Prop :=
  ∀ n, (P17660815227712341150.a n : ℤ) = A190435 (n + 1)

end A190435

/-! ## A190435.P1714882748484367920

`∩[A184659(n+1), A026352(n)]`
-/

namespace A190435.P1714882748484367920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190435.P1714882748484367920

namespace A190435

/-- `∩[A184659(n+1), A026352(n)]` -/
def P1714882748484367920.Spec : Prop :=
  ∀ n, (P1714882748484367920.a n : ℤ) = A190435 (n + 1)

end A190435

/-! ## A190435.P8474477794099323200

`∩[A003234(n+1), A184659(n+1)]`
-/

namespace A190435.P8474477794099323200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190435.P8474477794099323200

namespace A190435

/-- `∩[A003234(n+1), A184659(n+1)]` -/
def P8474477794099323200.Spec : Prop :=
  ∀ n, (P8474477794099323200.a n : ℤ) = A190435 (n + 1)

end A190435

/-! ## A190435.P17009544410643990461

`∩[A003623(n+1), A184659(n+1)]`
-/

namespace A190435.P17009544410643990461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190435.P17009544410643990461

namespace A190435

/-- `∩[A003623(n+1), A184659(n+1)]` -/
def P17009544410643990461.Spec : Prop :=
  ∀ n, (P17009544410643990461.a n : ℤ) = A190435 (n + 1)

end A190435

/-! ## A190435.P18093177363839076819

`∩[A140400(n+1), A184659(n+1)]`
-/

namespace A190435.P18093177363839076819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190435.P18093177363839076819

namespace A190435

/-- `∩[A140400(n+1), A184659(n+1)]` -/
def P18093177363839076819.Spec : Prop :=
  ∀ n, (P18093177363839076819.a n : ℤ) = A190435 (n + 1)

end A190435

/-! ## A190435.P6665398640276012238

`∩[A184659(n+1), A188018(n+1)]`
-/

namespace A190435.P6665398640276012238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190435.P6665398640276012238

namespace A190435

/-- `∩[A184659(n+1), A188018(n+1)]` -/
def P6665398640276012238.Spec : Prop :=
  ∀ n, (P6665398640276012238.a n : ℤ) = A190435 (n + 1)

end A190435

/-! ## A190435.P14034705105606626036

`∩[A190251(n+1), A184659(n+1)]`
-/

namespace A190435.P14034705105606626036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190435.P14034705105606626036

namespace A190435

/-- `∩[A190251(n+1), A184659(n+1)]` -/
def P14034705105606626036.Spec : Prop :=
  ∀ n, (P14034705105606626036.a n : ℤ) = A190435 (n + 1)

end A190435

/-! ## A190435.P4462554608216851180

`∩[A190463(n+1), A184659(n+1)]`
-/

namespace A190435.P4462554608216851180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190435.P4462554608216851180

namespace A190435

/-- `∩[A190463(n+1), A184659(n+1)]` -/
def P4462554608216851180.Spec : Prop :=
  ∀ n, (P4462554608216851180.a n : ℤ) = A190435 (n + 1)

end A190435

/-! ## A190435.P3898583573931324236

`A184659(eq[A002251(n+1)+n+1, A184659(n+1)]+1)`
-/

namespace A190435.P3898583573931324236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (n + 1) + (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A190435.P3898583573931324236

namespace A190435

/-- `A184659(eq[A002251(n+1)+n+1, A184659(n+1)]+1)` -/
def P3898583573931324236.Spec : Prop :=
  ∀ n, P3898583573931324236.a n = A190435 (n + 1)

end A190435

/-! ## A190435.P16190015495030982442

`∩[A184659(n+1), A188028(n+1)]`
-/

namespace A190435.P16190015495030982442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190435.P16190015495030982442

namespace A190435

/-- `∩[A184659(n+1), A188028(n+1)]` -/
def P16190015495030982442.Spec : Prop :=
  ∀ n, (P16190015495030982442.a n : ℤ) = A190435 (n + 1)

end A190435

/-! ## A190435.P701874624984872757

`∩[A184659(n+1), A187952(n+1)]`
-/

namespace A190435.P701874624984872757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190435.P701874624984872757

namespace A190435

/-- `∩[A184659(n+1), A187952(n+1)]` -/
def P701874624984872757.Spec : Prop :=
  ∀ n, (P701874624984872757.a n : ℤ) = A190435 (n + 1)

end A190435

/-! ## A190435.P13495583252582270955

`∩[A184659(n+1), A188259(n+1)]`
-/

namespace A190435.P13495583252582270955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190435.P13495583252582270955

namespace A190435

/-- `∩[A184659(n+1), A188259(n+1)]` -/
def P13495583252582270955.Spec : Prop :=
  ∀ n, (P13495583252582270955.a n : ℤ) = A190435 (n + 1)

end A190435

/-! ## A190435.P6251022256534424022

`∩[A181714(n+1), A184659(n+1)]`
-/

namespace A190435.P6251022256534424022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190435.P6251022256534424022

namespace A190435

/-- `∩[A181714(n+1), A184659(n+1)]` -/
def P6251022256534424022.Spec : Prop :=
  ∀ n, (P6251022256534424022.a n : ℤ) = A190435 (n + 1)

end A190435

/-! ## A190435.P10242959390080490883

`filter[A184659(n+1), A096270(#)]`
-/

namespace A190435.P10242959390080490883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A190435.P10242959390080490883

namespace A190435

/-- `filter[A184659(n+1), A096270(#)]` -/
def P10242959390080490883.Spec : Prop :=
  ∀ n, P10242959390080490883.a n = A190435 (n + 1)

end A190435

/-! ## A190435.P15322250860341500185

`filter[A184659(n+1), A339051(#)]`
-/

namespace A190435.P15322250860341500185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A339051 (f1 j).toNat = 1) n)

end

end A190435.P15322250860341500185

namespace A190435

/-- `filter[A184659(n+1), A339051(#)]` -/
def P15322250860341500185.Spec : Prop :=
  ∀ n, P15322250860341500185.a n = A190435 (n + 1)

end A190435

/-! ## A190435.P4479288383833770074

`∩[A005652(n+1), A184659(n+1)]`
-/

namespace A190435.P4479288383833770074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190435.P4479288383833770074

namespace A190435

/-- `∩[A005652(n+1), A184659(n+1)]` -/
def P4479288383833770074.Spec : Prop :=
  ∀ n, (P4479288383833770074.a n : ℤ) = A190435 (n + 1)

end A190435

/-! ## A190435.P10442291749645134507

`∩[A327176(n+1), A184659(n+1)]`
-/

namespace A190435.P10442291749645134507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190435.P10442291749645134507

namespace A190435

/-- `∩[A327176(n+1), A184659(n+1)]` -/
def P10442291749645134507.Spec : Prop :=
  ∀ n, (P10442291749645134507.a n : ℤ) = A190435 (n + 1)

end A190435

/-!
# A190436: a(n) = [(b*n+c)*r] - b*[n*r] - [c*r], where (r,b,c)=(golden ratio,3,2) and []=floor.

The programs for A190436, the canonical program `A190436.P2932239580418806414` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190436 has offset 1).

The definition of A190436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190436.P2932239580418806414

`A005206(A016777(n+1))-A016777(A005206(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190436

/-- `A005206(A016777(n+1))-A016777(A005206(n))` -/
def P2932239580418806414.Spec : Prop :=
  ∀ n, P2932239580418806414.a n = A190436 (n + 1)

theorem P2932239580418806414.correct : P2932239580418806414.Spec := by
  intro n
  simp only [A190436, Nat.add_sub_cancel]

end A190436

/-! ## A190436.P9788428311696319841

`A026274(3*n+4)%(A003622(n+1)+2)`
-/

namespace A190436.P9788428311696319841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026274 (3 * n + 4)) (A003622 (n + 1) + 2)

end

end A190436.P9788428311696319841

namespace A190436

/-- `A026274(3*n+4)%(A003622(n+1)+2)` -/
def P9788428311696319841.Spec : Prop :=
  ∀ n, P9788428311696319841.a n = A190436 (n + 1)

end A190436

/-! ## A190436.P2383043091172603229

`A014682(A284625(3*n+5)%A284625(n+1))`
-/

namespace A190436.P2383043091172603229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.tmod (A284625 (3 * n + 5)) (A284625 (n + 1))).toNat

end

end A190436.P2383043091172603229

namespace A190436

/-- `A014682(A284625(3*n+5)%A284625(n+1))` -/
def P2383043091172603229.Spec : Prop :=
  ∀ n, P2383043091172603229.a n = A190436 (n + 1)

end A190436

/-! ## A190436.P17073938563018469892

`A190451(2*comp[floor(ϕ*n)])^A287022(n)`
-/

namespace A190436.P17073938563018469892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190451 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) ^ (A287022 n : ℤ)

end

end A190436.P17073938563018469892

namespace A190436

/-- `A190451(2*comp[floor(ϕ*n)])^A287022(n)` -/
def P17073938563018469892.Spec : Prop :=
  ∀ n, P17073938563018469892.a n = (A190436 (n + 1) : ℚ)

end A190436

/-! ## A190436.P15662498272051796427

`A190440(n+1)-A320656(A207170(n+1))`
-/

namespace A190436.P15662498272051796427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190440 (n + 1) - A320656 (A207170 (n + 1)).toNat

end

end A190436.P15662498272051796427

namespace A190436

/-- `A190440(n+1)-A320656(A207170(n+1))` -/
def P15662498272051796427.Spec : Prop :=
  ∀ n, P15662498272051796427.a n = A190436 (n + 1)

end A190436

/-!
# A190437: Positions of 0 in A190436.

The programs for A190437, the canonical program `A190437.P13908445357307008917` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190437 has offset 1).

The definition of A190437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2548 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190437.P14185150788724595317

`record[A001950(n+1)/A000010(A089808(n+1))]`
-/

namespace A190437.P14185150788724595317
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001950 (n + 1) : ℚ) / (A000010 (A089808 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190437.P14185150788724595317

namespace A190437

/-- `record[A001950(n+1)/A000010(A089808(n+1))]` -/
def P14185150788724595317.Spec : Prop :=
  ∀ n, P14185150788724595317.a n = (A190437 (n + 1) : ℚ)

end A190437

/-! ## A190437.P13908445357307008917

`eq[0, A190436(A028310(n))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190437

/-- `eq[0, A190436(A028310(n))]` -/
def P13908445357307008917.Spec : Prop :=
  ∀ n, (P13908445357307008917.a n : ℤ) = A190437 (n + 1)

theorem P13908445357307008917.correct : P13908445357307008917.Spec := by
  intro n
  simp only [A190437, Nat.add_sub_cancel]

end A190437

/-! ## A190437.P9816626258826183508

`record[(1-A190436(A005653(n+1)))*A005653(n+1)]`
-/

namespace A190437.P9816626258826183508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A190436 (A005653 (n + 1)).toNat) * A005653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190437.P9816626258826183508

namespace A190437

/-- `record[(1-A190436(A005653(n+1)))*A005653(n+1)]` -/
def P9816626258826183508.Spec : Prop :=
  ∀ n, P9816626258826183508.a n = A190437 (n + 1)

end A190437

/-! ## A190437.P6709206725137780188

`eq[0, A190436(A065033(2*n))]`
-/

namespace A190437.P6709206725137780188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190436 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190437.P6709206725137780188

namespace A190437

/-- `eq[0, A190436(A065033(2*n))]` -/
def P6709206725137780188.Spec : Prop :=
  ∀ n, (P6709206725137780188.a n : ℤ) = A190437 (n + 1)

end A190437

/-! ## A190437.P15313862329227603472

`eq[1, A189463(A007066(n+1))]`
-/

namespace A190437.P15313862329227603472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189463 (A007066 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190437.P15313862329227603472

namespace A190437

/-- `eq[1, A189463(A007066(n+1))]` -/
def P15313862329227603472.Spec : Prop :=
  ∀ n, (P15313862329227603472.a n : ℤ) = A190437 (n + 1)

end A190437

/-! ## A190437.P191820683946672829

`lt[A003842(3*n+1), Δ[A083368(n+1)]]`
-/

namespace A190437.P191820683946672829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (3 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190437.P191820683946672829

namespace A190437

/-- `lt[A003842(3*n+1), Δ[A083368(n+1)]]` -/
def P191820683946672829.Spec : Prop :=
  ∀ n, (P191820683946672829.a n : ℤ) = A190437 (n + 1)

end A190437

/-! ## A190437.P4927083320554647126

`lt[A003842(3*n+1), A005206(A083368(n+2))]`
-/

namespace A190437.P4927083320554647126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A083368 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190437.P4927083320554647126

namespace A190437

/-- `lt[A003842(3*n+1), A005206(A083368(n+2))]` -/
def P4927083320554647126.Spec : Prop :=
  ∀ n, (P4927083320554647126.a n : ℤ) = A190437 (n + 1)

end A190437

/-! ## A190437.P14930416712133580345

`lt[A214971(n+1), A016777(A329130(n))]`
-/

namespace A190437.P14930416712133580345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A329130 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190437.P14930416712133580345

namespace A190437

/-- `lt[A214971(n+1), A016777(A329130(n))]` -/
def P14930416712133580345.Spec : Prop :=
  ∀ n, (P14930416712133580345.a n : ℤ) = A190437 (n + 1)

end A190437

/-! ## A190437.P7573890013087108721

`lt[A289034(n+1), A003849(A284395(n+1)+2)]`
-/

namespace A190437.P7573890013087108721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A284395 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190437.P7573890013087108721

namespace A190437

/-- `lt[A289034(n+1), A003849(A284395(n+1)+2)]` -/
def P7573890013087108721.Spec : Prop :=
  ∀ n, (P7573890013087108721.a n : ℤ) = A190437 (n + 1)

end A190437

/-! ## A190437.P10356226849249877327

`lt[A289034(A284395(n+2)), A289034(n+2)]`
-/

namespace A190437.P10356226849249877327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (A284395 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190437.P10356226849249877327

namespace A190437

/-- `lt[A289034(A284395(n+2)), A289034(n+2)]` -/
def P10356226849249877327.Spec : Prop :=
  ∀ n, (P10356226849249877327.a n : ℤ) = A190437 (n + 1)

end A190437

/-! ## A190437.P3804353346574316936

`eq[A120614(n+1), A190431(A000201(n+1))]`
-/

namespace A190437.P3804353346574316936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190431 (A000201 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190437.P3804353346574316936

namespace A190437

/-- `eq[A120614(n+1), A190431(A000201(n+1))]` -/
def P3804353346574316936.Spec : Prop :=
  ∀ n, (P3804353346574316936.a n : ℤ) = A190437 (n + 1)

end A190437

/-!
# A190438: Positions of 1 in A190436.

The programs for A190438, the canonical program `A190438.P5492144203154848530` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190438 has offset 1).

The definition of A190438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190438.P5492144203154848530

`eq[1, A190436(A028310(n))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190438

/-- `eq[1, A190436(A028310(n))]` -/
def P5492144203154848530.Spec : Prop :=
  ∀ n, (P5492144203154848530.a n : ℤ) = A190438 (n + 1)

theorem P5492144203154848530.correct : P5492144203154848530.Spec := by
  intro n
  simp only [A190438, Nat.add_sub_cancel]

end A190438

/-! ## A190438.P15386593081155885848

`eq[A005206(3*n+1), A244477(A005206(3*n+1))]`
-/

namespace A190438.P15386593081155885848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244477 (A005206 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190438.P15386593081155885848

namespace A190438

/-- `eq[A005206(3*n+1), A244477(A005206(3*n+1))]` -/
def P15386593081155885848.Spec : Prop :=
  ∀ n, (P15386593081155885848.a n : ℤ) = A190438 (n + 1)

end A190438

/-! ## A190438.P15549289386028644128

`eq[1, A190436(A065033(2*n))]`
-/

namespace A190438.P15549289386028644128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190436 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190438.P15549289386028644128

namespace A190438

/-- `eq[1, A190436(A065033(2*n))]` -/
def P15549289386028644128.Spec : Prop :=
  ∀ n, (P15549289386028644128.a n : ℤ) = A190438 (n + 1)

end A190438

/-! ## A190438.P10314085279500139270

`eq[0, A189663(3*(n+1))%3]`
-/

namespace A190438.P10314085279500139270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189663 (3 * (n + 1))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190438.P10314085279500139270

namespace A190438

/-- `eq[0, A189663(3*(n+1))%3]` -/
def P10314085279500139270.Spec : Prop :=
  ∀ n, (P10314085279500139270.a n : ℤ) = A190438 (n + 1)

end A190438

/-! ## A190438.P6010167625613961672

`eq[1, A026274(3*n+1)%3]`
-/

namespace A190438.P6010167625613961672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026274 (3 * n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190438.P6010167625613961672

namespace A190438

/-- `eq[1, A026274(3*n+1)%3]` -/
def P6010167625613961672.Spec : Prop :=
  ∀ n, (P6010167625613961672.a n : ℤ) = A190438 (n + 1)

end A190438

/-! ## A190438.P3569762097293831578

`eq[2, A007066(3*(n+1))%3]`
-/

namespace A190438.P3569762097293831578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007066 (3 * (n + 1))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190438.P3569762097293831578

namespace A190438

/-- `eq[2, A007066(3*(n+1))%3]` -/
def P3569762097293831578.Spec : Prop :=
  ∀ n, (P3569762097293831578.a n : ℤ) = A190438 (n + 1)

end A190438

/-! ## A190438.P15047352172301157086

`eq[2, A026242(3*n+1)%3]`
-/

namespace A190438.P15047352172301157086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026242 (3 * n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190438.P15047352172301157086

namespace A190438

/-- `eq[2, A026242(3*n+1)%3]` -/
def P15047352172301157086.Spec : Prop :=
  ∀ n, (P15047352172301157086.a n : ℤ) = A190438 (n + 1)

end A190438

/-! ## A190438.P2563408862807781685

`eq[3, A020639(A288713(3*(n+1)))]`
-/

namespace A190438.P2563408862807781685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A288713 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190438.P2563408862807781685

namespace A190438

/-- `eq[3, A020639(A288713(3*(n+1)))]` -/
def P2563408862807781685.Spec : Prop :=
  ∀ n, (P2563408862807781685.a n : ℤ) = A190438 (n + 1)

end A190438

/-! ## A190438.P7314452225608156446

`A189663(lt[A287523(n+1), A289034(3*n+5)])`
-/

namespace A190438.P7314452225608156446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190438.P7314452225608156446

namespace A190438

/-- `A189663(lt[A287523(n+1), A289034(3*n+5)])` -/
def P7314452225608156446.Spec : Prop :=
  ∀ n, P7314452225608156446.a n = A190438 (n + 1)

end A190438

/-!
# A190439: Positions of 2 in A190436.

The programs for A190439, the canonical program `A190439.P7080352960554149212` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190439 has offset 1).

The definition of A190439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190439.P6379555877643239668

`eq[A040001(2*n), A190436(A028310(n))]`
-/

namespace A190439.P6379555877643239668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190436 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190439.P6379555877643239668

namespace A190439

/-- `eq[A040001(2*n), A190436(A028310(n))]` -/
def P6379555877643239668.Spec : Prop :=
  ∀ n, (P6379555877643239668.a n : ℤ) = A190439 (n + 1)

end A190439

/-! ## A190439.P7080352960554149212

`eq[3, gcd(3, A005206(2*n+1+n))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190439

/-- `eq[3, gcd(3, A005206(2*n+1+n))]` -/
def P7080352960554149212.Spec : Prop :=
  ∀ n, (P7080352960554149212.a n : ℤ) = A190439 (n + 1)

theorem P7080352960554149212.correct : P7080352960554149212.Spec := by
  intro n
  simp only [A190439, Nat.add_sub_cancel]

end A190439

/-! ## A190439.P18145351832855687174

`eq[0, A007066(3*(n+1))%3]`
-/

namespace A190439.P18145351832855687174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007066 (3 * (n + 1))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190439.P18145351832855687174

namespace A190439

/-- `eq[0, A007066(3*(n+1))%3]` -/
def P18145351832855687174.Spec : Prop :=
  ∀ n, (P18145351832855687174.a n : ℤ) = A190439 (n + 1)

end A190439

/-! ## A190439.P282653162339098706

`eq[3, A020639(A284621(3*(n+1)))]`
-/

namespace A190439.P282653162339098706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A284621 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190439.P282653162339098706

namespace A190439

/-- `eq[3, A020639(A284621(3*(n+1)))]` -/
def P282653162339098706.Spec : Prop :=
  ∀ n, (P282653162339098706.a n : ℤ) = A190439 (n + 1)

end A190439

/-! ## A190439.P10246461090305849051

`eq[1, A103627(A019444(3*(n+1)))]`
-/

namespace A190439.P10246461090305849051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A019444 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190439.P10246461090305849051

namespace A190439

/-- `eq[1, A103627(A019444(3*(n+1)))]` -/
def P10246461090305849051.Spec : Prop :=
  ∀ n, (P10246461090305849051.a n : ℤ) = A190439 (n + 1)

end A190439

/-! ## A190439.P18035721909153768767

`A005206(lt[A083368(n+1), A001468(3*n+2)])`
-/

namespace A190439.P18035721909153768767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190439.P18035721909153768767

namespace A190439

/-- `A005206(lt[A083368(n+1), A001468(3*n+2)])` -/
def P18035721909153768767.Spec : Prop :=
  ∀ n, P18035721909153768767.a n = A190439 (n + 1)

end A190439

/-! ## A190439.P1092988473016644275

`eq[1, A003849(3*A003622(n+1))]`
-/

namespace A190439.P1092988473016644275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (3 * A003622 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190439.P1092988473016644275

namespace A190439

/-- `eq[1, A003849(3*A003622(n+1))]` -/
def P1092988473016644275.Spec : Prop :=
  ∀ n, (P1092988473016644275.a n : ℤ) = A190439 (n + 1)

end A190439

/-! ## A190439.P5744981988515828708

`eq[2, A003842(3*A003622(n+1))]`
-/

namespace A190439.P5744981988515828708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (3 * A003622 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190439.P5744981988515828708

namespace A190439

/-- `eq[2, A003842(3*A003622(n+1))]` -/
def P5744981988515828708.Spec : Prop :=
  ∀ n, (P5744981988515828708.a n : ℤ) = A190439 (n + 1)

end A190439

/-! ## A190439.P440321288126134032

`record[(n+1)*A003849(3*A003622(n+2))]`
-/

namespace A190439.P440321288126134032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003849 (3 * A003622 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190439.P440321288126134032

namespace A190439

/-- `record[(n+1)*A003849(3*A003622(n+2))]` -/
def P440321288126134032.Spec : Prop :=
  ∀ n, P440321288126134032.a n = A190439 (n + 1)

end A190439

/-! ## A190439.P3950432331787372004

`A005206(lt[A120614(n+1), A005614(3*n+4)])`
-/

namespace A190439.P3950432331787372004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190439.P3950432331787372004

namespace A190439

/-- `A005206(lt[A120614(n+1), A005614(3*n+4)])` -/
def P3950432331787372004.Spec : Prop :=
  ∀ n, P3950432331787372004.a n = A190439 (n + 1)

end A190439

/-!
# A190440: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(golden ratio,4,0) and []=floor.

The programs for A190440, the canonical program `A190440.P4697104139142966514` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190440 has offset 1).

The definition of A190440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190440.P8366770280728219515

`floor(4*ϕ*(n+1))%4`
-/

namespace A190440.P8366770280728219515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊4 * (Real.goldenRatio * (n + 1 : ℝ))⌋ 4

end

end A190440.P8366770280728219515

namespace A190440

/-- `floor(4*ϕ*(n+1))%4` -/
def P8366770280728219515.Spec : Prop :=
  ∀ n, P8366770280728219515.a n = A190440 (n + 1)

end A190440

/-! ## A190440.P446075206649218308

`and(3, floor(4*ϕ*(n+1)))`
-/

namespace A190440.P446075206649218308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ⌊4 * (Real.goldenRatio * (n + 1 : ℝ))⌋

end

end A190440.P446075206649218308

namespace A190440

/-- `and(3, floor(4*ϕ*(n+1)))` -/
def P446075206649218308.Spec : Prop :=
  ∀ n, P446075206649218308.a n = A190440 (n + 1)

end A190440

/-! ## A190440.P4697104139142966514

`3-A189935(n+1)%4`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190440

/-- `3-A189935(n+1)%4` -/
def P4697104139142966514.Spec : Prop :=
  ∀ n, P4697104139142966514.a n = A190440 (n + 1)

theorem P4697104139142966514.correct : P4697104139142966514.Spec := by
  intro n
  simp only [A190440, Nat.add_sub_cancel]

end A190440

/-! ## A190440.P11201714443380890397

`floor(4*∑[ϕ-A001468(n)])`
-/

namespace A190440.P11201714443380890397
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (A001468 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A190440.P11201714443380890397

namespace A190440

/-- `floor(4*∑[ϕ-A001468(n)])` -/
def P11201714443380890397.Spec : Prop :=
  ∀ n, P11201714443380890397.a n = A190440 (n + 1)

end A190440

/-! ## A190440.P8794168597204292820

`3-A010873(A189935(n+1))`
-/

namespace A190440.P8794168597204292820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A010873 (A189935 (n + 1)).toNat

end

end A190440.P8794168597204292820

namespace A190440

/-- `3-A010873(A189935(n+1))` -/
def P8794168597204292820.Spec : Prop :=
  ∀ n, P8794168597204292820.a n = A190440 (n + 1)

end A190440

/-! ## A190440.P13071395631282531810

`A190248(n+1)+A078588(n+1)`
-/

namespace A190440.P13071395631282531810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190248 (n + 1) + A078588 (n + 1)

end

end A190440.P13071395631282531810

namespace A190440

/-- `A190248(n+1)+A078588(n+1)` -/
def P13071395631282531810.Spec : Prop :=
  ∀ n, P13071395631282531810.a n = A190440 (n + 1)

end A190440

/-! ## A190440.P14826407825560584126

`A158459(A195175(n+1))`
-/

namespace A190440.P14826407825560584126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158459 (A195175 (n + 1)).toNat

end

end A190440.P14826407825560584126

namespace A190440

/-- `A158459(A195175(n+1))` -/
def P14826407825560584126.Spec : Prop :=
  ∀ n, P14826407825560584126.a n = A190440 (n + 1)

end A190440

/-! ## A190440.P4625110247437499190

`dr(A001962(2*(n+1))%4)`
-/

namespace A190440.P4625110247437499190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A001962 (2 * (n + 1))) 4)

end

end A190440.P4625110247437499190

namespace A190440

/-- `dr(A001962(2*(n+1))%4)` -/
def P4625110247437499190.Spec : Prop :=
  ∀ n, (P4625110247437499190.a n : ℤ) = A190440 (n + 1)

end A190440

/-! ## A190440.P11132744646772704981

`A010873(3*A195172(2*(n+1)))`
-/

namespace A190440.P11132744646772704981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (3 * A195172 (2 * (n + 1))).toNat

end

end A190440.P11132744646772704981

namespace A190440

/-- `A010873(3*A195172(2*(n+1)))` -/
def P11132744646772704981.Spec : Prop :=
  ∀ n, P11132744646772704981.a n = A190440 (n + 1)

end A190440

/-! ## A190440.P6626765992504708219

`A010873(A005206(A004767(n)))`
-/

namespace A190440.P6626765992504708219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A005206 (A004767 n).toNat).toNat

end

end A190440.P6626765992504708219

namespace A190440

/-- `A010873(A005206(A004767(n)))` -/
def P6626765992504708219.Spec : Prop :=
  ∀ n, P6626765992504708219.a n = A190440 (n + 1)

end A190440

/-! ## A190440.P17965798208303775054

`A191329(2*(n+1))+A078588(2*(n+1))`
-/

namespace A190440.P17965798208303775054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191329 (2 * (n + 1)) + A078588 (2 * (n + 1))

end

end A190440.P17965798208303775054

namespace A190440

/-- `A191329(2*(n+1))+A078588(2*(n+1))` -/
def P17965798208303775054.Spec : Prop :=
  ∀ n, P17965798208303775054.a n = A190440 (n + 1)

end A190440

/-! ## A190440.P8786848664281191278

`∑[-Δ[-A060143(4*n)%4]]`
-/

namespace A190440.P8786848664281191278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A060143 (4 * n)) 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190440.P8786848664281191278

namespace A190440

/-- `∑[-Δ[-A060143(4*n)%4]]` -/
def P8786848664281191278.Spec : Prop :=
  ∀ n, P8786848664281191278.a n = A190440 (n + 1)

end A190440

/-! ## A190440.P5059548298396957509

`A010873(A000201(Δ[A001844(n)]))`
-/

namespace A190440.P5059548298396957509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A000201 (f1 (n + 1) - f1 n).toNat).toNat

end

end A190440.P5059548298396957509

namespace A190440

/-- `A010873(A000201(Δ[A001844(n)]))` -/
def P5059548298396957509.Spec : Prop :=
  ∀ n, P5059548298396957509.a n = A190440 (n + 1)

end A190440

/-! ## A190440.P24716793220546490

`A010873(A001950(Δ[A001844(n)]))`
-/

namespace A190440.P24716793220546490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A001950 (f1 (n + 1) - f1 n).toNat).toNat

end

end A190440.P24716793220546490

namespace A190440

/-- `A010873(A001950(Δ[A001844(n)]))` -/
def P24716793220546490.Spec : Prop :=
  ∀ n, P24716793220546490.a n = A190440 (n + 1)

end A190440

/-! ## A190440.P3957257230281859778

`A010873(A001950(Δ[A046092(n)]))`
-/

namespace A190440.P3957257230281859778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A001950 (f1 (n + 1) - f1 n).toNat).toNat

end

end A190440.P3957257230281859778

namespace A190440

/-- `A010873(A001950(Δ[A046092(n)]))` -/
def P3957257230281859778.Spec : Prop :=
  ∀ n, P3957257230281859778.a n = A190440 (n + 1)

end A190440

/-! ## A190440.P10774444053329918617

`A060143(A008586(n+1))-A008586(A060143(n+1))`
-/

namespace A190440.P10774444053329918617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A008586 (n + 1)).toNat - A008586 (A060143 (n + 1)).toNat

end

end A190440.P10774444053329918617

namespace A190440

/-- `A060143(A008586(n+1))-A008586(A060143(n+1))` -/
def P10774444053329918617.Spec : Prop :=
  ∀ n, P10774444053329918617.a n = A190440 (n + 1)

end A190440

/-! ## A190440.P4325894512508625316

`A008574(A195121(n+1))-A195121(A008574(n+1))`
-/

namespace A190440.P4325894512508625316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A195121 (n + 1)).toNat - A195121 (A008574 (n + 1)).toNat

end

end A190440.P4325894512508625316

namespace A190440

/-- `A008574(A195121(n+1))-A195121(A008574(n+1))` -/
def P4325894512508625316.Spec : Prop :=
  ∀ n, P4325894512508625316.a n = A190440 (n + 1)

end A190440

/-! ## A190440.P13554383378588912749

`A308898(A194152(n+1))`
-/

namespace A190440.P13554383378588912749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308898 (A194152 (n + 1)).toNat

end

end A190440.P13554383378588912749

namespace A190440

/-- `A308898(A194152(n+1))` -/
def P13554383378588912749.Spec : Prop :=
  ∀ n, P13554383378588912749.a n = A190440 (n + 1)

end A190440

/-! ## A190440.P18398367505643594184

`A079343(A330175(n+1))`
-/

namespace A190440.P18398367505643594184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079343 (A330175 (n + 1)).toNat

end

end A190440.P18398367505643594184

namespace A190440

/-- `A079343(A330175(n+1))` -/
def P18398367505643594184.Spec : Prop :=
  ∀ n, P18398367505643594184.a n = A190440 (n + 1)

end A190440

/-!
# A190441: a(n) = 4*a(n-1) + 39*a(n-2), with a(0)=0, a(1)=1.

The programs for A190441, the canonical program `A190441.P14712822196655086894` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190441 has offset 0).

The definition of A190441 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+39*a(n-2)` (program `A190441.P14712822196655086894`, by `A190441.P14712822196655086894.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190441.P14712822196655086894

`4*a(n-1)+39*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A190441

/-- `4*a(n-1)+39*a(n-2)` -/
def P14712822196655086894.Spec : Prop :=
  ∀ n, (P14712822196655086894.a n : ℤ) = A190441 n

theorem P14712822196655086894.correct : P14712822196655086894.Spec := by
  intro n
  simp only [A190441]

end A190441

/-! ## A190441.P14670716512026090895

`((2+sqrt(43))^n-(2-sqrt(43))^n)/(2*sqrt(43))`
-/

namespace A190441.P14670716512026090895
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (43 : ℝ)) ^ n - (2 - Real.sqrt (43 : ℝ)) ^ n) / (2 * Real.sqrt (43 : ℝ))

end

end A190441.P14670716512026090895

namespace A190441

/-- `((2+sqrt(43))^n-(2-sqrt(43))^n)/(2*sqrt(43))` -/
def P14670716512026090895.Spec : Prop :=
  ∀ n, P14670716512026090895.a n = (A190441 n : ℝ)

end A190441

/-!
# A190442: Positions of 1 in A190440.

The programs for A190442, the canonical program `A190442.P12154458951944813995` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190442 has offset 1).

The definition of A190442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190442.P12154458951944813995

`eq[1, floor(4*ϕ*n)%4]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A190442

/-- `eq[1, floor(4*ϕ*n)%4]` -/
def P12154458951944813995.Spec : Prop :=
  ∀ n, (P12154458951944813995.a n : ℤ) = A190442 (n + 1)

theorem P12154458951944813995.correct : P12154458951944813995.Spec := by
  intro n
  simp only [A190442, Nat.add_sub_cancel]

end A190442

/-! ## A190442.P4181757586700906714

`∩[A005653(n+1), A190250(n+1)]`
-/

namespace A190442.P4181757586700906714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190442.P4181757586700906714

namespace A190442

/-- `∩[A005653(n+1), A190250(n+1)]` -/
def P4181757586700906714.Spec : Prop :=
  ∀ n, (P4181757586700906714.a n : ℤ) = A190442 (n + 1)

end A190442

/-! ## A190442.P9765152728118576635

`eq[1, A190440(n+1)]+1`
-/

namespace A190442.P9765152728118576635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190440 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190442.P9765152728118576635

namespace A190442

/-- `eq[1, A190440(n+1)]+1` -/
def P9765152728118576635.Spec : Prop :=
  ∀ n, (P9765152728118576635.a n : ℤ) = A190442 (n + 1)

end A190442

/-! ## A190442.P16486839043737669301

`eq[2, A189935(n+1)%4]+1`
-/

namespace A190442.P16486839043737669301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189935 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190442.P16486839043737669301

namespace A190442

/-- `eq[2, A189935(n+1)%4]+1` -/
def P16486839043737669301.Spec : Prop :=
  ∀ n, (P16486839043737669301.a n : ℤ) = A190442 (n + 1)

end A190442

/-! ## A190442.P16426534925522374925

`A020725(eq[1, A190440(n+1)])`
-/

namespace A190442.P16426534925522374925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190442.P16426534925522374925

namespace A190442

/-- `A020725(eq[1, A190440(n+1)])` -/
def P16426534925522374925.Spec : Prop :=
  ∀ n, P16426534925522374925.a n = A190442 (n + 1)

end A190442

/-! ## A190442.P2210630175887132397

`filter[A190250(n+1), A089809(#)]`
-/

namespace A190442.P2210630175887132397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089809 (f1 j).toNat = 1) n)

end

end A190442.P2210630175887132397

namespace A190442

/-- `filter[A190250(n+1), A089809(#)]` -/
def P2210630175887132397.Spec : Prop :=
  ∀ n, P2210630175887132397.a n = A190442 (n + 1)

end A190442

/-! ## A190442.P1775905902084950328

`filter[A190250(n+1), A334413(#)]`
-/

namespace A190442.P1775905902084950328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334413 (f1 j).toNat = 1) n)

end

end A190442.P1775905902084950328

namespace A190442

/-- `filter[A190250(n+1), A334413(#)]` -/
def P1775905902084950328.Spec : Prop :=
  ∀ n, P1775905902084950328.a n = A190442 (n + 1)

end A190442

/-! ## A190442.P11691761008844354469

`eq[0, A005887(A195175(n))]`
-/

namespace A190442.P11691761008844354469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005887 (A195175 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190442.P11691761008844354469

namespace A190442

/-- `eq[0, A005887(A195175(n))]` -/
def P11691761008844354469.Spec : Prop :=
  ∀ n, (P11691761008844354469.a n : ℤ) = A190442 (n + 1)

end A190442

/-! ## A190442.P11689024734680647827

`eq[A000007(n), A003815(A195175(n))]`
-/

namespace A190442.P11689024734680647827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A195175 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190442.P11689024734680647827

namespace A190442

/-- `eq[A000007(n), A003815(A195175(n))]` -/
def P11689024734680647827.Spec : Prop :=
  ∀ n, (P11689024734680647827.a n : ℤ) = A190442 (n + 1)

end A190442

/-! ## A190442.P6723781579649909440

`eq[A000038(n), A003815(A195175(n))]`
-/

namespace A190442.P6723781579649909440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A195175 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190442.P6723781579649909440

namespace A190442

/-- `eq[A000038(n), A003815(A195175(n))]` -/
def P6723781579649909440.Spec : Prop :=
  ∀ n, (P6723781579649909440.a n : ℤ) = A190442 (n + 1)

end A190442

/-! ## A190442.P14889209174777367653

`eq[1, A003815(A195175(n)+2)]`
-/

namespace A190442.P14889209174777367653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A195175 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190442.P14889209174777367653

namespace A190442

/-- `eq[1, A003815(A195175(n)+2)]` -/
def P14889209174777367653.Spec : Prop :=
  ∀ n, (P14889209174777367653.a n : ℤ) = A190442 (n + 1)

end A190442

/-! ## A190442.P1033356760756774766

`eq[3, and(3, A195172(2*n))]`
-/

namespace A190442.P1033356760756774766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A195172 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190442.P1033356760756774766

namespace A190442

/-- `eq[3, and(3, A195172(2*n))]` -/
def P1033356760756774766.Spec : Prop :=
  ∀ n, (P1033356760756774766.a n : ℤ) = A190442 (n + 1)

end A190442

/-! ## A190442.P6316904794774819011

`lt[A078588(n), A078588(2*n)]`
-/

namespace A190442.P6316904794774819011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190442.P6316904794774819011

namespace A190442

/-- `lt[A078588(n), A078588(2*n)]` -/
def P6316904794774819011.Spec : Prop :=
  ∀ n, (P6316904794774819011.a n : ℤ) = A190442 (n + 1)

end A190442

/-! ## A190442.P6599891548206273758

`eq[A089808(n+1), A190248(n+1)]+1`
-/

namespace A190442.P6599891548206273758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190442.P6599891548206273758

namespace A190442

/-- `eq[A089808(n+1), A190248(n+1)]+1` -/
def P6599891548206273758.Spec : Prop :=
  ∀ n, (P6599891548206273758.a n : ℤ) = A190442 (n + 1)

end A190442

/-! ## A190442.P15373026076953066177

`eq[1, A078588(2*n)*A190248(n+2)]`
-/

namespace A190442.P15373026076953066177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (2 * n) * A190248 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190442.P15373026076953066177

namespace A190442

/-- `eq[1, A078588(2*n)*A190248(n+2)]` -/
def P15373026076953066177.Spec : Prop :=
  ∀ n, (P15373026076953066177.a n : ℤ) = A190442 (n + 1)

end A190442

/-! ## A190442.P11935063773751550917

`eq[1, A009531(A060143(4*n))]`
-/

namespace A190442.P11935063773751550917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A060143 (4 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190442.P11935063773751550917

namespace A190442

/-- `eq[1, A009531(A060143(4*n))]` -/
def P11935063773751550917.Spec : Prop :=
  ∀ n, (P11935063773751550917.a n : ℤ) = A190442 (n + 1)

end A190442

/-! ## A190442.P3443117728015542912

`eq[1, A135481(A001950(A008574(n)))]`
-/

namespace A190442.P3443117728015542912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A001950 (A008574 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190442.P3443117728015542912

namespace A190442

/-- `eq[1, A135481(A001950(A008574(n)))]` -/
def P3443117728015542912.Spec : Prop :=
  ∀ n, (P3443117728015542912.a n : ℤ) = A190442 (n + 1)

end A190442

/-! ## A190442.P8164130853754048540

`eq[2, A001511(A026351(4*n))]`
-/

namespace A190442.P8164130853754048540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A026351 (4 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190442.P8164130853754048540

namespace A190442

/-- `eq[2, A001511(A026351(4*n))]` -/
def P8164130853754048540.Spec : Prop :=
  ∀ n, (P8164130853754048540.a n : ℤ) = A190442 (n + 1)

end A190442

/-! ## A190442.P16600499474854267377

`record[A174571(A026242(A016813(n)))]`
-/

namespace A190442.P16600499474854267377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A026242 (A016813 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190442.P16600499474854267377

namespace A190442

/-- `record[A174571(A026242(A016813(n)))]` -/
def P16600499474854267377.Spec : Prop :=
  ∀ n, P16600499474854267377.a n = A190442 (n + 1)

end A190442

/-! ## A190442.P17679207491528074603

`lt[A189661(n+1), A189661(A288713(2*n+1))]`
-/

namespace A190442.P17679207491528074603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A288713 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190442.P17679207491528074603

namespace A190442

/-- `lt[A189661(n+1), A189661(A288713(2*n+1))]` -/
def P17679207491528074603.Spec : Prop :=
  ∀ n, (P17679207491528074603.a n : ℤ) = A190442 (n + 1)

end A190442

/-!
# A190443: Positions of 2 in A190440.

The programs for A190443, the canonical program `A190443.P6575420629787972794` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190443 has offset 1).

The definition of A190443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190443.P6575420629787972794

`∩[A005652(n+1), A190250(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A190443

/-- `∩[A005652(n+1), A190250(n+1)]` -/
def P6575420629787972794.Spec : Prop :=
  ∀ n, (P6575420629787972794.a n : ℤ) = A190443 (n + 1)

theorem P6575420629787972794.correct : P6575420629787972794.Spec := by
  intro n
  simp only [A190443, Nat.add_sub_cancel]

end A190443

/-! ## A190443.P11221198719543322231

`eq[2, A190440(n+1)]+1`
-/

namespace A190443.P11221198719543322231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190440 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190443.P11221198719543322231

namespace A190443

/-- `eq[2, A190440(n+1)]+1` -/
def P11221198719543322231.Spec : Prop :=
  ∀ n, (P11221198719543322231.a n : ℤ) = A190443 (n + 1)

end A190443

/-! ## A190443.P12589652150254822843

`eq[2, A010123(A195175(n))]`
-/

namespace A190443.P12589652150254822843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 (A195175 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190443.P12589652150254822843

namespace A190443

/-- `eq[2, A010123(A195175(n))]` -/
def P12589652150254822843.Spec : Prop :=
  ∀ n, (P12589652150254822843.a n : ℤ) = A190443 (n + 1)

end A190443

/-! ## A190443.P15481464738137462858

`filter[A190250(n+1), A078588(#)]`
-/

namespace A190443.P15481464738137462858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A078588 (f1 j).toNat = 1) n)

end

end A190443.P15481464738137462858

namespace A190443

/-- `filter[A190250(n+1), A078588(#)]` -/
def P15481464738137462858.Spec : Prop :=
  ∀ n, P15481464738137462858.a n = A190443 (n + 1)

end A190443

/-! ## A190443.P1507231812916825421

`filter[A190250(n+1), A334414(#)]`
-/

namespace A190443.P1507231812916825421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334414 (f1 j).toNat = 1) n)

end

end A190443.P1507231812916825421

namespace A190443

/-- `filter[A190250(n+1), A334414(#)]` -/
def P1507231812916825421.Spec : Prop :=
  ∀ n, P1507231812916825421.a n = A190443 (n + 1)

end A190443

/-! ## A190443.P5588076920105437672

`eq[A000034(A195175(n)), A003849(n)]`
-/

namespace A190443.P5588076920105437672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A195175 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190443.P5588076920105437672

namespace A190443

/-- `eq[A000034(A195175(n)), A003849(n)]` -/
def P5588076920105437672.Spec : Prop :=
  ∀ n, (P5588076920105437672.a n : ℤ) = A190443 (n + 1)

end A190443

/-! ## A190443.P14563907406753288936

`eq[A000007(n), A088705(A195175(n))]`
-/

namespace A190443.P14563907406753288936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A195175 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190443.P14563907406753288936

namespace A190443

/-- `eq[A000007(n), A088705(A195175(n))]` -/
def P14563907406753288936.Spec : Prop :=
  ∀ n, (P14563907406753288936.a n : ℤ) = A190443 (n + 1)

end A190443

/-! ## A190443.P4190589227737481066

`eq[A000038(n), A003815(A195175(n)+1)]`
-/

namespace A190443.P4190589227737481066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A195175 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190443.P4190589227737481066

namespace A190443

/-- `eq[A000038(n), A003815(A195175(n)+1)]` -/
def P4190589227737481066.Spec : Prop :=
  ∀ n, (P4190589227737481066.a n : ℤ) = A190443 (n + 1)

end A190443

/-! ## A190443.P1266558549055272714

`eq[2, A195172(2*n)%4]`
-/

namespace A190443.P1266558549055272714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195172 (2 * n)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190443.P1266558549055272714

namespace A190443

/-- `eq[2, A195172(2*n)%4]` -/
def P1266558549055272714.Spec : Prop :=
  ∀ n, (P1266558549055272714.a n : ℤ) = A190443 (n + 1)

end A190443

/-! ## A190443.P14650891095275166634

`lt[A078588(2*n), A078588(n)]`
-/

namespace A190443.P14650891095275166634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190443.P14650891095275166634

namespace A190443

/-- `lt[A078588(2*n), A078588(n)]` -/
def P14650891095275166634.Spec : Prop :=
  ∀ n, (P14650891095275166634.a n : ℤ) = A190443 (n + 1)

end A190443

/-! ## A190443.P10272024160985576363

`eq[A300763(2*n)%2, A014675(n)]`
-/

namespace A190443.P10272024160985576363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300763 (2 * n)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190443.P10272024160985576363

namespace A190443

/-- `eq[A300763(2*n)%2, A014675(n)]` -/
def P10272024160985576363.Spec : Prop :=
  ∀ n, (P10272024160985576363.a n : ℤ) = A190443 (n + 1)

end A190443

/-! ## A190443.P3733077692602147204

`eq[A078588(2*n), A191329(2*(n+1))]`
-/

namespace A190443.P3733077692602147204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191329 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190443.P3733077692602147204

namespace A190443

/-- `eq[A078588(2*n), A191329(2*(n+1))]` -/
def P3733077692602147204.Spec : Prop :=
  ∀ n, (P3733077692602147204.a n : ℤ) = A190443 (n + 1)

end A190443

/-! ## A190443.P11968147333232485955

`eq[2, A060143(4*n)%4]`
-/

namespace A190443.P11968147333232485955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060143 (4 * n)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190443.P11968147333232485955

namespace A190443

/-- `eq[2, A060143(4*n)%4]` -/
def P11968147333232485955.Spec : Prop :=
  ∀ n, (P11968147333232485955.a n : ℤ) = A190443 (n + 1)

end A190443

/-! ## A190443.P7744323889947094550

`eq[3, A004956(4*n)%4]`
-/

namespace A190443.P7744323889947094550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004956 (4 * n)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190443.P7744323889947094550

namespace A190443

/-- `eq[3, A004956(4*n)%4]` -/
def P7744323889947094550.Spec : Prop :=
  ∀ n, (P7744323889947094550.a n : ℤ) = A190443 (n + 1)

end A190443

/-! ## A190443.P4232316496847423187

`eq[A003849(n+1), A089808(2*(n+1))]+1`
-/

namespace A190443.P4232316496847423187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089808 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190443.P4232316496847423187

namespace A190443

/-- `eq[A003849(n+1), A089808(2*(n+1))]+1` -/
def P4232316496847423187.Spec : Prop :=
  ∀ n, (P4232316496847423187.a n : ℤ) = A190443 (n + 1)

end A190443

/-! ## A190443.P3581634043949883261

`eq[A089808(2*(n+1)), A089808(n+2)]+1`
-/

namespace A190443.P3581634043949883261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089808 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089808 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190443.P3581634043949883261

namespace A190443

/-- `eq[A089808(2*(n+1)), A089808(n+2)]+1` -/
def P3581634043949883261.Spec : Prop :=
  ∀ n, (P3581634043949883261.a n : ℤ) = A190443 (n + 1)

end A190443

/-! ## A190443.P3488170851104084788

`lt[A089808(n+1)*A089808(A004277(n)), 2]`
-/

namespace A190443.P3488170851104084788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089808 (n + 1) * A089808 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A190443.P3488170851104084788

namespace A190443

/-- `lt[A089808(n+1)*A089808(A004277(n)), 2]` -/
def P3488170851104084788.Spec : Prop :=
  ∀ n, (P3488170851104084788.a n : ℤ) = A190443 (n + 1)

end A190443

/-! ## A190443.P4239154852746090046

`lt[1, A007814(A189662(4*n+1))]`
-/

namespace A190443.P4239154852746090046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A189662 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190443.P4239154852746090046

namespace A190443

/-- `lt[1, A007814(A189662(4*n+1))]` -/
def P4239154852746090046.Spec : Prop :=
  ∀ n, (P4239154852746090046.a n : ℤ) = A190443 (n + 1)

end A190443

/-! ## A190443.P2679908920236448247

`record[A054576(A026242(A016825(n)))]`
-/

namespace A190443.P2679908920236448247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A026242 (A016825 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190443.P2679908920236448247

namespace A190443

/-- `record[A054576(A026242(A016825(n)))]` -/
def P2679908920236448247.Spec : Prop :=
  ∀ n, P2679908920236448247.a n = A190443 (n + 1)

end A190443

/-!
# A190444: E.g.f. exp(x+x^2+x^4).

The programs for A190444, there is no canonical definition to state claims against.
-/

/-! ## A190444.P112092831017641928

`a(n-1)+2*(n-1)*a(n-2)+4*(n-3)*(n-2)*(n-1)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7`
-/

namespace A190444.P112092831017641928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 7] fun n a =>
  a (n - 1) + 2 * (((n : ℤ) - 1) * a (n - 2)) + 4 * (((n : ℤ) - 3) * (((n : ℤ) - 2) * (((n : ℤ) - 1) * a (n - 4))))

end

end A190444.P112092831017641928

/-!
# A190445: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(golden ratio,4,1) and []=floor.

The programs for A190445, the canonical program `A190445.P4769469917337469391` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190445 has offset 1).

The definition of A190445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190445.P4769469917337469391

`A190427(2*(n+1))+2*A078588(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190445

/-- `A190427(2*(n+1))+2*A078588(n+1)` -/
def P4769469917337469391.Spec : Prop :=
  ∀ n, P4769469917337469391.a n = A190445 (n + 1)

theorem P4769469917337469391.correct : P4769469917337469391.Spec := by
  intro n
  simp only [A190445, Nat.add_sub_cancel]

end A190445

/-! ## A190445.P16780530003968603450

`A191329(2*(n+1))+A190427(2*(n+1))`
-/

namespace A190445.P16780530003968603450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191329 (2 * (n + 1)) + A190427 (2 * (n + 1))

end

end A190445.P16780530003968603450

namespace A190445

/-- `A191329(2*(n+1))+A190427(2*(n+1))` -/
def P16780530003968603450.Spec : Prop :=
  ∀ n, P16780530003968603450.a n = A190445 (n + 1)

end A190445

/-! ## A190445.P1584640853117875796

`A005206(A008574(n+1))-4*A005206(n)`
-/

namespace A190445.P1584640853117875796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A008574 (n + 1)).toNat - 4 * A005206 n

end

end A190445.P1584640853117875796

namespace A190445

/-- `A005206(A008574(n+1))-4*A005206(n)` -/
def P1584640853117875796.Spec : Prop :=
  ∀ n, P1584640853117875796.a n = A190445 (n + 1)

end A190445

/-! ## A190445.P14091542697966287752

`A005206(4*(n+1))-A008586(A005206(n))`
-/

namespace A190445.P14091542697966287752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (4 * (n + 1)) - A008586 (A005206 n).toNat

end

end A190445.P14091542697966287752

namespace A190445

/-- `A005206(4*(n+1))-A008586(A005206(n))` -/
def P14091542697966287752.Spec : Prop :=
  ∀ n, P14091542697966287752.a n = A190445 (n + 1)

end A190445

/-! ## A190445.P12991050427116471818

`A001966(A005843(n+1))%A284621(n+2)`
-/

namespace A190445.P12991050427116471818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001966 (A005843 (n + 1)).toNat) (A284621 (n + 2))

end

end A190445.P12991050427116471818

namespace A190445

/-- `A001966(A005843(n+1))%A284621(n+2)` -/
def P12991050427116471818.Spec : Prop :=
  ∀ n, P12991050427116471818.a n = A190445 (n + 1)

end A190445

/-! ## A190445.P10303637292380756865

`A005614(4*n+3)+A000201(4*(n+1))%4`
-/

namespace A190445.P10303637292380756865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (4 * n + 3) + Int.tmod (A000201 (4 * (n + 1))) 4

end

end A190445.P10303637292380756865

namespace A190445

/-- `A005614(4*n+3)+A000201(4*(n+1))%4` -/
def P10303637292380756865.Spec : Prop :=
  ∀ n, P10303637292380756865.a n = A190445 (n + 1)

end A190445

/-! ## A190445.P10719659863175447986

`A001950(4*n+5)%A005408(A001950(n+1))`
-/

namespace A190445.P10719659863175447986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001950 (4 * n + 5)) (A005408 (A001950 (n + 1)).toNat)

end

end A190445.P10719659863175447986

namespace A190445

/-- `A001950(4*n+5)%A005408(A001950(n+1))` -/
def P10719659863175447986.Spec : Prop :=
  ∀ n, P10719659863175447986.a n = A190445 (n + 1)

end A190445

/-! ## A190445.P4601004605835329567

`A000201(A016813(n+1))-A016813(A000201(n+1))`
-/

namespace A190445.P4601004605835329567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A016813 (n + 1)).toNat - A016813 (A000201 (n + 1)).toNat

end

end A190445.P4601004605835329567

namespace A190445

/-- `A000201(A016813(n+1))-A016813(A000201(n+1))` -/
def P4601004605835329567.Spec : Prop :=
  ∀ n, P4601004605835329567.a n = A190445 (n + 1)

end A190445

/-! ## A190445.P5839626630229262782

`A219636(A004768(n))%A283234(n+1)`
-/

namespace A190445.P5839626630229262782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219636 (A004768 n).toNat) (A283234 (n + 1))

end

end A190445.P5839626630229262782

namespace A190445

/-- `A219636(A004768(n))%A283234(n+1)` -/
def P5839626630229262782.Spec : Prop :=
  ∀ n, P5839626630229262782.a n = A190445 (n + 1)

end A190445

/-! ## A190445.P7118625000018525459

`A219636(A004768(n))-A008574(A001950(n+1))`
-/

namespace A190445.P7118625000018525459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219636 (A004768 n).toNat - A008574 (A001950 (n + 1)).toNat

end

end A190445.P7118625000018525459

namespace A190445

/-- `A219636(A004768(n))-A008574(A001950(n+1))` -/
def P7118625000018525459.Spec : Prop :=
  ∀ n, P7118625000018525459.a n = A190445 (n + 1)

end A190445

/-!
# A190446: Positions of 0 in A190445.

The programs for A190446, there is no canonical definition to state claims against.
-/

/-! ## A190446.P13637215265591439135

`ceil(ϕ*A190450(n+1))`
-/

namespace A190446.P13637215265591439135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A190450 (n + 1) : ℝ)⌉

end

end A190446.P13637215265591439135

/-! ## A190446.P16456131665071825378

`A190450(n+1)+A190249(n+1)`
-/

namespace A190446.P16456131665071825378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190450 (n + 1) + A190249 (n + 1)

end

end A190446.P16456131665071825378

/-! ## A190446.P5069576313430883012

`A190456(n+1)-A190450(n+1)`
-/

namespace A190446.P5069576313430883012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190456 (n + 1) - A190450 (n + 1)

end

end A190446.P5069576313430883012

/-! ## A190446.P1799850591570550344

`A190458(n+1)-A190456(n+1)`
-/

namespace A190446.P1799850591570550344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190458 (n + 1) - A190456 (n + 1)

end

end A190446.P1799850591570550344

/-! ## A190446.P9192521782993099639

`A001950(A190249(n+1))`
-/

namespace A190446.P9192521782993099639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A190249 (n + 1)).toNat

end

end A190446.P9192521782993099639

/-! ## A190446.P5799275001543185083

`A022413(A190249(n+1)-1)`
-/

namespace A190446.P5799275001543185083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 (A190249 (n + 1) - 1).toNat

end

end A190446.P5799275001543185083

/-! ## A190446.P5311698949725582985

`A022413(eq[0, A190248(n+1)])`
-/

namespace A190446.P5311698949725582985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190446.P5311698949725582985

/-! ## A190446.P4560479768359730777

`record[A295085(n)+A019444(A295085(n))]`
-/

namespace A190446.P4560479768359730777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n + A019444 (A295085 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190446.P4560479768359730777

/-! ## A190446.P13329157287401834955

`A001950(∩[A001950(n+1), A295085(n)])`
-/

namespace A190446.P13329157287401834955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A190446.P13329157287401834955

/-! ## A190446.P8535646884454114060

`∩[A190450(n+1), A004938(n)]-A190450(n+1)`
-/

namespace A190446.P8535646884454114060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A190450 (n + 1)

end

end A190446.P8535646884454114060

/-! ## A190446.P802865593482952714

`A002251(A190450(n+1))`
-/

namespace A190446.P802865593482952714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A190450 (n + 1)).toNat

end

end A190446.P802865593482952714

/-! ## A190446.P7408170776450232193

`A022342(A190450(n+1)+1)`
-/

namespace A190446.P7408170776450232193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A190450 (n + 1) + 1).toNat

end

end A190446.P7408170776450232193

/-! ## A190446.P16095068780652858586

`A066096(∩[A184733(n+1), A066096(n)])+1`
-/

namespace A190446.P16095068780652858586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A190446.P16095068780652858586

/-! ## A190446.P1280860109149396675

`A000201(∩[A000201(n+1), A184733(n+1)])+1`
-/

namespace A190446.P1280860109149396675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A190446.P1280860109149396675

/-! ## A190446.P10483624108310206451

`∩[A101868(2*(n+1)), A004937(2*n)]/2`
-/

namespace A190446.P10483624108310206451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101868 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (2 * n)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A190446.P10483624108310206451

/-! ## A190446.P7021797772146904667

`∩[A188434(2*n+1), A004937(2*n)]/2`
-/

namespace A190446.P7021797772146904667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (2 * n)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A190446.P7021797772146904667

/-! ## A190446.P9298882994109809543

`A005206(A190456(n+1))`
-/

namespace A190446.P9298882994109809543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A190456 (n + 1)).toNat

end

end A190446.P9298882994109809543

/-! ## A190446.P14326512990925639830

`∩[A295085(n), A001950(A295085(n))]`
-/

namespace A190446.P14326512990925639830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A295085 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190446.P14326512990925639830

/-! ## A190446.P1360266062503973066

`∩[A004937(2*n), A026351(2*n)]/2`
-/

namespace A190446.P1360266062503973066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (2 * n)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A190446.P1360266062503973066

/-! ## A190446.P1740435349011185587

`A026272(A190456(n+1)-1)`
-/

namespace A190446.P1740435349011185587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A190456 (n + 1) - 1).toNat

end

end A190446.P1740435349011185587

/-!
# A190447: Positions of 1 in A190445.

The programs for A190447, the canonical program `A190447.P2203967122028496358` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190447 has offset 1).

The definition of A190447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190447.P2203967122028496358

`eq[1, A190445(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190447

/-- `eq[1, A190445(n+1)]+1` -/
def P2203967122028496358.Spec : Prop :=
  ∀ n, (P2203967122028496358.a n : ℤ) = A190447 (n + 1)

theorem P2203967122028496358.correct : P2203967122028496358.Spec := by
  intro n
  simp only [A190447, Nat.add_sub_cancel]

end A190447

/-! ## A190447.P3749399369827232002

`eq[1, A001965(2*n)%4]`
-/

namespace A190447.P3749399369827232002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001965 (2 * n)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190447.P3749399369827232002

namespace A190447

/-- `eq[1, A001965(2*n)%4]` -/
def P3749399369827232002.Spec : Prop :=
  ∀ n, (P3749399369827232002.a n : ℤ) = A190447 (n + 1)

end A190447

/-! ## A190447.P1243149396323179703

`eq[1, A005206(4*n)%4]`
-/

namespace A190447.P1243149396323179703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005206 (4 * n)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190447.P1243149396323179703

namespace A190447

/-- `eq[1, A005206(4*n)%4]` -/
def P1243149396323179703.Spec : Prop :=
  ∀ n, (P1243149396323179703.a n : ℤ) = A190447 (n + 1)

end A190447

/-! ## A190447.P15221296816432596192

`eq[1, A010873(A001965(2*n))]`
-/

namespace A190447.P15221296816432596192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A001965 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190447.P15221296816432596192

namespace A190447

/-- `eq[1, A010873(A001965(2*n))]` -/
def P15221296816432596192.Spec : Prop :=
  ∀ n, (P15221296816432596192.a n : ℤ) = A190447 (n + 1)

end A190447

/-! ## A190447.P14097827695953373608

`eq[A001966(2*n)%2, A001468(n)]`
-/

namespace A190447.P14097827695953373608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001966 (2 * n)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190447.P14097827695953373608

namespace A190447

/-- `eq[A001966(2*n)%2, A001468(n)]` -/
def P14097827695953373608.Spec : Prop :=
  ∀ n, (P14097827695953373608.a n : ℤ) = A190447 (n + 1)

end A190447

/-! ## A190447.P17967930068325705763

`eq[1, A135481(A005206(A008586(n)))]`
-/

namespace A190447.P17967930068325705763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A005206 (A008586 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190447.P17967930068325705763

namespace A190447

/-- `eq[1, A135481(A005206(A008586(n)))]` -/
def P17967930068325705763.Spec : Prop :=
  ∀ n, (P17967930068325705763.a n : ℤ) = A190447 (n + 1)

end A190447

/-! ## A190447.P17186218957533022660

`eq[1, A002251(4*n)%4]`
-/

namespace A190447.P17186218957533022660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002251 (4 * n)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190447.P17186218957533022660

namespace A190447

/-- `eq[1, A002251(4*n)%4]` -/
def P17186218957533022660.Spec : Prop :=
  ∀ n, (P17186218957533022660.a n : ℤ) = A190447 (n + 1)

end A190447

/-! ## A190447.P9532911843253249593

`lt[A096270(A288713(2*n+1)), A188432(n+1)]`
-/

namespace A190447.P9532911843253249593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A288713 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190447.P9532911843253249593

namespace A190447

/-- `lt[A096270(A288713(2*n+1)), A188432(n+1)]` -/
def P9532911843253249593.Spec : Prop :=
  ∀ n, (P9532911843253249593.a n : ℤ) = A190447 (n + 1)

end A190447

/-! ## A190447.P4128046644246615585

`lt[A096270(A288713(2*n+1)), A189661(n+2)]`
-/

namespace A190447.P4128046644246615585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A288713 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190447.P4128046644246615585

namespace A190447

/-- `lt[A096270(A288713(2*n+1)), A189661(n+2)]` -/
def P4128046644246615585.Spec : Prop :=
  ∀ n, (P4128046644246615585.a n : ℤ) = A190447 (n + 1)

end A190447

/-! ## A190447.P1448701020364412075

`eq[A001468(n), A114986(A035487(2*n+1))]`
-/

namespace A190447.P1448701020364412075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A035487 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190447.P1448701020364412075

namespace A190447

/-- `eq[A001468(n), A114986(A035487(2*n+1))]` -/
def P1448701020364412075.Spec : Prop :=
  ∀ n, (P1448701020364412075.a n : ℤ) = A190447 (n + 1)

end A190447

/-! ## A190447.P12258770979569948589

`lt[A114986(n), A114986(A035487(2*n+1))]`
-/

namespace A190447.P12258770979569948589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A035487 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190447.P12258770979569948589

namespace A190447

/-- `lt[A114986(n), A114986(A035487(2*n+1))]` -/
def P12258770979569948589.Spec : Prop :=
  ∀ n, (P12258770979569948589.a n : ℤ) = A190447 (n + 1)

end A190447

/-! ## A190447.P14383230167693849326

`eq[3, A003324(A001966(2*n))]`
-/

namespace A190447.P14383230167693849326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (A001966 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190447.P14383230167693849326

namespace A190447

/-- `eq[3, A003324(A001966(2*n))]` -/
def P14383230167693849326.Spec : Prop :=
  ∀ n, (P14383230167693849326.a n : ℤ) = A190447 (n + 1)

end A190447

/-! ## A190447.P16917763621371856267

`lt[1, A007814(A001950(4*n+1)+1)]`
-/

namespace A190447.P16917763621371856267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A001950 (4 * n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190447.P16917763621371856267

namespace A190447

/-- `lt[1, A007814(A001950(4*n+1)+1)]` -/
def P16917763621371856267.Spec : Prop :=
  ∀ n, (P16917763621371856267.a n : ℤ) = A190447 (n + 1)

end A190447

/-! ## A190447.P4755375436785137235

`lt[A114986(A288713(2*n+1)), A289034(n+2)]`
-/

namespace A190447.P4755375436785137235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A288713 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190447.P4755375436785137235

namespace A190447

/-- `lt[A114986(A288713(2*n+1)), A289034(n+2)]` -/
def P4755375436785137235.Spec : Prop :=
  ∀ n, (P4755375436785137235.a n : ℤ) = A190447 (n + 1)

end A190447

/-! ## A190447.P7353097831474120687

`eq[2, A001511(A284624(A016825(n)))]`
-/

namespace A190447.P7353097831474120687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A284624 (A016825 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190447.P7353097831474120687

namespace A190447

/-- `eq[2, A001511(A284624(A016825(n)))]` -/
def P7353097831474120687.Spec : Prop :=
  ∀ n, (P7353097831474120687.a n : ℤ) = A190447 (n + 1)

end A190447

/-!
# A190448: Positions of 2 in A190445.

The programs for A190448, the canonical program `A190448.P14897104130546086455` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190448 has offset 1).

The definition of A190448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190448.P14897104130546086455

`eq[2, A190445(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190448

/-- `eq[2, A190445(n+1)]+1` -/
def P14897104130546086455.Spec : Prop :=
  ∀ n, (P14897104130546086455.a n : ℤ) = A190448 (n + 1)

theorem P14897104130546086455.correct : P14897104130546086455.Spec := by
  intro n
  simp only [A190448, Nat.add_sub_cancel]

end A190448

/-! ## A190448.P7642098855532050290

`A065475(eq[2, A190445(n+1)])`
-/

namespace A190448.P7642098855532050290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190448.P7642098855532050290

namespace A190448

/-- `A065475(eq[2, A190445(n+1)])` -/
def P7642098855532050290.Spec : Prop :=
  ∀ n, P7642098855532050290.a n = A190448 (n + 1)

end A190448

/-! ## A190448.P7150754491059416091

`eq[2, A001965(2*n)%4]`
-/

namespace A190448.P7150754491059416091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001965 (2 * n)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190448.P7150754491059416091

namespace A190448

/-- `eq[2, A001965(2*n)%4]` -/
def P7150754491059416091.Spec : Prop :=
  ∀ n, (P7150754491059416091.a n : ℤ) = A190448 (n + 1)

end A190448

/-! ## A190448.P7060851863301346233

`eq[2, A005206(4*n)%4]`
-/

namespace A190448.P7060851863301346233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005206 (4 * n)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190448.P7060851863301346233

namespace A190448

/-- `eq[2, A005206(4*n)%4]` -/
def P7060851863301346233.Spec : Prop :=
  ∀ n, (P7060851863301346233.a n : ℤ) = A190448 (n + 1)

end A190448

/-! ## A190448.P1399312552452772650

`eq[0, A010873(A001966(2*n))]`
-/

namespace A190448.P1399312552452772650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A001966 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190448.P1399312552452772650

namespace A190448

/-- `eq[0, A010873(A001966(2*n))]` -/
def P1399312552452772650.Spec : Prop :=
  ∀ n, (P1399312552452772650.a n : ℤ) = A190448 (n + 1)

end A190448

/-! ## A190448.P9752527665231202196

`eq[2, A010873(A001965(2*n))]`
-/

namespace A190448.P9752527665231202196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A001965 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190448.P9752527665231202196

namespace A190448

/-- `eq[2, A010873(A001965(2*n))]` -/
def P9752527665231202196.Spec : Prop :=
  ∀ n, (P9752527665231202196.a n : ℤ) = A190448 (n + 1)

end A190448

/-! ## A190448.P1047376588927277577

`eq[1, A174571(A005206(4*n))]`
-/

namespace A190448.P1047376588927277577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A005206 (4 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190448.P1047376588927277577

namespace A190448

/-- `eq[1, A174571(A005206(4*n))]` -/
def P1047376588927277577.Spec : Prop :=
  ∀ n, (P1047376588927277577.a n : ℤ) = A190448 (n + 1)

end A190448

/-! ## A190448.P9928023581246541798

`eq[2, A002251(4*n)%4]`
-/

namespace A190448.P9928023581246541798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002251 (4 * n)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190448.P9928023581246541798

namespace A190448

/-- `eq[2, A002251(4*n)%4]` -/
def P9928023581246541798.Spec : Prop :=
  ∀ n, (P9928023581246541798.a n : ℤ) = A190448 (n + 1)

end A190448

/-! ## A190448.P3258487311844153266

`eq[3, and(3, A000201(4*n+1))]`
-/

namespace A190448.P3258487311844153266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000201 (4 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190448.P3258487311844153266

namespace A190448

/-- `eq[3, and(3, A000201(4*n+1))]` -/
def P3258487311844153266.Spec : Prop :=
  ∀ n, (P3258487311844153266.a n : ℤ) = A190448 (n + 1)

end A190448

/-! ## A190448.P1526361454301978648

`eq[2, A006519(A005378(4*n))]`
-/

namespace A190448.P1526361454301978648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A005378 (4 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190448.P1526361454301978648

namespace A190448

/-- `eq[2, A006519(A005378(4*n))]` -/
def P1526361454301978648.Spec : Prop :=
  ∀ n, (P1526361454301978648.a n : ℤ) = A190448 (n + 1)

end A190448

/-! ## A190448.P3536159817672738156

`eq[1, A305371(A184517(2*n+1))]`
-/

namespace A190448.P3536159817672738156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305371 (A184517 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190448.P3536159817672738156

namespace A190448

/-- `eq[1, A305371(A184517(2*n+1))]` -/
def P3536159817672738156.Spec : Prop :=
  ∀ n, (P3536159817672738156.a n : ℤ) = A190448 (n + 1)

end A190448

/-! ## A190448.P4089819499231427457

`lt[A289034(n+1), A289034(2*A288713(n+1))]`
-/

namespace A190448.P4089819499231427457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (2 * A288713 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190448.P4089819499231427457

namespace A190448

/-- `lt[A289034(n+1), A289034(2*A288713(n+1))]` -/
def P4089819499231427457.Spec : Prop :=
  ∀ n, (P4089819499231427457.a n : ℤ) = A190448 (n + 1)

end A190448

/-!
# A190449: Positions of 3 in A190445.

The programs for A190449, the canonical program `A190449.P920406239164713884` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190449 has offset 1).

The definition of A190449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190449.P920406239164713884

`eq[3, A190445(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190449

/-- `eq[3, A190445(n+1)]+1` -/
def P920406239164713884.Spec : Prop :=
  ∀ n, (P920406239164713884.a n : ℤ) = A190449 (n + 1)

theorem P920406239164713884.correct : P920406239164713884.Spec := by
  intro n
  simp only [A190449, Nat.add_sub_cancel]

end A190449

/-! ## A190449.P5175833240741357158

`eq[1, A001966(2*n)%4]`
-/

namespace A190449.P5175833240741357158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001966 (2 * n)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190449.P5175833240741357158

namespace A190449

/-- `eq[1, A001966(2*n)%4]` -/
def P5175833240741357158.Spec : Prop :=
  ∀ n, (P5175833240741357158.a n : ℤ) = A190449 (n + 1)

end A190449

/-! ## A190449.P7229021720038722774

`eq[3, A001965(2*n)%4]`
-/

namespace A190449.P7229021720038722774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001965 (2 * n)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190449.P7229021720038722774

namespace A190449

/-- `eq[3, A001965(2*n)%4]` -/
def P7229021720038722774.Spec : Prop :=
  ∀ n, (P7229021720038722774.a n : ℤ) = A190449 (n + 1)

end A190449

/-! ## A190449.P8586846865658819270

`eq[1, A010873(A001966(2*n))]`
-/

namespace A190449.P8586846865658819270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A001966 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190449.P8586846865658819270

namespace A190449

/-- `eq[1, A010873(A001966(2*n))]` -/
def P8586846865658819270.Spec : Prop :=
  ∀ n, (P8586846865658819270.a n : ℤ) = A190449 (n + 1)

end A190449

/-! ## A190449.P14340697288250066811

`eq[3, A010873(A001965(2*n))]`
-/

namespace A190449.P14340697288250066811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A001965 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190449.P14340697288250066811

namespace A190449

/-- `eq[3, A010873(A001965(2*n))]` -/
def P14340697288250066811.Spec : Prop :=
  ∀ n, (P14340697288250066811.a n : ℤ) = A190449 (n + 1)

end A190449

/-! ## A190449.P17786583801718259505

`eq[3, A005206(A008574(n))%4]`
-/

namespace A190449.P17786583801718259505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005206 (A008574 n).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190449.P17786583801718259505

namespace A190449

/-- `eq[3, A005206(A008574(n))%4]` -/
def P17786583801718259505.Spec : Prop :=
  ∀ n, (P17786583801718259505.a n : ℤ) = A190449 (n + 1)

end A190449

/-! ## A190449.P6999065113484097522

`eq[0, A110514(A005206(4*n))]`
-/

namespace A190449.P6999065113484097522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A005206 (4 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190449.P6999065113484097522

namespace A190449

/-- `eq[0, A110514(A005206(4*n))]` -/
def P6999065113484097522.Spec : Prop :=
  ∀ n, (P6999065113484097522.a n : ℤ) = A190449 (n + 1)

end A190449

/-! ## A190449.P16648903738665965482

`eq[3, A002251(4*n)%4]`
-/

namespace A190449.P16648903738665965482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002251 (4 * n)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190449.P16648903738665965482

namespace A190449

/-- `eq[3, A002251(4*n)%4]` -/
def P16648903738665965482.Spec : Prop :=
  ∀ n, (P16648903738665965482.a n : ℤ) = A190449 (n + 1)

end A190449

/-! ## A190449.P10476665009444177163

`eq[3, A010873(A005378(4*n))]`
-/

namespace A190449.P10476665009444177163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A005378 (4 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190449.P10476665009444177163

namespace A190449

/-- `eq[3, A010873(A005378(4*n))]` -/
def P10476665009444177163.Spec : Prop :=
  ∀ n, (P10476665009444177163.a n : ℤ) = A190449 (n + 1)

end A190449

/-! ## A190449.P11450690692138987450

`lt[A096270(A288713(2*n+1)), A114986(n)]`
-/

namespace A190449.P11450690692138987450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A288713 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190449.P11450690692138987450

namespace A190449

/-- `lt[A096270(A288713(2*n+1)), A114986(n)]` -/
def P11450690692138987450.Spec : Prop :=
  ∀ n, (P11450690692138987450.a n : ℤ) = A190449 (n + 1)

end A190449

/-! ## A190449.P5047091225052201025

`eq[1, A007814(A184517(2*n+1))]`
-/

namespace A190449.P5047091225052201025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A184517 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190449.P5047091225052201025

namespace A190449

/-- `eq[1, A007814(A184517(2*n+1))]` -/
def P5047091225052201025.Spec : Prop :=
  ∀ n, (P5047091225052201025.a n : ℤ) = A190449 (n + 1)

end A190449

/-! ## A190449.P3643531739297775611

`lt[A188432(n+1), A188432(2*A288713(n+1))]`
-/

namespace A190449.P3643531739297775611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (2 * A288713 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190449.P3643531739297775611

namespace A190449

/-- `lt[A188432(n+1), A188432(2*A288713(n+1))]` -/
def P3643531739297775611.Spec : Prop :=
  ∀ n, (P3643531739297775611.a n : ℤ) = A190449 (n + 1)

end A190449

/-!
# A190450: Positions of 4 in A190445.

The programs for A190450, there is no canonical definition to state claims against.
-/

/-! ## A190450.P18208814982672540803

`floor(ϕ*A190249(n+1))`
-/

namespace A190450.P18208814982672540803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A190249 (n + 1) : ℝ)⌋

end

end A190450.P18208814982672540803

/-! ## A190450.P8936641629132017927

`A190446(n+1)-A190249(n+1)`
-/

namespace A190450.P8936641629132017927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190446 (n + 1) - A190249 (n + 1)

end

end A190450.P8936641629132017927

/-! ## A190450.P9889323954499809440

`A190456(n+1)-A190446(n+1)`
-/

namespace A190450.P9889323954499809440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190456 (n + 1) - A190446 (n + 1)

end

end A190450.P9889323954499809440

/-! ## A190450.P2974133908429669231

`A190458(n+1)%A190446(n+1)`
-/

namespace A190450.P2974133908429669231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190458 (n + 1)) (A190446 (n + 1))

end

end A190450.P2974133908429669231

/-! ## A190450.P6508478505887810797

`2*A190456(n+1)-A190458(n+1)`
-/

namespace A190450.P6508478505887810797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190456 (n + 1) - A190458 (n + 1)

end

end A190450.P6508478505887810797

/-! ## A190450.P9051239494184982351

`∩[A184733(n+1), A004957(n)]`
-/

namespace A190450.P9051239494184982351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190450.P9051239494184982351

/-! ## A190450.P11791409373169074055

`∩[A184733(n+1), A026352(n)]`
-/

namespace A190450.P11791409373169074055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190450.P11791409373169074055

/-! ## A190450.P14151479048601117443

`∩[A003234(n+1), A184733(n+1)]`
-/

namespace A190450.P14151479048601117443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190450.P14151479048601117443

/-! ## A190450.P15109254688243064483

`∩[A003623(n+1), A184733(n+1)]`
-/

namespace A190450.P15109254688243064483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190450.P15109254688243064483

/-! ## A190450.P3656788037984928274

`∩[A140400(n+1), A184733(n+1)]`
-/

namespace A190450.P3656788037984928274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190450.P3656788037984928274

/-! ## A190450.P9787863427692362598

`∩[A184733(n+1), A188018(n+1)]`
-/

namespace A190450.P9787863427692362598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190450.P9787863427692362598

/-! ## A190450.P5185062727931020761

`∩[A184733(n+1), A188032(n+1)]`
-/

namespace A190450.P5185062727931020761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190450.P5185062727931020761

/-! ## A190450.P12859448027123073922

`∩[A184733(n+1), A190158(n+1)]`
-/

namespace A190450.P12859448027123073922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190450.P12859448027123073922

/-! ## A190450.P4028598834443954642

`∩[A184733(n+1), A190251(n+1)]`
-/

namespace A190450.P4028598834443954642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190450.P4028598834443954642

/-! ## A190450.P6250260953359752579

`∩[A190435(n+1), A184733(n+1)]`
-/

namespace A190450.P6250260953359752579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190450.P6250260953359752579

/-! ## A190450.P14255426916473843253

`∩[A184733(n+1), A190463(n+1)]`
-/

namespace A190450.P14255426916473843253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190450.P14255426916473843253

/-! ## A190450.P11045178518748605549

`∩[A184733(n+1), A188028(n+1)]`
-/

namespace A190450.P11045178518748605549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190450.P11045178518748605549

/-! ## A190450.P3821918789683249737

`∩[A184733(n+1), A187952(n+1)]`
-/

namespace A190450.P3821918789683249737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190450.P3821918789683249737

/-! ## A190450.P16501076863194394935

`∩[A184733(n+1), A188259(n+1)]`
-/

namespace A190450.P16501076863194394935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190450.P16501076863194394935

/-! ## A190450.P2336054808563712434

`∩[A181714(n+1), A184733(n+1)]`
-/

namespace A190450.P2336054808563712434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190450.P2336054808563712434

/-!
# A190451: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(golden ratio,4,2) and []=floor.

The programs for A190451, the canonical program `A190451.P3213970450733782130` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190451 has offset 1).

The definition of A190451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190451.P3213970450733782130

`A003622(4*n+6)%(A003622(n+1)+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190451

/-- `A003622(4*n+6)%(A003622(n+1)+2)` -/
def P3213970450733782130.Spec : Prop :=
  ∀ n, P3213970450733782130.a n = A190451 (n + 1)

theorem P3213970450733782130.correct : P3213970450733782130.Spec := by
  intro n
  simp only [A190451, Nat.add_sub_cancel]

end A190451

/-! ## A190451.P5126241490316524859

`A005206(A016813(n+1))-A016813(A005206(n))`
-/

namespace A190451.P5126241490316524859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A016813 (n + 1)).toNat - A016813 (A005206 n).toNat

end

end A190451.P5126241490316524859

namespace A190451

/-- `A005206(A016813(n+1))-A016813(A005206(n))` -/
def P5126241490316524859.Spec : Prop :=
  ∀ n, P5126241490316524859.a n = A190451 (n + 1)

end A190451

/-! ## A190451.P14776233774747423078

`A190445(n+1)-A003849(A008574(n+1))`
-/

namespace A190451.P14776233774747423078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190445 (n + 1) - A003849 (A008574 (n + 1)).toNat

end

end A190451.P14776233774747423078

namespace A190451

/-- `A190445(n+1)-A003849(A008574(n+1))` -/
def P14776233774747423078.Spec : Prop :=
  ∀ n, P14776233774747423078.a n = A190451 (n + 1)

end A190451

/-! ## A190451.P14653240008790982211

`A190445(n+1)-A003849(A008586(n+1))`
-/

namespace A190451.P14653240008790982211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190445 (n + 1) - A003849 (A008586 (n + 1)).toNat

end

end A190451.P14653240008790982211

namespace A190451

/-- `A190445(n+1)-A003849(A008586(n+1))` -/
def P14653240008790982211.Spec : Prop :=
  ∀ n, P14653240008790982211.a n = A190451 (n + 1)

end A190451

/-! ## A190451.P16044274621895746408

`A190457(n+1)-A005614(A016813(n+1))`
-/

namespace A190451.P16044274621895746408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (n + 1) - A005614 (A016813 (n + 1)).toNat

end

end A190451.P16044274621895746408

namespace A190451

/-- `A190457(n+1)-A005614(A016813(n+1))` -/
def P16044274621895746408.Spec : Prop :=
  ∀ n, P16044274621895746408.a n = A190451 (n + 1)

end A190451

/-! ## A190451.P11564883377814116952

`(A001950(4*n+6)+A001950(n+1))%5`
-/

namespace A190451.P11564883377814116952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001950 (4 * n + 6) + A001950 (n + 1)) 5

end

end A190451.P11564883377814116952

namespace A190451

/-- `(A001950(4*n+6)+A001950(n+1))%5` -/
def P11564883377814116952.Spec : Prop :=
  ∀ n, P11564883377814116952.a n = A190451 (n + 1)

end A190451

/-! ## A190451.P1679207541308685563

`A007066(A004767(n+1))-A004767(A004957(n+1))`
-/

namespace A190451.P1679207541308685563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (A004767 (n + 1)).toNat - A004767 (A004957 (n + 1)).toNat

end

end A190451.P1679207541308685563

namespace A190451

/-- `A007066(A004767(n+1))-A004767(A004957(n+1))` -/
def P1679207541308685563.Spec : Prop :=
  ∀ n, P1679207541308685563.a n = A190451 (n + 1)

end A190451

/-!
# A190452: E.g.f. exp(x+x^2/2+x^4/24).

The programs for A190452, there is no canonical definition to state claims against.
-/

/-! ## A190452.P11017813773092110768

`A275422(A052905(n+2))`
-/

namespace A190452.P11017813773092110768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A052905 (n + 2)).toNat

end

end A190452.P11017813773092110768

/-! ## A190452.P2238289372992732699

`A275422(A056115(n)+10)`
-/

namespace A190452.P2238289372992732699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A056115 n + 10).toNat

end

end A190452.P2238289372992732699

/-! ## A190452.P3384208571222280350

`A275422(eq[4, A025581(n)])`
-/

namespace A190452.P3384208571222280350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190452.P3384208571222280350

/-! ## A190452.P3004637006629632747

`A275422(Δ[A055831(n+4)])`
-/

namespace A190452.P3004637006629632747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (f1 (n + 1) - f1 n).toNat

end

end A190452.P3004637006629632747

/-! ## A190452.P2580898571650634784

`A275422(A055999(n+2)+1)`
-/

namespace A190452.P2580898571650634784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A055999 (n + 2) + 1).toNat

end

end A190452.P2580898571650634784

/-! ## A190452.P16370926614046264286

`A275422(A046691(n+3)-1)`
-/

namespace A190452.P16370926614046264286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A046691 (n + 3) - 1).toNat

end

end A190452.P16370926614046264286

/-! ## A190452.P16644914085441668654

`A275422(A056000(n+1)+5)`
-/

namespace A190452.P16644914085441668654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A056000 (n + 1) + 5).toNat

end

end A190452.P16644914085441668654

/-! ## A190452.P9388594224430432206

`A275422(A000096(n+4)-4)`
-/

namespace A190452.P9388594224430432206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A000096 (n + 4) - 4).toNat

end

end A190452.P9388594224430432206

/-! ## A190452.P17283505644938614177

`A275422(A323294(n+6)-5)`
-/

namespace A190452.P17283505644938614177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A323294 (n + 6) - 5).toNat

end

end A190452.P17283505644938614177

/-! ## A190452.P16470497347025403748

`A275422(Δ[A023545(n+1)]-1)`
-/

namespace A190452.P16470497347025403748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (f1 (n + 1) - f1 n - 1).toNat

end

end A190452.P16470497347025403748

/-!
# A190453: Positions of 1 in A190451.

The programs for A190453, the canonical program `A190453.P12819835385222772038` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190453 has offset 1).

The definition of A190453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190453.P12819835385222772038

`eq[1, A190451(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A190453

/-- `eq[1, A190451(n+1)]+1` -/
def P12819835385222772038.Spec : Prop :=
  ∀ n, (P12819835385222772038.a n : ℤ) = A190453 (n + 1)

theorem P12819835385222772038.correct : P12819835385222772038.Spec := by
  intro n
  simp only [A190453, Nat.add_sub_cancel]

end A190453

/-! ## A190453.P8557587032053586751

`eq[A078588(n), A191329(A016825(n))]`
-/

namespace A190453.P8557587032053586751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191329 (A016825 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190453.P8557587032053586751

namespace A190453

/-- `eq[A078588(n), A191329(A016825(n))]` -/
def P8557587032053586751.Spec : Prop :=
  ∀ n, (P8557587032053586751.a n : ℤ) = A190453 (n + 1)

end A190453

/-! ## A190453.P17666353365985466994

`eq[A189661(n+1), A191329(A016825(n))]`
-/

namespace A190453.P17666353365985466994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191329 (A016825 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190453.P17666353365985466994

namespace A190453

/-- `eq[A189661(n+1), A191329(A016825(n))]` -/
def P17666353365985466994.Spec : Prop :=
  ∀ n, (P17666353365985466994.a n : ℤ) = A190453 (n + 1)

end A190453

/-! ## A190453.P8884768212293492621

`eq[A191329(A016825(n)), A289034(n+1)]`
-/

namespace A190453.P8884768212293492621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191329 (A016825 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190453.P8884768212293492621

namespace A190453

/-- `eq[A191329(A016825(n)), A289034(n+1)]` -/
def P8884768212293492621.Spec : Prop :=
  ∀ n, (P8884768212293492621.a n : ℤ) = A190453 (n + 1)

end A190453

/-! ## A190453.P10209408776611940888

`lt[A190236(2*n+3), A089809(n+1)]+1`
-/

namespace A190453.P10209408776611940888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190236 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A190453.P10209408776611940888

namespace A190453

/-- `lt[A190236(2*n+3), A089809(n+1)]+1` -/
def P10209408776611940888.Spec : Prop :=
  ∀ n, (P10209408776611940888.a n : ℤ) = A190453 (n + 1)

end A190453

/-! ## A190453.P17560351071694232866

`lt[A078588(2*n+1), char[n*A096270(n)+1]]`
-/

namespace A190453.P17560351071694232866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A096270 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A190453.P17560351071694232866

namespace A190453

/-- `lt[A078588(2*n+1), char[n*A096270(n)+1]]` -/
def P17560351071694232866.Spec : Prop :=
  ∀ n, (P17560351071694232866.a n : ℤ) = A190453 (n + 1)

end A190453

/-! ## A190453.P2667599748928960315

`eq[2*A078588(A005408(n)), A078588(n)]`
-/

namespace A190453.P2667599748928960315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078588 (A005408 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190453.P2667599748928960315

namespace A190453

/-- `eq[2*A078588(A005408(n)), A078588(n)]` -/
def P2667599748928960315.Spec : Prop :=
  ∀ n, (P2667599748928960315.a n : ℤ) = A190453 (n + 1)

end A190453

/-! ## A190453.P14360126583876743315

`eq[2, A001511(A001961(2*n+1))]`
-/

namespace A190453.P14360126583876743315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001961 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190453.P14360126583876743315

namespace A190453

/-- `eq[2, A001511(A001961(2*n+1))]` -/
def P14360126583876743315.Spec : Prop :=
  ∀ n, (P14360126583876743315.a n : ℤ) = A190453 (n + 1)

end A190453

/-! ## A190453.P15780148879788440758

`eq[2, A001511(A005206(4*n+1))]`
-/

namespace A190453.P15780148879788440758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A005206 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190453.P15780148879788440758

namespace A190453

/-- `eq[2, A001511(A005206(4*n+1))]` -/
def P15780148879788440758.Spec : Prop :=
  ∀ n, (P15780148879788440758.a n : ℤ) = A190453 (n + 1)

end A190453

/-! ## A190453.P9346907316811712555

`eq[A089808(2*n+1)², A190248(n+2)]`
-/

namespace A190453.P9346907316811712555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089808 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190248 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190453.P9346907316811712555

namespace A190453

/-- `eq[A089808(2*n+1)², A190248(n+2)]` -/
def P9346907316811712555.Spec : Prop :=
  ∀ n, (P9346907316811712555.a n : ℤ) = A190453 (n + 1)

end A190453

/-! ## A190453.P356356343595463832

`eq[A003849(n+2), A089808(A005408(n))]`
-/

namespace A190453.P356356343595463832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089808 (A005408 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190453.P356356343595463832

namespace A190453

/-- `eq[A003849(n+2), A089808(A005408(n))]` -/
def P356356343595463832.Spec : Prop :=
  ∀ n, (P356356343595463832.a n : ℤ) = A190453 (n + 1)

end A190453

/-! ## A190453.P481156055416252280

`eq[0, A190427(A288709(n+1))]`
-/

namespace A190453.P481156055416252280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190427 (A288709 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190453.P481156055416252280

namespace A190453

/-- `eq[0, A190427(A288709(n+1))]` -/
def P481156055416252280.Spec : Prop :=
  ∀ n, (P481156055416252280.a n : ℤ) = A190453 (n + 1)

end A190453

/-! ## A190453.P12803816499669490180

`eq[0, A190427(A288713(n+1))]`
-/

namespace A190453.P12803816499669490180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190427 (A288713 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190453.P12803816499669490180

namespace A190453

/-- `eq[0, A190427(A288713(n+1))]` -/
def P12803816499669490180.Spec : Prop :=
  ∀ n, (P12803816499669490180.a n : ℤ) = A190453 (n + 1)

end A190453

/-! ## A190453.P15467612337505113362

`eq[1, val(A001966(A001966(n)), 2)]`
-/

namespace A190453.P15467612337505113362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001966 (A001966 n).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190453.P15467612337505113362

namespace A190453

/-- `eq[1, val(A001966(A001966(n)), 2)]` -/
def P15467612337505113362.Spec : Prop :=
  ∀ n, (P15467612337505113362.a n : ℤ) = A190453 (n + 1)

end A190453

/-! ## A190453.P11741958334413776599

`lt[A035337(n), A329130(A288713(n+1))]`
-/

namespace A190453.P11741958334413776599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 (A288713 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190453.P11741958334413776599

namespace A190453

/-- `lt[A035337(n), A329130(A288713(n+1))]` -/
def P11741958334413776599.Spec : Prop :=
  ∀ n, (P11741958334413776599.a n : ℤ) = A190453 (n + 1)

end A190453

/-! ## A190453.P15588054000656664838

`eq[2, A001511(A001962(2*n+1))]`
-/

namespace A190453.P15588054000656664838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001962 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190453.P15588054000656664838

namespace A190453

/-- `eq[2, A001511(A001962(2*n+1))]` -/
def P15588054000656664838.Spec : Prop :=
  ∀ n, (P15588054000656664838.a n : ℤ) = A190453 (n + 1)

end A190453

/-!
# A190454: Positions of 2 in A190451.

The programs for A190454, the canonical program `A190454.P17304671988381641284` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190454 has offset 1).

The definition of A190454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190454.P17304671988381641284

`eq[2, A190451(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A190454

/-- `eq[2, A190451(n+1)]+1` -/
def P17304671988381641284.Spec : Prop :=
  ∀ n, (P17304671988381641284.a n : ℤ) = A190454 (n + 1)

theorem P17304671988381641284.correct : P17304671988381641284.Spec := by
  intro n
  simp only [A190454, Nat.add_sub_cancel]

end A190454

/-! ## A190454.P2970411666058437831

`lt[A005614(n), A078588(Δ[n²])]`
-/

namespace A190454.P2970411666058437831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190454.P2970411666058437831

namespace A190454

/-- `lt[A005614(n), A078588(Δ[n²])]` -/
def P2970411666058437831.Spec : Prop :=
  ∀ n, (P2970411666058437831.a n : ℤ) = A190454 (n + 1)

end A190454

/-! ## A190454.P15691293190749574311

`eq[A003849(n), A024569(2*n+1)]`
-/

namespace A190454.P15691293190749574311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024569 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190454.P15691293190749574311

namespace A190454

/-- `eq[A003849(n), A024569(2*n+1)]` -/
def P15691293190749574311.Spec : Prop :=
  ∀ n, (P15691293190749574311.a n : ℤ) = A190454 (n + 1)

end A190454

/-! ## A190454.P8433218636266066850

`eq[A014675(n), A078588(2*n+1)]`
-/

namespace A190454.P8433218636266066850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190454.P8433218636266066850

namespace A190454

/-- `eq[A014675(n), A078588(2*n+1)]` -/
def P8433218636266066850.Spec : Prop :=
  ∀ n, (P8433218636266066850.a n : ℤ) = A190454 (n + 1)

end A190454

/-! ## A190454.P9264450080878118003

`lt[A089809(Δ[n²]), A089809(n+1)]`
-/

namespace A190454.P9264450080878118003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A190454.P9264450080878118003

namespace A190454

/-- `lt[A089809(Δ[n²]), A089809(n+1)]` -/
def P9264450080878118003.Spec : Prop :=
  ∀ n, (P9264450080878118003.a n : ℤ) = A190454 (n + 1)

end A190454

/-! ## A190454.P11927595645870363648

`eq[A078588(2*n+1), A089808(n+1)]`
-/

namespace A190454.P11927595645870363648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089808 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190454.P11927595645870363648

namespace A190454

/-- `eq[A078588(2*n+1), A089808(n+1)]` -/
def P11927595645870363648.Spec : Prop :=
  ∀ n, (P11927595645870363648.a n : ℤ) = A190454 (n + 1)

end A190454

/-! ## A190454.P9766846811737313902

`eq[A024569(2*n+1), A024569(n+2)]`
-/

namespace A190454.P9766846811737313902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024569 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024569 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190454.P9766846811737313902

namespace A190454

/-- `eq[A024569(2*n+1), A024569(n+2)]` -/
def P9766846811737313902.Spec : Prop :=
  ∀ n, (P9766846811737313902.a n : ℤ) = A190454 (n + 1)

end A190454

/-! ## A190454.P13840193888195504281

`lt[A078588(n+1), A078588(2*n+1)]`
-/

namespace A190454.P13840193888195504281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190454.P13840193888195504281

namespace A190454

/-- `lt[A078588(n+1), A078588(2*n+1)]` -/
def P13840193888195504281.Spec : Prop :=
  ∀ n, (P13840193888195504281.a n : ℤ) = A190454 (n + 1)

end A190454

/-! ## A190454.P4538828647350376711

`lt[A089809(2*n+1), A188432(n+2)]`
-/

namespace A190454.P4538828647350376711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190454.P4538828647350376711

namespace A190454

/-- `lt[A089809(2*n+1), A188432(n+2)]` -/
def P4538828647350376711.Spec : Prop :=
  ∀ n, (P4538828647350376711.a n : ℤ) = A190454 (n + 1)

end A190454

/-! ## A190454.P10857774277386273662

`lt[A089809(n+2), A190236(2*n+1)]`
-/

namespace A190454.P10857774277386273662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190236 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190454.P10857774277386273662

namespace A190454

/-- `lt[A089809(n+2), A190236(2*n+1)]` -/
def P10857774277386273662.Spec : Prop :=
  ∀ n, (P10857774277386273662.a n : ℤ) = A190454 (n + 1)

end A190454

/-! ## A190454.P8971716831631130257

`eq[A300763(2*n+1)%2, A014675(n)]`
-/

namespace A190454.P8971716831631130257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300763 (2 * n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190454.P8971716831631130257

namespace A190454

/-- `eq[A300763(2*n+1)%2, A014675(n)]` -/
def P8971716831631130257.Spec : Prop :=
  ∀ n, (P8971716831631130257.a n : ℤ) = A190454 (n + 1)

end A190454

/-! ## A190454.P7625006426700563661

`lt[A089809(2*n+1)+A089809(n+2), 1]`
-/

namespace A190454.P7625006426700563661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (2 * n + 1) + A089809 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A190454.P7625006426700563661

namespace A190454

/-- `lt[A089809(2*n+1)+A089809(n+2), 1]` -/
def P7625006426700563661.Spec : Prop :=
  ∀ n, (P7625006426700563661.a n : ℤ) = A190454 (n + 1)

end A190454

/-! ## A190454.P5359743532215703768

`eq[2*A089809(2*n+1), A188014(n+2)]`
-/

namespace A190454.P5359743532215703768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089809 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190454.P5359743532215703768

namespace A190454

/-- `eq[2*A089809(2*n+1), A188014(n+2)]` -/
def P5359743532215703768.Spec : Prop :=
  ∀ n, (P5359743532215703768.a n : ℤ) = A190454 (n + 1)

end A190454

/-! ## A190454.P5132786134742079163

`lt[A024569(2*n+1)*A024569(n+2), A000034(2*n+1)]`
-/

namespace A190454.P5132786134742079163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024569 (2 * n + 1) * A024569 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190454.P5132786134742079163

namespace A190454

/-- `lt[A024569(2*n+1)*A024569(n+2), A000034(2*n+1)]` -/
def P5132786134742079163.Spec : Prop :=
  ∀ n, (P5132786134742079163.a n : ℤ) = A190454 (n + 1)

end A190454

/-! ## A190454.P1769726197932197298

`lt[A083368(n+2)², A083368(A007067(2*n+1))]`
-/

namespace A190454.P1769726197932197298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083368 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083368 (A007067 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190454.P1769726197932197298

namespace A190454

/-- `lt[A083368(n+2)², A083368(A007067(2*n+1))]` -/
def P1769726197932197298.Spec : Prop :=
  ∀ n, (P1769726197932197298.a n : ℤ) = A190454 (n + 1)

end A190454

/-! ## A190454.P4005879750080788197

`eq[A014675(n), A085002(A016825(n))]`
-/

namespace A190454.P4005879750080788197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (A016825 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190454.P4005879750080788197

namespace A190454

/-- `eq[A014675(n), A085002(A016825(n))]` -/
def P4005879750080788197.Spec : Prop :=
  ∀ n, (P4005879750080788197.a n : ℤ) = A190454 (n + 1)

end A190454

/-! ## A190454.P10275073505861678432

`eq[A014675(n), A190427(A001966(n))]`
-/

namespace A190454.P10275073505861678432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190427 (A001966 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190454.P10275073505861678432

namespace A190454

/-- `eq[A014675(n), A190427(A001966(n))]` -/
def P10275073505861678432.Spec : Prop :=
  ∀ n, (P10275073505861678432.a n : ℤ) = A190454 (n + 1)

end A190454

/-! ## A190454.P17394470325247133618

`lt[A005614(n), A189661(A288713(2*(n+1)))]`
-/

namespace A190454.P17394470325247133618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A288713 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190454.P17394470325247133618

namespace A190454

/-- `lt[A005614(n), A189661(A288713(2*(n+1)))]` -/
def P17394470325247133618.Spec : Prop :=
  ∀ n, (P17394470325247133618.a n : ℤ) = A190454 (n + 1)

end A190454

/-! ## A190454.P12565080912835259455

`lt[A096270(n+1), A189661(A288713(2*(n+1)))]`
-/

namespace A190454.P12565080912835259455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A288713 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190454.P12565080912835259455

namespace A190454

/-- `lt[A096270(n+1), A189661(A288713(2*(n+1)))]` -/
def P12565080912835259455.Spec : Prop :=
  ∀ n, (P12565080912835259455.a n : ℤ) = A190454 (n + 1)

end A190454

/-! ## A190454.P7553646352325831692

`lt[A114986(n+1), A289034(A288713(2*(n+1)))]`
-/

namespace A190454.P7553646352325831692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (A288713 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190454.P7553646352325831692

namespace A190454

/-- `lt[A114986(n+1), A289034(A288713(2*(n+1)))]` -/
def P7553646352325831692.Spec : Prop :=
  ∀ n, (P7553646352325831692.a n : ℤ) = A190454 (n + 1)

end A190454

/-!
# A190455: Positions of 3 in A190451.

The programs for A190455, the canonical program `A190455.P12633995412954827223` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190455 has offset 1).

The definition of A190455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190455.P12633995412954827223

`eq[1, A191329(A016825(n))+A078588(n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A190455

/-- `eq[1, A191329(A016825(n))+A078588(n)]` -/
def P12633995412954827223.Spec : Prop :=
  ∀ n, (P12633995412954827223.a n : ℤ) = A190455 (n + 1)

theorem P12633995412954827223.correct : P12633995412954827223.Spec := by
  intro n
  simp only [A190455, Nat.add_sub_cancel]

end A190455

/-! ## A190455.P2014120094247396312

`lt[1, val(A001962(2*n+1), 2)]`
-/

namespace A190455.P2014120094247396312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001962 (2 * n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190455.P2014120094247396312

namespace A190455

/-- `lt[1, val(A001962(2*n+1), 2)]` -/
def P2014120094247396312.Spec : Prop :=
  ∀ n, (P2014120094247396312.a n : ℤ) = A190455 (n + 1)

end A190455

/-! ## A190455.P7315355738949132410

`eq[A089809(2*n+1), A261095(n)]`
-/

namespace A190455.P7315355738949132410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261095 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190455.P7315355738949132410

namespace A190455

/-- `eq[A089809(2*n+1), A261095(n)]` -/
def P7315355738949132410.Spec : Prop :=
  ∀ n, (P7315355738949132410.a n : ℤ) = A190455 (n + 1)

end A190455

/-! ## A190455.P12041559407376609888

`lt[A000265(A001961(2*n+1)), n]`
-/

namespace A190455.P12041559407376609888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001961 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A190455.P12041559407376609888

namespace A190455

/-- `lt[A000265(A001961(2*n+1)), n]` -/
def P12041559407376609888.Spec : Prop :=
  ∀ n, (P12041559407376609888.a n : ℤ) = A190455 (n + 1)

end A190455

/-! ## A190455.P2364440314844400397

`lt[A078588(2*n+1), A078588(n)]`
-/

namespace A190455.P2364440314844400397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190455.P2364440314844400397

namespace A190455

/-- `lt[A078588(2*n+1), A078588(n)]` -/
def P2364440314844400397.Spec : Prop :=
  ∀ n, (P2364440314844400397.a n : ℤ) = A190455 (n + 1)

end A190455

/-! ## A190455.P8571145164560121621

`eq[A014675(n+2)*A300763(n), A300763(2*n+1)]`
-/

namespace A190455.P8571145164560121621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (n + 2) * A300763 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190455.P8571145164560121621

namespace A190455

/-- `eq[A014675(n+2)*A300763(n), A300763(2*n+1)]` -/
def P8571145164560121621.Spec : Prop :=
  ∀ n, (P8571145164560121621.a n : ℤ) = A190455 (n + 1)

end A190455

/-! ## A190455.P18280507113533855807

`eq[1, A056594(A005206(4*n+1))]`
-/

namespace A190455.P18280507113533855807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005206 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190455.P18280507113533855807

namespace A190455

/-- `eq[1, A056594(A005206(4*n+1))]` -/
def P18280507113533855807.Spec : Prop :=
  ∀ n, (P18280507113533855807.a n : ℤ) = A190455 (n + 1)

end A190455

/-! ## A190455.P6163124796850743548

`lt[A060819(A001961(2*n+1)), A028310(n)]`
-/

namespace A190455.P6163124796850743548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A001961 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190455.P6163124796850743548

namespace A190455

/-- `lt[A060819(A001961(2*n+1)), A028310(n)]` -/
def P6163124796850743548.Spec : Prop :=
  ∀ n, (P6163124796850743548.a n : ℤ) = A190455 (n + 1)

end A190455

/-! ## A190455.P9089652304031730790

`lt[A060819(A001961(2*n+1)), A127366(n)]`
-/

namespace A190455.P9089652304031730790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A001961 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127366 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190455.P9089652304031730790

namespace A190455

/-- `lt[A060819(A001961(2*n+1)), A127366(n)]` -/
def P9089652304031730790.Spec : Prop :=
  ∀ n, (P9089652304031730790.a n : ℤ) = A190455 (n + 1)

end A190455

/-! ## A190455.P9142196068286103673

`lt[A060819(A001961(2*n+1)), A000027(n+1)]`
-/

namespace A190455.P9142196068286103673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A001961 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190455.P9142196068286103673

namespace A190455

/-- `lt[A060819(A001961(2*n+1)), A000027(n+1)]` -/
def P9142196068286103673.Spec : Prop :=
  ∀ n, (P9142196068286103673.a n : ℤ) = A190455 (n + 1)

end A190455

/-! ## A190455.P2276935176506619893

`lt[A060819(A001961(2*n+1)), A156253(n+1)]`
-/

namespace A190455.P2276935176506619893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A001961 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190455.P2276935176506619893

namespace A190455

/-- `lt[A060819(A001961(2*n+1)), A156253(n+1)]` -/
def P2276935176506619893.Spec : Prop :=
  ∀ n, (P2276935176506619893.a n : ℤ) = A190455 (n + 1)

end A190455

/-! ## A190455.P7970907618768453407

`lt[A060819(A001961(2*n+1)), A156351(n+2)]`
-/

namespace A190455.P7970907618768453407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A001961 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190455.P7970907618768453407

namespace A190455

/-- `lt[A060819(A001961(2*n+1)), A156351(n+2)]` -/
def P7970907618768453407.Spec : Prop :=
  ∀ n, (P7970907618768453407.a n : ℤ) = A190455 (n + 1)

end A190455

/-! ## A190455.P4636310889713120424

`eq[2, A190427(A075317(n+1))]`
-/

namespace A190455.P4636310889713120424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190427 (A075317 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190455.P4636310889713120424

namespace A190455

/-- `eq[2, A190427(A075317(n+1))]` -/
def P4636310889713120424.Spec : Prop :=
  ∀ n, (P4636310889713120424.a n : ℤ) = A190455 (n + 1)

end A190455

/-! ## A190455.P9234606274003675855

`eq[A078588(n), A089808(2*n+1)]`
-/

namespace A190455.P9234606274003675855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089808 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190455.P9234606274003675855

namespace A190455

/-- `eq[A078588(n), A089808(2*n+1)]` -/
def P9234606274003675855.Spec : Prop :=
  ∀ n, (P9234606274003675855.a n : ℤ) = A190455 (n + 1)

end A190455

/-! ## A190455.P4309472354678083267

`eq[A089808(A005408(n)), A190248(n+1)]`
-/

namespace A190455.P4309472354678083267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089808 (A005408 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190455.P4309472354678083267

namespace A190455

/-- `eq[A089808(A005408(n)), A190248(n+1)]` -/
def P4309472354678083267.Spec : Prop :=
  ∀ n, (P4309472354678083267.a n : ℤ) = A190455 (n + 1)

end A190455

/-! ## A190455.P5756524725033398451

`eq[1, A121262(A001966(A001966(n)))]`
-/

namespace A190455.P5756524725033398451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A001966 (A001966 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190455.P5756524725033398451

namespace A190455

/-- `eq[1, A121262(A001966(A001966(n)))]` -/
def P5756524725033398451.Spec : Prop :=
  ∀ n, (P5756524725033398451.a n : ℤ) = A190455 (n + 1)

end A190455

/-! ## A190455.P5619916352316272127

`lt[A035337(n), A329130(A288713(n+1)+1)]`
-/

namespace A190455.P5619916352316272127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 (A288713 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190455.P5619916352316272127

namespace A190455

/-- `lt[A035337(n), A329130(A288713(n+1)+1)]` -/
def P5619916352316272127.Spec : Prop :=
  ∀ n, (P5619916352316272127.a n : ℤ) = A190455 (n + 1)

end A190455

/-! ## A190455.P16963982654532292017

`eq[2, A001511(A276854(2*n+1))]`
-/

namespace A190455.P16963982654532292017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A276854 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190455.P16963982654532292017

namespace A190455

/-- `eq[2, A001511(A276854(2*n+1))]` -/
def P16963982654532292017.Spec : Prop :=
  ∀ n, (P16963982654532292017.a n : ℤ) = A190455 (n + 1)

end A190455

/-! ## A190455.P12205742790912457038

`eq[1, A007814(A000201(A016825(n)))]`
-/

namespace A190455.P12205742790912457038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000201 (A016825 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190455.P12205742790912457038

namespace A190455

/-- `eq[1, A007814(A000201(A016825(n)))]` -/
def P12205742790912457038.Spec : Prop :=
  ∀ n, (P12205742790912457038.a n : ℤ) = A190455 (n + 1)

end A190455

/-! ## A190455.P6978416134513923135

`lt[A189661(A288713(2*(n+1))), A189661(n+1)]`
-/

namespace A190455.P6978416134513923135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A288713 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190455.P6978416134513923135

namespace A190455

/-- `lt[A189661(A288713(2*(n+1))), A189661(n+1)]` -/
def P6978416134513923135.Spec : Prop :=
  ∀ n, (P6978416134513923135.a n : ℤ) = A190455 (n + 1)

end A190455

/-!
# A190456: Positions of 4 in A190451.

The programs for A190456, there is no canonical definition to state claims against.
-/

/-! ## A190456.P4157265414652212798

`floor(ϕ*A190446(n+1))`
-/

namespace A190456.P4157265414652212798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A190446 (n + 1) : ℝ)⌋

end

end A190456.P4157265414652212798

/-! ## A190456.P14568989666979219646

`ceil(ϕ²*A190450(n+1))`
-/

namespace A190456.P14568989666979219646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ 2 * (A190450 (n + 1) : ℝ)⌉

end

end A190456.P14568989666979219646

/-! ## A190456.P3011402711953970468

`A190450(n+1)+A190446(n+1)`
-/

namespace A190456.P3011402711953970468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190450 (n + 1) + A190446 (n + 1)

end

end A190456.P3011402711953970468

/-! ## A190456.P2540418218747353

`A190458(n+1)-A190446(n+1)`
-/

namespace A190456.P2540418218747353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190458 (n + 1) - A190446 (n + 1)

end

end A190456.P2540418218747353

/-! ## A190456.P8227469658611895861

`A190249(n+1)+2*A190450(n+1)`
-/

namespace A190456.P8227469658611895861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190249 (n + 1) + 2 * A190450 (n + 1)

end

end A190456.P8227469658611895861

/-! ## A190456.P2462305749790390122

`2*A190446(n+1)-A190249(n+1)`
-/

namespace A190456.P2462305749790390122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190446 (n + 1) - A190249 (n + 1)

end

end A190456.P2462305749790390122

/-! ## A190456.P14095759108696447680

`A003623(A190249(n+1))`
-/

namespace A190456.P14095759108696447680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (A190249 (n + 1)).toNat

end

end A190456.P14095759108696447680

/-! ## A190456.P14482595063707937864

`∩[A003249(n+1), A004938(n)]`
-/

namespace A190456.P14482595063707937864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190456.P14482595063707937864

/-! ## A190456.P13255565533694548287

`∩[A003623(n+1), A004938(n)]`
-/

namespace A190456.P13255565533694548287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190456.P13255565533694548287

/-! ## A190456.P7466551770802494226

`∩[A188012(n+1), A004938(n)]`
-/

namespace A190456.P7466551770802494226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190456.P7466551770802494226

/-! ## A190456.P12434878168496384410

`∩[A188032(n+1), A004938(n)]`
-/

namespace A190456.P12434878168496384410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190456.P12434878168496384410

/-! ## A190456.P2778405900081646332

`∩[A188438(n+1), A004938(n)]`
-/

namespace A190456.P2778405900081646332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190456.P2778405900081646332

/-! ## A190456.P14600426166438878275

`∩[A190435(n+1), A004938(n)]`
-/

namespace A190456.P14600426166438878275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190456.P14600426166438878275

/-! ## A190456.P11094129783699501887

`∩[A190450(n+1), A004938(n)]`
-/

namespace A190456.P11094129783699501887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190456.P11094129783699501887

/-! ## A190456.P2480581907470767688

`∩[A190463(n+1), A004938(n)]`
-/

namespace A190456.P2480581907470767688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190456.P2480581907470767688

/-! ## A190456.P18021744027353584107

`∩[A302253(n+1), A004938(n)]`
-/

namespace A190456.P18021744027353584107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190456.P18021744027353584107

/-! ## A190456.P6299995892366522517

`∩[A387351(n+1), A004938(n)]`
-/

namespace A190456.P6299995892366522517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190456.P6299995892366522517

/-! ## A190456.P9274956218883822840

`∩[A190251(n+1), A004938(n)]`
-/

namespace A190456.P9274956218883822840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190456.P9274956218883822840

/-! ## A190456.P14707402734965562150

`∩[A003234(n+1), A004938(n)]`
-/

namespace A190456.P14707402734965562150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190456.P14707402734965562150

/-! ## A190456.P9821215769053421901

`filter[A004938(n), A327174(#)]`
-/

namespace A190456.P9821215769053421901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327174 (f1 j).toNat = 1) n)

end

end A190456.P9821215769053421901

/-!
# A190457: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(golden ratio,4,3) and []=floor.

The programs for A190457, the canonical program `A190457.P15557048138221621682` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190457 has offset 1).

The definition of A190457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2736 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190457.P15557048138221621682

`A190451(n+1)+A005614(A016813(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A190457

/-- `A190451(n+1)+A005614(A016813(n+1))` -/
def P15557048138221621682.Spec : Prop :=
  ∀ n, P15557048138221621682.a n = A190457 (n + 1)

theorem P15557048138221621682.correct : P15557048138221621682.Spec := by
  intro n
  simp only [A190457, Nat.add_sub_cancel]

end A190457

/-! ## A190457.P16377826505410652617

`A190445(n+1)+A188009(A004767(n+1))`
-/

namespace A190457.P16377826505410652617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190445 (n + 1) + A188009 (A004767 (n + 1)).toNat

end

end A190457.P16377826505410652617

namespace A190457

/-- `A190445(n+1)+A188009(A004767(n+1))` -/
def P16377826505410652617.Spec : Prop :=
  ∀ n, P16377826505410652617.a n = A190457 (n + 1)

end A190457

/-! ## A190457.P7967240430175069449

`A004957(A004767(n+1))%A007066(n+2)`
-/

namespace A190457.P7967240430175069449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004957 (A004767 (n + 1)).toNat) (A007066 (n + 2))

end

end A190457.P7967240430175069449

namespace A190457

/-- `A004957(A004767(n+1))%A007066(n+2)` -/
def P7967240430175069449.Spec : Prop :=
  ∀ n, P7967240430175069449.a n = A190457 (n + 1)

end A190457

/-! ## A190457.P6052654110937256019

`A188009(A004767(n+1))+A190427(2*(n+1))+2*A078588(n+1)`
-/

namespace A190457.P6052654110937256019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188009 (A004767 (n + 1)).toNat + (A190427 (2 * (n + 1)) + 2 * A078588 (n + 1))

end

end A190457.P6052654110937256019

namespace A190457

/-- `A188009(A004767(n+1))+A190427(2*(n+1))+2*A078588(n+1)` -/
def P6052654110937256019.Spec : Prop :=
  ∀ n, P6052654110937256019.a n = A190457 (n + 1)

end A190457

/-! ## A190457.P11178837825410354613

`A188009(A004767(n+1))+A005614(4*n+3)+A000201(4*(n+1))%4`
-/

namespace A190457.P11178837825410354613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188009 (A004767 (n + 1)).toNat + (A005614 (4 * n + 3) + Int.tmod (A000201 (4 * (n + 1))) 4)

end

end A190457.P11178837825410354613

namespace A190457

/-- `A188009(A004767(n+1))+A005614(4*n+3)+A000201(4*(n+1))%4` -/
def P11178837825410354613.Spec : Prop :=
  ∀ n, P11178837825410354613.a n = A190457 (n + 1)

end A190457

/-!
# A190458: Positions of 0 in A190457.

The programs for A190458, there is no canonical definition to state claims against.
-/

/-! ## A190458.P16937898876389697654

`ceil(ϕ*A190456(n+1))`
-/

namespace A190458.P16937898876389697654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A190456 (n + 1) : ℝ)⌉

end

end A190458.P16937898876389697654

/-! ## A190458.P10368782002522882392

`A190456(n+1)+A190446(n+1)`
-/

namespace A190458.P10368782002522882392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190456 (n + 1) + A190446 (n + 1)

end

end A190458.P10368782002522882392

/-! ## A190458.P13602845789197783604

`A190450(n+1)+2*A190446(n+1)`
-/

namespace A190458.P13602845789197783604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190450 (n + 1) + 2 * A190446 (n + 1)

end

end A190458.P13602845789197783604

/-! ## A190458.P4796484509867278137

`2*A190456(n+1)-A190450(n+1)`
-/

namespace A190458.P4796484509867278137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190456 (n + 1) - A190450 (n + 1)

end

end A190458.P4796484509867278137

/-! ## A190458.P6660220018287656399

`A004919(A190249(n+1))`
-/

namespace A190458.P6660220018287656399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004919 (A190249 (n + 1)).toNat

end

end A190458.P6660220018287656399

/-! ## A190458.P173246708262996739

`A004938(A190450(n+1))`
-/

namespace A190458.P173246708262996739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 (A190450 (n + 1)).toNat

end

end A190458.P173246708262996739

/-! ## A190458.P15665971615540980492

`A003623(∩[A003623(n+1), A184733(n+1)])+2`
-/

namespace A190458.P15665971615540980492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 2

end

end A190458.P15665971615540980492

/-! ## A190458.P929944096086164106

`A187949(2*∩[A187949(n+1), A295085(n)])`
-/

namespace A190458.P929944096086164106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295085 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187949 (2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A190458.P929944096086164106

/-! ## A190458.P15593825660704791622

`A001950(A190446(n+1))`
-/

namespace A190458.P15593825660704791622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A190446 (n + 1)).toNat

end

end A190458.P15593825660704791622

/-! ## A190458.P17211391980749070012

`A190450(n+1)+A002251(2*A190450(n+1))`
-/

namespace A190458.P17211391980749070012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190450 (n + 1) + A002251 (2 * A190450 (n + 1)).toNat

end

end A190458.P17211391980749070012

/-! ## A190458.P18178728980010511717

`A004937(2*A190450(n+1))-A190450(n+1)`
-/

namespace A190458.P18178728980010511717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (2 * A190450 (n + 1)).toNat - A190450 (n + 1)

end

end A190458.P18178728980010511717

/-! ## A190458.P18028905689331181984

`A190456(n+1)+A026272(A190456(n+1)-1)`
-/

namespace A190458.P18028905689331181984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190456 (n + 1) + A026272 (A190456 (n + 1) - 1).toNat

end

end A190458.P18028905689331181984

/-! ## A190458.P6553263412223329137

`A002251(A190456(n+1))`
-/

namespace A190458.P6553263412223329137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A190456 (n + 1)).toNat

end

end A190458.P6553263412223329137

/-! ## A190458.P126061161839759364

`eq[1, A190457(A028310(n))+1]`
-/

namespace A190458.P126061161839759364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190458.P126061161839759364

/-! ## A190458.P1612532726542331688

`A020725(eq[1, A190457(n+1)+1])`
-/

namespace A190458.P1612532726542331688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190458.P1612532726542331688

/-! ## A190458.P15417828083231784128

`eq[A000007(n), A190457(n+1)]+1`
-/

namespace A190458.P15417828083231784128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190458.P15417828083231784128

/-! ## A190458.P12342397635366963201

`eq[A000007(n), A190457(A000007(n)+n)]`
-/

namespace A190458.P12342397635366963201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190458.P12342397635366963201

/-!
# A190459: Positions of 1 in A190457.

The programs for A190459, the canonical program `A190459.P17714069434607776697` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190459 has offset 1).

The definition of A190459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190459.P17714069434607776697

`eq[1, A190457(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A190459

/-- `eq[1, A190457(n+1)]+1` -/
def P17714069434607776697.Spec : Prop :=
  ∀ n, (P17714069434607776697.a n : ℤ) = A190459 (n + 1)

theorem P17714069434607776697.correct : P17714069434607776697.Spec := by
  intro n
  simp only [A190459, Nat.add_sub_cancel]

end A190459

/-! ## A190459.P13380918494671861946

`eq[1, A190457(A028310(n))]`
-/

namespace A190459.P13380918494671861946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190459.P13380918494671861946

namespace A190459

/-- `eq[1, A190457(A028310(n))]` -/
def P13380918494671861946.Spec : Prop :=
  ∀ n, (P13380918494671861946.a n : ℤ) = A190459 (n + 1)

end A190459

/-! ## A190459.P7293484548420959240

`A020725(eq[1, A190457(n+1)])`
-/

namespace A190459.P7293484548420959240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190459.P7293484548420959240

namespace A190459

/-- `A020725(eq[1, A190457(n+1)])` -/
def P7293484548420959240.Spec : Prop :=
  ∀ n, P7293484548420959240.a n = A190459 (n + 1)

end A190459

/-! ## A190459.P3357502963476604405

`eq[1, A190457(A000007(n)+n)]`
-/

namespace A190459.P3357502963476604405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190459.P3357502963476604405

namespace A190459

/-- `eq[1, A190457(A000007(n)+n)]` -/
def P3357502963476604405.Spec : Prop :=
  ∀ n, (P3357502963476604405.a n : ℤ) = A190459 (n + 1)

end A190459

/-! ## A190459.P7345479245296371794

`eq[0, A010873(A001966(2*n+1))]`
-/

namespace A190459.P7345479245296371794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A001966 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190459.P7345479245296371794

namespace A190459

/-- `eq[0, A010873(A001966(2*n+1))]` -/
def P7345479245296371794.Spec : Prop :=
  ∀ n, (P7345479245296371794.a n : ℤ) = A190459 (n + 1)

end A190459

/-! ## A190459.P13134911383559277988

`eq[2, A010873(A001965(2*n+1))]`
-/

namespace A190459.P13134911383559277988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A001965 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190459.P13134911383559277988

namespace A190459

/-- `eq[2, A010873(A001965(2*n+1))]` -/
def P13134911383559277988.Spec : Prop :=
  ∀ n, (P13134911383559277988.a n : ℤ) = A190459 (n + 1)

end A190459

/-! ## A190459.P9279564636091395852

`eq[2, A006519(A005206(4*n+2))]`
-/

namespace A190459.P9279564636091395852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A005206 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190459.P9279564636091395852

namespace A190459

/-- `eq[2, A006519(A005206(4*n+2))]` -/
def P9279564636091395852.Spec : Prop :=
  ∀ n, (P9279564636091395852.a n : ℤ) = A190459 (n + 1)

end A190459

/-! ## A190459.P887766846857283180

`eq[2, A001511(A005379(4*n+2))]`
-/

namespace A190459.P887766846857283180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A005379 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190459.P887766846857283180

namespace A190459

/-- `eq[2, A001511(A005379(4*n+2))]` -/
def P887766846857283180.Spec : Prop :=
  ∀ n, (P887766846857283180.a n : ℤ) = A190459 (n + 1)

end A190459

/-! ## A190459.P7913880282528414857

`eq[1, A007814(A005379(A016825(n)))]`
-/

namespace A190459.P7913880282528414857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005379 (A016825 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190459.P7913880282528414857

namespace A190459

/-- `eq[1, A007814(A005379(A016825(n)))]` -/
def P7913880282528414857.Spec : Prop :=
  ∀ n, (P7913880282528414857.a n : ℤ) = A190459 (n + 1)

end A190459

/-! ## A190459.P9996681015714260604

`eq[1, A009001(A001950(4*n+3))]`
-/

namespace A190459.P9996681015714260604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A001950 (4 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190459.P9996681015714260604

namespace A190459

/-- `eq[1, A009001(A001950(4*n+3))]` -/
def P9996681015714260604.Spec : Prop :=
  ∀ n, (P9996681015714260604.a n : ℤ) = A190459 (n + 1)

end A190459

/-! ## A190459.P5056214255722254698

`eq[A190427(A001968(n))+1, A006340(n)]`
-/

namespace A190459.P5056214255722254698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190427 (A001968 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006340 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190459.P5056214255722254698

namespace A190459

/-- `eq[A190427(A001968(n))+1, A006340(n)]` -/
def P5056214255722254698.Spec : Prop :=
  ∀ n, (P5056214255722254698.a n : ℤ) = A190459 (n + 1)

end A190459

/-! ## A190459.P18376350500612755246

`eq[1, A190427(A001968(n))+A078588(n)]`
-/

namespace A190459.P18376350500612755246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190427 (A001968 n).toNat + A078588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190459.P18376350500612755246

namespace A190459

/-- `eq[1, A190427(A001968(n))+A078588(n)]` -/
def P18376350500612755246.Spec : Prop :=
  ∀ n, (P18376350500612755246.a n : ℤ) = A190459 (n + 1)

end A190459

/-! ## A190459.P9232684367142192082

`lt[A096270(n), A096270(A288713(2*(n+1)))]`
-/

namespace A190459.P9232684367142192082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A288713 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190459.P9232684367142192082

namespace A190459

/-- `lt[A096270(n), A096270(A288713(2*(n+1)))]` -/
def P9232684367142192082.Spec : Prop :=
  ∀ n, (P9232684367142192082.a n : ℤ) = A190459 (n + 1)

end A190459

/-! ## A190459.P6031649927863872611

`eq[1, A007814(A004956(4*n+3))]`
-/

namespace A190459.P6031649927863872611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A004956 (4 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190459.P6031649927863872611

namespace A190459

/-- `eq[1, A007814(A004956(4*n+3))]` -/
def P6031649927863872611.Spec : Prop :=
  ∀ n, (P6031649927863872611.a n : ℤ) = A190459 (n + 1)

end A190459

/-! ## A190459.P3744242721018893637

`eq[2, A001511(A002251(4*n+3))]`
-/

namespace A190459.P3744242721018893637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A002251 (4 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190459.P3744242721018893637

namespace A190459

/-- `eq[2, A001511(A002251(4*n+3))]` -/
def P3744242721018893637.Spec : Prop :=
  ∀ n, (P3744242721018893637.a n : ℤ) = A190459 (n + 1)

end A190459

/-! ## A190459.P6460481628792687930

`eq[2, A001511(A026351(4*n+3))]`
-/

namespace A190459.P6460481628792687930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A026351 (4 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190459.P6460481628792687930

namespace A190459

/-- `eq[2, A001511(A026351(4*n+3))]` -/
def P6460481628792687930.Spec : Prop :=
  ∀ n, (P6460481628792687930.a n : ℤ) = A190459 (n + 1)

end A190459

/-! ## A190459.P8225851523888292933

`eq[1, A305371(A184517(2*(n+1)))]`
-/

namespace A190459.P8225851523888292933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305371 (A184517 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190459.P8225851523888292933

namespace A190459

/-- `eq[1, A305371(A184517(2*(n+1)))]` -/
def P8225851523888292933.Spec : Prop :=
  ∀ n, (P8225851523888292933.a n : ℤ) = A190459 (n + 1)

end A190459

/-! ## A190459.P9358265011247657449

`eq[1, A007814(A026274(4*n+2))]`
-/

namespace A190459.P9358265011247657449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A026274 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190459.P9358265011247657449

namespace A190459

/-- `eq[1, A007814(A026274(4*n+2))]` -/
def P9358265011247657449.Spec : Prop :=
  ∀ n, (P9358265011247657449.a n : ℤ) = A190459 (n + 1)

end A190459

/-! ## A190459.P1478828839853108086

`lt[A114986(n), A114986(A288713(2*(n+1)))]`
-/

namespace A190459.P1478828839853108086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A288713 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190459.P1478828839853108086

namespace A190459

/-- `lt[A114986(n), A114986(A288713(2*(n+1)))]` -/
def P1478828839853108086.Spec : Prop :=
  ∀ n, (P1478828839853108086.a n : ℤ) = A190459 (n + 1)

end A190459

/-!
# A190460: Positions of 2 in A190457.

The programs for A190460, the canonical program `A190460.P12275995598528564661` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190460 has offset 1).

The definition of A190460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190460.P12275995598528564661

`eq[2, A190457(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A190460

/-- `eq[2, A190457(n+1)]+1` -/
def P12275995598528564661.Spec : Prop :=
  ∀ n, (P12275995598528564661.a n : ℤ) = A190460 (n + 1)

theorem P12275995598528564661.correct : P12275995598528564661.Spec := by
  intro n
  simp only [A190460, Nat.add_sub_cancel]

end A190460

/-! ## A190460.P2557367787151687569

`eq[2, A190457(A028310(n))]`
-/

namespace A190460.P2557367787151687569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190460.P2557367787151687569

namespace A190460

/-- `eq[2, A190457(A028310(n))]` -/
def P2557367787151687569.Spec : Prop :=
  ∀ n, (P2557367787151687569.a n : ℤ) = A190460 (n + 1)

end A190460

/-! ## A190460.P15473081183247397881

`A020725(eq[2, A190457(n+1)])`
-/

namespace A190460.P15473081183247397881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190460.P15473081183247397881

namespace A190460

/-- `A020725(eq[2, A190457(n+1)])` -/
def P15473081183247397881.Spec : Prop :=
  ∀ n, P15473081183247397881.a n = A190460 (n + 1)

end A190460

/-! ## A190460.P2357646614710449586

`eq[2, A190457(A000007(n)+n)]`
-/

namespace A190460.P2357646614710449586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190460.P2357646614710449586

namespace A190460

/-- `eq[2, A190457(A000007(n)+n)]` -/
def P2357646614710449586.Spec : Prop :=
  ∀ n, (P2357646614710449586.a n : ℤ) = A190460 (n + 1)

end A190460

/-! ## A190460.P9183101437299654586

`eq[3, A005206(A016825(n))%4]`
-/

namespace A190460.P9183101437299654586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005206 (A016825 n).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190460.P9183101437299654586

namespace A190460

/-- `eq[3, A005206(A016825(n))%4]` -/
def P9183101437299654586.Spec : Prop :=
  ∀ n, (P9183101437299654586.a n : ℤ) = A190460 (n + 1)

end A190460

/-! ## A190460.P16396293827954570358

`eq[1, A010873(A001966(2*n+1))]`
-/

namespace A190460.P16396293827954570358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A001966 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190460.P16396293827954570358

namespace A190460

/-- `eq[1, A010873(A001966(2*n+1))]` -/
def P16396293827954570358.Spec : Prop :=
  ∀ n, (P16396293827954570358.a n : ℤ) = A190460 (n + 1)

end A190460

/-! ## A190460.P6436120412281196880

`eq[2*A190427(2*n+1), A014675(n+1)]`
-/

namespace A190460.P6436120412281196880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190427 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190460.P6436120412281196880

namespace A190460

/-- `eq[2*A190427(2*n+1), A014675(n+1)]` -/
def P6436120412281196880.Spec : Prop :=
  ∀ n, (P6436120412281196880.a n : ℤ) = A190460 (n + 1)

end A190460

/-! ## A190460.P11976075663861132484

`eq[3, A003324(A001965(2*n+1))]`
-/

namespace A190460.P11976075663861132484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (A001965 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190460.P11976075663861132484

namespace A190460

/-- `eq[3, A003324(A001965(2*n+1))]` -/
def P11976075663861132484.Spec : Prop :=
  ∀ n, (P11976075663861132484.a n : ℤ) = A190460 (n + 1)

end A190460

/-! ## A190460.P13582075440647035445

`eq[3, A268368(A005206(4*n+2))]`
-/

namespace A190460.P13582075440647035445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268368 (A005206 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190460.P13582075440647035445

namespace A190460

/-- `eq[3, A268368(A005206(4*n+2))]` -/
def P13582075440647035445.Spec : Prop :=
  ∀ n, (P13582075440647035445.a n : ℤ) = A190460 (n + 1)

end A190460

/-! ## A190460.P12827805356675398879

`eq[0, A010873(A189663(4*(n+1)))]`
-/

namespace A190460.P12827805356675398879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A189663 (4 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190460.P12827805356675398879

namespace A190460

/-- `eq[0, A010873(A189663(4*(n+1)))]` -/
def P12827805356675398879.Spec : Prop :=
  ∀ n, (P12827805356675398879.a n : ℤ) = A190460 (n + 1)

end A190460

/-! ## A190460.P16425154179950796374

`eq[1, A010873(A001950(4*n+3))]`
-/

namespace A190460.P16425154179950796374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A001950 (4 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190460.P16425154179950796374

namespace A190460

/-- `eq[1, A010873(A001950(4*n+3))]` -/
def P16425154179950796374.Spec : Prop :=
  ∀ n, (P16425154179950796374.a n : ℤ) = A190460 (n + 1)

end A190460

/-! ## A190460.P4575689346973033150

`eq[3, A268368(A005378(4*n+2))]`
-/

namespace A190460.P4575689346973033150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268368 (A005378 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190460.P4575689346973033150

namespace A190460

/-- `eq[3, A268368(A005378(4*n+2))]` -/
def P4575689346973033150.Spec : Prop :=
  ∀ n, (P4575689346973033150.a n : ℤ) = A190460 (n + 1)

end A190460

/-! ## A190460.P1231991955694254000

`eq[1, A007814(A000201(4*n+3))]`
-/

namespace A190460.P1231991955694254000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000201 (4 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190460.P1231991955694254000

namespace A190460

/-- `eq[1, A007814(A000201(4*n+3))]` -/
def P1231991955694254000.Spec : Prop :=
  ∀ n, (P1231991955694254000.a n : ℤ) = A190460 (n + 1)

end A190460

/-! ## A190460.P15669699796055051878

`eq[2, A190457(A233583(n+1))]`
-/

namespace A190460.P15669699796055051878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190460.P15669699796055051878

namespace A190460

/-- `eq[2, A190457(A233583(n+1))]` -/
def P15669699796055051878.Spec : Prop :=
  ∀ n, (P15669699796055051878.a n : ℤ) = A190460 (n + 1)

end A190460

/-! ## A190460.P11954922059564623468

`eq[1, A007814(A184517(2*(n+1)))]`
-/

namespace A190460.P11954922059564623468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A184517 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190460.P11954922059564623468

namespace A190460

/-- `eq[1, A007814(A184517(2*(n+1)))]` -/
def P11954922059564623468.Spec : Prop :=
  ∀ n, (P11954922059564623468.a n : ℤ) = A190460 (n + 1)

end A190460

/-!
# A190461: Positions of 3 in A190457.

The programs for A190461, the canonical program `A190461.P4265382622330275703` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190461 has offset 1).

The definition of A190461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190461.P4265382622330275703

`eq[3, A190457(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A190461

/-- `eq[3, A190457(n+1)]+1` -/
def P4265382622330275703.Spec : Prop :=
  ∀ n, (P4265382622330275703.a n : ℤ) = A190461 (n + 1)

theorem P4265382622330275703.correct : P4265382622330275703.Spec := by
  intro n
  simp only [A190461, Nat.add_sub_cancel]

end A190461

/-! ## A190461.P16418313871416853785

`eq[1, val(A001966(2*n+1), 2)]`
-/

namespace A190461.P16418313871416853785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001966 (2 * n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190461.P16418313871416853785

namespace A190461

/-- `eq[1, val(A001966(2*n+1), 2)]` -/
def P16418313871416853785.Spec : Prop :=
  ∀ n, (P16418313871416853785.a n : ℤ) = A190461 (n + 1)

end A190461

/-! ## A190461.P12048743269582477363

`eq[0, A010873(A001965(2*n+1))]`
-/

namespace A190461.P12048743269582477363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A001965 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190461.P12048743269582477363

namespace A190461

/-- `eq[0, A010873(A001965(2*n+1))]` -/
def P12048743269582477363.Spec : Prop :=
  ∀ n, (P12048743269582477363.a n : ℤ) = A190461 (n + 1)

end A190461

/-! ## A190461.P554684081316463841

`eq[2, A010873(A001966(2*n+1))]`
-/

namespace A190461.P554684081316463841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A001966 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190461.P554684081316463841

namespace A190461

/-- `eq[2, A010873(A001966(2*n+1))]` -/
def P554684081316463841.Spec : Prop :=
  ∀ n, (P554684081316463841.a n : ℤ) = A190461 (n + 1)

end A190461

/-! ## A190461.P215862661549276242

`eq[A020639(A001966(2*n+1)), A001468(n)]`
-/

namespace A190461.P215862661549276242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001966 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190461.P215862661549276242

namespace A190461

/-- `eq[A020639(A001966(2*n+1)), A001468(n)]` -/
def P215862661549276242.Spec : Prop :=
  ∀ n, (P215862661549276242.a n : ℤ) = A190461 (n + 1)

end A190461

/-! ## A190461.P5444022827621697667

`eq[1, A056594(A005206(4*n+2))]`
-/

namespace A190461.P5444022827621697667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005206 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190461.P5444022827621697667

namespace A190461

/-- `eq[1, A056594(A005206(4*n+2))]` -/
def P5444022827621697667.Spec : Prop :=
  ∀ n, (P5444022827621697667.a n : ℤ) = A190461 (n + 1)

end A190461

/-! ## A190461.P1051458853149333511

`eq[1, val(A001950(4*n+3), 2)]`
-/

namespace A190461.P1051458853149333511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001950 (4 * n + 3)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190461.P1051458853149333511

namespace A190461

/-- `eq[1, val(A001950(4*n+3), 2)]` -/
def P1051458853149333511.Spec : Prop :=
  ∀ n, (P1051458853149333511.a n : ℤ) = A190461 (n + 1)

end A190461

/-! ## A190461.P4441713267582151493

`eq[1, A056594(A060143(4*n+3))]`
-/

namespace A190461.P4441713267582151493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A060143 (4 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190461.P4441713267582151493

namespace A190461

/-- `eq[1, A056594(A060143(4*n+3))]` -/
def P4441713267582151493.Spec : Prop :=
  ∀ n, (P4441713267582151493.a n : ℤ) = A190461 (n + 1)

end A190461

/-! ## A190461.P7095801198753425176

`eq[A078588(n), A190427(A001968(n))]`
-/

namespace A190461.P7095801198753425176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190427 (A001968 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190461.P7095801198753425176

namespace A190461

/-- `eq[A078588(n), A190427(A001968(n))]` -/
def P7095801198753425176.Spec : Prop :=
  ∀ n, (P7095801198753425176.a n : ℤ) = A190461 (n + 1)

end A190461

/-! ## A190461.P11013089890786050616

`eq[A190427(A001968(n))², A006340(n)]`
-/

namespace A190461.P11013089890786050616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190427 (A001968 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006340 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190461.P11013089890786050616

namespace A190461

/-- `eq[A190427(A001968(n))², A006340(n)]` -/
def P11013089890786050616.Spec : Prop :=
  ∀ n, (P11013089890786050616.a n : ℤ) = A190461 (n + 1)

end A190461

/-! ## A190461.P527317620981233938

`lt[A189661(n+2), A096270(A288713(2*(n+1)))]`
-/

namespace A190461.P527317620981233938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A288713 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190461.P527317620981233938

namespace A190461

/-- `lt[A189661(n+2), A096270(A288713(2*(n+1)))]` -/
def P527317620981233938.Spec : Prop :=
  ∀ n, (P527317620981233938.a n : ℤ) = A190461 (n + 1)

end A190461

/-! ## A190461.P7873149677265679882

`eq[1, A007814(A022342(4*n+3))]`
-/

namespace A190461.P7873149677265679882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A022342 (4 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190461.P7873149677265679882

namespace A190461

/-- `eq[1, A007814(A022342(4*n+3))]` -/
def P7873149677265679882.Spec : Prop :=
  ∀ n, (P7873149677265679882.a n : ℤ) = A190461 (n + 1)

end A190461

/-! ## A190461.P4853903358457447120

`eq[A001468(A035487(2*(n+1))), A114986(n)]`
-/

namespace A190461.P4853903358457447120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A035487 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190461.P4853903358457447120

namespace A190461

/-- `eq[A001468(A035487(2*(n+1))), A114986(n)]` -/
def P4853903358457447120.Spec : Prop :=
  ∀ n, (P4853903358457447120.a n : ℤ) = A190461 (n + 1)

end A190461

/-! ## A190461.P1362717788965295275

`eq[2, A014673(A007066(4*(n+1)))]`
-/

namespace A190461.P1362717788965295275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A007066 (4 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190461.P1362717788965295275

namespace A190461

/-- `eq[2, A014673(A007066(4*(n+1)))]` -/
def P1362717788965295275.Spec : Prop :=
  ∀ n, (P1362717788965295275.a n : ℤ) = A190461 (n + 1)

end A190461

/-! ## A190461.P10381523529816356251

`eq[2, A006519(A001950(4*n+3))]`
-/

namespace A190461.P10381523529816356251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A001950 (4 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190461.P10381523529816356251

namespace A190461

/-- `eq[2, A006519(A001950(4*n+3))]` -/
def P10381523529816356251.Spec : Prop :=
  ∀ n, (P10381523529816356251.a n : ℤ) = A190461 (n + 1)

end A190461

/-! ## A190461.P12592954421931387389

`lt[A289034(n+2), A114986(A288713(2*(n+1)))]`
-/

namespace A190461.P12592954421931387389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A288713 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190461.P12592954421931387389

namespace A190461

/-- `lt[A289034(n+2), A114986(A288713(2*(n+1)))]` -/
def P12592954421931387389.Spec : Prop :=
  ∀ n, (P12592954421931387389.a n : ℤ) = A190461 (n + 1)

end A190461

/-!
# A190463: Positions of 4 in A190457.

The programs for A190463, the canonical program `A190463.P7208781064280862474` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190463 has offset 1).

The definition of A190463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190463.P7208781064280862474

`eq[4, A190457(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A190463

/-- `eq[4, A190457(n+1)]+1` -/
def P7208781064280862474.Spec : Prop :=
  ∀ n, (P7208781064280862474.a n : ℤ) = A190463 (n + 1)

theorem P7208781064280862474.correct : P7208781064280862474.Spec := by
  intro n
  simp only [A190463, Nat.add_sub_cancel]

end A190463

/-! ## A190463.P9222184842930186630

`eq[4, A190457(A028310(n))]`
-/

namespace A190463.P9222184842930186630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190463.P9222184842930186630

namespace A190463

/-- `eq[4, A190457(A028310(n))]` -/
def P9222184842930186630.Spec : Prop :=
  ∀ n, (P9222184842930186630.a n : ℤ) = A190463 (n + 1)

end A190463

/-! ## A190463.P8235976437387358014

`A020725(eq[4, A190457(n+1)])`
-/

namespace A190463.P8235976437387358014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190463.P8235976437387358014

namespace A190463

/-- `A020725(eq[4, A190457(n+1)])` -/
def P8235976437387358014.Spec : Prop :=
  ∀ n, P8235976437387358014.a n = A190463 (n + 1)

end A190463

/-! ## A190463.P3069765312631569742

`eq[4, A190457(A000007(n)+n)]`
-/

namespace A190463.P3069765312631569742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190463.P3069765312631569742

namespace A190463

/-- `eq[4, A190457(A000007(n)+n)]` -/
def P3069765312631569742.Spec : Prop :=
  ∀ n, (P3069765312631569742.a n : ℤ) = A190463 (n + 1)

end A190463

/-! ## A190463.P8065525908591381925

`eq[1, A190248(A099267(n+1))]`
-/

namespace A190463.P8065525908591381925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190248 (A099267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190463.P8065525908591381925

namespace A190463

/-- `eq[1, A190248(A099267(n+1))]` -/
def P8065525908591381925.Spec : Prop :=
  ∀ n, (P8065525908591381925.a n : ℤ) = A190463 (n + 1)

end A190463

/-! ## A190463.P11904817446072804444

`eq[A078588(n), A190248(A000201(n+1))]`
-/

namespace A190463.P11904817446072804444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190248 (A000201 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190463.P11904817446072804444

namespace A190463

/-- `eq[A078588(n), A190248(A000201(n+1))]` -/
def P11904817446072804444.Spec : Prop :=
  ∀ n, (P11904817446072804444.a n : ℤ) = A190463 (n + 1)

end A190463

/-! ## A190463.P17553978065837259036

`eq[2, A327216(2*n)+A327216(n)]`
-/

namespace A190463.P17553978065837259036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327216 (2 * n) + A327216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190463.P17553978065837259036

namespace A190463

/-- `eq[2, A327216(2*n)+A327216(n)]` -/
def P17553978065837259036.Spec : Prop :=
  ∀ n, (P17553978065837259036.a n : ℤ) = A190463 (n + 1)

end A190463

/-! ## A190463.P17637624909360262966

`eq[2, A190427(A288709(n+1)+2)]`
-/

namespace A190463.P17637624909360262966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190427 (A288709 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190463.P17637624909360262966

namespace A190463

/-- `eq[2, A190427(A288709(n+1)+2)]` -/
def P17637624909360262966.Spec : Prop :=
  ∀ n, (P17637624909360262966.a n : ℤ) = A190463 (n + 1)

end A190463

/-! ## A190463.P12383460292464907542

`eq[4, A190457(A233583(n+1))]`
-/

namespace A190463.P12383460292464907542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190457 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190463.P12383460292464907542

namespace A190463

/-- `eq[4, A190457(A233583(n+1))]` -/
def P12383460292464907542.Spec : Prop :=
  ∀ n, (P12383460292464907542.a n : ℤ) = A190463 (n + 1)

end A190463

/-! ## A190463.P3995684576890775529

`A003623(A187947(n+1)%A111205(n+6))`
-/

namespace A190463.P3995684576890775529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (Int.tmod (A187947 (n + 1)) (A111205 (n + 6))).toNat

end

end A190463.P3995684576890775529

namespace A190463

/-- `A003623(A187947(n+1)%A111205(n+6))` -/
def P3995684576890775529.Spec : Prop :=
  ∀ n, P3995684576890775529.a n = A190463 (n + 1)

end A190463

/-!
# A190464: 

The programs for A190464, there is no canonical definition to state claims against.
-/

/-! ## A190464.P3313037734222082063

`A143610(n+1)²`
-/

namespace A190464.P3313037734222082063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143610 (n + 1) ^ 2

end

end A190464.P3313037734222082063

/-! ## A190464.P15648500558969616740

`∩[A052486(n+1), A272191(n+1)]²`
-/

namespace A190464.P15648500558969616740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190464.P15648500558969616740

/-! ## A190464.P9124598229100818497

`∩[A056166(n+1), A272191(n+1)]²`
-/

namespace A190464.P9124598229100818497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190464.P9124598229100818497

/-! ## A190464.P10024766342818946557

`∩[A102834(n+1), A272191(n+1)]²`
-/

namespace A190464.P10024766342818946557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190464.P10024766342818946557

/-! ## A190464.P12263436333148546711

`∩[A272191(n+1), A338325(n+1)]²`
-/

namespace A190464.P12263436333148546711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190464.P12263436333148546711

/-! ## A190464.P6988818838237836354

`∩[A272191(n+1), A355462(n+1)]²`
-/

namespace A190464.P6988818838237836354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190464.P6988818838237836354

/-! ## A190464.P14680024888658792886

`∩[A272191(n+1), A359280(n+1)]²`
-/

namespace A190464.P14680024888658792886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190464.P14680024888658792886

/-! ## A190464.P13940705284445955443

`∩[A272191(n+1), A370786(n+1)]²`
-/

namespace A190464.P13940705284445955443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190464.P13940705284445955443

/-! ## A190464.P17620863731351763151

`∩[A272191(n+1), A372404(n+1)]²`
-/

namespace A190464.P17620863731351763151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190464.P17620863731351763151

/-! ## A190464.P11601538419269616512

`∩[A272191(n+1), A375073(n+1)]²`
-/

namespace A190464.P11601538419269616512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190464.P11601538419269616512

/-! ## A190464.P6064232992600744505

`∩[A272191(n+1), A375143(n+1)]²`
-/

namespace A190464.P6064232992600744505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190464.P6064232992600744505

/-! ## A190464.P12687157618254878700

`∩[A272191(n+1), A376171(n+1)]²`
-/

namespace A190464.P12687157618254878700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190464.P12687157618254878700

/-! ## A190464.P5342383254065361490

`∩[A355462(n+1), A375073(n+1)]²`
-/

namespace A190464.P5342383254065361490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190464.P5342383254065361490

/-! ## A190464.P12854286912160974048

`A143610(n+1)^(A060576(n+2)+1)`
-/

namespace A190464.P12854286912160974048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143610 (n + 1) : ℚ) ^ (A060576 (n + 2) + 1 : ℤ)

end

end A190464.P12854286912160974048

/-! ## A190464.P1342462437529946665

`A143610(n+1)^A020639(2*(n+1))`
-/

namespace A190464.P1342462437529946665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143610 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A190464.P1342462437529946665

/-! ## A190464.P6124493443668658429

`(A143610(n+1)%A143610(n+2))^2`
-/

namespace A190464.P6124493443668658429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143610 (n + 1)) (A143610 (n + 2)) ^ 2

end

end A190464.P6124493443668658429

/-! ## A190464.P12218344279557339732

`A143610(A000027(n+1))*A143610(n+1)`
-/

namespace A190464.P12218344279557339732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143610 (A000027 (n + 1)).toNat * A143610 (n + 1)

end

end A190464.P12218344279557339732

/-! ## A190464.P6734419120780297688

`A143610(n+1)^A000005(A002476(n+1))`
-/

namespace A190464.P6734419120780297688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143610 (n + 1) : ℚ) ^ (A000005 (A002476 (n + 1)).toNat : ℤ)

end

end A190464.P6734419120780297688

/-! ## A190464.P16677148690808589726

`A143610(A187181(3*(n+1)))*A143610(n+1)`
-/

namespace A190464.P16677148690808589726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143610 (A187181 (3 * (n + 1))).toNat * A143610 (n + 1)

end

end A190464.P16677148690808589726

/-!
# A190465: Numbers with prime factorization p^5q^5.

The programs for A190465, the canonical program `A190465.P16276923175194958437` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190465 has offset 1).

The definition of A190465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5047 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190465.P1594414453411713906

`A006881(n+1)^5`
-/

namespace A190465.P1594414453411713906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) ^ 5

end

end A190465.P1594414453411713906

namespace A190465

/-- `A006881(n+1)^5` -/
def P1594414453411713906.Spec : Prop :=
  ∀ n, P1594414453411713906.a n = A190465 (n + 1)

end A190465

/-! ## A190465.P11121714889040281805

`sqrt(A085986(n+1)^5)`
-/

namespace A190465.P11121714889040281805
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A085986 (n + 1) ^ 5 : ℝ)

end

end A190465.P11121714889040281805

namespace A190465

/-- `sqrt(A085986(n+1)^5)` -/
def P11121714889040281805.Spec : Prop :=
  ∀ n, P11121714889040281805.a n = (A190465 (n + 1) : ℝ)

end A190465

/-! ## A190465.P14582068551054373018

`A006881(n+1)*A189991(n+1)`
-/

namespace A190465.P14582068551054373018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) * A189991 (n + 1)

end

end A190465.P14582068551054373018

namespace A190465

/-- `A006881(n+1)*A189991(n+1)` -/
def P14582068551054373018.Spec : Prop :=
  ∀ n, P14582068551054373018.a n = A190465 (n + 1)

end A190465

/-! ## A190465.P2884760507833135761

`A085986(n+1)*A162142(n+1)`
-/

namespace A190465.P2884760507833135761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1) * A162142 (n + 1)

end

end A190465.P2884760507833135761

namespace A190465

/-- `A085986(n+1)*A162142(n+1)` -/
def P2884760507833135761.Spec : Prop :=
  ∀ n, P2884760507833135761.a n = A190465 (n + 1)

end A190465

/-! ## A190465.P16568879909555686260

`A085986(n+1)²*A006881(n+1)`
-/

namespace A190465.P16568879909555686260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1) ^ 2 * A006881 (n + 1)

end

end A190465.P16568879909555686260

namespace A190465

/-- `A085986(n+1)²*A006881(n+1)` -/
def P16568879909555686260.Spec : Prop :=
  ∀ n, P16568879909555686260.a n = A190465 (n + 1)

end A190465

/-! ## A190465.P9191637570335526436

`A006881(n+1)²*A162142(n+1)`
-/

namespace A190465.P9191637570335526436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) ^ 2 * A162142 (n + 1)

end

end A190465.P9191637570335526436

namespace A190465

/-- `A006881(n+1)²*A162142(n+1)` -/
def P9191637570335526436.Spec : Prop :=
  ∀ n, P9191637570335526436.a n = A190465 (n + 1)

end A190465

/-! ## A190465.P16276923175194958437

`(eq[2, A349620(n+1)]+1)^5`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A190465

/-- `(eq[2, A349620(n+1)]+1)^5` -/
def P16276923175194958437.Spec : Prop :=
  ∀ n, (P16276923175194958437.a n : ℤ) = A190465 (n + 1)

theorem P16276923175194958437.correct : P16276923175194958437.Spec := by
  intro n
  simp only [A190465, Nat.add_sub_cancel]

end A190465

/-! ## A190465.P4145534507990225267

`(eq[3, A292587(n+1)]+1)^5`
-/

namespace A190465.P4145534507990225267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292587 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 5

end

end A190465.P4145534507990225267

namespace A190465

/-- `(eq[3, A292587(n+1)]+1)^5` -/
def P4145534507990225267.Spec : Prop :=
  ∀ n, (P4145534507990225267.a n : ℤ) = A190465 (n + 1)

end A190465

/-! ## A190465.P5634664458792309537

`A085986(n+1)*A270437(sqrt(A085986(n+1)))`
-/

namespace A190465.P5634664458792309537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1) * A270437 (SequenceMachineLib.roundAway (Real.sqrt (A085986 (n + 1) : ℝ))).toNat

end

end A190465.P5634664458792309537

namespace A190465

/-- `A085986(n+1)*A270437(sqrt(A085986(n+1)))` -/
def P5634664458792309537.Spec : Prop :=
  ∀ n, P5634664458792309537.a n = A190465 (n + 1)

end A190465

/-! ## A190465.P14201274256154186374

`eq[2, ∑{e}[n, #²]]^5`
-/

namespace A190465.P14201274256154186374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 5

end

end A190465.P14201274256154186374

namespace A190465

/-- `eq[2, ∑{e}[n, #²]]^5` -/
def P14201274256154186374.Spec : Prop :=
  ∀ n, (P14201274256154186374.a n : ℤ) = A190465 (n + 1)

end A190465

/-! ## A190465.P3540950557792985499

`A000584(A006881(n+1))`
-/

namespace A190465.P3540950557792985499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A006881 (n + 1)).toNat

end

end A190465.P3540950557792985499

namespace A190465

/-- `A000584(A006881(n+1))` -/
def P3540950557792985499.Spec : Prop :=
  ∀ n, P3540950557792985499.a n = A190465 (n + 1)

end A190465

/-!
# A190466: Numbers with prime factorization pq^2r^7.

The programs for A190466, there is no canonical definition to state claims against.
-/

/-! ## A190466.P5423559554502131085

`∩[A046314(n+1), A175754(n+1)]`
-/

namespace A190466.P5423559554502131085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190466.P5423559554502131085

/-! ## A190466.P4724378633576998752

`∩[A175754(n+1), A195091(n+1)]`
-/

namespace A190466.P4724378633576998752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190466.P4724378633576998752

/-! ## A190466.P7381639728523284102

`2*A179703(A062399(n+1))`
-/

namespace A190466.P7381639728523284102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179703 (A062399 (n + 1)).toNat

end

end A190466.P7381639728523284102

/-! ## A190466.P17956090293882990588

`2*A175750(A351870(n+1))`
-/

namespace A190466.P17956090293882990588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175750 (A351870 (n + 1)).toNat

end

end A190466.P17956090293882990588

/-!
# A190468: Numbers with prime factorization pq^4r^5.

The programs for A190468, there is no canonical definition to state claims against.
-/

/-! ## A190468.P6692331465535247943

`filter[A320893(n+1), A389905(#)]`
-/

namespace A190468.P6692331465535247943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A190468.P6692331465535247943

/-! ## A190468.P9449896704730211373

`A320893(A084826(n+1)+2)`
-/

namespace A190468.P9449896704730211373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320893 (A084826 (n + 1) + 2).toNat

end

end A190468.P9449896704730211373

/-!
# A190469: Numbers with prime factorization p^2*q^2*r^6 where p, q, and r are distinct primes.

The programs for A190469, the canonical program `A190469.P12605959260952500718` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190469 has offset 1).

The definition of A190469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190469.P12605959260952500718

`A189975(n+1)²`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A190469

/-- `A189975(n+1)²` -/
def P12605959260952500718.Spec : Prop :=
  ∀ n, P12605959260952500718.a n = A190469 (n + 1)

theorem P12605959260952500718.correct : P12605959260952500718.Spec := by
  intro n
  simp only [A190469, Nat.add_sub_cancel]

end A190469

/-! ## A190469.P15788280428535534529

`∩[A014614(n+1), A026477(n+1)]²`
-/

namespace A190469.P15788280428535534529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190469.P15788280428535534529

namespace A190469

/-- `∩[A014614(n+1), A026477(n+1)]²` -/
def P15788280428535534529.Spec : Prop :=
  ∀ n, (P15788280428535534529.a n : ℤ) = A190469 (n + 1)

end A190469

/-! ## A190469.P8944368079383452077

`∩[A014614(n+1), A030634(n+1)]²`
-/

namespace A190469.P8944368079383452077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190469.P8944368079383452077

namespace A190469

/-- `∩[A014614(n+1), A030634(n+1)]²` -/
def P8944368079383452077.Spec : Prop :=
  ∀ n, (P8944368079383452077.a n : ℤ) = A190469 (n + 1)

end A190469

/-! ## A190469.P8910229735819003058

`∩[A014614(n+1), A036436(n+1)]²`
-/

namespace A190469.P8910229735819003058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190469.P8910229735819003058

namespace A190469

/-- `∩[A014614(n+1), A036436(n+1)]²` -/
def P8910229735819003058.Spec : Prop :=
  ∀ n, (P8910229735819003058.a n : ℤ) = A190469 (n + 1)

end A190469

/-! ## A190469.P1079412146772376321

`∩[A014614(n+1), A036455(n+1)]²`
-/

namespace A190469.P1079412146772376321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190469.P1079412146772376321

namespace A190469

/-- `∩[A014614(n+1), A036455(n+1)]²` -/
def P1079412146772376321.Spec : Prop :=
  ∀ n, (P1079412146772376321.a n : ℤ) = A190469 (n + 1)

end A190469

/-! ## A190469.P1975542480342838046

`∩[A014614(n+1), A048109(n+1)]²`
-/

namespace A190469.P1975542480342838046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190469.P1975542480342838046

namespace A190469

/-- `∩[A014614(n+1), A048109(n+1)]²` -/
def P1975542480342838046.Spec : Prop :=
  ∀ n, (P1975542480342838046.a n : ℤ) = A190469 (n + 1)

end A190469

/-! ## A190469.P8790410076125258952

`∩[A026477(n+1), A048109(n+1)]²`
-/

namespace A190469.P8790410076125258952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190469.P8790410076125258952

namespace A190469

/-- `∩[A026477(n+1), A048109(n+1)]²` -/
def P8790410076125258952.Spec : Prop :=
  ∀ n, (P8790410076125258952.a n : ℤ) = A190469 (n + 1)

end A190469

/-! ## A190469.P611102932451051548

`∩[A030634(n+1), A048109(n+1)]²`
-/

namespace A190469.P611102932451051548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190469.P611102932451051548

namespace A190469

/-- `∩[A030634(n+1), A048109(n+1)]²` -/
def P611102932451051548.Spec : Prop :=
  ∀ n, (P611102932451051548.a n : ℤ) = A190469 (n + 1)

end A190469

/-! ## A190469.P14980591910672955218

`∩[A030634(n+1), A070011(n+1)]²`
-/

namespace A190469.P14980591910672955218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190469.P14980591910672955218

namespace A190469

/-- `∩[A030634(n+1), A070011(n+1)]²` -/
def P14980591910672955218.Spec : Prop :=
  ∀ n, (P14980591910672955218.a n : ℤ) = A190469 (n + 1)

end A190469

/-! ## A190469.P13671909090807239593

`∩[A030634(n+1), A082293(n+1)]²`
-/

namespace A190469.P13671909090807239593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190469.P13671909090807239593

namespace A190469

/-- `∩[A030634(n+1), A082293(n+1)]²` -/
def P13671909090807239593.Spec : Prop :=
  ∀ n, (P13671909090807239593.a n : ℤ) = A190469 (n + 1)

end A190469

/-! ## A190469.P10619953278312205038

`∩[A030634(n+1), A109426(n+1)]²`
-/

namespace A190469.P10619953278312205038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190469.P10619953278312205038

namespace A190469

/-- `∩[A030634(n+1), A109426(n+1)]²` -/
def P10619953278312205038.Spec : Prop :=
  ∀ n, (P10619953278312205038.a n : ℤ) = A190469 (n + 1)

end A190469

/-! ## A190469.P14862725220871562499

`∩[A014614(n+1), A137945(n+1)]²`
-/

namespace A190469.P14862725220871562499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190469.P14862725220871562499

namespace A190469

/-- `∩[A014614(n+1), A137945(n+1)]²` -/
def P14862725220871562499.Spec : Prop :=
  ∀ n, (P14862725220871562499.a n : ℤ) = A190469 (n + 1)

end A190469

/-! ## A190469.P16510814006004935546

`∩[A026477(n+1), A137945(n+1)]²`
-/

namespace A190469.P16510814006004935546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190469.P16510814006004935546

namespace A190469

/-- `∩[A026477(n+1), A137945(n+1)]²` -/
def P16510814006004935546.Spec : Prop :=
  ∀ n, (P16510814006004935546.a n : ℤ) = A190469 (n + 1)

end A190469

/-! ## A190469.P10951857104488729421

`∩[A030634(n+1), A137944(n+1)]²`
-/

namespace A190469.P10951857104488729421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190469.P10951857104488729421

namespace A190469

/-- `∩[A030634(n+1), A137944(n+1)]²` -/
def P10951857104488729421.Spec : Prop :=
  ∀ n, (P10951857104488729421.a n : ℤ) = A190469 (n + 1)

end A190469

/-! ## A190469.P16545467009770769823

`∩[A030634(n+1), A137945(n+1)]²`
-/

namespace A190469.P16545467009770769823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190469.P16545467009770769823

namespace A190469

/-- `∩[A030634(n+1), A137945(n+1)]²` -/
def P16545467009770769823.Spec : Prop :=
  ∀ n, (P16545467009770769823.a n : ℤ) = A190469 (n + 1)

end A190469

/-! ## A190469.P1383099862599660176

`∩[A048109(n+1), A137945(n+1)]²`
-/

namespace A190469.P1383099862599660176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190469.P1383099862599660176

namespace A190469

/-- `∩[A048109(n+1), A137945(n+1)]²` -/
def P1383099862599660176.Spec : Prop :=
  ∀ n, (P1383099862599660176.a n : ℤ) = A190469 (n + 1)

end A190469

/-! ## A190469.P17226189656736621162

`∩[A014614(n+1), A175496(n+1)]²`
-/

namespace A190469.P17226189656736621162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190469.P17226189656736621162

namespace A190469

/-- `∩[A014614(n+1), A175496(n+1)]²` -/
def P17226189656736621162.Spec : Prop :=
  ∀ n, (P17226189656736621162.a n : ℤ) = A190469 (n + 1)

end A190469

/-! ## A190469.P6669731198628394629

`∩[A030634(n+1), A173743(n+1)]²`
-/

namespace A190469.P6669731198628394629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190469.P6669731198628394629

namespace A190469

/-- `∩[A030634(n+1), A173743(n+1)]²` -/
def P6669731198628394629.Spec : Prop :=
  ∀ n, (P6669731198628394629.a n : ℤ) = A190469 (n + 1)

end A190469

/-!
# A190470: Numbers with prime factorization p^2*q^3*r^5 where p, q, and r are distinct primes.

The programs for A190470, there is no canonical definition to state claims against.
-/

/-! ## A190470.P14149982557870150838

`A320893(A040108(n+1))`
-/

namespace A190470.P14149982557870150838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320893 (A040108 (n + 1)).toNat

end

end A190470.P14149982557870150838

/-! ## A190470.P14636838102711214004

`A320893(A038958(n+2))`
-/

namespace A190470.P14636838102711214004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320893 (A038958 (n + 2)).toNat

end

end A190470.P14636838102711214004

/-!
# A190471: Numbers with prime factorization p^2*q^4*r^4 where p, q, and r are distinct primes.

The programs for A190471, the canonical program `A190471.P1363995098306444959` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190471 has offset 1).

The definition of A190471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190471.P1363995098306444959

`A179643(n+1)²`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A190471

/-- `A179643(n+1)²` -/
def P1363995098306444959.Spec : Prop :=
  ∀ n, P1363995098306444959.a n = A190471 (n + 1)

theorem P1363995098306444959.correct : P1363995098306444959.Spec := by
  intro n
  simp only [A190471, Nat.add_sub_cancel]

end A190471

/-! ## A190471.P771239817718992810

`record[A179643(A291769(n))²]`
-/

namespace A190471.P771239817718992810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179643 (A291769 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190471.P771239817718992810

namespace A190471

/-- `record[A179643(A291769(n))²]` -/
def P771239817718992810.Spec : Prop :=
  ∀ n, P771239817718992810.a n = A190471 (n + 1)

end A190471

/-! ## A190471.P1986972895172456519

`A179643(A000027(n+1))^2`
-/

namespace A190471.P1986972895172456519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179643 (A000027 (n + 1)).toNat ^ 2

end

end A190471.P1986972895172456519

namespace A190471

/-- `A179643(A000027(n+1))^2` -/
def P1986972895172456519.Spec : Prop :=
  ∀ n, P1986972895172456519.a n = A190471 (n + 1)

end A190471

/-! ## A190471.P5929711012078132936

`A179643(n+1)^A013632(n*char[3])`
-/

namespace A190471.P5929711012078132936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179643 (n + 1) : ℚ) ^ (A013632 (n * (if ∃ j, f1 j = n then 1 else 0)) : ℤ)

end

end A190471.P5929711012078132936

namespace A190471

/-- `A179643(n+1)^A013632(n*char[3])` -/
def P5929711012078132936.Spec : Prop :=
  ∀ n, P5929711012078132936.a n = (A190471 (n + 1) : ℚ)

end A190471

/-! ## A190471.P18293362835776284925

`∩[A014614(n+1), A030636(n+1)]²`
-/

namespace A190471.P18293362835776284925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190471.P18293362835776284925

namespace A190471

/-- `∩[A014614(n+1), A030636(n+1)]²` -/
def P18293362835776284925.Spec : Prop :=
  ∀ n, (P18293362835776284925.a n : ℤ) = A190471 (n + 1)

end A190471

/-! ## A190471.P3529060500156228012

`∩[A014614(n+1), A072413(n+1)]²`
-/

namespace A190471.P3529060500156228012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190471.P3529060500156228012

namespace A190471

/-- `∩[A014614(n+1), A072413(n+1)]²` -/
def P3529060500156228012.Spec : Prop :=
  ∀ n, (P3529060500156228012.a n : ℤ) = A190471 (n + 1)

end A190471

/-! ## A190471.P4247773167708249482

`∩[A030636(n+1), A072413(n+1)]²`
-/

namespace A190471.P4247773167708249482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190471.P4247773167708249482

namespace A190471

/-- `∩[A030636(n+1), A072413(n+1)]²` -/
def P4247773167708249482.Spec : Prop :=
  ∀ n, (P4247773167708249482.a n : ℤ) = A190471 (n + 1)

end A190471

/-! ## A190471.P3858404653963820782

`∩[A030636(n+1), A195086(n+1)]²`
-/

namespace A190471.P3858404653963820782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190471.P3858404653963820782

namespace A190471

/-- `∩[A030636(n+1), A195086(n+1)]²` -/
def P3858404653963820782.Spec : Prop :=
  ∀ n, (P3858404653963820782.a n : ℤ) = A190471 (n + 1)

end A190471

/-! ## A190471.P11921441449128005029

`∩[A064499(n+1), A195086(n+1)]²`
-/

namespace A190471.P11921441449128005029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190471.P11921441449128005029

namespace A190471

/-- `∩[A064499(n+1), A195086(n+1)]²` -/
def P11921441449128005029.Spec : Prop :=
  ∀ n, (P11921441449128005029.a n : ℤ) = A190471 (n + 1)

end A190471

/-! ## A190471.P11347061779565529829

`∩[A014614(n+1), A375144(n+1)]²`
-/

namespace A190471.P11347061779565529829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190471.P11347061779565529829

namespace A190471

/-- `∩[A014614(n+1), A375144(n+1)]²` -/
def P11347061779565529829.Spec : Prop :=
  ∀ n, (P11347061779565529829.a n : ℤ) = A190471 (n + 1)

end A190471

/-! ## A190471.P17736200421142567133

`∩[A014614(n+1), A377817(n+1)]²`
-/

namespace A190471.P17736200421142567133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190471.P17736200421142567133

namespace A190471

/-- `∩[A014614(n+1), A377817(n+1)]²` -/
def P17736200421142567133.Spec : Prop :=
  ∀ n, (P17736200421142567133.a n : ℤ) = A190471 (n + 1)

end A190471

/-! ## A190471.P867395086004573121

`∩[A014614(n+1), A378430(n+1)]²`
-/

namespace A190471.P867395086004573121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190471.P867395086004573121

namespace A190471

/-- `∩[A014614(n+1), A378430(n+1)]²` -/
def P867395086004573121.Spec : Prop :=
  ∀ n, (P867395086004573121.a n : ℤ) = A190471 (n + 1)

end A190471

/-! ## A190471.P6350595685113658525

`∩[A030636(n+1), A375144(n+1)]²`
-/

namespace A190471.P6350595685113658525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190471.P6350595685113658525

namespace A190471

/-- `∩[A030636(n+1), A375144(n+1)]²` -/
def P6350595685113658525.Spec : Prop :=
  ∀ n, (P6350595685113658525.a n : ℤ) = A190471 (n + 1)

end A190471

/-! ## A190471.P6707359119891906730

`∩[A030636(n+1), A377817(n+1)]²`
-/

namespace A190471.P6707359119891906730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190471.P6707359119891906730

namespace A190471

/-- `∩[A030636(n+1), A377817(n+1)]²` -/
def P6707359119891906730.Spec : Prop :=
  ∀ n, (P6707359119891906730.a n : ℤ) = A190471 (n + 1)

end A190471

/-! ## A190471.P12451318520102296279

`∩[A030636(n+1), A378430(n+1)]²`
-/

namespace A190471.P12451318520102296279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190471.P12451318520102296279

namespace A190471

/-- `∩[A030636(n+1), A378430(n+1)]²` -/
def P12451318520102296279.Spec : Prop :=
  ∀ n, (P12451318520102296279.a n : ℤ) = A190471 (n + 1)

end A190471

/-! ## A190471.P1020571973953200908

`∩[A064499(n+1), A375144(n+1)]²`
-/

namespace A190471.P1020571973953200908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190471.P1020571973953200908

namespace A190471

/-- `∩[A064499(n+1), A375144(n+1)]²` -/
def P1020571973953200908.Spec : Prop :=
  ∀ n, (P1020571973953200908.a n : ℤ) = A190471 (n + 1)

end A190471

/-! ## A190471.P3235487543996873519

`∩[A228056(n+1), A375144(n+1)]²`
-/

namespace A190471.P3235487543996873519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A190471.P3235487543996873519

namespace A190471

/-- `∩[A228056(n+1), A375144(n+1)]²` -/
def P3235487543996873519.Spec : Prop :=
  ∀ n, (P3235487543996873519.a n : ℤ) = A190471 (n + 1)

end A190471

/-! ## A190471.P6526150973409860540

`A179643(n+1)^(2%A007304(n+1))`
-/

namespace A190471.P6526150973409860540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179643 (n + 1) : ℚ) ^ (Int.tmod 2 (A007304 (n + 1)) : ℤ)

end

end A190471.P6526150973409860540

namespace A190471

/-- `A179643(n+1)^(2%A007304(n+1))` -/
def P6526150973409860540.Spec : Prop :=
  ∀ n, P6526150973409860540.a n = (A190471 (n + 1) : ℚ)

end A190471

/-! ## A190471.P984260676919694028

`record[A179643(A291769(n))]*A179643(n+1)`
-/

namespace A190471.P984260676919694028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179643 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A179643 (n + 1)

end

end A190471.P984260676919694028

namespace A190471

/-- `record[A179643(A291769(n))]*A179643(n+1)` -/
def P984260676919694028.Spec : Prop :=
  ∀ n, P984260676919694028.a n = A190471 (n + 1)

end A190471

/-! ## A190471.P18434861534814259159

`A179643(A000027(n+1))*A179643(n+1)`
-/

namespace A190471.P18434861534814259159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179643 (A000027 (n + 1)).toNat * A179643 (n + 1)

end

end A190471.P18434861534814259159

namespace A190471

/-- `A179643(A000027(n+1))*A179643(n+1)` -/
def P18434861534814259159.Spec : Prop :=
  ∀ n, P18434861534814259159.a n = A190471 (n + 1)

end A190471

/-!
# A190473: Numbers with prime factorization pqrs^7.

The programs for A190473, there is no canonical definition to state claims against.
-/

/-! ## A190473.P9071783064011330835

`∩[A046314(n+1), A074853(n+1)]`
-/

namespace A190473.P9071783064011330835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190473.P9071783064011330835

/-! ## A190473.P4072745593044705817

`∩[A074853(n+1), A195090(n+1)]`
-/

namespace A190473.P4072745593044705817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190473.P4072745593044705817

/-! ## A190473.P705603312004769774

`∩[A046314(n+1), A172443(n+1)]`
-/

namespace A190473.P705603312004769774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190473.P705603312004769774

/-! ## A190473.P2267964047726848799

`∩[A046313(n+1), A074853(n+1)]`
-/

namespace A190473.P2267964047726848799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190473.P2267964047726848799

/-! ## A190473.P11377742049525176059

`A016009(A077216(n))*A190292(n+1)`
-/

namespace A190473.P11377742049525176059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016009 (A077216 n).toNat * A190292 (n + 1)

end

end A190473.P11377742049525176059

/-!
# A190474: Numbers with prime factorization pqr^2s^6.

The programs for A190474, there is no canonical definition to state claims against.
-/

/-! ## A190474.P5419325259569289885

`A000027(lcm(64, A190293(n+1)))`
-/

namespace A190474.P5419325259569289885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lcm 64 (A190293 (n + 1)))

end

end A190474.P5419325259569289885

/-! ## A190474.P11544684423145108197

`A096485(2*(n+3))*A190293(n+1)`
-/

namespace A190474.P11544684423145108197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096485 (2 * (n + 3)) * A190293 (n + 1)

end

end A190474.P11544684423145108197

/-! ## A190474.P15581332910368555663

`A000120(A007283(n))*A190293(n+1)`
-/

namespace A190474.P15581332910368555663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A007283 n).toNat * A190293 (n + 1)

end

end A190474.P15581332910368555663

/-! ## A190474.P10306302495687141374

`A020639(A100535(n))*A190293(n+1)`
-/

namespace A190474.P10306302495687141374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A100535 n).toNat * A190293 (n + 1)

end

end A190474.P10306302495687141374

/-!
# A190475: Numbers with prime factorization pqr^3s^5.

The programs for A190475, there is no canonical definition to state claims against.
-/

/-! ## A190475.P5459401818035555247

`A008591(4*A179670(n+1))`
-/

namespace A190475.P5459401818035555247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (4 * A179670 (n + 1)).toNat

end

end A190475.P5459401818035555247

/-!
# A190476: The number of partitions of the set {1,2,...,n} into subsets (blocks,cells) having a prime number of elements.

The programs for A190476, there is no canonical definition to state claims against.
-/

/-! ## A190476.P7670537611405567479

`A065715(A001003(n)+(n+1)*∏{p}[n+1, #])`
-/

namespace A190476.P7670537611405567479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065715 (A001003 n + (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℤ)).toNat

end

end A190476.P7670537611405567479

/-! ## A190476.P18203958698829187945

`A161420(A000032(n)-A100883(n))`
-/

namespace A190476.P18203958698829187945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161420 (A000032 n - A100883 n).toNat

end

end A190476.P18203958698829187945

/-! ## A190476.P3042146425353177751

`A006257(A000719(n)^A048762(n))`
-/

namespace A190476.P3042146425353177751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (SequenceMachineLib.roundAway ((A000719 n : ℚ) ^ (A048762 n : ℤ))).toNat

end

end A190476.P3042146425353177751

/-! ## A190476.P3406994200399960178

`A280026(A212804(n)^A110654(n))`
-/

namespace A190476.P3406994200399960178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280026 (SequenceMachineLib.roundAway ((A212804 n : ℚ) ^ (A110654 n : ℤ))).toNat

end

end A190476.P3406994200399960178

/-!
# A190480: Concatenation of first n digits in the concatenation of first n primes written in base 2.

The programs for A190480, there is no canonical definition to state claims against.
-/

/-! ## A190480.P8163032043186192192

`A118240(Δ[round(ϕ*a(n-1))])` with `a(0)=3`
-/

namespace A190480.P8163032043186192192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118240 (f1 (n + 1) - f1 n).toNat

end

end A190480.P8163032043186192192

/-! ## A190480.P10928445606675583096

`A118240(record[round(ϕ*a(n-1))])` with `a(0)=2, a(1)=1`
-/

namespace A190480.P10928445606675583096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118240 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190480.P10928445606675583096

/-! ## A190480.P14896853026237523656

`A118240(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=2, a(1)=2`
-/

namespace A190480.P14896853026237523656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118240 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A190480.P14896853026237523656

/-!
# A190481: Number of distinct integers with n digits which are the image of integers by the function Reverse and Add!.

The programs for A190481, there is no canonical definition to state claims against.
-/

/-! ## A190481.P8258366561877888581

`Δ[A088180(n)]`
-/

namespace A190481.P8258366561877888581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190481.P8258366561877888581

/-! ## A190481.P10741903005924973800

`A088180(n+1)-A088180(n)`
-/

namespace A190481.P10741903005924973800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088180 (n + 1) - A088180 n

end

end A190481.P10741903005924973800

/-!
# A190482: Convex, obtuse, hexagonal lattice numbers.

The programs for A190482, there is no canonical definition to state claims against.
-/

/-! ## A190482.P11490246221410488953

`ceil(lt[A315766(n), A315801(n)]/2)`
-/

namespace A190482.P11490246221410488953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2⌉

end

end A190482.P11490246221410488953

/-!
# A190483: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(2),2,1) and []=floor.

The programs for A190483, the canonical program `A190483.P4919599938302249087` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190483 has offset 1).

The definition of A190483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190483.P8123922309595376910

`floor(A190555(n+1)/2)`
-/

namespace A190483.P8123922309595376910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190555 (n + 1) : ℚ) / 2⌋

end

end A190483.P8123922309595376910

namespace A190483

/-- `floor(A190555(n+1)/2)` -/
def P8123922309595376910.Spec : Prop :=
  ∀ n, P8123922309595376910.a n = A190483 (n + 1)

end A190483

/-! ## A190483.P4919599938302249087

`A159684(2*n+1)+A083035(2*(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190483

/-- `A159684(2*n+1)+A083035(2*(n+1))` -/
def P4919599938302249087.Spec : Prop :=
  ∀ n, P4919599938302249087.a n = A190483 (n + 1)

theorem P4919599938302249087.correct : P4919599938302249087.Spec := by
  intro n
  simp only [A190483, Nat.add_sub_cancel]

end A190483

/-! ## A190483.P3596574509396977231

`A006337(2*(n+1))+A083035(2*(n+1))-1`
-/

namespace A190483.P3596574509396977231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (2 * (n + 1)) + (A083035 (2 * (n + 1)) - 1)

end

end A190483.P3596574509396977231

namespace A190483

/-- `A006337(2*(n+1))+A083035(2*(n+1))-1` -/
def P3596574509396977231.Spec : Prop :=
  ∀ n, P3596574509396977231.a n = A190483 (n + 1)

end A190483

/-! ## A190483.P4310683483587534986

`A087057(2*n+3)%A087057(n+1)`
-/

namespace A190483.P4310683483587534986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087057 (2 * n + 3)) (A087057 (n + 1))

end

end A190483.P4310683483587534986

namespace A190483

/-- `A087057(2*n+3)%A087057(n+1)` -/
def P4310683483587534986.Spec : Prop :=
  ∀ n, P4310683483587534986.a n = A190483 (n + 1)

end A190483

/-! ## A190483.P8677453739808016909

`A289037(2*(n+2))%A289037(n+2)`
-/

namespace A190483.P8677453739808016909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289037 (2 * (n + 2))) (A289037 (n + 2))

end

end A190483.P8677453739808016909

namespace A190483

/-- `A289037(2*(n+2))%A289037(n+2)` -/
def P8677453739808016909.Spec : Prop :=
  ∀ n, P8677453739808016909.a n = A190483 (n + 1)

end A190483

/-! ## A190483.P13373470314373328961

`A003151(2*n+3)%A003152(A001951(n+1)+1)`
-/

namespace A190483.P13373470314373328961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003151 (2 * n + 3)) (A003152 (A001951 (n + 1) + 1).toNat)

end

end A190483.P13373470314373328961

namespace A190483

/-- `A003151(2*n+3)%A003152(A001951(n+1)+1)` -/
def P13373470314373328961.Spec : Prop :=
  ∀ n, P13373470314373328961.a n = A190483 (n + 1)

end A190483

/-! ## A190483.P10719673855518055440

`A001951(A005408(n+1))-A005408(A001951(n+1))`
-/

namespace A190483.P10719673855518055440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A005408 (n + 1)).toNat - A005408 (A001951 (n + 1)).toNat

end

end A190483.P10719673855518055440

namespace A190483

/-- `A001951(A005408(n+1))-A005408(A001951(n+1))` -/
def P10719673855518055440.Spec : Prop :=
  ∀ n, P10719673855518055440.a n = A190483 (n + 1)

end A190483

/-! ## A190483.P11534851557598592866

`A159684(2*n+1)+A004641(A003152(2*(n+1)))`
-/

namespace A190483.P11534851557598592866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (2 * n + 1) + A004641 (A003152 (2 * (n + 1))).toNat

end

end A190483.P11534851557598592866

namespace A190483

/-- `A159684(2*n+1)+A004641(A003152(2*(n+1)))` -/
def P11534851557598592866.Spec : Prop :=
  ∀ n, P11534851557598592866.a n = A190483 (n + 1)

end A190483

/-! ## A190483.P2621565099960583807

`A006337(2*(n+1))-A004641(A001952(n+1)+1)`
-/

namespace A190483.P2621565099960583807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (2 * (n + 1)) - A004641 (A001952 (n + 1) + 1).toNat

end

end A190483.P2621565099960583807

namespace A190483

/-- `A006337(2*(n+1))-A004641(A001952(n+1)+1)` -/
def P2621565099960583807.Spec : Prop :=
  ∀ n, P2621565099960583807.a n = A190483 (n + 1)

end A190483

/-! ## A190483.P1226256824180617894

`∑{e}[A001951(A016825(n+1))-A016825(A001951(n+1)), #]`
-/

namespace A190483.P1226256824180617894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A016825 (n + 1)).toNat - A016825 (A001951 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A190483.P1226256824180617894

namespace A190483

/-- `∑{e}[A001951(A016825(n+1))-A016825(A001951(n+1)), #]` -/
def P1226256824180617894.Spec : Prop :=
  ∀ n, (P1226256824180617894.a n : ℤ) = A190483 (n + 1)

end A190483

/-! ## A190483.P9891526442878969675

`A159684(2*n+1)+A080764(A140868(2*(n+1)))`
-/

namespace A190483.P9891526442878969675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (2 * n + 1) + A080764 (A140868 (2 * (n + 1))).toNat

end

end A190483.P9891526442878969675

namespace A190483

/-- `A159684(2*n+1)+A080764(A140868(2*(n+1)))` -/
def P9891526442878969675.Spec : Prop :=
  ∀ n, P9891526442878969675.a n = A190483 (n + 1)

end A190483

/-! ## A190483.P1761209548739957216

`round(A006337(2*(n+1))/A294180(2*(n+1)))`
-/

namespace A190483.P1761209548739957216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006337 (2 * (n + 1)) : ℚ) / (A294180 (2 * (n + 1)) : ℚ))

end

end A190483.P1761209548739957216

namespace A190483

/-- `round(A006337(2*(n+1))/A294180(2*(n+1)))` -/
def P1761209548739957216.Spec : Prop :=
  ∀ n, P1761209548739957216.a n = A190483 (n + 1)

end A190483

/-!
# A190484: Positions of 0 in A190483.

The programs for A190484, the canonical program `A190484.P14590028091312245075` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190484 has offset 1).

The definition of A190484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7072 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190484.P766744609114688306

`∪[A190497(n+1), A190557(n+1)]`
-/

namespace A190484.P766744609114688306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190484.P766744609114688306

namespace A190484

/-- `∪[A190497(n+1), A190557(n+1)]` -/
def P766744609114688306.Spec : Prop :=
  ∀ n, (P766744609114688306.a n : ℤ) = A190484 (n + 1)

end A190484

/-! ## A190484.P8033473392745229376

`∪[A190545(n+1), A190557(n+1)]`
-/

namespace A190484.P8033473392745229376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190484.P8033473392745229376

namespace A190484

/-- `∪[A190545(n+1), A190557(n+1)]` -/
def P8033473392745229376.Spec : Prop :=
  ∀ n, (P8033473392745229376.a n : ℤ) = A190484 (n + 1)

end A190484

/-! ## A190484.P10069903722712931480

`∪[A190556(n+1), A190557(n+1)]`
-/

namespace A190484.P10069903722712931480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190484.P10069903722712931480

namespace A190484

/-- `∪[A190556(n+1), A190557(n+1)]` -/
def P10069903722712931480.Spec : Prop :=
  ∀ n, (P10069903722712931480.a n : ℤ) = A190484 (n + 1)

end A190484

/-! ## A190484.P14590028091312245075

`record[A026253(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A190484

/-- `record[A026253(n+1)]` -/
def P14590028091312245075.Spec : Prop :=
  ∀ n, P14590028091312245075.a n = A190484 (n + 1)

theorem P14590028091312245075.correct : P14590028091312245075.Spec := by
  intro n
  simp only [A190484, Nat.add_sub_cancel]

end A190484

/-! ## A190484.P12091956710751620178

`∩[A080754(n+1), A327178(n+1)]`
-/

namespace A190484.P12091956710751620178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190484.P12091956710751620178

namespace A190484

/-- `∩[A080754(n+1), A327178(n+1)]` -/
def P12091956710751620178.Spec : Prop :=
  ∀ n, (P12091956710751620178.a n : ℤ) = A190484 (n + 1)

end A190484

/-! ## A190484.P15958578893290038722

`∩[A187973(n+1), A327178(n+1)]`
-/

namespace A190484.P15958578893290038722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190484.P15958578893290038722

namespace A190484

/-- `∩[A187973(n+1), A327178(n+1)]` -/
def P15958578893290038722.Spec : Prop :=
  ∀ n, (P15958578893290038722.a n : ℤ) = A190484 (n + 1)

end A190484

/-! ## A190484.P18283071218091490124

`∩[A187977(n+1), A327178(n+1)]`
-/

namespace A190484.P18283071218091490124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190484.P18283071218091490124

namespace A190484

/-- `∩[A187977(n+1), A327178(n+1)]` -/
def P18283071218091490124.Spec : Prop :=
  ∀ n, (P18283071218091490124.a n : ℤ) = A190484 (n + 1)

end A190484

/-! ## A190484.P2329993879412386182

`A003152(A120752(n+1))`
-/

namespace A190484.P2329993879412386182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (A120752 (n + 1)).toNat

end

end A190484.P2329993879412386182

namespace A190484

/-- `A003152(A120752(n+1))` -/
def P2329993879412386182.Spec : Prop :=
  ∀ n, P2329993879412386182.a n = A190484 (n + 1)

end A190484

/-! ## A190484.P17995095118549587943

`A081477(A090892(n+2))`
-/

namespace A190484.P17995095118549587943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (A090892 (n + 2)).toNat

end

end A190484.P17995095118549587943

namespace A190484

/-- `A081477(A090892(n+2))` -/
def P17995095118549587943.Spec : Prop :=
  ∀ n, P17995095118549587943.a n = A190484 (n + 1)

end A190484

/-! ## A190484.P11858195349567786208

`∩[A003152(n+1), A081477(n+1)]`
-/

namespace A190484.P11858195349567786208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190484.P11858195349567786208

namespace A190484

/-- `∩[A003152(n+1), A081477(n+1)]` -/
def P11858195349567786208.Spec : Prop :=
  ∀ n, (P11858195349567786208.a n : ℤ) = A190484 (n + 1)

end A190484

/-! ## A190484.P11109590970487174063

`∩[A080754(n+1), A081477(n+1)]`
-/

namespace A190484.P11109590970487174063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190484.P11109590970487174063

namespace A190484

/-- `∩[A080754(n+1), A081477(n+1)]` -/
def P11109590970487174063.Spec : Prop :=
  ∀ n, (P11109590970487174063.a n : ℤ) = A190484 (n + 1)

end A190484

/-! ## A190484.P6659888370880570974

`∩[A081477(n+1), A187973(n+1)]`
-/

namespace A190484.P6659888370880570974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190484.P6659888370880570974

namespace A190484

/-- `∩[A081477(n+1), A187973(n+1)]` -/
def P6659888370880570974.Spec : Prop :=
  ∀ n, (P6659888370880570974.a n : ℤ) = A190484 (n + 1)

end A190484

/-! ## A190484.P14673977605559185392

`∩[A081477(n+1), A187977(n+1)]`
-/

namespace A190484.P14673977605559185392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190484.P14673977605559185392

namespace A190484

/-- `∩[A081477(n+1), A187977(n+1)]` -/
def P14673977605559185392.Spec : Prop :=
  ∀ n, (P14673977605559185392.a n : ℤ) = A190484 (n + 1)

end A190484

/-! ## A190484.P18197523954523161429

`∩[A081477(n+1), A190192(n+1)]`
-/

namespace A190484.P18197523954523161429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190484.P18197523954523161429

namespace A190484

/-- `∩[A081477(n+1), A190192(n+1)]` -/
def P18197523954523161429.Spec : Prop :=
  ∀ n, (P18197523954523161429.a n : ℤ) = A190484 (n + 1)

end A190484

/-! ## A190484.P10121115002573191521

`∩[A081477(n+1), A190246(n+1)]`
-/

namespace A190484.P10121115002573191521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190484.P10121115002573191521

namespace A190484

/-- `∩[A081477(n+1), A190246(n+1)]` -/
def P10121115002573191521.Spec : Prop :=
  ∀ n, (P10121115002573191521.a n : ℤ) = A190484 (n + 1)

end A190484

/-! ## A190484.P12344278061596693605

`∩[A081477(n+1), A190488(n+1)]`
-/

namespace A190484.P12344278061596693605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190484.P12344278061596693605

namespace A190484

/-- `∩[A081477(n+1), A190488(n+1)]` -/
def P12344278061596693605.Spec : Prop :=
  ∀ n, (P12344278061596693605.a n : ℤ) = A190484 (n + 1)

end A190484

/-! ## A190484.P1403011585820435168

`∩[A003152(n+1), A327178(n+1)]`
-/

namespace A190484.P1403011585820435168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190484.P1403011585820435168

namespace A190484

/-- `∩[A003152(n+1), A327178(n+1)]` -/
def P1403011585820435168.Spec : Prop :=
  ∀ n, (P1403011585820435168.a n : ℤ) = A190484 (n + 1)

end A190484

/-! ## A190484.P5364999724539457865

`∩[A186219(n+1), A327178(n+1)]`
-/

namespace A190484.P5364999724539457865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190484.P5364999724539457865

namespace A190484

/-- `∩[A186219(n+1), A327178(n+1)]` -/
def P5364999724539457865.Spec : Prop :=
  ∀ n, (P5364999724539457865.a n : ℤ) = A190484 (n + 1)

end A190484

/-! ## A190484.P10091442469180070708

`∩[A186221(n+1), A327178(n+1)]`
-/

namespace A190484.P10091442469180070708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190484.P10091442469180070708

namespace A190484

/-- `∩[A186221(n+1), A327178(n+1)]` -/
def P10091442469180070708.Spec : Prop :=
  ∀ n, (P10091442469180070708.a n : ℤ) = A190484 (n + 1)

end A190484

/-!
# A190485: Positions of 1 in A190483.

The programs for A190485, the canonical program `A190485.P2994477708944207843` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190485 has offset 1).

The definition of A190485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190485.P6209584250148060285

`lt[2, A020639(floor((2*n+1)*sqrt(2))+1)]`
-/

namespace A190485.P6209584250148060285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (⌊(2 * n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190485.P6209584250148060285

namespace A190485

/-- `lt[2, A020639(floor((2*n+1)*sqrt(2))+1)]` -/
def P6209584250148060285.Spec : Prop :=
  ∀ n, (P6209584250148060285.a n : ℤ) = A190485 (n + 1)

end A190485

/-! ## A190485.P2994477708944207843

`∪[A086377(n+1), A186222(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190485

/-- `∪[A086377(n+1), A186222(n+1)]` -/
def P2994477708944207843.Spec : Prop :=
  ∀ n, (P2994477708944207843.a n : ℤ) = A190485 (n + 1)

theorem P2994477708944207843.correct : P2994477708944207843.Spec := by
  intro n
  simp only [A190485, Nat.add_sub_cancel]

end A190485

/-! ## A190485.P15186633966090085470

`∪[A086377(n+1), A190559(n+1)]`
-/

namespace A190485.P15186633966090085470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190485.P15186633966090085470

namespace A190485

/-- `∪[A086377(n+1), A190559(n+1)]` -/
def P15186633966090085470.Spec : Prop :=
  ∀ n, (P15186633966090085470.a n : ℤ) = A190485 (n + 1)

end A190485

/-! ## A190485.P2351879901388190636

`∪[A186222(n+1), A190558(n+1)]`
-/

namespace A190485.P2351879901388190636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190485.P2351879901388190636

namespace A190485

/-- `∪[A186222(n+1), A190558(n+1)]` -/
def P2351879901388190636.Spec : Prop :=
  ∀ n, (P2351879901388190636.a n : ℤ) = A190485 (n + 1)

end A190485

/-! ## A190485.P16785960961589290503

`∪[A190558(n+1), A190559(n+1)]`
-/

namespace A190485.P16785960961589290503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190485.P16785960961589290503

namespace A190485

/-- `∪[A190558(n+1), A190559(n+1)]` -/
def P16785960961589290503.Spec : Prop :=
  ∀ n, (P16785960961589290503.a n : ℤ) = A190485 (n + 1)

end A190485

/-! ## A190485.P18054258579952364705

`eq[1, A190483(n+1)]+1`
-/

namespace A190485.P18054258579952364705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190483 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190485.P18054258579952364705

namespace A190485

/-- `eq[1, A190483(n+1)]+1` -/
def P18054258579952364705.Spec : Prop :=
  ∀ n, (P18054258579952364705.a n : ℤ) = A190485 (n + 1)

end A190485

/-! ## A190485.P16177948709005123121

`eq[2, A020639(A215247(n+1)+1)]`
-/

namespace A190485.P16177948709005123121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A215247 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190485.P16177948709005123121

namespace A190485

/-- `eq[2, A020639(A215247(n+1)+1)]` -/
def P16177948709005123121.Spec : Prop :=
  ∀ n, (P16177948709005123121.a n : ℤ) = A190485 (n + 1)

end A190485

/-! ## A190485.P8769482844619400977

`eq[1, gcd(n, A001953(A001953(n)))]`
-/

namespace A190485.P8769482844619400977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A001953 (A001953 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190485.P8769482844619400977

namespace A190485

/-- `eq[1, gcd(n, A001953(A001953(n)))]` -/
def P8769482844619400977.Spec : Prop :=
  ∀ n, (P8769482844619400977.a n : ℤ) = A190485 (n + 1)

end A190485

/-! ## A190485.P14720946480103014999

`eq[2, A020639(A136119(A136119(n+1)))]`
-/

namespace A190485.P14720946480103014999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A136119 (A136119 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190485.P14720946480103014999

namespace A190485

/-- `eq[2, A020639(A136119(A136119(n+1)))]` -/
def P14720946480103014999.Spec : Prop :=
  ∀ n, (P14720946480103014999.a n : ℤ) = A190485 (n + 1)

end A190485

/-! ## A190485.P11124547241606345351

`eq[0, A083035(2*n+1)]`
-/

namespace A190485.P11124547241606345351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190485.P11124547241606345351

namespace A190485

/-- `eq[0, A083035(2*n+1)]` -/
def P11124547241606345351.Spec : Prop :=
  ∀ n, (P11124547241606345351.a n : ℤ) = A190485 (n + 1)

end A190485

/-! ## A190485.P17920660455255741976

`eq[2, gcd(2, A195119(2*n+1))]`
-/

namespace A190485.P17920660455255741976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A195119 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190485.P17920660455255741976

namespace A190485

/-- `eq[2, gcd(2, A195119(2*n+1))]` -/
def P17920660455255741976.Spec : Prop :=
  ∀ n, (P17920660455255741976.a n : ℤ) = A190485 (n + 1)

end A190485

/-! ## A190485.P17387879946208600167

`lt[1, val(A028982(2*n+1), 2)]`
-/

namespace A190485.P17387879946208600167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028982 (2 * n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190485.P17387879946208600167

namespace A190485

/-- `lt[1, val(A028982(2*n+1), 2)]` -/
def P17387879946208600167.Spec : Prop :=
  ∀ n, (P17387879946208600167.a n : ℤ) = A190485 (n + 1)

end A190485

/-! ## A190485.P972338175263196734

`eq[1, A083035(n+n+1)+1]`
-/

namespace A190485.P972338175263196734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (n + n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190485.P972338175263196734

namespace A190485

/-- `eq[1, A083035(n+n+1)+1]` -/
def P972338175263196734.Spec : Prop :=
  ∀ n, (P972338175263196734.a n : ℤ) = A190485 (n + 1)

end A190485

/-! ## A190485.P8078591190932893646

`eq[1, A019426(A001951(2*n+1))]`
-/

namespace A190485.P8078591190932893646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A001951 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190485.P8078591190932893646

namespace A190485

/-- `eq[1, A019426(A001951(2*n+1))]` -/
def P8078591190932893646.Spec : Prop :=
  ∀ n, (P8078591190932893646.a n : ℤ) = A190485 (n + 1)

end A190485

/-! ## A190485.P9240219019381899134

`eq[2, A020639(A001952(2*n+1))]`
-/

namespace A190485.P9240219019381899134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001952 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190485.P9240219019381899134

namespace A190485

/-- `eq[2, A020639(A001952(2*n+1))]` -/
def P9240219019381899134.Spec : Prop :=
  ∀ n, (P9240219019381899134.a n : ℤ) = A190485 (n + 1)

end A190485

/-! ## A190485.P17296604178711769551

`lt[A082532(2*n+1), A001951(2*n)]`
-/

namespace A190485.P17296604178711769551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082532 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190485.P17296604178711769551

namespace A190485

/-- `lt[A082532(2*n+1), A001951(2*n)]` -/
def P17296604178711769551.Spec : Prop :=
  ∀ n, (P17296604178711769551.a n : ℤ) = A190485 (n + 1)

end A190485

/-! ## A190485.P11360907005604288782

`lt[A348295(2*n+1), A348295(2*n)]`
-/

namespace A190485.P11360907005604288782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348295 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348295 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190485.P11360907005604288782

namespace A190485

/-- `lt[A348295(2*n+1), A348295(2*n)]` -/
def P11360907005604288782.Spec : Prop :=
  ∀ n, (P11360907005604288782.a n : ℤ) = A190485 (n + 1)

end A190485

/-! ## A190485.P5463966938337507030

`eq[n*A188374(2*n+1), A324772(2*n+1)]`
-/

namespace A190485.P5463966938337507030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A188374 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324772 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190485.P5463966938337507030

namespace A190485

/-- `eq[n*A188374(2*n+1), A324772(2*n+1)]` -/
def P5463966938337507030.Spec : Prop :=
  ∀ n, (P5463966938337507030.a n : ℤ) = A190485 (n + 1)

end A190485

/-! ## A190485.P8037196566600345648

`lt[A093178(A001951(2*n+1)), A001951(n+1)]`
-/

namespace A190485.P8037196566600345648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A001951 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190485.P8037196566600345648

namespace A190485

/-- `lt[A093178(A001951(2*n+1)), A001951(n+1)]` -/
def P8037196566600345648.Spec : Prop :=
  ∀ n, (P8037196566600345648.a n : ℤ) = A190485 (n + 1)

end A190485

/-! ## A190485.P10925494040113404181

`lt[A026252(A026249(2*n+1)), A026252(n+2)]`
-/

namespace A190485.P10925494040113404181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (A026249 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190485.P10925494040113404181

namespace A190485

/-- `lt[A026252(A026249(2*n+1)), A026252(n+2)]` -/
def P10925494040113404181.Spec : Prop :=
  ∀ n, (P10925494040113404181.a n : ℤ) = A190485 (n + 1)

end A190485

/-!
# A190486: Positions of 2 in A190483.

The programs for A190486, the canonical program `A190486.P7151920494550068857` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190486 has offset 1).

The definition of A190486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190486.P7151920494550068857

`∩[A003151(n+1), A003153(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190486

/-- `∩[A003151(n+1), A003153(n+1)]` -/
def P7151920494550068857.Spec : Prop :=
  ∀ n, (P7151920494550068857.a n : ℤ) = A190486 (n + 1)

theorem P7151920494550068857.correct : P7151920494550068857.Spec := by
  intro n
  simp only [A190486, Nat.add_sub_cancel]

end A190486

/-! ## A190486.P17232137565691911357

`∩[A003153(n+1), A059649(n+1)]`
-/

namespace A190486.P17232137565691911357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190486.P17232137565691911357

namespace A190486

/-- `∩[A003153(n+1), A059649(n+1)]` -/
def P17232137565691911357.Spec : Prop :=
  ∀ n, (P17232137565691911357.a n : ℤ) = A190486 (n + 1)

end A190486

/-! ## A190486.P1057936187812974846

`∩[A003153(n+1), A187971(n+1)]`
-/

namespace A190486.P1057936187812974846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190486.P1057936187812974846

namespace A190486

/-- `∩[A003153(n+1), A187971(n+1)]` -/
def P1057936187812974846.Spec : Prop :=
  ∀ n, (P1057936187812974846.a n : ℤ) = A190486 (n + 1)

end A190486

/-! ## A190486.P2574016477223062551

`∩[A003153(n+1), A188045(n+1)]`
-/

namespace A190486.P2574016477223062551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190486.P2574016477223062551

namespace A190486

/-- `∩[A003153(n+1), A188045(n+1)]` -/
def P2574016477223062551.Spec : Prop :=
  ∀ n, (P2574016477223062551.a n : ℤ) = A190486 (n + 1)

end A190486

/-! ## A190486.P14805791489360019625

`∩[A003153(n+1), A190490(n+1)]`
-/

namespace A190486.P14805791489360019625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190486.P14805791489360019625

namespace A190486

/-- `∩[A003153(n+1), A190490(n+1)]` -/
def P14805791489360019625.Spec : Prop :=
  ∀ n, (P14805791489360019625.a n : ℤ) = A190486 (n + 1)

end A190486

/-! ## A190486.P969146436965501940

`∩[A003153(n+1), A190500(n+1)]`
-/

namespace A190486.P969146436965501940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190486.P969146436965501940

namespace A190486

/-- `∩[A003153(n+1), A190500(n+1)]` -/
def P969146436965501940.Spec : Prop :=
  ∀ n, (P969146436965501940.a n : ℤ) = A190486 (n + 1)

end A190486

/-! ## A190486.P12579560138822068913

`∩[A003153(n+1), A190548(n+1)]`
-/

namespace A190486.P12579560138822068913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190486.P12579560138822068913

namespace A190486

/-- `∩[A003153(n+1), A190548(n+1)]` -/
def P12579560138822068913.Spec : Prop :=
  ∀ n, (P12579560138822068913.a n : ℤ) = A190486 (n + 1)

end A190486

/-! ## A190486.P10900324832228739647

`∩[A003153(n+1), A187978(n+1)]`
-/

namespace A190486.P10900324832228739647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190486.P10900324832228739647

namespace A190486

/-- `∩[A003153(n+1), A187978(n+1)]` -/
def P10900324832228739647.Spec : Prop :=
  ∀ n, (P10900324832228739647.a n : ℤ) = A190486 (n + 1)

end A190486

/-! ## A190486.P15903862655425595734

`∩[A003153(n+1), A190193(n+1)]`
-/

namespace A190486.P15903862655425595734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190486.P15903862655425595734

namespace A190486

/-- `∩[A003153(n+1), A190193(n+1)]` -/
def P15903862655425595734.Spec : Prop :=
  ∀ n, (P15903862655425595734.a n : ℤ) = A190486 (n + 1)

end A190486

/-! ## A190486.P13716869655310544094

`∩[A003153(n+1), A190247(n+1)]`
-/

namespace A190486.P13716869655310544094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190486.P13716869655310544094

namespace A190486

/-- `∩[A003153(n+1), A190247(n+1)]` -/
def P13716869655310544094.Spec : Prop :=
  ∀ n, (P13716869655310544094.a n : ℤ) = A190486 (n + 1)

end A190486

/-! ## A190486.P18128792955886314163

`∩[A003151(n+1), A327179(n+1)]`
-/

namespace A190486.P18128792955886314163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190486.P18128792955886314163

namespace A190486

/-- `∩[A003151(n+1), A327179(n+1)]` -/
def P18128792955886314163.Spec : Prop :=
  ∀ n, (P18128792955886314163.a n : ℤ) = A190486 (n + 1)

end A190486

/-! ## A190486.P3533670658669856117

`∩[A003153(n+1), A327179(n+1)]`
-/

namespace A190486.P3533670658669856117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190486.P3533670658669856117

namespace A190486

/-- `∩[A003153(n+1), A327179(n+1)]` -/
def P3533670658669856117.Spec : Prop :=
  ∀ n, (P3533670658669856117.a n : ℤ) = A190486 (n + 1)

end A190486

/-! ## A190486.P14235897925503744109

`∩[A059649(n+1), A327179(n+1)]`
-/

namespace A190486.P14235897925503744109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190486.P14235897925503744109

namespace A190486

/-- `∩[A059649(n+1), A327179(n+1)]` -/
def P14235897925503744109.Spec : Prop :=
  ∀ n, (P14235897925503744109.a n : ℤ) = A190486 (n + 1)

end A190486

/-! ## A190486.P16232904218961660472

`∩[A327179(n+1), A080652(n+1)]`
-/

namespace A190486.P16232904218961660472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190486.P16232904218961660472

namespace A190486

/-- `∩[A327179(n+1), A080652(n+1)]` -/
def P16232904218961660472.Spec : Prop :=
  ∀ n, (P16232904218961660472.a n : ℤ) = A190486 (n + 1)

end A190486

/-! ## A190486.P4471631643048459829

`∩[A190500(n+1), A327179(n+1)]`
-/

namespace A190486.P4471631643048459829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190486.P4471631643048459829

namespace A190486

/-- `∩[A190500(n+1), A327179(n+1)]` -/
def P4471631643048459829.Spec : Prop :=
  ∀ n, (P4471631643048459829.a n : ℤ) = A190486 (n + 1)

end A190486

/-! ## A190486.P3110409463960333768

`∩[A327179(n+1), A190548(n+1)]`
-/

namespace A190486.P3110409463960333768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190486.P3110409463960333768

namespace A190486

/-- `∩[A327179(n+1), A190548(n+1)]` -/
def P3110409463960333768.Spec : Prop :=
  ∀ n, (P3110409463960333768.a n : ℤ) = A190486 (n + 1)

end A190486

/-! ## A190486.P5985755332576752225

`A080755(A190765(n+1))`
-/

namespace A190486.P5985755332576752225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (A190765 (n + 1)).toNat

end

end A190486.P5985755332576752225

namespace A190486

/-- `A080755(A190765(n+1))` -/
def P5985755332576752225.Spec : Prop :=
  ∀ n, P5985755332576752225.a n = A190486 (n + 1)

end A190486

/-! ## A190486.P6042763476836954119

`∩[A003153(n+1), A083088(n)]`
-/

namespace A190486.P6042763476836954119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190486.P6042763476836954119

namespace A190486

/-- `∩[A003153(n+1), A083088(n)]` -/
def P6042763476836954119.Spec : Prop :=
  ∀ n, (P6042763476836954119.a n : ℤ) = A190486 (n + 1)

end A190486

/-! ## A190486.P82924730100616046

`∩[A186221(n+1), A083088(n)]`
-/

namespace A190486.P82924730100616046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190486.P82924730100616046

namespace A190486

/-- `∩[A186221(n+1), A083088(n)]` -/
def P82924730100616046.Spec : Prop :=
  ∀ n, (P82924730100616046.a n : ℤ) = A190486 (n + 1)

end A190486

/-! ## A190486.P2934848232899738360

`∩[A003153(n+1), A080755(n+1)]`
-/

namespace A190486.P2934848232899738360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190486.P2934848232899738360

namespace A190486

/-- `∩[A003153(n+1), A080755(n+1)]` -/
def P2934848232899738360.Spec : Prop :=
  ∀ n, (P2934848232899738360.a n : ℤ) = A190486 (n + 1)

end A190486

/-!
# A190487: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(2),3,0) and []=floor.

The programs for A190487, the canonical program `A190487.P15784796795895299452` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190487 has offset 1).

The definition of A190487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190487.P15784796795895299452

`floor((n+1)*sqrt(18))%3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A190487

/-- `floor((n+1)*sqrt(18))%3` -/
def P15784796795895299452.Spec : Prop :=
  ∀ n, P15784796795895299452.a n = A190487 (n + 1)

theorem P15784796795895299452.correct : P15784796795895299452.Spec := by
  intro n
  simp only [A190487, Nat.add_sub_cancel]

end A190487

/-! ## A190487.P4689131239814791917

`A197879(n+1)+A190245(n+1)`
-/

namespace A190487.P4689131239814791917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (n + 1) + A190245 (n + 1)

end

end A190487.P4689131239814791917

namespace A190487

/-- `A197879(n+1)+A190245(n+1)` -/
def P4689131239814791917.Spec : Prop :=
  ∀ n, P4689131239814791917.a n = A190487 (n + 1)

end A190487

/-! ## A190487.P13757687594605355243

`A190766(2*(n+1))`
-/

namespace A190487.P13757687594605355243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190766 (2 * (n + 1))

end

end A190487.P13757687594605355243

namespace A190487

/-- `A190766(2*(n+1))` -/
def P13757687594605355243.Spec : Prop :=
  ∀ n, P13757687594605355243.a n = A190487 (n + 1)

end A190487

/-! ## A190487.P8931216802183421684

`A190191(2*(n+1))+A083035(2*(n+1))`
-/

namespace A190487.P8931216802183421684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190191 (2 * (n + 1)) + A083035 (2 * (n + 1))

end

end A190487.P8931216802183421684

namespace A190487

/-- `A190191(2*(n+1))+A083035(2*(n+1))` -/
def P8931216802183421684.Spec : Prop :=
  ∀ n, P8931216802183421684.a n = A190487 (n + 1)

end A190487

/-! ## A190487.P12326864433261415443

`dr(A288998(3*n+1)%3)`
-/

namespace A190487.P12326864433261415443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A288998 (3 * n + 1)) 3)

end

end A190487.P12326864433261415443

namespace A190487

/-- `dr(A288998(3*n+1)%3)` -/
def P12326864433261415443.Spec : Prop :=
  ∀ n, (P12326864433261415443.a n : ℤ) = A190487 (n + 1)

end A190487

/-! ## A190487.P4669431589318070420

`A001951(A008585(n+1))-A008585(A001951(n+1))`
-/

namespace A190487.P4669431589318070420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A008585 (n + 1)).toNat - A008585 (A001951 (n + 1)).toNat

end

end A190487.P4669431589318070420

namespace A190487

/-- `A001951(A008585(n+1))-A008585(A001951(n+1))` -/
def P4669431589318070420.Spec : Prop :=
  ∀ n, P4669431589318070420.a n = A190487 (n + 1)

end A190487

/-! ## A190487.P7800386094085708611

`A097508(A008585(n+1))-A008585(A097508(n+1))`
-/

namespace A190487.P7800386094085708611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A008585 (n + 1)).toNat - A008585 (A097508 (n + 1)).toNat

end

end A190487.P7800386094085708611

namespace A190487

/-- `A097508(A008585(n+1))-A008585(A097508(n+1))` -/
def P7800386094085708611.Spec : Prop :=
  ∀ n, P7800386094085708611.a n = A190487 (n + 1)

end A190487

/-! ## A190487.P1059269907271953679

`A008585(A195176(n+1))-A195176(A008585(n+1))`
-/

namespace A190487.P1059269907271953679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A195176 (n + 1)).toNat - A195176 (A008585 (n + 1)).toNat

end

end A190487.P1059269907271953679

namespace A190487

/-- `A008585(A195176(n+1))-A195176(A008585(n+1))` -/
def P1059269907271953679.Spec : Prop :=
  ∀ n, P1059269907271953679.a n = A190487 (n + 1)

end A190487

/-! ## A190487.P9447644551836244974

`A286667(6*n+5)-A016789(A286667(2*n+1))`
-/

namespace A190487.P9447644551836244974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286667 (6 * n + 5) - A016789 (A286667 (2 * n + 1)).toNat

end

end A190487.P9447644551836244974

namespace A190487

/-- `A286667(6*n+5)-A016789(A286667(2*n+1))` -/
def P9447644551836244974.Spec : Prop :=
  ∀ n, P9447644551836244974.a n = A190487 (n + 1)

end A190487

/-!
# A190488: Positions of 0 in A190487.

The programs for A190488, there is no canonical definition to state claims against.
-/

/-! ## A190488.P17572317331076501309

`A190495(n+1)-A190774(n+1)`
-/

namespace A190488.P17572317331076501309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190495 (n + 1) - A190774 (n + 1)

end

end A190488.P17572317331076501309

/-! ## A190488.P18427681295040924938

`A190771(n+1)-A190495(n+1)`
-/

namespace A190488.P18427681295040924938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190771 (n + 1) - A190495 (n + 1)

end

end A190488.P18427681295040924938

/-! ## A190488.P2585701725696943727

`A190497(n+1)%A190495(n+1)`
-/

namespace A190488.P2585701725696943727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190497 (n + 1)) (A190495 (n + 1))

end

end A190488.P2585701725696943727

/-! ## A190488.P2695814272904305746

`2*A190771(n+1)-A190497(n+1)`
-/

namespace A190488.P2695814272904305746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190771 (n + 1) - A190497 (n + 1)

end

end A190488.P2695814272904305746

/-! ## A190488.P4107025036453316839

`∩[A080754(n+1), A190246(n+1)]`
-/

namespace A190488.P4107025036453316839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190488.P4107025036453316839

/-! ## A190488.P5513776054825030803

`∩[A187973(n+1), A190246(n+1)]`
-/

namespace A190488.P5513776054825030803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190488.P5513776054825030803

/-! ## A190488.P11044910835827277827

`∩[A186219(n+1), A190246(n+1)]`
-/

namespace A190488.P11044910835827277827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190488.P11044910835827277827

/-! ## A190488.P4008048303774538660

`∩[A186221(n+1), A190246(n+1)]`
-/

namespace A190488.P4008048303774538660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190488.P4008048303774538660

/-! ## A190488.P1213784046309971768

`∩[A186315(n+1), A190246(n+1)]`
-/

namespace A190488.P1213784046309971768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190488.P1213784046309971768

/-! ## A190488.P8815052259667978287

`∩[A186317(n+1), A190246(n+1)]`
-/

namespace A190488.P8815052259667978287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190488.P8815052259667978287

/-! ## A190488.P9704185178030191443

`∩[A186342(n+1), A190246(n+1)]`
-/

namespace A190488.P9704185178030191443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190488.P9704185178030191443

/-! ## A190488.P17699919406144266510

`∩[A186344(n+1), A190246(n+1)]`
-/

namespace A190488.P17699919406144266510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190488.P17699919406144266510

/-! ## A190488.P16823114953492217691

`∩[A190246(n+1), A285074(n+1)]`
-/

namespace A190488.P16823114953492217691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190488.P16823114953492217691

/-! ## A190488.P732725683297777250

`∩[A190246(n+1), A285077(n+1)]`
-/

namespace A190488.P732725683297777250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190488.P732725683297777250

/-! ## A190488.P3704767582665657593

`∩[A081477(n+1)-2, A190246(n+1)]`
-/

namespace A190488.P3704767582665657593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190488.P3704767582665657593

/-! ## A190488.P5513641929826238818

`lt[2, A024539(n+1)]+1`
-/

namespace A190488.P5513641929826238818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A190488.P5513641929826238818

/-! ## A190488.P5046679511134177345

`eq[n, A190487(n+1)+n]+1`
-/

namespace A190488.P5046679511134177345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190487 (n + 1) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190488.P5046679511134177345

/-! ## A190488.P8618000935426173344

`filter[A190246(n+1), A188037(#)]`
-/

namespace A190488.P8618000935426173344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188037 (f1 j).toNat = 1) n)

end

end A190488.P8618000935426173344

/-! ## A190488.P730910352960318647

`record[A190245(a(n-1)+1)*A190246(n+1)]` with `a(0)=3`
-/

namespace A190488.P730910352960318647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A190245 (f1 (n - 1) + 1).toNat * A190246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190488.P730910352960318647

/-! ## A190488.P10389709808605440621

`A026249(A190774(n+1))`
-/

namespace A190488.P10389709808605440621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A190774 (n + 1)).toNat

end

end A190488.P10389709808605440621

/-!
# A190489: Positions of 1 in A190487.

The programs for A190489, the canonical program `A190489.P3317402646554252033` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190489 has offset 1).

The definition of A190489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190489.P3317402646554252033

`eq[1, A190487(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190489

/-- `eq[1, A190487(n+1)]+1` -/
def P3317402646554252033.Spec : Prop :=
  ∀ n, (P3317402646554252033.a n : ℤ) = A190489 (n + 1)

theorem P3317402646554252033.correct : P3317402646554252033.Spec := by
  intro n
  simp only [A190489, Nat.add_sub_cancel]

end A190489

/-! ## A190489.P16664218776637708694

`record[gcd(A190487(n+1)+n, A008619(2*n))]`
-/

namespace A190489.P16664218776637708694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A190487 (n + 1) + (n : ℤ)) (A008619 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190489.P16664218776637708694

namespace A190489

/-- `record[gcd(A190487(n+1)+n, A008619(2*n))]` -/
def P16664218776637708694.Spec : Prop :=
  ∀ n, (P16664218776637708694.a n : ℤ) = A190489 (n + 1)

end A190489

/-! ## A190489.P8885632291280342787

`eq[1, A190766(2*(n+1))]+1`
-/

namespace A190489.P8885632291280342787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190766 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190489.P8885632291280342787

namespace A190489

/-- `eq[1, A190766(2*(n+1))]+1` -/
def P8885632291280342787.Spec : Prop :=
  ∀ n, (P8885632291280342787.a n : ℤ) = A190489 (n + 1)

end A190489

/-! ## A190489.P16241538758254811939

`record[A001057(A190487(n+1)+2*n)]`
-/

namespace A190489.P16241538758254811939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A190487 (n + 1) + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190489.P16241538758254811939

namespace A190489

/-- `record[A001057(A190487(n+1)+2*n)]` -/
def P16241538758254811939.Spec : Prop :=
  ∀ n, P16241538758254811939.a n = A190489 (n + 1)

end A190489

/-! ## A190489.P5699365220560988277

`eq[A008611(A097508(3*n)), A097508(n)]`
-/

namespace A190489.P5699365220560988277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A097508 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190489.P5699365220560988277

namespace A190489

/-- `eq[A008611(A097508(3*n)), A097508(n)]` -/
def P5699365220560988277.Spec : Prop :=
  ∀ n, (P5699365220560988277.a n : ℤ) = A190489 (n + 1)

end A190489

/-! ## A190489.P5433586887311277699

`eq[1, A103627(A001951(3*n))]`
-/

namespace A190489.P5433586887311277699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A001951 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190489.P5433586887311277699

namespace A190489

/-- `eq[1, A103627(A001951(3*n))]` -/
def P5433586887311277699.Spec : Prop :=
  ∀ n, (P5433586887311277699.a n : ℤ) = A190489 (n + 1)

end A190489

/-! ## A190489.P10858171722677461500

`eq[1, A070098(A008458(n))%3]`
-/

namespace A190489.P10858171722677461500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070098 (A008458 n).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190489.P10858171722677461500

namespace A190489

/-- `eq[1, A070098(A008458(n))%3]` -/
def P10858171722677461500.Spec : Prop :=
  ∀ n, (P10858171722677461500.a n : ℤ) = A190489 (n + 1)

end A190489

/-!
# A190490: Positions of 2 in A190487.

The programs for A190490, the canonical program `A190490.P4746224311155637002` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190490 has offset 1).

The definition of A190490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190490.P4746224311155637002

`∩[A003151(n+1), A190247(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190490

/-- `∩[A003151(n+1), A190247(n+1)]` -/
def P4746224311155637002.Spec : Prop :=
  ∀ n, (P4746224311155637002.a n : ℤ) = A190490 (n + 1)

theorem P4746224311155637002.correct : P4746224311155637002.Spec := by
  intro n
  simp only [A190490, Nat.add_sub_cancel]

end A190490

/-! ## A190490.P1207214043240268527

`∩[A187978(n+1), A190247(n+1)]`
-/

namespace A190490.P1207214043240268527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190490.P1207214043240268527

namespace A190490

/-- `∩[A187978(n+1), A190247(n+1)]` -/
def P1207214043240268527.Spec : Prop :=
  ∀ n, (P1207214043240268527.a n : ℤ) = A190490 (n + 1)

end A190490

/-! ## A190490.P16681388430835716092

`∩[A188045(n+1), A190247(n+1)]`
-/

namespace A190490.P16681388430835716092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190490.P16681388430835716092

namespace A190490

/-- `∩[A188045(n+1), A190247(n+1)]` -/
def P16681388430835716092.Spec : Prop :=
  ∀ n, (P16681388430835716092.a n : ℤ) = A190490 (n + 1)

end A190490

/-! ## A190490.P4588080390194029397

`∩[A190247(n+1), A327207(n+1)]`
-/

namespace A190490.P4588080390194029397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190490.P4588080390194029397

namespace A190490

/-- `∩[A190247(n+1), A327207(n+1)]` -/
def P4588080390194029397.Spec : Prop :=
  ∀ n, (P4588080390194029397.a n : ℤ) = A190490 (n + 1)

end A190490

/-! ## A190490.P9535708234959805970

`∩[A190247(n+1), A286667(n+1)]`
-/

namespace A190490.P9535708234959805970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190490.P9535708234959805970

namespace A190490

/-- `∩[A190247(n+1), A286667(n+1)]` -/
def P9535708234959805970.Spec : Prop :=
  ∀ n, (P9535708234959805970.a n : ℤ) = A190490 (n + 1)

end A190490

/-! ## A190490.P15387531100487704186

`eq[2, A190487(n+1)]+1`
-/

namespace A190490.P15387531100487704186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190487 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190490.P15387531100487704186

namespace A190490

/-- `eq[2, A190487(n+1)]+1` -/
def P15387531100487704186.Spec : Prop :=
  ∀ n, (P15387531100487704186.a n : ℤ) = A190490 (n + 1)

end A190490

/-! ## A190490.P791692576544099739

`filter[A003151(n+1), A190245(#)]`
-/

namespace A190490.P791692576544099739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190245 (f1 j).toNat = 1) n)

end

end A190490.P791692576544099739

namespace A190490

/-- `filter[A003151(n+1), A190245(#)]` -/
def P791692576544099739.Spec : Prop :=
  ∀ n, P791692576544099739.a n = A190490 (n + 1)

end A190490

/-! ## A190490.P5507170451271094544

`filter[A187978(n+1), A190245(#)]`
-/

namespace A190490.P5507170451271094544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190245 (f1 j).toNat = 1) n)

end

end A190490.P5507170451271094544

namespace A190490

/-- `filter[A187978(n+1), A190245(#)]` -/
def P5507170451271094544.Spec : Prop :=
  ∀ n, P5507170451271094544.a n = A190490 (n + 1)

end A190490

/-! ## A190490.P16182607248330606686

`filter[A190247(n+1), A187976(#)]`
-/

namespace A190490.P16182607248330606686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187976 (f1 j).toNat = 1) n)

end

end A190490.P16182607248330606686

namespace A190490

/-- `filter[A190247(n+1), A187976(#)]` -/
def P16182607248330606686.Spec : Prop :=
  ∀ n, P16182607248330606686.a n = A190490 (n + 1)

end A190490

/-! ## A190490.P4939683211956408591

`filter[A188045(n+1), A190245(#)]`
-/

namespace A190490.P4939683211956408591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190245 (f1 j).toNat = 1) n)

end

end A190490.P4939683211956408591

namespace A190490

/-- `filter[A188045(n+1), A190245(#)]` -/
def P4939683211956408591.Spec : Prop :=
  ∀ n, P4939683211956408591.a n = A190490 (n + 1)

end A190490

/-! ## A190490.P11247850326310400308

`filter[A190247(n+1), A197879(#)]`
-/

namespace A190490.P11247850326310400308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A197879 (f1 j).toNat = 1) n)

end

end A190490.P11247850326310400308

namespace A190490

/-- `filter[A190247(n+1), A197879(#)]` -/
def P11247850326310400308.Spec : Prop :=
  ∀ n, P11247850326310400308.a n = A190490 (n + 1)

end A190490

/-! ## A190490.P11829247422396955801

`filter[A190247(n+1), A286665(#)]`
-/

namespace A190490.P11829247422396955801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286665 (f1 j).toNat = 1) n)

end

end A190490.P11829247422396955801

namespace A190490

/-- `filter[A190247(n+1), A286665(#)]` -/
def P11829247422396955801.Spec : Prop :=
  ∀ n, P11829247422396955801.a n = A190490 (n + 1)

end A190490

/-! ## A190490.P5936006047093873913

`filter[A286667(n+1), A190245(#)]`
-/

namespace A190490.P5936006047093873913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190245 (f1 j).toNat = 1) n)

end

end A190490.P5936006047093873913

namespace A190490

/-- `filter[A286667(n+1), A190245(#)]` -/
def P5936006047093873913.Spec : Prop :=
  ∀ n, P5936006047093873913.a n = A190490 (n + 1)

end A190490

/-! ## A190490.P14099981450050220214

`filter[A190247(n+1), A327205(#)]`
-/

namespace A190490.P14099981450050220214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327205 (f1 j).toNat = 1) n)

end

end A190490.P14099981450050220214

namespace A190490

/-- `filter[A190247(n+1), A327205(#)]` -/
def P14099981450050220214.Spec : Prop :=
  ∀ n, P14099981450050220214.a n = A190490 (n + 1)

end A190490

/-! ## A190490.P16900963934120615210

`filter[A327207(n+1), A190245(#)]`
-/

namespace A190490.P16900963934120615210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190245 (f1 j).toNat = 1) n)

end

end A190490.P16900963934120615210

namespace A190490

/-- `filter[A327207(n+1), A190245(#)]` -/
def P16900963934120615210.Spec : Prop :=
  ∀ n, P16900963934120615210.a n = A190490 (n + 1)

end A190490

/-! ## A190490.P13220811232957438303

`filter[A187968(2*(n+1)), A190245(#)]`
-/

namespace A190490.P13220811232957438303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190245 (f1 j).toNat = 1) n)

end

end A190490.P13220811232957438303

namespace A190490

/-- `filter[A187968(2*(n+1)), A190245(#)]` -/
def P13220811232957438303.Spec : Prop :=
  ∀ n, P13220811232957438303.a n = A190490 (n + 1)

end A190490

/-! ## A190490.P16425929471933549859

`eq[A024539(n+1), A190245(n+1)]+1`
-/

namespace A190490.P16425929471933549859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190245 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190490.P16425929471933549859

namespace A190490

/-- `eq[A024539(n+1), A190245(n+1)]+1` -/
def P16425929471933549859.Spec : Prop :=
  ∀ n, (P16425929471933549859.a n : ℤ) = A190490 (n + 1)

end A190490

/-! ## A190490.P8386269568145892971

`filter[A280471(3*(n+1)), A190245(#)]`
-/

namespace A190490.P8386269568145892971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280471 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190245 (f1 j).toNat = 1) n)

end

end A190490.P8386269568145892971

namespace A190490

/-- `filter[A280471(3*(n+1)), A190245(#)]` -/
def P8386269568145892971.Spec : Prop :=
  ∀ n, P8386269568145892971.a n = A190490 (n + 1)

end A190490

/-! ## A190490.P10628336011242059752

`eq[2, A190766(2*(n+1))]+1`
-/

namespace A190490.P10628336011242059752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190766 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190490.P10628336011242059752

namespace A190490

/-- `eq[2, A190766(2*(n+1))]+1` -/
def P10628336011242059752.Spec : Prop :=
  ∀ n, (P10628336011242059752.a n : ℤ) = A190490 (n + 1)

end A190490

/-! ## A190490.P3578132339408547567

`∩[A188376(2*(n+1)), A190193(n+2)]/2`
-/

namespace A190490.P3578132339408547567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190193 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A190490.P3578132339408547567

namespace A190490

/-- `∩[A188376(2*(n+1)), A190193(n+2)]/2` -/
def P3578132339408547567.Spec : Prop :=
  ∀ n, P3578132339408547567.a n = (A190490 (n + 1) : ℚ)

end A190490

/-!
# A190491: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(2),3,1) and []=floor.

The programs for A190491, the canonical program `A190491.P14507808460934527920` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190491 has offset 1).

The definition of A190491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190491.P14507808460934527920

`A190775(2*(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190491

/-- `A190775(2*(n+1))` -/
def P14507808460934527920.Spec : Prop :=
  ∀ n, P14507808460934527920.a n = A190491 (n + 1)

theorem P14507808460934527920.correct : P14507808460934527920.Spec := by
  intro n
  simp only [A190491, Nat.add_sub_cancel]

end A190491

/-! ## A190491.P8856510321038412008

`A288999(3*(n+1))%comp[A001951(n)]`
-/

namespace A190491.P8856510321038412008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288999 (3 * (n + 1))) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A190491.P8856510321038412008

namespace A190491

/-- `A288999(3*(n+1))%comp[A001951(n)]` -/
def P8856510321038412008.Spec : Prop :=
  ∀ n, P8856510321038412008.a n = A190491 (n + 1)

end A190491

/-! ## A190491.P8003816456639288129

`A080754(3*n+4)%A080754(n+1)`
-/

namespace A190491.P8003816456639288129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080754 (3 * n + 4)) (A080754 (n + 1))

end

end A190491.P8003816456639288129

namespace A190491

/-- `A080754(3*n+4)%A080754(n+1)` -/
def P8003816456639288129.Spec : Prop :=
  ∀ n, P8003816456639288129.a n = A190491 (n + 1)

end A190491

/-! ## A190491.P15037631496357068000

`A001952(3*n+4)%(A001952(n+1)+1)`
-/

namespace A190491.P15037631496357068000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001952 (3 * n + 4)) (A001952 (n + 1) + 1)

end

end A190491.P15037631496357068000

namespace A190491

/-- `A001952(3*n+4)%(A001952(n+1)+1)` -/
def P15037631496357068000.Spec : Prop :=
  ∀ n, P15037631496357068000.a n = A190491 (n + 1)

end A190491

/-! ## A190491.P5907636374656144718

`A190487(n+1)+A159684(A016789(n))`
-/

namespace A190491.P5907636374656144718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190487 (n + 1) + A159684 (A016789 n).toNat

end

end A190491.P5907636374656144718

namespace A190491

/-- `A190487(n+1)+A159684(A016789(n))` -/
def P5907636374656144718.Spec : Prop :=
  ∀ n, P5907636374656144718.a n = A190491 (n + 1)

end A190491

/-! ## A190491.P7767650974432307282

`A286923(A016777(n+1))%(A286923(n+1)+2)`
-/

namespace A190491.P7767650974432307282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286923 (A016777 (n + 1)).toNat) (A286923 (n + 1) + 2)

end

end A190491.P7767650974432307282

namespace A190491

/-- `A286923(A016777(n+1))%(A286923(n+1)+2)` -/
def P7767650974432307282.Spec : Prop :=
  ∀ n, P7767650974432307282.a n = A190491 (n + 1)

end A190491

/-! ## A190491.P14152635536385831739

`A000027(A288999(3*(n+1)))%A001952(n+1)`
-/

namespace A190491.P14152635536385831739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A288999 (3 * (n + 1))).toNat) (A001952 (n + 1))

end

end A190491.P14152635536385831739

namespace A190491

/-- `A000027(A288999(3*(n+1)))%A001952(n+1)` -/
def P14152635536385831739.Spec : Prop :=
  ∀ n, P14152635536385831739.a n = A190491 (n + 1)

end A190491

/-! ## A190491.P5999603110279505351

`A001951(A016777(n+1))-A016777(A001951(n+1))`
-/

namespace A190491.P5999603110279505351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A016777 (n + 1)).toNat - A016777 (A001951 (n + 1)).toNat

end

end A190491.P5999603110279505351

namespace A190491

/-- `A001951(A016777(n+1))-A016777(A001951(n+1))` -/
def P5999603110279505351.Spec : Prop :=
  ∀ n, P5999603110279505351.a n = A190491 (n + 1)

end A190491

/-! ## A190491.P4460981838796549128

`A016777(A195119(n+1))-A195119(A016777(n+1))`
-/

namespace A190491.P4460981838796549128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A195119 (n + 1)).toNat - A195119 (A016777 (n + 1)).toNat

end

end A190491.P4460981838796549128

namespace A190491

/-- `A016777(A195119(n+1))-A195119(A016777(n+1))` -/
def P4460981838796549128.Spec : Prop :=
  ∀ n, P4460981838796549128.a n = A190491 (n + 1)

end A190491

/-!
# A190492: Positions of 0 in A190491.

The programs for A190492, there is no canonical definition to state claims against.
-/

/-! ## A190492.P5738319264757679198

`A003152(A190767(n+1))`
-/

namespace A190492.P5738319264757679198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (A190767 (n + 1)).toNat

end

end A190492.P5738319264757679198

/-! ## A190492.P4124723871725315154

`A081477(A190767(n+1)%A017137(n))`
-/

namespace A190492.P4124723871725315154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (Int.tmod (A190767 (n + 1)) (A017137 n)).toNat

end

end A190492.P4124723871725315154

/-! ## A190492.P1890236881655434957

`A081477(or(A000038(n), A190767(n+1)))`
-/

namespace A190492.P1890236881655434957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (Int.lor (A000038 n) (A190767 (n + 1))).toNat

end

end A190492.P1890236881655434957

/-! ## A190492.P7636577492856382725

`∑{d}[A081477(A190767(n+1)), A000010(#)]`
-/

namespace A190492.P7636577492856382725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (A190767 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A190492.P7636577492856382725

/-! ## A190492.P11079673093583842181

`eq[1, A190491(n+1)+1]+1`
-/

namespace A190492.P11079673093583842181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190491 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190492.P11079673093583842181

/-! ## A190492.P8120735755708635713

`∏{d}[A081477(A190767(n+1)), A014963(#)]`
-/

namespace A190492.P8120735755708635713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (A190767 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A190492.P8120735755708635713

/-! ## A190492.P3320242492044546235

`∩[A190192(n+1), A081477(A190192(n+1))]`
-/

namespace A190492.P3320242492044546235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (A190192 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190492.P3320242492044546235

/-! ## A190492.P2282569481640782920

`A026249(A190779(n+1))`
-/

namespace A190492.P2282569481640782920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A190779 (n + 1)).toNat

end

end A190492.P2282569481640782920

/-! ## A190492.P10529117302041064839

`A022846(∩[A190500(n+1), A022846(n)])/2`
-/

namespace A190492.P10529117302041064839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022846 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A190492.P10529117302041064839

/-! ## A190492.P11922540558169539406

`A136119(∩[A136119(n+1), A190500(n+1)])/2`
-/

namespace A190492.P11922540558169539406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136119 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A190492.P11922540558169539406

/-! ## A190492.P6162567649290562453

`A184578(∩[A184578(n+1), A190500(n+1)])/2`
-/

namespace A190492.P6162567649290562453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184578 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A190492.P6162567649290562453

/-! ## A190492.P6166635548606320203

`A184618(∩[A184618(n+1), A190500(n+1)])/2`
-/

namespace A190492.P6166635548606320203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184618 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A190492.P6166635548606320203

/-! ## A190492.P1248993391464157361

`lt[A190775(2*(n+1)), 1]+1`
-/

namespace A190492.P1248993391464157361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190775 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A190492.P1248993391464157361

/-! ## A190492.P14645699468617876339

`lt[A190775(A004277(n)), 1]`
-/

namespace A190492.P14645699468617876339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190775 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A190492.P14645699468617876339

/-! ## A190492.P12070543187356711737

`eq[A144611(2*n)*A144611(3*n), A106035(2*n)]`
-/

namespace A190492.P12070543187356711737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (2 * n) * A144611 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106035 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190492.P12070543187356711737

/-!
# A190493: Positions of 1 in A190491.

The programs for A190493, the canonical program `A190493.P8493265097139754522` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190493 has offset 1).

The definition of A190493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190493.P8493265097139754522

`eq[1, A190491(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A190493

/-- `eq[1, A190491(n+1)]+1` -/
def P8493265097139754522.Spec : Prop :=
  ∀ n, (P8493265097139754522.a n : ℤ) = A190493 (n + 1)

theorem P8493265097139754522.correct : P8493265097139754522.Spec := by
  intro n
  simp only [A190493, Nat.add_sub_cancel]

end A190493

/-! ## A190493.P7014937569428911111

`eq[1, A190775(2*(n+1))]+1`
-/

namespace A190493.P7014937569428911111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190775 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190493.P7014937569428911111

namespace A190493

/-- `eq[1, A190775(2*(n+1))]+1` -/
def P7014937569428911111.Spec : Prop :=
  ∀ n, (P7014937569428911111.a n : ℤ) = A190493 (n + 1)

end A190493

/-! ## A190493.P10201221079402555253

`eq[1, A190775(A004277(n))]`
-/

namespace A190493.P10201221079402555253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190775 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190493.P10201221079402555253

namespace A190493

/-- `eq[1, A190775(A004277(n))]` -/
def P10201221079402555253.Spec : Prop :=
  ∀ n, (P10201221079402555253.a n : ℤ) = A190493 (n + 1)

end A190493

/-! ## A190493.P6907589690904203556

`eq[A022804(3*n+1)%3, 0]`
-/

namespace A190493.P6907589690904203556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022804 (3 * n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A190493.P6907589690904203556

namespace A190493

/-- `eq[A022804(3*n+1)%3, 0]` -/
def P6907589690904203556.Spec : Prop :=
  ∀ n, (P6907589690904203556.a n : ℤ) = A190493 (n + 1)

end A190493

/-! ## A190493.P706242880281743524

`eq[1, A001952(3*n+1)%3]`
-/

namespace A190493.P706242880281743524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001952 (3 * n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190493.P706242880281743524

namespace A190493

/-- `eq[1, A001952(3*n+1)%3]` -/
def P706242880281743524.Spec : Prop :=
  ∀ n, (P706242880281743524.a n : ℤ) = A190493 (n + 1)

end A190493

/-! ## A190493.P13579166331948532466

`eq[2, A286988(3*n+1)%3]`
-/

namespace A190493.P13579166331948532466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286988 (3 * n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190493.P13579166331948532466

namespace A190493

/-- `eq[2, A286988(3*n+1)%3]` -/
def P13579166331948532466.Spec : Prop :=
  ∀ n, (P13579166331948532466.a n : ℤ) = A190493 (n + 1)

end A190493

/-! ## A190493.P14927956482894058224

`eq[2, A289036(3*(n+1))%3]`
-/

namespace A190493.P14927956482894058224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289036 (3 * (n + 1))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190493.P14927956482894058224

namespace A190493

/-- `eq[2, A289036(3*(n+1))%3]` -/
def P14927956482894058224.Spec : Prop :=
  ∀ n, (P14927956482894058224.a n : ℤ) = A190493 (n + 1)

end A190493

/-! ## A190493.P1802250990196287957

`eq[3, A281680(A195176(3*n+1))]`
-/

namespace A190493.P1802250990196287957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (A195176 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190493.P1802250990196287957

namespace A190493

/-- `eq[3, A281680(A195176(3*n+1))]` -/
def P1802250990196287957.Spec : Prop :=
  ∀ n, (P1802250990196287957.a n : ℤ) = A190493 (n + 1)

end A190493

/-!
# A190494: Positions of 2 in A190491.

The programs for A190494, the canonical program `A190494.P15760637447860569934` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190494 has offset 1).

The definition of A190494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190494.P15760637447860569934

`eq[2, A190491(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A190494

/-- `eq[2, A190491(n+1)]+1` -/
def P15760637447860569934.Spec : Prop :=
  ∀ n, (P15760637447860569934.a n : ℤ) = A190494 (n + 1)

theorem P15760637447860569934.correct : P15760637447860569934.Spec := by
  intro n
  simp only [A190494, Nat.add_sub_cancel]

end A190494

/-! ## A190494.P1068659424220389139

`eq[2, A190775(2*(n+1))]+1`
-/

namespace A190494.P1068659424220389139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190775 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190494.P1068659424220389139

namespace A190494

/-- `eq[2, A190775(2*(n+1))]+1` -/
def P1068659424220389139.Spec : Prop :=
  ∀ n, (P1068659424220389139.a n : ℤ) = A190494 (n + 1)

end A190494

/-! ## A190494.P13660775836195229277

`eq[n*A190775(A004277(n)), A004277(n)]`
-/

namespace A190494.P13660775836195229277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A190775 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190494.P13660775836195229277

namespace A190494

/-- `eq[n*A190775(A004277(n)), A004277(n)]` -/
def P13660775836195229277.Spec : Prop :=
  ∀ n, (P13660775836195229277.a n : ℤ) = A190494 (n + 1)

end A190494

/-! ## A190494.P17821825166445207928

`eq[1, A003151(3*n+1)%3]`
-/

namespace A190494.P17821825166445207928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003151 (3 * n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190494.P17821825166445207928

namespace A190494

/-- `eq[1, A003151(3*n+1)%3]` -/
def P17821825166445207928.Spec : Prop :=
  ∀ n, (P17821825166445207928.a n : ℤ) = A190494 (n + 1)

end A190494

/-! ## A190494.P5830196500669731315

`eq[2, A001952(3*n+1)%3]`
-/

namespace A190494.P5830196500669731315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001952 (3 * n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190494.P5830196500669731315

namespace A190494

/-- `eq[2, A001952(3*n+1)%3]` -/
def P5830196500669731315.Spec : Prop :=
  ∀ n, (P5830196500669731315.a n : ℤ) = A190494 (n + 1)

end A190494

/-! ## A190494.P156976557066522016

`eq[3, gcd(3, A286690(3*n+1))]`
-/

namespace A190494.P156976557066522016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A286690 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190494.P156976557066522016

namespace A190494

/-- `eq[3, gcd(3, A286690(3*n+1))]` -/
def P156976557066522016.Spec : Prop :=
  ∀ n, (P156976557066522016.a n : ℤ) = A190494 (n + 1)

end A190494

/-! ## A190494.P2297549462375902308

`eq[3, A020639(A286690(A016777(n)))]`
-/

namespace A190494.P2297549462375902308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A286690 (A016777 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190494.P2297549462375902308

namespace A190494

/-- `eq[3, A020639(A286690(A016777(n)))]` -/
def P2297549462375902308.Spec : Prop :=
  ∀ n, (P2297549462375902308.a n : ℤ) = A190494 (n + 1)

end A190494

/-!
# A190495: Positions of 3 in A190491.

The programs for A190495, there is no canonical definition to state claims against.
-/

/-! ## A190495.P8456862508609445117

`A190774(n+1)+A190488(n+1)`
-/

namespace A190495.P8456862508609445117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190774 (n + 1) + A190488 (n + 1)

end

end A190495.P8456862508609445117

/-! ## A190495.P3287634381470442163

`A190771(n+1)-A190488(n+1)`
-/

namespace A190495.P3287634381470442163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190771 (n + 1) - A190488 (n + 1)

end

end A190495.P3287634381470442163

/-! ## A190495.P5095543437508496268

`A190497(n+1)-A190771(n+1)`
-/

namespace A190495.P5095543437508496268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190497 (n + 1) - A190771 (n + 1)

end

end A190495.P5095543437508496268

/-! ## A190495.P16022680567170112750

`A003151(A190488(n+1))`
-/

namespace A190495.P16022680567170112750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A190488 (n + 1)).toNat

end

end A190495.P16022680567170112750

/-! ## A190495.P9247060881665951835

`A080754(∩[A080754(n+1), A190246(n+1)])-1`
-/

namespace A190495.P9247060881665951835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190246 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) - 1

end

end A190495.P9247060881665951835

/-! ## A190495.P12885351867269135901

`A080755(A190774(n+1)-1)+1`
-/

namespace A190495.P12885351867269135901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (A190774 (n + 1) - 1).toNat + 1

end

end A190495.P12885351867269135901

/-! ## A190495.P9021778586931832072

`A080755(A190774(n+1))`
-/

namespace A190495.P9021778586931832072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (A190774 (n + 1)).toNat

end

end A190495.P9021778586931832072

/-! ## A190495.P18123871121420065681

`A188298(A190774(n+1)+1)`
-/

namespace A190495.P18123871121420065681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188298 (A190774 (n + 1) + 1).toNat

end

end A190495.P18123871121420065681

/-! ## A190495.P5103019652641595064

`A080755(∩[A080755(n+1), A184623(n+1)])`
-/

namespace A190495.P5103019652641595064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A190495.P5103019652641595064

/-! ## A190495.P12260535215932573990

`A184623(∩[A184623(n+1), A001951(n)])/2`
-/

namespace A190495.P12260535215932573990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184623 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A190495.P12260535215932573990

/-! ## A190495.P6210909515795450395

`A188298(∩[A184623(n+1), A188298(n+1)]+1)`
-/

namespace A190495.P6210909515795450395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188298 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188298 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1)

end

end A190495.P6210909515795450395

/-! ## A190495.P6346382856666040459

`A184623(∩[A120753(n+1), A184623(n+1)])/2`
-/

namespace A190495.P6346382856666040459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184623 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A190495.P6346382856666040459

/-! ## A190495.P13516125421437640992

`A184623(∩[A184623(n+1), A187968(n+1)])/2`
-/

namespace A190495.P13516125421437640992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184623 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A190495.P13516125421437640992

/-! ## A190495.P7004484550006075548

`A184623(∩[A184623(n+1), A187974(n+1)])/2`
-/

namespace A190495.P7004484550006075548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187974 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184623 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A190495.P7004484550006075548

/-! ## A190495.P1070616014891217655

`A184623(∩[A184623(n+1), A187978(n+1)])/2`
-/

namespace A190495.P1070616014891217655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187978 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184623 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A190495.P1070616014891217655

/-! ## A190495.P3376093247661094883

`A184623(∩[A184623(n+1), A188042(n+1)])/2`
-/

namespace A190495.P3376093247661094883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188042 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184623 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A190495.P3376093247661094883

/-! ## A190495.P3641050016039060842

`A184623(∩[A184623(n+1), A188265(n+1)])/2`
-/

namespace A190495.P3641050016039060842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188265 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184623 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A190495.P3641050016039060842

/-! ## A190495.P10528463506264926253

`A190488(n+1)+A049472(2*A190488(n+1))`
-/

namespace A190495.P10528463506264926253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190488 (n + 1) + A049472 (2 * A190488 (n + 1)).toNat

end

end A190495.P10528463506264926253

/-! ## A190495.P7998728562429886391

`A190488(n+1)+A049473(2*A190488(n+1))`
-/

namespace A190495.P7998728562429886391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190488 (n + 1) + A049473 (2 * A190488 (n + 1)).toNat

end

end A190495.P7998728562429886391

/-! ## A190495.P6096088244066748620

`A003152(2*A190488(n+1))-A190488(n+1)`
-/

namespace A190495.P6096088244066748620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * A190488 (n + 1)).toNat - A190488 (n + 1)

end

end A190495.P6096088244066748620

/-!
# A190496: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(2),3,2) and []=floor.

The programs for A190496, the canonical program `A190496.P5879933832106738858` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190496 has offset 1).

The definition of A190496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190496.P307746190228977787

`A285075(3*(n+2))%A285075(n+2)`
-/

namespace A190496.P307746190228977787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285075 (3 * (n + 2))) (A285075 (n + 2))

end

end A190496.P307746190228977787

namespace A190496

/-- `A285075(3*(n+2))%A285075(n+2)` -/
def P307746190228977787.Spec : Prop :=
  ∀ n, P307746190228977787.a n = A190496 (n + 1)

end A190496

/-! ## A190496.P5426492523221238763

`A285078(3*(n+2))%A285078(n+2)`
-/

namespace A190496.P5426492523221238763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285078 (3 * (n + 2))) (A285078 (n + 2))

end

end A190496.P5426492523221238763

namespace A190496

/-- `A285078(3*(n+2))%A285078(n+2)` -/
def P5426492523221238763.Spec : Prop :=
  ∀ n, P5426492523221238763.a n = A190496 (n + 1)

end A190496

/-! ## A190496.P11274228673195632672

`A289037(3*(n+2))%A289037(n+2)`
-/

namespace A190496.P11274228673195632672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289037 (3 * (n + 2))) (A289037 (n + 2))

end

end A190496.P11274228673195632672

namespace A190496

/-- `A289037(3*(n+2))%A289037(n+2)` -/
def P11274228673195632672.Spec : Prop :=
  ∀ n, P11274228673195632672.a n = A190496 (n + 1)

end A190496

/-! ## A190496.P5879933832106738858

`A001952(3*n+5)%(A001952(n+1)+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190496

/-- `A001952(3*n+5)%(A001952(n+1)+2)` -/
def P5879933832106738858.Spec : Prop :=
  ∀ n, P5879933832106738858.a n = A190496 (n + 1)

theorem P5879933832106738858.correct : P5879933832106738858.Spec := by
  intro n
  simp only [A190496, Nat.add_sub_cancel]

end A190496

/-! ## A190496.P6529653927016912300

`(A003151(3*n+5)+A003151(n+1))%4`
-/

namespace A190496.P6529653927016912300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003151 (3 * n + 5) + A003151 (n + 1)) 4

end

end A190496.P6529653927016912300

namespace A190496

/-- `(A003151(3*n+5)+A003151(n+1))%4` -/
def P6529653927016912300.Spec : Prop :=
  ∀ n, P6529653927016912300.a n = A190496 (n + 1)

end A190496

/-! ## A190496.P1614654935625876044

`A001951(A016789(n+1))-A016789(A001951(n+1))`
-/

namespace A190496.P1614654935625876044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A016789 (n + 1)).toNat - A016789 (A001951 (n + 1)).toNat

end

end A190496.P1614654935625876044

namespace A190496

/-- `A001951(A016789(n+1))-A016789(A001951(n+1))` -/
def P1614654935625876044.Spec : Prop :=
  ∀ n, P1614654935625876044.a n = A190496 (n + 1)

end A190496

/-!
# A190497: Positions of 0 in A190496.

The programs for A190497, there is no canonical definition to state claims against.
-/

/-! ## A190497.P13505942780265561357

`A190771(n+1)+A190495(n+1)`
-/

namespace A190497.P13505942780265561357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190771 (n + 1) + A190495 (n + 1)

end

end A190497.P13505942780265561357

/-! ## A190497.P5306333209685538310

`A190488(n+1)+2*A190495(n+1)`
-/

namespace A190497.P5306333209685538310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190488 (n + 1) + 2 * A190495 (n + 1)

end

end A190497.P5306333209685538310

/-! ## A190497.P6475410776693383977

`2*A190771(n+1)-A190488(n+1)`
-/

namespace A190497.P6475410776693383977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190771 (n + 1) - A190488 (n + 1)

end

end A190497.P6475410776693383977

/-! ## A190497.P11035607684077361255

`A098021(A190488(n+1))`
-/

namespace A190497.P11035607684077361255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098021 (A190488 (n + 1)).toNat

end

end A190497.P11035607684077361255

/-! ## A190497.P5078046512768489397

`A188043(A190774(n+1)-1)+2`
-/

namespace A190497.P5078046512768489397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188043 (A190774 (n + 1) - 1).toNat + 2

end

end A190497.P5078046512768489397

/-! ## A190497.P2994112994921355045

`A188043(A190774(n+1))`
-/

namespace A190497.P2994112994921355045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188043 (A190774 (n + 1)).toNat

end

end A190497.P2994112994921355045

/-! ## A190497.P14147052321079024146

`A190488(n+1)+A003151(2*A190488(n+1))`
-/

namespace A190497.P14147052321079024146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190488 (n + 1) + A003151 (2 * A190488 (n + 1)).toNat

end

end A190497.P14147052321079024146

/-! ## A190497.P14836134693009359033

`A001952(2*A190488(n+1))-A190488(n+1)`
-/

namespace A190497.P14836134693009359033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (2 * A190488 (n + 1)).toNat - A190488 (n + 1)

end

end A190497.P14836134693009359033

/-! ## A190497.P3239307747898477096

`A187973(2*∩[A187973(n+1), A190246(n+1)])`
-/

namespace A190497.P3239307747898477096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190246 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187973 (2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A190497.P3239307747898477096

/-! ## A190497.P5719684030679310872

`A003153(A190495(n+1))`
-/

namespace A190497.P5719684030679310872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (A190495 (n + 1)).toNat

end

end A190497.P5719684030679310872

/-! ## A190497.P1825360116577578086

`A026252(A190495(n+1)+1)-2`
-/

namespace A190497.P1825360116577578086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (A190495 (n + 1) + 1).toNat - 2

end

end A190497.P1825360116577578086

/-! ## A190497.P9801718182654164218

`A003152(A190771(n+1))`
-/

namespace A190497.P9801718182654164218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (A190771 (n + 1)).toNat

end

end A190497.P9801718182654164218

/-! ## A190497.P18081659165609090842

`A258834(∩[A190492(n+1), A258834(n)])/2`
-/

namespace A190497.P18081659165609090842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258834 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258834 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A190497.P18081659165609090842

/-! ## A190497.P2187459178275418093

`A190771(n+1)+A026249(A190771(n+1)-1)`
-/

namespace A190497.P2187459178275418093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190771 (n + 1) + A026249 (A190771 (n + 1) - 1).toNat

end

end A190497.P2187459178275418093

/-! ## A190497.P16380527731283671811

`A001952(∩[A001952(n+1), A190492(n+1)])/2`
-/

namespace A190497.P16380527731283671811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190492 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001952 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A190497.P16380527731283671811

/-! ## A190497.P12250509139395698801

`A184625(∩[A184625(n+1), A190492(n+1)])/2`
-/

namespace A190497.P12250509139395698801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190492 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184625 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A190497.P12250509139395698801

/-! ## A190497.P12086885269923878127

`A288999(∩[A190492(n+1), A288999(n+1)])/2`
-/

namespace A190497.P12086885269923878127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288999 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288999 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A190497.P12086885269923878127

/-! ## A190497.P7352522870717836688

`A190495(n+1)+A049474(2*A190495(n+1))`
-/

namespace A190497.P7352522870717836688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190495 (n + 1) + A049474 (2 * A190495 (n + 1)).toNat

end

end A190497.P7352522870717836688

/-! ## A190497.P14266881269216827331

`eq[0, A190496(n+1)]+1`
-/

namespace A190497.P14266881269216827331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190496 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190497.P14266881269216827331

/-! ## A190497.P9274505303488284700

`lt[A159684(3*n), A171588(A289036(n+2))]`
-/

namespace A190497.P9274505303488284700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (A289036 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190497.P9274505303488284700

/-!
# A190498: Positions of 1 in A190496.

The programs for A190498, the canonical program `A190498.P8014090296767776643` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190498 has offset 1).

The definition of A190498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190498.P8014090296767776643

`eq[1, A190496(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190498

/-- `eq[1, A190496(n+1)]+1` -/
def P8014090296767776643.Spec : Prop :=
  ∀ n, (P8014090296767776643.a n : ℤ) = A190498 (n + 1)

theorem P8014090296767776643.correct : P8014090296767776643.Spec := by
  intro n
  simp only [A190498, Nat.add_sub_cancel]

end A190498

/-! ## A190498.P82779598271205531

`eq[1, A190496(A028310(n))]`
-/

namespace A190498.P82779598271205531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190496 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190498.P82779598271205531

namespace A190498

/-- `eq[1, A190496(A028310(n))]` -/
def P82779598271205531.Spec : Prop :=
  ∀ n, (P82779598271205531.a n : ℤ) = A190498 (n + 1)

end A190498

/-! ## A190498.P17648734301434081864

`eq[1, A190496(A000007(n)+n)]`
-/

namespace A190498.P17648734301434081864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190496 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190498.P17648734301434081864

namespace A190498

/-- `eq[1, A190496(A000007(n)+n)]` -/
def P17648734301434081864.Spec : Prop :=
  ∀ n, (P17648734301434081864.a n : ℤ) = A190498 (n + 1)

end A190498

/-! ## A190498.P11790133818536219487

`eq[1, A190496(A065033(2*n))]`
-/

namespace A190498.P11790133818536219487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190496 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190498.P11790133818536219487

namespace A190498

/-- `eq[1, A190496(A065033(2*n))]` -/
def P11790133818536219487.Spec : Prop :=
  ∀ n, (P11790133818536219487.a n : ℤ) = A190498 (n + 1)

end A190498

/-! ## A190498.P3163504918007272579

`eq[1, A288999(3*n+1)%3]`
-/

namespace A190498.P3163504918007272579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288999 (3 * n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190498.P3163504918007272579

namespace A190498

/-- `eq[1, A288999(3*n+1)%3]` -/
def P3163504918007272579.Spec : Prop :=
  ∀ n, (P3163504918007272579.a n : ℤ) = A190498 (n + 1)

end A190498

/-! ## A190498.P6122020139805277570

`eq[1, A289037(3*(n+1))%3]`
-/

namespace A190498.P6122020139805277570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289037 (3 * (n + 1))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190498.P6122020139805277570

namespace A190498

/-- `eq[1, A289037(3*(n+1))%3]` -/
def P6122020139805277570.Spec : Prop :=
  ∀ n, (P6122020139805277570.a n : ℤ) = A190498 (n + 1)

end A190498

/-! ## A190498.P6370215615918769797

`eq[1, A087057(3*n+2)%3]`
-/

namespace A190498.P6370215615918769797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087057 (3 * n + 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190498.P6370215615918769797

namespace A190498

/-- `eq[1, A087057(3*n+2)%3]` -/
def P6370215615918769797.Spec : Prop :=
  ∀ n, (P6370215615918769797.a n : ℤ) = A190498 (n + 1)

end A190498

/-! ## A190498.P3617557581363962352

`eq[4, A090370(A289037(3*(n+1)))]`
-/

namespace A190498.P3617557581363962352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090370 (A289037 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190498.P3617557581363962352

namespace A190498

/-- `eq[4, A090370(A289037(3*(n+1)))]` -/
def P3617557581363962352.Spec : Prop :=
  ∀ n, (P3617557581363962352.a n : ℤ) = A190498 (n + 1)

end A190498

/-!
# A190499: Positions of 2 in A190496.

The programs for A190499, the canonical program `A190499.P17084223217155803669` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190499 has offset 1).

The definition of A190499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190499.P17084223217155803669

`eq[2, A190496(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190499

/-- `eq[2, A190496(n+1)]+1` -/
def P17084223217155803669.Spec : Prop :=
  ∀ n, (P17084223217155803669.a n : ℤ) = A190499 (n + 1)

theorem P17084223217155803669.correct : P17084223217155803669.Spec := by
  intro n
  simp only [A190499, Nat.add_sub_cancel]

end A190499

/-! ## A190499.P13572232563964283624

`eq[1, A190770(2*n+1)]`
-/

namespace A190499.P13572232563964283624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190770 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190499.P13572232563964283624

namespace A190499

/-- `eq[1, A190770(2*n+1)]` -/
def P13572232563964283624.Spec : Prop :=
  ∀ n, (P13572232563964283624.a n : ℤ) = A190499 (n + 1)

end A190499

/-! ## A190499.P3113677600996460876

`eq[2, A288999(3*n+1)%3]`
-/

namespace A190499.P3113677600996460876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288999 (3 * n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190499.P3113677600996460876

namespace A190499

/-- `eq[2, A288999(3*n+1)%3]` -/
def P3113677600996460876.Spec : Prop :=
  ∀ n, (P3113677600996460876.a n : ℤ) = A190499 (n + 1)

end A190499

/-! ## A190499.P11344856963901866833

`eq[2, A289037(3*(n+1))%3]`
-/

namespace A190499.P11344856963901866833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289037 (3 * (n + 1))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190499.P11344856963901866833

namespace A190499

/-- `eq[2, A289037(3*(n+1))%3]` -/
def P11344856963901866833.Spec : Prop :=
  ∀ n, (P11344856963901866833.a n : ℤ) = A190499 (n + 1)

end A190499

/-! ## A190499.P13610591227457535942

`eq[2, A020639(A184618(A184619(n+1)))]`
-/

namespace A190499.P13610591227457535942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A184618 (A184619 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190499.P13610591227457535942

namespace A190499

/-- `eq[2, A020639(A184618(A184619(n+1)))]` -/
def P13610591227457535942.Spec : Prop :=
  ∀ n, (P13610591227457535942.a n : ℤ) = A190499 (n + 1)

end A190499

/-! ## A190499.P16830102954083935350

`eq[2, A006337(3*A285075(n+1))]`
-/

namespace A190499.P16830102954083935350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (3 * A285075 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190499.P16830102954083935350

namespace A190499

/-- `eq[2, A006337(3*A285075(n+1))]` -/
def P16830102954083935350.Spec : Prop :=
  ∀ n, (P16830102954083935350.a n : ℤ) = A190499 (n + 1)

end A190499

