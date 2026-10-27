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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A181503: Slowest-growing sequence of primes p where 1/(p+1) sums to 1 without actually reaching it.

The programs for A181503, there is no canonical definition to state claims against.
-/

/-! ## A181503.P11627984695291187810

`p?[lt[A360281(n+4), 43]]`
-/

namespace A181503.P11627984695291187810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360281 (n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A181503.P11627984695291187810

/-! ## A181503.P5926879179335202696

`p?[or(n, A251751(n+1))]`
-/

namespace A181503.P5926879179335202696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A251751 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181503.P5926879179335202696

/-! ## A181503.P3343093597395173244

`A137814(∑[A006721(n)])`
-/

namespace A181503.P3343093597395173244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137814 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A181503.P3343093597395173244

/-!
# A181504: A000272(n+1) - A000951(n), n >= 6. Number of forests of rooted labeled trees with n nodes and height >= 5.

The programs for A181504, there is no canonical definition to state claims against.
-/

/-! ## A181504.P13311711026966757834

`A000272(n+7)-A000951(n+6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181504.P13311711026966757834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (n + 7) - A000951 (n + 6)

end

end A181504.P13311711026966757834

/-!
# A181505: Primes such that the sum of all primes squared up to itself is a prime.

The programs for A181505, there is no canonical definition to state claims against.
-/

/-! ## A181505.P15638985008590962803

`A000040(A098561(n+1))`
-/

namespace A181505.P15638985008590962803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A098561 (n + 1)).toNat

end

end A181505.P15638985008590962803

/-! ## A181505.P13143051703314996997

`A008578(A098561(n+1)+1)`
-/

namespace A181505.P13143051703314996997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A098561 (n + 1) + 1).toNat

end

end A181505.P13143051703314996997

/-! ## A181505.P8724203131898957325

`A182986(A098561(n+1)+1)`
-/

namespace A181505.P8724203131898957325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A098561 (n + 1) + 1).toNat

end

end A181505.P8724203131898957325

/-! ## A181505.P13911932170765407195

`A065091(A098561(n+1)-1)`
-/

namespace A181505.P13911932170765407195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A098561 (n + 1) - 1).toNat

end

end A181505.P13911932170765407195

/-! ## A181505.P18213328007566648716

`A158611(A098561(n+1)+2)`
-/

namespace A181505.P18213328007566648716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A098561 (n + 1) + 2).toNat

end

end A181505.P18213328007566648716

/-!
# A181506: TNP(n,k) triangle read by rows. TNP(n,k) is the number of triangular-number partitions of n with k parts.

The programs for A181506, there is no canonical definition to state claims against.
-/

/-! ## A181506.P2914339803227818935

`A319797(comp[∑[n]])`
-/

namespace A181506.P2914339803227818935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A181506.P2914339803227818935

/-! ## A181506.P6863093361902205574

`A319797(A014132(n+1))%A100897(n)`
-/

namespace A181506.P6863093361902205574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319797 (A014132 (n + 1)).toNat) (A100897 n)

end

end A181506.P6863093361902205574

/-! ## A181506.P2723427794008864281

`A319797(A014132(n+1))+A111332(A219644(n))`
-/

namespace A181506.P2723427794008864281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A014132 (n + 1)).toNat + A111332 (A219644 n).toNat

end

end A181506.P2723427794008864281

/-! ## A181506.P8363308086491502427

`A319797(A014132(n+1))+A278510(A259788(n+2))`
-/

namespace A181506.P8363308086491502427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A014132 (n + 1)).toNat + A278510 (A259788 (n + 2)).toNat

end

end A181506.P8363308086491502427

/-! ## A181506.P16488765848027934975

`A056594(A108269(n+1))*A319797(A014132(n+1))`
-/

namespace A181506.P16488765848027934975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A108269 (n + 1)).toNat * A319797 (A014132 (n + 1)).toNat

end

end A181506.P16488765848027934975

/-! ## A181506.P7829997445350291722

`ceil(A319797(A014132(n+1))/A164663(n))`
-/

namespace A181506.P7829997445350291722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A319797 (A014132 (n + 1)).toNat : ℚ) / (A164663 n : ℚ)⌉

end

end A181506.P7829997445350291722

/-!
# A181507: Primes such that the sum of squares of digits of all primes up to itself is a prime.

The programs for A181507, there is no canonical definition to state claims against.
-/

/-! ## A181507.P4437311333319319316

`A161929(A302988(n+1))`
-/

namespace A181507.P4437311333319319316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161929 (A302988 (n + 1)).toNat

end

end A181507.P4437311333319319316

/-! ## A181507.P10463645912462455510

`A300273(∑[A375566(2*n+3)])`
-/

namespace A181507.P10463645912462455510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375566 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A181507.P10463645912462455510

/-!
# A181508: Primes expressed as the sum of square of digits of all primes.

The programs for A181508, there is no canonical definition to state claims against.
-/

/-! ## A181508.P16606918695128078861

`p?[∑[A376714(n+1)]]`
-/

namespace A181508.P16606918695128078861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376714 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181508.P16606918695128078861

/-! ## A181508.P346531278418835808

`p?[∑[A003132(A004087(n+1))]]`
-/

namespace A181508.P346531278418835808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A004087 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181508.P346531278418835808

/-! ## A181508.P16567423107608147508

`p?[∑[A003132(A028906(n+1))]]`
-/

namespace A181508.P16567423107608147508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A028906 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181508.P16567423107608147508

/-! ## A181508.P8120012703208143128

`p?[∑[A003132(A063884(n+1))]]`
-/

namespace A181508.P8120012703208143128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A063884 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181508.P8120012703208143128

/-! ## A181508.P17852036237881765415

`p?[∑[A003132(A063904(n+1))]]`
-/

namespace A181508.P17852036237881765415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A063904 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181508.P17852036237881765415

/-!
# A181509: a(1) = 2, a(n) = (n-th-even n^3) - (sum of previous terms).

The programs for A181509, the canonical program `A181509.P7419893243980551155` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181509 has offset 1).

The definition of A181509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181509.P7419893243980551155

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=2, a(1)=6, a(2)=56, a(3)=152, a(4)=296`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A181509

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P7419893243980551155.Spec : Prop :=
  ∀ n, P7419893243980551155.a n = A181509 (n + 1)

theorem P7419893243980551155.correct : P7419893243980551155.Spec := by
  intro n
  simp only [A181509, Nat.add_sub_cancel]

end A181509

/-! ## A181509.P9689973573684841060

`Δ[A004275(n)²*A300576(n+1)]`
-/

namespace A181509.P9689973573684841060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n ^ 2 * A300576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181509.P9689973573684841060

namespace A181509

/-- `Δ[A004275(n)²*A300576(n+1)]` -/
def P9689973573684841060.Spec : Prop :=
  ∀ n, P9689973573684841060.a n = A181509 (n + 1)

end A181509

/-! ## A181509.P15982581709723817610

`lcm(2, A009943(A004273(n)))`
-/

namespace A181509.P15982581709723817610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A009943 (A004273 n).toNat)

end

end A181509.P15982581709723817610

namespace A181509

/-- `lcm(2, A009943(A004273(n)))` -/
def P15982581709723817610.Spec : Prop :=
  ∀ n, (P15982581709723817610.a n : ℤ) = A181509 (n + 1)

end A181509

/-! ## A181509.P17845927610937008379

`A009943(A004273(n))+A000007(n)`
-/

namespace A181509.P17845927610937008379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009943 (A004273 n).toNat + A000007 n

end

end A181509.P17845927610937008379

namespace A181509

/-- `A009943(A004273(n))+A000007(n)` -/
def P17845927610937008379.Spec : Prop :=
  ∀ n, P17845927610937008379.a n = A181509 (n + 1)

end A181509

/-! ## A181509.P12430807442419103847

`Δ[record[A001105(n)*A097140(n)]]`
-/

namespace A181509.P12430807442419103847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n * A097140 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181509.P12430807442419103847

namespace A181509

/-- `Δ[record[A001105(n)*A097140(n)]]` -/
def P12430807442419103847.Spec : Prop :=
  ∀ n, P12430807442419103847.a n = A181509 (n + 1)

end A181509

/-! ## A181509.P13819616703895204299

`Δ[record[n*A081350(A000265(n+1))]]`
-/

namespace A181509.P13819616703895204299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A081350 (A000265 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181509.P13819616703895204299

namespace A181509

/-- `Δ[record[n*A081350(A000265(n+1))]]` -/
def P13819616703895204299.Spec : Prop :=
  ∀ n, P13819616703895204299.a n = A181509 (n + 1)

end A181509

/-!
# A181510: Number of permutations of the multiset {1,1,2,2,3,3,...,n+1,n+1} avoiding the permutation patterns {132, 231, 2134}.

The programs for A181510, the canonical program `A181510.P12708566249263007351` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181510 has offset 1).

The definition of A181510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181510.P3043208024285048170

`((2*(n+1)+3)²-13)/2`
-/

namespace A181510.P3043208024285048170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) + 3) ^ 2 : ℤ) - 13 : ℚ) / 2

end

end A181510.P3043208024285048170

namespace A181510

/-- `((2*(n+1)+3)²-13)/2` -/
def P3043208024285048170.Spec : Prop :=
  ∀ n, P3043208024285048170.a n = (A181510 (n + 1) : ℚ)

theorem P3043208024285048170.correct : P3043208024285048170.Spec := by
  intro n
  simp only [A181510, Nat.add_sub_cancel, A181510.P3043208024285048170.a, A181510.P12708566249263007351.a, A014209, A014209.P8391054817103649375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181510

/-! ## A181510.P12708566249263007351

`2*A014209(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A181510

/-- `2*A014209(n+1)` -/
def P12708566249263007351.Spec : Prop :=
  ∀ n, P12708566249263007351.a n = A181510 (n + 1)

theorem P12708566249263007351.correct : P12708566249263007351.Spec := by
  intro n
  simp only [A181510, Nat.add_sub_cancel]

end A181510

/-! ## A181510.P10706992398479215412

`∑[a(n-1)+4]` with `a(0)=6, a(1)=12`
-/

namespace A181510.P10706992398479215412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 12] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181510.P10706992398479215412

namespace A181510

/-- `∑[a(n-1)+4]` -/
def P10706992398479215412.Spec : Prop :=
  ∀ n, (P10706992398479215412.a n : ℤ) = A181510 (n + 1)

end A181510

/-! ## A181510.P14507251154983933238

`lcm(2, n*(n+5)+3)`
-/

namespace A181510.P14507251154983933238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n * (n + 5) + 3)

end

end A181510.P14507251154983933238

namespace A181510

/-- `lcm(2, n*(n+5)+3)` -/
def P14507251154983933238.Spec : Prop :=
  ∀ n, (P14507251154983933238.a n : ℤ) = A181510 (n + 1)

end A181510

/-! ## A181510.P2316292532519943317

`∑[ogf((6-2x^2)/(1-2x+x^2))]`
-/

namespace A181510.P2316292532519943317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 0, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181510.P2316292532519943317

namespace A181510

/-- `∑[ogf((6-2x^2)/(1-2x+x^2))]` -/
def P2316292532519943317.Spec : Prop :=
  ∀ n, P2316292532519943317.a n = A181510 (n + 1)

end A181510

/-! ## A181510.P13728370633104638235

`ogf((6-2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A181510.P13728370633104638235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 0, -2] [1, -3, 3, -1] n

end

end A181510.P13728370633104638235

namespace A181510

/-- `ogf((6-2x^2)/(1-3x+3x^2-x^3))` -/
def P13728370633104638235.Spec : Prop :=
  ∀ n, P13728370633104638235.a n = A181510 (n + 1)

end A181510

/-! ## A181510.P1725068638464249207

`ceil(4*(C(n+3, 2)-ϕ))`
-/

namespace A181510.P1725068638464249207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * ((Nat.choose (n + 3) 2 : ℝ) - Real.goldenRatio)⌉

end

end A181510.P1725068638464249207

namespace A181510

/-- `ceil(4*(C(n+3, 2)-ϕ))` -/
def P1725068638464249207.Spec : Prop :=
  ∀ n, P1725068638464249207.a n = A181510 (n + 1)

end A181510

/-! ## A181510.P2114692737380448785

`round(4*(C(n+3, 2)-ϕ))`
-/

namespace A181510.P2114692737380448785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 * ((Nat.choose (n + 3) 2 : ℝ) - Real.goldenRatio))

end

end A181510.P2114692737380448785

namespace A181510

/-- `round(4*(C(n+3, 2)-ϕ))` -/
def P2114692737380448785.Spec : Prop :=
  ∀ n, P2114692737380448785.a n = A181510 (n + 1)

end A181510

/-! ## A181510.P5406211380165240214

`or(2, 4*(∑[n+1]+n))`
-/

namespace A181510.P5406211380165240214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (4 * (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A181510.P5406211380165240214

namespace A181510

/-- `or(2, 4*(∑[n+1]+n))` -/
def P5406211380165240214.Spec : Prop :=
  ∀ n, (P5406211380165240214.a n : ℤ) = A181510 (n + 1)

end A181510

/-! ## A181510.P1582722622950372578

`xor(2, 4*(∑[n+1]+n))`
-/

namespace A181510.P1582722622950372578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (4 * (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A181510.P1582722622950372578

namespace A181510

/-- `xor(2, 4*(∑[n+1]+n))` -/
def P1582722622950372578.Spec : Prop :=
  ∀ n, (P1582722622950372578.a n : ℤ) = A181510 (n + 1)

end A181510

/-! ## A181510.P2605492047109210073

`record[abs(2*(3-n²+n))]`
-/

namespace A181510.P2605492047109210073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (3 - (n ^ 2 : ℤ) + (n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181510.P2605492047109210073

namespace A181510

/-- `record[abs(2*(3-n²+n))]` -/
def P2605492047109210073.Spec : Prop :=
  ∀ n, P2605492047109210073.a n = A181510 (n + 1)

end A181510

/-! ## A181510.P15527022337008559070

`∑[∪[4*(n+3), (n+3)!]]`
-/

namespace A181510.P15527022337008559070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181510.P15527022337008559070

namespace A181510

/-- `∑[∪[4*(n+3), (n+3)!]]` -/
def P15527022337008559070.Spec : Prop :=
  ∀ n, (P15527022337008559070.a n : ℤ) = A181510 (n + 1)

end A181510

/-! ## A181510.P16525387256972438567

`2*or(1, (n+2)²+n-1)`
-/

namespace A181510.P16525387256972438567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (((n + 2) ^ 2 : ℤ) + ((n : ℤ) - 1))

end

end A181510.P16525387256972438567

namespace A181510

/-- `2*or(1, (n+2)²+n-1)` -/
def P16525387256972438567.Spec : Prop :=
  ∀ n, P16525387256972438567.a n = A181510 (n + 1)

end A181510

/-! ## A181510.P5271339711705783552

`2*xor(1, (n+2)²+n-2)`
-/

namespace A181510.P5271339711705783552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor 1 (((n + 2) ^ 2 : ℤ) + ((n : ℤ) - 2))

end

end A181510.P5271339711705783552

namespace A181510

/-- `2*xor(1, (n+2)²+n-2)` -/
def P5271339711705783552.Spec : Prop :=
  ∀ n, P5271339711705783552.a n = A181510 (n + 1)

end A181510

/-! ## A181510.P2481872953474756974

`abs(a(n-1)+4*(n+2))` with `a(0)=6`
-/

namespace A181510.P2481872953474756974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 4 * (n + 2)

end

end A181510.P2481872953474756974

namespace A181510

/-- `abs(a(n-1)+4*(n+2))` -/
def P2481872953474756974.Spec : Prop :=
  ∀ n, (P2481872953474756974.a n : ℤ) = A181510 (n + 1)

theorem P2481872953474756974.correct : P2481872953474756974.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A181510, Nat.add_sub_cancel, A181510.P2481872953474756974.a, A181510.P12708566249263007351.a, A014209, A014209.P8391054817103649375.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A181510, Nat.add_sub_cancel, A181510.P2481872953474756974.a, A181510.P12708566249263007351.a, A014209, A014209.P8391054817103649375.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A181510

/-! ## A181510.P14226822898386109314

`floor(a(n-1)+4*(n+2))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A181510.P14226822898386109314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 4 * (n + 2)

end

end A181510.P14226822898386109314

namespace A181510

/-- `floor(a(n-1)+4*(n+2))` -/
def P14226822898386109314.Spec : Prop :=
  ∀ n, (P14226822898386109314.a n : ℤ) = A181510 (n + 1)

theorem P14226822898386109314.correct : P14226822898386109314.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A181510, Nat.add_sub_cancel, A181510.P14226822898386109314.a, A181510.P12708566249263007351.a, A014209, A014209.P8391054817103649375.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A181510, Nat.add_sub_cancel, A181510.P14226822898386109314.a, A181510.P12708566249263007351.a, A014209, A014209.P8391054817103649375.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A181510

/-! ## A181510.P18187222103616078184

`ceil(a(n-1)+4*(n+2))` with `a(0)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A181510.P18187222103616078184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 4 * (n + 2)

end

end A181510.P18187222103616078184

namespace A181510

/-- `ceil(a(n-1)+4*(n+2))` -/
def P18187222103616078184.Spec : Prop :=
  ∀ n, (P18187222103616078184.a n : ℤ) = A181510 (n + 1)

theorem P18187222103616078184.correct : P18187222103616078184.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A181510, Nat.add_sub_cancel, A181510.P18187222103616078184.a, A181510.P12708566249263007351.a, A014209, A014209.P8391054817103649375.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A181510, Nat.add_sub_cancel, A181510.P18187222103616078184.a, A181510.P12708566249263007351.a, A014209, A014209.P8391054817103649375.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A181510

/-! ## A181510.P15670982354495400824

`round(a(n-1)+4*(n+2))` with `a(0)=6`

`round` is left out, it is the identity on integers.
-/

namespace A181510.P15670982354495400824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 4 * (n + 2)

end

end A181510.P15670982354495400824

namespace A181510

/-- `round(a(n-1)+4*(n+2))` -/
def P15670982354495400824.Spec : Prop :=
  ∀ n, (P15670982354495400824.a n : ℤ) = A181510 (n + 1)

theorem P15670982354495400824.correct : P15670982354495400824.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A181510, Nat.add_sub_cancel, A181510.P15670982354495400824.a, A181510.P12708566249263007351.a, A014209, A014209.P8391054817103649375.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A181510, Nat.add_sub_cancel, A181510.P15670982354495400824.a, A181510.P12708566249263007351.a, A014209, A014209.P8391054817103649375.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A181510

/-! ## A181510.P317161627366484342

`2*(record[(n-1)*(n-3)]+n)`
-/

namespace A181510.P317161627366484342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ))

end

end A181510.P317161627366484342

namespace A181510

/-- `2*(record[(n-1)*(n-3)]+n)` -/
def P317161627366484342.Spec : Prop :=
  ∀ n, P317161627366484342.a n = A181510 (n + 1)

end A181510

/-! ## A181510.P5690776840279552950

`2*(n-∑[a(n-1)-2])` with `a(0)=-3`
-/

namespace A181510.P5690776840279552950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-3] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181510.P5690776840279552950

namespace A181510

/-- `2*(n-∑[a(n-1)-2])` -/
def P5690776840279552950.Spec : Prop :=
  ∀ n, P5690776840279552950.a n = A181510 (n + 1)

end A181510

/-!
# A181511: Triangle T(n,k) = n!/(n-k)! read by rows, 0 <= k < n.

The programs for A181511, the canonical program `A181511.P5187831063642787000` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181511 has offset 1).

The definition of A181511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181511.P5187831063642787000

`(row(n)+1)!/(row(n)+1-col(n))!`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A181511

/-- `(row(n)+1)!/(row(n)+1-col(n))!` -/
def P5187831063642787000.Spec : Prop :=
  ∀ n, P5187831063642787000.a n = (A181511 (n + 1) : ℚ)

end A181511

/-! ## A181511.P8857230879135794390

`col(n)!*C(row(n)+1, col(n))`
-/

namespace A181511.P8857230879135794390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.triCol n) * Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n)

end

end A181511.P8857230879135794390

namespace A181511

/-- `col(n)!*C(row(n)+1, col(n))` -/
def P8857230879135794390.Spec : Prop :=
  ∀ n, (P8857230879135794390.a n : ℤ) = A181511 (n + 1)

end A181511

/-! ## A181511.P15339586588521038347

`A008279(comp[∑[n-1]])`
-/

namespace A181511.P15339586588521038347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A181511.P15339586588521038347

namespace A181511

/-- `A008279(comp[∑[n-1]])` -/
def P15339586588521038347.Spec : Prop :=
  ∀ n, P15339586588521038347.a n = A181511 (n + 1)

end A181511

/-! ## A181511.P4247353350816919127

`A074909(n)*A233543(n)`
-/

namespace A181511.P4247353350816919127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A233543 n

end

end A181511.P4247353350816919127

namespace A181511

/-- `A074909(n)*A233543(n)` -/
def P4247353350816919127.Spec : Prop :=
  ∀ n, P4247353350816919127.a n = A181511 (n + 1)

end A181511

/-! ## A181511.P3145964658862366487

`A002262(n)!*A074909(n)`
-/

namespace A181511.P3145964658862366487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A074909 n

end

end A181511.P3145964658862366487

namespace A181511

/-- `A002262(n)!*A074909(n)` -/
def P3145964658862366487.Spec : Prop :=
  ∀ n, P3145964658862366487.a n = A181511 (n + 1)

end A181511

/-! ## A181511.P2493600350840987880

`A077012(n+1)/A119502(n)`
-/

namespace A181511.P2493600350840987880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077012 (n + 1) : ℚ) / (A119502 n : ℚ)

end

end A181511.P2493600350840987880

namespace A181511

/-- `A077012(n+1)/A119502(n)` -/
def P2493600350840987880.Spec : Prop :=
  ∀ n, P2493600350840987880.a n = (A181511 (n + 1) : ℚ)

end A181511

/-! ## A181511.P13780108150672975534

`A008279(n)/A007318(n)*A074909(n)`
-/

namespace A181511.P13780108150672975534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n : ℚ) / (A007318 n : ℚ) * (A074909 n : ℚ)

end

end A181511.P13780108150672975534

namespace A181511

/-- `A008279(n)/A007318(n)*A074909(n)` -/
def P13780108150672975534.Spec : Prop :=
  ∀ n, P13780108150672975534.a n = (A181511 (n + 1) : ℚ)

end A181511

/-! ## A181511.P12805508921463246366

`A007318(A014132(n+1)-1)*A233543(n)`
-/

namespace A181511.P12805508921463246366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014132 (n + 1) - 1).toNat * A233543 n

end

end A181511.P12805508921463246366

namespace A181511

/-- `A007318(A014132(n+1)-1)*A233543(n)` -/
def P12805508921463246366.Spec : Prop :=
  ∀ n, P12805508921463246366.a n = A181511 (n + 1)

end A181511

/-! ## A181511.P10548602745402480812

`A068424(n+1)/A004736(n+1)`
-/

namespace A181511.P10548602745402480812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068424 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A181511.P10548602745402480812

namespace A181511

/-- `A068424(n+1)/A004736(n+1)` -/
def P10548602745402480812.Spec : Prop :=
  ∀ n, P10548602745402480812.a n = (A181511 (n + 1) : ℚ)

end A181511

/-! ## A181511.P1642366864166071694

`A001263(n+1)/A007318(n)²*A121757(n)`
-/

namespace A181511.P1642366864166071694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n ^ 2 : ℚ) * (A121757 n : ℚ)

end

end A181511.P1642366864166071694

namespace A181511

/-- `A001263(n+1)/A007318(n)²*A121757(n)` -/
def P1642366864166071694.Spec : Prop :=
  ∀ n, P1642366864166071694.a n = (A181511 (n + 1) : ℚ)

end A181511

/-! ## A181511.P13847671651550991704

`A008279(A003057(n+2)+n)/A004736(n+1)`
-/

namespace A181511.P13847671651550991704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 (A003057 (n + 2) + (n : ℤ)).toNat : ℚ) / (A004736 (n + 1) : ℚ)

end

end A181511.P13847671651550991704

namespace A181511

/-- `A008279(A003057(n+2)+n)/A004736(n+1)` -/
def P13847671651550991704.Spec : Prop :=
  ∀ n, P13847671651550991704.a n = (A181511 (n + 1) : ℚ)

end A181511

/-! ## A181511.P7768065180607794843

`A173333(A038722(n+1))`
-/

namespace A181511.P7768065180607794843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (A038722 (n + 1)).toNat

end

end A181511.P7768065180607794843

namespace A181511

/-- `A173333(A038722(n+1))` -/
def P7768065180607794843.Spec : Prop :=
  ∀ n, P7768065180607794843.a n = A181511 (n + 1)

end A181511

/-! ## A181511.P4275556644361633078

`A173333(A061579(n)+1)`
-/

namespace A181511.P4275556644361633078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (A061579 n + 1).toNat

end

end A181511.P4275556644361633078

namespace A181511

/-- `A173333(A061579(n)+1)` -/
def P4275556644361633078.Spec : Prop :=
  ∀ n, P4275556644361633078.a n = A181511 (n + 1)

end A181511

/-! ## A181511.P13038492313633752788

`A094587(A099375(n)+1+n)`
-/

namespace A181511.P13038492313633752788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A099375 n + 1 + (n : ℤ)).toNat

end

end A181511.P13038492313633752788

namespace A181511

/-- `A094587(A099375(n)+1+n)` -/
def P13038492313633752788.Spec : Prop :=
  ∀ n, P13038492313633752788.a n = A181511 (n + 1)

end A181511

/-! ## A181511.P10013582804815489152

`A094587(2*A004736(n+1)+n)`
-/

namespace A181511.P10013582804815489152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A181511.P10013582804815489152

