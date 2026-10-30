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
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A123801: Number of ways to build a contiguous building with n LEGO blocks of size 1 X 6 on top of a fixed block of the same size so that the building is flat, i.e., with all blocks in parallel position and symmetric after a rotation by 180 degrees.

The programs for A123801, there is no canonical definition to state claims against.
-/

/-! ## A123801.P14773247523578531633

`A054384(A006516(n)+A000045(2*n+3))`
-/

namespace A123801.P14773247523578531633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054384 (A006516 n + A000045 (2 * n + 3)).toNat

end

end A123801.P14773247523578531633

/-! ## A123801.P479610288351753380

`A283962(or(A283951(n+1), A283962(3*n+1)))`
-/

namespace A123801.P479610288351753380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283962 (Int.lor (A283951 (n + 1)) (A283962 (3 * n + 1))).toNat

end

end A123801.P479610288351753380

/-!
# A123803: Number of ways, counted up to symmetry, to build a contiguous building with n LEGO blocks of size 1 X 7 which is symmetric after a rotation by 180 degrees.

The programs for A123803, there is no canonical definition to state claims against.
-/

/-! ## A123803.P15482311993794149669

`A237590(A038519(3*n+1)+A008484(n))`
-/

namespace A123803.P15482311993794149669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237590 (A038519 (3 * n + 1) + A008484 n).toNat

end

end A123803.P15482311993794149669

/-!
# A123805: Number of ways, counted up to symmetry, to build a contiguous building with n LEGO blocks of size 1 X 7 which is flat, i.e., with all blocks in parallel position, and symmetric after a rotation by 180 degrees.

The programs for A123805, there is no canonical definition to state claims against.
-/

/-! ## A123805.P12939116092291692198

`∑[A325392(A128759(n+1)²)]`
-/

namespace A123805.P12939116092291692198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325392 (A128759 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123805.P12939116092291692198

/-!
# A123809: Number of ways to build a contiguous building with n LEGO blocks of size 1 X 7 on top of a fixed block of the same size so that the building is flat, i.e., with all blocks in parallel position and symmetric after a rotation by 180 degrees.

The programs for A123809, there is no canonical definition to state claims against.
-/

/-! ## A123809.P8167207030096458577

`A124525(A124542(n+1)+A124525(3*n+1))`
-/

namespace A123809.P8167207030096458577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124525 (A124542 (n + 1) + A124525 (3 * n + 1)).toNat

end

end A123809.P8167207030096458577

/-! ## A123809.P14973787010176569444

`A260429(n+1)+A095972(A018498(3*n+1))`
-/

namespace A123809.P14973787010176569444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1) + A095972 (A018498 (3 * n + 1)).toNat

end

end A123809.P14973787010176569444

/-!
# A123813: Number of ways, counted up to symmetry, to build a contiguous building with n LEGO blocks of size 1 X 8 which is flat, i.e., with all blocks in parallel position, and symmetric after a rotation by 180 degrees.

The programs for A123813, there is no canonical definition to state claims against.
-/

/-! ## A123813.P11792003330712222137

`A122651(A308876(n)*A344610(2*n+3))`
-/

namespace A123813.P11792003330712222137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (A308876 n * A344610 (2 * n + 3)).toNat

end

end A123813.P11792003330712222137

/-!
# A123817: Number of ways to build a contiguous building with n LEGO blocks of size 1 X 8 on top of a fixed block of the same size so that the building is flat, i.e., with all blocks in parallel position and symmetric after a rotation by 180 degrees.

The programs for A123817, there is no canonical definition to state claims against.
-/

/-! ## A123817.P3062048984065672872

`A233970(A318652(n+1)+A005207(n+1))`
-/

namespace A123817.P3062048984065672872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 (A318652 (n + 1) + A005207 (n + 1)).toNat

end

end A123817.P3062048984065672872

/-!
# A123818: Number of ways, counted up to symmetry, to build a contiguous building with n LEGO blocks of size 2 X 2.

The programs for A123818, there is no canonical definition to state claims against.
-/

/-! ## A123818.P18392285532291030925

`A007093(A032952(n)*A279558(n))`
-/

namespace A123818.P18392285532291030925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A032952 n * A279558 n).toNat

end

end A123818.P18392285532291030925

/-!
# A123819: Number of ways, counted up to symmetry, to build a contiguous building with n LEGO blocks of size 2 X 2 which is symmetric after a rotation by 180 degrees.

The programs for A123819, there is no canonical definition to state claims against.
-/

/-! ## A123819.P16389090337868659549

`A203899(A282005(n)+n)`
-/

namespace A123819.P16389090337868659549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203899 (A282005 n + (n : ℤ)).toNat

end

end A123819.P16389090337868659549

/-! ## A123819.P11825680396947358537

`A208671(∑[A000073(n+2)+n²+1])`
-/

namespace A123819.P11825680396947358537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) + (n ^ 2 + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208671 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A123819.P11825680396947358537

/-!
# A123820: Number of ways, counted up to symmetry, to build a contiguous building with n LEGO blocks of size 2 X 2 which is symmetric after a rotation by 90 degrees.

The programs for A123820, there is no canonical definition to state claims against.
-/

/-! ## A123820.P2792765327912123070

`A263998(C(A079962(n), A280950(n)))`
-/

namespace A123820.P2792765327912123070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263998 (Nat.choose (A079962 n).toNat (A280950 n).toNat)

end

end A123820.P2792765327912123070

/-!
# A123822: Number of ways to build a contiguous building with n LEGO blocks of size 2 X 2 on top of a fixed block of the same size so that the building is symmetric after a rotation by 180 degrees.

The programs for A123822, there is no canonical definition to state claims against.
-/

/-! ## A123822.P11136538942075956286

`A177872(A082674(n+1))`
-/

namespace A123822.P11136538942075956286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177872 (A082674 (n + 1)).toNat

end

end A123822.P11136538942075956286

/-!
# A123823: Number of ways to build a contiguous building with n LEGO blocks of size 2 X 2 on top of a fixed block of the same size so that the building is symmetric after a rotation by 90 degrees.

The programs for A123823, there is no canonical definition to state claims against.
-/

/-! ## A123823.P3578877431799630847

`A090501(A186546(n)+A047969(n))`
-/

namespace A123823.P3578877431799630847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090501 (A186546 n + A047969 n).toNat

end

end A123823.P3578877431799630847

/-! ## A123823.P2525405410693254486

`A275301(A063020(n)%A138292(n))`
-/

namespace A123823.P2525405410693254486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275301 (Int.tmod (A063020 n) (A138292 n)).toNat

end

end A123823.P2525405410693254486

/-! ## A123823.P11604144299131181164

`A102705(A082103(n+1))-A057202(n+1)`
-/

namespace A123823.P11604144299131181164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A082103 (n + 1)).toNat - A057202 (n + 1)

end

end A123823.P11604144299131181164

/-! ## A123823.P10976041975327811640

`A355880(A081848(n+1))+1-n-A001489(A087401(n)+n)`
-/

namespace A123823.P10976041975327811640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355880 (A081848 (n + 1)).toNat + (1 - (n : ℤ) - A001489 (A087401 n + (n : ℤ)).toNat)

end

end A123823.P10976041975327811640

/-!
# A123825: Number of ways, counted up to symmetry, to build a contiguous building with n LEGO blocks of size 2 X 3 which is symmetric after a rotation by 180 degrees.

The programs for A123825, there is no canonical definition to state claims against.
-/

/-! ## A123825.P4798072855484452592

`A209297(xor(3, A172165(n+1)))`
-/

namespace A123825.P4798072855484452592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209297 (Int.xor 3 (A172165 (n + 1))).toNat

end

end A123825.P4798072855484452592

/-!
# A123827: Number of ways to build a contiguous building with n LEGO blocks of size 2 X 3 on top of a fixed block of the same size so that the building is symmetric after a rotation by 180 degrees.

The programs for A123827, there is no canonical definition to state claims against.
-/

/-! ## A123827.P7739902283056920791

`A007093(∑[A004107(round(n/2)+1)])`
-/

namespace A123827.P7739902283056920791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004107 (SequenceMachineLib.roundAway ((n : ℚ) / 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A123827.P7739902283056920791

/-!
# A123833: Number of ways, counted up to symmetry, to build a contiguous building with n LEGO blocks of size 3 X 3 which is symmetric after a rotation by 180 degrees.

The programs for A123833, there is no canonical definition to state claims against.
-/

/-! ## A123833.P10730625427250865222

`A348850(A281992(n+2))`
-/

namespace A123833.P10730625427250865222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348850 (A281992 (n + 2)).toNat

end

end A123833.P10730625427250865222

/-!
# A123836: Number of ways to build a contiguous building with n LEGO blocks of size 3 X 3 on top of a fixed block of the same size so that the building is symmetric after a rotation by 180 degrees.

The programs for A123836, there is no canonical definition to state claims against.
-/

/-! ## A123836.P6416537124514904487

`A094536(n+1)+A004525(A123827(n+1))`
-/

namespace A123836.P6416537124514904487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094536 (n + 1) + A004525 (A123827 (n + 1)).toNat

end

end A123836.P6416537124514904487

/-!
# A123839: Number of ways, counted up to symmetry, to build a contiguous building with n LEGO blocks of size 4 X 4 which is symmetric after a rotation by 180 degrees.

The programs for A123839, there is no canonical definition to state claims against.
-/

/-! ## A123839.P14782990716567720133

`or(1, A176241(A100441(n+1)))`
-/

namespace A123839.P14782990716567720133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A176241 (A100441 (n + 1)).toNat)

end

end A123839.P14782990716567720133

/-!
# A123843: Number of ways to build a contiguous building with n LEGO blocks of size 4 X 4 on top of a fixed block of the same size so that the building is symmetric after a rotation by 90 degrees.

The programs for A123843, there is no canonical definition to state claims against.
-/

/-! ## A123843.P297702195150508322

`A291179(A123840(n+1))+A123805(A001511(n+1))`
-/

namespace A123843.P297702195150508322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291179 (A123840 (n + 1)).toNat + A123805 (A001511 (n + 1)).toNat

end

end A123843.P297702195150508322

/-!
# A123850: Triangle read by rows: T(n,k) = orientable embedding number gamma_k for bouquet B_n, n >= 0, 0 <= k <= [n/2].

The programs for A123850, there is no canonical definition to state claims against.
-/

/-! ## A123850.P3185527447647530626

`A035309(n)*A173557(A248769(n+1))`
-/

namespace A123850.P3185527447647530626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035309 n * A173557 (A248769 (n + 1)).toNat

end

end A123850.P3185527447647530626

/-! ## A123850.P9581066418549649617

`∏{e}[A082678(n+1), A014486(#)]`
-/

namespace A123850.P9581066418549649617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014486 (Nat.factorization (f1 n).natAbs p)

end

end A123850.P9581066418549649617

/-! ## A123850.P5654799891181450187

`A002260(A355720(n))*A353851(n)`
-/

namespace A123850.P5654799891181450187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A355720 n).toNat * A353851 n

end

end A123850.P5654799891181450187

/-!
# A123851: A cubic recurrence: a(0) = 1, a(n) = n*a(n-1)^3 for n >= 1.

The programs for A123851, the canonical program `A123851.P600451430497544359` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123851 has offset 0).

The definition of A123851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)^3` (program `A123851.P600451430497544359`, by `A123851.P600451430497544359.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123851.P600451430497544359

`n*a(n-1)^3` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A123851

/-- `n*a(n-1)^3` -/
def P600451430497544359.Spec : Prop :=
  ∀ n, (P600451430497544359.a n : ℤ) = A123851 n

theorem P600451430497544359.correct : P600451430497544359.Spec := by
  intro n
  simp only [A123851]

end A123851

/-! ## A123851.P13738331122487727182

`n*root(a(n-1), 1/3)` with `a(0)=1`
-/

namespace A123851.P13738331122487727182
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℝ) * a (n - 1) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A123851.P13738331122487727182

namespace A123851

/-- `n*root(a(n-1), 1/3)` -/
def P13738331122487727182.Spec : Prop :=
  ∀ n, P13738331122487727182.a n = (A123851 n : ℝ)

end A123851

/-! ## A123851.P5189303045325074897

`n*a(n-1)*a(n-1)²` with `a(0)=1`
-/

namespace A123851.P5189303045325074897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * a (n - 1) * a (n - 1) ^ 2

end

end A123851.P5189303045325074897

namespace A123851

/-- `n*a(n-1)*a(n-1)²` -/
def P5189303045325074897.Spec : Prop :=
  ∀ n, (P5189303045325074897.a n : ℤ) = A123851 n

end A123851

/-!
# A123855: a(n) = Sum_{j=1..n} Sum_{i=1..n} prime(i)^j.

The programs for A123855, there is no canonical definition to state claims against.
-/

/-! ## A123855.P17958742368812885402

`∑{d}[6^n, A297165(#)]`
-/

namespace A123855.P17958742368812885402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297165 d

end

end A123855.P17958742368812885402

/-!
# A123856: Primes p that divide A123855(p-1).

The programs for A123856, there is no canonical definition to state claims against.
-/

/-! ## A123856.P14479055442184064927

`p?[record[n%A132949(n+1)]+1]`
-/

namespace A123856.P14479055442184064927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A132949 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123856.P14479055442184064927

/-! ## A123856.P7833835980229196575

`record[A006093(n+1)%A307805(n+1)+1]`
-/

