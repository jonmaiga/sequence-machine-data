import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A357801: Coefficients T(n,k) of x^(4*n)*r^(4*k)/(4*n)! in power series C(x,r) = 1 + Integral S(x,r)^3 * D(x,r)^3 dx such that C(x,r)^4 - S(x,r)^4 = 1 and D(x,r)^4 - r^4*S(x,r)^4 = 1, as a triangle read by rows.

The programs for A357801, there is no canonical definition to state claims against.
-/

/-! ## A357801.P14507656368215611877

`A357802(∑[char[∑[n]]]²-n-1)`
-/

namespace A357801.P14507656368215611877
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357802 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A357801.P14507656368215611877

/-! ## A357801.P16906559399444919561

`lcm(A059268(n), A357802(A061579(n)))`
-/

namespace A357801.P16906559399444919561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059268 n) (A357802 (A061579 n).toNat)

end

end A357801.P16906559399444919561

/-! ## A357801.P8374717760362467593

`A357802(A061579(n))+A000007(n+1)`
-/

namespace A357801.P8374717760362467593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357802 (A061579 n).toNat + A000007 (n + 1)

end

end A357801.P8374717760362467593

/-! ## A357801.P13322883481464910907

`A357802(A061579(n))+A209229(3*(n+1))`
-/

namespace A357801.P13322883481464910907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357802 (A061579 n).toNat + A209229 (3 * (n + 1))

end

end A357801.P13322883481464910907

/-! ## A357801.P7989133959734976267

`A357802(A061579(n))%A275746(n+1)`
-/

namespace A357801.P7989133959734976267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357802 (A061579 n).toNat) (A275746 (n + 1))

end

end A357801.P7989133959734976267

/-!
# A357802: Coefficients T(n,k) of x^(4*n)*r^(4*k)/(4*n)! in power series D(x,r) = 1 + r^4 * Integral S(x,r)^3 * C(x,r)^3 dx such that C(x,r)^4 - S(x,r)^4 = 1 and D(x,r)^4 - r^4*S(x,r)^4 = 1, as a triangle read by rows.

The programs for A357802, there is no canonical definition to state claims against.
-/

/-! ## A357802.P17971447087506266140

`A357801(∑[2*n]%comp[∑[n]])`
-/

namespace A357802.P17971447087506266140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357801 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A357802.P17971447087506266140

/-! ## A357802.P1444832572486005065

`A357801(∑[char[∑[n]]]²-n-1)`
-/

namespace A357802.P1444832572486005065
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357801 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A357802.P1444832572486005065

/-! ## A357802.P16913087187580618357

`lcm(A059268(n), A357801(A061579(n)))`
-/

namespace A357802.P16913087187580618357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059268 n) (A357801 (A061579 n).toNat)

end

end A357802.P16913087187580618357

/-! ## A357802.P11148392400735908534

`A059268(∑[n])*A357801(A061579(n))`
-/

namespace A357802.P11148392400735908534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (∑ j ∈ Finset.range (n + 1), f1 j) * A357801 (A061579 n).toNat

end

end A357802.P11148392400735908534

/-! ## A357802.P5689411092789879510

`A357801(A061579(n))%A285148(n+1)`
-/

namespace A357802.P5689411092789879510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357801 (A061579 n).toNat) (A285148 (n + 1))

end

end A357802.P5689411092789879510

/-!
# A357806: a(n) = coefficient of x^(2*n) in A(x) = 1 + Sum_{n>=1} (-1)^n * x^(4*n^2) * (F(x/2)^(2*n) + F(-x/2)^(2*n)), where F(x) is the g.f. of A357787.

The programs for A357806, there is no canonical definition to state claims against.
-/

/-! ## A357806.P1669585524519269632

`A357788(n)/4^n`
-/

namespace A357806.P1669585524519269632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357788 n : ℚ) / (4 ^ n : ℚ)

end

end A357806.P1669585524519269632

/-! ## A357806.P2985379945305900398

`floor(A357788(n)/A000302(n))`
-/

namespace A357806.P2985379945305900398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A357788 n : ℚ) / (A000302 n : ℚ)⌋

end

end A357806.P2985379945305900398

/-! ## A357806.P15481680711044220662

`A000079(n)/A011782(3*n+1)*A357788(n)`
-/

namespace A357806.P15481680711044220662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A011782 (3 * n + 1) : ℚ) * (A357788 n : ℚ)

end

end A357806.P15481680711044220662

/-! ## A357806.P11734479013229211105

`A206685(n+1)%3+A357788(n)/A000302(n)`
-/

namespace A357806.P11734479013229211105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A206685 (n + 1)) 3 : ℚ) + (A357788 n : ℚ) / (A000302 n : ℚ)

end

end A357806.P11734479013229211105

/-! ## A357806.P14666031495632830506

`A089001(n+4)%3+A357788(n)/A000302(n)`
-/

namespace A357806.P14666031495632830506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A089001 (n + 4)) 3 : ℚ) + (A357788 n : ℚ) / (A000302 n : ℚ)

end

end A357806.P14666031495632830506

/-! ## A357806.P8042642999433338316

`A357788(n)/A000302(n)*A000040(n+5)²%3`
-/

namespace A357806.P8042642999433338316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357788 n : ℚ) / (A000302 n : ℚ) * (Int.tmod (A000040 (n + 5) ^ 2) 3 : ℚ)

end

end A357806.P8042642999433338316

/-!
# A357807: Semiprimes k such that k is congruent to 3 modulo k's index in the sequence of semiprimes.

The programs for A357807, there is no canonical definition to state claims against.
-/

/-! ## A357807.P606649044862308427

`A001358(A106128(n+1))`
-/

namespace A357807.P606649044862308427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A106128 (n + 1)).toNat

end

end A357807.P606649044862308427

/-!
# A357808: Semiprimes k such that k is congruent to 4 modulo k's index in the sequence of semiprimes.

The programs for A357808, there is no canonical definition to state claims against.
-/

/-! ## A357808.P3375408508615001237

`A001358(A106129(n+1))`
-/

namespace A357808.P3375408508615001237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A106129 (n + 1)).toNat

end

end A357808.P3375408508615001237

/-! ## A357808.P4016087275385468202

`A176540(A106129(n+1)+1)`
-/

namespace A357808.P4016087275385468202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (A106129 (n + 1) + 1).toNat

end

end A357808.P4016087275385468202

/-! ## A357808.P5668585722821417577

`(A186621(A106129(n+1))+1)*A055642(n)`
-/

namespace A357808.P5668585722821417577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A186621 (A106129 (n + 1)).toNat + 1) * A055642 n

end

end A357808.P5668585722821417577

/-!
# A357809: Locations of successive records in A357062.

The programs for A357809, there is no canonical definition to state claims against.
-/

/-! ## A357809.P8162824243033119032

`eq[A000262(A267181(n)), A353815(2*(n+2))]`
-/

namespace A357809.P8162824243033119032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (A267181 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353815 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357809.P8162824243033119032

/-! ## A357809.P12870253787911593330

`eq[A336935(A205457(n+1)), A342671(2*(n+2))]`
-/

namespace A357809.P12870253787911593330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336935 (A205457 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342671 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357809.P12870253787911593330

/-! ## A357809.P17395393518276535194

`eq[A161780(n+1), A235450(n+1)]`
-/

namespace A357809.P17395393518276535194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357809.P17395393518276535194

/-! ## A357809.P14148518591972470068

`lt[A332667(n), A217220(2*(n+2))²]`
-/

namespace A357809.P14148518591972470068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (2 * (n + 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357809.P14148518591972470068

/-! ## A357809.P9576393790380496455

`lt[A199474(n+1)+A113660(2*(n+2)), 1]`
-/

namespace A357809.P9576393790380496455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199474 (n + 1) + A113660 (2 * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357809.P9576393790380496455

/-!
# A357810: Number of n-step closed paths on the Cairo pentagonal lattice graph starting from a degree-4 node.

The programs for A357810, there is no canonical definition to state claims against.
-/

/-! ## A357810.P137312567793737431

`and(A002843(A008805(n)), A193674(n))`
-/

namespace A357810.P137312567793737431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002843 (A008805 n).toNat) (A193674 n)

end

end A357810.P137312567793737431

/-! ## A357810.P3137534802671149959

`and(A081442(n), A219048(A207885(n+1)))`
-/

namespace A357810.P3137534802671149959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081442 n) (A219048 (A207885 (n + 1)).toNat)

end

end A357810.P3137534802671149959

/-! ## A357810.P17940074513525703163

`and(A064987(A006355(3*n)), A145855(n+1))`
-/

namespace A357810.P17940074513525703163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064987 (A006355 (3 * n)).toNat) (A145855 (n + 1))

end

end A357810.P17940074513525703163

/-!
# A357812: Number of subsets of [n] in which exactly half of the elements are powers of 2.

The programs for A357812, the canonical program `A357812.P13525390406441646513` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357812 has offset 0).

The definition of A357812 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357812.P13525390406441646513

`C(n, A029837(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A357812

/-- `C(n, A029837(n+1))` -/
def P13525390406441646513.Spec : Prop :=
  ∀ n, (P13525390406441646513.a n : ℤ) = A357812 n

theorem P13525390406441646513.correct : P13525390406441646513.Spec := by
  intro n
  simp only [A357812]

end A357812

/-! ## A357812.P16684696201377889570

`C(n, ceil(log2(n+1)))`
-/

namespace A357812.P16684696201377889570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat

end

end A357812.P16684696201377889570

namespace A357812

/-- `C(n, ceil(log2(n+1)))` -/
def P16684696201377889570.Spec : Prop :=
  ∀ n, (P16684696201377889570.a n : ℤ) = A357812 n

end A357812

/-! ## A357812.P16694910701032878033

`∏{e}[A062383(n), C(n, #)]`
-/

namespace A357812.P16694910701032878033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose n (Nat.factorization (f1 n).natAbs p)

end

end A357812.P16694910701032878033

namespace A357812

/-- `∏{e}[A062383(n), C(n, #)]` -/
def P16694910701032878033.Spec : Prop :=
  ∀ n, (P16694910701032878033.a n : ℤ) = A357812 n

end A357812

/-! ## A357812.P2503385470625578403

`A000007(n)+C(n, A070939(n))`
-/

namespace A357812.P2503385470625578403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (Nat.choose n (A070939 n).toNat : ℤ)

end

end A357812.P2503385470625578403

namespace A357812

/-- `A000007(n)+C(n, A070939(n))` -/
def P2503385470625578403.Spec : Prop :=
  ∀ n, P2503385470625578403.a n = A357812 n

end A357812

/-! ## A357812.P824438334779843028

`and(C(n, A099396(3*n+1)), -1)`
-/

namespace A357812.P824438334779843028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.choose n (A099396 (3 * n + 1)).toNat : ℤ) (-1)

end

end A357812.P824438334779843028

namespace A357812

/-- `and(C(n, A099396(3*n+1)), -1)` -/
def P824438334779843028.Spec : Prop :=
  ∀ n, P824438334779843028.a n = A357812 n

end A357812

/-! ## A357812.P6051891977980281042

`A007318(A070939(n)+∑[n])`
-/

namespace A357812.P6051891977980281042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A070939 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A357812.P6051891977980281042

namespace A357812

/-- `A007318(A070939(n)+∑[n])` -/
def P6051891977980281042.Spec : Prop :=
  ∀ n, P6051891977980281042.a n = A357812 n

end A357812

/-! ## A357812.P13500846058437794495

`A007318(∑[char[A130321(n)]+n])`
-/

namespace A357812.P13500846058437794495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A357812.P13500846058437794495

namespace A357812

/-- `A007318(∑[char[A130321(n)]+n])` -/
def P13500846058437794495.Spec : Prop :=
  ∀ n, P13500846058437794495.a n = A357812 n

end A357812

/-! ## A357812.P15953083600575609082

`A007318(A029837(n+1)+A000217(n))`
-/

namespace A357812.P15953083600575609082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A029837 (n + 1) + A000217 n).toNat

end

end A357812.P15953083600575609082

namespace A357812

/-- `A007318(A029837(n+1)+A000217(n))` -/
def P15953083600575609082.Spec : Prop :=
  ∀ n, P15953083600575609082.a n = A357812 n

end A357812

/-! ## A357812.P12431739538397648008

`A007318(A000096(n)-A029837(n+1))`
-/

namespace A357812.P12431739538397648008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n - A029837 (n + 1)).toNat

end

end A357812.P12431739538397648008

namespace A357812

/-- `A007318(A000096(n)-A029837(n+1))` -/
def P12431739538397648008.Spec : Prop :=
  ∀ n, P12431739538397648008.a n = A357812 n

end A357812

/-! ## A357812.P6430967036088903106