namespace A181511

/-- `A094587(2*A004736(n+1)+n)` -/
def P10013582804815489152.Spec : Prop :=
  ∀ n, P10013582804815489152.a n = A181511 (n + 1)

end A181511

/-! ## A181511.P7811347853685948284

`A094587(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A181511.P7811347853685948284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A181511.P7811347853685948284

namespace A181511

/-- `A094587(A004736(n+1)+A004736(n+1)+n)` -/
def P7811347853685948284.Spec : Prop :=
  ∀ n, P7811347853685948284.a n = A181511 (n + 1)

end A181511

/-! ## A181511.P10469753377158110371

`A281881(n+1)/A127779(n+1)`
-/

namespace A181511.P10469753377158110371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281881 (n + 1) : ℚ) / (A127779 (n + 1) : ℚ)

end

end A181511.P10469753377158110371

namespace A181511

/-- `A281881(n+1)/A127779(n+1)` -/
def P10469753377158110371.Spec : Prop :=
  ∀ n, P10469753377158110371.a n = (A181511 (n + 1) : ℚ)

end A181511

/-! ## A181511.P12293750704040010187

`A089231(n+1)/A007318(n)`
-/

namespace A181511.P12293750704040010187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089231 (n + 1) : ℚ) / (A007318 n : ℚ)

end

end A181511.P12293750704040010187

namespace A181511

/-- `A089231(n+1)/A007318(n)` -/
def P12293750704040010187.Spec : Prop :=
  ∀ n, P12293750704040010187.a n = (A181511 (n + 1) : ℚ)

end A181511

/-! ## A181511.P16053247289574515969

`A089231(n+1)/A144084(n)*A008279(n)`
-/

namespace A181511.P16053247289574515969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089231 (n + 1) : ℚ) / (A144084 n : ℚ) * (A008279 n : ℚ)

end

end A181511.P16053247289574515969

namespace A181511

/-- `A089231(n+1)/A144084(n)*A008279(n)` -/
def P16053247289574515969.Spec : Prop :=
  ∀ n, P16053247289574515969.a n = (A181511 (n + 1) : ℚ)

end A181511

/-! ## A181511.P4204297728652024153

`A199673(n+1)/A104002(n+2)`
-/

namespace A181511.P4204297728652024153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199673 (n + 1) : ℚ) / (A104002 (n + 2) : ℚ)

end

end A181511.P4204297728652024153

namespace A181511

/-- `A199673(n+1)/A104002(n+2)` -/
def P4204297728652024153.Spec : Prop :=
  ∀ n, P4204297728652024153.a n = (A181511 (n + 1) : ℚ)

end A181511

/-!
# A181512: Irregular triangle T(n,k) = A181415(n,k) / A036040(n,k), read by rows, 1 <= k <= A000041(n).

The programs for A181512, there is no canonical definition to state claims against.
-/

/-! ## A181512.P7543205791670777312

`A178888(n+1)/A036042(n+1)`
-/

namespace A181512.P7543205791670777312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178888 (n + 1) : ℚ) / (A036042 (n + 1) : ℚ)

end

end A181512.P7543205791670777312

/-! ## A181512.P3007577344039878903

`A181415(n+1)/A036040(n+1)`
-/

namespace A181512.P3007577344039878903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181415 (n + 1) : ℚ) / (A036040 (n + 1) : ℚ)

end

end A181512.P3007577344039878903

/-! ## A181512.P12060149138943245253

`A035206(n+1)/A036042(n+1)*A096162(n+1)`
-/

namespace A181512.P12060149138943245253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035206 (n + 1) : ℚ) / (A036042 (n + 1) : ℚ) * (A096162 (n + 1) : ℚ)

end

end A181512.P12060149138943245253

/-! ## A181512.P18205457827050018199

`A181417(n+1)/(A036040(n+1)*A036043(n+1))`
-/

namespace A181512.P18205457827050018199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181417 (n + 1) : ℚ) / (A036040 (n + 1) * A036043 (n + 1) : ℚ)

end

end A181512.P18205457827050018199

/-! ## A181512.P10042823608647145243

`A096162(n+1)/A036038(n+1)*A181415(n+1)`
-/

namespace A181512.P10042823608647145243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096162 (n + 1) : ℚ) / (A036038 (n + 1) : ℚ) * (A181415 (n + 1) : ℚ)

end

end A181512.P10042823608647145243

/-! ## A181512.P14779171148987830130

`A178802(n+1)/(A036042(n+1)*A178886(n+1))`
-/

namespace A181512.P14779171148987830130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178802 (n + 1) : ℚ) / (A036042 (n + 1) * A178886 (n + 1) : ℚ)

end

end A181512.P14779171148987830130

/-! ## A181512.P15295199862774607710

`A098546(n+1)/A122454(n+1)*A181415(n+1)`
-/

namespace A181512.P15295199862774607710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098546 (n + 1) : ℚ) / (A122454 (n + 1) : ℚ) * (A181415 (n + 1) : ℚ)

end

end A181512.P15295199862774607710

/-! ## A181512.P3958176480847683440

`A181415(n+1)/A124794(A185974(n+1))`
-/

namespace A181512.P3958176480847683440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181415 (n + 1) : ℚ) / (A124794 (A185974 (n + 1)).toNat : ℚ)

end

end A181512.P3958176480847683440

/-! ## A181512.P17553365276676912220

`A178888(n+1)/∑[A155972(n)]`
-/

namespace A181512.P17553365276676912220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155972 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178888 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A181512.P17553365276676912220

/-!
# A181513: Row sums of A181512.

The programs for A181513, there is no canonical definition to state claims against.
-/

/-! ## A181513.P18013546227754926085

`A178887(n+1)/(n+1)`
-/

namespace A181513.P18013546227754926085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178887 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A181513.P18013546227754926085

/-! ## A181513.P7302694051243346970

`A181046(A151463(n+1))`
-/

namespace A181513.P7302694051243346970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181046 (A151463 (n + 1)).toNat

end

end A181513.P7302694051243346970

/-!
# A181516: Primes in A011371.

The programs for A181516, the canonical program `A181516.P8432730146327884828` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181516 has offset 1).

The definition of A181516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181516.P8432730146327884828

`p?[a(floor(n/2))+n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A181516

/-- `p?[a(floor(n/2))+n]` -/
def P8432730146327884828.Spec : Prop :=
  ∀ n, (P8432730146327884828.a n : ℤ) = A181516 (n + 1)

theorem P8432730146327884828.correct : P8432730146327884828.Spec := by
  intro n
  simp only [A181516, Nat.add_sub_cancel]

end A181516

/-! ## A181516.P8702336915597459735

`p?[val(n, 2)+a(n-1)+1]` with `a(0)=0`
-/

namespace A181516.P8702336915597459735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  SequenceMachineLib.valuation n 2 + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A181516.P8702336915597459735

namespace A181516

/-- `p?[val(n, 2)+a(n-1)+1]` -/
def P8702336915597459735.Spec : Prop :=
  ∀ n, (P8702336915597459735.a n : ℤ) = A181516 (n + 1)

end A181516

/-! ## A181516.P11643056567362304765

`p?[-(a(n-1)+val(n, 2))]` with `a(0)=0`
-/

namespace A181516.P11643056567362304765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  -(f1 (n - 1) + (SequenceMachineLib.valuation n 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181516.P11643056567362304765

namespace A181516

/-- `p?[-(a(n-1)+val(n, 2))]` -/
def P11643056567362304765.Spec : Prop :=
  ∀ n, P11643056567362304765.a n = A181516 (n + 1)

end A181516

/-! ## A181516.P5987734128939662056

`p?[A005187(n)]`
-/

namespace A181516.P5987734128939662056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181516.P5987734128939662056

namespace A181516

/-- `p?[A005187(n)]` -/
def P5987734128939662056.Spec : Prop :=
  ∀ n, P5987734128939662056.a n = A181516 (n + 1)

end A181516

/-! ## A181516.P2589016427840320878

`record[A006530(A005187(n+2))]`
-/

namespace A181516.P2589016427840320878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005187 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181516.P2589016427840320878

namespace A181516

/-- `record[A006530(A005187(n+2))]` -/
def P2589016427840320878.Spec : Prop :=
  ∀ n, P2589016427840320878.a n = A181516 (n + 1)

end A181516

/-! ## A181516.P1045822445837204828

`∩[A000040(n+1), A005187(n)]`
-/

namespace A181516.P1045822445837204828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181516.P1045822445837204828

namespace A181516

/-- `∩[A000040(n+1), A005187(n)]` -/
def P1045822445837204828.Spec : Prop :=
  ∀ n, (P1045822445837204828.a n : ℤ) = A181516 (n + 1)

end A181516

/-! ## A181516.P1793797501223783193

`∩[A004139(n+1), A005187(n)]`
-/

namespace A181516.P1793797501223783193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181516.P1793797501223783193

namespace A181516

/-- `∩[A004139(n+1), A005187(n)]` -/
def P1793797501223783193.Spec : Prop :=
  ∀ n, (P1793797501223783193.a n : ℤ) = A181516 (n + 1)

end A181516

/-! ## A181516.P8607375414166398807

`∩[A005187(n), A045319(n+1)]`
-/

namespace A181516.P8607375414166398807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181516.P8607375414166398807

namespace A181516

/-- `∩[A005187(n), A045319(n+1)]` -/
def P8607375414166398807.Spec : Prop :=
  ∀ n, (P8607375414166398807.a n : ℤ) = A181516 (n + 1)

end A181516

/-! ## A181516.P16101003992107732983

`∩[A005187(n), A065091(n+1)]`
-/

namespace A181516.P16101003992107732983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181516.P16101003992107732983

namespace A181516

/-- `∩[A005187(n), A065091(n+1)]` -/
def P16101003992107732983.Spec : Prop :=
  ∀ n, (P16101003992107732983.a n : ℤ) = A181516 (n + 1)

end A181516

/-! ## A181516.P5695107145012857308

`∩[A005187(n), A116974(n+1)]`
-/

namespace A181516.P5695107145012857308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181516.P5695107145012857308

namespace A181516

/-- `∩[A005187(n), A116974(n+1)]` -/
def P5695107145012857308.Spec : Prop :=
  ∀ n, (P5695107145012857308.a n : ℤ) = A181516 (n + 1)

end A181516

/-! ## A181516.P16497302573160469246

`∩[A005187(n), A197636(n+1)]`
-/

namespace A181516.P16497302573160469246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181516.P16497302573160469246

namespace A181516

/-- `∩[A005187(n), A197636(n+1)]` -/
def P16497302573160469246.Spec : Prop :=
  ∀ n, (P16497302573160469246.a n : ℤ) = A181516 (n + 1)

end A181516

/-! ## A181516.P12857720661959941212

`p?[record[A324377(n)]]`
-/

namespace A181516.P12857720661959941212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324377 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181516.P12857720661959941212

namespace A181516

/-- `p?[record[A324377(n)]]` -/
def P12857720661959941212.Spec : Prop :=
  ∀ n, P12857720661959941212.a n = A181516 (n + 1)

end A181516

/-! ## A181516.P5922627974190193869

`record[A006530(A324377(n+2))]`
-/

namespace A181516.P5922627974190193869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A324377 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181516.P5922627974190193869

namespace A181516

/-- `record[A006530(A324377(n+2))]` -/
def P5922627974190193869.Spec : Prop :=
  ∀ n, P5922627974190193869.a n = A181516 (n + 1)

end A181516

/-! ## A181516.P14147737835348907462

`p?[∑[val(n+1, 2)+1]]`
-/

namespace A181516.P14147737835348907462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A181516.P14147737835348907462

namespace A181516

/-- `p?[∑[val(n+1, 2)+1]]` -/
def P14147737835348907462.Spec : Prop :=
  ∀ n, (P14147737835348907462.a n : ℤ) = A181516 (n + 1)

end A181516

/-! ## A181516.P1451610374754133648

`p?[Δ[A122247(n)]]`
-/

namespace A181516.P1451610374754133648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122247 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181516.P1451610374754133648

namespace A181516

/-- `p?[Δ[A122247(n)]]` -/
def P1451610374754133648.Spec : Prop :=
  ∀ n, P1451610374754133648.a n = A181516 (n + 1)

end A181516

/-! ## A181516.P4124676060849152287

`p?[A101925(n)-1]`
-/

namespace A181516.P4124676060849152287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181516.P4124676060849152287

namespace A181516

/-- `p?[A101925(n)-1]` -/
def P4124676060849152287.Spec : Prop :=
  ∀ n, P4124676060849152287.a n = A181516 (n + 1)

end A181516

/-! ## A181516.P7090205666862011025

`p?[A011371(n)+n]`
-/

namespace A181516.P7090205666862011025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181516.P7090205666862011025

namespace A181516

/-- `p?[A011371(n)+n]` -/
def P7090205666862011025.Spec : Prop :=
  ∀ n, P7090205666862011025.a n = A181516 (n + 1)

end A181516

/-! ## A181516.P18041481724776231158

`p?[A004134(n)-n]`
-/

namespace A181516.P18041481724776231158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181516.P18041481724776231158

namespace A181516

/-- `p?[A004134(n)-n]` -/
def P18041481724776231158.Spec : Prop :=
  ∀ n, P18041481724776231158.a n = A181516 (n + 1)

end A181516

/-! ## A181516.P2571035144069231357

`p?[∑[A001511(n+1)]]`
-/

namespace A181516.P2571035144069231357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181516.P2571035144069231357

namespace A181516

/-- `p?[∑[A001511(n+1)]]` -/
def P2571035144069231357.Spec : Prop :=
  ∀ n, P2571035144069231357.a n = A181516 (n + 1)

end A181516

/-! ## A181516.P1130594004735560867

`p?[∑[A085058(n)-1]]`
-/

namespace A181516.P1130594004735560867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181516.P1130594004735560867

namespace A181516

/-- `p?[∑[A085058(n)-1]]` -/
def P1130594004735560867.Spec : Prop :=
  ∀ n, P1130594004735560867.a n = A181516 (n + 1)

end A181516

/-!
# A181517: Number of torsion pairs in the cluster category of type A_n.

The programs for A181517, there is no canonical definition to state claims against.
-/

/-! ## A181517.P11189444886756562910

`A004148(2*(n+1))-A309823(A006024(n))`
-/

namespace A181517.P11189444886756562910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 (2 * (n + 1)) - A309823 (A006024 n).toNat

end

end A181517.P11189444886756562910

/-! ## A181517.P16827587810997857532

`A008620(A051164(2*n+1))+A000418(2*n+1)`
-/

namespace A181517.P16827587810997857532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A051164 (2 * n + 1)).toNat + A000418 (2 * n + 1)

end

end A181517.P16827587810997857532

/-!
# A181518: a(n) is the number for which 2^A181516(n)||(2*a(n))!

The programs for A181518, there is no canonical definition to state claims against.
-/

/-! ## A181518.P7828720142342273878

`record[A213714(p?[or(1, n)])]`
-/

namespace A181518.P7828720142342273878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181518.P7828720142342273878

/-! ## A181518.P13535205100409953595

`eq[2, ∏{e}[A005187(n)², #]]`
-/

namespace A181518.P13535205100409953595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181518.P13535205100409953595

/-! ## A181518.P6780434179188409987

`eq[2, A278257(n+1)]+1`
-/

namespace A181518.P6780434179188409987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A181518.P6780434179188409987

/-! ## A181518.P8005373263867690582

`record[A213714(p?[2*n+1])]`
-/

namespace A181518.P8005373263867690582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181518.P8005373263867690582

/-! ## A181518.P17293280572593723880

`record[A254112(p?[2*n+1])]`
-/

namespace A181518.P17293280572593723880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254112 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181518.P17293280572593723880

/-! ## A181518.P310650631682799277

`A213714(p?[A005187(n)])`
-/

namespace A181518.P310650631682799277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181518.P310650631682799277

/-! ## A181518.P12232696794922754920

`A254112(p?[A005187(n)])`
-/

namespace A181518.P12232696794922754920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254112 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181518.P12232696794922754920

/-! ## A181518.P4862027995585797495

`A256992(p?[A005187(n)])`
-/

namespace A181518.P4862027995585797495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256992 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181518.P4862027995585797495

/-! ## A181518.P6163173716643718317

`A213714(A181516(n+1))`
-/

namespace A181518.P6163173716643718317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (A181516 (n + 1)).toNat

end

end A181518.P6163173716643718317

/-! ## A181518.P2378071413574669847

`record[A213714(A000040(n+2))]`
-/

namespace A181518.P2378071413574669847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181518.P2378071413574669847

/-!
# A181519: Number of torsion pairs in the cluster category of type A_n up to Auslander-Reiten translation.

The programs for A181519, there is no canonical definition to state claims against.
-/

/-! ## A181519.P5646425950231426035

`A230980(A072213(n))+A038220(n)`
-/

namespace A181519.P5646425950231426035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A072213 n).toNat + A038220 n

end

end A181519.P5646425950231426035

/-! ## A181519.P16893374258935972200

`A365925(A016098(n))+A241685(n)`
-/

namespace A181519.P16893374258935972200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365925 (A016098 n).toNat + A241685 n

end

end A181519.P16893374258935972200

/-!
# A181520: 2*A181518(n)-A181516(n).

The programs for A181520, the canonical program `A181520.P9935151336875506013` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181520 has offset 1).

The definition of A181520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181520.P17124974420384203895