namespace A123856.P7833835980229196575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1)) (A307805 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123856.P7833835980229196575

/-! ## A123856.P16165966760217477463

`record[A014963((n-1)%A132949(n+1)+2)]`
-/

namespace A123856.P16165966760217477463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.tmod ((n : ℤ) - 1) (A132949 (n + 1)) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123856.P16165966760217477463

/-! ## A123856.P14279120216994339713

`record[eq[2, A000005(n+1)]%A307805(n+1)+1]`
-/

namespace A123856.P14279120216994339713
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) (A307805 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123856.P14279120216994339713

/-! ## A123856.P1149297084932131014

`A034694(record[A006093(n+1)%A307805(n+1)])`
-/

namespace A123856.P1149297084932131014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1)) (A307805 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A123856.P1149297084932131014

/-! ## A123856.P8741523483281654292

`A000040(lt[A000040(n+1)-2, A307805(n+1)]+1)`
-/

namespace A123856.P8741523483281654292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A123856.P8741523483281654292

/-!
# A123857: Composite numbers m that divide A123855(m-1) = Sum_{i=1..m-1} Sum_{j=1..m-1} prime(i)^j.

The programs for A123857, there is no canonical definition to state claims against.
-/

/-! ## A123857.P11970690041089322752

`∪[2^(n+2), A124238(n+1)]`
-/

namespace A123857.P11970690041089322752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A123857.P11970690041089322752

/-! ## A123857.P321952552127669775

`record[A002260(a(n-2)+2^(n-2))]` with `a(0)=4, a(1)=1, a(2)=1`
-/

namespace A123857.P321952552127669775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 1, 1] fun n f1 =>
  A002260 (SequenceMachineLib.roundAway ((f1 (n - 2) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123857.P321952552127669775

/-! ## A123857.P11040770176588490221

`A129721(A340585(n+1))`
-/

namespace A123857.P11040770176588490221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129721 (A340585 (n + 1)).toNat

end

end A123857.P11040770176588490221

/-!
# A123858: Expansion of q^(-1/3) * eta(q^2)^2 * eta(q^5)/eta(q) in powers of q.

The programs for A123858, there is no canonical definition to state claims against.
-/

/-! ## A123858.P10137822601769073672

`A081729(3*n)*A117886(2*n)`
-/

namespace A123858.P10137822601769073672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (3 * n) * A117886 (2 * n)

end

end A123858.P10137822601769073672

/-! ## A123858.P13697764546558119988

`A034947(2*n+1)*A117886(2*n)`
-/

namespace A123858.P13697764546558119988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A117886 (2 * n)

end

end A123858.P13697764546558119988

/-! ## A123858.P11071199892313968802

`A117886(2*n)/A034947(A005408(n))`
-/

namespace A123858.P11071199892313968802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117886 (2 * n) : ℚ) / (A034947 (A005408 n).toNat : ℚ)

end

end A123858.P11071199892313968802

/-! ## A123858.P13209943472108533549

`A008683(A007814(n+1)+1)*A117886(2*n)`
-/

namespace A123858.P13209943472108533549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007814 (n + 1) + 1).toNat * A117886 (2 * n)

end

end A123858.P13209943472108533549

/-! ## A123858.P2928409115515960770

`A117886(A007814(n+1))*A117886(A005843(n))`
-/

namespace A123858.P2928409115515960770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117886 (A007814 (n + 1)).toNat * A117886 (A005843 n).toNat

end

end A123858.P2928409115515960770

/-! ## A123858.P12080290105621786698

`-A117886(5*n+1)`
-/

namespace A123858.P12080290105621786698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A117886 (5 * n + 1)

end

end A123858.P12080290105621786698

/-!
# A123860: a(n) = ceiling( (7 + sqrt(49+24*n))/2 ).

The programs for A123860, there is no canonical definition to state claims against.
-/

/-! ## A123860.P18123287790340121679

`ceil((7+sqrt(49+24*(n-2)))/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123860.P18123287790340121679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(7 + Real.sqrt (49 + 24 * ((n : ℤ) - 2) : ℝ)) / 2⌉

end

end A123860.P18123287790340121679

/-! ## A123860.P8278458168886936060

`A020705(round(sqrt(6*n)))`
-/

namespace A123860.P8278458168886936060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (SequenceMachineLib.roundAway (Real.sqrt (6 * n : ℝ))).toNat

end

end A123860.P8278458168886936060

/-! ## A123860.P9549933821455969485

`A000703(comp[∑[3*n+2]])`
-/

namespace A123860.P9549933821455969485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A123860.P9549933821455969485

/-! ## A123860.P14218785073378660737

`A123578(3*n)+4`
-/

namespace A123860.P14218785073378660737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (3 * n) + 4

end

end A123860.P14218785073378660737

/-! ## A123860.P7095904285780175591

`A350361(A080036(3*n))`
-/

namespace A123860.P7095904285780175591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350361 (A080036 (3 * n)).toNat

end

end A123860.P7095904285780175591

/-! ## A123860.P1477556322896797560

`A350361(A007401(2*n+1+n))`
-/

namespace A123860.P1477556322896797560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350361 (A007401 (2 * n + 1 + n)).toNat

end

end A123860.P1477556322896797560

/-! ## A123860.P15954265375184026346

`A000194(6*n)+4`
-/

namespace A123860.P15954265375184026346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (6 * n) + 4

end

end A123860.P15954265375184026346

/-! ## A123860.P14460487045161505172

`round(log2(A224701(3*n+1)))`
-/

namespace A123860.P14460487045161505172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A224701 (3 * n + 1) : ℝ))

end

end A123860.P14460487045161505172

/-!
# A123863: Expansion of (c(q^3) - c(q^6) - 2*c(q^12)) / 3 in powers of q where c(q) is a cubic AGM theta function.

The programs for A123863, the canonical program `A123863.P1353437602911175689` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123863 has offset 1).

The definition of A123863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123863.P5764700437627212977

`(n+1)²%3*A137608(n+1)`
-/

namespace A123863.P5764700437627212977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 % 3 : ℕ) : ℤ) * A137608 (n + 1)

end

end A123863.P5764700437627212977

namespace A123863

/-- `(n+1)²%3*A137608(n+1)` -/
def P5764700437627212977.Spec : Prop :=
  ∀ n, P5764700437627212977.a n = A123863 (n + 1)

end A123863

/-! ## A123863.P14987759992669624674

`A010892(n)*A093829(n+1)`
-/

namespace A123863.P14987759992669624674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A093829 (n + 1)

end

end A123863.P14987759992669624674

namespace A123863

/-- `A010892(n)*A093829(n+1)` -/
def P14987759992669624674.Spec : Prop :=
  ∀ n, P14987759992669624674.a n = A123863 (n + 1)

end A123863

/-! ## A123863.P1353437602911175689

`A010892(n)*A112848(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A123863

/-- `A010892(n)*A112848(n+1)` -/
def P1353437602911175689.Spec : Prop :=
  ∀ n, P1353437602911175689.a n = A123863 (n + 1)

theorem P1353437602911175689.correct : P1353437602911175689.Spec := by
  intro n
  simp only [A123863, Nat.add_sub_cancel]

end A123863

/-! ## A123863.P10021751876454124216

`A033999(n)*A113448(n+1)`
-/

namespace A123863.P10021751876454124216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A113448 (n + 1)

end

end A123863.P10021751876454124216

namespace A123863

/-- `A033999(n)*A113448(n+1)` -/
def P10021751876454124216.Spec : Prop :=
  ∀ n, P10021751876454124216.a n = A123863 (n + 1)

end A123863

/-! ## A123863.P11203591581581804844

`A049347(n)*A113447(n+1)`
-/

namespace A123863.P11203591581581804844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A113447 (n + 1)

end

end A123863.P11203591581581804844

namespace A123863

/-- `A049347(n)*A113447(n+1)` -/
def P11203591581581804844.Spec : Prop :=
  ∀ n, P11203591581581804844.a n = A123863 (n + 1)

end A123863

/-! ## A123863.P15629619978895405622

`A113448(n+1)*A135694(n)`
-/

namespace A123863.P15629619978895405622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113448 (n + 1) * A135694 n

end

end A123863.P15629619978895405622

namespace A123863

/-- `A113448(n+1)*A135694(n)` -/
def P15629619978895405622.Spec : Prop :=
  ∀ n, P15629619978895405622.a n = A123863 (n + 1)

end A123863

/-! ## A123863.P15621584546711546758

`A010892(n)*A261884(n+1)`
-/

namespace A123863.P15621584546711546758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A261884 (n + 1)

end

end A123863.P15621584546711546758

namespace A123863

/-- `A010892(n)*A261884(n+1)` -/
def P15621584546711546758.Spec : Prop :=
  ∀ n, P15621584546711546758.a n = A123863 (n + 1)

end A123863

/-! ## A123863.P876702162372515436

`A115235(n+1)/A057079(n)`
-/

namespace A123863.P876702162372515436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115235 (n + 1) : ℚ) / (A057079 n : ℚ)

end

end A123863.P876702162372515436

namespace A123863

/-- `A115235(n+1)/A057079(n)` -/
def P876702162372515436.Spec : Prop :=
  ∀ n, P876702162372515436.a n = (A123863 (n + 1) : ℚ)

end A123863

/-! ## A123863.P17505123663987340271

`A115235(n+1)/A132954(n)`
-/

namespace A123863.P17505123663987340271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115235 (n + 1) : ℚ) / (A132954 n : ℚ)

end

end A123863.P17505123663987340271

namespace A123863

/-- `A115235(n+1)/A132954(n)` -/
def P17505123663987340271.Spec : Prop :=
  ∀ n, P17505123663987340271.a n = (A123863 (n + 1) : ℚ)

end A123863

/-! ## A123863.P7457824030172420864

`A099544(n+1)*A137608(n+1)`
-/

namespace A123863.P7457824030172420864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099544 (n + 1) * A137608 (n + 1)

end

end A123863.P7457824030172420864

namespace A123863

/-- `A099544(n+1)*A137608(n+1)` -/
def P7457824030172420864.Spec : Prop :=
  ∀ n, P7457824030172420864.a n = A123863 (n + 1)

end A123863

/-! ## A123863.P13085622669458129367

`(1-A080425(n))*A113447(n+1)`
-/

namespace A123863.P13085622669458129367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A080425 n) * A113447 (n + 1)

end

end A123863.P13085622669458129367

namespace A123863

/-- `(1-A080425(n))*A113447(n+1)` -/
def P13085622669458129367.Spec : Prop :=
  ∀ n, P13085622669458129367.a n = A123863 (n + 1)

end A123863

/-! ## A123863.P4999337168856130205

`A115235(n+1)/A105931(n+1)`
-/

namespace A123863.P4999337168856130205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115235 (n + 1) : ℚ) / (A105931 (n + 1) : ℚ)

end

end A123863.P4999337168856130205

namespace A123863

/-- `A115235(n+1)/A105931(n+1)` -/
def P4999337168856130205.Spec : Prop :=
  ∀ n, P4999337168856130205.a n = (A123863 (n + 1) : ℚ)

end A123863

/-! ## A123863.P2392959364550124808

`A359378(n+1)²*A137608(n+1)`
-/

namespace A123863.P2392959364550124808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359378 (n + 1) ^ 2 * A137608 (n + 1)

end

end A123863.P2392959364550124808

namespace A123863

/-- `A359378(n+1)²*A137608(n+1)` -/
def P2392959364550124808.Spec : Prop :=
  ∀ n, P2392959364550124808.a n = A123863 (n + 1)

end A123863

/-! ## A123863.P11064674281759772617

`∑{d}[n+1, A019590(#)*A115235((n+1)/#)]`
-/

namespace A123863.P11064674281759772617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A115235 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A123863.P11064674281759772617

namespace A123863

/-- `∑{d}[n+1, A019590(#)*A115235((n+1)/#)]` -/
def P11064674281759772617.Spec : Prop :=
  ∀ n, P11064674281759772617.a n = A123863 (n + 1)

end A123863

/-! ## A123863.P3760848991826737342

`A093829(n+1)*A128834(n+1)`
-/

namespace A123863.P3760848991826737342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (n + 1) * A128834 (n + 1)

end

end A123863.P3760848991826737342

namespace A123863

/-- `A093829(n+1)*A128834(n+1)` -/
def P3760848991826737342.Spec : Prop :=
  ∀ n, P3760848991826737342.a n = A123863 (n + 1)

end A123863

/-! ## A123863.P4883250738168807786

`(A131720(n+1)-A120325(n))*A035178(n+1)`
-/

namespace A123863.P4883250738168807786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131720 (n + 1) - A120325 n) * A035178 (n + 1)

end

end A123863.P4883250738168807786

namespace A123863

/-- `(A131720(n+1)-A120325(n))*A035178(n+1)` -/
def P4883250738168807786.Spec : Prop :=
  ∀ n, P4883250738168807786.a n = A123863 (n + 1)

end A123863

/-! ## A123863.P11008603369128221812

`(A134667(n+1)-A120325(n+1))*A035178(n+1)`
-/

namespace A123863.P11008603369128221812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134667 (n + 1) - A120325 (n + 1)) * A035178 (n + 1)

end

end A123863.P11008603369128221812

namespace A123863

/-- `(A134667(n+1)-A120325(n+1))*A035178(n+1)` -/
def P11008603369128221812.Spec : Prop :=
  ∀ n, P11008603369128221812.a n = A123863 (n + 1)

end A123863

/-! ## A123863.P1397896701782496566

`A010892(n)*A113447(2*(n+1))`
-/

namespace A123863.P1397896701782496566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A113447 (2 * (n + 1))

end

end A123863.P1397896701782496566

namespace A123863

/-- `A010892(n)*A113447(2*(n+1))` -/
def P1397896701782496566.Spec : Prop :=
  ∀ n, P1397896701782496566.a n = A123863 (n + 1)

end A123863

/-! ## A123863.P17369305879172722269

`A113447(2*(n+1))*A128834(n+1)`
-/

namespace A123863.P17369305879172722269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 (2 * (n + 1)) * A128834 (n + 1)

end

end A123863.P17369305879172722269

namespace A123863

/-- `A113447(2*(n+1))*A128834(n+1)` -/
def P17369305879172722269.Spec : Prop :=
  ∀ n, P17369305879172722269.a n = A123863 (n + 1)

end A123863

/-! ## A123863.P2558489080238646110

`A131719(2*n+1)*A137608(n+1)`
-/

namespace A123863.P2558489080238646110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131719 (2 * n + 1) * A137608 (n + 1)

end

end A123863.P2558489080238646110

namespace A123863

/-- `A131719(2*n+1)*A137608(n+1)` -/
def P2558489080238646110.Spec : Prop :=
  ∀ n, P2558489080238646110.a n = A123863 (n + 1)

end A123863

/-!
# A123864: Expansion of (eta(q^3) * eta(q^5))^2 / (eta(q) * eta(q^15)) in powers of q.

The programs for A123864, the canonical program `A123864.P5158556978074612341` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123864 has offset 0).

The definition of A123864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123864.P5158556978074612341

`A035175(round(sqrt(n²+1)))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A123864

/-- `A035175(round(sqrt(n²+1)))` -/
def P5158556978074612341.Spec : Prop :=
  ∀ n, P5158556978074612341.a n = A123864 n

theorem P5158556978074612341.correct : P5158556978074612341.Spec := by
  intro n
  simp only [A123864]

end A123864

/-! ## A123864.P11559439178223949655

`(A028625(A008585(n))+A028625(n))/2`
-/

namespace A123864.P11559439178223949655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028625 (A008585 n).toNat + A028625 n : ℚ) / 2

end

end A123864.P11559439178223949655

namespace A123864

/-- `(A028625(A008585(n))+A028625(n))/2` -/
def P11559439178223949655.Spec : Prop :=
  ∀ n, P11559439178223949655.a n = (A123864 n : ℚ)

end A123864

/-! ## A123864.P12196168291953454958

`(A028956(A008585(n))+A028956(n))/2`
-/

namespace A123864.P12196168291953454958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028956 (A008585 n).toNat + A028956 n : ℚ) / 2

end

end A123864.P12196168291953454958

namespace A123864

/-- `(A028956(A008585(n))+A028956(n))/2` -/
def P12196168291953454958.Spec : Prop :=
  ∀ n, P12196168291953454958.a n = (A123864 n : ℚ)

end A123864

/-! ## A123864.P18425996704706717415

`(A028956(n)+A028956(A130724(n)))/2`
-/

namespace A123864.P18425996704706717415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028956 n + A028956 (A130724 n).toNat : ℚ) / 2

end

end A123864.P18425996704706717415

namespace A123864

/-- `(A028956(n)+A028956(A130724(n)))/2` -/
def P18425996704706717415.Spec : Prop :=
  ∀ n, P18425996704706717415.a n = (A123864 n : ℚ)

end A123864

/-! ## A123864.P10524485491701017875

`A260649(A028310(4*n))`
-/

namespace A123864.P10524485491701017875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260649 (A028310 (4 * n)).toNat

end

end A123864.P10524485491701017875

namespace A123864

/-- `A260649(A028310(4*n))` -/
def P10524485491701017875.Spec : Prop :=
  ∀ n, P10524485491701017875.a n = A123864 n

end A123864

/-! ## A123864.P5732239045857805045

`A260649(A008486(n)+n)`
-/

namespace A123864.P5732239045857805045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260649 (A008486 n + (n : ℤ)).toNat

end

end A123864.P5732239045857805045

namespace A123864

/-- `A260649(A008486(n)+n)` -/
def P5732239045857805045.Spec : Prop :=
  ∀ n, P5732239045857805045.a n = A123864 n

end A123864

/-! ## A123864.P1036927961346966757

`A260649(A008706(n)-n)`
-/

namespace A123864.P1036927961346966757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260649 (A008706 n - (n : ℤ)).toNat

end

end A123864.P1036927961346966757

namespace A123864

/-- `A260649(A008706(n)-n)` -/
def P1036927961346966757.Spec : Prop :=
  ∀ n, P1036927961346966757.a n = A123864 n

end A123864

/-! ## A123864.P16032652402103752796

`A122855(4*n)`
-/

namespace A123864.P16032652402103752796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122855 (4 * n)

end

end A123864.P16032652402103752796

namespace A123864

/-- `A122855(4*n)` -/
def P16032652402103752796.Spec : Prop :=
  ∀ n, P16032652402103752796.a n = A123864 n

end A123864

/-! ## A123864.P684709128211457176

`A260649(A008486(4*n))`
-/

namespace A123864.P684709128211457176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260649 (A008486 (4 * n)).toNat

end

end A123864.P684709128211457176

namespace A123864

/-- `A260649(A008486(4*n))` -/
def P684709128211457176.Spec : Prop :=
  ∀ n, P684709128211457176.a n = A123864 n

end A123864

/-! ## A123864.P5259036204079320486

`A260649(A008706(4*n))`
-/

namespace A123864.P5259036204079320486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260649 (A008706 (4 * n)).toNat

end

end A123864.P5259036204079320486

namespace A123864

/-- `A260649(A008706(4*n))` -/
def P5259036204079320486.Spec : Prop :=
  ∀ n, P5259036204079320486.a n = A123864 n

end A123864

/-!
# A123865: a(n) = n^4 - 1.

The programs for A123865, the canonical program `A123865.P509384507853173445` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123865 has offset 1).

The definition of A123865 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^4-1` (program `A123865.P509384507853173445`, by `A123865.P509384507853173445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123865.P509384507853173445

`(n+1)^4-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A123865

/-- `(n+1)^4-1` -/
def P509384507853173445.Spec : Prop :=
  ∀ n, P509384507853173445.a n = A123865 (n + 1)

theorem P509384507853173445.correct : P509384507853173445.Spec := by
  intro n
  simp only [A123865, Nat.add_sub_cancel]

end A123865

/-! ## A123865.P8028010965890009106

`ogf((15x+5x^2+5x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A123865.P8028010965890009106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 15, 5, 5, -1] [1, -5, 10, -10, 5, -1] n

end

end A123865.P8028010965890009106

namespace A123865

/-- `ogf((15x+5x^2+5x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P8028010965890009106.Spec : Prop :=
  ∀ n, P8028010965890009106.a n = A123865 (n + 1)

end A123865

/-! ## A123865.P16810465880812863563

`A005563(A005563(n))`
-/

namespace A123865.P16810465880812863563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A005563 n).toNat

end

end A123865.P16810465880812863563

namespace A123865

/-- `A005563(A005563(n))` -/
def P16810465880812863563.Spec : Prop :=
  ∀ n, P16810465880812863563.a n = A123865 (n + 1)

end A123865

/-! ## A123865.P5237310620572374788

`record[(1-n)^4-1]`
-/

namespace A123865.P5237310620572374788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 4 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123865.P5237310620572374788

namespace A123865

/-- `record[(1-n)^4-1]` -/
def P5237310620572374788.Spec : Prop :=
  ∀ n, P5237310620572374788.a n = A123865 (n + 1)

end A123865

/-! ## A123865.P10106643941806185642

`floor(cot((n+1)^-4))`
-/

namespace A123865.P10106643941806185642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot ((n + 1 : ℚ) ^ (-4 : ℤ) : ℝ)⌋

end

end A123865.P10106643941806185642

namespace A123865

/-- `floor(cot((n+1)^-4))` -/
def P10106643941806185642.Spec : Prop :=
  ∀ n, P10106643941806185642.a n = A123865 (n + 1)

end A123865

/-! ## A123865.P15996386701598878725

`xor(-1, -(n+1)^4)`
-/

namespace A123865.P15996386701598878725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-((n + 1) ^ 4 : ℤ))

end

end A123865.P15996386701598878725

namespace A123865

/-- `xor(-1, -(n+1)^4)` -/
def P15996386701598878725.Spec : Prop :=
  ∀ n, P15996386701598878725.a n = A123865 (n + 1)

end A123865

/-! ## A123865.P17293103884905433532

`lcm(n, 1-(n+1)²²)`
-/

namespace A123865.P17293103884905433532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - (((n + 1) ^ 2) ^ 2 : ℤ))