`A007318(A000217(n+1)-A070939(2*n))`
-/

namespace A357812.P6430967036088903106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 1) - A070939 (2 * n)).toNat

end

end A357812.P6430967036088903106

namespace A357812

/-- `A007318(A000217(n+1)-A070939(2*n))` -/
def P6430967036088903106.Spec : Prop :=
  ∀ n, P6430967036088903106.a n = A357812 n

end A357812

/-! ## A357812.P7898866278731158047

`A097805(A070939(2*n)+A000217(n+1))`
-/

namespace A357812.P7898866278731158047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A070939 (2 * n) + A000217 (n + 1)).toNat

end

end A357812.P7898866278731158047

namespace A357812

/-- `A097805(A070939(2*n)+A000217(n+1))` -/
def P7898866278731158047.Spec : Prop :=
  ∀ n, P7898866278731158047.a n = A357812 n

end A357812

/-!
# A357813: a(n) is the least number k such that the sum of n^2 consecutive primes starting at prime(k) is a square.

The programs for A357813, there is no canonical definition to state claims against.
-/

/-! ## A357813.P8413833704759522135

`A230327((n+2)²)`
-/

namespace A357813.P8413833704759522135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230327 ((n + 2) ^ 2)

end

end A357813.P8413833704759522135

/-! ## A357813.P4489265088584524959

`A000720(A073887((n+2)²))`
-/

namespace A357813.P4489265088584524959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A073887 ((n + 2) ^ 2)).toNat

end

end A357813.P4489265088584524959

/-! ## A357813.P7845975296694670352

`A000720(A132955((n+2)²))`
-/

namespace A357813.P7845975296694670352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A132955 ((n + 2) ^ 2)).toNat

end

end A357813.P7845975296694670352

/-!
# A357814: Triangular array read by rows: T(n,k) is the quotient on division of Fib(n) by Fib(k) for 1 <= k <= n, where Fib(k) = A000045(k).

The programs for A357814, the canonical program `A357814.P9348877783443171026` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357814 has offset 1).

The definition of A357814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357814.P9348877783443171026

`floor(A000045(row(n)+1)/A000045(col(n)+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A357814

/-- `floor(A000045(row(n)+1)/A000045(col(n)+1))` -/
def P9348877783443171026.Spec : Prop :=
  ∀ n, P9348877783443171026.a n = A357814 (n + 1)

theorem P9348877783443171026.correct : P9348877783443171026.Spec := by
  intro n
  simp only [A357814, Nat.add_sub_cancel]

end A357814

/-! ## A357814.P14551271944199952944

`floor(A131410(n+1)/A104763(n+1))`
-/

namespace A357814.P14551271944199952944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131410 (n + 1) : ℚ) / (A104763 (n + 1) : ℚ)⌋

end

end A357814.P14551271944199952944

namespace A357814

/-- `floor(A131410(n+1)/A104763(n+1))` -/
def P14551271944199952944.Spec : Prop :=
  ∀ n, P14551271944199952944.a n = A357814 (n + 1)

end A357814

/-! ## A357814.P9195596499699216575

`floor(A000045(A002024(n+1))/A104763(n+1))`
-/

namespace A357814.P9195596499699216575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (A002024 (n + 1)).toNat : ℚ) / (A104763 (n + 1) : ℚ)⌋

end

end A357814.P9195596499699216575

namespace A357814

/-- `floor(A000045(A002024(n+1))/A104763(n+1))` -/
def P9195596499699216575.Spec : Prop :=
  ∀ n, P9195596499699216575.a n = A357814 (n + 1)

end A357814

/-!
# A357816: a(n) is the first even number k such that there are exactly n pairs (p,q) where p and q are prime, p<=q, p+q = k, and p+A001414(k) and q+A001414(k) are also prime.

The programs for A357816, there is no canonical definition to state claims against.
-/

/-! ## A357816.P12769690910769042263

`∏{p}[n+1, #]*A244363(∑{d}[n+1, #²])`
-/

namespace A357816.P12769690910769042263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A244363 (∑ d ∈ Nat.divisors (f2 n), d ^ 2)

end

end A357816.P12769690910769042263

/-!
# A357817: Partial alternating sums of the Dedekind psi function (A001615): a(n) = Sum_{k=1..n} (-1)^(k+1) * psi(k).

The programs for A357817, the canonical program `A357817.P15892236306854979366` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357817 has offset 1).

The definition of A357817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357817.P6430419790272368969

`∑[(-1)^n*∑{d}[∏{p}[n+1, #], (n+1)/#]]`
-/

namespace A357817.P6430419790272368969
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) * (∑ d ∈ Nat.divisors (f2 n), (n + 1 : ℚ) / (d : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357817.P6430419790272368969

namespace A357817

/-- `∑[(-1)^n*∑{d}[∏{p}[n+1, #], (n+1)/#]]` -/
def P6430419790272368969.Spec : Prop :=
  ∀ n, P6430419790272368969.a n = (A357817 (n + 1) : ℚ)

end A357817

/-! ## A357817.P6859503157600354612

`∑[∑{d}[∏{p}[n+1, #], (n+1)/#]/(-1)^n]`
-/

namespace A357817.P6859503157600354612
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), (n + 1 : ℚ) / (d : ℚ)) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357817.P6859503157600354612

namespace A357817

/-- `∑[∑{d}[∏{p}[n+1, #], (n+1)/#]/(-1)^n]` -/
def P6859503157600354612.Spec : Prop :=
  ∀ n, P6859503157600354612.a n = (A357817 (n + 1) : ℚ)

end A357817

/-! ## A357817.P9002898054809167368

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1]*(-1)^n]`
-/

namespace A357817.P9002898054809167368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), (p + 1) : ℕ) : ℚ) * ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357817.P9002898054809167368

namespace A357817

/-- `∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1]*(-1)^n]` -/
def P9002898054809167368.Spec : Prop :=
  ∀ n, P9002898054809167368.a n = (A357817 (n + 1) : ℚ)

end A357817

/-! ## A357817.P16197565085539306412

`∑[(-1)^n*A001615(n+1)]`
-/

namespace A357817.P16197565085539306412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357817.P16197565085539306412

namespace A357817

/-- `∑[(-1)^n*A001615(n+1)]` -/
def P16197565085539306412.Spec : Prop :=
  ∀ n, P16197565085539306412.a n = A357817 (n + 1)

theorem P16197565085539306412.correct : P16197565085539306412.Spec := by
  intro n
  simp only [A357817, Nat.add_sub_cancel, A357817.P16197565085539306412.f1, A357817.P16197565085539306412.a, A357817.P15892236306854979366.f1, A357817.P15892236306854979366.a, A001615, A001615.P12078511981713404634.a, A306927, A306927.P17814691939423950955.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357817

/-! ## A357817.P15892236306854979366

`∑[(A306927(n+1)+1+n)*(-1)^n]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A357817

/-- `∑[(A306927(n+1)+1+n)*(-1)^n]` -/
def P15892236306854979366.Spec : Prop :=
  ∀ n, P15892236306854979366.a n = A357817 (n + 1)

theorem P15892236306854979366.correct : P15892236306854979366.Spec := by
  intro n
  simp only [A357817, Nat.add_sub_cancel]

end A357817

/-! ## A357817.P12331539218741861158

`∑[(n+1)*∏{p}[n+1, A000203(#)/#]*(-1)^n]`
-/

namespace A357817.P12331539218741861158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f2 n), (A000203 p : ℚ) / (p : ℚ)) * ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357817.P12331539218741861158

namespace A357817

/-- `∑[(n+1)*∏{p}[n+1, A000203(#)/#]*(-1)^n]` -/
def P12331539218741861158.Spec : Prop :=
  ∀ n, P12331539218741861158.a n = (A357817 (n + 1) : ℚ)

end A357817

/-! ## A357817.P15145368437978979058

`∑[A001615(n+1)*A033999(n)]`
-/

namespace A357817.P15145368437978979058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357817.P15145368437978979058

namespace A357817

/-- `∑[A001615(n+1)*A033999(n)]` -/
def P15145368437978979058.Spec : Prop :=
  ∀ n, P15145368437978979058.a n = A357817 (n + 1)

theorem P15145368437978979058.correct : P15145368437978979058.Spec := by
  intro n
  simp only [A357817, Nat.add_sub_cancel, A357817.P15145368437978979058.f1, A357817.P15145368437978979058.a, A357817.P15892236306854979366.f1, A357817.P15892236306854979366.a, A001615, A001615.P12078511981713404634.a, A033999, A033999.P17703899380244199787.a, A306927, A306927.P17814691939423950955.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357817

/-! ## A357817.P11410321290532004268

`∑[(A000203(n+1)-A244963(n+1))*(-1)^n]`
-/

namespace A357817.P11410321290532004268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A244963 (n + 1)) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357817.P11410321290532004268

namespace A357817

/-- `∑[(A000203(n+1)-A244963(n+1))*(-1)^n]` -/
def P11410321290532004268.Spec : Prop :=
  ∀ n, P11410321290532004268.a n = A357817 (n + 1)

theorem P11410321290532004268.correct : P11410321290532004268.Spec := by
  intro n
  simp only [A357817, Nat.add_sub_cancel, A357817.P11410321290532004268.f1, A357817.P11410321290532004268.a, A357817.P15892236306854979366.f1, A357817.P15892236306854979366.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A244963, A244963.P8812478636684031312.a, A306927, A306927.P17814691939423950955.a, A001615, A001615.P12078511981713404634.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357817

/-!
# A357821: Denominators of the partial alternating sums of the reciprocals of the Dedekind psi function (A001615).

The programs for A357821, there is no canonical definition to state claims against.
-/

/-! ## A357821.P5109297614944918647

`∑{d}[A357873(A357820(n+1)), #]`
-/

namespace A357821.P5109297614944918647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357873 (A357820 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A357821.P5109297614944918647

/-! ## A357821.P14801656643520048857

`A357873(A357820(n+1)+A057427(n))`
-/

namespace A357821.P14801656643520048857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357873 (A357820 (n + 1) + A057427 n).toNat

end

end A357821.P14801656643520048857

/-! ## A357821.P10030390012540240258

`A357873(A357820(n+1)+A178334(n))`
-/

namespace A357821.P10030390012540240258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357873 (A357820 (n + 1) + A178334 n).toNat

end

end A357821.P10030390012540240258

/-!
# A357822: Number of simplicial 3-spheres (triangulations of S^3) with n vertices.

The programs for A357822, there is no canonical definition to state claims against.
-/

/-! ## A357822.P915029845720744385

`A188416(∑[A218672(n)])`
-/

namespace A357822.P915029845720744385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A357822.P915029845720744385

/-!
# A357823: a(n) is the number of bases > 1 where n is not divisible by the sum of its digits.

The programs for A357823, there is no canonical definition to state claims against.
-/

/-! ## A357823.P17656193976419743863

`n+1-A080221(n+1)`
-/

namespace A357823.P17656193976419743863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A080221 (n + 1)

end

end A357823.P17656193976419743863

/-! ## A357823.P10034243919732410326

`A024000(A080221(n+1))+n`
-/

namespace A357823.P10034243919732410326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A080221 (n + 1)).toNat + (n : ℤ)

end

end A357823.P10034243919732410326

/-! ## A357823.P15044031725522888154

`n-(A080221(A008619(2*n))-1)`
-/

namespace A357823.P15044031725522888154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A080221 (A008619 (2 * n)).toNat - 1)

end

end A357823.P15044031725522888154

/-! ## A357823.P18067145797357199583

`A247015(((n+1)/gcd(n+1, ∑{d}[n+1, #]))%A162818(n+1))`
-/

namespace A357823.P18067145797357199583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247015 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) (∑ d ∈ Nat.divisors (f1 n), d) : ℚ))) (A162818 (n + 1))).toNat

end

end A357823.P18067145797357199583

/-! ## A357823.P15676407399586525315

`A241972(n+1)+A225654(A243745(n))`
-/

namespace A357823.P15676407399586525315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241972 (n + 1) + A225654 (A243745 (n + 10)).toNat

end

end A357823.P15676407399586525315

/-!
# A357824: Total number A(n,k) of k-tuples of semi-Dyck paths from (0,0) to (n,n-2*j) for j=0..floor(n/2); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A357824, there is no canonical definition to state claims against.
-/

/-! ## A357824.P16496448011767826380

`A097688(A335545(n))`
-/

namespace A357824.P16496448011767826380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097688 (A335545 n).toNat

end

end A357824.P16496448011767826380

/-! ## A357824.P16397049468404873156

`A323767(n)+A010815(A252656(n+1))`
-/

namespace A357824.P16397049468404873156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323767 n + A010815 (A252656 (n + 1)).toNat

end

end A357824.P16397049468404873156