`2*A181518(n+1)-A181516(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181520.P17124974420384203895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181518 (n + 1) - A181516 (n + 1)

end

end A181520.P17124974420384203895

namespace A181520

/-- `2*A181518(n+1)-A181516(n+1)` -/
def P17124974420384203895.Spec : Prop :=
  ∀ n, P17124974420384203895.a n = A181520 (n + 1)

end A181520

/-! ## A181520.P9935151336875506013

`A100661(p?[a(floor(n/2))+n])` with `a(0)=0`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A181520

/-- `A100661(p?[a(floor(n/2))+n])` -/
def P9935151336875506013.Spec : Prop :=
  ∀ n, P9935151336875506013.a n = A181520 (n + 1)

theorem P9935151336875506013.correct : P9935151336875506013.Spec := by
  intro n
  simp only [A181520, Nat.add_sub_cancel]

end A181520

/-! ## A181520.P13434815332691904779

`A284051(p?[a(floor(n/2))+n])` with `a(0)=0`
-/

namespace A181520.P13434815332691904779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284051 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A181520.P13434815332691904779

namespace A181520

/-- `A284051(p?[a(floor(n/2))+n])` -/
def P13434815332691904779.Spec : Prop :=
  ∀ n, P13434815332691904779.a n = A181520 (n + 1)

end A181520

/-! ## A181520.P11469717872437037830

`A284051(p?[a(n-1)+val(n, 2)+1])` with `a(0)=0`
-/

namespace A181520.P11469717872437037830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284051 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A181520.P11469717872437037830

namespace A181520

/-- `A284051(p?[a(n-1)+val(n, 2)+1])` -/
def P11469717872437037830.Spec : Prop :=
  ∀ n, P11469717872437037830.a n = A181520 (n + 1)

end A181520

/-! ## A181520.P4599384472404027900

`A284051(p?[2*n-(n-a(floor(n/2)))])` with `a(0)=0`
-/

namespace A181520.P4599384472404027900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (2 * n : ℤ) - ((n : ℤ) - f1 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284051 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181520.P4599384472404027900

namespace A181520

/-- `A284051(p?[2*n-(n-a(floor(n/2)))])` -/
def P4599384472404027900.Spec : Prop :=
  ∀ n, P4599384472404027900.a n = A181520 (n + 1)

end A181520

/-! ## A181520.P2032299786064121389

`A100661(p?[A005187(n)])`
-/

namespace A181520.P2032299786064121389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181520.P2032299786064121389

namespace A181520

/-- `A100661(p?[A005187(n)])` -/
def P2032299786064121389.Spec : Prop :=
  ∀ n, P2032299786064121389.a n = A181520 (n + 1)

end A181520

/-! ## A181520.P16464329414515312074

`A284051(p?[A005187(n)])`
-/

namespace A181520.P16464329414515312074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284051 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181520.P16464329414515312074

namespace A181520

/-- `A284051(p?[A005187(n)])` -/
def P16464329414515312074.Spec : Prop :=
  ∀ n, P16464329414515312074.a n = A181520 (n + 1)

end A181520

/-! ## A181520.P11470123365936003097

`A100661(A181516(n+1))`
-/

namespace A181520.P11470123365936003097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (A181516 (n + 1)).toNat

end

end A181520.P11470123365936003097

namespace A181520

/-- `A100661(A181516(n+1))` -/
def P11470123365936003097.Spec : Prop :=
  ∀ n, P11470123365936003097.a n = A181520 (n + 1)

end A181520

/-! ## A181520.P15304398326581888148

`dr(A169683(p?[A005187(n)]))`
-/

namespace A181520.P15304398326581888148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A169683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A181520.P15304398326581888148

namespace A181520

/-- `dr(A169683(p?[A005187(n)]))` -/
def P15304398326581888148.Spec : Prop :=
  ∀ n, (P15304398326581888148.a n : ℤ) = A181520 (n + 1)

end A181520

/-! ## A181520.P13443054412240401905

`A100661(p?[A101925(n)-1])`
-/

namespace A181520.P13443054412240401905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181520.P13443054412240401905

namespace A181520

/-- `A100661(p?[A101925(n)-1])` -/
def P13443054412240401905.Spec : Prop :=
  ∀ n, P13443054412240401905.a n = A181520 (n + 1)

end A181520

/-! ## A181520.P12693413080007414484

`A284051(p?[A101925(n)-1])`
-/

namespace A181520.P12693413080007414484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284051 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181520.P12693413080007414484

namespace A181520

/-- `A284051(p?[A101925(n)-1])` -/
def P12693413080007414484.Spec : Prop :=
  ∀ n, P12693413080007414484.a n = A181520 (n + 1)

end A181520

/-! ## A181520.P7116504865673916083

`A100661(p?[A011371(2*n)])`
-/

namespace A181520.P7116504865673916083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181520.P7116504865673916083

namespace A181520

/-- `A100661(p?[A011371(2*n)])` -/
def P7116504865673916083.Spec : Prop :=
  ∀ n, P7116504865673916083.a n = A181520 (n + 1)

end A181520

/-! ## A181520.P1105829622120013197

`A100661(p?[A011371(n)+n])`
-/

namespace A181520.P1105829622120013197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181520.P1105829622120013197

namespace A181520

/-- `A100661(p?[A011371(n)+n])` -/
def P1105829622120013197.Spec : Prop :=
  ∀ n, P1105829622120013197.a n = A181520 (n + 1)

end A181520

/-! ## A181520.P11141293875653672642

`A284051(p?[A004134(n)-n])`
-/

namespace A181520.P11141293875653672642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284051 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A181520.P11141293875653672642

namespace A181520

/-- `A284051(p?[A004134(n)-n])` -/
def P11141293875653672642.Spec : Prop :=
  ∀ n, P11141293875653672642.a n = A181520 (n + 1)

end A181520

/-! ## A181520.P1746445036686707356

`A000120(A108918(p?[A005187(n)]))`
-/

namespace A181520.P1746445036686707356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A108918 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A181520.P1746445036686707356

namespace A181520

/-- `A000120(A108918(p?[A005187(n)]))` -/
def P1746445036686707356.Spec : Prop :=
  ∀ n, P1746445036686707356.a n = A181520 (n + 1)

end A181520

/-! ## A181520.P17526548665705227193

`A000120(A213714(p?[A005187(n)]))`
-/

namespace A181520.P17526548665705227193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A213714 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A181520.P17526548665705227193

namespace A181520

/-- `A000120(A213714(p?[A005187(n)]))` -/
def P17526548665705227193.Spec : Prop :=
  ∀ n, P17526548665705227193.a n = A181520 (n + 1)

end A181520

/-! ## A181520.P512118395766663208

`A000120(A240751(p?[A005187(n)]))`
-/

namespace A181520.P512118395766663208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A240751 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A181520.P512118395766663208

namespace A181520

/-- `A000120(A240751(p?[A005187(n)]))` -/
def P512118395766663208.Spec : Prop :=
  ∀ n, P512118395766663208.a n = A181520 (n + 1)

end A181520

/-! ## A181520.P7761969686518637076

`A000120(A254112(p?[A005187(n)]))`
-/

namespace A181520.P7761969686518637076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A254112 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A181520.P7761969686518637076

namespace A181520

/-- `A000120(A254112(p?[A005187(n)]))` -/
def P7761969686518637076.Spec : Prop :=
  ∀ n, P7761969686518637076.a n = A181520 (n + 1)

end A181520

/-! ## A181520.P17249297060722614917

`A000120(A256992(p?[A005187(n)]))`
-/

namespace A181520.P17249297060722614917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A256992 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A181520.P17249297060722614917

namespace A181520

/-- `A000120(A256992(p?[A005187(n)]))` -/
def P17249297060722614917.Spec : Prop :=
  ∀ n, P17249297060722614917.a n = A181520 (n + 1)

end A181520

/-!
# A181521: Representation of n = sum_k b_k*(k!!) in the double-factorial base by some b_k-fold concatenation of the indices k.

The programs for A181521, there is no canonical definition to state claims against.
-/

/-! ## A181521.P1745129677111067930

`∑[10^floor(∑{e}[8^n, #]/9)]`
-/

namespace A181521.P1745129677111067930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (⌊((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ) / 9⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181521.P1745129677111067930

/-! ## A181521.P11142956120844135657

`record[A118768(3*n+1)+n]`
-/

namespace A181521.P11142956120844135657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118768 (3 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181521.P11142956120844135657

/-! ## A181521.P12883575485878905641

`A171483(A096592(n))`
-/

namespace A181521.P12883575485878905641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171483 (A096592 n).toNat

end

end A181521.P12883575485878905641

/-!
# A181525: Prime numbers such that the difference between any pair of digits is 0, 2, 3, 5 or 7.

The programs for A181525, there is no canonical definition to state claims against.
-/

/-! ## A181525.P335322513628439472

`eq[A003415(n), A006337(A212624(n+1))]`
-/

namespace A181525.P335322513628439472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (A212624 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181525.P335322513628439472

/-! ## A181525.P645557846283076930

`A000040(lt[A301756(n+1), A301743(n+1)])`
-/

namespace A181525.P645557846283076930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A181525.P645557846283076930

/-! ## A181525.P5931504692161059593

`A002267(∑[A026519(n)²])`
-/

namespace A181525.P5931504692161059593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A181525.P5931504692161059593

/-! ## A181525.P8328078452175654710

`A111252(A363246(n+1)+1)`
-/

namespace A181525.P8328078452175654710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111252 (A363246 (n + 1) + 1).toNat

end

end A181525.P8328078452175654710

/-! ## A181525.P1143755824928409261

`∩[A111252(n+1), A146296(n+2)]`
-/

namespace A181525.P1143755824928409261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146296 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181525.P1143755824928409261

/-!
# A181526: Prime numbers such that the difference between any pair of digits is 1, 2, 3, 5 or 7.

The programs for A181526, there is no canonical definition to state claims against.
-/

/-! ## A181526.P3814901411427145087

`p?[A000055(A144112(n+1))*A331914(n+1)]`
-/

namespace A181526.P3814901411427145087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (A144112 (n + 1)).toNat * A331914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181526.P3814901411427145087

/-! ## A181526.P15998339712167183349

`record[p?[A118758(n)%A090109(n+1)]]`
-/

namespace A181526.P15998339712167183349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118758 n) (A090109 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181526.P15998339712167183349

/-! ## A181526.P16181179992994046516

`A299956(record[∑[A321765(3*n+1)]])`
-/

namespace A181526.P16181179992994046516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321765 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299956 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181526.P16181179992994046516

/-! ## A181526.P468607210417345338

`∩[A152900(n+1), A231238(n+1)]`
-/

namespace A181526.P468607210417345338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181526.P468607210417345338

/-!
# A181527: Binomial transform of A113127; (1, 1, 3, 7, 15, 31, ...) convolved with (1, 3, 7, 15, 31, 63, ...).

The programs for A181527, the canonical program `A181527.P11662454656955392075` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181527 has offset 0).

The definition of A181527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181527.P11662454656955392075

`3+n+2^(n+1)*(n-1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A181527

/-- `3+n+2^(n+1)*(n-1)` -/
def P11662454656955392075.Spec : Prop :=
  ∀ n, P11662454656955392075.a n = A181527 n

theorem P11662454656955392075.correct : P11662454656955392075.Spec := by
  intro n
  simp only [A181527]

end A181527

/-! ## A181527.P6357850304594043214

`∑[∑[ogf((1-2x+2x^2)/(1-4x+4x^2))]]`
-/

namespace A181527.P6357850304594043214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -4, 4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181527.P6357850304594043214

namespace A181527

/-- `∑[∑[ogf((1-2x+2x^2)/(1-4x+4x^2))]]` -/
def P6357850304594043214.Spec : Prop :=
  ∀ n, P6357850304594043214.a n = A181527 n

end A181527

/-! ## A181527.P13448282258260844762

`∑[A002064(n)]`
-/

namespace A181527.P13448282258260844762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181527.P13448282258260844762

namespace A181527

/-- `∑[A002064(n)]` -/
def P13448282258260844762.Spec : Prop :=
  ∀ n, P13448282258260844762.a n = A181527 n

end A181527

/-! ## A181527.P10729351363024136666

`∑[A036289(n)+1]`
-/

namespace A181527.P10729351363024136666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181527.P10729351363024136666

namespace A181527

/-- `∑[A036289(n)+1]` -/
def P10729351363024136666.Spec : Prop :=
  ∀ n, P10729351363024136666.a n = A181527 n

end A181527

/-! ## A181527.P3866769378287000211

`∑[∑[A057711(n+1)]]`
-/

namespace A181527.P3866769378287000211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181527.P3866769378287000211

namespace A181527

/-- `∑[∑[A057711(n+1)]]` -/
def P3866769378287000211.Spec : Prop :=
  ∀ n, P3866769378287000211.a n = A181527 n

end A181527

/-! ## A181527.P13316988498941107119

`∑[∑[A129952(n+1)]]`
-/

namespace A181527.P13316988498941107119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129952 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181527.P13316988498941107119

namespace A181527

/-- `∑[∑[A129952(n+1)]]` -/
def P13316988498941107119.Spec : Prop :=
  ∀ n, P13316988498941107119.a n = A181527 n

end A181527

/-! ## A181527.P9798136010175443526

`∑[A097064(n+1)+1]`
-/

namespace A181527.P9798136010175443526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097064 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181527.P9798136010175443526

namespace A181527

/-- `∑[A097064(n+1)+1]` -/
def P9798136010175443526.Spec : Prop :=
  ∀ n, P9798136010175443526.a n = A181527 n

end A181527

/-! ## A181527.P15865437262427617802

`∑[A048495(n+1)/2]`
-/

namespace A181527.P15865437262427617802
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048495 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181527.P15865437262427617802

namespace A181527

/-- `∑[A048495(n+1)/2]` -/
def P15865437262427617802.Spec : Prop :=
  ∀ n, P15865437262427617802.a n = (A181527 n : ℚ)

end A181527

/-! ## A181527.P7327439011075102444

`∑[A066524(n)+n+1]`
-/

namespace A181527.P7327439011075102444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066524 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181527.P7327439011075102444

namespace A181527

/-- `∑[A066524(n)+n+1]` -/
def P7327439011075102444.Spec : Prop :=
  ∀ n, P7327439011075102444.a n = A181527 n

end A181527

/-! ## A181527.P255136088002363939

`∑[∑[A262258(2*n+1)]]`
-/

namespace A181527.P255136088002363939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262258 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181527.P255136088002363939

namespace A181527

/-- `∑[∑[A262258(2*n+1)]]` -/
def P255136088002363939.Spec : Prop :=
  ∀ n, P255136088002363939.a n = A181527 n

end A181527

/-! ## A181527.P2495720168410418351

`xor(A088578(n), A120634(n))`
-/

namespace A181527.P2495720168410418351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088578 n) (A120634 n)

end

end A181527.P2495720168410418351

namespace A181527

/-- `xor(A088578(n), A120634(n))` -/
def P2495720168410418351.Spec : Prop :=
  ∀ n, P2495720168410418351.a n = A181527 n

end A181527

/-! ## A181527.P13550452454413098341

`(A048481(n+1)-1)/2`
-/

namespace A181527.P13550452454413098341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048481 (n + 1) - 1 : ℚ) / 2

end

end A181527.P13550452454413098341

namespace A181527

/-- `(A048481(n+1)-1)/2` -/
def P13550452454413098341.Spec : Prop :=
  ∀ n, P13550452454413098341.a n = (A181527 n : ℚ)

theorem P13550452454413098341.correct : P13550452454413098341.Spec := by
  intro n
  simp only [A181527, Nat.add_sub_cancel, A181527.P13550452454413098341.a, A181527.P11662454656955392075.a, A048481, A048481.P7174928985242152464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A181527

/-! ## A181527.P3161629031134389421

`(A045618(n)+n+1)/2`
-/

namespace A181527.P3161629031134389421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045618 n + (n + 1 : ℤ) : ℚ) / 2

end

end A181527.P3161629031134389421

namespace A181527

/-- `(A045618(n)+n+1)/2` -/
def P3161629031134389421.Spec : Prop :=
  ∀ n, P3161629031134389421.a n = (A181527 n : ℚ)

theorem P3161629031134389421.correct : P3161629031134389421.Spec := by
  intro n
  simp only [A181527, Nat.add_sub_cancel, A181527.P3161629031134389421.a, A181527.P11662454656955392075.a, A045618, A045618.P16738991353215400118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A181527

/-! ## A181527.P1245660777384280352

`A209418(∑[n+2])`
-/

namespace A181527.P1245660777384280352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209418 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181527.P1245660777384280352

namespace A181527

/-- `A209418(∑[n+2])` -/
def P1245660777384280352.Spec : Prop :=
  ∀ n, P1245660777384280352.a n = A181527 n

end A181527

/-! ## A181527.P13671163020957944789

`A210218(∑[n+2])`
-/

namespace A181527.P13671163020957944789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210218 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181527.P13671163020957944789

namespace A181527

/-- `A210218(∑[n+2])` -/
def P13671163020957944789.Spec : Prop :=
  ∀ n, P13671163020957944789.a n = A181527 n

end A181527

/-! ## A181527.P8829409801385615361

`∑[A210549(∑[n+2])]`
-/

namespace A181527.P8829409801385615361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210549 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181527.P8829409801385615361

namespace A181527

/-- `∑[A210549(∑[n+2])]` -/
def P8829409801385615361.Spec : Prop :=
  ∀ n, P8829409801385615361.a n = A181527 n

end A181527

/-! ## A181527.P4747053132550548477

`∑[A049513(∑[n+3])]`
-/

namespace A181527.P4747053132550548477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049513 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181527.P4747053132550548477

namespace A181527

/-- `∑[A049513(∑[n+3])]` -/
def P4747053132550548477.Spec : Prop :=
  ∀ n, P4747053132550548477.a n = A181527 n

end A181527

/-!
# A181528: Number of connected graphs with n edges embeddable into square lattice.

The programs for A181528, there is no canonical definition to state claims against.
-/

/-! ## A181528.P7193020385573222563

`A209315(C(n, floor(n/2))²)+1`
-/

namespace A181528.P7193020385573222563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209315 (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat ^ 2) + 1

end

end A181528.P7193020385573222563

/-! ## A181528.P6243030872539508319

`A000194(∏[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]])`
-/

namespace A181528.P6243030872539508319
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A181528.P6243030872539508319

/-! ## A181528.P4699338010030937763

`A194258(∏[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]])`
-/

namespace A181528.P4699338010030937763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A181528.P4699338010030937763

/-! ## A181528.P14837703549601985904

`A220604(∏[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]])`
-/

namespace A181528.P14837703549601985904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220604 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A181528.P14837703549601985904

/-! ## A181528.P11098241310021422968

`A349520(∏[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]])`
-/

namespace A181528.P11098241310021422968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A181528.P11098241310021422968

/-!
# A181529: Natural numbers equal to the sum of two consecutive semiprimes (A118717), but not an integer multiple of a previous term.

The programs for A181529, there is no canonical definition to state claims against.
-/

/-! ## A181529.P13611083906859165886

`A118717(∑[A118180(A332390(n+1))])`
-/

namespace A181529.P13611083906859165886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118180 (A332390 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A181529.P13611083906859165886

/-! ## A181529.P17898844187928977250

`record[A118717(n+1)-A151878(A118717(n+1))]`
-/

namespace A181529.P17898844187928977250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1) - A151878 (A118717 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181529.P17898844187928977250

/-!
# A181531: Number of partitions of n with no part equal to 1 or 3.

The programs for A181531, there is no canonical definition to state claims against.
-/

/-! ## A181531.P4351237380205648857

`A008484(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A181531.P4351237380205648857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008484 n + a (n - 2)

end

end A181531.P4351237380205648857

/-! ## A181531.P17872736083781345841

`A121659(n)-a(n-1)` with `a(0)=1`
-/

namespace A181531.P17872736083781345841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121659 n - a (n - 1)

end

end A181531.P17872736083781345841

/-! ## A181531.P8810514791585464723

`A008483(n)+Δ[A085811(A028310(n))]`
-/

namespace A181531.P8810514791585464723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n + (f1 (n + 1) - f1 n)

end

end A181531.P8810514791585464723

/-! ## A181531.P4751546950564943859

`A085811(n+1)+A008483(n)-A085811(A028310(n))`
-/

namespace A181531.P4751546950564943859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1) + (A008483 n - A085811 (A028310 n).toNat)

end

end A181531.P4751546950564943859

/-! ## A181531.P8455563761810630156

`A002865(n)-A085811(C(2, n+2)+n)`
-/

namespace A181531.P8455563761810630156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A085811 (Nat.choose 2 (n + 2) + n)

end

end A181531.P8455563761810630156

/-! ## A181531.P6882234583250512714

`A002865(n)-A085811(A028310(n))`
-/

namespace A181531.P6882234583250512714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A085811 (A028310 n).toNat

end

end A181531.P6882234583250512714

/-! ## A181531.P7862235540764573179

`A085811(n+3)-A085811(A028310(n))`
-/

namespace A181531.P7862235540764573179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3) - A085811 (A028310 n).toNat

end

end A181531.P7862235540764573179

/-! ## A181531.P17671665219133374238

`A002865(n)-A085811(A000007(n)+n)`
-/

namespace A181531.P17671665219133374238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A085811 (A000007 n + (n : ℤ)).toNat

end

end A181531.P17671665219133374238

/-! ## A181531.P9179645362837802390

`A002865(n)-A085811(A000038(n)+n)`
-/

namespace A181531.P9179645362837802390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A085811 (A000038 n + (n : ℤ)).toNat

end

end A181531.P9179645362837802390

/-! ## A181531.P1678387559783764569

`Δ[A002865(n+1)]-Δ[A195054(n+1)]`
-/

namespace A181531.P1678387559783764569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (f2 (n + 1) - f2 n)

end

end A181531.P1678387559783764569

/-! ## A181531.P4493300690953440612

`Δ[A002865(n+1)-A195054(n+1)]`
-/

namespace A181531.P4493300690953440612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) - A195054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181531.P4493300690953440612

/-! ## A181531.P5050390335954849561

`A002865(n)+A027337(n)-A027338(n)`
-/

namespace A181531.P5050390335954849561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n + (A027337 n - A027338 n)

end

end A181531.P5050390335954849561

/-! ## A181531.P12374570884768751306

`A027338(n+1)+A002865(n)-A027339(n+1)`
-/

namespace A181531.P12374570884768751306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) + (A002865 n - A027339 (n + 1))

end

end A181531.P12374570884768751306

/-! ## A181531.P3759523466289377575

`A027336(n+1)+A027337(n)-A027339(n+1)`
-/

namespace A181531.P3759523466289377575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (n + 1) + (A027337 n - A027339 (n + 1))

end

end A181531.P3759523466289377575

/-! ## A181531.P4648609662707746326

`A002865(n)-A085811(A123108(2*n))`
-/

namespace A181531.P4648609662707746326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A085811 (A123108 (2 * n)).toNat

end

end A181531.P4648609662707746326

/-! ## A181531.P18334465629045688440

`A085811(n+3)-A085811(A065033(2*n))`
-/

namespace A181531.P18334465629045688440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3) - A085811 (A065033 (2 * n)).toNat

end

end A181531.P18334465629045688440

/-! ## A181531.P17718799049700255003

`A002865(n)-A085811(A007318(∑[n]+1))`
-/

namespace A181531.P17718799049700255003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A085811 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A181531.P17718799049700255003

/-!
# A181532: a(0) = 0, a(1) = 1, a(2) = 1, a(3) = 2; a(n) = a(n-1) + a(n-2) + a(n-4).

The programs for A181532, the canonical program `A181532.P8256754799338210500` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181532 has offset 0).

The definition of A181532 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-4)` (program `A181532.P8256754799338210500`, by `A181532.P8256754799338210500.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181532.P8256754799338210500

`a(n-1)+a(n-2)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A181532

/-- `a(n-1)+a(n-2)+a(n-4)` -/
def P8256754799338210500.Spec : Prop :=
  ∀ n, (P8256754799338210500.a n : ℤ) = A181532 n

theorem P8256754799338210500.correct : P8256754799338210500.Spec := by
  intro n
  simp only [A181532]

end A181532

/-! ## A181532.P14530360014384581275

`ogf(-x/(-1+x+x^2+x^4))`
-/

namespace A181532.P14530360014384581275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, -1, 0, -1] n

end

end A181532.P14530360014384581275

namespace A181532

/-- `ogf(-x/(-1+x+x^2+x^4))` -/
def P14530360014384581275.Spec : Prop :=
  ∀ n, P14530360014384581275.a n = A181532 n

end A181532

/-! ## A181532.P13941089385984961445

`A017818(Δ[n²])`
-/

namespace A181532.P13941089385984961445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A181532.P13941089385984961445

namespace A181532

/-- `A017818(Δ[n²])` -/
def P13941089385984961445.Spec : Prop :=
  ∀ n, P13941089385984961445.a n = A181532 n

end A181532

/-! ## A181532.P11241049530893028666

`∑[A347493(abs(1-n))]`
-/

namespace A181532.P11241049530893028666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347493 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181532.P11241049530893028666

namespace A181532

/-- `∑[A347493(abs(1-n))]` -/
def P11241049530893028666.Spec : Prop :=
  ∀ n, P11241049530893028666.a n = A181532 n

end A181532

/-! ## A181532.P3266527738432461351

`A005251(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A181532.P3266527738432461351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A005251 n + a (n - 2)

end

end A181532.P3266527738432461351

namespace A181532

/-- `A005251(n)+a(n-2)` -/
def P3266527738432461351.Spec : Prop :=
  ∀ n, P3266527738432461351.a n = A181532 n

end A181532

/-! ## A181532.P10078857637219064186

`or(char[1], A017818(2*n+1))`
-/

namespace A181532.P10078857637219064186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A017818 (2 * n + 1))

end

end A181532.P10078857637219064186

namespace A181532

/-- `or(char[1], A017818(2*n+1))` -/
def P10078857637219064186.Spec : Prop :=
  ∀ n, P10078857637219064186.a n = A181532 n

end A181532

/-! ## A181532.P14503133692083070563

`A347493(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A181532.P14503133692083070563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A347493 (n - 1) + a (n - 1)

end

end A181532.P14503133692083070563

namespace A181532

/-- `A347493(n-1)+a(n-1)` -/
def P14503133692083070563.Spec : Prop :=
  ∀ n, P14503133692083070563.a n = A181532 n

end A181532

/-! ## A181532.P15067055216298973118

`A005251(n+1)+A005251(n)-A307677(n)`
-/

namespace A181532.P15067055216298973118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 1) + (A005251 n - A307677 n)

end

end A181532.P15067055216298973118

namespace A181532

/-- `A005251(n+1)+A005251(n)-A307677(n)` -/
def P15067055216298973118.Spec : Prop :=
  ∀ n, P15067055216298973118.a n = A181532 n

end A181532

/-! ## A181532.P10087761282341836884

`A005314(n)-a(n-1)` with `a(0)=0`
-/

namespace A181532.P10087761282341836884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005314 n - a (n - 1)

end

end A181532.P10087761282341836884

namespace A181532

/-- `A005314(n)-a(n-1)` -/
def P10087761282341836884.Spec : Prop :=
  ∀ n, P10087761282341836884.a n = A181532 n

end A181532

/-! ## A181532.P15182308470554888939

`A289692(n)+1-a(n-1)` with `a(0)=0`
-/

namespace A181532.P15182308470554888939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A289692 n + (1 - a (n - 1))

end

end A181532.P15182308470554888939

namespace A181532

/-- `A289692(n)+1-a(n-1)` -/
def P15182308470554888939.Spec : Prop :=
  ∀ n, P15182308470554888939.a n = A181532 n

end A181532

/-! ## A181532.P3078072898710166110

`A049853(n)-A307677(n)`
-/

namespace A181532.P3078072898710166110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 n - A307677 n

end

end A181532.P3078072898710166110

namespace A181532

/-- `A049853(n)-A307677(n)` -/
def P3078072898710166110.Spec : Prop :=
  ∀ n, P3078072898710166110.a n = A181532 n

end A181532

/-! ## A181532.P4984283252568751351

`A060945(n)-A347493(n)`
-/

namespace A181532.P4984283252568751351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 n - A347493 n

end

end A181532.P4984283252568751351

namespace A181532

/-- `A060945(n)-A347493(n)` -/
def P4984283252568751351.Spec : Prop :=
  ∀ n, P4984283252568751351.a n = A181532 n

end A181532

/-! ## A181532.P3788588935006833124

`A060945(n)-A017818(2*n)`
-/

namespace A181532.P3788588935006833124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 n - A017818 (2 * n)

end

end A181532.P3788588935006833124

namespace A181532

/-- `A060945(n)-A017818(2*n)` -/
def P3788588935006833124.Spec : Prop :=
  ∀ n, P3788588935006833124.a n = A181532 n

end A181532

/-! ## A181532.P5629599354533953191

`A017818(2*n+3)-A017818(2*n)`
-/

namespace A181532.P5629599354533953191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (2 * n + 3) - A017818 (2 * n)

end

end A181532.P5629599354533953191

namespace A181532

/-- `A017818(2*n+3)-A017818(2*n)` -/
def P5629599354533953191.Spec : Prop :=
  ∀ n, P5629599354533953191.a n = A181532 n

end A181532

/-! ## A181532.P7455197849610875895

`A005314(n+1)-A060945(n)`
-/

namespace A181532.P7455197849610875895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (n + 1) - A060945 n

end

end A181532.P7455197849610875895

namespace A181532

/-- `A005314(n+1)-A060945(n)` -/
def P7455197849610875895.Spec : Prop :=
  ∀ n, P7455197849610875895.a n = A181532 n

end A181532

/-! ## A181532.P5379346032676608165

`∑[A005251(n+1)]-A060945(n)`
-/

namespace A181532.P5379346032676608165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A060945 n

end

end A181532.P5379346032676608165

namespace A181532

/-- `∑[A005251(n+1)]-A060945(n)` -/
def P5379346032676608165.Spec : Prop :=
  ∀ n, P5379346032676608165.a n = A181532 n

end A181532

/-! ## A181532.P7384467372641753455

`(A005251(n)+Δ[A060945(n)])/2`
-/

namespace A181532.P7384467372641753455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005251 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A181532.P7384467372641753455

namespace A181532

/-- `(A005251(n)+Δ[A060945(n)])/2` -/
def P7384467372641753455.Spec : Prop :=
  ∀ n, P7384467372641753455.a n = (A181532 n : ℚ)

end A181532

/-! ## A181532.P1526574023964324306

`A060945(n+1)-A005251(n+2)`
-/

namespace A181532.P1526574023964324306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 (n + 1) - A005251 (n + 2)

end

end A181532.P1526574023964324306

namespace A181532

/-- `A060945(n+1)-A005251(n+2)` -/
def P1526574023964324306.Spec : Prop :=
  ∀ n, P1526574023964324306.a n = A181532 n

end A181532

/-! ## A181532.P16102711969487431720

`A134816(2*(n+1))-A060945(n)`
-/

namespace A181532.P16102711969487431720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * (n + 1)) - A060945 n

end

end A181532.P16102711969487431720

namespace A181532

/-- `A134816(2*(n+1))-A060945(n)` -/
def P16102711969487431720.Spec : Prop :=
  ∀ n, P16102711969487431720.a n = A181532 n

end A181532

/-! ## A181532.P815297023513444257

`A005251(n+3)-A307677(n+2)`
-/

namespace A181532.P815297023513444257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 3) - A307677 (n + 2)

end

end A181532.P815297023513444257

namespace A181532

/-- `A005251(n+3)-A307677(n+2)` -/
def P815297023513444257.Spec : Prop :=
  ∀ n, P815297023513444257.a n = A181532 n

end A181532

/-!
# A181534: Minimum number of rounds to be played to decide a two-player game of up to n rounds in which the winner of round j receives j points.

The programs for A181534, the canonical program `A181534.P6465701493684644829` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181534 has offset 1).

The definition of A181534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181534.P12992488019979495469

`round(sqrt(∑[n+1]+1))`
-/

namespace A181534.P12992488019979495469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ))

end

end A181534.P12992488019979495469

namespace A181534

/-- `round(sqrt(∑[n+1]+1))` -/
def P12992488019979495469.Spec : Prop :=
  ∀ n, P12992488019979495469.a n = A181534 (n + 1)

end A181534

/-! ## A181534.P6953398153980623404

`A064506(n+1)+1`
-/

namespace A181534.P6953398153980623404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064506 (n + 1) + 1

end

end A181534.P6953398153980623404

namespace A181534

/-- `A064506(n+1)+1` -/
def P6953398153980623404.Spec : Prop :=
  ∀ n, P6953398153980623404.a n = A181534 (n + 1)

end A181534

/-! ## A181534.P5177250567782023629

`floor(sqrt(2)+sqrt(A081946(n+1)))`
-/

namespace A181534.P5177250567782023629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) + Real.sqrt (A081946 (n + 1) : ℝ)⌋

end

end A181534.P5177250567782023629

namespace A181534

/-- `floor(sqrt(2)+sqrt(A081946(n+1)))` -/
def P5177250567782023629.Spec : Prop :=
  ∀ n, P5177250567782023629.a n = A181534 (n + 1)

end A181534

/-! ## A181534.P1253911509002410768

`round(sqrt(A000217(n+1)+1))%(n+3)`
-/

namespace A181534.P1253911509002410768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A000217 (n + 1) + 1 : ℝ))) (n + 3 : ℤ)

end

end A181534.P1253911509002410768

namespace A181534

/-- `round(sqrt(A000217(n+1)+1))%(n+3)` -/
def P1253911509002410768.Spec : Prop :=
  ∀ n, P1253911509002410768.a n = A181534 (n + 1)

end A181534

/-! ## A181534.P6693623030457319099

`round(sqrt(((n+2)²-n)/2))%A035336(n+1)`
-/

namespace A181534.P6693623030457319099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt ((((n + 2) ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2 : ℝ))) (A035336 (n + 1))

end

end A181534.P6693623030457319099

namespace A181534

/-- `round(sqrt(((n+2)²-n)/2))%A035336(n+1)` -/
def P6693623030457319099.Spec : Prop :=
  ∀ n, P6693623030457319099.a n = A181534 (n + 1)

end A181534

/-! ## A181534.P17775344848070582432

`A028310(round(sqrt(A134869(n+1))))`
-/

namespace A181534.P17775344848070582432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt (A134869 (n + 1) : ℝ))).toNat

end

end A181534.P17775344848070582432

namespace A181534

/-- `A028310(round(sqrt(A134869(n+1))))` -/
def P17775344848070582432.Spec : Prop :=
  ∀ n, P17775344848070582432.a n = A181534 (n + 1)

end A181534

/-! ## A181534.P9299897371114046103

`A000027(round(sqrt(A000096(n)+2)))`
-/

namespace A181534.P9299897371114046103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A000096 n + 2 : ℝ))).toNat

end

end A181534.P9299897371114046103

namespace A181534

/-- `A000027(round(sqrt(A000096(n)+2)))` -/
def P9299897371114046103.Spec : Prop :=
  ∀ n, P9299897371114046103.a n = A181534 (n + 1)

end A181534

/-! ## A181534.P6465701493684644829

`A097432(n+1)-A061288(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A181534

/-- `A097432(n+1)-A061288(n+1)` -/
def P6465701493684644829.Spec : Prop :=
  ∀ n, P6465701493684644829.a n = A181534 (n + 1)

theorem P6465701493684644829.correct : P6465701493684644829.Spec := by
  intro n
  simp only [A181534, Nat.add_sub_cancel]

end A181534

/-! ## A181534.P11999579933953244613

`A000027(round(sqrt(A000217(n+1)+1)))`
-/

namespace A181534.P11999579933953244613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A000217 (n + 1) + 1 : ℝ))).toNat