end

end A123865.P17293103884905433532

namespace A123865

/-- `lcm(n, 1-(n+1)²²)` -/
def P17293103884905433532.Spec : Prop :=
  ∀ n, (P17293103884905433532.a n : ℤ) = A123865 (n + 1)

end A123865

/-! ## A123865.P5082937904090663670

`abs(1-record[(1-n)²²])`
-/

namespace A123865.P5082937904090663670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A123865.P5082937904090663670

namespace A123865

/-- `abs(1-record[(1-n)²²])` -/
def P5082937904090663670.Spec : Prop :=
  ∀ n, P5082937904090663670.a n = A123865 (n + 1)

end A123865

/-! ## A123865.P7692643984456132433

`floor(cot((1/(n+1))²)²)`
-/

namespace A123865.P7692643984456132433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot ((1 / (n + 1 : ℚ)) ^ 2 : ℝ) ^ 2⌋

end

end A123865.P7692643984456132433

namespace A123865

/-- `floor(cot((1/(n+1))²)²)` -/
def P7692643984456132433.Spec : Prop :=
  ∀ n, P7692643984456132433.a n = A123865 (n + 1)

end A123865

/-! ## A123865.P1993909920298470883

`round(cot((1/(n+1))²)²)`
-/

namespace A123865.P1993909920298470883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot ((1 / (n + 1 : ℚ)) ^ 2 : ℝ) ^ 2)

end

end A123865.P1993909920298470883

namespace A123865

/-- `round(cot((1/(n+1))²)²)` -/
def P1993909920298470883.Spec : Prop :=
  ∀ n, P1993909920298470883.a n = A123865 (n + 1)

end A123865

/-! ## A123865.P15789491574579357964

`cot(asin((1/(n+1))²))²`
-/

namespace A123865.P15789491574579357964
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (Real.arcsin ((1 / (n + 1 : ℚ)) ^ 2 : ℝ)) ^ 2

end

end A123865.P15789491574579357964

namespace A123865

/-- `cot(asin((1/(n+1))²))²` -/
def P15789491574579357964.Spec : Prop :=
  ∀ n, P15789491574579357964.a n = (A123865 (n + 1) : ℝ)

end A123865

/-! ## A123865.P1501317872739060551

`floor(sqrt(floor((tanh(16)+n)^8)))`
-/

namespace A123865.P1501317872739060551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ⌊(Real.tanh (16 : ℝ) + (n : ℝ)) ^ 8⌋

end

end A123865.P1501317872739060551

namespace A123865

/-- `floor(sqrt(floor((tanh(16)+n)^8)))` -/
def P1501317872739060551.Spec : Prop :=
  ∀ n, P1501317872739060551.a n = A123865 (n + 1)

end A123865

/-! ## A123865.P15199231197801961408

`ceil(record[(1-n)²²-ϕ])`
-/

namespace A123865.P15199231197801961408
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((1 - (n : ℤ)) ^ 2) ^ 2 : ℝ) - Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A123865.P15199231197801961408

namespace A123865

/-- `ceil(record[(1-n)²²-ϕ])` -/
def P15199231197801961408.Spec : Prop :=
  ∀ n, P15199231197801961408.a n = A123865 (n + 1)

end A123865

/-! ## A123865.P3837659852385155117

`abs(or(2, (n+1)²²)-3)`
-/

namespace A123865.P3837659852385155117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 2 (((n + 1) ^ 2) ^ 2) : ℤ) - 3|

end

end A123865.P3837659852385155117

namespace A123865

/-- `abs(or(2, (n+1)²²)-3)` -/
def P3837659852385155117.Spec : Prop :=
  ∀ n, P3837659852385155117.a n = A123865 (n + 1)

end A123865

/-! ## A123865.P11765967718633595819

`abs(xor(2, 3-(n+1)²²))`
-/

namespace A123865.P11765967718633595819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 2 (3 - (((n + 1) ^ 2) ^ 2 : ℤ))|

end

end A123865.P11765967718633595819

namespace A123865

/-- `abs(xor(2, 3-(n+1)²²))` -/
def P11765967718633595819.Spec : Prop :=
  ∀ n, P11765967718633595819.a n = A123865 (n + 1)

end A123865

/-! ## A123865.P13960839438884683337

`-xor(2, 3-(n+1)²²)`
-/

namespace A123865.P13960839438884683337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (3 - (((n + 1) ^ 2) ^ 2 : ℤ))

end

end A123865.P13960839438884683337

namespace A123865

/-- `-xor(2, 3-(n+1)²²)` -/
def P13960839438884683337.Spec : Prop :=
  ∀ n, P13960839438884683337.a n = A123865 (n + 1)

end A123865

/-! ## A123865.P13627638576912186750

`abs(1-C(n+1, n)²²)`
-/

namespace A123865.P13627638576912186750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((Nat.choose (n + 1) n ^ 2) ^ 2 : ℤ)|

end

end A123865.P13627638576912186750

namespace A123865

/-- `abs(1-C(n+1, n)²²)` -/
def P13627638576912186750.Spec : Prop :=
  ∀ n, P13627638576912186750.a n = A123865 (n + 1)

end A123865

/-! ## A123865.P10350647143103400894

`floor(Δ[n²²]+a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A123865.P10350647143103400894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1)

end

end A123865.P10350647143103400894

namespace A123865

/-- `floor(Δ[n²²]+a(n-1))` -/
def P10350647143103400894.Spec : Prop :=
  ∀ n, P10350647143103400894.a n = A123865 (n + 1)

theorem P10350647143103400894.correct : P10350647143103400894.Spec := by
  intro n
  induction n with
  | zero => simp [A123865, A123865.P10350647143103400894.f1, A123865.P10350647143103400894.a, A123865.P509384507853173445.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A123865, Nat.add_sub_cancel, A123865.P10350647143103400894.f1, A123865.P10350647143103400894.a, A123865.P509384507853173445.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A123865

/-! ## A123865.P4181783036516996871

`ceil((n+1)²²-atan(n+2))`
-/

namespace A123865.P4181783036516996871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n + 1) ^ 2) ^ 2 : ℝ) - Real.arctan (n + 2 : ℝ)⌉

end

end A123865.P4181783036516996871

namespace A123865

/-- `ceil((n+1)²²-atan(n+2))` -/
def P4181783036516996871.Spec : Prop :=
  ∀ n, P4181783036516996871.a n = A123865 (n + 1)

end A123865

/-! ## A123865.P3971400916820906265

`∑[Δ[n²²]-C(2, n+2)]`
-/

namespace A123865.P3971400916820906265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123865.P3971400916820906265

namespace A123865

/-- `∑[Δ[n²²]-C(2, n+2)]` -/
def P3971400916820906265.Spec : Prop :=
  ∀ n, P3971400916820906265.a n = A123865 (n + 1)

end A123865

/-!
# A123866: a(n) = n^6 - 1.

The programs for A123866, the canonical program `A123866.P11621378827014358143` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123866 has offset 1).

The definition of A123866 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^6-1` (program `A123866.P11621378827014358143`, by `A123866.P11621378827014358143.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123866.P11621378827014358143

`(n+1)^6-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A123866

/-- `(n+1)^6-1` -/
def P11621378827014358143.Spec : Prop :=
  ∀ n, P11621378827014358143.a n = A123866 (n + 1)

theorem P11621378827014358143.correct : P11621378827014358143.Spec := by
  intro n
  simp only [A123866, Nat.add_sub_cancel]

end A123866

/-! ## A123866.P10153836089745477532

`ogf((63x+287x^2+322x^3+42x^4+7x^5-x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A123866.P10153836089745477532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 63, 287, 322, 42, 7, -1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A123866.P10153836089745477532

namespace A123866

/-- `ogf((63x+287x^2+322x^3+42x^4+7x^5-x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P10153836089745477532.Spec : Prop :=
  ∀ n, P10153836089745477532.a n = A123866 (n + 1)

end A123866

/-! ## A123866.P4995205426927500919

`record[(1-n)^6-1]`
-/

namespace A123866.P4995205426927500919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 6 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123866.P4995205426927500919

namespace A123866

/-- `record[(1-n)^6-1]` -/
def P4995205426927500919.Spec : Prop :=
  ∀ n, P4995205426927500919.a n = A123866 (n + 1)

end A123866

/-! ## A123866.P2387342573706463691

`xor(-1, -(n+1)^6)`
-/

namespace A123866.P2387342573706463691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-((n + 1) ^ 6 : ℤ))

end

end A123866.P2387342573706463691

namespace A123866

/-- `xor(-1, -(n+1)^6)` -/
def P2387342573706463691.Spec : Prop :=
  ∀ n, P2387342573706463691.a n = A123866 (n + 1)

end A123866

/-! ## A123866.P8753817232473894774

`floor(cot(1/(n+1)^6))`
-/

namespace A123866.P8753817232473894774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (1 / ((n + 1) ^ 6 : ℚ) : ℝ)⌋

end

end A123866.P8753817232473894774

namespace A123866

/-- `floor(cot(1/(n+1)^6))` -/
def P8753817232473894774.Spec : Prop :=
  ∀ n, P8753817232473894774.a n = A123866 (n + 1)

end A123866

/-! ## A123866.P10323214981088859827

`floor(cot((n+1)^-3)²)`
-/

namespace A123866.P10323214981088859827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot ((n + 1 : ℚ) ^ (-3 : ℤ) : ℝ) ^ 2⌋

end

end A123866.P10323214981088859827

namespace A123866

/-- `floor(cot((n+1)^-3)²)` -/
def P10323214981088859827.Spec : Prop :=
  ∀ n, P10323214981088859827.a n = A123866 (n + 1)

end A123866

/-! ## A123866.P11479221384444238280

`round(cot((n+1)^-3)²)`
-/

namespace A123866.P11479221384444238280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot ((n + 1 : ℚ) ^ (-3 : ℤ) : ℝ) ^ 2)

end

end A123866.P11479221384444238280

namespace A123866

/-- `round(cot((n+1)^-3)²)` -/
def P11479221384444238280.Spec : Prop :=
  ∀ n, P11479221384444238280.a n = A123866 (n + 1)

end A123866

/-! ## A123866.P17455561809238775526

`cot(asin((n+1)^-3))²`
-/

namespace A123866.P17455561809238775526
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (Real.arcsin ((n + 1 : ℚ) ^ (-3 : ℤ) : ℝ)) ^ 2

end

end A123866.P17455561809238775526

namespace A123866

/-- `cot(asin((n+1)^-3))²` -/
def P17455561809238775526.Spec : Prop :=
  ∀ n, P17455561809238775526.a n = (A123866 (n + 1) : ℝ)

end A123866

/-! ## A123866.P10780227800828418004

`lcm(n, Δ[∑[n]²]²-1)`
-/

namespace A123866.P10780227800828418004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - 1)

end

end A123866.P10780227800828418004

namespace A123866

/-- `lcm(n, Δ[∑[n]²]²-1)` -/
def P10780227800828418004.Spec : Prop :=
  ∀ n, (P10780227800828418004.a n : ℤ) = A123866 (n + 1)

end A123866

/-! ## A123866.P14644286097969882664

`A053700(n+1)*n`
-/

namespace A123866.P14644286097969882664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053700 (n + 1) * (n : ℤ)

end

end A123866.P14644286097969882664

namespace A123866

/-- `A053700(n+1)*n` -/
def P14644286097969882664.Spec : Prop :=
  ∀ n, P14644286097969882664.a n = A123866 (n + 1)

theorem P14644286097969882664.correct : P14644286097969882664.Spec := by
  intro n
  simp only [A123866, Nat.add_sub_cancel, A123866.P14644286097969882664.a, A123866.P11621378827014358143.a, A053700, A053700.P8220208722035167033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123866

/-! ## A123866.P17526226443514882951

`floor(sqrt(A123868(n+1)))`
-/

namespace A123866.P17526226443514882951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A123868 (n + 1))

end

end A123866.P17526226443514882951

namespace A123866

/-- `floor(sqrt(A123868(n+1)))` -/
def P17526226443514882951.Spec : Prop :=
  ∀ n, P17526226443514882951.a n = A123866 (n + 1)

end A123866

/-! ## A123866.P16559456964010189617

`(A106318(n+1)-2)/2`
-/

namespace A123866.P16559456964010189617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106318 (n + 1) - 2 : ℚ) / 2

end

end A123866.P16559456964010189617

namespace A123866

/-- `(A106318(n+1)-2)/2` -/
def P16559456964010189617.Spec : Prop :=
  ∀ n, P16559456964010189617.a n = (A123866 (n + 1) : ℚ)

theorem P16559456964010189617.correct : P16559456964010189617.Spec := by
  intro n
  simp only [A123866, Nat.add_sub_cancel, A123866.P16559456964010189617.a, A123866.P11621378827014358143.a, A106318, A106318.P4247534376116463278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123866

/-! ## A123866.P12608865078993032412

`abs(1-A000578(n+1)²)`
-/

namespace A123866.P12608865078993032412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000578 (n + 1) ^ 2|

end

end A123866.P12608865078993032412

namespace A123866

/-- `abs(1-A000578(n+1)²)` -/
def P12608865078993032412.Spec : Prop :=
  ∀ n, P12608865078993032412.a n = A123866 (n + 1)

end A123866

/-! ## A123866.P11635153966288232551

`(A037250(n+1)+n)*(n+2)`
-/

namespace A123866.P11635153966288232551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037250 (n + 1) + (n : ℤ)) * (n + 2 : ℤ)

end

end A123866.P11635153966288232551

namespace A123866

/-- `(A037250(n+1)+n)*(n+2)` -/
def P11635153966288232551.Spec : Prop :=
  ∀ n, P11635153966288232551.a n = A123866 (n + 1)