/-! ## A357824.P12011589908460189337

`A316843(A335545(n))%A115649(2*n+5)`
-/

namespace A357824.P12011589908460189337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316843 (A335545 n).toNat) (A115649 (2 * n + 5))

end

end A357824.P12011589908460189337

/-! ## A357824.P14969188395912461899

`A271269(A323767(n))%A348684(3*(n+1))`
-/

namespace A357824.P14969188395912461899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271269 (A323767 n).toNat) (A348684 (3 * (n + 1)))

end

end A357824.P14969188395912461899

/-! ## A357824.P5334429277875873739

`A268340(A102288(n+1))+A136605(n+1)`
-/

namespace A357824.P5334429277875873739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268340 (A102288 (n + 1)).toNat + A136605 (n + 1)

end

end A357824.P5334429277875873739

/-!
# A357825: Total number of n-tuples of semi-Dyck paths from (0,0) to (n,n-2*j) for j = 0..floor(n/2).

The programs for A357825, there is no canonical definition to state claims against.
-/

/-! ## A357825.P6383565155921430095

`A357824(∑[4*n])`
-/

namespace A357825.P6383565155921430095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357824 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A357825.P6383565155921430095

/-! ## A357825.P14046018156331903528

`and(-1, A357824(A046092(n)))`
-/

namespace A357825.P14046018156331903528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A357824 (A046092 n).toNat)

end

end A357825.P14046018156331903528

/-!
# A357826: Base-10 weaker Skolem-Langford numbers.

The programs for A357826, there is no canonical definition to state claims against.
-/

/-! ## A357826.P182466447218320073

`A108116(eq[A037445(n+4), A109701(n+4)])`
-/

namespace A357826.P182466447218320073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109701 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108116 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A357826.P182466447218320073

/-!
# A357827: Number of automorphisms of the n-folded cube graph.

The programs for A357827, there is no canonical definition to state claims against.
-/

/-! ## A357827.P5511898456769114289

`A288944(n+2)*A340084(A288983(3*n))`
-/

namespace A357827.P5511898456769114289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288944 (n + 2) * A340084 (A288983 (3 * n)).toNat

end

end A357827.P5511898456769114289

/-!
# A357828: a(n) = Sum_{k=0..floor(n/3)} |Stirling1(n,3*k)|.

The programs for A357828, there is no canonical definition to state claims against.
-/

/-! ## A357828.P10918629632078860431

`A357829(n+1)-n*A357829(n)`
-/

namespace A357828.P10918629632078860431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357829 (n + 1) - (n : ℤ) * A357829 n

end

end A357828.P10918629632078860431

/-! ## A357828.P18268261803516095579

`A357119(A046691(n+2))`
-/

namespace A357828.P18268261803516095579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357119 (A046691 (n + 2)).toNat

end

end A357828.P18268261803516095579

/-! ## A357828.P15546705735524946404

`A357119(A056000(n)+6)`
-/

namespace A357828.P15546705735524946404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357119 (A056000 n + 6).toNat

end

end A357828.P15546705735524946404

/-! ## A357828.P7213638446638710884

`A357119(eq[3, A025581(n)])`
-/

namespace A357828.P7213638446638710884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A357828.P7213638446638710884

/-! ## A357828.P10057180861043062554

`A357119(A000217(n+3)+n)`
-/

namespace A357828.P10057180861043062554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357119 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A357828.P10057180861043062554

/-!
# A357829: a(n) = Sum_{k=0..floor((n-1)/3)} |Stirling1(n,3*k+1)|.

The programs for A357829, there is no canonical definition to state claims against.
-/

/-! ## A357829.P10072218612131757513

`A002264(A370569(n)+A001399(n+1))`
-/

namespace A357829.P10072218612131757513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A370569 n + A001399 (n + 1)).toNat

end

end A357829.P10072218612131757513

/-! ## A357829.P10154903945323465447

`A008616(ceil(sqrt(A000110(2*n))))`
-/

namespace A357829.P10154903945323465447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 ⌈Real.sqrt (A000110 (2 * n) : ℝ)⌉.toNat

end

end A357829.P10154903945323465447

/-! ## A357829.P5123490199391504069

`A001651(A159477((n-2)*a(n-1)+1))` with `a(0)=0`
-/

namespace A357829.P5123490199391504069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001651 (A159477 (((n : ℤ) - 2) * a (n - 1) + 1).toNat).toNat

end

end A357829.P5123490199391504069

/-!
# A357830: a(n) = Sum_{k=0..floor((n-2)/3)} |Stirling1(n,3*k+2)|.

The programs for A357830, there is no canonical definition to state claims against.
-/

/-! ## A357830.P10777767375065399044

`A247908(A020119(n))-1`
-/

namespace A357830.P10777767375065399044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A020119 n).toNat - 1

end

end A357830.P10777767375065399044

/-! ## A357830.P4113973182748430777

`A001462(A330675(n))-1`
-/

namespace A357830.P4113973182748430777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A330675 n).toNat - 1

end

end A357830.P4113973182748430777

/-! ## A357830.P15010087589531575504

`A184819(n^A357308(n))`
-/

namespace A357830.P15010087589531575504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184819 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A357308 n : ℤ))).toNat

end

end A357830.P15010087589531575504

/-!
# A357831: a(n) = Sum_{k=0..floor(n/3)} 2^k * |Stirling1(n,3*k)|.

The programs for A357831, there is no canonical definition to state claims against.
-/

/-! ## A357831.P12376854538182032917

`xor(A238451(A099235(n)), A321989(n))`
-/

namespace A357831.P12376854538182032917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A238451 (A099235 n).toNat) (A321989 n)

end

end A357831.P12376854538182032917

/-! ## A357831.P12447195451692557541

`A003319(n)-A209354(A178194(3*(n+1)))`
-/

namespace A357831.P12447195451692557541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003319 n - A209354 (A178194 (3 * (n + 1))).toNat

end

end A357831.P12447195451692557541

/-!
# A357832: a(n) = Sum_{k=0..floor((n-1)/3)} 2^k * |Stirling1(n,3*k+1)|.

The programs for A357832, there is no canonical definition to state claims against.
-/

/-! ## A357832.P16612981604266506877

`A165190(A001048(n+1)+A000326(n))`
-/

namespace A357832.P16612981604266506877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A001048 (n + 1) + A000326 n).toNat

end

end A357832.P16612981604266506877

/-! ## A357832.P7258167667779118253

`A133430(A181769(n)+A010051(n+1))`
-/

namespace A357832.P7258167667779118253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133430 (A181769 n + A010051 (n + 1)).toNat

end

end A357832.P7258167667779118253

/-! ## A357832.P13287245341550536265

`A112689(A000254(n)-A351013(n)+1)`
-/

namespace A357832.P13287245341550536265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A000254 n - A351013 n + 1).toNat

end

end A357832.P13287245341550536265

/-!
# A357833: a(n) = Sum_{k=0..floor((n-2)/3)} 2^k * |Stirling1(n,3*k+2)|.

The programs for A357833, there is no canonical definition to state claims against.
-/

/-! ## A357833.P4261606201610313181

`A004526(xor(A006248(n+1), A328441(n)))`
-/

namespace A357833.P4261606201610313181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.xor (A006248 (n + 1)) (A328441 n)).toNat

end

end A357833.P4261606201610313181

/-! ## A357833.P5750746323274306592

`A057360(A215069(n!))`
-/

namespace A357833.P5750746323274306592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (A215069 (Nat.factorial n)).toNat

end

end A357833.P5750746323274306592

/-! ## A357833.P11418942857148669075

`A065714(A369600(n)+n)`
-/

namespace A357833.P11418942857148669075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065714 (A369600 n + (n : ℤ)).toNat

end

end A357833.P11418942857148669075

/-!
# A357834: a(n) = Sum_{k=0..floor(n/3)} Stirling1(n,3*k).

The programs for A357834, there is no canonical definition to state claims against.
-/

/-! ## A357834.P8224004209074646870

`A357835(n+1)+n*A357835(n)`
-/

namespace A357834.P8224004209074646870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357835 (n + 1) + (n : ℤ) * A357835 n

end

end A357834.P8224004209074646870

/-! ## A357834.P1914624033636046011

`A180869(A099145(n+1))-A357835(n)`
-/

namespace A357834.P1914624033636046011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180869 (A099145 (n + 1)).toNat - A357835 n

end

end A357834.P1914624033636046011

/-!
# A357836: a(n) = Sum_{k=0..floor((n-2)/3)} Stirling1(n,3*k+2).

The programs for A357836, there is no canonical definition to state claims against.
-/

/-! ## A357836.P10798703283114288565

`A010052(A262440(n))-A180869(n)`
-/

namespace A357836.P10798703283114288565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A262440 n).toNat - A180869 n

end

end A357836.P10798703283114288565

/-! ## A357836.P10157595031794981720

`A209229(A165817(n))-A180869(n)`
-/

namespace A357836.P10157595031794981720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A165817 n).toNat - A180869 n

end

end A357836.P10157595031794981720

/-! ## A357836.P8671373471225089669

`A165596(A001393(n))*A356291(n)`
-/

namespace A357836.P8671373471225089669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165596 (A001393 n).toNat * A356291 n

end

end A357836.P8671373471225089669

/-!
# A357837: a(n) is the sum of the lengths of all the segments used to draw a square of side n representing a fishbone pattern using symmetric L-shaped tiles with side length 2.

The programs for A357837, the canonical program `A357837.P6919389101332966976` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357837 has offset 0).

The definition of A357837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357837.P6919389101332966976

`2*(ceil(2*(n+1)²/3)-1)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A357837

/-- `2*(ceil(2*(n+1)²/3)-1)` -/
def P6919389101332966976.Spec : Prop :=
  ∀ n, P6919389101332966976.a n = A357837 n

theorem P6919389101332966976.correct : P6919389101332966976.Spec := by
  intro n
  simp only [A357837]

end A357837

/-! ## A357837.P16172014111566240549

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=4, a(2)=10, a(3)=20, a(4)=32`
-/

namespace A357837.P16172014111566240549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 10, 20, 32] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A357837.P16172014111566240549

namespace A357837

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P16172014111566240549.Spec : Prop :=
  ∀ n, P16172014111566240549.a n = A357837 n

end A357837

/-! ## A357837.P3167045716753719369

`∑[a(n-3)+8]` with `a(0)=0, a(1)=4, a(2)=6, a(3)=10`
-/

namespace A357837.P3167045716753719369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 6, 10] fun n f1 =>
  f1 (n - 3) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357837.P3167045716753719369

namespace A357837

/-- `∑[a(n-3)+8]` -/
def P3167045716753719369.Spec : Prop :=
  ∀ n, (P3167045716753719369.a n : ℤ) = A357837 n

end A357837

/-! ## A357837.P15943324927658394248

`∑[∑[gcd(3, n)]+n-1]-2`
-/

namespace A357837.P15943324927658394248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A357837.P15943324927658394248

namespace A357837

/-- `∑[∑[gcd(3, n)]+n-1]-2` -/
def P15943324927658394248.Spec : Prop :=
  ∀ n, P15943324927658394248.a n = A357837 n

end A357837

/-! ## A357837.P15868916530582815125

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=4, a(2)=2, a(3)=4, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A357837.P15868916530582815125
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 2, 4, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357837.P15868916530582815125

namespace A357837

/-- `∑[∑[floor(a(n-3))]]` -/
def P15868916530582815125.Spec : Prop :=
  ∀ n, (P15868916530582815125.a n : ℤ) = A357837 n

end A357837

/-! ## A357837.P2088200892491911239

`∑[2*comp[A008574(n)]]`
-/

namespace A357837.P2088200892491911239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357837.P2088200892491911239

namespace A357837

/-- `∑[2*comp[A008574(n)]]` -/
def P2088200892491911239.Spec : Prop :=
  ∀ n, (P2088200892491911239.a n : ℤ) = A357837 n

end A357837

/-! ## A357837.P9300804083573289519

`floor(A134582(n+1)/3)`
-/

namespace A357837.P9300804083573289519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134582 (n + 1) : ℚ) / 3⌋

end

end A357837.P9300804083573289519

namespace A357837

/-- `floor(A134582(n+1)/3)` -/
def P9300804083573289519.Spec : Prop :=
  ∀ n, P9300804083573289519.a n = A357837 n

end A357837

/-! ## A357837.P10655385149678446973

`∑[A047410(n+1)]-2`
-/

namespace A357837.P10655385149678446973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A357837.P10655385149678446973

namespace A357837

/-- `∑[A047410(n+1)]-2` -/
def P10655385149678446973.Spec : Prop :=
  ∀ n, P10655385149678446973.a n = A357837 n

end A357837

/-! ## A357837.P2528792765263962978