end

end A181534.P11999579933953244613

namespace A181534

/-- `A000027(round(sqrt(A000217(n+1)+1)))` -/
def P11999579933953244613.Spec : Prop :=
  ∀ n, P11999579933953244613.a n = A181534 (n + 1)

end A181534

/-! ## A181534.P14485311460989998428

`and(round(sqrt(A000124(n+1))), -1)`
-/

namespace A181534.P14485311460989998428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.sqrt (A000124 (n + 1) : ℝ))) (-1)

end

end A181534.P14485311460989998428

namespace A181534

/-- `and(round(sqrt(A000124(n+1))), -1)` -/
def P14485311460989998428.Spec : Prop :=
  ∀ n, P14485311460989998428.a n = A181534 (n + 1)

end A181534

/-! ## A181534.P17965725273789364915

`floor(sqrt(A081946(n+3)))`
-/

namespace A181534.P17965725273789364915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A081946 (n + 3))

end

end A181534.P17965725273789364915

namespace A181534

/-- `floor(sqrt(A081946(n+3)))` -/
def P17965725273789364915.Spec : Prop :=
  ∀ n, P17965725273789364915.a n = A181534 (n + 1)

end A181534

/-! ## A181534.P16024108137964852844

`A065033(A097432(n+1))`
-/

namespace A181534.P16024108137964852844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A097432 (n + 1)).toNat

end

end A181534.P16024108137964852844

namespace A181534

/-- `A065033(A097432(n+1))` -/
def P16024108137964852844.Spec : Prop :=
  ∀ n, P16024108137964852844.a n = A181534 (n + 1)

end A181534

/-! ## A181534.P1293935027255604628

`A004526(A097432(n+1)+1)`
-/

namespace A181534.P1293935027255604628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A097432 (n + 1) + 1).toNat

end

end A181534.P1293935027255604628

namespace A181534

/-- `A004526(A097432(n+1)+1)` -/
def P1293935027255604628.Spec : Prop :=
  ∀ n, P1293935027255604628.a n = A181534 (n + 1)

end A181534

/-!
# A181535: G.f.: A(x) = exp( Sum_{n>=1} A(2^(n^2)*x^n)*x^n/n ).

The programs for A181535, there is no canonical definition to state claims against.
-/

/-! ## A181535.P3848401045282880942

`A005350(A145087(n)+A005350(3*n+1))`
-/

namespace A181535.P3848401045282880942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005350 (A145087 n + A005350 (3 * n + 1)).toNat

end

end A181535.P3848401045282880942

/-!
# A181538: T(n, k) = sum_(1 <= j <= k) [j | k] j mu(k / j) gcd(n, k), triangle read by rows.

The programs for A181538, the canonical program `A181538.P2422341693197598264` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181538 has offset 1).

The definition of A181538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181538.P4597236592679223027

`A000010(gcd((n+1-C(∑[char[∑[n]]], 2))², ∑[∑[char[∑[n]]]²]%(n+1)))`
-/

namespace A181538.P4597236592679223027
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f5 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.gcd (((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) ^ 2) (((∑ j ∈ Finset.range (n + 1), f4 j) % (n + 1) : ℕ) : ℤ))

end

end A181538.P4597236592679223027

namespace A181538

/-- `A000010(gcd((n+1-C(∑[char[∑[n]]], 2))², ∑[∑[char[∑[n]]]²]%(n+1)))` -/
def P4597236592679223027.Spec : Prop :=
  ∀ n, P4597236592679223027.a n = A181538 (n + 1)

end A181538

/-! ## A181538.P2422341693197598264

`A050873(n+1)*A054526(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A181538

/-- `A050873(n+1)*A054526(n+1)` -/
def P2422341693197598264.Spec : Prop :=
  ∀ n, P2422341693197598264.a n = A181538 (n + 1)

theorem P2422341693197598264.correct : P2422341693197598264.Spec := by
  intro n
  simp only [A181538, Nat.add_sub_cancel]

end A181538

/-! ## A181538.P11302171086907143712

`A143269(n+1)/A054531(n+1)`
-/

namespace A181538.P11302171086907143712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143269 (n + 1) : ℚ) / (A054531 (n + 1) : ℚ)

end

end A181538.P11302171086907143712

namespace A181538

/-- `A143269(n+1)/A054531(n+1)` -/
def P11302171086907143712.Spec : Prop :=
  ∀ n, P11302171086907143712.a n = (A181538 (n + 1) : ℚ)

end A181538

/-! ## A181538.P13449310553953215577

`A000010((1-C(∑[char[∑[n]]], 2)+n)*A050873(n+1))`
-/

namespace A181538.P13449310553953215577
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A050873 (n + 1)).toNat

end

end A181538.P13449310553953215577

namespace A181538

/-- `A000010((1-C(∑[char[∑[n]]], 2)+n)*A050873(n+1))` -/
def P13449310553953215577.Spec : Prop :=
  ∀ n, P13449310553953215577.a n = A181538 (n + 1)

end A181538

/-! ## A181538.P16722597395588858331

`A000010((n+1-C(∑[char[∑[n]]], 2))²/A164306(n+1))`
-/

namespace A181538.P16722597395588858331
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) ^ 2 : ℚ) / (A164306 (n + 1) : ℚ))).toNat

end

end A181538.P16722597395588858331

namespace A181538

/-- `A000010((n+1-C(∑[char[∑[n]]], 2))²/A164306(n+1))` -/
def P16722597395588858331.Spec : Prop :=
  ∀ n, P16722597395588858331.a n = A181538 (n + 1)

end A181538

/-! ## A181538.P379721494838599637

`A000010(gcd(A075362(n+1), A105020(n)))`
-/

namespace A181538.P379721494838599637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.gcd (A075362 (n + 1)) (A105020 n))

end

end A181538.P379721494838599637

namespace A181538

/-- `A000010(gcd(A075362(n+1), A105020(n)))` -/
def P379721494838599637.Spec : Prop :=
  ∀ n, P379721494838599637.a n = A181538 (n + 1)

end A181538

/-! ## A181538.P4220509229098410454

`A000010(A002260(n+1)*A050873(n+1))`
-/

namespace A181538.P4220509229098410454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002260 (n + 1) * A050873 (n + 1)).toNat

end

end A181538.P4220509229098410454

namespace A181538

/-- `A000010(A002260(n+1)*A050873(n+1))` -/
def P4220509229098410454.Spec : Prop :=
  ∀ n, P4220509229098410454.a n = A181538 (n + 1)

end A181538

/-! ## A181538.P389848336657222361

`A000010((A002262(n)+1)*A050873(n+1))`
-/

namespace A181538.P389848336657222361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((A002262 n + 1) * A050873 (n + 1)).toNat

end

end A181538.P389848336657222361

namespace A181538

/-- `A000010((A002262(n)+1)*A050873(n+1))` -/
def P389848336657222361.Spec : Prop :=
  ∀ n, P389848336657222361.a n = A181538 (n + 1)

end A181538

/-! ## A181538.P6244803581091761988

`A000010(A050873(n+1)*A134868(n+1))`
-/

namespace A181538.P6244803581091761988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A050873 (n + 1) * A134868 (n + 1)).toNat

end

end A181538.P6244803581091761988

namespace A181538

/-- `A000010(A050873(n+1)*A134868(n+1))` -/
def P6244803581091761988.Spec : Prop :=
  ∀ n, P6244803581091761988.a n = A181538 (n + 1)

end A181538

/-! ## A181538.P2795503975246805346

`A130212(n+1)/A181550(n+1)*A181552(n+1)`
-/

namespace A181538.P2795503975246805346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130212 (n + 1) : ℚ) / (A181550 (n + 1) : ℚ) * (A181552 (n + 1) : ℚ)

end

end A181538.P2795503975246805346

namespace A181538

/-- `A130212(n+1)/A181550(n+1)*A181552(n+1)` -/
def P2795503975246805346.Spec : Prop :=
  ∀ n, P2795503975246805346.a n = (A181538 (n + 1) : ℚ)

end A181538

/-!
# A181539: Smallest number m > 1 such that m^2 == 1 (mod 10^n).

The programs for A181539, there is no canonical definition to state claims against.
-/

/-! ## A181539.P15433460201460184303

`sqrt(A085877(n+1))`
-/

namespace A181539.P15433460201460184303
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A085877 (n + 1) : ℝ)

end

end A181539.P15433460201460184303

/-!
# A181541: E.g.f.: A(x) = Product_{n>=1} (1 + x^n/n)^n.

The programs for A181541, there is no canonical definition to state claims against.
-/

/-! ## A181541.P3531849838958638750

`A023187(A108307(n))`
-/

namespace A181541.P3531849838958638750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023187 (A108307 n).toNat

end

end A181541.P3531849838958638750

/-! ## A181541.P12144665827195948418

`A023187(A279554(n))`
-/

namespace A181541.P12144665827195948418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023187 (A279554 n).toNat

end

end A181541.P12144665827195948418

/-!
# A181542: Numbers k such that there is at least one pair of twin primes 3^k - 3^j -+ 1 with k/2 <= j < k.

The programs for A181542, there is no canonical definition to state claims against.
-/

/-! ## A181542.P7930953433643547960

`lt[A026259(3*n+1), A100579(A034448(n+1))]`
-/

namespace A181542.P7930953433643547960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026259 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100579 (A034448 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A181542.P7930953433643547960

/-!
# A181543: Triangle of cubed binomial coefficients, T(n,k) = C(n,k)^3, read by rows.

The programs for A181543, the canonical program `A181543.P8878056775007847247` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181543 has offset 0).

The definition of A181543 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))^3` (program `A181543.P8878056775007847247`, by `A181543.P8878056775007847247.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181543.P8878056775007847247

`C(row(n), col(n))^3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A181543

/-- `C(row(n), col(n))^3` -/
def P8878056775007847247.Spec : Prop :=
  ∀ n, (P8878056775007847247.a n : ℤ) = A181543 n

theorem P8878056775007847247.correct : P8878056775007847247.Spec := by
  intro n
  simp only [A181543]

end A181543

/-! ## A181543.P6410512953948837629

`C(row(n), col(n))²*C(row(n), col(n))`
-/

namespace A181543.P6410512953948837629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) ^ 2 * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A181543.P6410512953948837629

namespace A181543

/-- `C(row(n), col(n))²*C(row(n), col(n))` -/
def P6410512953948837629.Spec : Prop :=
  ∀ n, (P6410512953948837629.a n : ℤ) = A181543 n

theorem P6410512953948837629.correct : P6410512953948837629.Spec := by
  intro n
  simp only [A181543, Nat.add_sub_cancel, A181543.P6410512953948837629.a, A181543.P8878056775007847247.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A181543

/-! ## A181543.P15440393251094073346

`A007318(n)^3`
-/

namespace A181543.P15440393251094073346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 3

end

end A181543.P15440393251094073346

namespace A181543

/-- `A007318(n)^3` -/
def P15440393251094073346.Spec : Prop :=
  ∀ n, P15440393251094073346.a n = A181543 n

theorem P15440393251094073346.correct : P15440393251094073346.Spec := by
  intro n
  simp only [A181543, Nat.add_sub_cancel, A181543.P15440393251094073346.a, A181543.P8878056775007847247.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A181543

/-! ## A181543.P2344052825820755412

`abs(A108086(n)^3)`
-/

namespace A181543.P2344052825820755412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n ^ 3|

end

end A181543.P2344052825820755412

namespace A181543

/-- `abs(A108086(n)^3)` -/
def P2344052825820755412.Spec : Prop :=
  ∀ n, P2344052825820755412.a n = A181543 n

end A181543

/-! ## A181543.P1868569860081954998

`Δ[A102363(n)]^3`
-/

namespace A181543.P1868569860081954998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A181543.P1868569860081954998

namespace A181543

/-- `Δ[A102363(n)]^3` -/
def P1868569860081954998.Spec : Prop :=
  ∀ n, P1868569860081954998.a n = A181543 n

end A181543

/-! ## A181543.P5568219641001409814

`(A014473(n)+1)^3`
-/

namespace A181543.P5568219641001409814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) ^ 3

end

end A181543.P5568219641001409814

namespace A181543

/-- `(A014473(n)+1)^3` -/
def P5568219641001409814.Spec : Prop :=
  ∀ n, P5568219641001409814.a n = A181543 n

theorem P5568219641001409814.correct : P5568219641001409814.Spec := by
  intro n
  simp only [A181543, Nat.add_sub_cancel, A181543.P5568219641001409814.a, A181543.P8878056775007847247.a, A014473, A014473.P9301799580602651200.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A181543

/-! ## A181543.P2845697380608611259

`(A028326(n)/2)^3`
-/

namespace A181543.P2845697380608611259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028326 n : ℚ) / 2) ^ 3

end

end A181543.P2845697380608611259

namespace A181543

/-- `(A028326(n)/2)^3` -/
def P2845697380608611259.Spec : Prop :=
  ∀ n, P2845697380608611259.a n = (A181543 n : ℚ)

theorem P2845697380608611259.correct : P2845697380608611259.Spec := by
  intro n
  simp only [A181543, Nat.add_sub_cancel, A181543.P2845697380608611259.a, A181543.P8878056775007847247.a, A028326, A028326.P7676793339942299677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A181543

/-! ## A181543.P11646595034238057151

`A007318(n)*A008459(n)`
-/

namespace A181543.P11646595034238057151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008459 n

end

end A181543.P11646595034238057151

namespace A181543

/-- `A007318(n)*A008459(n)` -/
def P11646595034238057151.Spec : Prop :=
  ∀ n, P11646595034238057151.a n = A181543 n

theorem P11646595034238057151.correct : P11646595034238057151.Spec := by
  intro n
  simp only [A181543, Nat.add_sub_cancel, A181543.P11646595034238057151.a, A181543.P8878056775007847247.a, A007318, A007318.P11755526479805562006.a, A008459, A008459.P3220700038138124146.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A181543

/-! ## A181543.P4524711143248266107

`abs(A008459(n)*A108086(n))`
-/

namespace A181543.P4524711143248266107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008459 n * A108086 n|

end

end A181543.P4524711143248266107

namespace A181543

/-- `abs(A008459(n)*A108086(n))` -/
def P4524711143248266107.Spec : Prop :=
  ∀ n, P4524711143248266107.a n = A181543 n

end A181543

/-! ## A181543.P2254899677088725093

`A108086(n)²*A007318(n)`
-/

namespace A181543.P2254899677088725093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n ^ 2 * A007318 n

end

end A181543.P2254899677088725093

namespace A181543

/-- `A108086(n)²*A007318(n)` -/
def P2254899677088725093.Spec : Prop :=
  ∀ n, P2254899677088725093.a n = A181543 n

end A181543

/-! ## A181543.P14055642441894465385

`A130595(n)²*A007318(n)`
-/

namespace A181543.P14055642441894465385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n ^ 2 * A007318 n

end

end A181543.P14055642441894465385

namespace A181543

/-- `A130595(n)²*A007318(n)` -/
def P14055642441894465385.Spec : Prop :=
  ∀ n, P14055642441894465385.a n = A181543 n

end A181543

/-! ## A181543.P5633272860380577692

`Δ[A102363(n)]*A008459(n)`
-/

namespace A181543.P5633272860380577692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008459 n

end

end A181543.P5633272860380577692

namespace A181543

/-- `Δ[A102363(n)]*A008459(n)` -/
def P5633272860380577692.Spec : Prop :=
  ∀ n, P5633272860380577692.a n = A181543 n

end A181543

/-! ## A181543.P14227100882290816857

`A008459(n)/2*A028326(n)`
-/

namespace A181543.P14227100882290816857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008459 n : ℚ) / 2 * (A028326 n : ℚ)

end

end A181543.P14227100882290816857

namespace A181543

/-- `A008459(n)/2*A028326(n)` -/
def P14227100882290816857.Spec : Prop :=
  ∀ n, P14227100882290816857.a n = (A181543 n : ℚ)

theorem P14227100882290816857.correct : P14227100882290816857.Spec := by
  intro n
  simp only [A181543, Nat.add_sub_cancel, A181543.P14227100882290816857.a, A181543.P8878056775007847247.a, A008459, A008459.P3220700038138124146.a, A028326, A028326.P7676793339942299677.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A181543

/-! ## A181543.P5402272096251491300

`gcd(A124927(n), A124928(n))^3`
-/

namespace A181543.P5402272096251491300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124927 n) (A124928 n) ^ 3

end

end A181543.P5402272096251491300

namespace A181543

/-- `gcd(A124927(n), A124928(n))^3` -/
def P5402272096251491300.Spec : Prop :=
  ∀ n, (P5402272096251491300.a n : ℤ) = A181543 n

end A181543

/-! ## A181543.P12464380690289573104

`(A014473(n)+1)*A007318(n)²`
-/

namespace A181543.P12464380690289573104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A007318 n ^ 2

end

end A181543.P12464380690289573104

namespace A181543

/-- `(A014473(n)+1)*A007318(n)²` -/
def P12464380690289573104.Spec : Prop :=
  ∀ n, P12464380690289573104.a n = A181543 n

theorem P12464380690289573104.correct : P12464380690289573104.Spec := by
  intro n
  simp only [A181543, Nat.add_sub_cancel, A181543.P12464380690289573104.a, A181543.P8878056775007847247.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A181543

/-! ## A181543.P3468745905854961361

`(A014473(n)+1)*A130595(n)²`
-/

namespace A181543.P3468745905854961361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A130595 n ^ 2

end

end A181543.P3468745905854961361

namespace A181543

/-- `(A014473(n)+1)*A130595(n)²` -/
def P3468745905854961361.Spec : Prop :=
  ∀ n, P3468745905854961361.a n = A181543 n

end A181543

/-! ## A181543.P8170450417958444891

`(2-A173740(n))²*A007318(n)`
-/

namespace A181543.P8170450417958444891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A173740 n) ^ 2 * A007318 n

end

end A181543.P8170450417958444891

namespace A181543

/-- `(2-A173740(n))²*A007318(n)` -/
def P8170450417958444891.Spec : Prop :=
  ∀ n, P8170450417958444891.a n = A181543 n

end A181543

/-! ## A181543.P3809030138440576727

`A007318(n)²/2*A028326(n)`
-/

namespace A181543.P3809030138440576727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n ^ 2 : ℚ) / 2 * (A028326 n : ℚ)

end

end A181543.P3809030138440576727

namespace A181543

/-- `A007318(n)²/2*A028326(n)` -/
def P3809030138440576727.Spec : Prop :=
  ∀ n, P3809030138440576727.a n = (A181543 n : ℚ)

theorem P3809030138440576727.correct : P3809030138440576727.Spec := by
  intro n
  simp only [A181543, Nat.add_sub_cancel, A181543.P3809030138440576727.a, A181543.P8878056775007847247.a, A007318, A007318.P11755526479805562006.a, A028326, A028326.P7676793339942299677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A181543

/-! ## A181543.P10731579628659878349

`A028326(n)/2*A130595(n)²`
-/

namespace A181543.P10731579628659878349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A130595 n ^ 2 : ℚ)

end

end A181543.P10731579628659878349

namespace A181543

/-- `A028326(n)/2*A130595(n)²` -/
def P10731579628659878349.Spec : Prop :=
  ∀ n, P10731579628659878349.a n = (A181543 n : ℚ)

end A181543

/-! ## A181543.P1412076567333709441

`A007318(2*n-n)²*A007318(n)`
-/

namespace A181543.P1412076567333709441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * n - n) ^ 2 * A007318 n

end

end A181543.P1412076567333709441

namespace A181543

/-- `A007318(2*n-n)²*A007318(n)` -/
def P1412076567333709441.Spec : Prop :=
  ∀ n, P1412076567333709441.a n = A181543 n

end A181543

/-!
# A181544: Triangle in which the g.f. for row n is [Sum_{k>=0} C(n+k-1,k)^3*x^k]*(1-x)^(3n+1), read by rows of k=0..2n terms.

The programs for A181544, there is no canonical definition to state claims against.
-/

/-! ## A181544.P13428634355420954592

`A089869(A034870(n)*A324960(n))`
-/

namespace A181544.P13428634355420954592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A034870 n * A324960 n).toNat

end

end A181544.P13428634355420954592

/-!
# A181545: G.f.: A(x) = Sum_{n>=0} (3n)!/(n!)^3 * x^(3n)/(1-x-x^2)^(3n+1).

The programs for A181545, there is no canonical definition to state claims against.
-/

/-! ## A181545.P9038588708613748937

`A323767(∑[n+4]+2)`
-/

namespace A181545.P9038588708613748937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323767 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A181545.P9038588708613748937

/-! ## A181545.P9319407613999614020

`A289496(xor(n, A110679(n)))`
-/

namespace A181545.P9319407613999614020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289496 (Int.xor (n : ℤ) (A110679 n)).toNat

end

end A181545.P9319407613999614020

/-! ## A181545.P1892792301166174031

`A289496(A117568(n+2)+A110679(n))`
-/

namespace A181545.P1892792301166174031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289496 (A117568 (n + 2) + A110679 n).toNat

end

end A181545.P1892792301166174031

/-!
# A181546: a(n) = Sum_{k=0..floor(n/2)} C(n-k,k)^4.

The programs for A181546, there is no canonical definition to state claims against.
-/

/-! ## A181546.P2102205014372273517

`A323767(A052905(n+2))`
-/

namespace A181546.P2102205014372273517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323767 (A052905 (n + 2)).toNat

end

end A181546.P2102205014372273517

/-! ## A181546.P2305212427942408085

`A323767(eq[4, A025581(n)])`
-/

namespace A181546.P2305212427942408085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181546.P2305212427942408085

/-! ## A181546.P15082290958453222839

`A323767(eq[9, A099375(n)])`
-/

namespace A181546.P15082290958453222839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181546.P15082290958453222839

/-! ## A181546.P14296698354646329550

`A323767(eq[5, A004736(n+1)])`
-/

namespace A181546.P14296698354646329550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181546.P14296698354646329550

/-! ## A181546.P14225378190123674279

`A323767(A004277(n+2)+A000217(n+3))`
-/

namespace A181546.P14225378190123674279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323767 (A004277 (n + 2) + A000217 (n + 3)).toNat

end

end A181546.P14225378190123674279

/-!
# A181547: a(n) = Sum_{k=0..floor(n/2)} C(n-k,k)^5.

The programs for A181547, there is no canonical definition to state claims against.
-/

/-! ## A181547.P16861359221674204566

`A323767(A055999(n+3))`
-/

namespace A181547.P16861359221674204566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323767 (A055999 (n + 3)).toNat

end

end A181547.P16861359221674204566

/-! ## A181547.P13658530131824245318

`A323767(eq[5, A025581(n)])`
-/

namespace A181547.P13658530131824245318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A181547.P13658530131824245318

/-! ## A181547.P1226771020454218183

`A323767(A000124(n+5)+n-1)`
-/

namespace A181547.P1226771020454218183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323767 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A181547.P1226771020454218183

/-! ## A181547.P11453408055119008033

`A323767(2*n+A167614(n+3)+2)`
-/

namespace A181547.P11453408055119008033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323767 ((2 * n : ℤ) + (A167614 (n + 3) + 2)).toNat

end

end A181547.P11453408055119008033

/-! ## A181547.P6272523188616352415

`A323767(A008486(n+3)+A000217(n+3))`
-/

namespace A181547.P6272523188616352415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323767 (A008486 (n + 3) + A000217 (n + 3)).toNat

end

end A181547.P6272523188616352415

/-!
# A181548: Digital sum of EKG sequence.

The programs for A181548, there is no canonical definition to state claims against.
-/

/-! ## A181548.P6094488863298243541

`∑{digits}[Δ[A065057(n)], #]`
-/

namespace A181548.P6094488863298243541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A181548.P6094488863298243541

/-! ## A181548.P616962852542150492

`∑{digits}[A064413(n+1), #]`
-/

namespace A181548.P616962852542150492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A181548.P616962852542150492

/-! ## A181548.P9072345722653606766

`A007953(Δ[A065057(n)])`
-/

namespace A181548.P9072345722653606766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f1 (n + 1) - f1 n).toNat

end

end A181548.P9072345722653606766

/-! ## A181548.P18389361603835342467

`A007953(A064413(n+1))`
-/