theorem P11635153966288232551.correct : P11635153966288232551.Spec := by
  intro n
  simp only [A123866, Nat.add_sub_cancel, A123866.P11635153966288232551.a, A123866.P11621378827014358143.a, A037250, A037250.P16915158763133105816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123866

/-! ## A123866.P5568532642506174627

`(A258808(n+1)-n)/(n+1)`
-/

namespace A123866.P5568532642506174627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258808 (n + 1) - (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A123866.P5568532642506174627

namespace A123866

/-- `(A258808(n+1)-n)/(n+1)` -/
def P5568532642506174627.Spec : Prop :=
  ∀ n, P5568532642506174627.a n = (A123866 (n + 1) : ℚ)

theorem P5568532642506174627.correct : P5568532642506174627.Spec := by
  intro n
  simp only [A123866, Nat.add_sub_cancel, A123866.P5568532642506174627.a, A123866.P11621378827014358143.a, A258808, A258808.P6415706604125814936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123866

/-! ## A123866.P7384399967965339169

`(∑[∑[A255177(n)]]-(n+1))/(n+1)`
-/

namespace A123866.P7384399967965339169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255177 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ) : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A123866.P7384399967965339169

namespace A123866

/-- `(∑[∑[A255177(n)]]-(n+1))/(n+1)` -/
def P7384399967965339169.Spec : Prop :=
  ∀ n, P7384399967965339169.a n = (A123866 (n + 1) : ℚ)

end A123866

/-! ## A123866.P3693112566319683723

`abs(A000290(n+1)²*(n+1)²-1)`
-/

namespace A123866.P3693112566319683723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 (n + 1) ^ 2 * ((n + 1) ^ 2 : ℤ) - 1|

end

end A123866.P3693112566319683723

namespace A123866

/-- `abs(A000290(n+1)²*(n+1)²-1)` -/
def P3693112566319683723.Spec : Prop :=
  ∀ n, P3693112566319683723.a n = A123866 (n + 1)

end A123866

/-! ## A123866.P10584070889804902385

`A027444(n)*A069778(n+1)`
-/

namespace A123866.P10584070889804902385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 n * A069778 (n + 1)

end

end A123866.P10584070889804902385

namespace A123866

/-- `A027444(n)*A069778(n+1)` -/
def P10584070889804902385.Spec : Prop :=
  ∀ n, P10584070889804902385.a n = A123866 (n + 1)

theorem P10584070889804902385.correct : P10584070889804902385.Spec := by
  intro n
  simp only [A123866, Nat.add_sub_cancel, A123866.P10584070889804902385.a, A123866.P11621378827014358143.a, A027444, A027444.P13486811862535796769.a, A069778, A069778.P902300681639061686.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123866

/-! ## A123866.P11118575215986272634

`(A001017(n+1)-A000578(n+1))/A000578(n+1)`
-/

namespace A123866.P11118575215986272634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001017 (n + 1) - A000578 (n + 1) : ℚ) / (A000578 (n + 1) : ℚ)

end

end A123866.P11118575215986272634

namespace A123866

/-- `(A001017(n+1)-A000578(n+1))/A000578(n+1)` -/
def P11118575215986272634.Spec : Prop :=
  ∀ n, P11118575215986272634.a n = (A123866 (n + 1) : ℚ)

end A123866

/-!
# A123867: a(n) = n^10 - 1.

The programs for A123867, the canonical program `A123867.P12834477226728945745` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123867 has offset 1).

The definition of A123867 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^10-1` (program `A123867.P12834477226728945745`, by `A123867.P12834477226728945745.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123867.P12834477226728945745

`(n+1)^10-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A123867

/-- `(n+1)^10-1` -/
def P12834477226728945745.Spec : Prop :=
  ∀ n, P12834477226728945745.a n = A123867 (n + 1)

theorem P12834477226728945745.correct : P12834477226728945745.Spec := by
  intro n
  simp only [A123867, Nat.add_sub_cancel]

end A123867

/-! ## A123867.P6826522214995233616

`record[(1-n)^10-1]`
-/

namespace A123867.P6826522214995233616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 10 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123867.P6826522214995233616

namespace A123867

/-- `record[(1-n)^10-1]` -/
def P6826522214995233616.Spec : Prop :=
  ∀ n, P6826522214995233616.a n = A123867 (n + 1)

end A123867

/-! ## A123867.P1864951953533302752

`xor(-1, -(n+1)^10)`
-/

namespace A123867.P1864951953533302752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-((n + 1) ^ 10 : ℤ))

end

end A123867.P1864951953533302752

namespace A123867

/-- `xor(-1, -(n+1)^10)` -/
def P1864951953533302752.Spec : Prop :=
  ∀ n, P1864951953533302752.a n = A123867 (n + 1)

end A123867

/-! ## A123867.P14294167054978760794

`floor(cot(1/(n+1)^10))`
-/

namespace A123867.P14294167054978760794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (1 / ((n + 1) ^ 10 : ℚ) : ℝ)⌋

end

end A123867.P14294167054978760794

namespace A123867

/-- `floor(cot(1/(n+1)^10))` -/
def P14294167054978760794.Spec : Prop :=
  ∀ n, P14294167054978760794.a n = A123867 (n + 1)

end A123867

/-! ## A123867.P6172889626092506827

`round(cot((n+1)^-5)²)`
-/

namespace A123867.P6172889626092506827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot ((n + 1 : ℚ) ^ (-5 : ℤ) : ℝ) ^ 2)

end

end A123867.P6172889626092506827

namespace A123867

/-- `round(cot((n+1)^-5)²)` -/
def P6172889626092506827.Spec : Prop :=
  ∀ n, P6172889626092506827.a n = A123867 (n + 1)

end A123867

/-! ## A123867.P8751737932028723245

`cot(asin((n+1)^-5))²`
-/

namespace A123867.P8751737932028723245
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (Real.arcsin ((n + 1 : ℚ) ^ (-5 : ℤ) : ℝ)) ^ 2

end

end A123867.P8751737932028723245

namespace A123867

/-- `cot(asin((n+1)^-5))²` -/
def P8751737932028723245.Spec : Prop :=
  ∀ n, P8751737932028723245.a n = (A123867 (n + 1) : ℝ)

end A123867

/-! ## A123867.P11646496621626191604

`(A258812(n+1)-n)/(n+1)`
-/

namespace A123867.P11646496621626191604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258812 (n + 1) - (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A123867.P11646496621626191604

namespace A123867

/-- `(A258812(n+1)-n)/(n+1)` -/
def P11646496621626191604.Spec : Prop :=
  ∀ n, P11646496621626191604.a n = (A123867 (n + 1) : ℚ)

theorem P11646496621626191604.correct : P11646496621626191604.Spec := by
  intro n
  simp only [A123867, Nat.add_sub_cancel, A123867.P11646496621626191604.a, A123867.P12834477226728945745.a, A258812, A258812.P3864260496835893678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123867

/-! ## A123867.P13207384360232506584

`(A258807(n+1)+2)*A258807(n+1)`
-/

namespace A123867.P13207384360232506584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A258807 (n + 1) + 2) * A258807 (n + 1)

end

end A123867.P13207384360232506584

namespace A123867

/-- `(A258807(n+1)+2)*A258807(n+1)` -/
def P13207384360232506584.Spec : Prop :=
  ∀ n, P13207384360232506584.a n = A123867 (n + 1)

theorem P13207384360232506584.correct : P13207384360232506584.Spec := by
  intro n
  simp only [A123867, Nat.add_sub_cancel, A123867.P13207384360232506584.a, A123867.P12834477226728945745.a, A258807, A258807.P3833737994083168200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123867

/-! ## A123867.P12858613144545303334

`(A123868(n+1)-A005563(n))/(n+1)²`
-/

namespace A123867.P12858613144545303334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123868 (n + 1) - A005563 n : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A123867.P12858613144545303334

namespace A123867

/-- `(A123868(n+1)-A005563(n))/(n+1)²` -/
def P12858613144545303334.Spec : Prop :=
  ∀ n, P12858613144545303334.a n = (A123867 (n + 1) : ℚ)

theorem P12858613144545303334.correct : P12858613144545303334.Spec := by
  intro n
  simp only [A123867, Nat.add_sub_cancel, A123867.P12858613144545303334.a, A123867.P12834477226728945745.a, A005563, A005563.P13300161655551567421.a, A123868, A123868.P18082159345305852257.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123867

/-! ## A123867.P4820771467012219663

`abs(A024008(n+1))`
-/

namespace A123867.P4820771467012219663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024008 (n + 1)|

end

end A123867.P4820771467012219663

namespace A123867

/-- `abs(A024008(n+1))` -/
def P4820771467012219663.Spec : Prop :=
  ∀ n, P4820771467012219663.a n = A123867 (n + 1)

end A123867

/-! ## A123867.P9386520672656276401

`n*A103623(n+1)`
-/

namespace A123867.P9386520672656276401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A103623 (n + 1)

end

end A123867.P9386520672656276401

namespace A123867

/-- `n*A103623(n+1)` -/
def P9386520672656276401.Spec : Prop :=
  ∀ n, P9386520672656276401.a n = A123867 (n + 1)

theorem P9386520672656276401.correct : P9386520672656276401.Spec := by
  intro n
  simp only [A123867, Nat.add_sub_cancel, A123867.P9386520672656276401.a, A123867.P12834477226728945745.a, A103623, A103623.P4185738790634728714.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123867

/-! ## A123867.P544592512031389623

`Δ[∑[A000584(n)²]-n]`
-/

namespace A123867.P544592512031389623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123867.P544592512031389623

namespace A123867

/-- `Δ[∑[A000584(n)²]-n]` -/
def P544592512031389623.Spec : Prop :=
  ∀ n, P544592512031389623.a n = A123867 (n + 1)

end A123867

/-! ## A123867.P14151084456283351079

`n*(A228293(n+1)+1)`
-/

namespace A123867.P14151084456283351079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A228293 (n + 1) + 1)

end

end A123867.P14151084456283351079

namespace A123867

/-- `n*(A228293(n+1)+1)` -/
def P14151084456283351079.Spec : Prop :=
  ∀ n, P14151084456283351079.a n = A123867 (n + 1)

end A123867

/-! ## A123867.P11481074906087362694

`(n+2)*n*A059839(n+1)`
-/

namespace A123867.P11481074906087362694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((n : ℤ) * A059839 (n + 1))

end

end A123867.P11481074906087362694

namespace A123867

/-- `(n+2)*n*A059839(n+1)` -/
def P11481074906087362694.Spec : Prop :=
  ∀ n, P11481074906087362694.a n = A123867 (n + 1)

theorem P11481074906087362694.correct : P11481074906087362694.Spec := by
  intro n
  simp only [A123867, Nat.add_sub_cancel, A123867.P11481074906087362694.a, A123867.P12834477226728945745.a, A059839, A059839.P16029782246819662926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123867

/-! ## A123867.P3535002737273543328

`n/(n+1)*A228294(n+1)`
-/

namespace A123867.P3535002737273543328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * (A228294 (n + 1) : ℚ)

end

end A123867.P3535002737273543328

namespace A123867

/-- `n/(n+1)*A228294(n+1)` -/
def P3535002737273543328.Spec : Prop :=
  ∀ n, P3535002737273543328.a n = (A123867 (n + 1) : ℚ)

end A123867

/-! ## A123867.P12862213967728132258

`(A008456(n+1)-(n+1)²)/(n+1)²`
-/

namespace A123867.P12862213967728132258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008456 (n + 1) - ((n + 1) ^ 2 : ℤ) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A123867.P12862213967728132258

namespace A123867

/-- `(A008456(n+1)-(n+1)²)/(n+1)²` -/
def P12862213967728132258.Spec : Prop :=
  ∀ n, P12862213967728132258.a n = (A123867 (n + 1) : ℚ)

end A123867

/-! ## A123867.P10581398171354960305

`(A024003(n+1)-2)*A024003(n+1)`
-/

namespace A123867.P10581398171354960305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024003 (n + 1) - 2) * A024003 (n + 1)

end

end A123867.P10581398171354960305

namespace A123867

/-- `(A024003(n+1)-2)*A024003(n+1)` -/
def P10581398171354960305.Spec : Prop :=
  ∀ n, P10581398171354960305.a n = A123867 (n + 1)

theorem P10581398171354960305.correct : P10581398171354960305.Spec := by
  intro n
  simp only [A123867, Nat.add_sub_cancel, A123867.P10581398171354960305.a, A123867.P12834477226728945745.a, A024003, A024003.P9184774219160180946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123867

/-! ## A123867.P5173963553818115570

`n*(A102909(n+1)+A001017(n+1))`
-/

namespace A123867.P5173963553818115570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A102909 (n + 1) + A001017 (n + 1))

end

end A123867.P5173963553818115570

namespace A123867

/-- `n*(A102909(n+1)+A001017(n+1))` -/
def P5173963553818115570.Spec : Prop :=
  ∀ n, P5173963553818115570.a n = A123867 (n + 1)

end A123867

/-! ## A123867.P17468974487971337822

`(A258812(n+1)-A008455(n+1))*A024008(n+1)`
-/

namespace A123867.P17468974487971337822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A258812 (n + 1) - A008455 (n + 1)) * A024008 (n + 1)

end

end A123867.P17468974487971337822

namespace A123867

/-- `(A258812(n+1)-A008455(n+1))*A024008(n+1)` -/
def P17468974487971337822.Spec : Prop :=
  ∀ n, P17468974487971337822.a n = A123867 (n + 1)

theorem P17468974487971337822.correct : P17468974487971337822.Spec := by
  intro n
  simp only [A123867, Nat.add_sub_cancel, A123867.P17468974487971337822.a, A123867.P12834477226728945745.a, A008455, A008455.P9534885858269672633.a, A024008, A024008.P2340546623145863810.a, A258812, A258812.P3864260496835893678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123867

/-! ## A123867.P1318309139459283823

`(A010801(n+1)-A000578(n+1))/A000578(n+1)`
-/

namespace A123867.P1318309139459283823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010801 (n + 1) - A000578 (n + 1) : ℚ) / (A000578 (n + 1) : ℚ)

end

end A123867.P1318309139459283823

namespace A123867

/-- `(A010801(n+1)-A000578(n+1))/A000578(n+1)` -/
def P1318309139459283823.Spec : Prop :=
  ∀ n, P1318309139459283823.a n = (A123867 (n + 1) : ℚ)

end A123867

/-!
# A123868: a(n) = n^12 - 1.

The programs for A123868, the canonical program `A123868.P18082159345305852257` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123868 has offset 1).

The definition of A123868 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^12-1` (program `A123868.P18082159345305852257`, by `A123868.P18082159345305852257.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123868.P18082159345305852257

`(n+1)^12-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A123868

/-- `(n+1)^12-1` -/
def P18082159345305852257.Spec : Prop :=
  ∀ n, P18082159345305852257.a n = A123868 (n + 1)

theorem P18082159345305852257.correct : P18082159345305852257.Spec := by
  intro n
  simp only [A123868, Nat.add_sub_cancel]

end A123868

/-! ## A123868.P10115774048203120825

`record[(1-n)^12-1]`
-/

namespace A123868.P10115774048203120825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 12 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123868.P10115774048203120825

namespace A123868

/-- `record[(1-n)^12-1]` -/
def P10115774048203120825.Spec : Prop :=
  ∀ n, P10115774048203120825.a n = A123868 (n + 1)

end A123868

/-! ## A123868.P3790846195401455398

`floor(cot(((n+1)^-6)²))`
-/

namespace A123868.P3790846195401455398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (((n + 1 : ℚ) ^ (-6 : ℤ)) ^ 2 : ℝ)⌋

end

end A123868.P3790846195401455398

namespace A123868

/-- `floor(cot(((n+1)^-6)²))` -/
def P3790846195401455398.Spec : Prop :=
  ∀ n, P3790846195401455398.a n = A123868 (n + 1)

end A123868

/-! ## A123868.P6612729567426321104

`round(cot((n+1)^-6)²)`
-/

namespace A123868.P6612729567426321104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot ((n + 1 : ℚ) ^ (-6 : ℤ) : ℝ) ^ 2)

end

end A123868.P6612729567426321104

namespace A123868

/-- `round(cot((n+1)^-6)²)` -/
def P6612729567426321104.Spec : Prop :=
  ∀ n, P6612729567426321104.a n = A123868 (n + 1)

end A123868

/-! ## A123868.P5751267088089110238

`cot(asin((n+1)^-6))²`
-/

namespace A123868.P5751267088089110238
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (Real.arcsin ((n + 1 : ℚ) ^ (-6 : ℤ) : ℝ)) ^ 2

end

end A123868.P5751267088089110238

namespace A123868

/-- `cot(asin((n+1)^-6))²` -/
def P5751267088089110238.Spec : Prop :=
  ∀ n, P5751267088089110238.a n = (A123868 (n + 1) : ℝ)

end A123868

/-! ## A123868.P16535968332800158348

`(A123866(n+1)+2)*A123866(n+1)`
-/

namespace A123868.P16535968332800158348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123866 (n + 1) + 2) * A123866 (n + 1)

end

end A123868.P16535968332800158348

namespace A123868

/-- `(A123866(n+1)+2)*A123866(n+1)` -/
def P16535968332800158348.Spec : Prop :=
  ∀ n, P16535968332800158348.a n = A123868 (n + 1)