`∑[2*comp[A004277(2*n)]]`
-/

namespace A357837.P2528792765263962978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357837.P2528792765263962978

namespace A357837

/-- `∑[2*comp[A004277(2*n)]]` -/
def P2528792765263962978.Spec : Prop :=
  ∀ n, (P2528792765263962978.a n : ℤ) = A357837 n

end A357837

/-! ## A357837.P4453551663139166023

`A032765(n)+A005563(n)`
-/

namespace A357837.P4453551663139166023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 n + A005563 n

end

end A357837.P4453551663139166023

namespace A357837

/-- `A032765(n)+A005563(n)` -/
def P4453551663139166023.Spec : Prop :=
  ∀ n, P4453551663139166023.a n = A357837 n

end A357837

/-! ## A357837.P14833102068953537673

`A211480(n)+A004773(n)`
-/

namespace A357837.P14833102068953537673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211480 n + A004773 n

end

end A357837.P14833102068953537673

namespace A357837

/-- `A211480(n)+A004773(n)` -/
def P14833102068953537673.Spec : Prop :=
  ∀ n, P14833102068953537673.a n = A357837 n

end A357837

/-! ## A357837.P1667946353435858956

`A128422(n+1)+A028552(n)`
-/

namespace A357837.P1667946353435858956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128422 (n + 1) + A028552 n

end

end A357837.P1667946353435858956

namespace A357837

/-- `A128422(n+1)+A028552(n)` -/
def P1667946353435858956.Spec : Prop :=
  ∀ n, P1667946353435858956.a n = A357837 n

end A357837

/-! ## A357837.P7892238588072983827

`A147623(n)+A047464(n+1)`
-/

namespace A357837.P7892238588072983827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147623 n + A047464 (n + 1)

end

end A357837.P7892238588072983827

namespace A357837

/-- `A147623(n)+A047464(n+1)` -/
def P7892238588072983827.Spec : Prop :=
  ∀ n, P7892238588072983827.a n = A357837 n

end A357837

/-! ## A357837.P6717401047767821949

`A256320(n)+A047622(n+1)`
-/

namespace A357837.P6717401047767821949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n + A047622 (n + 1)

end

end A357837.P6717401047767821949

namespace A357837

/-- `A256320(n)+A047622(n+1)` -/
def P6717401047767821949.Spec : Prop :=
  ∀ n, P6717401047767821949.a n = A357837 n

end A357837

/-! ## A357837.P2558379467332930214

`A397982(n)+A047342(n+1)`
-/

namespace A357837.P2558379467332930214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397982 n + A047342 (n + 1)

end

end A357837.P2558379467332930214

namespace A357837

/-- `A397982(n)+A047342(n+1)` -/
def P2558379467332930214.Spec : Prop :=
  ∀ n, P2558379467332930214.a n = A357837 n

end A357837

/-! ## A357837.P16622245386362215512

`A397983(n)+A047349(n+1)`
-/

namespace A357837.P16622245386362215512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397983 n + A047349 (n + 1)

end

end A357837.P16622245386362215512

namespace A357837

/-- `A397983(n)+A047349(n+1)` -/
def P16622245386362215512.Spec : Prop :=
  ∀ n, P16622245386362215512.a n = A357837 n

end A357837

/-! ## A357837.P255619040962765938

`A183859(n+1)-A110331(n)`
-/

namespace A357837.P255619040962765938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183859 (n + 1) - A110331 n

end

end A357837.P255619040962765938

namespace A357837

/-- `A183859(n+1)-A110331(n)` -/
def P255619040962765938.Spec : Prop :=
  ∀ n, P255619040962765938.a n = A357837 n

end A357837

/-! ## A357837.P11778219851952648657

`A115067(n+1)-A007997(n+3)`
-/

namespace A357837.P11778219851952648657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115067 (n + 1) - A007997 (n + 3)

end

end A357837.P11778219851952648657

namespace A357837

/-- `A115067(n+1)-A007997(n+3)` -/
def P11778219851952648657.Spec : Prop :=
  ∀ n, P11778219851952648657.a n = A357837 n

end A357837

/-! ## A357837.P1112891463608666876

`A147623(n+1)-2`
-/

namespace A357837.P1112891463608666876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147623 (n + 1) - 2

end

end A357837.P1112891463608666876

namespace A357837

/-- `A147623(n+1)-2` -/
def P1112891463608666876.Spec : Prop :=
  ∀ n, P1112891463608666876.a n = A357837 n

end A357837

/-! ## A357837.P9425670929573030274

`∑[2*comp[A160411(n+1)]]`
-/

namespace A357837.P9425670929573030274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160411 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357837.P9425670929573030274

namespace A357837

/-- `∑[2*comp[A160411(n+1)]]` -/
def P9425670929573030274.Spec : Prop :=
  ∀ n, (P9425670929573030274.a n : ℤ) = A357837 n

end A357837

/-!
# A357839: a(n) is the greatest divisor > 1 of n which has already been listed, otherwise a(n) is the smallest number not yet listed; a(1) = 0.

The programs for A357839, there is no canonical definition to state claims against.
-/

/-! ## A357839.P14140546728765031499

`A304464(A164339(n+1))`
-/

namespace A357839.P14140546728765031499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304464 (A164339 (n + 1)).toNat

end

end A357839.P14140546728765031499

/-! ## A357839.P16288070207984072892

`n-A182631(A182699(n+1))`
-/

namespace A357839.P16288070207984072892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A182631 (A182699 (n + 1)).toNat

end

end A357839.P16288070207984072892

/-! ## A357839.P14155018423578446086

`A267263(A296266(n)-A000010(n+1))`
-/

namespace A357839.P14155018423578446086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A296266 n - A000010 (n + 1)).toNat

end

end A357839.P14155018423578446086

/-! ## A357839.P7635954099294778968

`A000720(n+1)-A160382(A113647(2*n+1))`
-/

namespace A357839.P7635954099294778968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A160382 (A113647 (2 * n + 1)).toNat

end

end A357839.P7635954099294778968

/-!
# A357840: Numbers k in A018900 with arithmetic derivative k' (A003415) in A018900.

The programs for A357840, there is no canonical definition to state claims against.
-/

/-! ## A357840.P9395266449530318530

`filter[A350552(n+1), A151774(#)]`
-/

namespace A357840.P9395266449530318530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A151774 (f1 j).toNat = 1) n)

end

end A357840.P9395266449530318530

/-! ## A357840.P5520000326837155931

`∩[A018900(n+1), A350552(n+1)]`
-/

namespace A357840.P5520000326837155931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357840.P5520000326837155931

/-! ## A357840.P2402335534166556527

`∩[A350552(n+1), A140513(n)+A059268(n)]`
-/

namespace A357840.P2402335534166556527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n + A059268 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357840.P2402335534166556527

/-! ## A357840.P11598454323539894409

`∩[A350552(n+1), A099627(n)+A137688(n)+1]`
-/

namespace A357840.P11598454323539894409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n + (A137688 n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357840.P11598454323539894409

/-! ## A357840.P9528441431761080003

`∩[2*A173786(n)-A059268(n), A350552(n+1)]`
-/

namespace A357840.P9528441431761080003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173786 n - A059268 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357840.P9528441431761080003

/-!
# A357841: Smith numbers (A006753) for which the arithmetic derivative (A003415) is also a Smith number.

The programs for A357841, there is no canonical definition to state claims against.
-/

/-! ## A357841.P18394117023655753606

`A006753(eq[A104144(n), A332677(n)])`
-/

namespace A357841.P18394117023655753606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A357841.P18394117023655753606

/-! ## A357841.P13571046999196252028

`A006753(eq[A104248(n+1), A191228(n+5)])`
-/

namespace A357841.P13571046999196252028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191228 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A357841.P13571046999196252028

/-!
# A357842: a(n) is the smallest number k for which k and the arithmetic derivative k' (A003415) have exactly n triangular divisors (A000217).

The programs for A357842, there is no canonical definition to state claims against.
-/

/-! ## A357842.P15416778646042119921

`A122749(2*n+5)%A145511(A128534(2*(n+2)))`
-/

namespace A357842.P15416778646042119921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122749 (2 * n + 5)) (A145511 (A128534 (2 * (n + 2))).toNat)

end

end A357842.P15416778646042119921

/-!
# A357844: Denominators of the partial alternating sums of the reciprocals of the number of divisors function (A000005).

The programs for A357844, there is no canonical definition to state claims against.
-/

/-! ## A357844.P1556336819026225859

`gcd(A006331(A217156(2*n+5)), A104529(n+1))`
-/

namespace A357844.P1556336819026225859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006331 (A217156 (2 * n + 5)).toNat) (A104529 (n + 1))

end

end A357844.P1556336819026225859

/-!
# A357849: Number of integer partitions (w,x,y) summing to n such that 2w = 3x + 4y.

The programs for A357849, there is no canonical definition to state claims against.
-/

/-! ## A357849.P13330885409284856244

`C(A025435(A243504(3*n+4)), A359511(n+1))`
-/

namespace A357849.P13330885409284856244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025435 (A243504 (3 * n + 4)).toNat).toNat (A359511 (n + 1)).toNat

end

end A357849.P13330885409284856244

/-! ## A357849.P16620470064771663405

`floor((A000119(n)-A342910(3*n+5))/log2(7))`
-/

namespace A357849.P16620470064771663405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000119 n - A342910 (3 * n + 5) : ℝ) / Real.logb 2 (7 : ℝ)⌋

end

end A357849.P16620470064771663405

/-! ## A357849.P10625661061037116482

`A005088(∑[A114640(n)]²)`
-/

namespace A357849.P10625661061037116482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A357849.P10625661061037116482

/-! ## A357849.P8730730779545389706

`A179801(A244895(n)+A008574(n))`
-/

namespace A357849.P8730730779545389706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (A244895 n + A008574 n).toNat

end

end A357849.P8730730779545389706

/-! ## A357849.P4632839202782132908

`A010060(A226630(n+1)*A308773(n))`
-/

namespace A357849.P4632839202782132908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A226630 (n + 1) * A308773 n).toNat

end

end A357849.P4632839202782132908

/-!
# A357850: Numbers whose prime indices do not have weakly decreasing run-sums. Heinz numbers of the partitions counted by A357865.

The programs for A357850, there is no canonical definition to state claims against.
-/

/-! ## A357850.P12015550229441251519

`comp[A357861(n+1)-1]+1`
-/

namespace A357850.P12015550229441251519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357861 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A357850.P12015550229441251519

/-! ## A357850.P10578313116241278072

`∪[A085232(n+1), A048452(n)]`
-/

namespace A357850.P10578313116241278072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048452 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357850.P10578313116241278072

/-! ## A357850.P2981078449705219442

`∪[A085234(n+1), A048452(n)]`
-/

namespace A357850.P2981078449705219442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048452 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357850.P2981078449705219442

/-! ## A357850.P2397871031055048292

`∪[A067326(n), A085232(n+1)]`
-/

namespace A357850.P2397871031055048292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357850.P2397871031055048292

/-! ## A357850.P16116326789483345927

`∪[A067326(n), A085234(n+1)]`
-/

namespace A357850.P16116326789483345927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357850.P16116326789483345927

/-! ## A357850.P9067761521065526161

`∪[A078819(n), A085232(n+1)]`
-/

namespace A357850.P9067761521065526161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078819 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357850.P9067761521065526161

/-! ## A357850.P7535337343796950656

`∪[A078819(n), A085234(n+1)]`
-/

namespace A357850.P7535337343796950656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078819 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357850.P7535337343796950656

/-! ## A357850.P4256804617849422807

`∪[A085232(n+1), A080971(n)]`
-/

namespace A357850.P4256804617849422807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080971 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357850.P4256804617849422807

/-! ## A357850.P6926143826573288200

`∪[A085234(n+1), A080971(n)]`
-/

namespace A357850.P6926143826573288200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080971 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357850.P6926143826573288200

/-! ## A357850.P13849741096635715101

`∪[A085232(n+1), A104677(n)]`
-/

namespace A357850.P13849741096635715101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104677 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357850.P13849741096635715101

/-!
# A357851: Numbers k such that the half-alternating sum of the prime indices of k is 1.

The programs for A357851, there is no canonical definition to state claims against.
-/

/-! ## A357851.P12246173199020412294

`eq[A248813(n), A360116(A069129(n+5))]`
-/

namespace A357851.P12246173199020412294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360116 (A069129 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357851.P12246173199020412294

/-!
# A357852: Replace prime(k) with prime(k+2) in the prime factorization of n.

The programs for A357852, the canonical program `A357852.P15360889113800815709` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357852 has offset 1).

The definition of A357852 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A357852.P15360889113800815709