namespace A181548.P18389361603835342467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A064413 (n + 1)).toNat

end

end A181548.P18389361603835342467

/-! ## A181548.P8771933463754721915

`A007953(sqrt(A104125(n+1)))`
-/

namespace A181548.P8771933463754721915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway (Real.sqrt (A104125 (n + 1) : ℝ))).toNat

end

end A181548.P8771933463754721915

/-! ## A181548.P8708813445807175267

`A007953(A065519(n+1)+n+1)`
-/

namespace A181548.P8708813445807175267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A065519 (n + 1) + (n + 1 : ℤ)).toNat

end

end A181548.P8708813445807175267

/-! ## A181548.P3845424217433590810

`A007953(A065057(n+1)-A065057(n))`
-/

namespace A181548.P3845424217433590810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A065057 (n + 1) - A065057 n).toNat

end

end A181548.P3845424217433590810

/-! ## A181548.P8642135725710523265

`A076314(Δ[A065057(n)])%A064668(2*n+3)`
-/

namespace A181548.P8642135725710523265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076314 (f1 (n + 1) - f1 n).toNat) (A064668 (2 * n + 3))

end

end A181548.P8642135725710523265

/-! ## A181548.P14047399966235240794

`∑{digits}[A002260(2*A104125(n+1)), #]`
-/

namespace A181548.P14047399966235240794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A104125 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A181548.P14047399966235240794

/-! ## A181548.P4215066713432151705

`∑{digits}[A002262(2*A104125(n+1)), #]`
-/

namespace A181548.P4215066713432151705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A104125 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A181548.P4215066713432151705

/-!
# A181549: a(n) = Sum_{k|n} k*mu_2(n/k).

The programs for A181549, the canonical program `A181549.P13656909591673600582` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181549 has offset 0).

The definition of A181549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181549.P13656909591673600582

`∑{d}[n, n/#*A189021(#)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A181549

/-- `∑{d}[n, n/#*A189021(#)]` -/
def P13656909591673600582.Spec : Prop :=
  ∀ n, P13656909591673600582.a n = (A181549 n : ℚ)

end A181549

/-! ## A181549.P6862772057978322883

`A181550(A179865(n+1))%(10^n)`
-/

namespace A181549.P6862772057978322883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181550 (A179865 (n + 1)).toNat) (10 ^ n : ℤ)

end

end A181549.P6862772057978322883

namespace A181549

/-- `A181550(A179865(n+1))%(10^n)` -/
def P6862772057978322883.Spec : Prop :=
  ∀ n, P6862772057978322883.a n = A181549 n

end A181549

/-! ## A181549.P13094892280238280742

`A181550(A179865(n+1))-A000007(n)`
-/

namespace A181549.P13094892280238280742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181550 (A179865 (n + 1)).toNat - A000007 n

end

end A181549.P13094892280238280742

namespace A181549

/-- `A181550(A179865(n+1))-A000007(n)` -/
def P13094892280238280742.Spec : Prop :=
  ∀ n, P13094892280238280742.a n = A181549 n

end A181549

/-! ## A181549.P13737667696422767624

`char[A007318(n)]*A181550(A179865(n+1))`
-/

namespace A181549.P13737667696422767624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A181550 (A179865 (n + 1)).toNat

end

end A181549.P13737667696422767624

namespace A181549

/-- `char[A007318(n)]*A181550(A179865(n+1))` -/
def P13737667696422767624.Spec : Prop :=
  ∀ n, P13737667696422767624.a n = A181549 n

end A181549

/-!
# A181550: T(n,k) = floor(n/k)*A181549(k), triangle read by rows.

The programs for A181550, the canonical program `A181550.P13432480176131539971` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181550 has offset 1).

The definition of A181550 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181549, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181550.P13432480176131539971

`floor((row(n)+1)/(col(n)+1))*A181549(col(n)+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A181550

/-- `floor((row(n)+1)/(col(n)+1))*A181549(col(n)+1)` -/
def P13432480176131539971.Spec : Prop :=
  ∀ n, P13432480176131539971.a n = A181550 (n + 1)

theorem P13432480176131539971.correct : P13432480176131539971.Spec := by
  intro n
  simp only [A181550, Nat.add_sub_cancel]

end A181550

/-! ## A181550.P1569224502096530733

`A010766(n+1)*A181549(A002260(n+1))`
-/

namespace A181550.P1569224502096530733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A181549 (A002260 (n + 1)).toNat

end

end A181550.P1569224502096530733

namespace A181550

/-- `A010766(n+1)*A181549(A002260(n+1))` -/
def P1569224502096530733.Spec : Prop :=
  ∀ n, P1569224502096530733.a n = A181550 (n + 1)

end A181550

/-! ## A181550.P11355490864131201775

`abs(A174557(n+1)*A181549(A002260(n+1)))`
-/

namespace A181550.P11355490864131201775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174557 (n + 1) * A181549 (A002260 (n + 1)).toNat|

end

end A181550.P11355490864131201775

namespace A181550

/-- `abs(A174557(n+1)*A181549(A002260(n+1)))` -/
def P11355490864131201775.Spec : Prop :=
  ∀ n, P11355490864131201775.a n = A181550 (n + 1)

end A181550

/-! ## A181550.P6578256435394676427

`A130212(n+1)/A181538(n+1)*A181552(n+1)`
-/

namespace A181550.P6578256435394676427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130212 (n + 1) : ℚ) / (A181538 (n + 1) : ℚ) * (A181552 (n + 1) : ℚ)

end

end A181550.P6578256435394676427

namespace A181550

/-- `A130212(n+1)/A181538(n+1)*A181552(n+1)` -/
def P6578256435394676427.Spec : Prop :=
  ∀ n, P6578256435394676427.a n = (A181550 (n + 1) : ℚ)

end A181550

/-! ## A181550.P15966186090758792438

`A010783(A278818(n))*A181549(A002260(n+1))`
-/

namespace A181550.P15966186090758792438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (A278818 n).toNat * A181549 (A002260 (n + 1)).toNat

end

end A181550.P15966186090758792438

namespace A181550

/-- `A010783(A278818(n))*A181549(A002260(n+1))` -/
def P15966186090758792438.Spec : Prop :=
  ∀ n, P15966186090758792438.a n = A181550 (n + 1)

end A181550

/-! ## A181550.P9016934279039957321

`A010783(A038722(n+1))*A181549(A002260(n+1))`
-/

namespace A181550.P9016934279039957321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (A038722 (n + 1)).toNat * A181549 (A002260 (n + 1)).toNat

end

end A181550.P9016934279039957321

namespace A181550

/-- `A010783(A038722(n+1))*A181549(A002260(n+1))` -/
def P9016934279039957321.Spec : Prop :=
  ∀ n, P9016934279039957321.a n = A181550 (n + 1)

end A181550

/-! ## A181550.P18036655265079744518

`A004736(A286235(n+1))*A181549(A002260(n+1))`
-/

namespace A181550.P18036655265079744518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286235 (n + 1)).toNat * A181549 (A002260 (n + 1)).toNat

end

end A181550.P18036655265079744518

namespace A181550

/-- `A004736(A286235(n+1))*A181549(A002260(n+1))` -/
def P18036655265079744518.Spec : Prop :=
  ∀ n, P18036655265079744518.a n = A181550 (n + 1)

end A181550

/-!
# A181552: T(n,k) = gcd(n,k) A181549(k), triangle read by rows.

The programs for A181552, the canonical program `A181552.P14371791422649182277` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181552 has offset 1).

The definition of A181552 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181549, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181552.P14371791422649182277

`gcd(row(n)+1, col(n)+1)*A181549(col(n)+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A181552

/-- `gcd(row(n)+1, col(n)+1)*A181549(col(n)+1)` -/
def P14371791422649182277.Spec : Prop :=
  ∀ n, P14371791422649182277.a n = A181552 (n + 1)

theorem P14371791422649182277.correct : P14371791422649182277.Spec := by
  intro n
  simp only [A181552, Nat.add_sub_cancel]

end A181552

/-! ## A181552.P16777305769085965825

`gcd(row(n)-col(n), col(n)+1)*A181549(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181552.P16777305769085965825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) (SequenceMachineLib.triCol n + 1 : ℤ) : ℤ) * A181549 (SequenceMachineLib.triCol n + 1)

end

end A181552.P16777305769085965825

namespace A181552

/-- `gcd(row(n)-col(n), col(n)+1)*A181549(col(n)+1)` -/
def P16777305769085965825.Spec : Prop :=
  ∀ n, P16777305769085965825.a n = A181552 (n + 1)

end A181552

/-! ## A181552.P4099405371155262691

`A050873(n+1)*A181549(A002260(n+1))`
-/

namespace A181552.P4099405371155262691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A181549 (A002260 (n + 1)).toNat

end

end A181552.P4099405371155262691

namespace A181552

/-- `A050873(n+1)*A181549(A002260(n+1))` -/
def P4099405371155262691.Spec : Prop :=
  ∀ n, P4099405371155262691.a n = A181552 (n + 1)

end A181552

/-! ## A181552.P10051575498886844263

`A181538(n+1)/A130212(n+1)*A181550(n+1)`
-/

namespace A181552.P10051575498886844263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181538 (n + 1) : ℚ) / (A130212 (n + 1) : ℚ) * (A181550 (n + 1) : ℚ)

end

end A181552.P10051575498886844263

namespace A181552

/-- `A181538(n+1)/A130212(n+1)*A181550(n+1)` -/
def P10051575498886844263.Spec : Prop :=
  ∀ n, P10051575498886844263.a n = (A181552 (n + 1) : ℚ)

end A181552

/-! ## A181552.P7693604877070960530

`A002260(A286146(n+1))*A181549(A002260(n+1))`
-/

namespace A181552.P7693604877070960530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286146 (n + 1)).toNat * A181549 (A002260 (n + 1)).toNat

end

end A181552.P7693604877070960530

namespace A181552

/-- `A002260(A286146(n+1))*A181549(A002260(n+1))` -/
def P7693604877070960530.Spec : Prop :=
  ∀ n, P7693604877070960530.a n = A181552 (n + 1)

end A181552

/-!
# A181555: a(n) = A002110(n)^n.

The programs for A181555, the canonical program `A181555.P5413728475479064369` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181555 has offset 0).

The definition of A181555 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002110(n)^n` (program `A181555.P5413728475479064369`, by `A181555.P5413728475479064369.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181555.P5413728475479064369

`A002110(n)^n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A181555

/-- `A002110(n)^n` -/
def P5413728475479064369.Spec : Prop :=
  ∀ n, P5413728475479064369.a n = A181555 n

theorem P5413728475479064369.correct : P5413728475479064369.Spec := by
  intro n
  simp only [A181555]

end A181555

/-! ## A181555.P7144410105331465917

`∏[eq[n, ∏{d}[n, #]]]^n`
-/

namespace A181555.P7144410105331465917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A181555.P7144410105331465917

namespace A181555

/-- `∏[eq[n, ∏{d}[n, #]]]^n` -/
def P7144410105331465917.Spec : Prop :=
  ∀ n, (P7144410105331465917.a n : ℤ) = A181555 n

end A181555

/-! ## A181555.P5130756396038338515

`∏[lt[∏{d}[n, #], n+1]]^n`
-/

namespace A181555.P5130756396038338515
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A181555.P5130756396038338515

namespace A181555

/-- `∏[lt[∏{d}[n, #], n+1]]^n` -/
def P5130756396038338515.Spec : Prop :=
  ∀ n, (P5130756396038338515.a n : ℤ) = A181555 n

end A181555

/-! ## A181555.P3640106469610932038

`(A006862(n)-1)^n`
-/

namespace A181555.P3640106469610932038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006862 n - 1) ^ n

end

end A181555.P3640106469610932038

namespace A181555

/-- `(A006862(n)-1)^n` -/
def P3640106469610932038.Spec : Prop :=
  ∀ n, P3640106469610932038.a n = A181555 n

theorem P3640106469610932038.correct : P3640106469610932038.Spec := by
  intro n
  simp only [A181555, Nat.add_sub_cancel, A181555.P3640106469610932038.a, A181555.P5413728475479064369.a, A002110, A002110.P13704446489392701398.a, A006862, A006862.P2963727191997132236.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A181555

/-! ## A181555.P6699107306404164667

`record[A108951(n+1)]^n`
-/

namespace A181555.P6699107306404164667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ n

end

end A181555.P6699107306404164667

namespace A181555

/-- `record[A108951(n+1)]^n` -/
def P6699107306404164667.Spec : Prop :=
  ∀ n, P6699107306404164667.a n = A181555 n

end A181555

/-!
# A181556: Minimum wind speed in km/h for a category n hurricane in the Saffir-Simpson hurricane wind scale.

The programs for A181556, there is no canonical definition to state claims against.
-/

/-! ## A181556.P9347117380925529699

`A199859(A036974(n+1))-2`
-/

namespace A181556.P9347117380925529699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199859 (A036974 (n + 1)).toNat - 2

end

end A181556.P9347117380925529699

/-!
# A181557: Indices k for which A031883(k) = 2 = A000959(k+1)-A000959(k), i.e., indices of (lesser) "twin" lucky numbers.

The programs for A181557, there is no canonical definition to state claims against.
-/

/-! ## A181557.P12425651017452421869

`eq[2, A031883(n+1)]+1`
-/

namespace A181557.P12425651017452421869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031883 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A181557.P12425651017452421869

/-! ## A181557.P18123315485282965516

`eq[2, Δ[A000959(n+1)]]+1`
-/

namespace A181557.P18123315485282965516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A181557.P18123315485282965516

/-! ## A181557.P16090514895803304914

`eq[2, A031883(A000038(n)+n)]`
-/

namespace A181557.P16090514895803304914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031883 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181557.P16090514895803304914

/-! ## A181557.P2072102519760734516

`record[A005843(n+1)/A031883(n+1)]`
-/

namespace A181557.P2072102519760734516
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A031883 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181557.P2072102519760734516

/-! ## A181557.P4490778258699895099

`record[(n+1)/A000959(A031883(n+1)-1)]`
-/

namespace A181557.P4490778258699895099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000959 (A031883 (n + 1) - 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181557.P4490778258699895099

/-! ## A181557.P5315981340423009342

`record[(n+1)/A000384(A031883(n+1)/2)]`
-/

namespace A181557.P5315981340423009342
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000384 (SequenceMachineLib.roundAway ((A031883 (n + 1) : ℚ) / 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181557.P5315981340423009342

/-! ## A181557.P11605295510916100241

`record[(n+1)*A145649(A000959(n+1)+2)]`
-/

namespace A181557.P11605295510916100241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A145649 (A000959 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181557.P11605295510916100241

/-! ## A181557.P9758448010052914962

`A109497(A031158(n+1))`
-/

namespace A181557.P9758448010052914962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A031158 (n + 1)).toNat

end

end A181557.P9758448010052914962

/-!
# A181558: Index of first occurrence of 2n in A031883, or 0 if 2n never occurs in A031883 = first differences of lucky numbers A000959.

The programs for A181558, there is no canonical definition to state claims against.
-/

/-! ## A181558.P2941641190779810579

`A109497(A031884(n+1))`
-/

namespace A181558.P2941641190779810579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A031884 (n + 1)).toNat

end

end A181558.P2941641190779810579

/-! ## A181558.P3654640294274534113

`A109497(A031885(n+1))-1`
-/

namespace A181558.P3654640294274534113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A031885 (n + 1)).toNat - 1

end

end A181558.P3654640294274534113

/-! ## A181558.P2787739005522890870

`A260438(or(1, A031884(n+1)))`
-/

namespace A181558.P2787739005522890870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260438 (Int.lor 1 (A031884 (n + 1))).toNat

end

end A181558.P2787739005522890870

/-! ## A181558.P13021120893887295238

`A260438(A031885(n+1)-2*(n+1))`
-/

namespace A181558.P13021120893887295238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260438 (A031885 (n + 1) - (2 * (n + 1) : ℤ)).toNat

end

end A181558.P13021120893887295238

/-! ## A181558.P16969207831160781347

`A260438(A031884(n+1)+A000007(n))`
-/

namespace A181558.P16969207831160781347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260438 (A031884 (n + 1) + A000007 n).toNat

end

end A181558.P16969207831160781347

/-!
# A181560: a(n+1) = a(n-1) + 2 a(n-2) - a(n-4) ; a(0)=1, a(n)=0 for 0 < n < 5.

The programs for A181560, there is no canonical definition to state claims against.
-/

/-! ## A181560.P7957305663700172360

`A247311(n)-A247309(A106433(n)+n)`
-/

namespace A181560.P7957305663700172360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247311 n - A247309 (A106433 n + (n : ℤ)).toNat

end

end A181560.P7957305663700172360

/-! ## A181560.P8242225450732548999

`A247311(n)-A247309(or(n, A106433(n)))`
-/

namespace A181560.P8242225450732548999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247311 n - A247309 (Int.lor (n : ℤ) (A106433 n)).toNat

end

end A181560.P8242225450732548999

/-! ## A181560.P4962931797471052265

`A247311(n)-A106433(A106433(n))*A247309(n)`
-/

namespace A181560.P4962931797471052265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247311 n - A106433 (A106433 n).toNat * A247309 n

end

end A181560.P4962931797471052265

/-!
# A181561: Primes of the form highly abundant number + 1.

The programs for A181561, there is no canonical definition to state claims against.
-/

/-! ## A181561.P8962223753982142984

`p?[A002093(n+1)+1]`
-/

namespace A181561.P8962223753982142984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181561.P8962223753982142984

/-! ## A181561.P15538830872557323415

`∩[A002093(n+1)+1, A008578(n+1)]`
-/

namespace A181561.P15538830872557323415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181561.P15538830872557323415

/-! ## A181561.P5089365388420791967

`∩[A002093(n+1)+1, A053813(n+1)]`
-/

namespace A181561.P5089365388420791967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181561.P5089365388420791967

/-! ## A181561.P8836386244177683234

`∩[A002093(n+1)+1, A014688(n+1)-(n+1)]`
-/

namespace A181561.P8836386244177683234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181561.P8836386244177683234

/-! ## A181561.P2900742421677039556

`record[A006530(A002093(n+1)+1)]`
-/

namespace A181561.P2900742421677039556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181561.P2900742421677039556

/-! ## A181561.P17515861145170670232

`record[A020639(A002093(n+1)+1)]`
-/

namespace A181561.P17515861145170670232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181561.P17515861145170670232

/-!
# A181562: Primes of the form highly abundant number - 1.

The programs for A181562, there is no canonical definition to state claims against.
-/

/-! ## A181562.P2089534973308221745

`p?[A002093(n+1)-1]`
-/

namespace A181562.P2089534973308221745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181562.P2089534973308221745

/-! ## A181562.P6755207459795200324

`∩[A002093(n+1)-1, A053813(n+1)]`
-/

namespace A181562.P6755207459795200324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181562.P6755207459795200324

/-! ## A181562.P2432647668123306739

`p?[lt[n, A253248(n+1)]]`
-/

namespace A181562.P2432647668123306739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253248 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A181562.P2432647668123306739

/-! ## A181562.P4197419431979219365

`p?[A014681(A002093(n+1))]`
-/

namespace A181562.P4197419431979219365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A002093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181562.P4197419431979219365

/-! ## A181562.P13176418296761639896

`eq[A129283(n), A253248(n+1)]`
-/

namespace A181562.P13176418296761639896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181562.P13176418296761639896

/-!
# A181563: Almost-Liouville function.

The programs for A181563, the canonical program `A181563.P14177458731541688462` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181563 has offset 1).

The definition of A181563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181563.P17682531052308552561

`A000122(n+1)-A326813(n+1)`
-/

namespace A181563.P17682531052308552561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n + 1) - A326813 (n + 1)

end

end A181563.P17682531052308552561

namespace A181563

/-- `A000122(n+1)-A326813(n+1)` -/
def P17682531052308552561.Spec : Prop :=
  ∀ n, P17682531052308552561.a n = A181563 (n + 1)

end A181563

/-! ## A181563.P8418865217666977763

`∑{d}[n+1, A008836(#)*A088705((n+1)/#)]`
-/

namespace A181563.P8418865217666977763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A088705 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A181563.P8418865217666977763

namespace A181563

/-- `∑{d}[n+1, A008836(#)*A088705((n+1)/#)]` -/
def P8418865217666977763.Spec : Prop :=
  ∀ n, P8418865217666977763.a n = A181563 (n + 1)

end A181563

/-! ## A181563.P13315894347240209924

`∑{d}[n+1, A087003(#)*A317529((n+1)/#)]`
-/

namespace A181563.P13315894347240209924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A317529 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A181563.P13315894347240209924

namespace A181563

/-- `∑{d}[n+1, A087003(#)*A317529((n+1)/#)]` -/
def P13315894347240209924.Spec : Prop :=
  ∀ n, P13315894347240209924.a n = A181563 (n + 1)

end A181563

/-! ## A181563.P445232629295190915

`∑{d}[n+1, A264740(#)*A323363((n+1)/#)]`
-/

namespace A181563.P445232629295190915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A264740 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A181563.P445232629295190915

namespace A181563

/-- `∑{d}[n+1, A264740(#)*A323363((n+1)/#)]` -/
def P445232629295190915.Spec : Prop :=
  ∀ n, P445232629295190915.a n = A181563 (n + 1)

end A181563

/-! ## A181563.P14177458731541688462

`∑{d}[n+1, A328373(#)*A349341((n+1)/#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A181563

/-- `∑{d}[n+1, A328373(#)*A349341((n+1)/#)]` -/
def P14177458731541688462.Spec : Prop :=
  ∀ n, P14177458731541688462.a n = A181563 (n + 1)

theorem P14177458731541688462.correct : P14177458731541688462.Spec := by
  intro n
  simp only [A181563, Nat.add_sub_cancel]

end A181563

/-! ## A181563.P14421260939561830441

`A010052(n+1)+A010052(n+1)-A326813(n+1)`
-/

namespace A181563.P14421260939561830441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) + (A010052 (n + 1) - A326813 (n + 1))

end

end A181563.P14421260939561830441

namespace A181563

/-- `A010052(n+1)+A010052(n+1)-A326813(n+1)` -/
def P14421260939561830441.Spec : Prop :=
  ∀ n, P14421260939561830441.a n = A181563 (n + 1)

end A181563

/-!
# A181564: Semiprime convenient numbers.

The programs for A181564, there is no canonical definition to state claims against.
-/

/-! ## A181564.P6972290555542940092

`filter[A000926(n+1), A064911(#)]`
-/

namespace A181564.P6972290555542940092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A181564.P6972290555542940092

/-! ## A181564.P8115886251837819876

`∩[A000926(n+1), A001358(n+1)]`
-/

namespace A181564.P8115886251837819876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181564.P8115886251837819876

/-! ## A181564.P8017690713260849522

`∩[A000926(n+1), A108764(n+1)]`
-/

namespace A181564.P8017690713260849522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181564.P8017690713260849522

/-! ## A181564.P12154089372120995104

`∩[A000926(n+1), A103607(n+1)]`
-/

namespace A181564.P12154089372120995104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181564.P12154089372120995104

/-! ## A181564.P1757757019007479710

`∩[A000926(n+1), A108574(n+1)]`
-/

namespace A181564.P1757757019007479710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181564.P1757757019007479710

/-!
# A181565: a(n) = 3*2^n + 1.

The programs for A181565, the canonical program `A181565.P8755880695475505405` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181565 has offset 0).

The definition of A181565 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n+1` (program `A181565.P8755880695475505405`, by `A181565.P8755880695475505405.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181565.P8755880695475505405

`3*2^n+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A181565

/-- `3*2^n+1` -/
def P8755880695475505405.Spec : Prop :=
  ∀ n, (P8755880695475505405.a n : ℤ) = A181565 n

theorem P8755880695475505405.correct : P8755880695475505405.Spec := by
  intro n
  simp only [A181565]

end A181565

/-! ## A181565.P14651220381844549609

`A004119(n+1)`
-/

namespace A181565.P14651220381844549609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 (n + 1)

end

end A181565.P14651220381844549609

namespace A181565

/-- `A004119(n+1)` -/
def P14651220381844549609.Spec : Prop :=
  ∀ n, P14651220381844549609.a n = A181565 n

end A181565

/-! ## A181565.P10636074197774662247

`A103204(n+2)`
-/

namespace A181565.P10636074197774662247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103204 (n + 2)

end

end A181565.P10636074197774662247

namespace A181565

/-- `A103204(n+2)` -/
def P10636074197774662247.Spec : Prop :=
  ∀ n, P10636074197774662247.a n = A181565 n

end A181565

/-! ## A181565.P9343183858281793999

`ogf((4-5x)/(1-3x+2x^2))`
-/

namespace A181565.P9343183858281793999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -5] [1, -3, 2] n

end

end A181565.P9343183858281793999

namespace A181565

/-- `ogf((4-5x)/(1-3x+2x^2))` -/
def P9343183858281793999.Spec : Prop :=
  ∀ n, P9343183858281793999.a n = A181565 n

end A181565

/-! ## A181565.P1501518683252775822

`∑[2*a(n-1)]` with `a(0)=4, a(1)=3`
-/

namespace A181565.P1501518683252775822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181565.P1501518683252775822

namespace A181565

/-- `∑[2*a(n-1)]` -/
def P1501518683252775822.Spec : Prop :=
  ∀ n, (P1501518683252775822.a n : ℤ) = A181565 n

end A181565

/-! ## A181565.P6565595653304068862

`xor(3, lcm(2, a(n-1)))` with `a(0)=4`
-/

namespace A181565.P6565595653304068862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.xor 3 (Nat.lcm 2 (a (n - 1)))

end

end A181565.P6565595653304068862

namespace A181565

/-- `xor(3, lcm(2, a(n-1)))` -/
def P6565595653304068862.Spec : Prop :=
  ∀ n, (P6565595653304068862.a n : ℤ) = A181565 n

end A181565

/-! ## A181565.P12647686853486901900

`xor(3, 2*a(n-1))` with `a(0)=4, a(1)=7`
-/

namespace A181565.P12647686853486901900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 7] fun n a =>
  Nat.xor 3 (2 * a (n - 1))

end

end A181565.P12647686853486901900

namespace A181565

/-- `xor(3, 2*a(n-1))` -/
def P12647686853486901900.Spec : Prop :=
  ∀ n, (P12647686853486901900.a n : ℤ) = A181565 n

end A181565

/-! ## A181565.P10009060505085670982

`abs(1-2*a(n-1))` with `a(0)=4`
-/

namespace A181565.P10009060505085670982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  |1 - 2 * a (n - 1)|

end

end A181565.P10009060505085670982

namespace A181565

/-- `abs(1-2*a(n-1))` -/
def P10009060505085670982.Spec : Prop :=
  ∀ n, P10009060505085670982.a n = A181565 n

end A181565

/-! ## A181565.P5256203924658378586

`ceil(2*a(n-1)-ϕ)` with `a(0)=4`
-/

namespace A181565.P5256203924658378586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌈(2 * a (n - 1) : ℝ) - Real.goldenRatio⌉

end

end A181565.P5256203924658378586

namespace A181565

/-- `ceil(2*a(n-1)-ϕ)` -/
def P5256203924658378586.Spec : Prop :=
  ∀ n, P5256203924658378586.a n = A181565 n

end A181565

/-! ## A181565.P16822569715124193600

`2*(a(n-1)-1/2)` with `a(0)=4`
-/

namespace A181565.P16822569715124193600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  2 * (a (n - 1) - (1 : ℚ) / 2)

end

end A181565.P16822569715124193600

namespace A181565

/-- `2*(a(n-1)-1/2)` -/
def P16822569715124193600.Spec : Prop :=
  ∀ n, P16822569715124193600.a n = (A181565 n : ℚ)

theorem P16822569715124193600.correct : P16822569715124193600.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A181565, Nat.add_sub_cancel, A181565.P16822569715124193600.a, A181565.P8755880695475505405.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A181565, Nat.add_sub_cancel, A181565.P16822569715124193600.a, A181565.P8755880695475505405.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A181565

/-! ## A181565.P6228926790895509092

`or(1, 2*(a(n-1)-1))` with `a(0)=4`
-/

namespace A181565.P6228926790895509092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  Int.lor 1 (2 * (a (n - 1) - 1))

end

end A181565.P6228926790895509092

namespace A181565

/-- `or(1, 2*(a(n-1)-1))` -/
def P6228926790895509092.Spec : Prop :=
  ∀ n, P6228926790895509092.a n = A181565 n

end A181565

/-! ## A181565.P15820954433849424916

`record[2*a(n-2)-1]` with `a(0)=4, a(1)=0`
-/

namespace A181565.P15820954433849424916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  2 * f1 (n - 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181565.P15820954433849424916

namespace A181565

/-- `record[2*a(n-2)-1]` -/
def P15820954433849424916.Spec : Prop :=
  ∀ n, P15820954433849424916.a n = A181565 n

end A181565

/-! ## A181565.P1449548157659646115

`-floor(ϕ-2*a(n-1))` with `a(0)=4`
-/

namespace A181565.P1449548157659646115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  -⌊Real.goldenRatio - (2 * a (n - 1) : ℝ)⌋

end

end A181565.P1449548157659646115

namespace A181565

/-- `-floor(ϕ-2*a(n-1))` -/
def P1449548157659646115.Spec : Prop :=
  ∀ n, P1449548157659646115.a n = A181565 n

end A181565

/-! ## A181565.P13083793054314526953

`∑[a(n-1)/(1-1/2)]` with `a(0)=4, a(1)=3`
-/

namespace A181565.P13083793054314526953
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 3] fun n f1 =>
  f1 (n - 1) / (1 - (1 : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181565.P13083793054314526953

namespace A181565

/-- `∑[a(n-1)/(1-1/2)]` -/
def P13083793054314526953.Spec : Prop :=
  ∀ n, P13083793054314526953.a n = (A181565 n : ℚ)

end A181565

/-! ## A181565.P10968172881977501522

`abs(a(n-1)+a(n-1)-1)` with `a(0)=4`
-/

namespace A181565.P10968172881977501522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  |a (n - 1) + (a (n - 1) - 1)|

end

end A181565.P10968172881977501522

namespace A181565

/-- `abs(a(n-1)+a(n-1)-1)` -/
def P10968172881977501522.Spec : Prop :=
  ∀ n, P10968172881977501522.a n = A181565 n

end A181565

/-! ## A181565.P6337616006305404246

`abs(1-a(n-1)-a(n-1))` with `a(0)=4`
-/

namespace A181565.P6337616006305404246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  |1 - a (n - 1) - a (n - 1)|

end

end A181565.P6337616006305404246

namespace A181565

/-- `abs(1-a(n-1)-a(n-1))` -/
def P6337616006305404246.Spec : Prop :=
  ∀ n, P6337616006305404246.a n = A181565 n

end A181565

/-! ## A181565.P14372819949209275520

`floor(a(n-1)+a(n-1)-1)` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A181565.P14372819949209275520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) - 1)

end

end A181565.P14372819949209275520

namespace A181565

/-- `floor(a(n-1)+a(n-1)-1)` -/
def P14372819949209275520.Spec : Prop :=
  ∀ n, P14372819949209275520.a n = A181565 n

theorem P14372819949209275520.correct : P14372819949209275520.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A181565, Nat.add_sub_cancel, A181565.P14372819949209275520.a, A181565.P8755880695475505405.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A181565, Nat.add_sub_cancel, A181565.P14372819949209275520.a, A181565.P8755880695475505405.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A181565

/-! ## A181565.P4883260514386855093

`floor(a(n-1)-(1-a(n-1)))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A181565.P4883260514386855093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) - (1 - a (n - 1))