theorem P16535968332800158348.correct : P16535968332800158348.Spec := by
  intro n
  simp only [A123868, Nat.add_sub_cancel, A123868.P16535968332800158348.a, A123868.P18082159345305852257.a, A123866, A123866.P11621378827014358143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123868

/-! ## A123868.P12705362721840568585

`abs(A024010(n+1))`
-/

namespace A123868.P12705362721840568585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024010 (n + 1)|

end

end A123868.P12705362721840568585

namespace A123868

/-- `abs(A024010(n+1))` -/
def P12705362721840568585.Spec : Prop :=
  ∀ n, P12705362721840568585.a n = A123868 (n + 1)

end A123868

/-! ## A123868.P5197392125264550513

`Δ[A123094(n)-n]`
-/

namespace A123868.P5197392125264550513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123094 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123868.P5197392125264550513

namespace A123868

/-- `Δ[A123094(n)-n]` -/
def P5197392125264550513.Spec : Prop :=
  ∀ n, P5197392125264550513.a n = A123868 (n + 1)

end A123868

/-! ## A123868.P16832532396233593165

`Δ[-∑[A024010(n)]]`
-/

namespace A123868.P16832532396233593165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024010 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123868.P16832532396233593165

namespace A123868

/-- `Δ[-∑[A024010(n)]]` -/
def P16832532396233593165.Spec : Prop :=
  ∀ n, P16832532396233593165.a n = A123868 (n + 1)

end A123868

/-! ## A123868.P1551950557249411573

`n*A105067(n+1)`
-/

namespace A123868.P1551950557249411573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A105067 (n + 1)

end

end A123868.P1551950557249411573

namespace A123868

/-- `n*A105067(n+1)` -/
def P1551950557249411573.Spec : Prop :=
  ∀ n, P1551950557249411573.a n = A123868 (n + 1)

end A123868

/-! ## A123868.P7164622694785497983

`lcm(n, A024010(A000027(n+1)))`
-/

namespace A123868.P7164622694785497983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A024010 (A000027 (n + 1)).toNat)

end

end A123868.P7164622694785497983

namespace A123868

/-- `lcm(n, A024010(A000027(n+1)))` -/
def P7164622694785497983.Spec : Prop :=
  ∀ n, (P7164622694785497983.a n : ℤ) = A123868 (n + 1)

end A123868

/-! ## A123868.P6073386283356538495

`A002604(n+1)*A123866(n+1)`
-/

namespace A123868.P6073386283356538495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 (n + 1) * A123866 (n + 1)

end

end A123868.P6073386283356538495

namespace A123868

/-- `A002604(n+1)*A123866(n+1)` -/
def P6073386283356538495.Spec : Prop :=
  ∀ n, P6073386283356538495.a n = A123868 (n + 1)

theorem P6073386283356538495.correct : P6073386283356538495.Spec := by
  intro n
  simp only [A123868, Nat.add_sub_cancel, A123868.P6073386283356538495.a, A123868.P18082159345305852257.a, A002604, A002604.P7413616626921950618.a, A123866, A123866.P11621378827014358143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123868

/-! ## A123868.P2886551583200046886

`(A010803(n+1)-A000578(n+1))/A000578(n+1)`
-/

namespace A123868.P2886551583200046886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010803 (n + 1) - A000578 (n + 1) : ℚ) / (A000578 (n + 1) : ℚ)

end

end A123868.P2886551583200046886

namespace A123868

/-- `(A010803(n+1)-A000578(n+1))/A000578(n+1)` -/
def P2886551583200046886.Spec : Prop :=
  ∀ n, P2886551583200046886.a n = (A123868 (n + 1) : ℚ)

end A123868

/-! ## A123868.P10945818898800743399

`(A010804(n+1)-A000583(n+1))/A000583(n+1)`
-/

namespace A123868.P10945818898800743399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010804 (n + 1) - A000583 (n + 1) : ℚ) / (A000583 (n + 1) : ℚ)

end

end A123868.P10945818898800743399

namespace A123868

/-- `(A010804(n+1)-A000583(n+1))/A000583(n+1)` -/
def P10945818898800743399.Spec : Prop :=
  ∀ n, P10945818898800743399.a n = (A123868 (n + 1) : ℚ)

end A123868

/-! ## A123868.P15178279605287322772

`(A010805(n+1)-A000584(n+1))/A000584(n+1)`
-/

namespace A123868.P15178279605287322772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010805 (n + 1) - A000584 (n + 1) : ℚ) / (A000584 (n + 1) : ℚ)

end

end A123868.P15178279605287322772

namespace A123868

/-- `(A010805(n+1)-A000584(n+1))/A000584(n+1)` -/
def P15178279605287322772.Spec : Prop :=
  ∀ n, P15178279605287322772.a n = (A123868 (n + 1) : ℚ)

end A123868

/-! ## A123868.P9194930245824349555

`(A010813(n+1)-A010801(n+1))/A010801(n+1)`
-/

namespace A123868.P9194930245824349555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010813 (n + 1) - A010801 (n + 1) : ℚ) / (A010801 (n + 1) : ℚ)

end

end A123868.P9194930245824349555

namespace A123868

/-- `(A010813(n+1)-A010801(n+1))/A010801(n+1)` -/
def P9194930245824349555.Spec : Prop :=
  ∀ n, P9194930245824349555.a n = (A123868 (n + 1) : ℚ)

end A123868

/-! ## A123868.P15700298809432119094

`A123866((n+1)²)`
-/

namespace A123868.P15700298809432119094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123866 ((n + 1) ^ 2)

end

end A123868.P15700298809432119094

namespace A123868

/-- `A123866((n+1)²)` -/
def P15700298809432119094.Spec : Prop :=
  ∀ n, P15700298809432119094.a n = A123868 (n + 1)

end A123868

/-!
# A123870: Order of minimal triangulation of nonorientable closed surface with n cross-caps (N_n).

The programs for A123870, the canonical program `A123870.P12259030212221851623` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123870 has offset 0).

The definition of A123870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123870.P12259030212221851623

`A214295(A136548(n))+a(A180446(n))+1` with `a(0)=4`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A123870

/-- `A214295(A136548(n))+a(A180446(n))+1` -/
def P12259030212221851623.Spec : Prop :=
  ∀ n, P12259030212221851623.a n = A123870 n

theorem P12259030212221851623.correct : P12259030212221851623.Spec := by
  intro n
  simp only [A123870]

end A123870

/-!
# A123871: Expansion of g.f.: (1+x+x^2)/(1-4*x-4*x^2).

The programs for A123871, the canonical program `A123871.P9233886458662254045` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123871 has offset 0).

The definition of A123871 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2)/(1-4x-4x^2))` (program `A123871.P9233886458662254045`, by `A123871.P9233886458662254045.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123871.P9233886458662254045

`ogf((1+x+x^2)/(1-4x-4x^2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A123871

/-- `ogf((1+x+x^2)/(1-4x-4x^2))` -/
def P9233886458662254045.Spec : Prop :=
  ∀ n, P9233886458662254045.a n = A123871 n

theorem P9233886458662254045.correct : P9233886458662254045.Spec := by
  intro n
  simp only [A123871]

end A123871

/-! ## A123871.P11723109799340246966

`4*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=5, a(2)=25`
-/

namespace A123871.P11723109799340246966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25] fun n a =>
  4 * a (n - 1) + 4 * a (n - 2)

end

end A123871.P11723109799340246966

namespace A123871

/-- `4*a(n-1)+4*a(n-2)` -/
def P11723109799340246966.Spec : Prop :=
  ∀ n, (P11723109799340246966.a n : ℤ) = A123871 n

end A123871

/-! ## A123871.P7604141849233024926

`4*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=5, a(2)=25`
-/

namespace A123871.P7604141849233024926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25] fun n a =>
  4 * (a (n - 1) + a (n - 2))

end

end A123871.P7604141849233024926

namespace A123871

/-- `4*(a(n-1)+a(n-2))` -/
def P7604141849233024926.Spec : Prop :=
  ∀ n, (P7604141849233024926.a n : ℤ) = A123871 n

end A123871

/-! ## A123871.P17007736811504036705

`A000129(n+1)/2*A084215(n+1)`
-/

namespace A123871.P17007736811504036705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) : ℚ) / 2 * (A084215 (n + 1) : ℚ)

end

end A123871.P17007736811504036705

namespace A123871

/-- `A000129(n+1)/2*A084215(n+1)` -/
def P17007736811504036705.Spec : Prop :=
  ∀ n, P17007736811504036705.a n = (A123871 n : ℚ)

end A123871

/-! ## A123871.P12410341454210822601

`A003947(A110654(n))*A041011(n)`
-/

namespace A123871.P12410341454210822601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 (A110654 n).toNat * A041011 n

end

end A123871.P12410341454210822601

namespace A123871

/-- `A003947(A110654(n))*A041011(n)` -/
def P12410341454210822601.Spec : Prop :=
  ∀ n, P12410341454210822601.a n = A123871 n

end A123871

/-! ## A123871.P11511168289982207019

`A057087(n)+A057087(n)-A155117(n)`
-/

namespace A123871.P11511168289982207019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057087 n + (A057087 n - A155117 n)

end

end A123871.P11511168289982207019

namespace A123871

/-- `A057087(n)+A057087(n)-A155117(n)` -/
def P11511168289982207019.Spec : Prop :=
  ∀ n, P11511168289982207019.a n = A123871 n

end A123871

/-! ## A123871.P8311190327334682168

`2*A057087(n)-A155117(n)`
-/

namespace A123871.P8311190327334682168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057087 n - A155117 n

end

end A123871.P8311190327334682168

namespace A123871

/-- `2*A057087(n)-A155117(n)` -/
def P8311190327334682168.Spec : Prop :=
  ∀ n, P8311190327334682168.a n = A123871 n

end A123871

/-!
# A123872: Start with the seed a(0)=2. The minimum number, different from 1, that multiplied by 2 (seed) produces a number with 2 as its rightmost digit is a(1)=6. Then 6*2=12. Again, the minimum number that multiplied by 12 produces 12 as its rightmost digits is a(2)=26 (12*26=312). And so on.

The programs for A123872, there is no canonical definition to state claims against.
-/

/-! ## A123872.P16442030609448424147

`A316707((xor(1, n)+1)*5^n)+1`
-/

namespace A123872.P16442030609448424147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316707 ((Nat.xor 1 n + 1) * 5 ^ n) + 1

end

end A123872.P16442030609448424147

/-!
# A123873: Similar to A123872 but with a(0)=4 as seed.

The programs for A123873, there is no canonical definition to state claims against.
-/

/-! ## A123873.P17685451661972027510

`A337194(A037071(n))`
-/

namespace A123873.P17685451661972027510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337194 (A037071 n).toNat

end

end A123873.P17685451661972027510

/-!
# A123876: Riordan array (1/(1+2*x), x*(1+x)/(1+2*x)^2).

The programs for A123876, the canonical program `A123876.P14613620136212716990` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123876 has offset 0).

The definition of A123876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123876.P14613620136212716990

`T(n-1,k-1)-4*T(n-1,k)+T(n-2,k-1)-4*T(n-2,k)` with `a(0)=1, a(1)=-2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A123876

/-- `T(n-1,k-1)-4*T(n-1,k)+T(n-2,k-1)-4*T(n-2,k)` -/
def P14613620136212716990.Spec : Prop :=
  ∀ n, P14613620136212716990.a n = A123876 n

theorem P14613620136212716990.correct : P14613620136212716990.Spec := by
  intro n
  simp only [A123876]

end A123876

/-! ## A123876.P6241915555892032063

`A097807(n)*A114164(n)`
-/

namespace A123876.P6241915555892032063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A114164 n

end

end A123876.P6241915555892032063

namespace A123876

/-- `A097807(n)*A114164(n)` -/
def P6241915555892032063.Spec : Prop :=
  ∀ n, P6241915555892032063.a n = A123876 n

end A123876

/-! ## A123876.P16391965037506389727

`A033999(A051162(n))*A114164(n)`
-/

namespace A123876.P16391965037506389727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A114164 n

end

end A123876.P16391965037506389727

namespace A123876

/-- `A033999(A051162(n))*A114164(n)` -/
def P16391965037506389727.Spec : Prop :=
  ∀ n, P16391965037506389727.a n = A123876 n

end A123876

/-! ## A123876.P10062507624475216704

`A034947(A099375(n))*A114164(n)`
-/

namespace A123876.P10062507624475216704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A099375 n).toNat * A114164 n

end

end A123876.P10062507624475216704

namespace A123876

/-- `A034947(A099375(n))*A114164(n)` -/
def P10062507624475216704.Spec : Prop :=
  ∀ n, P10062507624475216704.a n = A123876 n

end A123876

/-! ## A123876.P1724984102188208522

`A062157(A004736(n+1))*A114164(n)`
-/

namespace A123876.P1724984102188208522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A114164 n

end

end A123876.P1724984102188208522

namespace A123876

/-- `A062157(A004736(n+1))*A114164(n)` -/
def P1724984102188208522.Spec : Prop :=
  ∀ n, P1724984102188208522.a n = A123876 n

end A123876

/-! ## A123876.P13472202489448980237

`A033999(A108872(n+1))*A114164(n)`
-/

namespace A123876.P13472202489448980237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A108872 (n + 1)).toNat * A114164 n

end

end A123876.P13472202489448980237

namespace A123876

/-- `A033999(A108872(n+1))*A114164(n)` -/
def P13472202489448980237.Spec : Prop :=
  ∀ n, P13472202489448980237.a n = A123876 n

end A123876

/-! ## A123876.P15451015376264350476

`A085478(n)/A129818(n)*A114164(n)`
-/

namespace A123876.P15451015376264350476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085478 n : ℚ) / (A129818 n : ℚ) * (A114164 n : ℚ)

end

end A123876.P15451015376264350476

namespace A123876

/-- `A085478(n)/A129818(n)*A114164(n)` -/
def P15451015376264350476.Spec : Prop :=
  ∀ n, P15451015376264350476.a n = (A123876 n : ℚ)

end A123876

/-! ## A123876.P15619337768697554941

`A033999(A292564(n))*A114164(n)`
-/

namespace A123876.P15619337768697554941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A292564 n).toNat * A114164 n

end

end A123876.P15619337768697554941

namespace A123876

/-- `A033999(A292564(n))*A114164(n)` -/
def P15619337768697554941.Spec : Prop :=
  ∀ n, P15619337768697554941.a n = A123876 n

end A123876

/-! ## A123876.P11872625944518104235

`A114164(n)*A117568(A185869(n+1))`
-/

namespace A123876.P11872625944518104235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114164 n * A117568 (A185869 (n + 1)).toNat

end

end A123876.P11872625944518104235

namespace A123876

/-- `A114164(n)*A117568(A185869(n+1))` -/
def P11872625944518104235.Spec : Prop :=
  ∀ n, P11872625944518104235.a n = A123876 n

end A123876

/-! ## A123876.P12852017578418281320

`A004718(A130321(n))*A114164(n)`
-/

namespace A123876.P12852017578418281320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A130321 n).toNat * A114164 n

end

end A123876.P12852017578418281320

namespace A123876

/-- `A004718(A130321(n))*A114164(n)` -/
def P12852017578418281320.Spec : Prop :=
  ∀ n, P12852017578418281320.a n = A123876 n

end A123876

/-! ## A123876.P2523646432344029411

`A034947(A135764(n+1))*A114164(n)`
-/

namespace A123876.P2523646432344029411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A135764 (n + 1)).toNat * A114164 n

end

end A123876.P2523646432344029411

namespace A123876

/-- `A034947(A135764(n+1))*A114164(n)` -/
def P2523646432344029411.Spec : Prop :=
  ∀ n, P2523646432344029411.a n = A123876 n

end A123876

/-!
# A123877: Expansion of (1+2*x)/(1+3*x+3*x^2).

The programs for A123877, the canonical program `A123877.P16576122408399591432` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123877 has offset 0).

The definition of A123877 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1+3x+3x^2))` (program `A123877.P16576122408399591432`, by `A123877.P16576122408399591432.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123877.P16576122408399591432