`A003961(A003961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A357852

/-- `A003961(A003961(n+1))` -/
def P15360889113800815709.Spec : Prop :=
  ∀ n, P15360889113800815709.a n = A357852 (n + 1)

theorem P15360889113800815709.correct : P15360889113800815709.Spec := by
  intro n
  simp only [A357852, Nat.add_sub_cancel]

end A357852

/-! ## A357852.P16566013426096605221

`A249827(n+1)/5`
-/

namespace A357852.P16566013426096605221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249827 (n + 1) : ℚ) / 5

end

end A357852.P16566013426096605221

namespace A357852

/-- `A249827(n+1)/5` -/
def P16566013426096605221.Spec : Prop :=
  ∀ n, P16566013426096605221.a n = (A357852 (n + 1) : ℚ)

end A357852

/-! ## A357852.P11012598757196949539

`lcm(3, A045966(n+1))/3`
-/

namespace A357852.P11012598757196949539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A045966 (n + 1)) : ℚ) / 3

end

end A357852.P11012598757196949539

namespace A357852

/-- `lcm(3, A045966(n+1))/3` -/
def P11012598757196949539.Spec : Prop :=
  ∀ n, P11012598757196949539.a n = (A357852 (n + 1) : ℚ)

end A357852

/-! ## A357852.P2997926628148518479

`A045966(n*and(1, a(n-1))+1)` with `a(0)=1`
-/

namespace A357852.P2997926628148518479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045966 ((n : ℤ) * Int.land 1 (a (n - 1)) + 1).toNat

end

end A357852.P2997926628148518479

namespace A357852

/-- `A045966(n*and(1, a(n-1))+1)` -/
def P2997926628148518479.Spec : Prop :=
  ∀ n, P2997926628148518479.a n = A357852 (n + 1)

end A357852

/-! ## A357852.P2133546152936801862

`A045966(n+1)-A000038(n)`
-/

namespace A357852.P2133546152936801862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (n + 1) - A000038 n

end

end A357852.P2133546152936801862

namespace A357852

/-- `A045966(n+1)-A000038(n)` -/
def P2133546152936801862.Spec : Prop :=
  ∀ n, P2133546152936801862.a n = A357852 (n + 1)

theorem P2133546152936801862.correct : P2133546152936801862.Spec := by
  intro n
  simp only [A357852, Nat.add_sub_cancel, A357852.P2133546152936801862.a, A357852.P15360889113800815709.a, A000038, A000038.P13734959004655594922.a, A003961, A003961.P5996473960037614004.a, A045966, A045966.P14531198864673538185.a, A000007, A000007.P6599383543502402472.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357852

/-! ## A357852.P12246969150072442177

`and(A045966(n+1), A260196(n))`
-/

namespace A357852.P12246969150072442177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045966 (n + 1)) (A260196 n)

end

end A357852.P12246969150072442177

namespace A357852

/-- `and(A045966(n+1), A260196(n))` -/
def P12246969150072442177.Spec : Prop :=
  ∀ n, P12246969150072442177.a n = A357852 (n + 1)

end A357852

/-! ## A357852.P10983943255484638700

`A045966(n+1)-2*A000007(n)`
-/

namespace A357852.P10983943255484638700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (n + 1) - 2 * A000007 n

end

end A357852.P10983943255484638700

namespace A357852

/-- `A045966(n+1)-2*A000007(n)` -/
def P10983943255484638700.Spec : Prop :=
  ∀ n, P10983943255484638700.a n = A357852 (n + 1)

theorem P10983943255484638700.correct : P10983943255484638700.Spec := by
  intro n
  simp only [A357852, Nat.add_sub_cancel, A357852.P10983943255484638700.a, A357852.P15360889113800815709.a, A000007, A000007.P6599383543502402472.a, A003961, A003961.P5996473960037614004.a, A045966, A045966.P14531198864673538185.a, A000038, A000038.P13734959004655594922.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357852

/-! ## A357852.P2743964169027285454

`and(A045966(n+1), A153881(n+1))`
-/

namespace A357852.P2743964169027285454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045966 (n + 1)) (A153881 (n + 1))

end

end A357852.P2743964169027285454

namespace A357852

/-- `and(A045966(n+1), A153881(n+1))` -/
def P2743964169027285454.Spec : Prop :=
  ∀ n, P2743964169027285454.a n = A357852 (n + 1)

end A357852

/-! ## A357852.P4513885793847949964

`∑{d}[n+1, A067824(#)*A340194((n+1)/#)]`
-/

namespace A357852.P4513885793847949964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067824 d * A340194 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357852.P4513885793847949964

namespace A357852

/-- `∑{d}[n+1, A067824(#)*A340194((n+1)/#)]` -/
def P4513885793847949964.Spec : Prop :=
  ∀ n, P4513885793847949964.a n = A357852 (n + 1)

end A357852

/-! ## A357852.P16631733538491970553

`A045966(2*(n+1))/5`
-/

namespace A357852.P16631733538491970553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045966 (2 * (n + 1)) : ℚ) / 5

end

end A357852.P16631733538491970553

namespace A357852

/-- `A045966(2*(n+1))/5` -/
def P16631733538491970553.Spec : Prop :=
  ∀ n, P16631733538491970553.a n = (A357852 (n + 1) : ℚ)

end A357852

/-! ## A357852.P1324833903705917027

`A249818(A250469(A250469(A249817(n+1))))`
-/

namespace A357852.P1324833903705917027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (A250469 (A250469 (A249817 (n + 1)).toNat).toNat).toNat

end

end A357852.P1324833903705917027

namespace A357852

/-- `A249818(A250469(A250469(A249817(n+1))))` -/
def P1324833903705917027.Spec : Prop :=
  ∀ n, P1324833903705917027.a n = A357852 (n + 1)

end A357852

/-! ## A357852.P14753593360797213656

`A249735(A048673(n+1))`
-/

namespace A357852.P14753593360797213656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249735 (A048673 (n + 1)).toNat

end

end A357852.P14753593360797213656

namespace A357852

/-- `A249735(A048673(n+1))` -/
def P14753593360797213656.Spec : Prop :=
  ∀ n, P14753593360797213656.a n = A357852 (n + 1)

end A357852

/-! ## A357852.P166989419610991046

`A249735(A243501(n+1)/2)`
-/

namespace A357852.P166989419610991046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249735 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)).toNat

end

end A357852.P166989419610991046

namespace A357852

/-- `A249735(A243501(n+1)/2)` -/
def P166989419610991046.Spec : Prop :=
  ∀ n, P166989419610991046.a n = A357852 (n + 1)

end A357852

/-! ## A357852.P8928072762910097124

`sqrt(A379481(sqrt(A379481(n+1))))`
-/

namespace A357852.P8928072762910097124
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A379481 (SequenceMachineLib.roundAway (Real.sqrt (A379481 (n + 1) : ℝ))).toNat : ℝ)

end

end A357852.P8928072762910097124

namespace A357852

/-- `sqrt(A379481(sqrt(A379481(n+1))))` -/
def P8928072762910097124.Spec : Prop :=
  ∀ n, P8928072762910097124.a n = (A357852 (n + 1) : ℝ)

end A357852

/-! ## A357852.P6904080313002138442

`A250246(A250469(A250469(A250245(n+1))))`
-/

namespace A357852.P6904080313002138442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A250469 (A250469 (A250245 (n + 1)).toNat).toNat).toNat

end

end A357852.P6904080313002138442

namespace A357852

/-- `A250246(A250469(A250469(A250245(n+1))))` -/
def P6904080313002138442.Spec : Prop :=
  ∀ n, P6904080313002138442.a n = A357852 (n + 1)

end A357852

/-! ## A357852.P8166228994548745153

`A280498(5*lt[3*n, lcm(6, n)])`
-/

namespace A357852.P8166228994548745153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (5 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A357852.P8166228994548745153

namespace A357852

/-- `A280498(5*lt[3*n, lcm(6, n)])` -/
def P8166228994548745153.Spec : Prop :=
  ∀ n, P8166228994548745153.a n = A357852 (n + 1)

end A357852

/-! ## A357852.P6516431975066666147

`A280498(A084967(n+1))`
-/

namespace A357852.P6516431975066666147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (A084967 (n + 1)).toNat

end

end A357852.P6516431975066666147

namespace A357852

/-- `A280498(A084967(n+1))` -/
def P6516431975066666147.Spec : Prop :=
  ∀ n, P6516431975066666147.a n = A357852 (n + 1)

end A357852

/-! ## A357852.P6732119689048761845

`A045966(n+1)%A111414(n)`
-/

namespace A357852.P6732119689048761845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045966 (n + 1)) (A111414 n)

end

end A357852.P6732119689048761845

namespace A357852

/-- `A045966(n+1)%A111414(n)` -/
def P6732119689048761845.Spec : Prop :=
  ∀ n, P6732119689048761845.a n = A357852 (n + 1)

end A357852

/-! ## A357852.P5433464213055517915

`A253885(A253885(n))+1`
-/

namespace A357852.P5433464213055517915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 (A253885 n).toNat + 1

end

end A357852.P5433464213055517915

namespace A357852

/-- `A253885(A253885(n))+1` -/
def P5433464213055517915.Spec : Prop :=
  ∀ n, P5433464213055517915.a n = A357852 (n + 1)

end A357852

/-! ## A357852.P4221219116943721312

`A283980(A283980(n+1)/A006519(n+1))`
-/