end

end A181565.P4883260514386855093

namespace A181565

/-- `floor(a(n-1)-(1-a(n-1)))` -/
def P4883260514386855093.Spec : Prop :=
  ∀ n, P4883260514386855093.a n = A181565 n

theorem P4883260514386855093.correct : P4883260514386855093.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A181565, Nat.add_sub_cancel, A181565.P4883260514386855093.a, A181565.P8755880695475505405.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A181565, Nat.add_sub_cancel, A181565.P4883260514386855093.a, A181565.P8755880695475505405.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A181565

/-! ## A181565.P11152364996806698628

`ceil(a(n-1)+a(n-1)-1)` with `a(0)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A181565.P11152364996806698628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) - 1)

end

end A181565.P11152364996806698628

namespace A181565

/-- `ceil(a(n-1)+a(n-1)-1)` -/
def P11152364996806698628.Spec : Prop :=
  ∀ n, P11152364996806698628.a n = A181565 n

theorem P11152364996806698628.correct : P11152364996806698628.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A181565, Nat.add_sub_cancel, A181565.P11152364996806698628.a, A181565.P8755880695475505405.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A181565, Nat.add_sub_cancel, A181565.P11152364996806698628.a, A181565.P8755880695475505405.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A181565

/-! ## A181565.P302872804550366697

`ceil(a(n-1)-(1-a(n-1)))` with `a(0)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A181565.P302872804550366697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) - (1 - a (n - 1))

end

end A181565.P302872804550366697

namespace A181565

/-- `ceil(a(n-1)-(1-a(n-1)))` -/
def P302872804550366697.Spec : Prop :=
  ∀ n, P302872804550366697.a n = A181565 n

theorem P302872804550366697.correct : P302872804550366697.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A181565, Nat.add_sub_cancel, A181565.P302872804550366697.a, A181565.P8755880695475505405.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A181565, Nat.add_sub_cancel, A181565.P302872804550366697.a, A181565.P8755880695475505405.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A181565

/-!
# A181566: Minimum number of random elements such that their orders allow identification of an abelian group of order n (sampled uniformly) with probability greater than 1/2.

The programs for A181566, there is no canonical definition to state claims against.
-/

/-! ## A181566.P882648628205257352

`A001221(A106303(n+1))*A368413(n+1)`
-/

namespace A181566.P882648628205257352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A106303 (n + 1)).toNat * A368413 (n + 1)

end

end A181566.P882648628205257352

/-! ## A181566.P2605231374611417235

`A262564(A006171(n))%A360911(n+1)`
-/

namespace A181566.P2605231374611417235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262564 (A006171 n).toNat) (A360911 (n + 1))

end

end A181566.P2605231374611417235

/-! ## A181566.P3788302957911826021

`A139352(A019553(n+1))*A368413(n+1)`
-/

namespace A181566.P3788302957911826021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A019553 (n + 1)).toNat * A368413 (n + 1)

end

end A181566.P3788302957911826021

/-! ## A181566.P5918711541287453099

`A103921(A296561(3*n+4))*A368413(n+1)`
-/

namespace A181566.P5918711541287453099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (A296561 (3 * n + 4)).toNat * A368413 (n + 1)

end

end A181566.P5918711541287453099

/-! ## A181566.P15029452211257754202

`A070352(A368415(3*n+4))*A368413(n+1)`
-/

namespace A181566.P15029452211257754202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070352 (A368415 (3 * n + 4)).toNat * A368413 (n + 1)

end

end A181566.P15029452211257754202

/-!
# A181567: Triangle read by rows: T(n,k) is coefficient of k-th power in expansion of ((x^(n+1)-1)/(x-1))^n.

The programs for A181567, there is no canonical definition to state claims against.
-/

/-! ## A181567.P3440729152891243246

`gcd(A000700(2*(n+1))!, A008287(n+4))`
-/

namespace A181567.P3440729152891243246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A000700 (2 * (n + 1))).toNat : ℤ) (A008287 (n + 4))

end

end A181567.P3440729152891243246

/-! ## A181567.P9435106129429537851

`A008287(lt[A051903(n+1)+2, A279388(3*n+1)])`
-/

namespace A181567.P9435106129429537851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279388 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008287 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A181567.P9435106129429537851

/-! ## A181567.P8172043314770255298

`A008287(lt[6, A296513(3*n+1)])`
-/

namespace A181567.P8172043314770255298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296513 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008287 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A181567.P8172043314770255298

/-! ## A181567.P11318138769340514248

`A003059(A217285(n))%A173269(3*n+2)`
-/

namespace A181567.P11318138769340514248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003059 (A217285 n).toNat) (A173269 (3 * n + 2))

end

end A181567.P11318138769340514248

/-! ## A181567.P7630238829064234944

`A094727(A220886(n)%A173269(3*n+2))`
-/

namespace A181567.P7630238829064234944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (Int.tmod (A220886 n) (A173269 (3 * n + 2))).toNat

end

end A181567.P7630238829064234944

/-!
# A181569: Greatest common divisor of n! and n+1.

The programs for A181569, the canonical program `A181569.P12799232397946313634` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181569 has offset 1).

The definition of A181569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181569.P12799232397946313634

`(n+2)/A014973(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A181569

/-- `(n+2)/A014973(n+2)` -/
def P12799232397946313634.Spec : Prop :=
  ∀ n, P12799232397946313634.a n = (A181569 (n + 1) : ℚ)

end A181569

/-! ## A181569.P18380461436720930580

`gcd((n+1)!, n+2)`
-/

namespace A181569.P18380461436720930580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.factorial (n + 1)) (n + 2)

end

end A181569.P18380461436720930580

namespace A181569

/-- `gcd((n+1)!, n+2)` -/
def P18380461436720930580.Spec : Prop :=
  ∀ n, (P18380461436720930580.a n : ℤ) = A181569 (n + 1)

end A181569

/-! ## A181569.P15389020374429472820

`(n+2)/(C(A000010(n+2), n)+1)`
-/

namespace A181569.P15389020374429472820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Nat.choose (A000010 (n + 2)).toNat n + 1 : ℚ)

end

end A181569.P15389020374429472820

namespace A181569

/-- `(n+2)/(C(A000010(n+2), n)+1)` -/
def P15389020374429472820.Spec : Prop :=
  ∀ n, P15389020374429472820.a n = (A181569 (n + 1) : ℚ)

end A181569

/-! ## A181569.P8437518291367008231

`gcd(Δ[A000720(n+1)], A057544(n))`
-/

namespace A181569.P8437518291367008231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A057544 n)

end

end A181569.P8437518291367008231

namespace A181569

/-- `gcd(Δ[A000720(n+1)], A057544(n))` -/
def P8437518291367008231.Spec : Prop :=
  ∀ n, (P8437518291367008231.a n : ℤ) = A181569 (n + 1)

end A181569

/-! ## A181569.P7588562621763900797

`n+2-C(A000010(n+2), n)*A001222(n+2)`
-/

namespace A181569.P7588562621763900797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.choose (A000010 (n + 2)).toNat n : ℤ) * A001222 (n + 2)

end

end A181569.P7588562621763900797

namespace A181569

/-- `n+2-C(A000010(n+2), n)*A001222(n+2)` -/
def P7588562621763900797.Spec : Prop :=
  ∀ n, P7588562621763900797.a n = A181569 (n + 1)

end A181569

/-! ## A181569.P15452929519549281060

`2-A061006(n+2)+n`
-/

namespace A181569.P15452929519549281060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A061006 (n + 2) + (n : ℤ)

end

end A181569.P15452929519549281060

namespace A181569

/-- `2-A061006(n+2)+n` -/
def P15452929519549281060.Spec : Prop :=
  ∀ n, P15452929519549281060.a n = A181569 (n + 1)

end A181569

/-! ## A181569.P14062294505775185237

`A005451(n+2)/A329684(n)`
-/

namespace A181569.P14062294505775185237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005451 (n + 2) : ℚ) / (A329684 n : ℚ)

end

end A181569.P14062294505775185237

namespace A181569

/-- `A005451(n+2)/A329684(n)` -/
def P14062294505775185237.Spec : Prop :=
  ∀ n, P14062294505775185237.a n = (A181569 (n + 1) : ℚ)

end A181569

/-! ## A181569.P9394242899810394095

`gcd(A005451(n+2), A130779(n))`
-/

namespace A181569.P9394242899810394095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005451 (n + 2)) (A130779 n)

end

end A181569.P9394242899810394095

namespace A181569

/-- `gcd(A005451(n+2), A130779(n))` -/
def P9394242899810394095.Spec : Prop :=
  ∀ n, (P9394242899810394095.a n : ℤ) = A181569 (n + 1)

end A181569

/-! ## A181569.P18211946047214828778

`A170826(n+2)/(n+2)`
-/

namespace A181569.P18211946047214828778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170826 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A181569.P18211946047214828778

namespace A181569

/-- `A170826(n+2)/(n+2)` -/
def P18211946047214828778.Spec : Prop :=
  ∀ n, P18211946047214828778.a n = (A181569 (n + 1) : ℚ)

end A181569

/-! ## A181569.P15695918478018923895

`A028310(n)-A089026(n+2)+3-A130706(A064680(n))`
-/

namespace A181569.P15695918478018923895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A089026 (n + 2) + 3 - A130706 (A064680 n).toNat

end

end A181569.P15695918478018923895

namespace A181569

/-- `A028310(n)-A089026(n+2)+3-A130706(A064680(n))` -/
def P15695918478018923895.Spec : Prop :=
  ∀ n, P15695918478018923895.a n = A181569 (n + 1)

end A181569

/-! ## A181569.P579147546733852404

`A057544(n)/A308090(n+1)`
-/

namespace A181569.P579147546733852404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057544 n : ℚ) / (A308090 (n + 1) : ℚ)

end

end A181569.P579147546733852404

namespace A181569

/-- `A057544(n)/A308090(n+1)` -/
def P579147546733852404.Spec : Prop :=
  ∀ n, P579147546733852404.a n = (A181569 (n + 1) : ℚ)

end A181569

/-! ## A181569.P1722288943292460296

`gcd(A025543(n), A057544(n))`
-/

namespace A181569.P1722288943292460296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025543 n) (A057544 n)

end

end A181569.P1722288943292460296

namespace A181569

/-- `gcd(A025543(n), A057544(n))` -/
def P1722288943292460296.Spec : Prop :=
  ∀ n, (P1722288943292460296.a n : ℤ) = A181569 (n + 1)

end A181569

/-! ## A181569.P7558816795136474822

`gcd(A084860(n)+A005451(n+2), A084860(n))`
-/

namespace A181569.P7558816795136474822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084860 n + A005451 (n + 2)) (A084860 n)

end

end A181569.P7558816795136474822

namespace A181569

/-- `gcd(A084860(n)+A005451(n+2), A084860(n))` -/
def P7558816795136474822.Spec : Prop :=
  ∀ n, (P7558816795136474822.a n : ℤ) = A181569 (n + 1)

end A181569

/-! ## A181569.P17425098704683173662

`gcd(n+2, A366368(n))`
-/

namespace A181569.P17425098704683173662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A366368 n)

end

end A181569.P17425098704683173662

namespace A181569

/-- `gcd(n+2, A366368(n))` -/
def P17425098704683173662.Spec : Prop :=
  ∀ n, (P17425098704683173662.a n : ℤ) = A181569 (n + 1)

end A181569

/-! ## A181569.P13117682613988300671

`n+2-A062169(∑[n+2])`
-/

namespace A181569.P13117682613988300671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A062169 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181569.P13117682613988300671

namespace A181569

/-- `n+2-A062169(∑[n+2])` -/
def P13117682613988300671.Spec : Prop :=
  ∀ n, P13117682613988300671.a n = A181569 (n + 1)

end A181569

/-! ## A181569.P3558843855775646282

`gcd(A020639(2*(n+1))+n, A055772(n+2))`
-/

namespace A181569.P3558843855775646282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (2 * (n + 1)) + (n : ℤ)) (A055772 (n + 2))

end

end A181569.P3558843855775646282

namespace A181569

/-- `gcd(A020639(2*(n+1))+n, A055772(n+2))` -/
def P3558843855775646282.Spec : Prop :=
  ∀ n, (P3558843855775646282.a n : ℤ) = A181569 (n + 1)

end A181569

/-! ## A181569.P6722023294892511066

`(n+2)/A014963(lcm(n+2, n+1-A014963(n+2)))`
-/

namespace A181569.P6722023294892511066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A014963 (Int.lcm (n + 2 : ℤ) ((n + 1 : ℤ) - A014963 (n + 2))) : ℚ)

end

end A181569.P6722023294892511066

namespace A181569

/-- `(n+2)/A014963(lcm(n+2, n+1-A014963(n+2)))` -/
def P6722023294892511066.Spec : Prop :=
  ∀ n, P6722023294892511066.a n = (A181569 (n + 1) : ℚ)

end A181569

/-! ## A181569.P16595543582056587209

`(n+2)/A014963((n+2)*gcd(n, A008683(n+2)))`
-/

namespace A181569.P16595543582056587209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A014963 ((n + 2) * Int.gcd (n : ℤ) (A008683 (n + 2))) : ℚ)

end

end A181569.P16595543582056587209

namespace A181569

/-- `(n+2)/A014963((n+2)*gcd(n, A008683(n+2)))` -/
def P16595543582056587209.Spec : Prop :=
  ∀ n, P16595543582056587209.a n = (A181569 (n + 1) : ℚ)

end A181569

/-! ## A181569.P14849495296700852068

`A000188(A170826(n+2))`
-/

namespace A181569.P14849495296700852068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A170826 (n + 2)).toNat

end

end A181569.P14849495296700852068

namespace A181569

/-- `A000188(A170826(n+2))` -/
def P14849495296700852068.Spec : Prop :=
  ∀ n, P14849495296700852068.a n = A181569 (n + 1)

end A181569

/-!
# A181570: Primes in A050798.

The programs for A181570, the canonical program `A181570.P2042820732213063132` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181570 has offset 1).

The definition of A181570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1615 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181570.P2042820732213063132

`p?[2*A108769(n+1)+1]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A181570

/-- `p?[2*A108769(n+1)+1]` -/
def P2042820732213063132.Spec : Prop :=
  ∀ n, P2042820732213063132.a n = A181570 (n + 1)

theorem P2042820732213063132.correct : P2042820732213063132.Spec := by
  intro n
  simp only [A181570, Nat.add_sub_cancel]

end A181570

/-! ## A181570.P10997186984843335835

`p?[A050798(n+1)]`
-/

namespace A181570.P10997186984843335835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181570.P10997186984843335835

namespace A181570

/-- `p?[A050798(n+1)]` -/
def P10997186984843335835.Spec : Prop :=
  ∀ n, P10997186984843335835.a n = A181570 (n + 1)

end A181570

/-! ## A181570.P14409239810825709870

`record[A006530(A050798(n+2))]`
-/

namespace A181570.P14409239810825709870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A050798 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181570.P14409239810825709870

namespace A181570

/-- `record[A006530(A050798(n+2))]` -/
def P14409239810825709870.Spec : Prop :=
  ∀ n, P14409239810825709870.a n = A181570 (n + 1)

end A181570

/-! ## A181570.P15892551121141355542

`filter[A050798(n+1), A010051(#)]`
-/

namespace A181570.P15892551121141355542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A181570.P15892551121141355542

namespace A181570

/-- `filter[A050798(n+1), A010051(#)]` -/
def P15892551121141355542.Spec : Prop :=
  ∀ n, P15892551121141355542.a n = A181570 (n + 1)

end A181570

/-! ## A181570.P13187668550846601937

`∩[A000040(n+1), A050798(n+1)]`
-/

namespace A181570.P13187668550846601937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181570.P13187668550846601937

namespace A181570

/-- `∩[A000040(n+1), A050798(n+1)]` -/
def P13187668550846601937.Spec : Prop :=
  ∀ n, (P13187668550846601937.a n : ℤ) = A181570 (n + 1)

end A181570

/-! ## A181570.P8376272632321706581

`∩[A004139(n+1), A050798(n+1)]`
-/

namespace A181570.P8376272632321706581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181570.P8376272632321706581

namespace A181570

/-- `∩[A004139(n+1), A050798(n+1)]` -/
def P8376272632321706581.Spec : Prop :=
  ∀ n, (P8376272632321706581.a n : ℤ) = A181570 (n + 1)

end A181570

/-! ## A181570.P14972747713615822114

`∩[A045319(n+1), A050798(n+1)]`
-/

namespace A181570.P14972747713615822114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181570.P14972747713615822114

namespace A181570

/-- `∩[A045319(n+1), A050798(n+1)]` -/
def P14972747713615822114.Spec : Prop :=
  ∀ n, (P14972747713615822114.a n : ℤ) = A181570 (n + 1)

end A181570

/-! ## A181570.P14362808946692505552

`∩[A045344(n+1), A050798(n+1)]`
-/

namespace A181570.P14362808946692505552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181570.P14362808946692505552

namespace A181570

/-- `∩[A045344(n+1), A050798(n+1)]` -/
def P14362808946692505552.Spec : Prop :=
  ∀ n, (P14362808946692505552.a n : ℤ) = A181570 (n + 1)

end A181570

/-! ## A181570.P6326393713211723375

`∩[A050798(n+1), A065091(n+1)]`
-/

namespace A181570.P6326393713211723375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181570.P6326393713211723375

namespace A181570

/-- `∩[A050798(n+1), A065091(n+1)]` -/
def P6326393713211723375.Spec : Prop :=
  ∀ n, (P6326393713211723375.a n : ℤ) = A181570 (n + 1)

end A181570

/-! ## A181570.P4520198535935096066

`∩[A050798(n+1), A083249(n+1)]`
-/

namespace A181570.P4520198535935096066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181570.P4520198535935096066

namespace A181570

/-- `∩[A050798(n+1), A083249(n+1)]` -/
def P4520198535935096066.Spec : Prop :=
  ∀ n, (P4520198535935096066.a n : ℤ) = A181570 (n + 1)

end A181570

/-! ## A181570.P3572853716467403848

`∩[A050798(n+1), A094516(n+1)]`
-/

namespace A181570.P3572853716467403848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181570.P3572853716467403848

namespace A181570

/-- `∩[A050798(n+1), A094516(n+1)]` -/
def P3572853716467403848.Spec : Prop :=
  ∀ n, (P3572853716467403848.a n : ℤ) = A181570 (n + 1)

end A181570

/-! ## A181570.P10512960430925799971

`∩[A050798(n+1), A106118(n+1)]`
-/

namespace A181570.P10512960430925799971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181570.P10512960430925799971

namespace A181570

/-- `∩[A050798(n+1), A106118(n+1)]` -/
def P10512960430925799971.Spec : Prop :=
  ∀ n, (P10512960430925799971.a n : ℤ) = A181570 (n + 1)

end A181570

/-! ## A181570.P18342694754636386305

`∩[A050798(n+1), A108719(n+1)]`
-/

namespace A181570.P18342694754636386305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181570.P18342694754636386305

namespace A181570

/-- `∩[A050798(n+1), A108719(n+1)]` -/
def P18342694754636386305.Spec : Prop :=
  ∀ n, (P18342694754636386305.a n : ℤ) = A181570 (n + 1)

end A181570

/-! ## A181570.P2955633811291525395

`∩[A050798(n+1), A116974(n+1)]`
-/

namespace A181570.P2955633811291525395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181570.P2955633811291525395

namespace A181570

/-- `∩[A050798(n+1), A116974(n+1)]` -/
def P2955633811291525395.Spec : Prop :=
  ∀ n, (P2955633811291525395.a n : ℤ) = A181570 (n + 1)

end A181570

/-! ## A181570.P5440838981738095942

`∩[A050798(n+1), A161346(n+1)]`
-/

namespace A181570.P5440838981738095942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181570.P5440838981738095942

namespace A181570

/-- `∩[A050798(n+1), A161346(n+1)]` -/
def P5440838981738095942.Spec : Prop :=
  ∀ n, (P5440838981738095942.a n : ℤ) = A181570 (n + 1)