`ogf((1+2x)/(1+3x+3x^2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A123877

/-- `ogf((1+2x)/(1+3x+3x^2))` -/
def P16576122408399591432.Spec : Prop :=
  ∀ n, P16576122408399591432.a n = A123877 n

theorem P16576122408399591432.correct : P16576122408399591432.Spec := by
  intro n
  simp only [A123877]

end A123877

/-! ## A123877.P14341730543568802042

`Δ[3*(1-(a(n-1)+a(n-2)))]` with `a(0)=0, a(1)=1`
-/

namespace A123877.P14341730543568802042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * (1 - (f1 (n - 1) + f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123877.P14341730543568802042

namespace A123877

/-- `Δ[3*(1-(a(n-1)+a(n-2)))]` -/
def P14341730543568802042.Spec : Prop :=
  ∀ n, P14341730543568802042.a n = A123877 n

end A123877

/-! ## A123877.P13959265095892084077

`Δ[3*(1-a(n-1)-a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A123877.P13959265095892084077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * (1 - f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123877.P13959265095892084077

namespace A123877

/-- `Δ[3*(1-a(n-1)-a(n-2))]` -/
def P13959265095892084077.Spec : Prop :=
  ∀ n, P13959265095892084077.a n = A123877 n

end A123877

/-! ## A123877.P203257896096483628

`3*a(n-3)-2*a(n-1)` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A123877.P203257896096483628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n a =>
  3 * a (n - 3) - 2 * a (n - 1)

end

end A123877.P203257896096483628

namespace A123877

/-- `3*a(n-3)-2*a(n-1)` -/
def P203257896096483628.Spec : Prop :=
  ∀ n, P203257896096483628.a n = A123877 n

end A123877

/-! ## A123877.P12449575329747111439

`(xor(1, n)-n)*A057681(n+1)`
-/

namespace A123877.P12449575329747111439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 n : ℤ) - (n : ℤ)) * A057681 (n + 1)

end

end A123877.P12449575329747111439

namespace A123877

/-- `(xor(1, n)-n)*A057681(n+1)` -/
def P12449575329747111439.Spec : Prop :=
  ∀ n, P12449575329747111439.a n = A123877 n

end A123877

/-! ## A123877.P707537397673229675

`A057681(n+1)*A062157(n+1)`
-/

namespace A123877.P707537397673229675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 (n + 1) * A062157 (n + 1)

end

end A123877.P707537397673229675

namespace A123877

/-- `A057681(n+1)*A062157(n+1)` -/
def P707537397673229675.Spec : Prop :=
  ∀ n, P707537397673229675.a n = A123877 n

end A123877

/-! ## A123877.P1753595386965680837

`A056594(2*n)*A057681(n+1)`
-/

namespace A123877.P1753595386965680837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A057681 (n + 1)

end

end A123877.P1753595386965680837

namespace A123877

/-- `A056594(2*n)*A057681(n+1)` -/
def P1753595386965680837.Spec : Prop :=
  ∀ n, P1753595386965680837.a n = A123877 n

end A123877

/-! ## A123877.P17625995979811804824

`A057077(2*n)*A057681(n+1)`
-/

namespace A123877.P17625995979811804824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A057681 (n + 1)

end

end A123877.P17625995979811804824

namespace A123877

/-- `A057077(2*n)*A057681(n+1)` -/
def P17625995979811804824.Spec : Prop :=
  ∀ n, P17625995979811804824.a n = A123877 n

end A123877

/-! ## A123877.P3232816332606511295

`A010892(3*n)*A057681(n+1)`
-/

namespace A123877.P3232816332606511295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) * A057681 (n + 1)

end

end A123877.P3232816332606511295

namespace A123877

/-- `A010892(3*n)*A057681(n+1)` -/
def P3232816332606511295.Spec : Prop :=
  ∀ n, P3232816332606511295.a n = A123877 n

end A123877

/-! ## A123877.P9907256908262927693

`2/A084099(2*n+1)*A057681(n+1)`
-/

namespace A123877.P9907256908262927693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A084099 (2 * n + 1) : ℚ) * (A057681 (n + 1) : ℚ)

end

end A123877.P9907256908262927693

namespace A123877

/-- `2/A084099(2*n+1)*A057681(n+1)` -/
def P9907256908262927693.Spec : Prop :=
  ∀ n, P9907256908262927693.a n = (A123877 n : ℚ)

end A123877

/-! ## A123877.P4453313817334071839

`(1-6/2)/A280560(n+1)*A057681(n+1)`
-/

namespace A123877.P4453313817334071839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (6 : ℚ) / 2) / (A280560 (n + 1) : ℚ) * (A057681 (n + 1) : ℚ)

end

end A123877.P4453313817334071839

namespace A123877

/-- `(1-6/2)/A280560(n+1)*A057681(n+1)` -/
def P4453313817334071839.Spec : Prop :=
  ∀ n, P4453313817334071839.a n = (A123877 n : ℚ)

end A123877

/-! ## A123877.P7132375242537835222

`A168615(n+1)/2`
-/

namespace A123877.P7132375242537835222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168615 (n + 1) : ℚ) / 2

end

end A123877.P7132375242537835222

namespace A123877

/-- `A168615(n+1)/2` -/
def P7132375242537835222.Spec : Prop :=
  ∀ n, P7132375242537835222.a n = (A123877 n : ℚ)

end A123877

/-! ## A123877.P14741045262724729611

`A024493(n+1)-2*A094715(n+1)`
-/

namespace A123877.P14741045262724729611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (n + 1) - 2 * A094715 (n + 1)

end

end A123877.P14741045262724729611

namespace A123877

/-- `A024493(n+1)-2*A094715(n+1)` -/
def P14741045262724729611.Spec : Prop :=
  ∀ n, P14741045262724729611.a n = A123877 n

end A123877

/-! ## A123877.P14346543623798596899

`A130781(n)-(A094715(n+1)+A094715(n+1))`
-/

namespace A123877.P14346543623798596899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 n - (A094715 (n + 1) + A094715 (n + 1))

end

end A123877.P14346543623798596899

namespace A123877

/-- `A130781(n)-(A094715(n+1)+A094715(n+1))` -/
def P14346543623798596899.Spec : Prop :=
  ∀ n, P14346543623798596899.a n = A123877 n

end A123877

/-! ## A123877.P10133257582609947717

`∑{#}[n, (-1)^(n-#)*C(n, #)*A057078(#)]`
-/

namespace A123877.P10133257582609947717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A057078 k : ℚ)

end

end A123877.P10133257582609947717

namespace A123877

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A057078(#)]` -/
def P10133257582609947717.Spec : Prop :=
  ∀ n, P10133257582609947717.a n = (A123877 n : ℚ)

end A123877

/-! ## A123877.P2905460059451346902

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A011655(#)]`
-/

namespace A123877.P2905460059451346902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A011655 k : ℚ)

end

end A123877.P2905460059451346902

namespace A123877

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A011655(#)]` -/
def P2905460059451346902.Spec : Prop :=
  ∀ n, P2905460059451346902.a n = (A123877 n : ℚ)

end A123877

/-! ## A123877.P14855925146027246442

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A130196(#)]`
-/

namespace A123877.P14855925146027246442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A130196 k : ℚ)

end

end A123877.P14855925146027246442

namespace A123877

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A130196(#)]` -/
def P14855925146027246442.Spec : Prop :=
  ∀ n, P14855925146027246442.a n = (A123877 n : ℚ)

end A123877

/-! ## A123877.P7210086447242031922

`3^n-A334656(n+1)`
-/

namespace A123877.P7210086447242031922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A334656 (n + 1)

end

end A123877.P7210086447242031922

namespace A123877

/-- `3^n-A334656(n+1)` -/
def P7210086447242031922.Spec : Prop :=
  ∀ n, P7210086447242031922.a n = A123877 n

end A123877

/-!
# A123878: Product of signed and unsigned Morgan-Voyce triangles.

The programs for A123878, the canonical program `A123878.P15499266472665543501` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123878 has offset 0).

The definition of A123878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123878.P15499266472665543501

`A104597(A245300(n)+A002262(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A123878

/-- `A104597(A245300(n)+A002262(n))` -/
def P15499266472665543501.Spec : Prop :=
  ∀ n, P15499266472665543501.a n = A123878 n

theorem P15499266472665543501.correct : P15499266472665543501.Spec := by
  intro n
  simp only [A123878]

end A123878

/-!
# A123879: Expansion of (1-2*x+2*x^2-x^3)/(1-3*x+5*x^2-3*x^3+x^4).

The programs for A123879, the canonical program `A123879.P14302803576459566036` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123879 has offset 0).

The definition of A123879 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+2x^2-x^3)/(1-3x+5x^2-3x^3+x^4))` (program `A123879.P14302803576459566036`, by `A123879.P14302803576459566036.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123879.P14302803576459566036

`ogf((1-2x+2x^2-x^3)/(1-3x+5x^2-3x^3+x^4))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A123879

/-- `ogf((1-2x+2x^2-x^3)/(1-3x+5x^2-3x^3+x^4))` -/
def P14302803576459566036.Spec : Prop :=
  ∀ n, P14302803576459566036.a n = A123879 n

theorem P14302803576459566036.correct : P14302803576459566036.Spec := by
  intro n
  simp only [A123879]

end A123879

/-! ## A123879.P7240761536692322988

`3*a(n-1)-5*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=-3`
-/

namespace A123879.P7240761536692322988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, -3] fun n a =>
  3 * a (n - 1) - 5 * a (n - 2) + 3 * a (n - 3) - a (n - 4)

end

end A123879.P7240761536692322988

namespace A123879

/-- `3*a(n-1)-5*a(n-2)+3*a(n-3)-a(n-4)` -/
def P7240761536692322988.Spec : Prop :=
  ∀ n, P7240761536692322988.a n = A123879 n

end A123879

/-! ## A123879.P12157337431785735438

`A101496(2*n)`
-/

namespace A123879.P12157337431785735438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101496 (2 * n)

end

end A123879.P12157337431785735438

namespace A123879

/-- `A101496(2*n)` -/
def P12157337431785735438.Spec : Prop :=
  ∀ n, P12157337431785735438.a n = A123879 n

end A123879

/-! ## A123879.P5972930701137794761

`A101496(n+n)/gcd(n, n+1)`
-/

namespace A123879.P5972930701137794761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101496 (n + n) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A123879.P5972930701137794761

namespace A123879

/-- `A101496(n+n)/gcd(n, n+1)` -/
def P5972930701137794761.Spec : Prop :=
  ∀ n, P5972930701137794761.a n = (A123879 n : ℚ)

end A123879

/-! ## A123879.P9033173203540826258

`A101496(A004275(n+1))+char[A015991(n+1)]`
-/

namespace A123879.P9033173203540826258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015991 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101496 (A004275 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A123879.P9033173203540826258

namespace A123879

/-- `A101496(A004275(n+1))+char[A015991(n+1)]` -/
def P9033173203540826258.Spec : Prop :=
  ∀ n, P9033173203540826258.a n = A123879 n

end A123879

/-! ## A123879.P12775789274334416843

`A101496(A004275(n+1))+char[A031731(n+1)]`
-/

namespace A123879.P12775789274334416843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031731 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101496 (A004275 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A123879.P12775789274334416843

namespace A123879

/-- `A101496(A004275(n+1))+char[A031731(n+1)]` -/
def P12775789274334416843.Spec : Prop :=
  ∀ n, P12775789274334416843.a n = A123879 n

end A123879

/-! ## A123879.P10531890810833824736

`A101496(A004275(n+1))%A199929(n)`
-/

namespace A123879.P10531890810833824736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101496 (A004275 (n + 1)).toNat) (A199929 n)

end

end A123879.P10531890810833824736

namespace A123879

/-- `A101496(A004275(n+1))%A199929(n)` -/
def P10531890810833824736.Spec : Prop :=
  ∀ n, P10531890810833824736.a n = A123879 n

end A123879

/-!
# A123880: Inverse of number triangle A123878.

The programs for A123880, there is no canonical definition to state claims against.
-/

/-! ## A123880.P15376438315414745603

`A163352(2*A186761(n))`
-/

namespace A123880.P15376438315414745603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (2 * A186761 n).toNat

end

end A123880.P15376438315414745603

/-! ## A123880.P9980641500614074951

`A023645(4^A097609(n))`
-/

namespace A123880.P9980641500614074951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A097609 n : ℤ))).toNat

end

end A123880.P9980641500614074951

/-! ## A123880.P9656607176343487254

`A046660(4^A097609(n))`
-/

namespace A123880.P9656607176343487254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A097609 n : ℤ))).toNat

end

end A123880.P9656607176343487254

/-! ## A123880.P4715917560549418897

`A066301(4^A097609(n))`
-/

namespace A123880.P4715917560549418897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A097609 n : ℤ))).toNat

end

end A123880.P4715917560549418897

/-! ## A123880.P12908761092727180584

`A070824(4^A097609(n))`
-/

namespace A123880.P12908761092727180584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A097609 n : ℤ))).toNat

end

end A123880.P12908761092727180584

/-!
# A123881: Expansion of e.g.f.: exp( 2*(exp(x)-1)/(2-exp(x)) ).

The programs for A123881, there is no canonical definition to state claims against.
-/

/-! ## A123881.P2311206295387310336

`A379882(A005258(n))`
-/

namespace A123881.P2311206295387310336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379882 (A005258 n).toNat

end

end A123881.P2311206295387310336

/-!
# A123882: a(1)=1, a(2)=2. a(n) = the smallest positive integer that does not occur earlier in the sequence and is coprime to the second-largest term occurring earlier in the sequence.

The programs for A123882, there is no canonical definition to state claims against.
-/

/-! ## A123882.P6111134326276403316

`A085229(A171905(n+1)+n)`
-/

namespace A123882.P6111134326276403316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085229 (A171905 (n + 1) + (n : ℤ)).toNat

end

end A123882.P6111134326276403316

/-! ## A123882.P5934997517048712820

`xor(char[A024028(n)], A085229(n+1))`
-/

namespace A123882.P5934997517048712820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024028 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A085229 (n + 1))

end

end A123882.P5934997517048712820

/-! ## A123882.P657624380582141541

`xor(char[A024030(n)], A085229(n+1))`
-/

namespace A123882.P657624380582141541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024030 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A085229 (n + 1))

end

end A123882.P657624380582141541

/-! ## A123882.P13795789572334926869

`A085229(xor(n+1, A171386(n+1)))`
-/

namespace A123882.P13795789572334926869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085229 (Int.xor (n + 1 : ℤ) (A171386 (n + 1))).toNat

end

end A123882.P13795789572334926869

/-! ## A123882.P14331289805893808683

`xor(A010051(A033720(n)), A085229(n+1))`
-/

namespace A123882.P14331289805893808683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A033720 n).toNat) (A085229 (n + 1))

end

end A123882.P14331289805893808683

/-! ## A123882.P16577002157922197421

`xor(A010051(A027379(n)-n), A085229(n+1))`
-/

namespace A123882.P16577002157922197421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A027379 n - (n : ℤ)).toNat) (A085229 (n + 1))

end

end A123882.P16577002157922197421

/-! ## A123882.P16859781963774919701

`xor(A010051(A027379(n)), A085229(n+1))`
-/

namespace A123882.P16859781963774919701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A027379 n).toNat) (A085229 (n + 1))

end

end A123882.P16859781963774919701

/-! ## A123882.P13692490568451024636

`xor(A010051(A048840(n)), A085229(n+1))`
-/

namespace A123882.P13692490568451024636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A048840 n).toNat) (A085229 (n + 1))

end

end A123882.P13692490568451024636

/-! ## A123882.P10338437052920402888

`xor(A085229(n+1), A102460(n²))`
-/

namespace A123882.P10338437052920402888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A085229 (n + 1)) (A102460 (n ^ 2))

end

end A123882.P10338437052920402888

/-!
# A123883: Inverse permutation to sequence A123882.

The programs for A123883, there is no canonical definition to state claims against.
-/

/-! ## A123883.P2042635074912503844

`A085230(A171905(n+1)+n)`
-/

namespace A123883.P2042635074912503844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085230 (A171905 (n + 1) + (n : ℤ)).toNat

end

end A123883.P2042635074912503844

/-! ## A123883.P243556509490603965

`xor(A085230(n+1), A102460(n²))`
-/

namespace A123883.P243556509490603965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A085230 (n + 1)) (A102460 (n ^ 2))

end

end A123883.P243556509490603965

/-! ## A123883.P10858864620888930199

`xor(char[A015189(n)], A085230(n+1))`
-/

namespace A123883.P10858864620888930199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015189 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A085230 (n + 1))

end

end A123883.P10858864620888930199

/-! ## A123883.P10283400194930874551

`xor(char[A024028(n)], A085230(n+1))`
-/

namespace A123883.P10283400194930874551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024028 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A085230 (n + 1))

end

end A123883.P10283400194930874551

/-! ## A123883.P4027307433829597870

`xor(char[A024030(n)], A085230(n+1))`
-/

namespace A123883.P4027307433829597870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024030 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A085230 (n + 1))

end

end A123883.P4027307433829597870

/-! ## A123883.P2438184532884044332

`xor(char[A168244(n)], A085230(n+1))`
-/

namespace A123883.P2438184532884044332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168244 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A085230 (n + 1))

end

end A123883.P2438184532884044332

/-! ## A123883.P13945831846582194101

`A085230(xor(n+1, A171386(n+1)))`
-/

namespace A123883.P13945831846582194101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085230 (Int.xor (n + 1 : ℤ) (A171386 (n + 1))).toNat

end

end A123883.P13945831846582194101

/-! ## A123883.P5083845788480250365