namespace A357852.P4221219116943721312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283980 (SequenceMachineLib.roundAway ((A283980 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A357852.P4221219116943721312

namespace A357852

/-- `A283980(A283980(n+1)/A006519(n+1))` -/
def P4221219116943721312.Spec : Prop :=
  ∀ n, P4221219116943721312.a n = A357852 (n + 1)

end A357852

/-!
# A357853: Fully multiplicative with a(prime(k)) = A000009(k+1).

The programs for A357853, there is no canonical definition to state claims against.
-/

/-! ## A357853.P13023333066599216864

`A357982(A003961((n+1)/2^val(n+1, 2)))`
-/

namespace A357853.P13023333066599216864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

end

end A357853.P13023333066599216864

/-! ## A357853.P1736264894715453404

`A357982(A003961(A003961(A064989(n+1))))`
-/

namespace A357853.P1736264894715453404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (A003961 (A003961 (A064989 (n + 1)).toNat).toNat).toNat

end

end A357853.P1736264894715453404

/-! ## A357853.P12464415161181829906

`A357982(A003961(n+1))`
-/

namespace A357853.P12464415161181829906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (A003961 (n + 1)).toNat

end

end A357853.P12464415161181829906

/-! ## A357853.P1767021996209887801

`A357982(A045965(n+1))`
-/

namespace A357853.P1767021996209887801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (A045965 (n + 1)).toNat

end

end A357853.P1767021996209887801

/-! ## A357853.P6416489135689087823

`A357982(A249734(n+1))`
-/

namespace A357853.P6416489135689087823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (A249734 (n + 1)).toNat

end

end A357853.P6416489135689087823

/-! ## A357853.P10177720575821631170

`A357982(A283980(n+1))`
-/

namespace A357853.P10177720575821631170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (A283980 (n + 1)).toNat

end

end A357853.P10177720575821631170

/-!
# A357854: Squarefree numbers with a divisor having the same sum of prime indices as their quotient.

The programs for A357854, there is no canonical definition to state claims against.
-/

/-! ## A357854.P8902399611342478412

`∩[A295102(n+1), A357976(n+1)]`
-/

namespace A357854.P8902399611342478412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357854.P8902399611342478412

/-! ## A357854.P3885488006632010833

`filter[A357976(n+1), A008966(#)]`
-/

namespace A357854.P3885488006632010833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A357854.P3885488006632010833

/-! ## A357854.P13089613477545171532

`filter[A357976(n+1), A354819(#)]`
-/

namespace A357854.P13089613477545171532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A357854.P13089613477545171532

/-! ## A357854.P15814829703130833335

`∩[A005117(n+1), A357976(n+1)]`
-/

namespace A357854.P15814829703130833335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357854.P15814829703130833335

/-! ## A357854.P3668388355933897506

`∩[A357976(n+1), A365829(n+1)]`
-/

namespace A357854.P3668388355933897506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357854.P3668388355933897506

/-! ## A357854.P2933121712259794853

`∩[A000469(n+1), A357976(n+1)]`
-/

namespace A357854.P2933121712259794853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357854.P2933121712259794853

/-! ## A357854.P12668540803833428799

`record[A140700(A357976(n+1))]`
-/

namespace A357854.P12668540803833428799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140700 (A357976 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357854.P12668540803833428799

/-!
# A357855: Number of closed trails starting and ending at a fixed vertex in the complete undirected graph on n labeled vertices.

The programs for A357855, there is no canonical definition to state claims against.
-/

/-! ## A357855.P3886612229619384688

`A055202(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A357855.P3886612229619384688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A055202 (a (n - 1)).toNat

end

end A357855.P3886612229619384688

/-!
# A357856: Number of trails between two fixed distinct vertices in the complete undirected graph on n labeled vertices.

The programs for A357856, there is no canonical definition to state claims against.
-/

/-! ## A357856.P16182685414722678958

`A363731(C(∑[n], 2)+n)+n`
-/

namespace A357856.P16182685414722678958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363731 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n) + (n : ℤ)

end

end A357856.P16182685414722678958

/-!
# A357857: Number of (open and closed) trails in the complete undirected graph on n labeled vertices.

The programs for A357857, there is no canonical definition to state claims against.
-/

/-! ## A357857.P10520536578643800767

`(n+1)*A357855(n+1)+(n+1)*n*A357856(n+1)`
-/

namespace A357857.P10520536578643800767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A357855 (n + 1) + ((n + 1) * n : ℤ) * A357856 (n + 1)

end

end A357857.P10520536578643800767

/-!
# A357858: Number of integer partitions that can be obtained by iteratively adding and multiplying together parts of the integer partition with Heinz number n.

The programs for A357858, there is no canonical definition to state claims against.
-/

/-! ## A357858.P15182339584364418236

`A326334(3*(n+1))-A353835(A011782(n+1))`
-/

namespace A357858.P15182339584364418236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326334 (3 * (n + 1)) - A353835 (A011782 (n + 1)).toNat

end

end A357858.P15182339584364418236

/-! ## A357858.P13131974484101260727

`or(2^∑{e}[n+1, #-1], A319841((n+1)²/∏{p}[n+1, #]))`
-/

namespace A357858.P13131974484101260727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ))) (A319841 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat)

end

end A357858.P13131974484101260727

/-! ## A357858.P10962766599592610606

`A231561(A341548(n+1)+2)`
-/

namespace A357858.P10962766599592610606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231561 (A341548 (n + 1) + 2).toNat

end

end A357858.P10962766599592610606

/-! ## A357858.P14840231077798703699

`A039922(C(A039931(n+1), 4))`
-/

namespace A357858.P14840231077798703699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039922 (Nat.choose (A039931 (n + 1)).toNat 4)

end

end A357858.P14840231077798703699

/-! ## A357858.P2615477277156776018

`or(A025426(A052548(n)), A296119(n+1))`
-/

namespace A357858.P2615477277156776018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025426 (A052548 n).toNat) (A296119 (n + 1))

end

end A357858.P2615477277156776018

/-!
# A357859: Number of integer factorizations of 2n into distinct even factors.

The programs for A357859, there is no canonical definition to state claims against.
-/

/-! ## A357859.P15478077714801393597

`A108502(gcd(xor(1, -n), ∑[n]))`
-/

namespace A357859.P15478077714801393597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108502 (Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A357859.P15478077714801393597

/-! ## A357859.P18156974887980945250

`A108502(gcd(C(n, 2), xor(1, n))+n%2)`
-/

namespace A357859.P18156974887980945250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108502 (Nat.gcd (Nat.choose n 2) (Nat.xor 1 n) + n % 2)

end

end A357859.P18156974887980945250

/-! ## A357859.P12688133941907925747

`A108502(A152271(n))`
-/

namespace A357859.P12688133941907925747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108502 (A152271 n).toNat

end

end A357859.P12688133941907925747

/-! ## A357859.P18037049049579366777

`A108502(Δ[eq[1, A193592(n)]])`
-/

namespace A357859.P18037049049579366777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108502 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A357859.P18037049049579366777

/-! ## A357859.P13370846209941104349

`A357860(2*(n+1))`
-/

namespace A357859.P13370846209941104349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357860 (2 * (n + 1))

end

end A357859.P13370846209941104349

/-!
# A357860: Number of integer factorizations of n into distinct even factors.

The programs for A357860, there is no canonical definition to state claims against.
-/

/-! ## A357860.P10128286885441285300

`and(A028310(n), A357859(A065259(n+1)))`
-/

namespace A357860.P10128286885441285300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028310 n) (A357859 (A065259 (n + 1)).toNat)

end

end A357860.P10128286885441285300

/-! ## A357860.P3197248360142124157

`A060128(val(n+1, 2)^A165477(n))`
-/

namespace A357860.P3197248360142124157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (SequenceMachineLib.roundAway ((SequenceMachineLib.valuation (n + 1) 2 : ℚ) ^ (A165477 n : ℤ))).toNat

end

end A357860.P3197248360142124157

/-! ## A357860.P7284570973892709196

`A001221(A007814(n+1)^A055086(n)+1)`
-/

namespace A357860.P7284570973892709196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A007814 (n + 1) : ℚ) ^ (A055086 n : ℤ) + 1)).toNat

end

end A357860.P7284570973892709196

/-! ## A357860.P281254649106828850

`A007814(A136715(n+3)+A000217(2*n+1))`
-/

namespace A357860.P281254649106828850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A136715 (n + 3) + A000217 (2 * n + 1)).toNat

end

end A357860.P281254649106828850

/-! ## A357860.P8307804357520495466

`A046072(n+1)*A057427(A131575(n))`
-/

namespace A357860.P8307804357520495466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (n + 1) * A057427 (A131575 n).toNat

end

end A357860.P8307804357520495466

/-!
# A357861: Numbers whose prime indices have weakly decreasing run-sums. Heinz numbers of the partitions counted by A304406.

The programs for A357861, there is no canonical definition to state claims against.
-/

/-! ## A357861.P7770043151307681955

`∪[A353833(n+1), A357864(n+1)]`
-/

namespace A357861.P7770043151307681955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357861.P7770043151307681955

/-! ## A357861.P15717160851848597900

`∪[A353834(n+1), A357864(n+1)]`
-/

namespace A357861.P15717160851848597900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357861.P15717160851848597900

/-! ## A357861.P3584913098588713726

`∪[A357864(n+1), A383015(n+1)]`
-/

namespace A357861.P3584913098588713726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357861.P3584913098588713726

/-! ## A357861.P649216480469348392

`lt[A002049(A028234(n+1)+1), or(5, n)]+1`
-/

namespace A357861.P649216480469348392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002049 (A028234 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A357861.P649216480469348392

/-! ## A357861.P6323268516461945046

`∩[comp[A357850(n+1)], A357873(n+1)]`
-/

namespace A357861.P6323268516461945046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357850 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A357861.P6323268516461945046

/-!
# A357862: Numbers whose prime indices have strictly increasing run-sums. Heinz numbers of the partitions counted by A304428.

The programs for A357862, there is no canonical definition to state claims against.
-/

/-! ## A357862.P9889045693323130301

`comp[A357863(n+1)-1]+1`
-/

namespace A357862.P9889045693323130301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357863 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A357862.P9889045693323130301

/-! ## A357862.P4629922362821485226

`comp[lcm(A140831(n+1), A210851(n))]`
-/

namespace A357862.P4629922362821485226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A140831 (n + 1)) (A210851 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A357862.P4629922362821485226

/-! ## A357862.P775562750550746437

`comp[A038769(n+1)*A357863(n+1)]`
-/

namespace A357862.P775562750550746437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (n + 1) * A357863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A357862.P775562750550746437

/-! ## A357862.P6384170274044165284

`∪[∑[A051173(n+1)], A383397(n+1)]`
-/

namespace A357862.P6384170274044165284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A357862.P6384170274044165284

/-! ## A357862.P15766622592664330629

`comp[A353458(n+1)²*A357863(n+1)]`
-/

namespace A357862.P15766622592664330629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (n + 1) ^ 2 * A357863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A357862.P15766622592664330629

/-! ## A357862.P5966133001446313526

`comp[A267463(n)*A357863(A000005(n+1))]`
-/

namespace A357862.P5966133001446313526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267463 n * A357863 (A000005 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A357862.P5966133001446313526

/-! ## A357862.P12434528331469054694

`comp[A353458(A008518(n))*A357863(n+1)]`
-/

namespace A357862.P12434528331469054694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (A008518 n).toNat * A357863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A357862.P12434528331469054694

/-! ## A357862.P16287607393750106902

`comp[A267463(n)*A357863(A080825(n+2))]`
-/

namespace A357862.P16287607393750106902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267463 n * A357863 (A080825 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A357862.P16287607393750106902

/-! ## A357862.P7554846534961389843

`comp[A267463(n)*A357863(A037306(n+5))]`
-/

namespace A357862.P7554846534961389843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267463 n * A357863 (A037306 (n + 5)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A357862.P7554846534961389843

/-!
# A357863: Numbers whose prime indices do not have strictly increasing run-sums. Heinz numbers of the partitions not counted by A304428.

The programs for A357863, there is no canonical definition to state claims against.
-/

/-! ## A357863.P6813751021902188851

`∪[A353839(n+1), A357876(n+1)]`
-/

namespace A357863.P6813751021902188851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357863.P6813751021902188851

/-! ## A357863.P12295095603746521809

`∩[A140831(n+1), A254075(n+1)]`
-/

namespace A357863.P12295095603746521809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357863.P12295095603746521809

/-! ## A357863.P7738283884130838534

`∩[A009185(n+1), A155902(n)]`
-/

namespace A357863.P7738283884130838534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155902 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357863.P7738283884130838534

/-! ## A357863.P6467899040611281622

`∩[A140831(n+1), A155878(n)]`
-/

namespace A357863.P6467899040611281622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155878 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357863.P6467899040611281622

/-! ## A357863.P17874679865705747024

`∩[A140831(n+1), A155902(n)]`
-/

namespace A357863.P17874679865705747024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155902 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357863.P17874679865705747024

/-!
# A357864: Numbers whose prime indices have strictly decreasing run-sums. Heinz numbers of the partitions counted by A304430.

The programs for A357864, there is no canonical definition to state claims against.
-/

/-! ## A357864.P3324210707280641257

`∪[A000961(n+1), A102067(A246655(n+1))]`
-/

namespace A357864.P3324210707280641257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102067 (A246655 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357864.P3324210707280641257

/-! ## A357864.P14752701581334607973

`∪[A000961(n+1), A102067(A000961(n+2))]`
-/

namespace A357864.P14752701581334607973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102067 (A000961 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357864.P14752701581334607973

/-! ## A357864.P7247078738212923816

`∩[A133813(n+1), A353838(n+1)]`
-/

namespace A357864.P7247078738212923816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357864.P7247078738212923816

/-! ## A357864.P6448814703785291986

`∩[A353838(n+1), A357861(n+1)]`
-/

namespace A357864.P6448814703785291986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357864.P6448814703785291986

/-! ## A357864.P6454624551191276465

`∩[A353838(n+1), comp[A357850(n+1)]]`
-/

namespace A357864.P6454624551191276465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353838 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357850 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A357864.P6454624551191276465

/-!
# A357865: Number of integer partitions of n whose run-sums are not weakly increasing.

The programs for A357865, there is no canonical definition to state claims against.
-/

/-! ## A357865.P1376295211124836157

`A000041(n)-A304406(n)`
-/

namespace A357865.P1376295211124836157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A304406 n

end

end A357865.P1376295211124836157

/-! ## A357865.P10733698783994898098

`A213598(n)-A304406(n)`
-/

namespace A357865.P10733698783994898098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A304406 n

end

end A357865.P10733698783994898098

/-! ## A357865.P15095684406778053058

`∑[A002865(n)]-A304406(n)`
-/

namespace A357865.P15095684406778053058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A304406 n

end

end A357865.P15095684406778053058

/-! ## A357865.P7301710437850354060

`A119620(2*n)-A304406(n)`
-/

namespace A357865.P7301710437850354060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A304406 n

end

end A357865.P7301710437850354060

/-! ## A357865.P13354901860214822394

`A008284(A001844(n))-A304406(n)`
-/

namespace A357865.P13354901860214822394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A001844 n).toNat - A304406 n

end

end A357865.P13354901860214822394

/-!
# A357866: a(n) is the greatest remainder of n divided by its sum of digits in any base > 1.

The programs for A357866, there is no canonical definition to state claims against.
-/

/-! ## A357866.P13663522316316663780

`gcd(n, ∑[n])%Δ[floor(n*(n+2)/3)]`
-/

namespace A357866.P13663522316316663780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (n + 2) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) (f2 (n + 1) - f2 n)

end

end A357866.P13663522316316663780

/-! ## A357866.P11334541874943153421

`floor(n/(n%2+2))+1-gcd(2, (n%3)^(n%2))`
-/

namespace A357866.P11334541874943153421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((n % 2 + 2 : ℕ) : ℚ)⌋ + 1 - (Nat.gcd 2 ((n % 3) ^ (n % 2)) : ℤ)

end

end A357866.P11334541874943153421

/-! ## A357866.P324421838009263961

`A290988(n+2)-1`
-/

namespace A357866.P324421838009263961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290988 (n + 2) - 1

end

end A357866.P324421838009263961

/-! ## A357866.P4355775260914538069

`A006370(n)%∑[(n%3)!]`
-/

namespace A357866.P4355775260914538069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006370 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A357866.P4355775260914538069

/-! ## A357866.P16810368674784192291

`(n*ratio[gcd(2, n)])%A047217(n+2)`
-/

namespace A357866.P16810368674784192291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))) (A047217 (n + 2))

end

end A357866.P16810368674784192291

/-! ## A357866.P11484946012983256822

`A026741(n)%Δ[floor(n*(n+2)/3)]`
-/

namespace A357866.P11484946012983256822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (n + 2) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 n) (f1 (n + 1) - f1 n)