end A181570

/-! ## A181570.P1435928506201295903

`∩[A050798(n+1), A175787(n+1)]`
-/

namespace A181570.P1435928506201295903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181570.P1435928506201295903

namespace A181570

/-- `∩[A050798(n+1), A175787(n+1)]` -/
def P1435928506201295903.Spec : Prop :=
  ∀ n, (P1435928506201295903.a n : ℤ) = A181570 (n + 1)

end A181570

/-! ## A181570.P543184909648059826

`∩[A050798(n+1), A182986(n+1)]`
-/

namespace A181570.P543184909648059826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181570.P543184909648059826

namespace A181570

/-- `∩[A050798(n+1), A182986(n+1)]` -/
def P543184909648059826.Spec : Prop :=
  ∀ n, (P543184909648059826.a n : ℤ) = A181570 (n + 1)

end A181570

/-! ## A181570.P10709690253717540668

`∩[A050798(n+1), A215848(n+1)]`
-/

namespace A181570.P10709690253717540668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181570.P10709690253717540668

namespace A181570

/-- `∩[A050798(n+1), A215848(n+1)]` -/
def P10709690253717540668.Spec : Prop :=
  ∀ n, (P10709690253717540668.a n : ℤ) = A181570 (n + 1)

end A181570

/-! ## A181570.P13503521454590820408

`∩[A050798(n+1), A251595(n+1)]`
-/

namespace A181570.P13503521454590820408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181570.P13503521454590820408

namespace A181570

/-- `∩[A050798(n+1), A251595(n+1)]` -/
def P13503521454590820408.Spec : Prop :=
  ∀ n, (P13503521454590820408.a n : ℤ) = A181570 (n + 1)

end A181570

/-! ## A181570.P7664710384548112938

`p?[A005408(A108769(n+1))]`
-/

namespace A181570.P7664710384548112938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A108769 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181570.P7664710384548112938

namespace A181570

/-- `p?[A005408(A108769(n+1))]` -/
def P7664710384548112938.Spec : Prop :=
  ∀ n, P7664710384548112938.a n = A181570 (n + 1)

end A181570

/-!
# A181571: Third column of triangle in A179898.

The programs for A181571, there is no canonical definition to state claims against.
-/

/-! ## A181571.P8178176762204366804

`A039798(∑[n+3])`
-/

namespace A181571.P8178176762204366804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039798 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181571.P8178176762204366804

/-! ## A181571.P6690451426733441322

`A039797(∑[n+2]+3)`
-/

namespace A181571.P6690451426733441322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039797 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A181571.P6690451426733441322

/-! ## A181571.P183993820236242429

`record[A039798(n)/A039814(n+3)]`
-/

namespace A181571.P183993820236242429
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039798 n : ℚ) / (A039814 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181571.P183993820236242429

/-! ## A181571.P18173781531063458957

`record[A039797((n+2)%A039797(n))]`
-/

namespace A181571.P18173781531063458957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039797 (Int.tmod (n + 2 : ℤ) (A039797 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181571.P18173781531063458957

/-! ## A181571.P8964188679406430325

`A005700(n+2)-A389288(n+1)`
-/

namespace A181571.P8964188679406430325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005700 (n + 2) - A389288 (n + 1)

end

end A181571.P8964188679406430325

/-!
# A181572: Number of distinct prime divisors of 5^n + n.

The programs for A181572, there is no canonical definition to state claims against.
-/

/-! ## A181572.P10870536940188248236

`A373585(A218206(2*n+3))+A226056(n)`
-/

namespace A181572.P10870536940188248236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373585 (A218206 (2 * n + 3)).toNat + A226056 n

end

end A181572.P10870536940188248236

/-!
# A181573: Impossible numbers of trailing zeros in the decimal representation of a factorial of any prime.

The programs for A181573, there is no canonical definition to state claims against.
-/

/-! ## A181573.P6229868435861720875

`comp[A080087(n+1)]`
-/

namespace A181573.P6229868435861720875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A181573.P6229868435861720875

/-! ## A181573.P12022198069663551062

`comp[A027868(A020484(n))]`
-/

namespace A181573.P12022198069663551062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A020484 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A181573.P12022198069663551062

/-! ## A181573.P9100566369545045844

`comp[A027868(A051698(n))]`
-/

namespace A181573.P9100566369545045844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A051698 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A181573.P9100566369545045844

/-! ## A181573.P4224276762150064724

`comp[A027868(A060264(n))]`
-/

namespace A181573.P4224276762150064724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A060264 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A181573.P4224276762150064724

/-! ## A181573.P3123204693714745007

`comp[A027868(A162753(n))]`
-/

namespace A181573.P3123204693714745007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A162753 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A181573.P3123204693714745007

/-! ## A181573.P5928087744469990655

`comp[A027868(A000040(n+1))]`
-/

namespace A181573.P5928087744469990655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A000040 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A181573.P5928087744469990655

/-! ## A181573.P13665836276351563291

`comp[A027868(A004139(n+1))]`
-/

namespace A181573.P13665836276351563291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A004139 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A181573.P13665836276351563291

/-! ## A181573.P4301765276532073533

`comp[A027868(A006093(n+1))]`
-/

namespace A181573.P4301765276532073533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A006093 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A181573.P4301765276532073533

/-! ## A181573.P1978446824763517650

`comp[A027868(A008578(n+1))]`
-/

namespace A181573.P1978446824763517650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A008578 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A181573.P1978446824763517650

/-! ## A181573.P3166020893373630495

`comp[A027868(A045344(n+1))]`
-/

namespace A181573.P3166020893373630495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A045344 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A181573.P3166020893373630495

/-!
# A181574: a(n) = Product_{i=2..n} (tau(i)+1)/(tau(i)-1), where tau(.)=A000005(.).

The programs for A181574, there is no canonical definition to state claims against.
-/

/-! ## A181574.P2950030939772651956

`∏[A184389(n+1)/A001222(A319354(n+1))]`
-/

namespace A181574.P2950030939772651956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184389 (n + 1) : ℚ) / (A001222 (A319354 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A181574.P2950030939772651956

/-! ## A181574.P7466888858875414027

`record[A278085(A276086(n))]`
-/

namespace A181574.P7466888858875414027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278085 (A276086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181574.P7466888858875414027

/-! ## A181574.P13883539501056975466

`A307000(∏[A039635(n+1)])`
-/

namespace A181574.P13883539501056975466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307000 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A181574.P13883539501056975466

/-! ## A181574.P15954716434074873127

`A168512(∑[A343397(n+1)!])`
-/

namespace A181574.P15954716434074873127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A343397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168512 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181574.P15954716434074873127

/-!
# A181575: Prime numbers which are impossible numbers of trailing zeros in the decimal representation of the factorial of any prime number.

The programs for A181575, there is no canonical definition to state claims against.
-/

/-! ## A181575.P9856161840201911323

`p?[comp[A027868(A097152(n+2))]]`
-/

namespace A181575.P9856161840201911323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A097152 (n + 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A181575.P9856161840201911323

/-! ## A181575.P17796793114095498789

`p?[A181573(n+1)]`
-/

namespace A181575.P17796793114095498789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181575.P17796793114095498789

/-! ## A181575.P6387708969296728231

`filter[A181573(n+1), A010051(#)]`
-/

namespace A181575.P6387708969296728231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A181575.P6387708969296728231

/-! ## A181575.P6458128198115504075

`filter[A181573(n+1), A080339(#)]`
-/

namespace A181575.P6458128198115504075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A181575.P6458128198115504075

/-! ## A181575.P16797776068946397473

`filter[A181573(n+1), A080545(#)]`
-/

namespace A181575.P16797776068946397473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A181575.P16797776068946397473

/-!
# A181576: Primes whose factorials end with a prime number of trailing 0's.

The programs for A181576, there is no canonical definition to state claims against.
-/

/-! ## A181576.P14216498601239792739

`p?[n*A328771(A027868(n))]`
-/

namespace A181576.P14216498601239792739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A328771 (A027868 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181576.P14216498601239792739

/-! ## A181576.P6561858145149518077

`eq[A005127(A027868(n)), A053204(n)]`
-/

namespace A181576.P6561858145149518077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 (A027868 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181576.P6561858145149518077

/-! ## A181576.P11417369874575733704

`eq[A053204(A027868(n)), A353851(n)]`
-/

namespace A181576.P11417369874575733704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 (A027868 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181576.P11417369874575733704

/-!
# A181577: Prime number of trailing end 0's associated with p! where p = A181576(n).

The programs for A181577, the canonical program `A181577.P9112885934417326049` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181577 has offset 1).

The definition of A181577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181577.P9535354092754249044

`A027868(A181576(n+1))`
-/

namespace A181577.P9535354092754249044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A181576 (n + 1)).toNat

end

end A181577.P9535354092754249044

namespace A181577

/-- `A027868(A181576(n+1))` -/
def P9535354092754249044.Spec : Prop :=
  ∀ n, P9535354092754249044.a n = A181577 (n + 1)

end A181577

/-! ## A181577.P9112885934417326049

`p?[A080087(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A181577

/-- `p?[A080087(n+1)]` -/
def P9112885934417326049.Spec : Prop :=
  ∀ n, P9112885934417326049.a n = A181577 (n + 1)

theorem P9112885934417326049.correct : P9112885934417326049.Spec := by
  intro n
  simp only [A181577, Nat.add_sub_cancel]

end A181577

/-! ## A181577.P5141903890012179251

`filter[A080087(n+3), A010051(#)]`
-/

namespace A181577.P5141903890012179251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080087 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A181577.P5141903890012179251

namespace A181577

/-- `filter[A080087(n+3), A010051(#)]` -/
def P5141903890012179251.Spec : Prop :=
  ∀ n, P5141903890012179251.a n = A181577 (n + 1)

end A181577

/-! ## A181577.P11159120089911461363

`p?[A027868(p?[xor(1, n)])]`
-/

namespace A181577.P11159120089911461363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181577.P11159120089911461363

namespace A181577

/-- `p?[A027868(p?[xor(1, n)])]` -/
def P11159120089911461363.Spec : Prop :=
  ∀ n, P11159120089911461363.a n = A181577 (n + 1)

end A181577

/-! ## A181577.P9534307765141645290

`p?[A027868(p?[2*n+1])]`
-/

namespace A181577.P9534307765141645290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181577.P9534307765141645290

namespace A181577

/-- `p?[A027868(p?[2*n+1])]` -/
def P9534307765141645290.Spec : Prop :=
  ∀ n, P9534307765141645290.a n = A181577 (n + 1)

end A181577

/-! ## A181577.P13542984054740673298

`p?[A027868(A000040(n+1))]`
-/

namespace A181577.P13542984054740673298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181577.P13542984054740673298

namespace A181577

/-- `p?[A027868(A000040(n+1))]` -/
def P13542984054740673298.Spec : Prop :=
  ∀ n, P13542984054740673298.a n = A181577 (n + 1)

end A181577

/-! ## A181577.P12472999756040753826

`p?[A027868(A000430(n+1))]`
-/

namespace A181577.P12472999756040753826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A000430 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181577.P12472999756040753826

namespace A181577

/-- `p?[A027868(A000430(n+1))]` -/
def P12472999756040753826.Spec : Prop :=
  ∀ n, P12472999756040753826.a n = A181577 (n + 1)

end A181577

/-! ## A181577.P4017279677659641510

`p?[A027868(A004139(n+1))]`
-/

namespace A181577.P4017279677659641510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A004139 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181577.P4017279677659641510

namespace A181577

/-- `p?[A027868(A004139(n+1))]` -/
def P4017279677659641510.Spec : Prop :=
  ∀ n, P4017279677659641510.a n = A181577 (n + 1)

end A181577

/-! ## A181577.P3650683384818944720

`p?[A027868(A006005(n+1))]`
-/

namespace A181577.P3650683384818944720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A006005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181577.P3650683384818944720

namespace A181577

/-- `p?[A027868(A006005(n+1))]` -/
def P3650683384818944720.Spec : Prop :=
  ∀ n, P3650683384818944720.a n = A181577 (n + 1)

end A181577

/-! ## A181577.P13767983182906937386

`p?[A027868(A006093(n+1))]`
-/

namespace A181577.P13767983182906937386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181577.P13767983182906937386

namespace A181577

/-- `p?[A027868(A006093(n+1))]` -/
def P13767983182906937386.Spec : Prop :=
  ∀ n, P13767983182906937386.a n = A181577 (n + 1)

end A181577

/-! ## A181577.P9667756053994871155

`p?[A027868(A008578(n+1))]`
-/

namespace A181577.P9667756053994871155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A181577.P9667756053994871155

namespace A181577

/-- `p?[A027868(A008578(n+1))]` -/
def P9667756053994871155.Spec : Prop :=
  ∀ n, P9667756053994871155.a n = A181577 (n + 1)

end A181577

/-!
# A181578: The number k such that each of the five factorials (5k+j)!, j=0..4, has exactly n trailing zeros in its base-10 representation; 0 if no such k exists.

The programs for A181578, there is no canonical definition to state claims against.
-/

/-! ## A181578.P5177463649281159865

`floor(A007845(n)%A007845(n+1)/5)`
-/

namespace A181578.P5177463649281159865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod (A007845 n) (A007845 (n + 1)) : ℚ) / 5⌋

end

end A181578.P5177463649281159865

/-! ## A181578.P7907868516270947569

`round(A007845(n)/5)%A228297(n+1)`
-/

namespace A181578.P7907868516270947569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A007845 n : ℚ) / 5)) (A228297 (n + 1))

end

end A181578.P7907868516270947569

/-! ## A181578.P17061171986407026680

`A228297(abs(1-n)+1)%A228297(n+1)`
-/

namespace A181578.P17061171986407026680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228297 (|1 - (n : ℤ)| + 1).toNat) (A228297 (n + 1))

end

end A181578.P17061171986407026680

/-! ## A181578.P17475611711533650189

`(A228297(n+1)-1)*char[A191610(n+1)]`
-/

namespace A181578.P17475611711533650189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A228297 (n + 1) - 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A181578.P17475611711533650189

/-! ## A181578.P7012742679830232122

`A007845(abs(1-n)+1)%A007845(n+1)/5`
-/

namespace A181578.P7012742679830232122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A007845 (|1 - (n : ℤ)| + 1).toNat) (A007845 (n + 1)) : ℚ) / 5

end

end A181578.P7012742679830232122

/-! ## A181578.P10707069999991685635

`Δ[A145018(A228297(A028310(n)))]`
-/

namespace A181578.P10707069999991685635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145018 (A228297 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181578.P10707069999991685635

/-! ## A181578.P6809921151352876690

`A002266(A007845(n)%A007845(n+1))`
-/

namespace A181578.P6809921151352876690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (Int.tmod (A007845 n) (A007845 (n + 1))).toNat

end

end A181578.P6809921151352876690

/-! ## A181578.P16895922319339914055

`A008496(A007845(n))%A228297(n+1)`
-/

namespace A181578.P16895922319339914055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008496 (A007845 n).toNat) (A228297 (n + 1))

end

end A181578.P16895922319339914055

/-! ## A181578.P12521705096899769427

`A181579(n)/5`
-/

namespace A181578.P12521705096899769427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181579 n : ℚ) / 5

end

end A181578.P12521705096899769427

/-! ## A181578.P15641106759651963305

`A002266(A181579(n))`
-/

namespace A181578.P15641106759651963305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A181579 n).toNat

end

end A181578.P15641106759651963305

/-!
# A181579: Smallest number m such that m! ends in exactly n trailing 0's (or 0 if no such m exists).

The programs for A181579, there is no canonical definition to state claims against.
-/

/-! ## A181579.P11552411619680113684

`5*A181578(n)`
-/

namespace A181579.P11552411619680113684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A181578 n

end

end A181579.P11552411619680113684

/-! ## A181579.P12951159175082974134

`A008587(A181578(n))`
-/

namespace A181579.P12951159175082974134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A181578 n).toNat

end

end A181579.P12951159175082974134

/-! ## A181579.P8526449698386393292

`lcm(A007845(n), A181578(n))`
-/

namespace A181579.P8526449698386393292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007845 n) (A181578 n)

end

end A181579.P8526449698386393292

/-! ## A181579.P6590659457220258159

`A007845(floor(acot(n)+n))%A007845(n+1)`
-/

namespace A181579.P6590659457220258159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007845 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat) (A007845 (n + 1))

end

end A181579.P6590659457220258159

/-! ## A181579.P11443926093850866826

`A007845(abs(1-n)+1)%A007845(n+1)`
-/

namespace A181579.P11443926093850866826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007845 (|1 - (n : ℤ)| + 1).toNat) (A007845 (n + 1))

end

end A181579.P11443926093850866826

/-! ## A181579.P14795233337075146793

`5*floor(A007845(n)%A007845(n+1)/5)`
-/

namespace A181579.P14795233337075146793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌊(Int.tmod (A007845 n) (A007845 (n + 1)) : ℚ) / 5⌋

end

end A181579.P14795233337075146793

/-! ## A181579.P17171322482587328564

`5*A228297(abs(1-n)+1)%A228297(n+1)`
-/

namespace A181579.P17171322482587328564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * Int.tmod (A228297 (|1 - (n : ℤ)| + 1).toNat) (A228297 (n + 1))

end

end A181579.P17171322482587328564

/-! ## A181579.P13552266903031541790

`A000035(Δ[A007845(n)])*A007845(n)`
-/

namespace A181579.P13552266903031541790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (f1 (n + 1) - f1 n).toNat * A007845 n

end

end A181579.P13552266903031541790

/-! ## A181579.P5296741705318778351

`A007845(n)*A027868(Δ[A007845(n)])`
-/

namespace A181579.P5296741705318778351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007845 n * A027868 (f1 (n + 1) - f1 n).toNat

end

end A181579.P5296741705318778351

/-!
# A181580: Smallest prime p such that p! ends with exactly n trailing 0's (or 0, if no such p exists).

The programs for A181580, there is no canonical definition to state claims against.
-/

/-! ## A181580.P2694685650202637887

`char[A080087(n+1)]*A007918(A007845(n))`
-/

namespace A181580.P2694685650202637887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080087 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007918 (A007845 n).toNat

end

end A181580.P2694685650202637887

/-! ## A181580.P273264036381306753

`char[A080087(n+1)]*A007918(A181579(n))`
-/

namespace A181580.P273264036381306753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080087 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007918 (A181579 n).toNat

end

end A181580.P273264036381306753

/-!
# A181581: Smallest k such that each of the five factorials (5k)!, (5k+1)!, (5k+2)!, (5k+3)! and (5k+4)! has exactly 10^n trailing 0's. Zero, if no such k exists.

The programs for A181581, there is no canonical definition to state claims against.
-/

/-! ## A181581.P9945598586992210960

`ceil(A173292(n)/5)`
-/

namespace A181581.P9945598586992210960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173292 n : ℚ) / 5⌉

end

end A181581.P9945598586992210960

/-! ## A181581.P11504321717716133367

`lcm(A004197(n)!, round(A173292(n)/5))`
-/

namespace A181581.P11504321717716133367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A004197 n).toNat : ℤ) (SequenceMachineLib.roundAway ((A173292 n : ℚ) / 5))

end

end A181581.P11504321717716133367

/-! ## A181581.P3440428846309666965

`round(A000007(n+1)+A173292(n)/5)`
-/

namespace A181581.P3440428846309666965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℚ) + (A173292 n : ℚ) / 5)

end

end A181581.P3440428846309666965

/-! ## A181581.P1255044036649481952

`A000041(and(1, -n))*round(A173292(n)/5)`
-/

namespace A181581.P1255044036649481952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (-(n : ℤ))).toNat * SequenceMachineLib.roundAway ((A173292 n : ℚ) / 5)

end

end A181581.P1255044036649481952

/-! ## A181581.P1508361582706528656

`A007318(∑[n+1])*round(A173292(n)/5)`
-/

namespace A181581.P1508361582706528656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A173292 n : ℚ) / 5)

end

end A181581.P1508361582706528656

/-!
# A181582: Smallest prime p such that p! ends with exactly 10^n trailing 0's (or 0, if no such p exists).

The programs for A181582, there is no canonical definition to state claims against.
-/

/-! ## A181582.P13699289268193767211

`A151800(A173292(n)-1)`
-/

namespace A181582.P13699289268193767211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A173292 n - 1).toNat

end

end A181582.P13699289268193767211

/-!
# A181584: Number of cycles of length (2n+1)^2-1 on 2n+1 X 2n+1 square grid.

The programs for A181584, there is no canonical definition to state claims against.
-/

/-! ## A181584.P4357383982778826926

`A301648(2*n+3)`
-/

namespace A181584.P4357383982778826926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301648 (2 * n + 3)

end

end A181584.P4357383982778826926

/-!
# A181586: a(0)=0; a(n+1) = 2*a(n) + period 4:repeat 0,1,-2,1.

The programs for A181586, the canonical program `A181586.P18149457714210898442` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181586 has offset 0).

The definition of A181586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181586.P1284049656911794542

`a(n-4)+2^(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A181586.P1284049656911794542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1, 0] fun n a =>
  a (n - 4) + (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ)

end

end A181586.P1284049656911794542

namespace A181586

/-- `a(n-4)+2^(n-4)` -/
def P1284049656911794542.Spec : Prop :=
  ∀ n, P1284049656911794542.a n = (A181586 n : ℚ)

end A181586

/-! ## A181586.P18149457714210898442

`a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A181586

/-- `a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` -/
def P18149457714210898442.Spec : Prop :=
  ∀ n, (P18149457714210898442.a n : ℤ) = A181586 n

theorem P18149457714210898442.correct : P18149457714210898442.Spec := by
  intro n
  simp only [A181586]

end A181586

/-! ## A181586.P3884428941723209374

`ogf((-x^2+x^3)/(-1+x+x^2+x^3+2x^4))`
-/

namespace A181586.P3884428941723209374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -1] [1, -1, -1, -1, -2] n

end

end A181586.P3884428941723209374

namespace A181586

/-- `ogf((-x^2+x^3)/(-1+x+x^2+x^3+2x^4))` -/
def P3884428941723209374.Spec : Prop :=
  ∀ n, P3884428941723209374.a n = A181586 n

end A181586

/-! ## A181586.P15153147272248166581

`2*(a(n-1)+1)-gcd(4, n+1)` with `a(0)=0`
-/

namespace A181586.P15153147272248166581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) + 1) - (Nat.gcd 4 (n + 1) : ℤ)

end

end A181586.P15153147272248166581

namespace A181586

/-- `2*(a(n-1)+1)-gcd(4, n+1)` -/
def P15153147272248166581.Spec : Prop :=
  ∀ n, P15153147272248166581.a n = A181586 n

end A181586

/-! ## A181586.P17765998345443376580

`xor(2*a(n-1), and(3, a(n-2)))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A181586.P17765998345443376580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0] fun n a =>
  Nat.xor (2 * a (n - 1)) (Nat.land 3 (a (n - 2)))

end

end A181586.P17765998345443376580

namespace A181586

/-- `xor(2*a(n-1), and(3, a(n-2)))` -/
def P17765998345443376580.Spec : Prop :=
  ∀ n, (P17765998345443376580.a n : ℤ) = A181586 n

end A181586

/-! ## A181586.P6747252626386749949

`A139800(n)-A056594(n)`
-/

namespace A181586.P6747252626386749949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139800 n - A056594 n

end

end A181586.P6747252626386749949

namespace A181586

/-- `A139800(n)-A056594(n)` -/
def P6747252626386749949.Spec : Prop :=
  ∀ n, P6747252626386749949.a n = A181586 n

end A181586

/-! ## A181586.P9888367921623498634

`A161204(n)-A228826(n)`
-/

namespace A181586.P9888367921623498634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161204 n - A228826 n

end

end A181586.P9888367921623498634

namespace A181586

/-- `A161204(n)-A228826(n)` -/
def P9888367921623498634.Spec : Prop :=
  ∀ n, P9888367921623498634.a n = A181586 n

end A181586

/-! ## A181586.P2877394087425609497

`A115851(n)-A011765(n+1)`
-/

namespace A181586.P2877394087425609497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115851 n - A011765 (n + 1)

end

end A181586.P2877394087425609497

namespace A181586

/-- `A115851(n)-A011765(n+1)` -/
def P2877394087425609497.Spec : Prop :=
  ∀ n, P2877394087425609497.a n = A181586 n

end A181586

/-! ## A181586.P7959517593937717696

`A228826(n+2)+A161204(n)`
-/

namespace A181586.P7959517593937717696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 (n + 2) + A161204 n

end

end A181586.P7959517593937717696

namespace A181586

/-- `A228826(n+2)+A161204(n)` -/
def P7959517593937717696.Spec : Prop :=
  ∀ n, P7959517593937717696.a n = A181586 n

end A181586

/-! ## A181586.P12440815482716314953

`xor(2*or(a(n-1), a(n-3)), a(n-2))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A181586.P12440815482716314953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0] fun n a =>
  Nat.xor (2 * Nat.lor (a (n - 1)) (a (n - 3))) (a (n - 2))

end

end A181586.P12440815482716314953

namespace A181586

/-- `xor(2*or(a(n-1), a(n-3)), a(n-2))` -/
def P12440815482716314953.Spec : Prop :=
  ∀ n, (P12440815482716314953.a n : ℤ) = A181586 n

end A181586

/-! ## A181586.P7483275082712076098

`Δ[A139800(n+1)/2]`
-/

namespace A181586.P7483275082712076098
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139800 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181586.P7483275082712076098

namespace A181586

/-- `Δ[A139800(n+1)/2]` -/
def P7483275082712076098.Spec : Prop :=
  ∀ n, P7483275082712076098.a n = (A181586 n : ℚ)

end A181586

/-! ## A181586.P4216534166464290442