`or(A059841(a(n-1)), A085230(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A123883.P5083845788480250365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor (A059841 (a (n - 1)).toNat) (A085230 (n + 1))

end

end A123883.P5083845788480250365

/-!
# A123884: Expansion of phi(x) * phi(-x^6) / chi(-x^2) in powers of x where phi(), chi() are Ramanujan theta functions.

The programs for A123884, the canonical program `A123884.P10243261106257034172` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123884 has offset 0).

The definition of A123884 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093829, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A123884.P15302841562605434489

`(-1)^n*A248886(n)`
-/

namespace A123884.P15302841562605434489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A248886 n

end

end A123884.P15302841562605434489

namespace A123884

/-- `(-1)^n*A248886(n)` -/
def P15302841562605434489.Spec : Prop :=
  ∀ n, P15302841562605434489.a n = A123884 n

end A123884

/-! ## A123884.P10243261106257034172

`A093829(12*n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A123884

/-- `A093829(12*n+1)` -/
def P10243261106257034172.Spec : Prop :=
  ∀ n, P10243261106257034172.a n = A123884 n

theorem P10243261106257034172.correct : P10243261106257034172.Spec := by
  intro n
  simp only [A123884]

end A123884

/-! ## A123884.P16203045340251612416

`abs(A248886(n))`
-/

namespace A123884.P16203045340251612416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A248886 n|

end

end A123884.P16203045340251612416

namespace A123884

/-- `abs(A248886(n))` -/
def P16203045340251612416.Spec : Prop :=
  ∀ n, P16203045340251612416.a n = A123884 n

end A123884

/-! ## A123884.P6435040625842155974

`gcd(A000038(n), A248886(n))`
-/

namespace A123884.P6435040625842155974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A248886 n)

end

end A123884.P6435040625842155974

namespace A123884

/-- `gcd(A000038(n), A248886(n))` -/
def P6435040625842155974.Spec : Prop :=
  ∀ n, (P6435040625842155974.a n : ℤ) = A123884 n

end A123884

/-! ## A123884.P1533393684166247368

`lcm(A000034(n), A248886(n))`
-/

namespace A123884.P1533393684166247368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A248886 n)

end

end A123884.P1533393684166247368

namespace A123884

/-- `lcm(A000034(n), A248886(n))` -/
def P1533393684166247368.Spec : Prop :=
  ∀ n, (P1533393684166247368.a n : ℤ) = A123884 n

end A123884

/-! ## A123884.P10452148275968683027

`A115979(12*n+1)`
-/

namespace A123884.P10452148275968683027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (12 * n + 1)

end

end A123884.P10452148275968683027

namespace A123884

/-- `A115979(12*n+1)` -/
def P10452148275968683027.Spec : Prop :=
  ∀ n, P10452148275968683027.a n = A123884 n

end A123884

/-! ## A123884.P6826432719108429529

`A097195(2*n)`
-/

namespace A123884.P6826432719108429529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097195 (2 * n)

end

end A123884.P6826432719108429529

namespace A123884

/-- `A097195(2*n)` -/
def P6826432719108429529.Spec : Prop :=
  ∀ n, P6826432719108429529.a n = A123884 n

end A123884

/-! ## A123884.P5461760195252556043

`A129451(2*n)`
-/

namespace A123884.P5461760195252556043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129451 (2 * n)

end

end A123884.P5461760195252556043

namespace A123884

/-- `A129451(2*n)` -/
def P5461760195252556043.Spec : Prop :=
  ∀ n, P5461760195252556043.a n = A123884 n

end A123884

/-! ## A123884.P9924332092524815722

`A033716(A016921(2*n))/2`
-/

namespace A123884.P9924332092524815722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033716 (A016921 (2 * n)).toNat : ℚ) / 2

end

end A123884.P9924332092524815722

namespace A123884

/-- `A033716(A016921(2*n))/2` -/
def P9924332092524815722.Spec : Prop :=
  ∀ n, P9924332092524815722.a n = (A123884 n : ℚ)

end A123884

/-! ## A123884.P9005720519304431582

`A112604(3*n)`
-/

namespace A123884.P9005720519304431582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112604 (3 * n)

end

end A123884.P9005720519304431582

namespace A123884

/-- `A112604(3*n)` -/
def P9005720519304431582.Spec : Prop :=
  ∀ n, P9005720519304431582.a n = A123884 n

end A123884

/-! ## A123884.P10997661296537215101

`A253243(3*n)`
-/

namespace A123884.P10997661296537215101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253243 (3 * n)

end

end A123884.P10997661296537215101

namespace A123884

/-- `A253243(3*n)` -/
def P10997661296537215101.Spec : Prop :=
  ∀ n, P10997661296537215101.a n = A123884 n

end A123884

/-! ## A123884.P18264833412967596554

`abs(A262774(3*n))`
-/

namespace A123884.P18264833412967596554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A262774 (3 * n)|

end

end A123884.P18264833412967596554

namespace A123884

/-- `abs(A262774(3*n))` -/
def P18264833412967596554.Spec : Prop :=
  ∀ n, P18264833412967596554.a n = A123884 n

end A123884

/-! ## A123884.P2659367613029306917

`A033687(4*n)`
-/

namespace A123884.P2659367613029306917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 (4 * n)

end

end A123884.P2659367613029306917

namespace A123884

/-- `A033687(4*n)` -/
def P2659367613029306917.Spec : Prop :=
  ∀ n, P2659367613029306917.a n = A123884 n

end A123884

/-! ## A123884.P5236561205214797652

`A005882(4*n)/3`
-/

namespace A123884.P5236561205214797652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005882 (4 * n) : ℚ) / 3

end

end A123884.P5236561205214797652

namespace A123884

/-- `A005882(4*n)/3` -/
def P5236561205214797652.Spec : Prop :=
  ∀ n, P5236561205214797652.a n = (A123884 n : ℚ)

end A123884

/-! ## A123884.P16970987193281301569

`A002264(A005882(4*n))`
-/

namespace A123884.P16970987193281301569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A005882 (4 * n)).toNat

end

end A123884.P16970987193281301569

namespace A123884

/-- `A002264(A005882(4*n))` -/
def P16970987193281301569.Spec : Prop :=
  ∀ n, P16970987193281301569.a n = A123884 n

end A123884

/-! ## A123884.P8941845469919084247

`A122861(4*n)`
-/

namespace A123884.P8941845469919084247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122861 (4 * n)

end

end A123884.P8941845469919084247

namespace A123884

/-- `A122861(4*n)` -/
def P8941845469919084247.Spec : Prop :=
  ∀ n, P8941845469919084247.a n = A123884 n

end A123884

/-! ## A123884.P679479028721141489

`A129576(4*n)`
-/

namespace A123884.P679479028721141489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129576 (4 * n)

end

end A123884.P679479028721141489

namespace A123884

/-- `A129576(4*n)` -/
def P679479028721141489.Spec : Prop :=
  ∀ n, P679479028721141489.a n = A123884 n

end A123884

/-! ## A123884.P11885194512041145790

`A227696(4*n)`
-/

namespace A123884.P11885194512041145790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227696 (4 * n)

end

end A123884.P11885194512041145790

namespace A123884

/-- `A227696(4*n)` -/
def P11885194512041145790.Spec : Prop :=
  ∀ n, P11885194512041145790.a n = A123884 n

end A123884

/-! ## A123884.P9362243688632450736

`A246650(4*n)`
-/

namespace A123884.P9362243688632450736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246650 (4 * n)

end

end A123884.P9362243688632450736

namespace A123884

/-- `A246650(4*n)` -/
def P9362243688632450736.Spec : Prop :=
  ∀ n, P9362243688632450736.a n = A123884 n

end A123884

/-! ## A123884.P8102389804179667894

`A246752(4*n)`
-/

namespace A123884.P8102389804179667894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246752 (4 * n)

end

end A123884.P8102389804179667894

namespace A123884

/-- `A246752(4*n)` -/
def P8102389804179667894.Spec : Prop :=
  ∀ n, P8102389804179667894.a n = A123884 n

end A123884

/-!
# A123885: a(1)=1. a(n) = a(n-1) + (number of earlier terms {i.e., terms a(1) through a(n-1)} that divide n).

The programs for A123885, there is no canonical definition to state claims against.
-/

/-! ## A123885.P10402858316242103921

`A349523(n+1)+A001222(A147143(n+1))`
-/

namespace A123885.P10402858316242103921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349523 (n + 1) + A001222 (A147143 (n + 1)).toNat

end

end A123885.P10402858316242103921

/-! ## A123885.P14396650295459350698

`A070939(A075220(n+1))+A013939(n+1)`
-/

namespace A123885.P14396650295459350698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A075220 (n + 1)).toNat + A013939 (n + 1)

end

end A123885.P14396650295459350698

/-!
# A123886: a(0)=1. a(n) = a(n-1) + (number of earlier terms {i.e., terms a(0) through a(n-1)} that divide n).

The programs for A123886, there is no canonical definition to state claims against.
-/

/-! ## A123886.P15945053082615426095

`∑[A005361(A261547(n))]`
-/

namespace A123886.P15945053082615426095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A261547 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123886.P15945053082615426095

/-! ## A123886.P18156812453467693666

`lt[1, A057550(A316467(2*(n+1)))]`
-/

namespace A123886.P18156812453467693666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057550 (A316467 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A123886.P18156812453467693666

/-! ## A123886.P1290463801559391756

`lt[A194190(n+1), A037946(n+4)]`
-/

namespace A123886.P1290463801559391756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037946 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A123886.P1290463801559391756

/-! ## A123886.P8612221665196241349

`∑[A005361(A000203(ceil(3^(n-1))))]`
-/

namespace A123886.P8612221665196241349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A000203 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123886.P8612221665196241349

/-! ## A123886.P7561632961900596463

`∑[A347440(A233249(3*(n+1)))+1]`
-/

namespace A123886.P7561632961900596463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347440 (A233249 (3 * (n + 1))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123886.P7561632961900596463

/-!
# A123887: Expansion of g.f.: (1+x+x^2)/(1-5*x-5*x^2).

The programs for A123887, the canonical program `A123887.P15984071449224940310` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123887 has offset 0).

The definition of A123887 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2)/(1-5x-5x^2))` (program `A123887.P15984071449224940310`, by `A123887.P15984071449224940310.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123887.P15984071449224940310

`ogf((1+x+x^2)/(1-5x-5x^2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A123887

/-- `ogf((1+x+x^2)/(1-5x-5x^2))` -/
def P15984071449224940310.Spec : Prop :=
  ∀ n, P15984071449224940310.a n = A123887 n

theorem P15984071449224940310.correct : P15984071449224940310.Spec := by
  intro n
  simp only [A123887]

end A123887

/-! ## A123887.P15254139847864627349

`5*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=6, a(2)=36`
-/

namespace A123887.P15254139847864627349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 36] fun n a =>
  5 * (a (n - 1) + a (n - 2))

end

end A123887.P15254139847864627349

namespace A123887

/-- `5*(a(n-1)+a(n-2))` -/
def P15254139847864627349.Spec : Prop :=
  ∀ n, (P15254139847864627349.a n : ℤ) = A123887 n

end A123887

/-! ## A123887.P8655442651607159932

`round(ϕ*round((ϕ+2)*a(n-1)))` with `a(0)=1`
-/

namespace A123887.P8655442651607159932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (SequenceMachineLib.roundAway ((Real.goldenRatio + 2) * (a (n - 1) : ℝ)) : ℝ))

end

end A123887.P8655442651607159932

namespace A123887

/-- `round(ϕ*round((ϕ+2)*a(n-1)))` -/
def P8655442651607159932.Spec : Prop :=
  ∀ n, P8655442651607159932.a n = A123887 n

end A123887

/-! ## A123887.P15687994380421310536

`A057088(n)+A057088(n)-A155119(n)`
-/

namespace A123887.P15687994380421310536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057088 n + (A057088 n - A155119 n)

end

end A123887.P15687994380421310536

namespace A123887

/-- `A057088(n)+A057088(n)-A155119(n)` -/
def P15687994380421310536.Spec : Prop :=
  ∀ n, P15687994380421310536.a n = A123887 n

end A123887

/-! ## A123887.P3980403623193391674

`2*A057088(n)-A155119(n)`
-/

namespace A123887.P3980403623193391674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057088 n - A155119 n

end

end A123887.P3980403623193391674

namespace A123887

/-- `2*A057088(n)-A155119(n)` -/
def P3980403623193391674.Spec : Prop :=
  ∀ n, P3980403623193391674.a n = A123887 n

end A123887

/-!
# A123888: Expansion of g.f.: x/((1-x^2)^3 -1+x).

The programs for A123888, the canonical program `A123888.P10439402512236980989` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123888 has offset 0).

The definition of A123888 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+3x^3-x^5))` (program `A123888.P10439402512236980989`, by `A123888.P10439402512236980989.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123888.P10439402512236980989

`ogf(1/(1-3x+3x^3-x^5))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A123888

/-- `ogf(1/(1-3x+3x^3-x^5))` -/
def P10439402512236980989.Spec : Prop :=
  ∀ n, P10439402512236980989.a n = A123888 n

theorem P10439402512236980989.correct : P10439402512236980989.Spec := by
  intro n
  simp only [A123888]

end A123888

/-! ## A123888.P10887864418522644642

`3*a(n-1)-3*a(n-3)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=24, a(4)=63`
-/

namespace A123888.P10887864418522644642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 24, 63] fun n a =>
  3 * a (n - 1) - 3 * a (n - 3) + a (n - 5)

end

end A123888.P10887864418522644642

namespace A123888

/-- `3*a(n-1)-3*a(n-3)+a(n-5)` -/
def P10887864418522644642.Spec : Prop :=
  ∀ n, P10887864418522644642.a n = A123888 n

end A123888

/-! ## A123888.P9946140767726129992

`A052960(n+1)+A052960(n)-1`
-/

namespace A123888.P9946140767726129992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052960 (n + 1) + (A052960 n - 1)

end

end A123888.P9946140767726129992

namespace A123888

/-- `A052960(n+1)+A052960(n)-1` -/
def P9946140767726129992.Spec : Prop :=
  ∀ n, P9946140767726129992.a n = A123888 n

end A123888

/-! ## A123888.P16616017011753150320

`∑[Δ[A052988(n+5)]%A052988(n+4)]`
-/

namespace A123888.P16616017011753150320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052988 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A052988 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123888.P16616017011753150320

namespace A123888

/-- `∑[Δ[A052988(n+5)]%A052988(n+4)]` -/
def P16616017011753150320.Spec : Prop :=
  ∀ n, P16616017011753150320.a n = A123888 n

end A123888

/-!
# A123889: Expansion of g.f.: x/((1-x^2)^4 -1+x).

The programs for A123889, the canonical program `A123889.P357951394814132540` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123889 has offset 0).

The definition of A123889 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^3-4x^5+x^7))` (program `A123889.P357951394814132540`, by `A123889.P357951394814132540.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123889.P357951394814132540

`ogf(1/(1-4x+6x^3-4x^5+x^7))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A123889

/-- `ogf(1/(1-4x+6x^3-4x^5+x^7))` -/
def P357951394814132540.Spec : Prop :=
  ∀ n, P357951394814132540.a n = A123889 n

theorem P357951394814132540.correct : P357951394814132540.Spec := by
  intro n
  simp only [A123889]

end A123889

/-! ## A123889.P16296408071146414332

`A123108(A081294(n)+A038085(2*(n+2)))`
-/

namespace A123889.P16296408071146414332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A081294 n + A038085 (2 * (n + 2))).toNat

end

end A123889.P16296408071146414332

namespace A123889

/-- `A123108(A081294(n)+A038085(2*(n+2)))` -/
def P16296408071146414332.Spec : Prop :=
  ∀ n, P16296408071146414332.a n = A123889 n

end A123889

/-! ## A123889.P6509766464637805647

`A027560(2*n+1)-A004001(A027560(2*n+1))`
-/

namespace A123889.P6509766464637805647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027560 (2 * n + 1) - A004001 (A027560 (2 * n + 1)).toNat

end

end A123889.P6509766464637805647

namespace A123889

/-- `A027560(2*n+1)-A004001(A027560(2*n+1))` -/
def P6509766464637805647.Spec : Prop :=
  ∀ n, P6509766464637805647.a n = A123889 n

end A123889

/-!
# A123890: Expansion of g.f.: x/((1-x^2)^5 - 1 + x).

The programs for A123890, the canonical program `A123890.P13243768704351353792` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123890 has offset 0).

The definition of A123890 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x+10x^3-10x^5+5x^7-x^9))` (program `A123890.P13243768704351353792`, by `A123890.P13243768704351353792.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123890.P13243768704351353792

`ogf(1/(1-5x+10x^3-10x^5+5x^7-x^9))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A123890

/-- `ogf(1/(1-5x+10x^3-10x^5+5x^7-x^9))` -/
def P13243768704351353792.Spec : Prop :=
  ∀ n, P13243768704351353792.a n = A123890 n

theorem P13243768704351353792.correct : P13243768704351353792.Spec := by
  intro n
  simp only [A123890]

end A123890

/-! ## A123890.P11061929792496804951

`A036561(n)+A027868(A126187(n+1))`
-/

namespace A123890.P11061929792496804951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n + A027868 (A126187 (n + 1)).toNat

end

end A123890.P11061929792496804951

namespace A123890

/-- `A036561(n)+A027868(A126187(n+1))` -/
def P11061929792496804951.Spec : Prop :=
  ∀ n, P11061929792496804951.a n = A123890 n

end A123890

/-!
# A123891: Expansion of (1-3*x^2+x^3)/(1-3*x+x^3).

The programs for A123891, the canonical program `A123891.P12058581169349682614` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123891 has offset 0).