end

end A357866.P11484946012983256822

/-! ## A357866.P3119391682837822884

`A008612(or(3, 2*n)+n*and(1, n+1))-1`
-/

namespace A357866.P3119391682837822884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (Nat.lor 3 (2 * n) + n * Nat.land 1 (n + 1)) - 1

end

end A357866.P3119391682837822884

/-! ## A357866.P4824169698106707754

`A002837(A290988(n+2))`
-/

namespace A357866.P4824169698106707754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A290988 (n + 2)).toNat

end

end A357866.P4824169698106707754

/-! ## A357866.P6441805194529574389

`A006370(n)%A189786(n+1)`
-/

namespace A357866.P6441805194529574389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006370 n) (A189786 (n + 1))

end

end A357866.P6441805194529574389

/-! ## A357866.P8038204330660613100

`A070198(n)%A290988(n+2)`
-/

namespace A357866.P8038204330660613100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A290988 (n + 2))

end

end A357866.P8038204330660613100

/-!
# A357868: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..n} (k*j)!* Stirling2(n,k*j).

The programs for A357868, there is no canonical definition to state claims against.
-/

/-! ## A357868.P10194355578637064925

`A075169(A357881(n))`
-/

namespace A357868.P10194355578637064925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075169 (A357881 n).toNat

end

end A357868.P10194355578637064925

/-! ## A357868.P10490834107852599033

`A333221(A357881(n)+1)`
-/

namespace A357868.P10490834107852599033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333221 (A357881 n + 1).toNat

end

end A357868.P10490834107852599033

/-! ## A357868.P16711334712432161221

`A357881(n)-A357849(A287641(2*n))`
-/

namespace A357868.P16711334712432161221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357881 n - A357849 (A287641 (2 * n)).toNat

end

end A357868.P16711334712432161221

/-! ## A357868.P15776083295198478389

`xor(A082858(A222862(n+1)), A293135(n))`
-/

namespace A357868.P15776083295198478389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082858 (A222862 (n + 1)).toNat) (A293135 n)

end

end A357868.P15776083295198478389

/-! ## A357868.P11970551521349488101

`A130571(A357881(n))%A330952(3*n+4)`
-/

namespace A357868.P11970551521349488101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130571 (A357881 n).toNat) (A330952 (3 * n + 4))

end

end A357868.P11970551521349488101

/-!
# A357869: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..n} (k*j)!* Stirling2(n,k*j)/j!.

The programs for A357869, there is no canonical definition to state claims against.
-/

/-! ## A357869.P16428778050263037685

`A357293(n)*A357294(A047010(n))`
-/

namespace A357869.P16428778050263037685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357293 n * A357294 (A047010 n).toNat

end

end A357869.P16428778050263037685

/-! ## A357869.P9655640406317879563

`A333381(A173018(n))*A357293(n)`
-/

namespace A357869.P9655640406317879563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A173018 n).toNat * A357293 n

end

end A357869.P9655640406317879563

/-! ## A357869.P13480677235939894640

`A051159(n)!*A240600(A357881(n))`
-/

namespace A357869.P13480677235939894640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A051159 n).toNat : ℤ) * A240600 (A357881 n).toNat

end

end A357869.P13480677235939894640

/-! ## A357869.P11307286203740202363

`ceil(A055570(A357868(n))/A357858(n+1))`
-/

namespace A357869.P11307286203740202363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055570 (A357868 n).toNat : ℚ) / (A357858 (n + 1) : ℚ)⌉

end

end A357869.P11307286203740202363

/-! ## A357869.P15613299945241486455

`A008619(A030129(n+1))*A357293(n)`
-/

namespace A357869.P15613299945241486455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A030129 (n + 1)).toNat * A357293 n

end

end A357869.P15613299945241486455

/-!
# A357870: Triangle of integers related to generalized Markov numbers, read by rows.

The programs for A357870, there is no canonical definition to state claims against.
-/

/-! ## A357870.P734329636919842861

`record[and(n, -6)+2]*A014499(A189076(3*n+1))+1`
-/

namespace A357870.P734329636919842861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-6) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A014499 (A189076 (3 * n + 1)).toNat + 1

end

end A357870.P734329636919842861

/-!
# A357871: Total number of n-multisets of semi-Dyck paths from (0,0) to (n,n-2*j) for j=0..floor(n/2).

The programs for A357871, there is no canonical definition to state claims against.
-/

/-! ## A357871.P7135281425646326680

`A241069(∑[∑[2*n]])+1`
-/

namespace A357871.P7135281425646326680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241069 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A357871.P7135281425646326680

/-! ## A357871.P15368844203468172779

`A154804(record[(n-2)*a(n-3)]+1)` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A357871.P15368844203468172779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4] fun n f1 =>
  ((n : ℤ) - 2) * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154804 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A357871.P15368844203468172779

/-!
# A357872: a(n) = n * (3/2)^(v(n, 2) - v(n, 3)) where v(n, k) = valuation(n, k) mod 2 for n > 0.

The programs for A357872, the canonical program `A357872.P17060854756529812207` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357872 has offset 1).

The definition of A357872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357872.P17060854756529812207

`(n+1)*(3/2)^(A096268(n)-A182581(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A357872

/-- `(n+1)*(3/2)^(A096268(n)-A182581(n+1))` -/
def P17060854756529812207.Spec : Prop :=
  ∀ n, P17060854756529812207.a n = (A357872 (n + 1) : ℚ)

end A357872

/-! ## A357872.P10858421573432346109

`A008833(n+1)*A064614(A007913(n+1))`
-/

namespace A357872.P10858421573432346109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) * A064614 (A007913 (n + 1)).toNat

end

end A357872.P10858421573432346109

namespace A357872

/-- `A008833(n+1)*A064614(A007913(n+1))` -/
def P10858421573432346109.Spec : Prop :=
  ∀ n, P10858421573432346109.a n = A357872 (n + 1)

end A357872

/-!
# A357873: Numbers whose multiset of prime factors has all non-isomorphic multiset partitions.

The programs for A357873, there is no canonical definition to state claims against.
-/

/-! ## A357873.P341959190234053999

`comp[A100750(n+1)-37]`
-/

namespace A357873.P341959190234053999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100750 (n + 1) - 37

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A357873.P341959190234053999

/-! ## A357873.P16787185111898411012

`lt[A344652(n+1), 3]+1`
-/

namespace A357873.P16787185111898411012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344652 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A357873.P16787185111898411012

/-! ## A357873.P6797419238565952728

`lt[A335511(n+1), 4]+1`
-/

namespace A357873.P6797419238565952728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335511 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A357873.P6797419238565952728

/-! ## A357873.P8831067170404713387

`lt[A306268(n+1), 5]+1`
-/

namespace A357873.P8831067170404713387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306268 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A357873.P8831067170404713387

/-! ## A357873.P16223737607376219698

`lt[A359302(n+1), 7]+1`
-/

namespace A357873.P16223737607376219698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359302 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A357873.P16223737607376219698

/-! ## A357873.P3691642631456883685

`comp[A357874(n+1)-1]+1`
-/

namespace A357873.P3691642631456883685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357874 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A357873.P3691642631456883685

/-! ## A357873.P18446690819111660576

`lt[and(2, A349797(n+1)), 2]+1`
-/

namespace A357873.P18446690819111660576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A349797 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A357873.P18446690819111660576

/-! ## A357873.P13886232171166237561

`lt[log2(A344897(n)), ∏{e}[n+1, 3*2^#]]`
-/

namespace A357873.P13886232171166237561
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A344897 n : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), 3 * 2 ^ Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A357873.P13886232171166237561

/-! ## A357873.P7268136970194487404

`comp[lcm(n%2+5*n, A010467(2*n+3))]`
-/

namespace A357873.P7268136970194487404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n % 2 + 5 * n : ℕ) : ℤ) (A010467 (2 * n + 3 + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A357873.P7268136970194487404

/-! ## A357873.P5537833947336030100

`lt[A300548(n), A018818(n+1)]`
-/

namespace A357873.P5537833947336030100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300548 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357873.P5537833947336030100

/-!
# A357874: Numbers whose multiset of prime factors has at least two multiset partitions that are isomorphic.

The programs for A357874, there is no canonical definition to state claims against.
-/

/-! ## A357874.P51148165192225339

`∩[A033942(n+1), A130092(n+1)]`
-/

namespace A357874.P51148165192225339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357874.P51148165192225339

/-! ## A357874.P3996322498376114450

`∩[A058080(n+1), A130092(n+1)]`
-/

namespace A357874.P3996322498376114450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357874.P3996322498376114450

/-! ## A357874.P8503729716639290011

`∩[A066423(n+1), A130092(n+1)]`
-/

namespace A357874.P8503729716639290011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357874.P8503729716639290011

/-! ## A357874.P13782415802267026845

`∩[A033942(n+1), A182851(n+1)]`
-/

namespace A357874.P13782415802267026845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357874.P13782415802267026845

/-! ## A357874.P10519575688905842521

`∩[A100959(n+1), A130092(n+1)]`
-/

namespace A357874.P10519575688905842521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357874.P10519575688905842521

/-! ## A357874.P2806730250058840420

`∩[A102467(n+1), A130092(n+1)]`
-/

namespace A357874.P2806730250058840420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357874.P2806730250058840420

/-! ## A357874.P10993358650032395499

`∩[A058080(n+1), A182851(n+1)]`
-/

namespace A357874.P10993358650032395499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357874.P10993358650032395499

/-! ## A357874.P4009750679493217463

`∩[A111087(n+1), A130092(n+1)]`
-/

namespace A357874.P4009750679493217463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357874.P4009750679493217463

/-! ## A357874.P8918092175986024878

`∩[A066423(n+1), A182851(n+1)]`
-/

namespace A357874.P8918092175986024878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357874.P8918092175986024878

/-! ## A357874.P15868951951078836740

`∩[A122181(n+1), A130092(n+1)]`
-/

namespace A357874.P15868951951078836740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357874.P15868951951078836740

/-!
# A357875: Numbers whose run-sums of prime indices are weakly increasing.

The programs for A357875, there is no canonical definition to state claims against.
-/

/-! ## A357875.P656992346181409096

`comp[or((n-2)*n², 12*n)]`
-/

namespace A357875.P656992346181409096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((n : ℤ) - 2) * (n ^ 2 : ℤ)) (12 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A357875.P656992346181409096

/-! ## A357875.P15772337799876160368

`comp[Δ[lcm(n+1, n+21)]-n-1]`
-/

namespace A357875.P15772337799876160368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n + 21)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A357875.P15772337799876160368

/-! ## A357875.P9957837155846417325

`comp[Δ[3*p?[a(n-3)+8]]]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A357875.P9957837155846417325
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f3 =>
  f3 (n - 3) + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A357875.P9957837155846417325

/-! ## A357875.P7990841555893258669

`comp[a(n-1)+a(n-dr(n))]` with `a(0)=0, a(1)=45, a(2)=24`
-/

namespace A357875.P7990841555893258669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 45, 24] fun n f1 =>
  f1 (n - 1) + f1 (n - SequenceMachineLib.digitalRoot (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A357875.P7990841555893258669

/-! ## A357875.P7458564162553262192

`comp[n*A276552(n)]`
-/

namespace A357875.P7458564162553262192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276552 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A357875.P7458564162553262192

/-! ## A357875.P16361836545495775738

`comp[A262122(n+4)]+1`
-/

namespace A357875.P16361836545495775738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262122 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A357875.P16361836545495775738

/-! ## A357875.P6820495778836980601

`comp[n*A285443(n+2)]`
-/

namespace A357875.P6820495778836980601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A285443 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A357875.P6820495778836980601

/-! ## A357875.P11127748018808435014

`comp[n*A297567(n+4)]`
-/

namespace A357875.P11127748018808435014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A297567 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A357875.P11127748018808435014

/-! ## A357875.P16792152861770127586

`∑[A392080(A392080(n+3))]`
-/

namespace A357875.P16792152861770127586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392080 (A392080 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357875.P16792152861770127586

/-!
# A357877: The a(n)-th composition in standard order is the sequence of run-sums of the prime indices of n.

The programs for A357877, there is no canonical definition to state claims against.
-/

/-! ## A357877.P10222427231799161877

`A333220(A353832(n+1)%A352264(2*(n+1)))`
-/

namespace A357877.P10222427231799161877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333220 (Int.tmod (A353832 (n + 1)) (A352264 (2 * (n + 1)))).toNat

end

end A357877.P10222427231799161877

/-! ## A357877.P17342962197336174415

`A333220(A353832(n+1))%A331579(n+1)`
-/

namespace A357877.P17342962197336174415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333220 (A353832 (n + 1)).toNat) (A331579 (n + 1))

end

end A357877.P17342962197336174415

/-! ## A357877.P17363284031100874259

`A353847(A333220(n+1))`
-/

namespace A357877.P17363284031100874259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (A333220 (n + 1)).toNat

end

end A357877.P17363284031100874259

/-!
# A357878: Number of integer partitions of n whose run-sums are not weakly decreasing.

The programs for A357878, there is no canonical definition to state claims against.
-/

/-! ## A357878.P17532178223227498013

`A000041(n)-A304405(n)`
-/

namespace A357878.P17532178223227498013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A304405 n

end

end A357878.P17532178223227498013

/-! ## A357878.P9903564458530556472

`∑[A002865(n)]-A304405(n)`
-/

namespace A357878.P9903564458530556472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A304405 n

end

end A357878.P9903564458530556472

/-! ## A357878.P14559789651172159132

`∑{d}[n+1, A133732(#)]-A304405(n)`
-/

namespace A357878.P14559789651172159132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133732 d - A304405 n

end

end A357878.P14559789651172159132

/-! ## A357878.P14857135694353189476

`A035363(2*n)-A304405(n)`
-/

namespace A357878.P14857135694353189476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A304405 n

end

end A357878.P14857135694353189476

/-! ## A357878.P15620858325662310217

`A027293(A000124(n))-A304405(n)`
-/

namespace A357878.P15620858325662310217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (A000124 n).toNat - A304405 n

end

end A357878.P15620858325662310217

/-!
# A357879: Number of divisors of n with the same sum of prime indices as their quotient. Central column of A321144, taking gaps as 0's.

The programs for A357879, there is no canonical definition to state claims against.
-/

/-! ## A357879.P14165313700551607908

`A207538(n+1)%A060594(A388981(n+1))`
-/

namespace A357879.P14165313700551607908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207538 (n + 1)) (A060594 (A388981 (n + 1)).toNat)

end

end A357879.P14165313700551607908

/-! ## A357879.P537760627834837603

`and(A156264(A076467(n+1)), A207538(n+1))`
-/

namespace A357879.P537760627834837603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156264 (A076467 (n + 1)).toNat) (A207538 (n + 1))

end

end A357879.P537760627834837603

/-! ## A357879.P13662198741054613749

`and(A062052(n+1), A353487(A329456(2*n)))`
-/

namespace A357879.P13662198741054613749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062052 (n + 1)) (A353487 (A329456 (2 * n)).toNat)