`and(A115851(n), A256494(n+1))`
-/

namespace A181586.P4216534166464290442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115851 n) (A256494 (n + 1))

end

end A181586.P4216534166464290442

namespace A181586

/-- `and(A115851(n), A256494(n+1))` -/
def P4216534166464290442.Spec : Prop :=
  ∀ n, P4216534166464290442.a n = A181586 n

end A181586

/-! ## A181586.P3982552088933563971

`xor(floor(n/2)%2, round(2^n/15))`
-/

namespace A181586.P3982552088933563971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod ⌊(n : ℚ) / 2⌋ 2) (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 15))

end

end A181586.P3982552088933563971

namespace A181586

/-- `xor(floor(n/2)%2, round(2^n/15))` -/
def P3982552088933563971.Spec : Prop :=
  ∀ n, P3982552088933563971.a n = A181586 n

end A181586

/-! ## A181586.P4819701567180150461

`floor(2^-(n%2)+(2^n-2)/15)`
-/

namespace A181586.P4819701567180150461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (-((n % 2 : ℕ) : ℤ) : ℤ) + ((2 ^ n : ℤ) - 2 : ℚ) / 15⌋

end

end A181586.P4819701567180150461

namespace A181586

/-- `floor(2^-(n%2)+(2^n-2)/15)` -/
def P4819701567180150461.Spec : Prop :=
  ∀ n, P4819701567180150461.a n = A181586 n

end A181586

/-! ## A181586.P13903460143695572133

`Δ[round(A001045(n)/5)]`
-/

namespace A181586.P13903460143695572133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001045 n : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181586.P13903460143695572133

namespace A181586

/-- `Δ[round(A001045(n)/5)]` -/
def P13903460143695572133.Spec : Prop :=
  ∀ n, P13903460143695572133.a n = A181586 n

end A181586

/-! ## A181586.P14448608765305871865

`A139763(n)-A100088(n)`
-/

namespace A181586.P14448608765305871865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139763 n - A100088 n

end

end A181586.P14448608765305871865

namespace A181586

/-- `A139763(n)-A100088(n)` -/
def P14448608765305871865.Spec : Prop :=
  ∀ n, P14448608765305871865.a n = A181586 n

end A181586

/-! ## A181586.P17133015416969286443

`and(A115851(n), A141023(n))`
-/

namespace A181586.P17133015416969286443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115851 n) (A141023 n)

end

end A181586.P17133015416969286443

namespace A181586

/-- `and(A115851(n), A141023(n))` -/
def P17133015416969286443.Spec : Prop :=
  ∀ n, P17133015416969286443.a n = A181586 n

end A181586

/-! ## A181586.P15520709329628959693

`A001045(n+1)-A016029(n+1)`
-/

namespace A181586.P15520709329628959693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A016029 (n + 1)

end

end A181586.P15520709329628959693

namespace A181586

/-- `A001045(n+1)-A016029(n+1)` -/
def P15520709329628959693.Spec : Prop :=
  ∀ n, P15520709329628959693.a n = A181586 n

end A181586

/-! ## A181586.P14855331048231836021

`A007910(n)-(A007909(n)+A001045(n))`
-/

namespace A181586.P14855331048231836021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 n - (A007909 n + A001045 n)

end

end A181586.P14855331048231836021

namespace A181586

/-- `A007910(n)-(A007909(n)+A001045(n))` -/
def P14855331048231836021.Spec : Prop :=
  ∀ n, P14855331048231836021.a n = A181586 n

end A181586

/-! ## A181586.P16514140333668637839

`Δ[round(2^n/15)]`
-/

namespace A181586.P16514140333668637839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A181586.P16514140333668637839

namespace A181586

/-- `Δ[round(2^n/15)]` -/
def P16514140333668637839.Spec : Prop :=
  ∀ n, P16514140333668637839.a n = A181586 n

end A181586

/-!
# A181587: If n is even, a(n) = 0, if n is odd, a(n) = A002321(n), where A002321 is Mertens's function.

The programs for A181587, the canonical program `A181587.P3009405554724561704` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181587 has offset 1).

The definition of A181587 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181587.P3009405554724561704

`A000035(n+1)*A002321(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A181587

/-- `A000035(n+1)*A002321(n+1)` -/
def P3009405554724561704.Spec : Prop :=
  ∀ n, P3009405554724561704.a n = A181587 (n + 1)

theorem P3009405554724561704.correct : P3009405554724561704.Spec := by
  intro n
  simp only [A181587, Nat.add_sub_cancel]

end A181587

/-! ## A181587.P9945282852864802450

`A002321(or(1, n))-a(n-1)` with `a(0)=1`
-/

namespace A181587.P9945282852864802450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002321 (Nat.lor 1 n) - a (n - 1)

end

end A181587.P9945282852864802450

namespace A181587

/-- `A002321(or(1, n))-a(n-1)` -/
def P9945282852864802450.Spec : Prop :=
  ∀ n, P9945282852864802450.a n = A181587 (n + 1)

end A181587

/-! ## A181587.P7863891238579988838

`∑[A008683(n+1)]*char[2*n]`
-/

namespace A181587.P7863891238579988838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A181587.P7863891238579988838

namespace A181587

/-- `∑[A008683(n+1)]*char[2*n]` -/
def P7863891238579988838.Spec : Prop :=
  ∀ n, P7863891238579988838.a n = A181587 (n + 1)

end A181587

/-! ## A181587.P10713295694913109738

`and(1, n+1)*∑[A008683(2*n+1-n)]`
-/

namespace A181587.P10713295694913109738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n + 1 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181587.P10713295694913109738

namespace A181587

/-- `and(1, n+1)*∑[A008683(2*n+1-n)]` -/
def P10713295694913109738.Spec : Prop :=
  ∀ n, P10713295694913109738.a n = A181587 (n + 1)

end A181587

/-! ## A181587.P7337468352044345369

`A002321(A141310(n))`
-/

namespace A181587.P7337468352044345369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A141310 n).toNat

end

end A181587.P7337468352044345369

namespace A181587

/-- `A002321(A141310(n))` -/
def P7337468352044345369.Spec : Prop :=
  ∀ n, P7337468352044345369.a n = A181587 (n + 1)

end A181587

/-! ## A181587.P9441747939241250516

`A002321(n+1)*A059841(n)`
-/

namespace A181587.P9441747939241250516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) * A059841 n

end

end A181587.P9441747939241250516

namespace A181587

/-- `A002321(n+1)*A059841(n)` -/
def P9441747939241250516.Spec : Prop :=
  ∀ n, P9441747939241250516.a n = A181587 (n + 1)

end A181587

/-! ## A181587.P16443835569481609069

`A002321(n+1)*A266591(n)`
-/

namespace A181587.P16443835569481609069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) * A266591 n

end

end A181587.P16443835569481609069

namespace A181587

/-- `A002321(n+1)*A266591(n)` -/
def P16443835569481609069.Spec : Prop :=
  ∀ n, P16443835569481609069.a n = A181587 (n + 1)

end A181587

/-! ## A181587.P9770522274184399104

`A056594(n)²*A002321(n+1)`
-/

namespace A181587.P9770522274184399104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n ^ 2 * A002321 (n + 1)

end

end A181587.P9770522274184399104

namespace A181587

/-- `A056594(n)²*A002321(n+1)` -/
def P9770522274184399104.Spec : Prop :=
  ∀ n, P9770522274184399104.a n = A181587 (n + 1)

end A181587

/-! ## A181587.P13348029047279856891

`(A109613(n)-n)*A002321(n+1)`
-/

namespace A181587.P13348029047279856891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109613 n - (n : ℤ)) * A002321 (n + 1)

end

end A181587.P13348029047279856891

namespace A181587

/-- `(A109613(n)-n)*A002321(n+1)` -/
def P13348029047279856891.Spec : Prop :=
  ∀ n, P13348029047279856891.a n = A181587 (n + 1)

end A181587

/-! ## A181587.P16206663772402726666

`A002321(n+1)*A133872(2*n)`
-/

namespace A181587.P16206663772402726666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) * A133872 (2 * n)

end

end A181587.P16206663772402726666

namespace A181587

/-- `A002321(n+1)*A133872(2*n)` -/
def P16206663772402726666.Spec : Prop :=
  ∀ n, P16206663772402726666.a n = A181587 (n + 1)

end A181587

/-! ## A181587.P7522667431419372738

`A002321(n+1)%A052552(n)`
-/

namespace A181587.P7522667431419372738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002321 (n + 1)) (A052552 n)

end

end A181587.P7522667431419372738

namespace A181587

/-- `A002321(n+1)%A052552(n)` -/
def P7522667431419372738.Spec : Prop :=
  ∀ n, P7522667431419372738.a n = A181587 (n + 1)

end A181587

/-! ## A181587.P2495446081851129915

`A162459(n+1)%A052552(n)`
-/

namespace A181587.P2495446081851129915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162459 (n + 1)) (A052552 n)

end

end A181587.P2495446081851129915

namespace A181587

/-- `A162459(n+1)%A052552(n)` -/
def P2495446081851129915.Spec : Prop :=
  ∀ n, P2495446081851129915.a n = A181587 (n + 1)

end A181587

/-! ## A181587.P3772580937459343256

`A134541(A053439(n))`
-/

namespace A181587.P3772580937459343256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134541 (A053439 n).toNat

end

end A181587.P3772580937459343256

namespace A181587

/-- `A134541(A053439(n))` -/
def P3772580937459343256.Spec : Prop :=
  ∀ n, P3772580937459343256.a n = A181587 (n + 1)

end A181587

/-!
# A181588: G.f. satisfies: A(x) = 1 + x*Sum_{n>=0} log( A(2^n*x) )^n/(2^n*n!).

The programs for A181588, there is no canonical definition to state claims against.
-/

/-! ## A181588.P1360516662711355855

`ceil(record[(n%4+n)!]/A166932(n+3))`
-/

namespace A181588.P1360516662711355855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A166932 (n + 3) : ℚ)⌉

end

end A181588.P1360516662711355855

/-! ## A181588.P5920850748101848030

`A147706(∑[(1-n)²-(1-a(n-1))])` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A181588.P5920850748101848030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  (1 - (n : ℤ)) ^ 2 - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147706 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A181588.P5920850748101848030

/-!
# A181590: Least value of n such that |P(n) - 1/e| < 10^(-i), i=1,2,3... . P(n)=floor(n!/e + 1/2)/n! is the probability of a random permutation on n objects be a derangement.

The programs for A181590, there is no canonical definition to state claims against.
-/

/-! ## A181590.P3078406305000434485

`A243293(n+1)%61`
-/

namespace A181590.P3078406305000434485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243293 (n + 1)) 61

end

end A181590.P3078406305000434485

/-! ## A181590.P11506945061528034233

`and(A127229(n+5), A243293(n+1))`
-/

namespace A181590.P11506945061528034233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127229 (n + 5)) (A243293 (n + 1))

end

end A181590.P11506945061528034233

/-! ## A181590.P14239019097244075607

`A243293(n+1)+char[A131573(n+1)]`
-/

namespace A181590.P14239019097244075607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131573 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243293 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A181590.P14239019097244075607

/-! ## A181590.P7777181329123244686

`A243293(n+1)+char[A319042(n+2)]`
-/

namespace A181590.P7777181329123244686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319042 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243293 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A181590.P7777181329123244686

/-! ## A181590.P18084556601596992027

`A243293(n+1)+char[A302088(n+4)]`
-/

namespace A181590.P18084556601596992027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302088 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243293 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A181590.P18084556601596992027

/-! ## A181590.P10734913432200792693

`or(char[A016754(n+1)], A243293(n+1))`
-/

namespace A181590.P10734913432200792693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A243293 (n + 1))

end

end A181590.P10734913432200792693

/-! ## A181590.P15605076677984408306

`A243293(n+1)+char[A024024(2*(n+2))]`
-/

namespace A181590.P15605076677984408306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024024 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243293 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A181590.P15605076677984408306

/-! ## A181590.P2417772481020159314

`A243293(n+1)+char[A122736(3*n+4)]`
-/

namespace A181590.P2417772481020159314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122736 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243293 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A181590.P2417772481020159314

/-! ## A181590.P2074722332410407636

`or(char[A002378(3*n+4)], A243293(n+1))`
-/

namespace A181590.P2074722332410407636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A243293 (n + 1))

end

end A181590.P2074722332410407636

/-! ## A181590.P4950681032557723146

`A243293(n+1)+A026801(A243296(3*(n+1)))`
-/

namespace A181590.P4950681032557723146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243293 (n + 1) + A026801 (A243296 (3 * (n + 1))).toNat

end

end A181590.P4950681032557723146

/-!
# A181591: a(n) = binomial(bigOmega(n),omega(n)), where omega = A001221 and bigOmega = A001222.

The programs for A181591, the canonical program `A181591.P14950900501302822613` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181591 has offset 1).

The definition of A181591 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A001222(n+1), A001221(n+1))` (program `A181591.P14950900501302822613`, by `A181591.P14950900501302822613.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181591.P14950900501302822613

`C(A001222(n+1), A001221(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A181591

/-- `C(A001222(n+1), A001221(n+1))` -/
def P14950900501302822613.Spec : Prop :=
  ∀ n, (P14950900501302822613.a n : ℤ) = A181591 (n + 1)

theorem P14950900501302822613.correct : P14950900501302822613.Spec := by
  intro n
  simp only [A181591, Nat.add_sub_cancel]

end A181591

/-! ## A181591.P11944348044628014425

`A136277(A156552(n+1))`
-/

namespace A181591.P11944348044628014425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136277 (A156552 (n + 1)).toNat

end

end A181591.P11944348044628014425

namespace A181591

/-- `A136277(A156552(n+1))` -/
def P11944348044628014425.Spec : Prop :=
  ∀ n, P11944348044628014425.a n = A181591 (n + 1)

end A181591

/-! ## A181591.P15810352332892812529

`C(∑{e}[n+1, #], ∑{e}[n+1, #-1])`
-/

namespace A181591.P15810352332892812529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) (∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - 1)).toNat

end

end A181591.P15810352332892812529

namespace A181591

/-- `C(∑{e}[n+1, #], ∑{e}[n+1, #-1])` -/
def P15810352332892812529.Spec : Prop :=
  ∀ n, (P15810352332892812529.a n : ℤ) = A181591 (n + 1)

end A181591

/-! ## A181591.P9925806612038348619

`C(∑{e}[n+1, #], ∑{p}[n+1, gcd(n, #)])`
-/

namespace A181591.P9925806612038348619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) (∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p)

end

end A181591.P9925806612038348619

namespace A181591

/-- `C(∑{e}[n+1, #], ∑{p}[n+1, gcd(n, #)])` -/
def P9925806612038348619.Spec : Prop :=
  ∀ n, (P9925806612038348619.a n : ℤ) = A181591 (n + 1)

end A181591

/-! ## A181591.P10316863339007088721

`C(∑{e}[n+1, #], A046660(n+1))`
-/

namespace A181591.P10316863339007088721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) (A046660 (n + 1)).toNat

end

end A181591.P10316863339007088721

namespace A181591

/-- `C(∑{e}[n+1, #], A046660(n+1))` -/
def P10316863339007088721.Spec : Prop :=
  ∀ n, (P10316863339007088721.a n : ℤ) = A181591 (n + 1)

end A181591

/-! ## A181591.P7870736126384874520

`C(∑{e}[n+1, #], A001222(∏{p}[n+1, #]))`
-/

namespace A181591.P7870736126384874520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) (A001222 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat

end

end A181591.P7870736126384874520

namespace A181591

/-- `C(∑{e}[n+1, #], A001222(∏{p}[n+1, #]))` -/
def P7870736126384874520.Spec : Prop :=
  ∀ n, (P7870736126384874520.a n : ℤ) = A181591 (n + 1)

end A181591

/-! ## A181591.P11609723724106025728

`C(A001222(n+1), A046660(n+1))`
-/

namespace A181591.P11609723724106025728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (n + 1)).toNat (A046660 (n + 1)).toNat

end

end A181591.P11609723724106025728

namespace A181591

/-- `C(A001222(n+1), A046660(n+1))` -/
def P11609723724106025728.Spec : Prop :=
  ∀ n, (P11609723724106025728.a n : ℤ) = A181591 (n + 1)

end A181591

/-! ## A181591.P11084458233836817980

`C(A001222(n+1), ∑{p}[n+1, A001222(#)])`
-/

namespace A181591.P11084458233836817980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (n + 1)).toNat (∑ p ∈ Nat.primeFactors (f1 n), A001222 p).toNat

end

end A181591.P11084458233836817980

namespace A181591

/-- `C(A001222(n+1), ∑{p}[n+1, A001222(#)])` -/
def P11084458233836817980.Spec : Prop :=
  ∀ n, (P11084458233836817980.a n : ℤ) = A181591 (n + 1)

end A181591

/-! ## A181591.P15030360132167395305

`C(A001222(n+1), A001222(∏{p}[n+1, #]))`
-/

namespace A181591.P15030360132167395305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (n + 1)).toNat (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A181591.P15030360132167395305

namespace A181591

/-- `C(A001222(n+1), A001222(∏{p}[n+1, #]))` -/
def P15030360132167395305.Spec : Prop :=
  ∀ n, (P15030360132167395305.a n : ℤ) = A181591 (n + 1)

end A181591

/-! ## A181591.P13224023219020351291

`C(A001222(n+1), A001222(A007947(n+1)))`
-/

namespace A181591.P13224023219020351291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (n + 1)).toNat (A001222 (A007947 (n + 1)).toNat).toNat

end

end A181591.P13224023219020351291

namespace A181591

/-- `C(A001222(n+1), A001222(A007947(n+1)))` -/
def P13224023219020351291.Spec : Prop :=
  ∀ n, (P13224023219020351291.a n : ℤ) = A181591 (n + 1)

end A181591

/-! ## A181591.P3811649045706914913

`C(A001222(n+1), A001222(A034444(n+1)))`
-/

namespace A181591.P3811649045706914913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (n + 1)).toNat (A001222 (A034444 (n + 1)).toNat).toNat

end

end A181591.P3811649045706914913

namespace A181591

/-- `C(A001222(n+1), A001222(A034444(n+1)))` -/
def P3811649045706914913.Spec : Prop :=
  ∀ n, (P3811649045706914913.a n : ℤ) = A181591 (n + 1)

end A181591

/-! ## A181591.P11808138145997726050

`C(A252736(n+1)+1, A252736(A217434(n+1)))`
-/

namespace A181591.P11808138145997726050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A252736 (n + 1) + 1).toNat (A252736 (A217434 (n + 1)).toNat).toNat

end

end A181591.P11808138145997726050

namespace A181591

/-- `C(A252736(n+1)+1, A252736(A217434(n+1)))` -/
def P11808138145997726050.Spec : Prop :=
  ∀ n, (P11808138145997726050.a n : ℤ) = A181591 (n + 1)

end A181591

/-! ## A181591.P5157798379453276546

`C(A080256(n+1)-A001221(n+1), A001221(n+1))`
-/

namespace A181591.P5157798379453276546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080256 (n + 1) - A001221 (n + 1)).toNat (A001221 (n + 1)).toNat

end

end A181591.P5157798379453276546

namespace A181591

/-- `C(A080256(n+1)-A001221(n+1), A001221(n+1))` -/
def P5157798379453276546.Spec : Prop :=
  ∀ n, (P5157798379453276546.a n : ℤ) = A181591 (n + 1)

theorem P5157798379453276546.correct : P5157798379453276546.Spec := by
  intro n
  simp only [A181591, Nat.add_sub_cancel, A181591.P5157798379453276546.a, A181591.P14950900501302822613.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A080256, A080256.P7120327596299936655.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A181591

/-! ## A181591.P9944091317963612320

`A264857(A087560(n+1))`
-/

namespace A181591.P9944091317963612320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264857 (A087560 (n + 1)).toNat

end

end A181591.P9944091317963612320

namespace A181591

/-- `A264857(A087560(n+1))` -/
def P9944091317963612320.Spec : Prop :=
  ∀ n, P9944091317963612320.a n = A181591 (n + 1)

end A181591

/-! ## A181591.P12176214037978359255

`A264857(A119416(n+1))`
-/

namespace A181591.P12176214037978359255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264857 (A119416 (n + 1)).toNat

end

end A181591.P12176214037978359255

namespace A181591

/-- `A264857(A119416(n+1))` -/
def P12176214037978359255.Spec : Prop :=
  ∀ n, P12176214037978359255.a n = A181591 (n + 1)

end A181591

/-!
# A181593: Number of isomorphism classes of self-orthogonal Latin squares of order n.

The programs for A181593, there is no canonical definition to state claims against.
-/

/-! ## A181593.P15944808780812885358

`A130339(A160366(n+1))*A156352(2*n+1)`
-/

namespace A181593.P15944808780812885358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130339 (A160366 (n + 1)).toNat * A156352 (2 * n + 1)

end

end A181593.P15944808780812885358

/-!
# A181594: The number of combinatorially distinct tilings of a square by n rectangles, regarding rotations and reflections as distinct.

The programs for A181594, there is no canonical definition to state claims against.
-/

/-! ## A181594.P14383144640793183418

`A263270(A082143(n))`
-/

namespace A181594.P14383144640793183418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A082143 n).toNat

end

end A181594.P14383144640793183418

/-! ## A181594.P3652003463799138275

`A036234(∑[A309105(n)²])`
-/

namespace A181594.P3652003463799138275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309105 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A181594.P3652003463799138275

/-!
# A181595: Abundant numbers n for which the abundance d = sigma(n) - 2*n is a proper divisor, that is, 0 < d < n and d | n.

The programs for A181595, there is no canonical definition to state claims against.
-/

/-! ## A181595.P2421312018788124836

`∩[A097498(n+1), A215012(n+1)]`
-/

namespace A181595.P2421312018788124836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181595.P2421312018788124836

/-! ## A181595.P2455127422498660257

`∩[A153501(n+1), A215012(n+1)]`
-/

namespace A181595.P2455127422498660257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181595.P2455127422498660257

/-! ## A181595.P5123360550563904864

`∩[A215012(n+1), A097498(A020710(n))]`
-/

namespace A181595.P5123360550563904864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097498 (A020710 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181595.P5123360550563904864

/-! ## A181595.P473383424118585519

`∩[A097498(n+1), A204829(n+1)]`
-/

namespace A181595.P473383424118585519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181595.P473383424118585519

/-! ## A181595.P11845753968668448064

`∩[A153501(n+1), A204829(n+1)]`
-/

namespace A181595.P11845753968668448064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181595.P11845753968668448064

/-!
# A181596: Abundance of A181595(n).

The programs for A181596, there is no canonical definition to state claims against.
-/

/-! ## A181596.P3834977127225249645

`A033880(A181595(n+1))`
-/

namespace A181596.P3834977127225249645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A181595 (n + 1)).toNat

end

end A181596.P3834977127225249645

/-! ## A181596.P14004467733859000306

`1-A157449(∩[A097498(n+1), A215012(n+1)])`
-/

namespace A181596.P14004467733859000306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215012 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A157449 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A181596.P14004467733859000306

/-! ## A181596.P9753773954344599108

`1-A157449(∩[A153501(n+1), A215012(n+1)])`
-/

namespace A181596.P9753773954344599108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215012 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A157449 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A181596.P9753773954344599108

/-!
# A181597: (N\{4})-perfect numbers, i.e., numbers m for which sigma(m)-4 = 2m, if 4|m, otherwise sigma(m) = 2m.

The programs for A181597, there is no canonical definition to state claims against.
-/

/-! ## A181597.P6793886349997956004

`A083209(A026726(n))`
-/

namespace A181597.P6793886349997956004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083209 (A026726 n).toNat

end

end A181597.P6793886349997956004

/-!
# A181598: Numbers m divisible by 8 and with abundance sigma(m)-2*m = 8.

The programs for A181598, there is no canonical definition to state claims against.
-/

/-! ## A181598.P14244933843252114582

`∩[A088833(n+1), A097498(n+1)]`
-/

namespace A181598.P14244933843252114582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181598.P14244933843252114582

/-! ## A181598.P16602993740222353165

`∩[A045770(n+1), A153501(n+1)]`
-/

namespace A181598.P16602993740222353165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181598.P16602993740222353165

/-! ## A181598.P15585120978325302396

`∩[A045770(n+1), A181595(n+1)]`
-/

namespace A181598.P15585120978325302396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181598.P15585120978325302396

/-! ## A181598.P2904461223971292336

`∩[A088820(n+1), A153501(n+1)]`
-/

namespace A181598.P2904461223971292336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181598.P2904461223971292336

/-! ## A181598.P5626838149900233863

`∩[A088833(n+1), A153501(n+1)]`
-/

namespace A181598.P5626838149900233863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181598.P5626838149900233863

/-!
# A181599: Numbers m divisible by 16 and with abundance sigma(m)-2*m = 16.

The programs for A181599, there is no canonical definition to state claims against.
-/

/-! ## A181599.P7489254262718199348

`∩[A097498(n+1), A141547(n+1)]`
-/

namespace A181599.P7489254262718199348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181599.P7489254262718199348

/-! ## A181599.P3959770463690640470

`∩[A141547(n+1), A153501(n+1)]`
-/

namespace A181599.P3959770463690640470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181599.P3959770463690640470

/-! ## A181599.P10714522787739469853

`∩[A141547(n+1), A181595(n+1)]`
-/

namespace A181599.P10714522787739469853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181599.P10714522787739469853

/-! ## A181599.P2971354455204458166

`∩[A153501(n+1), A274561(n+1)]`
-/

namespace A181599.P2971354455204458166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181599.P2971354455204458166

/-! ## A181599.P10466293436413680385

`∩[A181595(n+1), A274561(n+1)]`
-/

namespace A181599.P10466293436413680385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181599.P10466293436413680385