The definition of A123891 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x^2+x^3)/(1-3x+x^3))` (program `A123891.P12058581169349682614`, by `A123891.P12058581169349682614.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123891.P12058581169349682614

`ogf((1-3x^2+x^3)/(1-3x+x^3))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A123891

/-- `ogf((1-3x^2+x^3)/(1-3x+x^3))` -/
def P12058581169349682614.Spec : Prop :=
  ∀ n, P12058581169349682614.a n = A123891 n

theorem P12058581169349682614.correct : P12058581169349682614.Spec := by
  intro n
  simp only [A123891]

end A123891

/-! ## A123891.P12922786331377312865

`3*a(n-1)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=18`
-/

namespace A123891.P12922786331377312865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6, 18] fun n a =>
  3 * a (n - 1) - a (n - 3)

end

end A123891.P12922786331377312865

namespace A123891

/-- `3*a(n-1)-a(n-3)` -/
def P12922786331377312865.Spec : Prop :=
  ∀ n, P12922786331377312865.a n = A123891 n

end A123891

/-! ## A123891.P8947508452758912114

`A052536(n%a(n-1))-A122100(n)` with `a(0)=1, a(1)=3`
-/

namespace A123891.P8947508452758912114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A052536 (Int.tmod (n : ℤ) (a (n - 1))).toNat - A122100 n

end

end A123891.P8947508452758912114

namespace A123891

/-- `A052536(n%a(n-1))-A122100(n)` -/
def P8947508452758912114.Spec : Prop :=
  ∀ n, P8947508452758912114.a n = A123891 n

end A123891

/-! ## A123891.P18283137968046892955

`A052536(A028310(n))-A122100(n)`
-/

namespace A123891.P18283137968046892955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 (A028310 n).toNat - A122100 n

end

end A123891.P18283137968046892955

namespace A123891

/-- `A052536(A028310(n))-A122100(n)` -/
def P18283137968046892955.Spec : Prop :=
  ∀ n, P18283137968046892955.a n = A123891 n

end A123891

/-! ## A123891.P4317713005065129808

`A052536(A000007(n)+n)-A122100(n)`
-/

namespace A123891.P4317713005065129808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 (A000007 n + (n : ℤ)).toNat - A122100 n

end

end A123891.P4317713005065129808

namespace A123891

/-- `A052536(A000007(n)+n)-A122100(n)` -/
def P4317713005065129808.Spec : Prop :=
  ∀ n, P4317713005065129808.a n = A123891 n

end A123891

/-! ## A123891.P15442471451280089113

`A000007(n)-(A122100(n)-A052536(n))`
-/

namespace A123891.P15442471451280089113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (A122100 n - A052536 n)

end

end A123891.P15442471451280089113

namespace A123891

/-- `A000007(n)-(A122100(n)-A052536(n))` -/
def P15442471451280089113.Spec : Prop :=
  ∀ n, P15442471451280089113.a n = A123891 n

end A123891

/-! ## A123891.P14098592801040697719

`A052536(n)-A057427(n)*A122100(n)`
-/

namespace A123891.P14098592801040697719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 n - A057427 n * A122100 n

end

end A123891.P14098592801040697719

namespace A123891

/-- `A052536(n)-A057427(n)*A122100(n)` -/
def P14098592801040697719.Spec : Prop :=
  ∀ n, P14098592801040697719.a n = A123891 n

end A123891

/-! ## A123891.P7364243980281148419

`A215885(n)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A123891.P7364243980281148419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A215885 n - a (n - 1)

end

end A123891.P7364243980281148419

namespace A123891

/-- `A215885(n)-a(n-1)` -/
def P7364243980281148419.Spec : Prop :=
  ∀ n, P7364243980281148419.a n = A123891 n

end A123891

/-! ## A123891.P1101546657089617096

`A052536(n)-A122100(n)%A006357(n)`
-/

namespace A123891.P1101546657089617096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 n - Int.tmod (A122100 n) (A006357 n)

end

end A123891.P1101546657089617096

namespace A123891

/-- `A052536(n)-A122100(n)%A006357(n)` -/
def P1101546657089617096.Spec : Prop :=
  ∀ n, P1101546657089617096.a n = A123891 n

end A123891

/-!
# A123892: Expansion of g.f.: (1+x^2)*(1+2*x^2)/(1-3*x+3*x^2-6*x^3+2*x^4-2*x^5).

The programs for A123892, the canonical program `A123892.P3175531316572455070` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123892 has offset 0).

The definition of A123892 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x^2+2x^4)/(1-3x+3x^2-6x^3+2x^4-2x^5))` (program `A123892.P3175531316572455070`, by `A123892.P3175531316572455070.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123892.P3175531316572455070

`ogf((1+3x^2+2x^4)/(1-3x+3x^2-6x^3+2x^4-2x^5))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A123892

/-- `ogf((1+3x^2+2x^4)/(1-3x+3x^2-6x^3+2x^4-2x^5))` -/
def P3175531316572455070.Spec : Prop :=
  ∀ n, P3175531316572455070.a n = A123892 n

theorem P3175531316572455070.correct : P3175531316572455070.Spec := by
  intro n
  simp only [A123892]

end A123892

/-! ## A123892.P15276193331589672631

`∑[A249728(Δ[A011272(n)])]`
-/

namespace A123892.P15276193331589672631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011272 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123892.P15276193331589672631

namespace A123892

/-- `∑[A249728(Δ[A011272(n)])]` -/
def P15276193331589672631.Spec : Prop :=
  ∀ n, P15276193331589672631.a n = A123892 n

end A123892

/-! ## A123892.P11496835263129624081

`A355739(A215871(n+1))+A180664(n)`
-/

namespace A123892.P11496835263129624081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355739 (A215871 (n + 1)).toNat + A180664 n

end

end A123892.P11496835263129624081

namespace A123892

/-- `A355739(A215871(n+1))+A180664(n)` -/
def P11496835263129624081.Spec : Prop :=
  ∀ n, P11496835263129624081.a n = A123892 n

end A123892

/-!
# A123893: Expansion of g.f.: (1+x^2)*(1+2*x^2)*(1+3*x^2)/(1-4*x+6*x^2-18*x^3 +11*x^4-22*x^5+6*x^6-6*x^7).

The programs for A123893, the canonical program `A123893.P14527472888730411030` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123893 has offset 0).

The definition of A123893 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+6x^2+11x^4+6x^6)/(1-4x+6x^2-18x^3+11x^4-22x^5+6x^6-6x^7))` (program `A123893.P14527472888730411030`, by `A123893.P14527472888730411030.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123893.P14527472888730411030

`ogf((1+6x^2+11x^4+6x^6)/(1-4x+6x^2-18x^3+11x^4-22x^5+6x^6-6x^7))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A123893

/-- `ogf((1+6x^2+11x^4+6x^6)/(1-4x+6x^2-18x^3+11x^4-22x^5+6x^6-6x^7))` -/
def P14527472888730411030.Spec : Prop :=
  ∀ n, P14527472888730411030.a n = A123893 n

theorem P14527472888730411030.correct : P14527472888730411030.Spec := by
  intro n
  simp only [A123893]

end A123893

/-! ## A123893.P2876547063289167584

`∑[A002264(A081567(n+1)+1)]`
-/

namespace A123893.P2876547063289167584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A081567 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123893.P2876547063289167584

namespace A123893

/-- `∑[A002264(A081567(n+1)+1)]` -/
def P2876547063289167584.Spec : Prop :=
  ∀ n, P2876547063289167584.a n = A123893 n

end A123893

/-! ## A123893.P12198779669071438809

`A189667(A020876(n+1)-A091318(n+1))`
-/

namespace A123893.P12198779669071438809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189667 (A020876 (n + 1) - A091318 (n + 1)).toNat

end

end A123893.P12198779669071438809

namespace A123893

/-- `A189667(A020876(n+1)-A091318(n+1))` -/
def P12198779669071438809.Spec : Prop :=
  ∀ n, P12198779669071438809.a n = A123893 n

end A123893

/-!
# A123894: Expansion of g.f.: (1+x^2)*(1+2*x^2)*(1+3*x^2)*(1+4*x^2)/(1-5*x+10*x^2 -40*x^3+35*x^4-105*x^5 +50*x^6-100*x^7+24*x^8-24*x^9).

The programs for A123894, there is no canonical definition to state claims against.
-/

/-! ## A123894.P104509330736715817

`A014681(2*A270786(n))`
-/

namespace A123894.P104509330736715817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A270786 n).toNat

end

end A123894.P104509330736715817

/-! ## A123894.P7920119246185607558

`A023443(2*A270786(n))`
-/

namespace A123894.P7920119246185607558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A270786 n).toNat

end

end A123894.P7920119246185607558

/-!
# A123895: Restricted growth string for the (decimal expansion of the) number n.

The programs for A123895, there is no canonical definition to state claims against.
-/

/-! ## A123895.P15108580756611787707

`A358497(n)-A055641(A338754(n))`
-/

namespace A123895.P15108580756611787707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358497 n - A055641 (A338754 n).toNat

end

end A123895.P15108580756611787707

/-! ## A123895.P18250718142669706023

`A157928(A061674(n))+A136400(n)`
-/

namespace A123895.P18250718142669706023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A061674 n).toNat + A136400 n

end

end A123895.P18250718142669706023

/-!
# A123896: a(n) = A123895(n^2).

The programs for A123896, there is no canonical definition to state claims against.
-/

/-! ## A123896.P2864857648736821681

`A123895(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123896.P2864857648736821681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 (n ^ 2)

end

end A123896.P2864857648736821681

/-! ## A123896.P13873252626537849323

`or(char[1], A123895(n^2))`
-/

namespace A123896.P13873252626537849323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A123895 (n ^ 2))

end

end A123896.P13873252626537849323

/-! ## A123896.P1195496989692814282

`A123895(n*n)%Δ[n^3]`
-/

namespace A123896.P1195496989692814282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123895 (n * n)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A123896.P1195496989692814282

/-! ## A123896.P10123320264773606562

`A103205(A123895(n^2))`
-/

namespace A123896.P10123320264773606562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 (A123895 (n ^ 2)).toNat

end

end A123896.P10123320264773606562

/-! ## A123896.P10225744089095815009

`A007318(C(2, n))*A123895(n^2)`
-/

namespace A123896.P10225744089095815009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A123895 (n ^ 2)

end

end A123896.P10225744089095815009

/-! ## A123896.P14354671551526821913

`ceil(n/A000041(n))*A123895(n^2)`
-/

namespace A123896.P14354671551526821913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A000041 n : ℚ)⌉ * A123895 (n ^ 2)

end

end A123896.P14354671551526821913

/-! ## A123896.P1756971025174630409

`A123895(n^2)+A008683(4*(n+1))`
-/

namespace A123896.P1756971025174630409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 (n ^ 2) + A008683 (4 * (n + 1))

end

end A123896.P1756971025174630409

/-! ## A123896.P14032846487937213200

`A014963(4*n+2)*A123895(n^2)`
-/

namespace A123896.P14032846487937213200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A123895 (n ^ 2)

end

end A123896.P14032846487937213200

/-! ## A123896.P14637444085807726283

`A000041(C(2, n+1))*A123895(n^2)`
-/

namespace A123896.P14637444085807726283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 1)) * A123895 (n ^ 2)

end

end A123896.P14637444085807726283

/-! ## A123896.P3649741106182969301

`A000010((-1)^(2*n))*A123895(n^2)`
-/

namespace A123896.P3649741106182969301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((-1) ^ (2 * n)).toNat * A123895 (n ^ 2)

end

end A123896.P3649741106182969301

/-! ## A123896.P9200208032050657440

`A000203((-1)^(2*n))*A123895(n^2)`
-/

namespace A123896.P9200208032050657440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((-1) ^ (2 * n)).toNat * A123895 (n ^ 2)

end

end A123896.P9200208032050657440

/-! ## A123896.P13550092466903300001

`A057427(n)*A123895(A000290(n))`
-/

namespace A123896.P13550092466903300001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A123895 (A000290 n).toNat

end

end A123896.P13550092466903300001

/-! ## A123896.P7988375066972314962

`lcm(A034947(n+1), A123895(A000290(n)))`
-/

namespace A123896.P7988375066972314962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n + 1)) (A123895 (A000290 n).toNat)

end

end A123896.P7988375066972314962

/-! ## A123896.P16785801011197732705

`A000120(A053644(n))*A123895(n*n)`
-/

namespace A123896.P16785801011197732705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A053644 n).toNat * A123895 (n * n)

end

end A123896.P16785801011197732705

/-!
# A123897: Expansion of e.g.f.: exp(2*(exp(exp(x)-1)-1)/(2-exp(exp(x)-1))).

The programs for A123897, there is no canonical definition to state claims against.
-/

/-! ## A123897.P18048195111655595852

`A245895(n+1)+(3^n-∑[2^n])/2`
-/

namespace A123897.P18048195111655595852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245895 (n + 1) : ℚ) + ((3 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A123897.P18048195111655595852

/-!
# A123898: Expansion of e.g.f.: exp(2*(exp(exp(x/(1-x)) -1) -1)/(2 - exp(exp(x/(1-x) ) -1 ))).

The programs for A123898, there is no canonical definition to state claims against.
-/

/-! ## A123898.P8572667667504142609

`∑[A140490(A022558(n)²)]`
-/

namespace A123898.P8572667667504142609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140490 (A022558 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123898.P8572667667504142609

/-!
# A123899: a(n) = (n+1)!/(d(n)*d(n+1)) where d(n) = cancellation factor in reducing Sum_{k=0...n} 1/k! to lowest terms.

The programs for A123899, the canonical program `A123899.P16570814073594301494` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123899 has offset 0).

The definition of A123899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123899.P16570814073594301494

`(n+1)!/(A093101(n)*A093101(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A123899

/-- `(n+1)!/(A093101(n)*A093101(n+1))` -/
def P16570814073594301494.Spec : Prop :=
  ∀ n, P16570814073594301494.a n = (A123899 n : ℚ)

end A123899

/-! ## A123899.P4718909570500343925

`A061355(n+1)/A093101(n)`
-/

namespace A123899.P4718909570500343925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061355 (n + 1) : ℚ) / (A093101 n : ℚ)

end

end A123899.P4718909570500343925

namespace A123899

/-- `A061355(n+1)/A093101(n)` -/
def P4718909570500343925.Spec : Prop :=
  ∀ n, P4718909570500343925.a n = (A123899 n : ℚ)

end A123899

/-! ## A123899.P13831564250066486915

`A061355(n+1)/A000142(n)*A061355(n)`
-/

namespace A123899.P13831564250066486915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061355 (n + 1) : ℚ) / (A000142 n : ℚ) * (A061355 n : ℚ)

end

end A123899.P13831564250066486915

namespace A123899

/-- `A061355(n+1)/A000142(n)*A061355(n)` -/
def P13831564250066486915.Spec : Prop :=
  ∀ n, P13831564250066486915.a n = (A123899 n : ℚ)

end A123899

/-! ## A123899.P675448694413869952

`A061355(n+1)/A000522(n)*A061354(n)`
-/

namespace A123899.P675448694413869952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061355 (n + 1) : ℚ) / (A000522 n : ℚ) * (A061354 n : ℚ)

end

end A123899.P675448694413869952

namespace A123899

/-- `A061355(n+1)/A000522(n)*A061354(n)` -/
def P675448694413869952.Spec : Prop :=
  ∀ n, P675448694413869952.a n = (A123899 n : ℚ)

end A123899

/-! ## A123899.P17342502400891301274

`A000142(n+1)/(A093101(n+1)*A093101(n))`
-/

namespace A123899.P17342502400891301274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A093101 (n + 1) * A093101 n : ℚ)

end

end A123899.P17342502400891301274

namespace A123899

/-- `A000142(n+1)/(A093101(n+1)*A093101(n))` -/
def P17342502400891301274.Spec : Prop :=
  ∀ n, P17342502400891301274.a n = (A123899 n : ℚ)

end A123899