end

end A357879.P13662198741054613749

/-! ## A357879.P17755077711295595018

`C(A204433(A350818(2*n+1)), A056737(n+1))`
-/

namespace A357879.P17755077711295595018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A204433 (A350818 (2 * n + 1)).toNat).toNat (A056737 (n + 1)).toNat

end

end A357879.P17755077711295595018

/-! ## A357879.P4472364125390114968

`and(A304500(A239934(n+1)), A332602(2*(n+1)))`
-/

namespace A357879.P4472364125390114968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A304500 (A239934 (n + 1)).toNat) (A332602 (2 * (n + 1)))

end

end A357879.P4472364125390114968

/-!
# A357881: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..n} (k*j)!* |Stirling1(n,k*j)|.

The programs for A357881, there is no canonical definition to state claims against.
-/

/-! ## A357881.P7873452258997431611

`A055570(A357868(n))`
-/

namespace A357881.P7873452258997431611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A357868 n).toNat

end

end A357881.P7873452258997431611

/-! ## A357881.P16715306550881774682

`A171828(A357868(n)+1)`
-/

namespace A357881.P16715306550881774682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171828 (A357868 n + 1).toNat

end

end A357881.P16715306550881774682

/-! ## A357881.P7973912381365909815

`A239016(A357868(n)+1)`
-/

namespace A357881.P7973912381365909815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239016 (A357868 n + 1).toNat

end

end A357881.P7973912381365909815

/-! ## A357881.P5151394000916493625

`A245342(A357868(n)^2^val(n+1, 2))`
-/

namespace A357881.P5151394000916493625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245342 (A357868 n ^ 2 ^ SequenceMachineLib.valuation (n + 1) 2).toNat

end

end A357881.P5151394000916493625

/-! ## A357881.P4880347069359120732

`xor(A357868(n), A368409(A180782(n+1)))`
-/

namespace A357881.P4880347069359120732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A357868 n) (A368409 (A180782 (n + 1)).toNat)

end

end A357881.P4880347069359120732

/-!
# A357882: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..n} (k*j)!* |Stirling1(n,k*j)|/j!.

The programs for A357882, there is no canonical definition to state claims against.
-/

/-! ## A357882.P10506914867434016403

`A336865(A158825(n+1))*A357119(n)`
-/

namespace A357882.P10506914867434016403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336865 (A158825 (n + 1)).toNat * A357119 n

end

end A357882.P10506914867434016403

/-! ## A357882.P966317634756566298

`A342017(A346007(2*n+3))*A357119(n)`
-/

namespace A357882.P966317634756566298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342017 (A346007 (2 * n + 3)).toNat * A357119 n

end

end A357882.P966317634756566298

/-! ## A357882.P7649800526542025485

`A342017(A346007(2*n+3))*A357883(n)`
-/

namespace A357882.P7649800526542025485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342017 (A346007 (2 * n + 3)).toNat * A357883 n

end

end A357882.P7649800526542025485

/-! ## A357882.P11019766886959335595

`A357119(n)*A357294(A047010(n))`
-/

namespace A357882.P11019766886959335595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357119 n * A357294 (A047010 n).toNat

end

end A357882.P11019766886959335595

/-! ## A357882.P7757752456501151264

`A357294(A047010(n))*A357883(n)`
-/

namespace A357882.P7757752456501151264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357294 (A047010 n).toNat * A357883 n

end

end A357882.P7757752456501151264

/-!
# A357883: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..n} (k*j)!* |Stirling1(n,k*j)|/(k!^j * j!).

The programs for A357883, there is no canonical definition to state claims against.
-/

/-! ## A357883.P10369530305971487997

`or(A331416(A161331(n)), A357119(n))`
-/

namespace A357883.P10369530305971487997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A331416 (A161331 n).toNat) (A357119 n)

end

end A357883.P10369530305971487997

/-!
# A357884: a(1)=0; if a(n-1) shares any digits with n-1, then a(n) = a(n-1) with all copies of digits from n-1 removed. Otherwise, a(n) = a(n-1) + (n-1).

The programs for A357884, there is no canonical definition to state claims against.
-/

/-! ## A357884.P9249167210053527018

`∑[n]-6%A152642(n+1)`
-/

namespace A357884.P9249167210053527018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.tmod 6 (A152642 (n + 1))

end

end A357884.P9249167210053527018

/-! ## A357884.P13018718954050207766

`∑[n/A057077(round(2^(n-2)))]`
-/

namespace A357884.P13018718954050207766
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A057077 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357884.P13018718954050207766

/-! ## A357884.P6931349252755651846

`∑[n*A033999(A000749(n))]`
-/

namespace A357884.P6931349252755651846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033999 (A000749 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357884.P6931349252755651846

/-! ## A357884.P1510042148497001693

`∑[A122861(A133962(n+1))+n]`
-/

namespace A357884.P1510042148497001693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122861 (A133962 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357884.P1510042148497001693

/-! ## A357884.P2972325134971467273

`∑[n*A033999(A058159(n+1))]`
-/

namespace A357884.P2972325134971467273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033999 (A058159 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357884.P2972325134971467273

/-!
# A357887: Triangle read by rows: T(n,k) = number of circuits of length k in the complete undirected graph on n labeled vertices, for n >= 1 and k = 0 .. n(n-1)/2.

The programs for A357887, there is no canonical definition to state claims against.
-/

/-! ## A357887.P4743400108054933355

`A158908(A062038(n))%A322071(n+1)`
-/

namespace A357887.P4743400108054933355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158908 (A062038 n).toNat) (A322071 (n + 1))

end

end A357887.P4743400108054933355

/-! ## A357887.P14917799049154080120

`A036043(lcm(A195598(n+5), A238130(n)))`
-/

namespace A357887.P14917799049154080120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 (Int.lcm (A195598 (n + 5)) (A238130 n))

end

end A357887.P14917799049154080120

/-!
# A357889: a(n) = (A022010(n) - 179)/210.

The programs for A357889, there is no canonical definition to state claims against.
-/

/-! ## A357889.P11636178308047405100

`(A022010(n+1)-179)/210`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357889.P11636178308047405100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022010 (n + 1) - 179 : ℚ) / 210

end

end A357889.P11636178308047405100

/-! ## A357889.P19301043635773580

`floor(A022010(n+1)/210)`
-/

namespace A357889.P19301043635773580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022010 (n + 1) : ℚ) / 210⌋

end

end A357889.P19301043635773580

/-! ## A357889.P12428235520027196833

`floor(∩[A078948(n+1), A253627(n+1)]/210)`
-/

namespace A357889.P12428235520027196833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253627 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 210⌋

end

end A357889.P12428235520027196833

/-! ## A357889.P5363036834283121374

`floor(∩[A253627(n+1), A257124(n+1)]/210)`
-/

namespace A357889.P5363036834283121374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257124 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 210⌋

end

end A357889.P5363036834283121374

/-! ## A357889.P8303803379033418192

`floor(∩[A253627(n+1), A276848(n+1)]/210)`
-/

namespace A357889.P8303803379033418192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276848 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 210⌋

end

end A357889.P8303803379033418192

/-!
# A357890: a(n) = (A022013(n) - 173)/210.

The programs for A357890, there is no canonical definition to state claims against.
-/

/-! ## A357890.P16117571931549610444

`(A022013(n+1)-173)/210`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357890.P16117571931549610444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022013 (n + 1) - 173 : ℚ) / 210

end

end A357890.P16117571931549610444

/-!
# A357893: a(d) is the minimal integer k such that all Jensen polynomials Jd,nPL(x) associated to MacMahon's plane partition function PL(n) have real roots for x >= k.

The programs for A357893, there is no canonical definition to state claims against.
-/

/-! ## A357893.P18034034557565585377

`∑[comp[A161224(n)]]+2`
-/

namespace A357893.P18034034557565585377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161224 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A357893.P18034034557565585377

/-!
# A357898: a(n) is the least k such that phi(k) + d(k) = 2^n, or -1 if there is no such k, where phi(k) = A000010(k) is Euler's totient function and d(k) = A000005(k) is the number of divisors of k.

The programs for A357898, there is no canonical definition to state claims against.
-/

/-! ## A357898.P3151379312467796994

`A071766(A281949(n+1)-1)`
-/

namespace A357898.P3151379312467796994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A281949 (n + 1) - 1).toNat

end

end A357898.P3151379312467796994

/-! ## A357898.P3199836621703115829

`A158405(A318445(n+1)+A000225(2*n+1))`
-/

namespace A357898.P3199836621703115829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (A318445 (n + 1) + A000225 (2 * n + 1)).toNat

end

end A357898.P3199836621703115829

/-!
# A357899: Let k be the smallest k such that the square root of k*n rounds to a prime number; a(n) is this prime number.

The programs for A357899, there is no canonical definition to state claims against.
-/

/-! ## A357899.P4440588052308962732

`round(sqrt(A357477(n+1)*(n+1)))`
-/

namespace A357899.P4440588052308962732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A357477 (n + 1) * (n + 1 : ℤ) : ℝ))

end

end A357899.P4440588052308962732

/-! ## A357899.P9067543492415010696

`A000194((n+1)*A357477(n+1))`
-/

namespace A357899.P9067543492415010696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((n + 1 : ℤ) * A357477 (n + 1)).toNat

end

end A357899.P9067543492415010696

/-! ## A357899.P7457042323385064335

`A151800(A259361(n*A357477(n+1)))`
-/

namespace A357899.P7457042323385064335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A259361 ((n : ℤ) * A357477 (n + 1)).toNat).toNat

end

end A357899.P7457042323385064335

