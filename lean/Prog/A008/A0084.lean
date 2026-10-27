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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A008400: Crystal ball sequence for E_6 lattice.

The programs for A008400, there is no canonical definition to state claims against.
-/

/-! ## A008400.P14381560049566518855

`∑[A008399(n)]`
-/

namespace A008400.P14381560049566518855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008400.P14381560049566518855

/-! ## A008400.P7802279118063745388

`A008399(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A008400.P7802279118063745388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008399 n + a (A023443 n).toNat

end

end A008400.P7802279118063745388

/-! ## A008400.P10343271155997367916

`A008399(n)+a(A000027(n)-1)` with `a(0)=1`
-/

namespace A008400.P10343271155997367916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008399 n + a (A000027 n - 1).toNat

end

end A008400.P10343271155997367916

/-! ## A008400.P11667735766219157447

`A008399(n)+A008683(A050932(2*n+5))^n*a(n-1)` with `a(0)=1`
-/

namespace A008400.P11667735766219157447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008399 n + A008683 (A050932 (2 * n + 5)).toNat ^ n * a (n - 1)

end

end A008400.P11667735766219157447

/-!
# A008401: Coordination sequence for {E_6}* lattice.

The programs for A008401, there is no canonical definition to state claims against.
-/

/-! ## A008401.P12593139389247622098

`A004116(A005897(n))*A004277(n)`
-/

namespace A008401.P12593139389247622098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004116 (A005897 n).toNat * A004277 n

end

end A008401.P12593139389247622098

/-! ## A008401.P11176327179067097516

`lcm(A004116(A005897(n)), A008458(n))`
-/

namespace A008401.P11176327179067097516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004116 (A005897 n).toNat) (A008458 n)

end

end A008401.P11176327179067097516

/-! ## A008401.P17334816474280818338

`A000267(n²)*A004116(A005897(n))`
-/

namespace A008401.P17334816474280818338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (n ^ 2) * A004116 (A005897 n).toNat

end

end A008401.P17334816474280818338

/-! ## A008401.P3652259277213226821

`record[A124625(n)]*A004116(A005897(n))`
-/

namespace A008401.P3652259277213226821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A004116 (A005897 n).toNat

end

end A008401.P3652259277213226821

/-! ## A008401.P4518868376979383495

`A004116(A005897(n))*A004275(n+1)`
-/

namespace A008401.P4518868376979383495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004116 (A005897 n).toNat * A004275 (n + 1)

end

end A008401.P4518868376979383495

/-!
# A008402: Crystal ball sequence for {E_6}* lattice.

The programs for A008402, the canonical program `A008402.P7580682611821403391` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008402 has offset 0).

The definition of A008402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008402.P7580682611821403391

`1+3*n*(n+1)*(n²+n+1)²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008402

/-- `1+3*n*(n+1)*(n²+n+1)²` -/
def P7580682611821403391.Spec : Prop :=
  ∀ n, (P7580682611821403391.a n : ℤ) = A008402 n

theorem P7580682611821403391.correct : P7580682611821403391.Spec := by
  intro n
  simp only [A008402]

end A008402

/-! ## A008402.P10363727588162480711

`∑[A008401(n)]`
-/

namespace A008402.P10363727588162480711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008402.P10363727588162480711

namespace A008402

/-- `∑[A008401(n)]` -/
def P10363727588162480711.Spec : Prop :=
  ∀ n, P10363727588162480711.a n = A008402 n

end A008402

/-! ## A008402.P1775161473054370785

`Δ[A168029(n)-A208545(n+1)]`
-/

namespace A008402.P1775161473054370785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168029 n - A208545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008402.P1775161473054370785

namespace A008402

/-- `Δ[A168029(n)-A208545(n+1)]` -/
def P1775161473054370785.Spec : Prop :=
  ∀ n, P1775161473054370785.a n = A008402 n

end A008402

/-! ## A008402.P10181016341317907663

`or(1, A059986(A002378(n)))`
-/

namespace A008402.P10181016341317907663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A059986 (A002378 n).toNat)

end

end A008402.P10181016341317907663

namespace A008402

/-- `or(1, A059986(A002378(n)))` -/
def P10181016341317907663.Spec : Prop :=
  ∀ n, P10181016341317907663.a n = A008402 n

end A008402

/-!
# A008404: Number of Costas arrays of order n, counting rotations and flips as distinct.

The programs for A008404, there is no canonical definition to state claims against.
-/

/-! ## A008404.P3585411835036326817

`A170815(A250248(n+1))`
-/

namespace A008404.P3585411835036326817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170815 (A250248 (n + 1)).toNat

end

end A008404.P3585411835036326817

/-! ## A008404.P12395764689124726555

`A170815(A250249(n+1))`
-/

namespace A008404.P12395764689124726555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170815 (A250249 (n + 1)).toNat

end

end A008404.P12395764689124726555

/-! ## A008404.P7849263962203095192

`A170815(A341936(n)+1)`
-/

namespace A008404.P7849263962203095192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170815 (A341936 n + 1).toNat

end

end A008404.P7849263962203095192

/-! ## A008404.P15382617051236082104

`A170815(A229621(n+1)+1)`
-/

namespace A008404.P15382617051236082104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170815 (A229621 (n + 1) + 1).toNat

end

end A008404.P15382617051236082104

/-!
# A008406: Triangle T(n,k) read by rows, giving number of graphs with n nodes (n >= 1) and k edges (0 <= k <= n(n-1)/2).

The programs for A008406, there is no canonical definition to state claims against.
-/

/-! ## A008406.P15690289774330052426

`A100196(or(A070166(n), A185246(2*n+1)))`
-/

namespace A008406.P15690289774330052426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.lor (A070166 n) (A185246 (2 * n + 1))).toNat

end

end A008406.P15690289774330052426

/-! ## A008406.P12379679728070465459

`A100196(A070166(n))%A168134(n+3)`
-/

namespace A008406.P12379679728070465459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100196 (A070166 n).toNat) (A168134 (n + 3))

end

end A008406.P12379679728070465459

/-! ## A008406.P15728523589667054358

`round(A039735(n+1)/A107577(A079025(n+2)))`
-/

namespace A008406.P15728523589667054358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A039735 (n + 1) : ℚ) / (A107577 (A079025 (n + 2)).toNat : ℚ))

end

end A008406.P15728523589667054358

/-! ## A008406.P379161405961132015

`and(A039735(n+1), A152388(n+1))`
-/

namespace A008406.P379161405961132015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039735 (n + 1)) (A152388 (n + 1))

end

end A008406.P379161405961132015

/-! ## A008406.P18222463078334616519

`and(A039735(n+1), A186559(n+1))`
-/

namespace A008406.P18222463078334616519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039735 (n + 1)) (A186559 (n + 1))

end

end A008406.P18222463078334616519

/-!
# A008407: Minimal difference s(n) between beginning and end of n consecutive large primes (n-tuplet) permitted by divisibility considerations.

The programs for A008407, there is no canonical definition to state claims against.
-/

/-! ## A008407.P17503474082895466118

`A020497(n+1)-1`
-/

namespace A008407.P17503474082895466118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020497 (n + 1) - 1

end

end A008407.P17503474082895466118

/-! ## A008407.P13784043915650590649

`A004442(A020497(n+1))`
-/

namespace A008407.P13784043915650590649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A020497 (n + 1)).toNat

end

end A008407.P13784043915650590649

/-! ## A008407.P14287012649897328595

`A046666(A020497(n+1)+1)`
-/

namespace A008407.P14287012649897328595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A020497 (n + 1) + 1).toNat

end

end A008407.P14287012649897328595

/-! ## A008407.P10506236591451094985

`A023445(A020497(n+1)+2)`
-/

namespace A008407.P10506236591451094985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A020497 (n + 1) + 2).toNat

end

end A008407.P10506236591451094985

/-! ## A008407.P16213001432254802069

`xor(1, A020497(A000027(n+1)))`
-/

namespace A008407.P16213001432254802069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A020497 (A000027 (n + 1)).toNat)

end

end A008407.P16213001432254802069

/-! ## A008407.P10129236556589292070

`xor(A020497(n+1), A055500(A049084(2*(n+1))))`
-/

namespace A008407.P10129236556589292070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020497 (n + 1)) (A055500 (A049084 (2 * (n + 1))).toNat)

end

end A008407.P10129236556589292070

/-! ## A008407.P3780800565661263074

`and(A020497(n+1), A158525(n+4))`
-/

namespace A008407.P3780800565661263074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020497 (n + 1)) (A158525 (n + 4))

end

end A008407.P3780800565661263074

/-! ## A008407.P6798295127476685832

`and(A002446(n), A020497(n+1))`
-/

namespace A008407.P6798295127476685832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002446 n) (A020497 (n + 1))

end

end A008407.P6798295127476685832

/-! ## A008407.P7923906946611519905

`and(A005367(n), A020497(n+1))`
-/

namespace A008407.P7923906946611519905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005367 n) (A020497 (n + 1))

end

end A008407.P7923906946611519905

/-! ## A008407.P8653815987019367511

`and(A020497(n+1), A286778(n))`
-/

namespace A008407.P8653815987019367511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020497 (n + 1)) (A286778 n)

end

end A008407.P8653815987019367511

/-! ## A008407.P8242301649646389224

`and(A020497(n+1), A143960(n+1))`
-/

namespace A008407.P8242301649646389224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020497 (n + 1)) (A143960 (n + 1))

end

end A008407.P8242301649646389224

/-! ## A008407.P3063637201017641564

`and(A020497(n+1), A170940(n+1))`
-/

namespace A008407.P3063637201017641564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020497 (n + 1)) (A170940 (n + 1))

end

end A008407.P3063637201017641564

/-!
# A008408: Theta series of Leech lattice.

The programs for A008408, there is no canonical definition to state claims against.
-/

/-! ## A008408.P16722597974149947648

`2*A008698(n)-A008692(n)`
-/

namespace A008408.P16722597974149947648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008698 n - A008692 n

end

end A008408.P16722597974149947648

/-! ## A008408.P2865112352432135286

`2*A008702(n)-A008698(n)`
-/

namespace A008408.P2865112352432135286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008702 n - A008698 n

end

end A008408.P2865112352432135286

/-! ## A008408.P16378900940143852219

`2*A008703(n)-A008700(n)`
-/

namespace A008408.P16378900940143852219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008703 n - A008700 n

end

end A008408.P16378900940143852219

/-! ## A008408.P7485645234307413066

`2*A008697(n)-A008691(n)`
-/

namespace A008408.P7485645234307413066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008697 n - A008691 n

end

end A008408.P7485645234307413066

/-! ## A008408.P9593485184104972291

`2*A008699(n)-A008693(n)`
-/

namespace A008408.P9593485184104972291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008699 n - A008693 n

end

end A008408.P9593485184104972291

/-! ## A008408.P4157207598736009338

`A008702(n)+A008703(n)-A008699(n)`
-/

namespace A008408.P4157207598736009338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008702 n + (A008703 n - A008699 n)

end

end A008408.P4157207598736009338

/-! ## A008408.P17735608282591933333

`A008690(n)+A008698(n)-A008411(n)`
-/

namespace A008408.P17735608282591933333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n + (A008698 n - A008411 n)

end

end A008408.P17735608282591933333

/-! ## A008408.P5483455177374837553

`A008694(n)+A008697(n)-A008690(n)`
-/

namespace A008408.P5483455177374837553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008694 n + (A008697 n - A008690 n)

end

end A008408.P5483455177374837553

/-! ## A008408.P17527685338022621471

`2*A008704(n)-A008702(n)`
-/

namespace A008408.P17527685338022621471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008704 n - A008702 n

end

end A008408.P17527685338022621471

/-! ## A008408.P15350700128874086651

`A008693(n)+A008704(n)-A008692(n)`
-/

namespace A008408.P15350700128874086651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008693 n + (A008704 n - A008692 n)

end

end A008408.P15350700128874086651

/-! ## A008408.P14855249346190251740

`A008698(n)+A008704(n)-A008696(n)`
-/

namespace A008408.P14855249346190251740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008698 n + (A008704 n - A008696 n)

end

end A008408.P14855249346190251740

/-! ## A008408.P9925889271887943842

`A008699(n)+A008704(n)-A008697(n)`
-/

namespace A008408.P9925889271887943842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008699 n + (A008704 n - A008697 n)

end

end A008408.P9925889271887943842

/-! ## A008408.P9427279598009038870

`A008700(n)+A008704(n)-A008698(n)`
-/

namespace A008408.P9427279598009038870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008700 n + (A008704 n - A008698 n)

end

end A008408.P9427279598009038870

/-! ## A008408.P14802667756387876929

`A008702(n)+A008704(n)-A008700(n)`
-/

namespace A008408.P14802667756387876929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008702 n + (A008704 n - A008700 n)

end

end A008408.P14802667756387876929

/-! ## A008408.P9729513968344340593

`A008703(n)+A008704(n)-A008701(n)`
-/

namespace A008408.P9729513968344340593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008703 n + (A008704 n - A008701 n)

end

end A008408.P9729513968344340593

/-! ## A008408.P13525189157189678629

`2*A008700(n)-A008695(n)`
-/

namespace A008408.P13525189157189678629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008700 n - A008695 n

end

end A008408.P13525189157189678629

/-! ## A008408.P16310493888337082646

`A008695(n)+A008704(n)-A008693(n)`
-/

namespace A008408.P16310493888337082646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008695 n + (A008704 n - A008693 n)

end

end A008408.P16310493888337082646

/-! ## A008408.P7555212774290792939

`A008696(n)+A008704(n)-A008695(n)`
-/

namespace A008408.P7555212774290792939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008696 n + (A008704 n - A008695 n)

end

end A008408.P7555212774290792939

/-! ## A008408.P2845901674149582399

`A056946(4*n)`
-/

namespace A008408.P2845901674149582399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056946 (4 * n)

end

end A008408.P2845901674149582399

/-!
# A008409: Theta series of 16-dimensional Barnes-Wall lattice.

The programs for A008409, there is no canonical definition to state claims against.
-/

/-! ## A008409.P4692826511532109366

`A239917(2*n)`
-/

namespace A008409.P4692826511532109366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239917 (2 * n)

end

end A008409.P4692826511532109366

/-! ## A008409.P11126087971353478683

`A008774(2*n)`
-/

namespace A008409.P11126087971353478683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008774 (2 * n)

end

end A008409.P11126087971353478683

/-! ## A008409.P18395253312239972751

`xor(1, xor(1, A008774(n+n)))`
-/

namespace A008409.P18395253312239972751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A008774 (n + n)))

end

end A008409.P18395253312239972751

/-! ## A008409.P16414506188093199919

`or(A000007(n), A008774(A005843(n)))`
-/

namespace A008409.P16414506188093199919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A008774 (A005843 n).toNat)

end

end A008409.P16414506188093199919

/-! ## A008409.P13876130871270725618

`A014713(2*n)+A014711(2*n)`
-/

namespace A008409.P13876130871270725618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014713 (2 * n) + A014711 (2 * n)

end

end A008409.P13876130871270725618

/-! ## A008409.P12342469166369472757

`A077957(n+1+n)+A008774(n+n)`
-/

namespace A008409.P12342469166369472757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (n + 1 + n) + A008774 (n + n)

end

end A008409.P12342469166369472757

/-! ## A008409.P17881640403503303653

`A008774(n+n)+A001222(A261718(A000217(n)))`
-/

namespace A008409.P17881640403503303653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008774 (n + n) + A001222 (A261718 (A000217 n).toNat).toNat

end

end A008409.P17881640403503303653

/-!
# A008410: a(0) = 1, a(n) = 480*sigma_7(n).

The programs for A008410, there is no canonical definition to state claims against.
-/

/-! ## A008410.P8449704100706245079

`A282096(n)-A005843(n)*A013973(n)`
-/

namespace A008410.P8449704100706245079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282096 n - A005843 n * A013973 n

end

end A008410.P8449704100706245079

/-!
# A008411: Theta series of direct sum of 3 copies of E_8 lattice (the Niemeier lattice of type E_8^3).

The programs for A008411, there is no canonical definition to state claims against.
-/

/-! ## A008411.P9146550378762239125

`2*A008691(n)-A008700(n)`
-/

namespace A008411.P9146550378762239125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008691 n - A008700 n

end

end A008411.P9146550378762239125

/-! ## A008411.P1883506690483485381

`(A008693(n)+A008688(n))/2`
-/

namespace A008411.P1883506690483485381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008693 n + A008688 n : ℚ) / 2

end

end A008411.P1883506690483485381

/-! ## A008411.P9037240146727797638

`2*A008690(n)-A008693(n)`
-/

namespace A008411.P9037240146727797638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008690 n - A008693 n

end

end A008411.P9037240146727797638

/-! ## A008411.P4835420828713588531

`A008690(n)+A008691(n)-A008696(n)`
-/

namespace A008411.P4835420828713588531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n + (A008691 n - A008696 n)

end

end A008411.P4835420828713588531

/-! ## A008411.P15484753945435141525

`A008690(n)+A008692(n)-A008698(n)`
-/

namespace A008411.P15484753945435141525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n + (A008692 n - A008698 n)

end

end A008411.P15484753945435141525

/-! ## A008411.P14498960483835587672

`2*A008692(n)-A008704(n)`
-/

namespace A008411.P14498960483835587672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008692 n - A008704 n

end

end A008411.P14498960483835587672

/-! ## A008411.P1652564315992473186

`A008688(n)+A008704(n)-A008691(n)`
-/

namespace A008411.P1652564315992473186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008688 n + (A008704 n - A008691 n)

end

end A008411.P1652564315992473186

/-!
# A008412: Coordination sequence for 4-dimensional cubic lattice (points on surface of 4-dimensional cross-polytope).

The programs for A008412, the canonical program `A008412.P13878766666542366952` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008412 has offset 0).

The definition of A008412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008412.P13878766666542366952

`A005899(n)+A005899(n-1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008412

/-- `A005899(n)+A005899(n-1)+a(n-1)` -/
def P13878766666542366952.Spec : Prop :=
  ∀ n, P13878766666542366952.a n = A008412 n

theorem P13878766666542366952.correct : P13878766666542366952.Spec := by
  intro n
  simp only [A008412]

end A008412

/-! ## A008412.P387765389557630346

`A115293(n)+a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A008412.P387765389557630346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  A115293 n + a (n - 2)

end

end A008412.P387765389557630346

namespace A008412

/-- `A115293(n)+a(n-2)` -/
def P387765389557630346.Spec : Prop :=
  ∀ n, P387765389557630346.a n = A008412 n

end A008412

/-! ## A008412.P13738820850264803411

`A143166(n)+A008706(n)`
-/

namespace A008412.P13738820850264803411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143166 n + A008706 n

end

end A008412.P13738820850264803411

namespace A008412

/-- `A143166(n)+A008706(n)` -/
def P13738820850264803411.Spec : Prop :=
  ∀ n, P13738820850264803411.a n = A008412 n

end A008412

/-! ## A008412.P5121228481525884776

`A259110(n)+A008458(n)`
-/

namespace A008412.P5121228481525884776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259110 n + A008458 n

end

end A008412.P5121228481525884776

namespace A008412

/-- `A259110(n)+A008458(n)` -/
def P5121228481525884776.Spec : Prop :=
  ∀ n, P5121228481525884776.a n = A008412 n

end A008412

/-! ## A008412.P12941758604364162576

`A008532(n)-A035597(n)`
-/

namespace A008412.P12941758604364162576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008532 n - A035597 n

end

end A008412.P12941758604364162576

namespace A008412

/-- `A008532(n)-A035597(n)` -/
def P12941758604364162576.Spec : Prop :=
  ∀ n, P12941758604364162576.a n = A008412 n

end A008412

/-! ## A008412.P9558341486784714315

`A008529(n)-A061804(n)`
-/

namespace A008412.P9558341486784714315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008529 n - A061804 n

end

end A008412.P9558341486784714315

namespace A008412

/-- `A008529(n)-A061804(n)` -/
def P9558341486784714315.Spec : Prop :=
  ∀ n, P9558341486784714315.a n = A008412 n

theorem P9558341486784714315.correct : P9558341486784714315.Spec := by
  intro n
  simp only [A008412, Nat.add_sub_cancel, A008412.P9558341486784714315.a, A008412.P13878766666542366952.a, A005899, A005899.P4162979677913820766.a, A008529, A008529.P13531353891507600582.a, A061804, A061804.P16305426185761710400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008412

/-! ## A008412.P6839379229953894202

`A289721(n)-A004467(n)`
-/

namespace A008412.P6839379229953894202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289721 n - A004467 n

end

end A008412.P6839379229953894202

namespace A008412

/-- `A289721(n)-A004467(n)` -/
def P6839379229953894202.Spec : Prop :=
  ∀ n, P6839379229953894202.a n = A008412 n

end A008412

/-! ## A008412.P4742105497754357412

`A359096(n+1)-A033991(n)`
-/

namespace A008412.P4742105497754357412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359096 (n + 1) - A033991 n

end

end A008412.P4742105497754357412

namespace A008412

/-- `A359096(n+1)-A033991(n)` -/
def P4742105497754357412.Spec : Prop :=
  ∀ n, P4742105497754357412.a n = A008412 n

end A008412

/-! ## A008412.P6728989730678957192

`A008574(n)+2*A035597(n)`
-/

namespace A008412.P6728989730678957192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + 2 * A035597 n

end

end A008412.P6728989730678957192

namespace A008412

/-- `A008574(n)+2*A035597(n)` -/
def P6728989730678957192.Spec : Prop :=
  ∀ n, P6728989730678957192.a n = A008412 n

end A008412

/-! ## A008412.P15929910686989126154

`2*A001845(n)-A005899(n)`
-/

namespace A008412.P15929910686989126154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001845 n - A005899 n

end

end A008412.P15929910686989126154

namespace A008412

/-- `2*A001845(n)-A005899(n)` -/
def P15929910686989126154.Spec : Prop :=
  ∀ n, P15929910686989126154.a n = A008412 n

end A008412

/-! ## A008412.P4987976315853385240

`2*A008532(n)-A001386(n)`
-/

namespace A008412.P4987976315853385240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008532 n - A001386 n

end

end A008412.P4987976315853385240

namespace A008412

/-- `2*A008532(n)-A001386(n)` -/
def P4987976315853385240.Spec : Prop :=
  ∀ n, P4987976315853385240.a n = A008412 n

end A008412

/-! ## A008412.P740555914819512217

`2*A001846(n)-A008413(n)`
-/

namespace A008412.P740555914819512217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001846 n - A008413 n

end

end A008412.P740555914819512217

namespace A008412

/-- `2*A001846(n)-A008413(n)` -/
def P740555914819512217.Spec : Prop :=
  ∀ n, P740555914819512217.a n = A008412 n

end A008412

/-! ## A008412.P12295495224316283719

`A001386(n)-2*A035597(n)`
-/

namespace A008412.P12295495224316283719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001386 n - 2 * A035597 n

end

end A008412.P12295495224316283719

namespace A008412

/-- `A001386(n)-2*A035597(n)` -/
def P12295495224316283719.Spec : Prop :=
  ∀ n, P12295495224316283719.a n = A008412 n

end A008412

/-! ## A008412.P18446010667765200709

`A008574(n)+A143166(n)+n`
-/

namespace A008412.P18446010667765200709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A143166 n + (n : ℤ))

end

end A008412.P18446010667765200709

namespace A008412

/-- `A008574(n)+A143166(n)+n` -/
def P18446010667765200709.Spec : Prop :=
  ∀ n, P18446010667765200709.a n = A008412 n

end A008412

/-! ## A008412.P18222101873520526483

`A005894(n)+A005898(n)-A005899(n)`
-/

namespace A008412.P18222101873520526483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 n + (A005898 n - A005899 n)

end

end A008412.P18222101873520526483

namespace A008412

/-- `A005894(n)+A005898(n)-A005899(n)` -/
def P18222101873520526483.Spec : Prop :=
  ∀ n, P18222101873520526483.a n = A008412 n

end A008412

/-! ## A008412.P5839567591170734389

`A035597(n+1)+A035597(n)-A005899(n)`
-/

namespace A008412.P5839567591170734389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035597 (n + 1) + (A035597 n - A005899 n)

end

end A008412.P5839567591170734389

namespace A008412

/-- `A035597(n+1)+A035597(n)-A005899(n)` -/
def P5839567591170734389.Spec : Prop :=
  ∀ n, P5839567591170734389.a n = A008412 n

end A008412

/-! ## A008412.P11097186781597593755

`A287324(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A008412.P11097186781597593755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287324 (n + 1) - a (n - 1)

end

end A008412.P11097186781597593755

namespace A008412

/-- `A287324(n+1)-a(n-1)` -/
def P11097186781597593755.Spec : Prop :=
  ∀ n, P11097186781597593755.a n = A008412 n

end A008412

/-! ## A008412.P16715140448999560919

`A035598(n+1)-(A035598(n)+A005899(n))`
-/

namespace A008412.P16715140448999560919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035598 (n + 1) - (A035598 n + A005899 n)

end

end A008412.P16715140448999560919

namespace A008412

/-- `A035598(n+1)-(A035598(n)+A005899(n))` -/
def P16715140448999560919.Spec : Prop :=
  ∀ n, P16715140448999560919.a n = A008412 n

end A008412

/-! ## A008412.P3676173330854511317

`A035598(n+1)+A035598(n)-A008413(n)`
-/

namespace A008412.P3676173330854511317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035598 (n + 1) + (A035598 n - A008413 n)

end

end A008412.P3676173330854511317

namespace A008412

/-- `A035598(n+1)+A035598(n)-A008413(n)` -/
def P3676173330854511317.Spec : Prop :=
  ∀ n, P3676173330854511317.a n = A008412 n

end A008412

/-! ## A008412.P14762945432316092305

`A035599(n+1)-(A035599(n)+A008413(n))`
-/

namespace A008412.P14762945432316092305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035599 (n + 1) - (A035599 n + A008413 n)

end

end A008412.P14762945432316092305

namespace A008412

/-- `A035599(n+1)-(A035599(n)+A008413(n))` -/
def P14762945432316092305.Spec : Prop :=
  ∀ n, P14762945432316092305.a n = A008412 n

end A008412

/-!
# A008413: Coordination sequence for 5-dimensional cubic lattice.

The programs for A008413, the canonical program `A008413.P448789103090804315` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008413 has offset 0).

The definition of A008413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008413.P13865730076408763767

`∑[∑[A115293(n)]]`
-/

namespace A008413.P13865730076408763767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115293 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008413.P13865730076408763767

namespace A008413

/-- `∑[∑[A115293(n)]]` -/
def P13865730076408763767.Spec : Prop :=
  ∀ n, P13865730076408763767.a n = A008413 n

end A008413

/-! ## A008413.P448789103090804315

`A187756(n)+A005919(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008413

/-- `A187756(n)+A005919(n)` -/
def P448789103090804315.Spec : Prop :=
  ∀ n, P448789103090804315.a n = A008413 n

theorem P448789103090804315.correct : P448789103090804315.Spec := by
  intro n
  simp only [A008413]

end A008413

/-! ## A008413.P14190268726848917094

`A005899(n)+2*A035598(n)`
-/

namespace A008413.P14190268726848917094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n + 2 * A035598 n

end

end A008413.P14190268726848917094

namespace A008413

/-- `A005899(n)+2*A035598(n)` -/
def P14190268726848917094.Spec : Prop :=
  ∀ n, P14190268726848917094.a n = A008413 n

end A008413

/-! ## A008413.P13513464376155094414

`2*A001846(n)-A008412(n)`
-/

namespace A008413.P13513464376155094414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001846 n - A008412 n

end

end A008413.P13513464376155094414

namespace A008413

/-- `2*A001846(n)-A008412(n)` -/
def P13513464376155094414.Spec : Prop :=
  ∀ n, P13513464376155094414.a n = A008413 n

end A008413

/-! ## A008413.P15369898028055014796

`A005899(n)+n*A217873(n)`
-/

namespace A008413.P15369898028055014796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n + (n : ℤ) * A217873 n

end

end A008413.P15369898028055014796

namespace A008413

/-- `A005899(n)+n*A217873(n)` -/
def P15369898028055014796.Spec : Prop :=
  ∀ n, P15369898028055014796.a n = A008413 n

end A008413

/-! ## A008413.P11635217277303942396

`∑[A287324(n+1)]`
-/

namespace A008413.P11635217277303942396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008413.P11635217277303942396

namespace A008413

/-- `∑[A287324(n+1)]` -/
def P11635217277303942396.Spec : Prop :=
  ∀ n, P11635217277303942396.a n = A008413 n

end A008413

/-! ## A008413.P17271071531757003413

`∑[record[A287324(A286378(n))]]`
-/

namespace A008413.P17271071531757003413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287324 (A286378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008413.P17271071531757003413

namespace A008413

/-- `∑[record[A287324(A286378(n))]]` -/
def P17271071531757003413.Spec : Prop :=
  ∀ n, P17271071531757003413.a n = A008413 n

end A008413

/-! ## A008413.P12084580171979036070

`A035598(n+1)+A035598(n)-A008412(n)`
-/

namespace A008413.P12084580171979036070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035598 (n + 1) + (A035598 n - A008412 n)

end

end A008413.P12084580171979036070

namespace A008413

/-- `A035598(n+1)+A035598(n)-A008412(n)` -/
def P12084580171979036070.Spec : Prop :=
  ∀ n, P12084580171979036070.a n = A008413 n

end A008413

/-! ## A008413.P14625945195462948200

`A035599(n+1)-(A035599(n)+A008412(n))`
-/

namespace A008413.P14625945195462948200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035599 (n + 1) - (A035599 n + A008412 n)

end

end A008413.P14625945195462948200

namespace A008413

/-- `A035599(n+1)-(A035599(n)+A008412(n))` -/
def P14625945195462948200.Spec : Prop :=
  ∀ n, P14625945195462948200.a n = A008413 n

end A008413

/-! ## A008413.P2895136330712094036

`A113413(eq[4, A002262(n)])`
-/

namespace A008413.P2895136330712094036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008413.P2895136330712094036

namespace A008413

/-- `A113413(eq[4, A002262(n)])` -/
def P2895136330712094036.Spec : Prop :=
  ∀ n, P2895136330712094036.a n = A008413 n

end A008413

/-! ## A008413.P7543196120293334452

`A035607(A052905(n+2))`
-/

namespace A008413.P7543196120293334452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A052905 (n + 2)).toNat

end

end A008413.P7543196120293334452

namespace A008413

/-- `A035607(A052905(n+2))` -/
def P7543196120293334452.Spec : Prop :=
  ∀ n, P7543196120293334452.a n = A008413 n

end A008413

/-! ## A008413.P2726005207461665675

`A035607(eq[4, A025581(n)])`
-/

namespace A008413.P2726005207461665675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008413.P2726005207461665675

namespace A008413

/-- `A035607(eq[4, A025581(n)])` -/
def P2726005207461665675.Spec : Prop :=
  ∀ n, P2726005207461665675.a n = A008413 n

end A008413

/-! ## A008413.P2292580599436917684

`A035607(A000124(n+4)+n-1)`
-/

namespace A008413.P2292580599436917684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A000124 (n + 4) + ((n : ℤ) - 1)).toNat

end

end A008413.P2292580599436917684

namespace A008413

/-- `A035607(A000124(n+4)+n-1)` -/
def P2292580599436917684.Spec : Prop :=
  ∀ n, P2292580599436917684.a n = A008413 n

end A008413

/-!
# A008414: Coordination sequence for 6-dimensional cubic lattice.

The programs for A008414, the canonical program `A008414.P48295776868654470` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008414 has offset 0).

The definition of A008414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008414.P9413148964554403013

`2*A001848(n)-A008415(n)`
-/

namespace A008414.P9413148964554403013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001848 n - A008415 n

end

end A008414.P9413148964554403013

namespace A008414

/-- `2*A001848(n)-A008415(n)` -/
def P9413148964554403013.Spec : Prop :=
  ∀ n, P9413148964554403013.a n = A008414 n

end A008414

/-! ## A008414.P48295776868654470

`A008412(n)+4*A069038(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008414

/-- `A008412(n)+4*A069038(n)` -/
def P48295776868654470.Spec : Prop :=
  ∀ n, P48295776868654470.a n = A008414 n

theorem P48295776868654470.correct : P48295776868654470.Spec := by
  intro n
  simp only [A008414]

end A008414

/-! ## A008414.P625264099171692452

`∑[2*A008413(n)]-A008413(n)`
-/

namespace A008414.P625264099171692452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008413 n

end

end A008414.P625264099171692452

namespace A008414

/-- `∑[2*A008413(n)]-A008413(n)` -/
def P625264099171692452.Spec : Prop :=
  ∀ n, P625264099171692452.a n = A008414 n

end A008414

/-! ## A008414.P14898228555964567148

`A035599(n)+A035599(n)+A008412(n)`
-/

namespace A008414.P14898228555964567148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035599 n + (A035599 n + A008412 n)

end

end A008414.P14898228555964567148

namespace A008414

/-- `A035599(n)+A035599(n)+A008412(n)` -/
def P14898228555964567148.Spec : Prop :=
  ∀ n, P14898228555964567148.a n = A008414 n

end A008414

/-! ## A008414.P10455310360494081978

`A001847(n)+A001847(n)-A008413(n)`
-/

namespace A008414.P10455310360494081978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001847 n + (A001847 n - A008413 n)

end

end A008414.P10455310360494081978

namespace A008414

/-- `A001847(n)+A001847(n)-A008413(n)` -/
def P10455310360494081978.Spec : Prop :=
  ∀ n, P10455310360494081978.a n = A008414 n

end A008414

/-! ## A008414.P13308974417329800915

`A069039(n+1)-A069039(A005843(n)%(n+1))`
-/

namespace A008414.P13308974417329800915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069039 (n + 1) - A069039 (Int.tmod (A005843 n) (n + 1 : ℤ)).toNat

end

end A008414.P13308974417329800915

namespace A008414

/-- `A069039(n+1)-A069039(A005843(n)%(n+1))` -/
def P13308974417329800915.Spec : Prop :=
  ∀ n, P13308974417329800915.a n = A008414 n

end A008414

/-! ## A008414.P11556818928287014646

`∑[∑[A287324(n+1)+A287324(n)]]`
-/

namespace A008414.P11556818928287014646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287324 (n + 1) + A287324 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008414.P11556818928287014646

namespace A008414

/-- `∑[∑[A287324(n+1)+A287324(n)]]` -/
def P11556818928287014646.Spec : Prop :=
  ∀ n, P11556818928287014646.a n = A008414 n

end A008414

/-! ## A008414.P17289017890486640484

`A035599(n+1)+A035599(n)-A008413(n)`
-/

namespace A008414.P17289017890486640484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035599 (n + 1) + (A035599 n - A008413 n)

end

end A008414.P17289017890486640484

namespace A008414

/-- `A035599(n+1)+A035599(n)-A008413(n)` -/
def P17289017890486640484.Spec : Prop :=
  ∀ n, P17289017890486640484.a n = A008414 n

end A008414

/-! ## A008414.P184546356576188491

`A036453(2*n+1)*A364429(n)`
-/

namespace A008414.P184546356576188491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (2 * n + 1) * A364429 n

end

end A008414.P184546356576188491

namespace A008414

/-- `A036453(2*n+1)*A364429(n)` -/
def P184546356576188491.Spec : Prop :=
  ∀ n, P184546356576188491.a n = A008414 n

end A008414

/-! ## A008414.P882626418991489069

`A035607(A026054(n+4)-A026054(n+3))`
-/

namespace A008414.P882626418991489069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A026054 (n + 4) - A026054 (n + 3)).toNat

end

end A008414.P882626418991489069

namespace A008414

/-- `A035607(A026054(n+4)-A026054(n+3))` -/
def P882626418991489069.Spec : Prop :=
  ∀ n, P882626418991489069.a n = A008414 n

end A008414

/-!
# A008415: Coordination sequence for 7-dimensional cubic lattice.

The programs for A008415, the canonical program `A008415.P5760122249089442523` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008415 has offset 0).

The definition of A008415 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008415.P5760122249089442523

`A008414(n)+A008414(n-1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A008415

/-- `A008414(n)+A008414(n-1)+a(n-1)` -/
def P5760122249089442523.Spec : Prop :=
  ∀ n, P5760122249089442523.a n = A008415 n

theorem P5760122249089442523.correct : P5760122249089442523.Spec := by
  intro n
  simp only [A008415]

end A008415

/-! ## A008415.P16962809603758839198

`2*A001848(n)-A008414(n)`
-/

namespace A008415.P16962809603758839198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001848 n - A008414 n

end

end A008415.P16962809603758839198

namespace A008415

/-- `2*A001848(n)-A008414(n)` -/
def P16962809603758839198.Spec : Prop :=
  ∀ n, P16962809603758839198.a n = A008415 n

end A008415

/-! ## A008415.P10793112664801516758

`2*A001849(n)-A008416(n)`
-/

namespace A008415.P10793112664801516758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001849 n - A008416 n

end

end A008415.P10793112664801516758

namespace A008415

/-- `2*A001849(n)-A008416(n)` -/
def P10793112664801516758.Spec : Prop :=
  ∀ n, P10793112664801516758.a n = A008415 n

end A008415

/-! ## A008415.P1191571980412603347

`Δ[A008416(n)-A001849(n)]`
-/

namespace A008415.P1191571980412603347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008416 n - A001849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008415.P1191571980412603347

namespace A008415

/-- `Δ[A008416(n)-A001849(n)]` -/
def P1191571980412603347.Spec : Prop :=
  ∀ n, P1191571980412603347.a n = A008415 n

end A008415

/-! ## A008415.P3920313124393149763

`Δ[A035601(n)]-A008414(n)`
-/

namespace A008415.P3920313124393149763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008414 n

end

end A008415.P3920313124393149763

namespace A008415

/-- `Δ[A035601(n)]-A008414(n)` -/
def P3920313124393149763.Spec : Prop :=
  ∀ n, P3920313124393149763.a n = A008415 n

end A008415

/-! ## A008415.P10649364703039290196

`A035607(A000096(n+6)-6)`
-/

namespace A008415.P10649364703039290196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A000096 (n + 6) - 6).toNat

end

end A008415.P10649364703039290196

namespace A008415

/-- `A035607(A000096(n+6)-6)` -/
def P10649364703039290196.Spec : Prop :=
  ∀ n, P10649364703039290196.a n = A008415 n

end A008415

/-! ## A008415.P7734649096482903002

`A035607(A000217(n+7)-7)`
-/

namespace A008415.P7734649096482903002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A000217 (n + 7) - 7).toNat

end

end A008415.P7734649096482903002

namespace A008415

/-- `A035607(A000217(n+7)-7)` -/
def P7734649096482903002.Spec : Prop :=
  ∀ n, P7734649096482903002.a n = A008415 n

end A008415

/-!
# A008416: Coordination sequence for 8-dimensional cubic lattice.

The programs for A008416, the canonical program `A008416.P15332718079879402736` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008416 has offset 0).

The definition of A008416 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008416.P15332718079879402736

`A008415(n)+A008415(n-1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A008416

/-- `A008415(n)+A008415(n-1)+a(n-1)` -/
def P15332718079879402736.Spec : Prop :=
  ∀ n, P15332718079879402736.a n = A008416 n

theorem P15332718079879402736.correct : P15332718079879402736.Spec := by
  intro n
  simp only [A008416]

end A008416

/-! ## A008416.P9989096103602717939

`A008414(n)+2*A035601(n)`
-/

namespace A008416.P9989096103602717939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008414 n + 2 * A035601 n

end

end A008416.P9989096103602717939

namespace A008416

/-- `A008414(n)+2*A035601(n)` -/
def P9989096103602717939.Spec : Prop :=
  ∀ n, P9989096103602717939.a n = A008416 n

end A008416

/-! ## A008416.P17983411332158118119

`2*A001849(n)-A008415(n)`
-/

namespace A008416.P17983411332158118119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001849 n - A008415 n

end

end A008416.P17983411332158118119

namespace A008416

/-- `2*A001849(n)-A008415(n)` -/
def P17983411332158118119.Spec : Prop :=
  ∀ n, P17983411332158118119.a n = A008416 n

end A008416

/-! ## A008416.P12868672079001940296

`2*A008417(n)-A008418(n)`
-/

namespace A008416.P12868672079001940296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008417 n - A008418 n

end

end A008416.P12868672079001940296

namespace A008416

/-- `2*A008417(n)-A008418(n)` -/
def P12868672079001940296.Spec : Prop :=
  ∀ n, P12868672079001940296.a n = A008416 n

end A008416

/-! ## A008416.P8755195376506629009

`Δ[Δ[A099196(floor(n²/(n+1)))]]`
-/

namespace A008416.P8755195376506629009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008416.P8755195376506629009

namespace A008416

/-- `Δ[Δ[A099196(floor(n²/(n+1)))]]` -/
def P8755195376506629009.Spec : Prop :=
  ∀ n, P8755195376506629009.a n = A008416 n

end A008416

/-! ## A008416.P1954990875019544826

`Δ[A008418(n)-A008417(n)]`
-/

namespace A008416.P1954990875019544826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008418 n - A008417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008416.P1954990875019544826

namespace A008416

/-- `Δ[A008418(n)-A008417(n)]` -/
def P1954990875019544826.Spec : Prop :=
  ∀ n, P1954990875019544826.a n = A008416 n

end A008416

/-! ## A008416.P15834881876583448925

`A122542(A000217(n+9)-(n+1))`
-/

namespace A008416.P15834881876583448925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (A000217 (n + 9) - (n + 1 : ℤ)).toNat

end

end A008416.P15834881876583448925

namespace A008416

/-- `A122542(A000217(n+9)-(n+1))` -/
def P15834881876583448925.Spec : Prop :=
  ∀ n, P15834881876583448925.a n = A008416 n

end A008416

/-!
# A008417: Crystal ball sequence for 8-dimensional cubic lattice.

The programs for A008417, the canonical program `A008417.P12539990022854185462` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008417 has offset 0).

The definition of A008417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008417.P12539990022854185462

`∑[A008416(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A008417

/-- `∑[A008416(n)]` -/
def P12539990022854185462.Spec : Prop :=
  ∀ n, P12539990022854185462.a n = A008417 n

theorem P12539990022854185462.correct : P12539990022854185462.Spec := by
  intro n
  simp only [A008417]

end A008417

/-! ## A008417.P17278694973842844283

`Δ[A099196(n)]`
-/

namespace A008417.P17278694973842844283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008417.P17278694973842844283

namespace A008417

/-- `Δ[A099196(n)]` -/
def P17278694973842844283.Spec : Prop :=
  ∀ n, P17278694973842844283.a n = A008417 n

end A008417

/-! ## A008417.P1694361522453985797

`A008418(n)-a(n-1)` with `a(0)=1`
-/

namespace A008417.P1694361522453985797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008418 n - a (n - 1)

end

end A008417.P1694361522453985797

namespace A008417

/-- `A008418(n)-a(n-1)` -/
def P1694361522453985797.Spec : Prop :=
  ∀ n, P1694361522453985797.a n = A008417 n

end A008417

/-! ## A008417.P10327938293534377913

`A035602(n)+A001849(n)`
-/

namespace A008417.P10327938293534377913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035602 n + A001849 n

end

end A008417.P10327938293534377913

namespace A008417

/-- `A035602(n)+A001849(n)` -/
def P10327938293534377913.Spec : Prop :=
  ∀ n, P10327938293534377913.a n = A008417 n

end A008417

/-! ## A008417.P800638980809873300

`A008419(n)-A035603(n)`
-/

namespace A008417.P800638980809873300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008419 n - A035603 n

end

end A008417.P800638980809873300

namespace A008417

/-- `A008419(n)-A035603(n)` -/
def P800638980809873300.Spec : Prop :=
  ∀ n, P800638980809873300.a n = A008417 n

end A008417

/-! ## A008417.P11188238568083938704

`A099195(n+1)+A099195(n)`
-/

namespace A008417.P11188238568083938704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099195 (n + 1) + A099195 n

end

end A008417.P11188238568083938704

namespace A008417

/-- `A099195(n+1)+A099195(n)` -/
def P11188238568083938704.Spec : Prop :=
  ∀ n, P11188238568083938704.a n = A008417 n

end A008417

/-! ## A008417.P12969366250082372265

`A099196(n+1)-A099196(n)`
-/

namespace A008417.P12969366250082372265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 (n + 1) - A099196 n

end

end A008417.P12969366250082372265

namespace A008417

/-- `A099196(n+1)-A099196(n)` -/
def P12969366250082372265.Spec : Prop :=
  ∀ n, P12969366250082372265.a n = A008417 n

end A008417

/-! ## A008417.P14750568778693781458

`(A008418(n)+A008416(n))/2`
-/

namespace A008417.P14750568778693781458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008418 n + A008416 n : ℚ) / 2

end

end A008417.P14750568778693781458

namespace A008417

/-- `(A008418(n)+A008416(n))/2` -/
def P14750568778693781458.Spec : Prop :=
  ∀ n, P14750568778693781458.a n = (A008417 n : ℚ)

end A008417

/-! ## A008417.P7928799617628641542

`A008419(n)-2*A099196(n)`
-/

namespace A008417.P7928799617628641542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008419 n - 2 * A099196 n

end

end A008417.P7928799617628641542

namespace A008417

/-- `A008419(n)-2*A099196(n)` -/
def P7928799617628641542.Spec : Prop :=
  ∀ n, P7928799617628641542.a n = A008417 n

end A008417

/-! ## A008417.P4301122941256728216

`A099193(n+1)+A099193(n)+A035602(n)`
-/

namespace A008417.P4301122941256728216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099193 (n + 1) + (A099193 n + A035602 n)

end

end A008417.P4301122941256728216

namespace A008417

/-- `A099193(n+1)+A099193(n)+A035602(n)` -/
def P4301122941256728216.Spec : Prop :=
  ∀ n, P4301122941256728216.a n = A008417 n

end A008417

/-! ## A008417.P12817265963493222387

`A099197(n+1)-(A099197(n)+A035603(n))`
-/

namespace A008417.P12817265963493222387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099197 (n + 1) - (A099197 n + A035603 n)

end

end A008417.P12817265963493222387

namespace A008417

/-- `A099197(n+1)-(A099197(n)+A035603(n))` -/
def P12817265963493222387.Spec : Prop :=
  ∀ n, P12817265963493222387.a n = A008417 n

end A008417

/-! ## A008417.P17635308513631988924

`A114123(eq[4, A002262(n)])`
-/

namespace A008417.P17635308513631988924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008417.P17635308513631988924

namespace A008417

/-- `A114123(eq[4, A002262(n)])` -/
def P17635308513631988924.Spec : Prop :=
  ∀ n, P17635308513631988924.a n = A008417 n

end A008417

/-! ## A008417.P16755839962378102760

`A114123(eq[5, A002260(n+1)])`
-/

namespace A008417.P16755839962378102760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008417.P16755839962378102760

namespace A008417

/-- `A114123(eq[5, A002260(n+1)])` -/
def P16755839962378102760.Spec : Prop :=
  ∀ n, P16755839962378102760.a n = A008417 n

end A008417

/-!
# A008418: Coordination sequence for 9-dimensional cubic lattice.

The programs for A008418, the canonical program `A008418.P12679540654999658898` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008418 has offset 0).

The definition of A008418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008418.P12679540654999658898

`A008415(n)+2*A035602(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A008418

/-- `A008415(n)+2*A035602(n)` -/
def P12679540654999658898.Spec : Prop :=
  ∀ n, P12679540654999658898.a n = A008418 n

theorem P12679540654999658898.correct : P12679540654999658898.Spec := by
  intro n
  simp only [A008418]

end A008418

/-! ## A008418.P12602749833132873538

`2*A008417(n)-A008416(n)`
-/

namespace A008418.P12602749833132873538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008417 n - A008416 n

end

end A008418.P12602749833132873538

namespace A008418

/-- `2*A008417(n)-A008416(n)` -/
def P12602749833132873538.Spec : Prop :=
  ∀ n, P12602749833132873538.a n = A008418 n

end A008418

/-! ## A008418.P2239328149039840916

`2*A008419(n)-A008420(n)`
-/

namespace A008418.P2239328149039840916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008419 n - A008420 n

end

end A008418.P2239328149039840916

namespace A008418

/-- `2*A008419(n)-A008420(n)` -/
def P2239328149039840916.Spec : Prop :=
  ∀ n, P2239328149039840916.a n = A008418 n

end A008418

/-! ## A008418.P2013096474853822470

`Δ[A008420(n)-A008419(n)]`
-/

namespace A008418.P2013096474853822470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008420 n - A008419 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008418.P2013096474853822470

namespace A008418

/-- `Δ[A008420(n)-A008419(n)]` -/
def P2013096474853822470.Spec : Prop :=
  ∀ n, P2013096474853822470.a n = A008418 n

end A008418

/-! ## A008418.P10010399498781047857

`Δ[A035603(n)]-A008416(n)`
-/

namespace A008418.P10010399498781047857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008416 n

end

end A008418.P10010399498781047857

namespace A008418

/-- `Δ[A035603(n)]-A008416(n)` -/
def P10010399498781047857.Spec : Prop :=
  ∀ n, P10010399498781047857.a n = A008418 n

end A008418

/-! ## A008418.P1727332945951691802

`A099196(n+1)-A099196(A267874(n+1)%(n+1))`
-/

namespace A008418.P1727332945951691802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 (n + 1) - A099196 (Int.tmod (A267874 (n + 1)) (n + 1 : ℤ)).toNat

end

end A008418.P1727332945951691802

namespace A008418

/-- `A099196(n+1)-A099196(A267874(n+1)%(n+1))` -/
def P1727332945951691802.Spec : Prop :=
  ∀ n, P1727332945951691802.a n = A008418 n

end A008418

/-! ## A008418.P17260268748603971434

`A099196(n+1)-A099196(A144328(∑[n+1])-1)`
-/

namespace A008418.P17260268748603971434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 (n + 1) - A099196 (A144328 (∑ j ∈ Finset.range (n + 1), f1 j) - 1).toNat

end

end A008418.P17260268748603971434

namespace A008418

/-- `A099196(n+1)-A099196(A144328(∑[n+1])-1)` -/
def P17260268748603971434.Spec : Prop :=
  ∀ n, P17260268748603971434.a n = A008418 n

end A008418

/-! ## A008418.P15961456680560534577

`A122542(A000217(n+9)+9)`
-/

namespace A008418.P15961456680560534577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (A000217 (n + 9) + 9).toNat

end

end A008418.P15961456680560534577

namespace A008418

/-- `A122542(A000217(n+9)+9)` -/
def P15961456680560534577.Spec : Prop :=
  ∀ n, P15961456680560534577.a n = A008418 n

end A008418

/-! ## A008418.P10805602549315423448

`A266213(A056000(n+6))`
-/

namespace A008418.P10805602549315423448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A056000 (n + 6)).toNat

end

end A008418.P10805602549315423448

namespace A008418

/-- `A266213(A056000(n+6))` -/
def P10805602549315423448.Spec : Prop :=
  ∀ n, P10805602549315423448.a n = A008418 n

end A008418

/-!
# A008419: Crystal ball sequence for 9-dimensional cubic lattice.

The programs for A008419, the canonical program `A008419.P5285812897450645151` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008419 has offset 0).

The definition of A008419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008419.P5285812897450645151

`∑[A008418(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A008419

/-- `∑[A008418(n)]` -/
def P5285812897450645151.Spec : Prop :=
  ∀ n, P5285812897450645151.a n = A008419 n

theorem P5285812897450645151.correct : P5285812897450645151.Spec := by
  intro n
  simp only [A008419]

end A008419

/-! ## A008419.P8299367124213570813

`Δ[A099197(n)]`
-/

namespace A008419.P8299367124213570813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008419.P8299367124213570813

namespace A008419

/-- `Δ[A099197(n)]` -/
def P8299367124213570813.Spec : Prop :=
  ∀ n, P8299367124213570813.a n = A008419 n

end A008419

/-! ## A008419.P10098563087287908036

`A008420(n)-a(n-1)` with `a(0)=1`
-/

namespace A008419.P10098563087287908036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008420 n - a (n - 1)

end

end A008419.P10098563087287908036

namespace A008419

/-- `A008420(n)-a(n-1)` -/
def P10098563087287908036.Spec : Prop :=
  ∀ n, P10098563087287908036.a n = A008419 n

end A008419

/-! ## A008419.P7918004954836474156

`A035603(n)+A008417(n)`
-/

namespace A008419.P7918004954836474156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035603 n + A008417 n

end

end A008419.P7918004954836474156

namespace A008419

/-- `A035603(n)+A008417(n)` -/
def P7918004954836474156.Spec : Prop :=
  ∀ n, P7918004954836474156.a n = A008419 n

end A008419

/-! ## A008419.P20396281960462538

`A008421(n)-A035604(n)`
-/

namespace A008419.P20396281960462538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008421 n - A035604 n

end

end A008419.P20396281960462538

namespace A008419

/-- `A008421(n)-A035604(n)` -/
def P20396281960462538.Spec : Prop :=
  ∀ n, P20396281960462538.a n = A008419 n

end A008419

/-! ## A008419.P14580906277727494323

`A099196(n)+∑[A008417(n)]`
-/

namespace A008419.P14580906277727494323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008419.P14580906277727494323

namespace A008419

/-- `A099196(n)+∑[A008417(n)]` -/
def P14580906277727494323.Spec : Prop :=
  ∀ n, P14580906277727494323.a n = A008419 n

end A008419

/-! ## A008419.P16934379115208872963

`A099196(n+1)+A099196(n)`
-/

namespace A008419.P16934379115208872963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 (n + 1) + A099196 n

end

end A008419.P16934379115208872963

namespace A008419

/-- `A099196(n+1)+A099196(n)` -/
def P16934379115208872963.Spec : Prop :=
  ∀ n, P16934379115208872963.a n = A008419 n

end A008419

/-! ## A008419.P2585303598446288444

`A099197(n+1)-A099197(n)`
-/

namespace A008419.P2585303598446288444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099197 (n + 1) - A099197 n

end

end A008419.P2585303598446288444

namespace A008419

/-- `A099197(n+1)-A099197(n)` -/
def P2585303598446288444.Spec : Prop :=
  ∀ n, P2585303598446288444.a n = A008419 n

end A008419

/-! ## A008419.P15331871779464605768

`∑[2*A008417(n)-A008416(n)]`
-/

namespace A008419.P15331871779464605768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008417 n - A008416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008419.P15331871779464605768

namespace A008419

/-- `∑[2*A008417(n)-A008416(n)]` -/
def P15331871779464605768.Spec : Prop :=
  ∀ n, P15331871779464605768.a n = A008419 n

end A008419

/-! ## A008419.P8023680849533427839

`A099195(n+1)+A099195(n)+A035603(n)`
-/

namespace A008419.P8023680849533427839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099195 (n + 1) + (A099195 n + A035603 n)

end

end A008419.P8023680849533427839

namespace A008419

/-- `A099195(n+1)+A099195(n)+A035603(n)` -/
def P8023680849533427839.Spec : Prop :=
  ∀ n, P8023680849533427839.a n = A008419 n

end A008419

/-! ## A008419.P9915001296509143646

`A300624(n+1)-(A300624(n)+A035604(n))`
-/

namespace A008419.P9915001296509143646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300624 (n + 1) - (A300624 n + A035604 n)

end

end A008419.P9915001296509143646

namespace A008419

/-- `A300624(n+1)-(A300624(n)+A035604(n))` -/
def P9915001296509143646.Spec : Prop :=
  ∀ n, P9915001296509143646.a n = A008419 n

end A008419

/-!
# A008420: Coordination sequence for 10-dimensional cubic lattice.

The programs for A008420, the canonical program `A008420.P15915323523869300231` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008420 has offset 0).

The definition of A008420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008420.P15915323523869300231

`A008416(n)+2*A035603(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A008420

/-- `A008416(n)+2*A035603(n)` -/
def P15915323523869300231.Spec : Prop :=
  ∀ n, P15915323523869300231.a n = A008420 n

theorem P15915323523869300231.correct : P15915323523869300231.Spec := by
  intro n
  simp only [A008420]

end A008420

/-! ## A008420.P12768428577862025654

`2*A008419(n)-A008418(n)`
-/

namespace A008420.P12768428577862025654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008419 n - A008418 n

end

end A008420.P12768428577862025654

namespace A008420

/-- `2*A008419(n)-A008418(n)` -/
def P12768428577862025654.Spec : Prop :=
  ∀ n, P12768428577862025654.a n = A008420 n

end A008420

/-! ## A008420.P7781005346903681947

`A008416(n)+4*A099196(n)`
-/

namespace A008420.P7781005346903681947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008416 n + 4 * A099196 n

end

end A008420.P7781005346903681947

namespace A008420

/-- `A008416(n)+4*A099196(n)` -/
def P7781005346903681947.Spec : Prop :=
  ∀ n, P7781005346903681947.a n = A008420 n

theorem P7781005346903681947.correct : P7781005346903681947.Spec := by
  intro n
  simp only [A008420, Nat.add_sub_cancel, A008420.P7781005346903681947.a, A008420.P15915323523869300231.a, A008416, A008416.P15332718079879402736.a, A035603, A035603.P5033389381879539558.a, A099196, A099196.P16367201159128015509.a, A008415, A008415.P5760122249089442523.a, A008414, A008414.P48295776868654470.a, A008412, A008412.P13878766666542366952.a, A069038, A069038.P11696173579921960810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008420

/-! ## A008420.P11104651942130465629

`Δ[Δ[A300624(A004273(n)-n)]]`
-/

namespace A008420.P11104651942130465629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300624 (A004273 n - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008420.P11104651942130465629

namespace A008420

/-- `Δ[Δ[A300624(A004273(n)-n)]]` -/
def P11104651942130465629.Spec : Prop :=
  ∀ n, P11104651942130465629.a n = A008420 n

end A008420

/-! ## A008420.P329071456222398246

`A122542(A000096(n+9)+11)`
-/

namespace A008420.P329071456222398246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (A000096 (n + 9) + 11).toNat

end

end A008420.P329071456222398246

namespace A008420

/-- `A122542(A000096(n+9)+11)` -/
def P329071456222398246.Spec : Prop :=
  ∀ n, P329071456222398246.a n = A008420 n

end A008420

/-! ## A008420.P7736310299928699243

`A122542(A000217(n+10)+10)`
-/

namespace A008420.P7736310299928699243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (A000217 (n + 10) + 10).toNat

end

end A008420.P7736310299928699243

namespace A008420

/-- `A122542(A000217(n+10)+10)` -/
def P7736310299928699243.Spec : Prop :=
  ∀ n, P7736310299928699243.a n = A008420 n

end A008420

/-! ## A008420.P2936439741786851259

`A266213(A000124(n+11)-12)`
-/

namespace A008420.P2936439741786851259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A000124 (n + 11) - 12).toNat

end

end A008420.P2936439741786851259

namespace A008420

/-- `A266213(A000124(n+11)-12)` -/
def P2936439741786851259.Spec : Prop :=
  ∀ n, P2936439741786851259.a n = A008420 n

end A008420

/-! ## A008420.P5527357378495674162

`A266213(A027379(n+6)+A016777(n+7))`
-/

namespace A008420.P5527357378495674162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A027379 (n + 6) + A016777 (n + 7)).toNat

end

end A008420.P5527357378495674162

namespace A008420

/-- `A266213(A027379(n+6)+A016777(n+7))` -/
def P5527357378495674162.Spec : Prop :=
  ∀ n, P5527357378495674162.a n = A008420 n

end A008420

/-!
# A008421: Crystal ball sequence for 10-dimensional cubic lattice.

The programs for A008421, the canonical program `A008421.P5778810388798117151` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008421 has offset 0).

The definition of A008421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008421.P5778810388798117151

`∑[A008420(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A008421

/-- `∑[A008420(n)]` -/
def P5778810388798117151.Spec : Prop :=
  ∀ n, P5778810388798117151.a n = A008421 n

theorem P5778810388798117151.correct : P5778810388798117151.Spec := by
  intro n
  simp only [A008421]

end A008421

/-! ## A008421.P7374992968128986761

`A035706(n)-a(n-1)` with `a(0)=1`
-/

namespace A008421.P7374992968128986761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035706 n - a (n - 1)

end

end A008421.P7374992968128986761

namespace A008421

/-- `A035706(n)-a(n-1)` -/
def P7374992968128986761.Spec : Prop :=
  ∀ n, P7374992968128986761.a n = A008421 n

end A008421

/-! ## A008421.P10920354463982760169

`A035604(n)+A008419(n)`
-/

namespace A008421.P10920354463982760169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035604 n + A008419 n

end

end A008421.P10920354463982760169

namespace A008421

/-- `A035604(n)+A008419(n)` -/
def P10920354463982760169.Spec : Prop :=
  ∀ n, P10920354463982760169.a n = A008421 n

end A008421

/-! ## A008421.P11175893419075590596

`A240876(n)-A035605(n)`
-/

namespace A008421.P11175893419075590596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240876 n - A035605 n

end

end A008421.P11175893419075590596

namespace A008421

/-- `A240876(n)-A035605(n)` -/
def P11175893419075590596.Spec : Prop :=
  ∀ n, P11175893419075590596.a n = A008421 n

end A008421

/-! ## A008421.P5055976175711701402

`A099197(n+1)+A099197(n)`
-/

namespace A008421.P5055976175711701402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099197 (n + 1) + A099197 n

end

end A008421.P5055976175711701402

namespace A008421

/-- `A099197(n+1)+A099197(n)` -/
def P5055976175711701402.Spec : Prop :=
  ∀ n, P5055976175711701402.a n = A008421 n

end A008421

/-! ## A008421.P16752102412824060295

`A099196(n+1)+A099196(n)+A035604(n)`
-/

namespace A008421.P16752102412824060295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 (n + 1) + (A099196 n + A035604 n)

end

end A008421.P16752102412824060295

namespace A008421

/-- `A099196(n+1)+A099196(n)+A035604(n)` -/
def P16752102412824060295.Spec : Prop :=
  ∀ n, P16752102412824060295.a n = A008421 n

end A008421

/-! ## A008421.P7323661529817420820

`Δ[A300624(n)]`
-/

namespace A008421.P7323661529817420820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008421.P7323661529817420820

namespace A008421

/-- `Δ[A300624(n)]` -/
def P7323661529817420820.Spec : Prop :=
  ∀ n, P7323661529817420820.a n = A008421 n

end A008421

/-! ## A008421.P10055503397808342801

`A300624(n+1)-A300624(n)`
-/

namespace A008421.P10055503397808342801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300624 (n + 1) - A300624 n

end

end A008421.P10055503397808342801

namespace A008421

/-- `A300624(n+1)-A300624(n)` -/
def P10055503397808342801.Spec : Prop :=
  ∀ n, P10055503397808342801.a n = A008421 n

end A008421

/-! ## A008421.P3280793152284302129

`A114123(eq[5, A002262(n)])`
-/

namespace A008421.P3280793152284302129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008421.P3280793152284302129

namespace A008421

/-- `A114123(eq[5, A002262(n)])` -/
def P3280793152284302129.Spec : Prop :=
  ∀ n, P3280793152284302129.a n = A008421 n

end A008421

/-!
# A008422: Theta series of D*_5 lattice.

The programs for A008422, there is no canonical definition to state claims against.
-/

/-! ## A008422.P13240499071668487031

`and(A049077(A165529(n)), A283221(n))`
-/

namespace A008422.P13240499071668487031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049077 (A165529 n).toNat) (A283221 n)

end

end A008422.P13240499071668487031

/-! ## A008422.P4713447456364367491

`and(A207050(n+1), A280490(A056325(n)))`
-/

namespace A008422.P4713447456364367491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A207050 (n + 1)) (A280490 (A056325 n).toNat)

end

end A008422.P4713447456364367491

/-! ## A008422.P16775564208891776923

`and(A255253(n+2), A255256(A250120(2*(n+1))))`
-/

namespace A008422.P16775564208891776923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A255253 (n + 2)) (A255256 (A250120 (2 * (n + 1))).toNat)

end

end A008422.P16775564208891776923

/-!
# A008423: Theta series of {D_7}* lattice.

The programs for A008423, there is no canonical definition to state claims against.
-/

/-! ## A008423.P12015832890886424799

`A028702(∑[lcm(5, A052891(n))])`
-/

namespace A008423.P12015832890886424799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A052891 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028702 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008423.P12015832890886424799

/-! ## A008423.P16188080499428532649

`and(A095601(2*n), A243881(n))`
-/

namespace A008423.P16188080499428532649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095601 (2 * n)) (A243881 n)

end

end A008423.P16188080499428532649

/-! ## A008423.P10647391776146071340

`∑{d}[∑{d}[A222673(A275090(n+1)), #], #]`
-/

namespace A008423.P10647391776146071340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222673 (A275090 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A008423.P10647391776146071340

/-! ## A008423.P11493432627610925074

`A030217(A053791(n))*A053802(n)`
-/

namespace A008423.P11493432627610925074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030217 (A053791 n).toNat * A053802 n

end

end A008423.P11493432627610925074

/-!
# A008424: Theta series of {D_9}* lattice.

The programs for A008424, there is no canonical definition to state claims against.
-/

/-! ## A008424.P18326870492013625725

`A028696(n)*A133872(n)`
-/

namespace A008424.P18326870492013625725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028696 n * A133872 n

end

end A008424.P18326870492013625725

/-! ## A008424.P3877060076076987763

`lcm(A028696(n), A128130(n))`
-/

namespace A008424.P3877060076076987763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028696 n) (A128130 n)

end

end A008424.P3877060076076987763

/-! ## A008424.P6290647124105215591

`∑[A056594(n)]*A028696(n)`
-/

namespace A008424.P6290647124105215591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A028696 n

end

end A008424.P6290647124105215591

/-! ## A008424.P6661857577980537977

`A028696(n^∑[A056594(n)])`
-/

namespace A008424.P6661857577980537977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028696 (SequenceMachineLib.roundAway ((n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A008424.P6661857577980537977

/-! ## A008424.P12634723631797240344

`char[A042948(n)]*A028696(n)`
-/

namespace A008424.P12634723631797240344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A028696 n

end

end A008424.P12634723631797240344

/-!
# A008425: Theta series of {D_6}* lattice.

The programs for A008425, there is no canonical definition to state claims against.
-/

/-! ## A008425.P7912523394095164578

`A008665(2*n)`
-/

namespace A008425.P7912523394095164578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008665 (2 * n)

end

end A008425.P7912523394095164578

/-! ## A008425.P16264039582354787397

`and(-3, A008665(record[A014681(n)]))`
-/

namespace A008425.P16264039582354787397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A008665 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A008425.P16264039582354787397

/-! ## A008425.P12072208397685223777

`A008665(A004277(n))+A000007(n)`
-/

namespace A008425.P12072208397685223777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008665 (A004277 n).toNat + A000007 n

end

end A008425.P12072208397685223777

/-! ## A008425.P626006445165532450

`lcm(A000034(n), A008665(A005843(n)))`
-/

namespace A008425.P626006445165532450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A008665 (A005843 n).toNat)

end

end A008425.P626006445165532450

/-! ## A008425.P286360452185020149

`A010052(A000040(n+1))+A008665(A005843(n))`
-/

namespace A008425.P286360452185020149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000040 (n + 1)).toNat + A008665 (A005843 n).toNat

end

end A008425.P286360452185020149

/-! ## A008425.P14626295939858703560

`A008665(A005843(n))%A002042(n)`
-/

namespace A008425.P14626295939858703560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008665 (A005843 n).toNat) (A002042 n)

end

end A008425.P14626295939858703560

/-!
# A008426: Theta series of {D_10}* lattice.

The programs for A008426, there is no canonical definition to state claims against.
-/

/-! ## A008426.P6878161292400570977

`and(A006154(A133179(2*(n+1))), A267689(n))`
-/

namespace A008426.P6878161292400570977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006154 (A133179 (2 * (n + 1))).toNat) (A267689 n)

end

end A008426.P6878161292400570977

/-! ## A008426.P14418032544702837485

`and(A006154(A133179(n+3+n)/3), A267689(n))`
-/

namespace A008426.P14418032544702837485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006154 (SequenceMachineLib.roundAway ((A133179 (n + 3 + n) : ℚ) / 3)).toNat) (A267689 n)

end

end A008426.P14418032544702837485

/-!
# A008427: Theta series of {D_8}* lattice.

The programs for A008427, there is no canonical definition to state claims against.
-/

/-! ## A008427.P1010108938987494705

`(A035016(n)+A008658(n))/2`
-/

namespace A008427.P1010108938987494705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035016 n + A008658 n : ℚ) / 2

end

end A008427.P1010108938987494705

/-! ## A008427.P13833407472188223847

`A008430(n)-96*A007331(n)`
-/

namespace A008427.P13833407472188223847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008430 n - 96 * A007331 n

end

end A008427.P13833407472188223847

/-! ## A008427.P2927372838080855949

`A035016(n)+4*A007331(2*n)`
-/

namespace A008427.P2927372838080855949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035016 n + 4 * A007331 (2 * n)

end

end A008427.P2927372838080855949

/-! ## A008427.P9447031959286742994

`A000143(2*n)-A008594(A007331(2*n))`
-/

namespace A008427.P9447031959286742994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000143 (2 * n) - A008594 (A007331 (2 * n)).toNat

end

end A008427.P9447031959286742994

/-! ## A008427.P7373925927051768714

`A035016(2*n)-A008594(A007331(2*n))`
-/

namespace A008427.P7373925927051768714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035016 (2 * n) - A008594 (A007331 (2 * n)).toNat

end

end A008427.P7373925927051768714

/-!
# A008428: Theta series of D_6 lattice.

The programs for A008428, there is no canonical definition to state claims against.
-/

/-! ## A008428.P7597155126253579021

`A000141(2*n)`
-/

namespace A008428.P7597155126253579021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000141 (2 * n)

end

end A008428.P7597155126253579021

/-! ## A008428.P11762818560731024261

`or(2, A000141(n+n))-2`
-/

namespace A008428.P11762818560731024261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A000141 (n + n)) - 2

end

end A008428.P11762818560731024261

/-! ## A008428.P2756852757924922608

`A000141(A005843(n))/gcd(n, n+1)`
-/

namespace A008428.P2756852757924922608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000141 (A005843 n).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A008428.P2756852757924922608

/-! ## A008428.P4739681700525606774

`A008425(4*n)`
-/

namespace A008428.P4739681700525606774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008425 (4 * n)

end

end A008428.P4739681700525606774

/-! ## A008428.P6242723838256102380

`A008434(4*n)`
-/

namespace A008428.P6242723838256102380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008434 (4 * n)

end

end A008428.P6242723838256102380

/-! ## A008428.P9942765581762521485

`A028584(A174312(n))`
-/

namespace A008428.P9942765581762521485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028584 (A174312 n).toNat

end

end A008428.P9942765581762521485

/-! ## A008428.P7950723877713377392

`A008665(8*n)`
-/

namespace A008428.P7950723877713377392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008665 (8 * n)

end

end A008428.P7950723877713377392

/-!
# A008429: Theta series of D_7 lattice.

The programs for A008429, there is no canonical definition to state claims against.
-/

/-! ## A008429.P8986735864396154153

`A008451(2*n)`
-/

namespace A008429.P8986735864396154153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008451 (2 * n)

end

end A008429.P8986735864396154153

/-! ## A008429.P9957117675738660599

`xor(1, xor(1, A008451(n+n)))`
-/

namespace A008429.P9957117675738660599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A008451 (n + n)))

end

end A008429.P9957117675738660599

/-! ## A008429.P5423198611569469037

`lcm(A000034(n), A008451(A005843(n)))`
-/

namespace A008429.P5423198611569469037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A008451 (A005843 n).toNat)

end

end A008429.P5423198611569469037

/-! ## A008429.P3249061684694162047

`A008451(record[A129760(n+1)])%A017236(n)`
-/

namespace A008429.P3249061684694162047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008451 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A017236 n)

end

end A008429.P3249061684694162047

/-! ## A008429.P4896838242640534670

`A008435(8*n)`
-/

namespace A008429.P4896838242640534670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008435 (8 * n)

end

end A008429.P4896838242640534670

/-! ## A008429.P17996333559971092667

`A008435(A022144(n))+A000007(n)`
-/

namespace A008429.P17996333559971092667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008435 (A022144 n).toNat + A000007 n

end

end A008429.P17996333559971092667

/-! ## A008429.P1451438527698241738

`A008423(8*n)`
-/

namespace A008429.P1451438527698241738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008423 (8 * n)

end

end A008429.P1451438527698241738

/-! ## A008429.P5863879172846196088

`A010057(A202679(n+1))+A008451(n+n)`
-/

namespace A008429.P5863879172846196088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A202679 (n + 1)).toNat + A008451 (n + n)

end

end A008429.P5863879172846196088

/-! ## A008429.P7837575507857553792

`A010057(A173682(n+1))+A008451(n+n)`
-/

namespace A008429.P7837575507857553792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A173682 (n + 1)).toNat + A008451 (n + n)

end

end A008429.P7837575507857553792

/-!
# A008430: Theta series of D_8 lattice.

The programs for A008430, there is no canonical definition to state claims against.
-/

/-! ## A008430.P17657786095518432877

`A000143(2*n)`
-/

namespace A008430.P17657786095518432877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000143 (2 * n)

end

end A008430.P17657786095518432877

/-! ## A008430.P4435379101649588354

`2*A008658(n)-A035016(n)`
-/

namespace A008430.P4435379101649588354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008658 n - A035016 n

end

end A008430.P4435379101649588354

/-! ## A008430.P15571288441768031678

`A035016(2*n)`
-/

namespace A008430.P15571288441768031678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035016 (2 * n)

end

end A008430.P15571288441768031678

/-! ## A008430.P11912849575843754093

`xor(2, A000143(n+n)+2)`
-/

namespace A008430.P11912849575843754093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A000143 (n + n) + 2)

end

end A008430.P11912849575843754093

/-! ## A008430.P15655354280648914701

`abs(A035016(A005843(n)))`
-/

namespace A008430.P15655354280648914701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A035016 (A005843 n).toNat|

end

end A008430.P15655354280648914701

/-! ## A008430.P12286222261423106727

`A000143(n+n)%A000141(n+1)²`
-/

namespace A008430.P12286222261423106727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000143 (n + n)) (A000141 (n + 1) ^ 2)

end

end A008430.P12286222261423106727

/-! ## A008430.P2297330496362516560

`A259491(8*n)`
-/

namespace A008430.P2297330496362516560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259491 (8 * n)

end

end A008430.P2297330496362516560

/-! ## A008430.P8465078913100584024

`A205964(2*n)/A324969(2*n+1)`
-/

namespace A008430.P8465078913100584024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205964 (2 * n) : ℚ) / (A324969 (2 * n + 1) : ℚ)

end

end A008430.P8465078913100584024

/-! ## A008430.P12223598678615585486

`A000118(2*n)/A205963(2*n)*A205964(2*n)`
-/

namespace A008430.P12223598678615585486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000118 (2 * n) : ℚ) / (A205963 (2 * n) : ℚ) * (A205964 (2 * n) : ℚ)

end

end A008430.P12223598678615585486

/-! ## A008430.P1010997050579816308

`A209444(2*n)/A215928(2*n)`
-/

namespace A008430.P1010997050579816308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209444 (2 * n) : ℚ) / (A215928 (2 * n) : ℚ)

end

end A008430.P1010997050579816308

/-! ## A008430.P17398301325859082307

`A000118(2*n)/A209443(2*n)*A209444(2*n)`
-/

namespace A008430.P17398301325859082307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000118 (2 * n) : ℚ) / (A209443 (2 * n) : ℚ) * (A209444 (2 * n) : ℚ)

end

end A008430.P17398301325859082307

/-!
# A008431: Theta series of D_9 lattice.

The programs for A008431, there is no canonical definition to state claims against.
-/

/-! ## A008431.P5401087843846624087

`A008452(2*n)`
-/

namespace A008431.P5401087843846624087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008452 (2 * n)

end

end A008431.P5401087843846624087

/-! ## A008431.P17655837833157880773

`xor(1, xor(1, A008452(n+n)))`
-/

namespace A008431.P17655837833157880773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A008452 (n + n)))

end

end A008431.P17655837833157880773

/-! ## A008431.P8253508289600014077

`gcd(A000038(n), A008452(A005843(n)))`
-/

namespace A008431.P8253508289600014077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A008452 (A005843 n).toNat)

end

end A008431.P8253508289600014077

/-! ## A008431.P11774807196074975307

`lcm(A008452(A005843(n)), A033999(n))`
-/

namespace A008431.P11774807196074975307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008452 (A005843 n).toNat) (A033999 n)

end

end A008431.P11774807196074975307

/-! ## A008431.P11783016287760711910

`A008452(n+n)%A008452(A312048(n))`
-/

namespace A008431.P11783016287760711910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008452 (n + n)) (A008452 (A312048 n).toNat)

end

end A008431.P11783016287760711910

/-! ## A008431.P9922399495641444998

`A008436(8*n)`
-/

namespace A008431.P9922399495641444998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008436 (8 * n)

end

end A008431.P9922399495641444998

/-! ## A008431.P13968019163591197729

`A028696(8*n)`
-/

namespace A008431.P13968019163591197729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028696 (8 * n)

end

end A008431.P13968019163591197729

/-! ## A008431.P1082209757089422860

`A008424(8*n)`
-/

namespace A008431.P1082209757089422860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008424 (8 * n)

end

end A008431.P1082209757089422860

/-!
# A008432: Theta series of D_10 lattice.

The programs for A008432, there is no canonical definition to state claims against.
-/

/-! ## A008432.P5784923182996591631

`A000144(2*n)`
-/

namespace A008432.P5784923182996591631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000144 (2 * n)

end

end A008432.P5784923182996591631

/-! ## A008432.P59646741934178885

`xor(1, xor(1, A000144(n+n)))`
-/

namespace A008432.P59646741934178885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A000144 (n + n)))

end

end A008432.P59646741934178885

/-! ## A008432.P16863777102207104055

`gcd(C(2, n+2), A000144(A005843(n)))`
-/

namespace A008432.P16863777102207104055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A000144 (A005843 n).toNat)

end

end A008432.P16863777102207104055

/-! ## A008432.P15169711333376820245

`A000144(n+n)%A000152(n+1)`
-/

namespace A008432.P15169711333376820245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000144 (n + n)) (A000152 (n + 1))

end

end A008432.P15169711333376820245

/-! ## A008432.P5163811503588720894

`or(A000007(n), A000144(A005843(n)))`
-/

namespace A008432.P5163811503588720894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A000144 (A005843 n).toNat)

end

end A008432.P5163811503588720894

/-! ## A008432.P904809633245693459

`A004532(4*n)`
-/

namespace A008432.P904809633245693459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004532 (4 * n)

end

end A008432.P904809633245693459

/-! ## A008432.P11832972996773841962

`A008426(4*n)`
-/

namespace A008432.P11832972996773841962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008426 (4 * n)

end

end A008432.P11832972996773841962

/-! ## A008432.P11201021984541670984

`A000144(n+n)%A000143(A000132(n))`
-/

namespace A008432.P11201021984541670984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000144 (n + n)) (A000143 (A000132 n).toNat)

end

end A008432.P11201021984541670984

/-! ## A008432.P1350650387193579560

`A286815(A187989(n+2)-2)`
-/

namespace A008432.P1350650387193579560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A187989 (n + 2) - 2).toNat

end

end A008432.P1350650387193579560

/-!
# A008433: Theta series of {D_5}^{+} packing.

The programs for A008433, there is no canonical definition to state claims against.
-/

/-! ## A008433.P11445868409468869290

`A028706(A270363(n))`
-/

namespace A008433.P11445868409468869290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028706 (A270363 n).toNat

end

end A008433.P11445868409468869290

/-! ## A008433.P17373489644587069665

`A327188(Δ[A014969(n)])`
-/

namespace A008433.P17373489644587069665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327188 (f1 (n + 1) - f1 n).toNat

end

end A008433.P17373489644587069665

/-! ## A008433.P7465740053209671539

`and(A268666(n+1)², A298014(n))`
-/

namespace A008433.P7465740053209671539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A268666 (n + 1) ^ 2) (A298014 n)

end

end A008433.P7465740053209671539

/-! ## A008433.P7689311794250925299

`and(∑{d}[A181998(n), #], A234000(n+1))`
-/

namespace A008433.P7689311794250925299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A234000 (n + 1))

end

end A008433.P7689311794250925299

/-! ## A008433.P12625124351168528818

`and(A113725(A156349(n+1)), A156364(n))`
-/

namespace A008433.P12625124351168528818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113725 (A156349 (n + 1)).toNat) (A156364 n)

end

end A008433.P12625124351168528818

/-!
# A008434: Theta series of {D_6}^{+} lattice.

The programs for A008434, there is no canonical definition to state claims against.
-/

/-! ## A008434.P3189305407842185360

`A078898(((n+2)%4)%3*A008425(n))`
-/

namespace A008434.P3189305407842185360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 ((((n + 2) % 4 % 3 : ℕ) : ℤ) * A008425 n).toNat

end

end A008434.P3189305407842185360

/-! ## A008434.P8489296072615886641

`and(A026233(A008776(n)), A055750(n))`
-/

namespace A008434.P8489296072615886641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026233 (A008776 n).toNat) (A055750 n)

end

end A008434.P8489296072615886641

/-! ## A008434.P16954538487465371099

`and(A039303(n), A139251(A233505(n)))`
-/

namespace A008434.P16954538487465371099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039303 n) (A139251 (A233505 n).toNat)

end

end A008434.P16954538487465371099

/-! ## A008434.P7150306914407448698

`A055752(n)%A141214(∑[A103881(n+1)])`
-/

namespace A008434.P7150306914407448698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055752 n) (A141214 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A008434.P7150306914407448698

/-!
# A008435: Theta series of {D_7}^{+} packing.

The programs for A008435, there is no canonical definition to state claims against.
-/

/-! ## A008435.P662512940244183167

`and(A157150(n), A333464(n+1))`
-/

namespace A008435.P662512940244183167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157150 n) (A333464 (n + 1))

end

end A008435.P662512940244183167

/-! ## A008435.P15694850441882146056

`and(A107083(n+1), A255537(n+1))`
-/

namespace A008435.P15694850441882146056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107083 (n + 1)) (A255537 (n + 1))

end

end A008435.P15694850441882146056

/-! ## A008435.P855592271282772259

`and(∑[A001157(2*n+1)], A255537(n+1))`
-/

namespace A008435.P855592271282772259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A255537 (n + 1))

end

end A008435.P855592271282772259

/-! ## A008435.P16961617575098069111

`A172311(A052907(n)*A181153(n))`
-/

namespace A008435.P16961617575098069111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172311 (A052907 n * A181153 n).toNat

end

end A008435.P16961617575098069111

/-! ## A008435.P2041530829362773755

`A088568(A241891(n))*A167656(n)`
-/

namespace A008435.P2041530829362773755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (A241891 n).toNat * A167656 n

end

end A008435.P2041530829362773755

/-!
# A008436: Theta series of {D_9}^{+} packing.

The programs for A008436, there is no canonical definition to state claims against.
-/

/-! ## A008436.P10746720215754305443

`A110654(A008424(n))*A257179(n)`
-/

namespace A008436.P10746720215754305443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008424 n).toNat * A257179 n

end

end A008436.P10746720215754305443

/-! ## A008436.P15743723092238587682

`and((∑[∑{d}[n, #]]+1)², A195924(n))`
-/

namespace A008436.P15743723092238587682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 : ℕ) : ℤ) (A195924 n)

end

end A008436.P15743723092238587682

/-! ## A008436.P15710312466495556184

`∑[A248395(A244869(n))]²`
-/

namespace A008436.P15710312466495556184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248395 (A244869 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A008436.P15710312466495556184

/-! ## A008436.P9312127904450170888

`Δ[A054907(A277012(n))]²`
-/

namespace A008436.P9312127904450170888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054907 (A277012 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A008436.P9312127904450170888

/-! ## A008436.P13646925956747930185

`and(A057575(n), A113849(n+5))`
-/

namespace A008436.P13646925956747930185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057575 n) (A113849 (n + 5))

end

end A008436.P13646925956747930185

/-!
# A008437: Expansion of Jacobi theta constant theta_2^3 /8.

The programs for A008437, there is no canonical definition to state claims against.
-/

/-! ## A008437.P15088150793862992017

`A085121(n)/8`
-/

namespace A008437.P15088150793862992017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085121 n : ℚ) / 8

end

end A008437.P15088150793862992017

/-! ## A008437.P17645874824097996110

`C(n, 3)%2*A002102(n)`
-/

namespace A008437.P17645874824097996110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 3 % 2 : ℕ) : ℤ) * A002102 n

end

end A008437.P17645874824097996110

/-! ## A008437.P533981986342408838

`A006085(A085121(n))`
-/

namespace A008437.P533981986342408838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A085121 n).toNat

end

end A008437.P533981986342408838

/-! ## A008437.P14154815055122238110

`A063691(A088440(n+1)-1)`
-/

namespace A008437.P14154815055122238110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (A088440 (n + 1) - 1).toNat

end

end A008437.P14154815055122238110

/-! ## A008437.P8217266620283279686

`A002102(n)*A011765(n+1)`
-/

namespace A008437.P8217266620283279686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 n * A011765 (n + 1)

end

end A008437.P8217266620283279686

/-! ## A008437.P3254035290326091745

`A011765(n+1)*A063691(n)`
-/

namespace A008437.P3254035290326091745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (n + 1) * A063691 n

end

end A008437.P3254035290326091745

/-! ## A008437.P6627908001117710372

`A063691(n*A121262(n+1))`
-/

namespace A008437.P6627908001117710372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 ((n : ℤ) * A121262 (n + 1)).toNat

end

end A008437.P6627908001117710372

/-! ## A008437.P966315098196060678

`A002102(n)*A235127(n+1)`
-/

namespace A008437.P966315098196060678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 n * A235127 (n + 1)

end

end A008437.P966315098196060678

/-! ## A008437.P9621946690228956190

`A063691(n)*A235127(n+1)`
-/

namespace A008437.P9621946690228956190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n * A235127 (n + 1)

end

end A008437.P9621946690228956190

/-! ## A008437.P13630382254391418343

`A002102(n)*A328981(n+1)`
-/

namespace A008437.P13630382254391418343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 n * A328981 (n + 1)

end

end A008437.P13630382254391418343

/-! ## A008437.P11561762074975277148

`A063691(n*A328981(n+1))`
-/

namespace A008437.P11561762074975277148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 ((n : ℤ) * A328981 (n + 1)).toNat

end

end A008437.P11561762074975277148

/-! ## A008437.P931013346322915229

`and(A002102(n), A228368(n+1))`
-/

namespace A008437.P931013346322915229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002102 n) (A228368 (n + 1))

end

end A008437.P931013346322915229

/-! ## A008437.P228809800849982832

`and(A063691(n), A228368(n+1))`
-/

namespace A008437.P228809800849982832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063691 n) (A228368 (n + 1))

end

end A008437.P228809800849982832

/-! ## A008437.P2790273495104960177

`(A000035(n)/2)²*A005925(n)`
-/

namespace A008437.P2790273495104960177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000035 n : ℚ) / 2) ^ 2 * (A005925 n : ℚ)

end

end A008437.P2790273495104960177

/-! ## A008437.P12252046785390686339

`(A011765(n+1)/2)²*A005925(n)`
-/

namespace A008437.P12252046785390686339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A011765 (n + 1) : ℚ) / 2) ^ 2 * (A005925 n : ℚ)

end

end A008437.P12252046785390686339

/-! ## A008437.P113585771379929734

`A063691(2-A228368(n+1))*A063691(n)`
-/

namespace A008437.P113585771379929734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (2 - A228368 (n + 1)).toNat * A063691 n

end

end A008437.P113585771379929734

/-! ## A008437.P9425500253048873901

`A007877(n)/2*A045830(n)`
-/

namespace A008437.P9425500253048873901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007877 n : ℚ) / 2 * (A045830 n : ℚ)

end

end A008437.P9425500253048873901

/-! ## A008437.P13573454719449921460

`A000007(A002102(2*n+1))*A002102(n)`
-/

namespace A008437.P13573454719449921460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A002102 (2 * n + 1)).toNat * A002102 n

end

end A008437.P13573454719449921460

/-! ## A008437.P17332555988305786819

`Δ[A372512(abs(1-n))]`
-/

namespace A008437.P17332555988305786819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372512 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008437.P17332555988305786819

/-!
# A008438: Sum of divisors of 2*n + 1.

The programs for A008438, the canonical program `A008438.P15910146822394179905` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008438 has offset 0).

The definition of A008438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008438.P15910146822394179905

`A000203(1+2*n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008438

/-- `A000203(1+2*n)` -/
def P15910146822394179905.Spec : Prop :=
  ∀ n, P15910146822394179905.a n = A008438 n

theorem P15910146822394179905.correct : P15910146822394179905.Spec := by
  intro n
  simp only [A008438]

end A008438

/-! ## A008438.P16252969723704749724

`A115607(2*n+1)`
-/

namespace A008438.P16252969723704749724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115607 (2 * n + 1)

end

end A008438.P16252969723704749724

namespace A008438

/-- `A115607(2*n+1)` -/
def P16252969723704749724.Spec : Prop :=
  ∀ n, P16252969723704749724.a n = A008438 n

end A008438

/-! ## A008438.P16028608497568642916

`A000593(2*n+1)`
-/

namespace A008438.P16028608497568642916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (2 * n + 1)

end

end A008438.P16028608497568642916

namespace A008438

/-- `A000593(2*n+1)` -/
def P16028608497568642916.Spec : Prop :=
  ∀ n, P16028608497568642916.a n = A008438 n

end A008438

/-! ## A008438.P16384363487531550425

`A002131(2*n+1)`
-/

namespace A008438.P16384363487531550425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (2 * n + 1)

end

end A008438.P16384363487531550425

namespace A008438

/-- `A002131(2*n+1)` -/
def P16384363487531550425.Spec : Prop :=
  ∀ n, P16384363487531550425.a n = A008438 n

end A008438

/-! ## A008438.P17051270053084575604

`∑{d}[Δ[n²], #]`
-/

namespace A008438.P17051270053084575604
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A008438.P17051270053084575604

namespace A008438

/-- `∑{d}[Δ[n²], #]` -/
def P17051270053084575604.Spec : Prop :=
  ∀ n, (P17051270053084575604.a n : ℤ) = A008438 n

end A008438

/-! ## A008438.P16236130415954356105

`∑{d}[4*n+2, #]/3`
-/

namespace A008438.P16236130415954356105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / 3

end

end A008438.P16236130415954356105

namespace A008438

/-- `∑{d}[4*n+2, #]/3` -/
def P16236130415954356105.Spec : Prop :=
  ∀ n, P16236130415954356105.a n = (A008438 n : ℚ)

end A008438

/-! ## A008438.P6883626529002225276

`root(∑{d}[2*n+1, #], 2)²`
-/

namespace A008438.P6883626529002225276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A008438.P6883626529002225276

namespace A008438

/-- `root(∑{d}[2*n+1, #], 2)²` -/
def P6883626529002225276.Spec : Prop :=
  ∀ n, P6883626529002225276.a n = (A008438 n : ℝ)

end A008438

/-! ## A008438.P13606725041603730445

`or(char[4], ∑{d}[2*n+1, #])`
-/

namespace A008438.P13606725041603730445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) (∑ d ∈ Nat.divisors (f2 n), d)

end

end A008438.P13606725041603730445

namespace A008438

/-- `or(char[4], ∑{d}[2*n+1, #])` -/
def P13606725041603730445.Spec : Prop :=
  ∀ n, (P13606725041603730445.a n : ℤ) = A008438 n

end A008438

/-! ## A008438.P17704073095949884896

`-∑{d}[2*n+1, or(1, -#)]`
-/

namespace A008438.P17704073095949884896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), Int.lor 1 (-(d : ℤ)))

end

end A008438.P17704073095949884896

namespace A008438

/-- `-∑{d}[2*n+1, or(1, -#)]` -/
def P17704073095949884896.Spec : Prop :=
  ∀ n, P17704073095949884896.a n = A008438 n

end A008438

/-! ## A008438.P2692594886793355819

`-∑{d}[2*n+1, xor(#, -2)]`
-/

namespace A008438.P2692594886793355819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), Int.xor (d : ℤ) (-2))

end

end A008438.P2692594886793355819

namespace A008438

/-- `-∑{d}[2*n+1, xor(#, -2)]` -/
def P2692594886793355819.Spec : Prop :=
  ∀ n, P2692594886793355819.a n = A008438 n

end A008438

/-! ## A008438.P7078876512948147598

`abs(1-∑{d}[2*n+1, #])+1`
-/

namespace A008438.P7078876512948147598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)| + 1

end

end A008438.P7078876512948147598

namespace A008438

/-- `abs(1-∑{d}[2*n+1, #])+1` -/
def P7078876512948147598.Spec : Prop :=
  ∀ n, P7078876512948147598.a n = A008438 n

end A008438

/-! ## A008438.P412366215372161702

`-∑{d}[2*n+1, #-2*#]`
-/

namespace A008438.P412366215372161702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - (2 * d : ℤ)))

end

end A008438.P412366215372161702

namespace A008438

/-- `-∑{d}[2*n+1, #-2*#]` -/
def P412366215372161702.Spec : Prop :=
  ∀ n, P412366215372161702.a n = A008438 n

end A008438

/-! ## A008438.P9612199029148141977

`∑{d}[2*n+1, #]%(n+2)²`
-/

namespace A008438.P9612199029148141977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % (n + 2) ^ 2

end

end A008438.P9612199029148141977

namespace A008438

/-- `∑{d}[2*n+1, #]%(n+2)²` -/
def P9612199029148141977.Spec : Prop :=
  ∀ n, (P9612199029148141977.a n : ℤ) = A008438 n

end A008438

/-! ## A008438.P4221495814218437920

`∑{d}[2*n+1, #]+and(2, n²)`
-/

namespace A008438.P4221495814218437920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d + Nat.land 2 (n ^ 2)

end

end A008438.P4221495814218437920

namespace A008438

/-- `∑{d}[2*n+1, #]+and(2, n²)` -/
def P4221495814218437920.Spec : Prop :=
  ∀ n, (P4221495814218437920.a n : ℤ) = A008438 n

end A008438

/-! ## A008438.P15605983295055059295

`lcm((-1)^n, ∑{d}[2*n+1, #])`
-/

namespace A008438.P15605983295055059295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A008438.P15605983295055059295

namespace A008438

/-- `lcm((-1)^n, ∑{d}[2*n+1, #])` -/
def P15605983295055059295.Spec : Prop :=
  ∀ n, (P15605983295055059295.a n : ℤ) = A008438 n

end A008438

/-! ## A008438.P15791044522159684636

`∑{d}[2*n+1, #]^and(1, n)!`
-/

namespace A008438.P15791044522159684636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) ^ Nat.factorial (Nat.land 1 n)

end

end A008438.P15791044522159684636

namespace A008438

/-- `∑{d}[2*n+1, #]^and(1, n)!` -/
def P15791044522159684636.Spec : Prop :=
  ∀ n, (P15791044522159684636.a n : ℤ) = A008438 n

end A008438

/-! ## A008438.P18434718128381912948

`∑{d}[2*n+1, #]^(ϕ²-ϕ)`
-/

namespace A008438.P18434718128381912948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ) ^ (Real.goldenRatio ^ 2 - Real.goldenRatio)

end

end A008438.P18434718128381912948

namespace A008438

/-- `∑{d}[2*n+1, #]^(ϕ²-ϕ)` -/
def P18434718128381912948.Spec : Prop :=
  ∀ n, P18434718128381912948.a n = (A008438 n : ℝ)

end A008438

/-! ## A008438.P14841306329899243739

`C(∑{d}[2*n+1, #], ϕ²-ϕ)`
-/

namespace A008438.P14841306329899243739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - Real.goldenRatio)).toNat

end

end A008438.P14841306329899243739

namespace A008438

/-- `C(∑{d}[2*n+1, #], ϕ²-ϕ)` -/
def P14841306329899243739.Spec : Prop :=
  ∀ n, (P14841306329899243739.a n : ℤ) = A008438 n

end A008438

/-! ## A008438.P13053232762578244773

`∑{d}[2*n+1, #]+(2*n)%2`
-/

namespace A008438.P13053232762578244773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d + 2 * n % 2

end

end A008438.P13053232762578244773

namespace A008438

/-- `∑{d}[2*n+1, #]+(2*n)%2` -/
def P13053232762578244773.Spec : Prop :=
  ∀ n, (P13053232762578244773.a n : ℤ) = A008438 n

end A008438

/-! ## A008438.P8695715789901076404

`∑{d}[2*n+1, #]+C(2, n+3)`
-/

namespace A008438.P8695715789901076404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d + Nat.choose 2 (n + 3)

end

end A008438.P8695715789901076404

namespace A008438

/-- `∑{d}[2*n+1, #]+C(2, n+3)` -/
def P8695715789901076404.Spec : Prop :=
  ∀ n, (P8695715789901076404.a n : ℤ) = A008438 n

end A008438

/-!
# A008439: Expansion of Jacobi theta constant theta_2^5 /32.

The programs for A008439, there is no canonical definition to state claims against.
-/

/-! ## A008439.P3200220894709377507

`abs(A244276(2*n+1)/8)`
-/

namespace A008439.P3200220894709377507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A244276 (2 * n + 1) : ℚ) / 8|

end

end A008439.P3200220894709377507

/-! ## A008439.P478083801752388450

`-(A244276(xor(1, 2*n))/8)`
-/

namespace A008439.P478083801752388450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A244276 (Nat.xor 1 (2 * n)) : ℚ) / 8)

end

end A008439.P478083801752388450

/-! ## A008439.P15487185259925093300

`A033728(Δ[A007742(n)])/4`
-/

namespace A008439.P15487185259925093300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033728 (f1 (n + 1) - f1 n).toNat : ℚ) / 4

end

end A008439.P15487185259925093300

/-! ## A008439.P10157658863111418146

`A008433(A004770(n+1))/16`
-/

namespace A008439.P10157658863111418146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008433 (A004770 (n + 1)).toNat : ℚ) / 16

end

end A008439.P10157658863111418146

/-! ## A008439.P10550786321932752646

`A286180(A055999(n+3))`
-/

namespace A008439.P10550786321932752646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A055999 (n + 3)).toNat

end

end A008439.P10550786321932752646

/-! ## A008439.P15161740288098915592

`A286180(Δ[A023551(n+1)])`
-/

namespace A008439.P15161740288098915592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (f1 (n + 1) - f1 n).toNat

end

end A008439.P15161740288098915592

/-! ## A008439.P536944227968161674

`A286180(A000217(n+6)-6)`
-/

namespace A008439.P536944227968161674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A000217 (n + 6) - 6).toNat

end

end A008439.P536944227968161674

/-! ## A008439.P16598216817730148654

`A286180(A000124(n+6)-7)`
-/

namespace A008439.P16598216817730148654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A000124 (n + 6) - 7).toNat

end

end A008439.P16598216817730148654

/-!
# A008440: Expansion of Jacobi theta constant theta_2^6 /(64q^(3/2)).

The programs for A008440, the canonical program `A008440.P2695110526216161090` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008440 has offset 0).

The definition of A008440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008440.P4673683961569339102

`abs(A213791(n))`
-/

namespace A008440.P4673683961569339102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A213791 n|

end

end A008440.P4673683961569339102

namespace A008440

/-- `abs(A213791(n))` -/
def P4673683961569339102.Spec : Prop :=
  ∀ n, P4673683961569339102.a n = A008440 n

end A008440

/-! ## A008440.P12439550149547098538

`A033999(n)*A213791(n)`
-/

namespace A008440.P12439550149547098538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A213791 n

end

end A008440.P12439550149547098538

namespace A008440

/-- `A033999(n)*A213791(n)` -/
def P12439550149547098538.Spec : Prop :=
  ∀ n, P12439550149547098538.a n = A008440 n

end A008440

/-! ## A008440.P16813032290826546287

`gcd(A000038(n), A213791(n))`
-/

namespace A008440.P16813032290826546287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A213791 n)

end

end A008440.P16813032290826546287

namespace A008440

/-- `gcd(A000038(n), A213791(n))` -/
def P16813032290826546287.Spec : Prop :=
  ∀ n, (P16813032290826546287.a n : ℤ) = A008440 n

end A008440

/-! ## A008440.P3570859282091037864

`lcm(A000034(n), A213791(n))`
-/

namespace A008440.P3570859282091037864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A213791 n)

end

end A008440.P3570859282091037864

namespace A008440

/-- `lcm(A000034(n), A213791(n))` -/
def P3570859282091037864.Spec : Prop :=
  ∀ n, (P3570859282091037864.a n : ℤ) = A008440 n

end A008440

/-! ## A008440.P2695110526216161090

`A122854(2*n+1)/8`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A008440

/-- `A122854(2*n+1)/8` -/
def P2695110526216161090.Spec : Prop :=
  ∀ n, P2695110526216161090.a n = (A008440 n : ℚ)

end A008440

/-! ## A008440.P15836077640235024097

`A138501(A004767(n))/8`
-/

namespace A008440.P15836077640235024097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138501 (A004767 n).toNat : ℚ) / 8

end

end A008440.P15836077640235024097

namespace A008440

/-- `A138501(A004767(n))/8` -/
def P15836077640235024097.Spec : Prop :=
  ∀ n, P15836077640235024097.a n = (A008440 n : ℚ)

end A008440

/-! ## A008440.P2106532482357169687

`∑{d}[A213791(n), A000010(#)]`
-/

namespace A008440.P2106532482357169687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A008440.P2106532482357169687

namespace A008440

/-- `∑{d}[A213791(n), A000010(#)]` -/
def P2106532482357169687.Spec : Prop :=
  ∀ n, P2106532482357169687.a n = A008440 n

end A008440

/-! ## A008440.P634734162063135968

`A286180(Δ[A023551(n+2)]-1)`
-/

namespace A008440.P634734162063135968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (f1 (n + 1) - f1 n - 1).toNat

end

end A008440.P634734162063135968

namespace A008440

/-- `A286180(Δ[A023551(n+2)]-1)` -/
def P634734162063135968.Spec : Prop :=
  ∀ n, P634734162063135968.a n = A008440 n

end A008440

/-!
# A008441: Number of ordered ways of writing n as the sum of 2 triangular numbers.

The programs for A008441, the canonical program `A008441.P257068461411472066` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008441 has offset 0).

The definition of A008441 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008441.P257068461411472066

`A002654(4*n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A008441

/-- `A002654(4*n+1)` -/
def P257068461411472066.Spec : Prop :=
  ∀ n, P257068461411472066.a n = A008441 n

theorem P257068461411472066.correct : P257068461411472066.Spec := by
  intro n
  simp only [A008441]

end A008441

/-! ## A008441.P1117303425545790799

`A001826(2+8*n)-A001842(2+8*n)`
-/

namespace A008441.P1117303425545790799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (2 + 8 * n) - A001842 (2 + 8 * n)

end

end A008441.P1117303425545790799

namespace A008441

/-- `A001826(2+8*n)-A001842(2+8*n)` -/
def P1117303425545790799.Spec : Prop :=
  ∀ n, P1117303425545790799.a n = A008441 n

end A008441

/-! ## A008441.P15497429193768691133

`abs(A134343(n))`
-/

namespace A008441.P15497429193768691133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134343 n|

end

end A008441.P15497429193768691133

namespace A008441

/-- `abs(A134343(n))` -/
def P15497429193768691133.Spec : Prop :=
  ∀ n, P15497429193768691133.a n = A008441 n

end A008441

/-! ## A008441.P17757511948126753117

`A004020(n)/2`
-/

namespace A008441.P17757511948126753117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004020 n : ℚ) / 2

end

end A008441.P17757511948126753117

namespace A008441

/-- `A004020(n)/2` -/
def P17757511948126753117.Spec : Prop :=
  ∀ n, P17757511948126753117.a n = (A008441 n : ℚ)

theorem P17757511948126753117.correct : P17757511948126753117.Spec := by
  intro n
  simp only [A008441, Nat.add_sub_cancel, A008441.P17757511948126753117.a, A008441.P257068461411472066.a, A002654, A002654.P11574922253888480122.a, A004020, A004020.P12808183263529079992.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008441

/-! ## A008441.P18323187951804530883

`A005883(n)/4`
-/

namespace A008441.P18323187951804530883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005883 n : ℚ) / 4

end

end A008441.P18323187951804530883

namespace A008441

/-- `A005883(n)/4` -/
def P18323187951804530883.Spec : Prop :=
  ∀ n, P18323187951804530883.a n = (A008441 n : ℚ)

theorem P18323187951804530883.correct : P18323187951804530883.Spec := by
  intro n
  simp only [A008441, Nat.add_sub_cancel, A008441.P18323187951804530883.a, A008441.P257068461411472066.a, A002654, A002654.P11574922253888480122.a, A005883, A005883.P3734216093274140482.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008441

/-! ## A008441.P6007939275675098306

`A144874(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A008441.P6007939275675098306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A144874 n + a (n - 2)

end

end A008441.P6007939275675098306

namespace A008441

/-- `A144874(n)+a(n-2)` -/
def P6007939275675098306.Spec : Prop :=
  ∀ n, P6007939275675098306.a n = A008441 n

end A008441

/-! ## A008441.P15218013870524368300

`A001281(A004020(n))`
-/

namespace A008441.P15218013870524368300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A004020 n).toNat

end

end A008441.P15218013870524368300

namespace A008441

/-- `A001281(A004020(n))` -/
def P15218013870524368300.Spec : Prop :=
  ∀ n, P15218013870524368300.a n = A008441 n

end A008441

/-! ## A008441.P5966741996720017532

`A002265(A005883(n))`
-/

namespace A008441.P5966741996720017532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A005883 n).toNat

end

end A008441.P5966741996720017532

namespace A008441

/-- `A002265(A005883(n))` -/
def P5966741996720017532.Spec : Prop :=
  ∀ n, P5966741996720017532.a n = A008441 n

end A008441

/-! ## A008441.P15024451416280541173

`A033999(n)*A134343(n)`
-/

namespace A008441.P15024451416280541173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A134343 n

end

end A008441.P15024451416280541173

namespace A008441

/-- `A033999(n)*A134343(n)` -/
def P15024451416280541173.Spec : Prop :=
  ∀ n, P15024451416280541173.a n = A008441 n

end A008441

/-! ## A008441.P16950460529262012379

`gcd(A000038(n), A134343(n))`
-/

namespace A008441.P16950460529262012379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A134343 n)

end

end A008441.P16950460529262012379

namespace A008441

/-- `gcd(A000038(n), A134343(n))` -/
def P16950460529262012379.Spec : Prop :=
  ∀ n, (P16950460529262012379.a n : ℤ) = A008441 n

end A008441

/-! ## A008441.P15609549138569572816

`lcm(A000034(n), A134343(n))`
-/

namespace A008441.P15609549138569572816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A134343 n)

end

end A008441.P15609549138569572816

namespace A008441

/-- `lcm(A000034(n), A134343(n))` -/
def P15609549138569572816.Spec : Prop :=
  ∀ n, (P15609549138569572816.a n : ℤ) = A008441 n

end A008441

/-! ## A008441.P16665788052168974480

`2*A052343(n)-A005369(n)`
-/

namespace A008441.P16665788052168974480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052343 n - A005369 n

end

end A008441.P16665788052168974480

namespace A008441

/-- `2*A052343(n)-A005369(n)` -/
def P16665788052168974480.Spec : Prop :=
  ∀ n, P16665788052168974480.a n = A008441 n

end A008441

/-! ## A008441.P1442234555242458209

`A359227(n+1)-A359240(n+1)`
-/

namespace A008441.P1442234555242458209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359227 (n + 1) - A359240 (n + 1)

end

end A008441.P1442234555242458209

namespace A008441

/-- `A359227(n+1)-A359240(n+1)` -/
def P1442234555242458209.Spec : Prop :=
  ∀ n, P1442234555242458209.a n = A008441 n

end A008441

/-! ## A008441.P4378645164132421180

`A000143(n)/A035016(n)*A134343(n)`
-/

namespace A008441.P4378645164132421180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000143 n : ℚ) / (A035016 n : ℚ) * (A134343 n : ℚ)

end

end A008441.P4378645164132421180

namespace A008441

/-- `A000143(n)/A035016(n)*A134343(n)` -/
def P4378645164132421180.Spec : Prop :=
  ∀ n, P4378645164132421180.a n = (A008441 n : ℚ)

end A008441

/-! ## A008441.P16010873498269204168

`A008440(n)*A134343(n)/A213791(n)`
-/

namespace A008441.P16010873498269204168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008440 n * A134343 n : ℚ) / (A213791 n : ℚ)

end

end A008441.P16010873498269204168

namespace A008441

/-- `A008440(n)*A134343(n)/A213791(n)` -/
def P16010873498269204168.Spec : Prop :=
  ∀ n, P16010873498269204168.a n = (A008441 n : ℚ)

end A008441

/-! ## A008441.P730298395855915264

`A125079(2*n)`
-/

namespace A008441.P730298395855915264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125079 (2 * n)

end

end A008441.P730298395855915264

namespace A008441

/-- `A125079(2*n)` -/
def P730298395855915264.Spec : Prop :=
  ∀ n, P730298395855915264.a n = A008441 n

end A008441

/-! ## A008441.P3857609942994310217

`A274399(A274399(A125079(n+n)))`
-/

namespace A008441.P3857609942994310217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (A274399 (A125079 (n + n)).toNat).toNat

end

end A008441.P3857609942994310217

namespace A008441

/-- `A274399(A274399(A125079(n+n)))` -/
def P3857609942994310217.Spec : Prop :=
  ∀ n, P3857609942994310217.a n = A008441 n

end A008441

/-! ## A008441.P15601058558801457440

`A116604(2*n)`
-/

namespace A008441.P15601058558801457440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 (2 * n)

end

end A008441.P15601058558801457440

namespace A008441

/-- `A116604(2*n)` -/
def P15601058558801457440.Spec : Prop :=
  ∀ n, P15601058558801457440.a n = A008441 n

end A008441

/-! ## A008441.P285672206479900584

`A129447(2*n)`
-/

namespace A008441.P285672206479900584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129447 (2 * n)

end

end A008441.P285672206479900584

namespace A008441

/-- `A129447(2*n)` -/
def P285672206479900584.Spec : Prop :=
  ∀ n, P285672206479900584.a n = A008441 n

end A008441

/-! ## A008441.P3724723444276905381

`A138741(2*n)`
-/

namespace A008441.P3724723444276905381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138741 (2 * n)

end

end A008441.P3724723444276905381

namespace A008441

/-- `A138741(2*n)` -/
def P3724723444276905381.Spec : Prop :=
  ∀ n, P3724723444276905381.a n = A008441 n

end A008441

/-!
# A008442: Expansion of Jacobi theta constant (theta_2(2z))^2/4.

The programs for A008442, the canonical program `A008442.P2737165964375719306` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008442 has offset 1).

The definition of A008442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008442.P14541144178070822002

`∑{d}[n+1, A112299(#)]`
-/

namespace A008442.P14541144178070822002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112299 d

end

end A008442.P14541144178070822002

namespace A008442

/-- `∑{d}[n+1, A112299(#)]` -/
def P14541144178070822002.Spec : Prop :=
  ∀ n, P14541144178070822002.a n = A008442 (n + 1)

end A008442

/-! ## A008442.P5278481837638307759

`log2(gcd(2, n))*A002654(n+1)`
-/

namespace A008442.P5278481837638307759
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A002654 (n + 1) : ℝ)

end

end A008442.P5278481837638307759

namespace A008442

/-- `log2(gcd(2, n))*A002654(n+1)` -/
def P5278481837638307759.Spec : Prop :=
  ∀ n, P5278481837638307759.a n = (A008442 (n + 1) : ℝ)

end A008442

/-! ## A008442.P17246389223532139409

`char[2*n]*A035184(n+1)`
-/

namespace A008442.P17246389223532139409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A035184 (n + 1)

end

end A008442.P17246389223532139409

namespace A008442

/-- `char[2*n]*A035184(n+1)` -/
def P17246389223532139409.Spec : Prop :=
  ∀ n, P17246389223532139409.a n = A008442 (n + 1)

end A008442

/-! ## A008442.P17877012835825465545

`char[2*n]*A113652(n+1)`
-/

namespace A008442.P17877012835825465545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A113652 (n + 1)

end

end A008442.P17877012835825465545

namespace A008442

/-- `char[2*n]*A113652(n+1)` -/
def P17877012835825465545.Spec : Prop :=
  ∀ n, P17877012835825465545.a n = A008442 (n + 1)

end A008442

/-! ## A008442.P8864937598875020538

`char[4*n]*A138746(n+1)`
-/

namespace A008442.P8864937598875020538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A138746 (n + 1)

end

end A008442.P8864937598875020538

namespace A008442

/-- `char[4*n]*A138746(n+1)` -/
def P8864937598875020538.Spec : Prop :=
  ∀ n, P8864937598875020538.a n = A008442 (n + 1)

end A008442

/-! ## A008442.P3943840781218021143

`char[4*n]*A138950(n+1)`
-/

namespace A008442.P3943840781218021143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A138950 (n + 1)

end

end A008442.P3943840781218021143

namespace A008442

/-- `char[4*n]*A138950(n+1)` -/
def P3943840781218021143.Spec : Prop :=
  ∀ n, P3943840781218021143.a n = A008442 (n + 1)

end A008442

/-! ## A008442.P4238050480412451201

`A112301(A098181(n))`
-/

namespace A008442.P4238050480412451201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112301 (A098181 n).toNat

end

end A008442.P4238050480412451201

namespace A008442

/-- `A112301(A098181(n))` -/
def P4238050480412451201.Spec : Prop :=
  ∀ n, P4238050480412451201.a n = A008442 (n + 1)

end A008442

/-! ## A008442.P1280259989739310862

`A112301(A127932(n))`
-/

namespace A008442.P1280259989739310862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112301 (A127932 n).toNat

end

end A008442.P1280259989739310862

namespace A008442

/-- `A112301(A127932(n))` -/
def P1280259989739310862.Spec : Prop :=
  ∀ n, P1280259989739310862.a n = A008442 (n + 1)

end A008442

/-! ## A008442.P2737165964375719306

`A002654(2*A004525(n)+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A008442

/-- `A002654(2*A004525(n)+1)` -/
def P2737165964375719306.Spec : Prop :=
  ∀ n, P2737165964375719306.a n = A008442 (n + 1)

theorem P2737165964375719306.correct : P2737165964375719306.Spec := by
  intro n
  simp only [A008442, Nat.add_sub_cancel]

end A008442

/-! ## A008442.P7100678539871351993

`A035184(2*A004525(n)+1)`
-/

namespace A008442.P7100678539871351993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (2 * A004525 n + 1).toNat

end

end A008442.P7100678539871351993

namespace A008442

/-- `A035184(2*A004525(n)+1)` -/
def P7100678539871351993.Spec : Prop :=
  ∀ n, P7100678539871351993.a n = A008442 (n + 1)

end A008442

/-! ## A008442.P15138736079738487004

`A002654(A101455(n)+n+1)`
-/

namespace A008442.P15138736079738487004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A101455 n + (n + 1 : ℤ)).toNat

end

end A008442.P15138736079738487004

namespace A008442

/-- `A002654(A101455(n)+n+1)` -/
def P15138736079738487004.Spec : Prop :=
  ∀ n, P15138736079738487004.a n = A008442 (n + 1)

end A008442

/-! ## A008442.P15233286760511716158

`A002654(A117569(n)+1+n)`
-/

namespace A008442.P15233286760511716158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A117569 n + 1 + (n : ℤ)).toNat

end

end A008442.P15233286760511716158

namespace A008442

/-- `A002654(A117569(n)+1+n)` -/
def P15233286760511716158.Spec : Prop :=
  ∀ n, P15233286760511716158.a n = A008442 (n + 1)

end A008442

/-! ## A008442.P6349268936659235892

`A338690(A101455(n)+n+1)`
-/

namespace A008442.P6349268936659235892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338690 (A101455 n + (n + 1 : ℤ)).toNat

end

end A008442.P6349268936659235892

namespace A008442

/-- `A338690(A101455(n)+n+1)` -/
def P6349268936659235892.Spec : Prop :=
  ∀ n, P6349268936659235892.a n = A008442 (n + 1)

end A008442

/-! ## A008442.P2338930234266071483

`A002654(n+1)*A056594(n)`
-/

namespace A008442.P2338930234266071483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A056594 n

end

end A008442.P2338930234266071483

namespace A008442

/-- `A002654(n+1)*A056594(n)` -/
def P2338930234266071483.Spec : Prop :=
  ∀ n, P2338930234266071483.a n = A008442 (n + 1)

end A008442

/-! ## A008442.P3645767405302739892

`A002654(n+1)*A059841(n)`
-/

namespace A008442.P3645767405302739892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A059841 n

end

end A008442.P3645767405302739892

namespace A008442

/-- `A002654(n+1)*A059841(n)` -/
def P3645767405302739892.Spec : Prop :=
  ∀ n, P3645767405302739892.a n = A008442 (n + 1)

end A008442

/-! ## A008442.P10773611407023407071

`A035184(n+1)*A056594(n)`
-/

namespace A008442.P10773611407023407071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (n + 1) * A056594 n

end

end A008442.P10773611407023407071

namespace A008442

/-- `A035184(n+1)*A056594(n)` -/
def P10773611407023407071.Spec : Prop :=
  ∀ n, P10773611407023407071.a n = A008442 (n + 1)

end A008442

/-! ## A008442.P9428692851689881486

`A035184(n+1)*A059841(n)`
-/

namespace A008442.P9428692851689881486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (n + 1) * A059841 n

end

end A008442.P9428692851689881486

namespace A008442

/-- `A035184(n+1)*A059841(n)` -/
def P9428692851689881486.Spec : Prop :=
  ∀ n, P9428692851689881486.a n = A008442 (n + 1)

end A008442

/-! ## A008442.P5198345892349249661

`A002654(n+1)*A108357(n)`
-/

namespace A008442.P5198345892349249661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A108357 n

end

end A008442.P5198345892349249661

namespace A008442

/-- `A002654(n+1)*A108357(n)` -/
def P5198345892349249661.Spec : Prop :=
  ∀ n, P5198345892349249661.a n = A008442 (n + 1)

end A008442

/-! ## A008442.P11297758408454619251

`A002654(n+1)*A121262(n)`
-/

namespace A008442.P11297758408454619251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A121262 n

end

end A008442.P11297758408454619251

namespace A008442

/-- `A002654(n+1)*A121262(n)` -/
def P11297758408454619251.Spec : Prop :=
  ∀ n, P11297758408454619251.a n = A008442 (n + 1)

end A008442

/-! ## A008442.P3426296295911501407

`A035184(n+1)*A108357(n)`
-/

namespace A008442.P3426296295911501407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (n + 1) * A108357 n

end

end A008442.P3426296295911501407

namespace A008442

/-- `A035184(n+1)*A108357(n)` -/
def P3426296295911501407.Spec : Prop :=
  ∀ n, P3426296295911501407.a n = A008442 (n + 1)

end A008442

/-!
# A008443: Number of ordered ways of writing n as the sum of 3 triangular numbers.

The programs for A008443, there is no canonical definition to state claims against.
-/

/-! ## A008443.P6253470334916653056

`A005869(n)/2`
-/

namespace A008443.P6253470334916653056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005869 n : ℚ) / 2

end

end A008443.P6253470334916653056

/-! ## A008443.P18071973347163739072

`A005886(n)/4`
-/

namespace A008443.P18071973347163739072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005886 n : ℚ) / 4

end

end A008443.P18071973347163739072

/-! ## A008443.P6829968312256491884

`A005878(n)/8`
-/

namespace A008443.P6829968312256491884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005878 n : ℚ) / 8

end

end A008443.P6829968312256491884

/-! ## A008443.P270565088743938361

`A005875(8*n+3)/8`
-/

namespace A008443.P270565088743938361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 (8 * n + 3) : ℚ) / 8

end

end A008443.P270565088743938361

/-! ## A008443.P17827490986777323789

`A001281(A005869(n))`
-/

namespace A008443.P17827490986777323789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005869 n).toNat

end

end A008443.P17827490986777323789

/-! ## A008443.P10736602880966245420

`A002265(A005886(n))`
-/

namespace A008443.P10736602880966245420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A005886 n).toNat

end

end A008443.P10736602880966245420

/-! ## A008443.P16137885963938556645

`A238872(Δ[n²])`
-/

namespace A008443.P16137885963938556645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A008443.P16137885963938556645

/-! ## A008443.P14783579999971746656

`A238872(2*n+1)%(n+3)`
-/

namespace A008443.P14783579999971746656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238872 (2 * n + 1)) (n + 3 : ℤ)

end

end A008443.P14783579999971746656

/-! ## A008443.P3223442837066264443

`A005869(n)-A238872(2*n+1)`
-/

namespace A008443.P3223442837066264443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005869 n - A238872 (2 * n + 1)

end

end A008443.P3223442837066264443

/-! ## A008443.P15252728468775571430

`A006085(A005878(n))`
-/

namespace A008443.P15252728468775571430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A005878 n).toNat

end

end A008443.P15252728468775571430

/-! ## A008443.P15696032192697003568

`A292511(2*n)`
-/

namespace A008443.P15696032192697003568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292511 (2 * n)

end

end A008443.P15696032192697003568

/-! ## A008443.P9974167643924077262

`abs(A292511(record[and(n, n-1)]))`
-/

namespace A008443.P9974167643924077262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292511 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A008443.P9974167643924077262

/-! ## A008443.P12483190478800000490

`A002102(8*n+3)`
-/

namespace A008443.P12483190478800000490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 (8 * n + 3)

end

end A008443.P12483190478800000490

/-! ## A008443.P4635324641122904932

`A005794(8*n+3)`
-/

namespace A008443.P4635324641122904932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005794 (8 * n + 3)

end

end A008443.P4635324641122904932

/-! ## A008443.P16739168549154276671

`A008437(8*n+3)`
-/

namespace A008443.P16739168549154276671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 (8 * n + 3)

end

end A008443.P16739168549154276671

/-! ## A008443.P4625024867987605976

`A259825(8*n+3)/4`
-/

namespace A008443.P4625024867987605976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259825 (8 * n + 3) : ℚ) / 4

end

end A008443.P4625024867987605976

/-! ## A008443.P14661235187488009193

`A063691(A008574(2*n+1)-1)`
-/

namespace A008443.P14661235187488009193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (A008574 (2 * n + 1) - 1).toNat

end

end A008443.P14661235187488009193

/-! ## A008443.P6139814226318560961

`A045830(A017101(n))/2`
-/

namespace A008443.P6139814226318560961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045830 (A017101 n).toNat : ℚ) / 2

end

end A008443.P6139814226318560961

/-! ## A008443.P6301916050302226112

`gcd(A174266(2*n+1)*A238872(2*n+1), A238872(2*n+1))`
-/

namespace A008443.P6301916050302226112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174266 (2 * n + 1) * A238872 (2 * n + 1)) (A238872 (2 * n + 1))

end

end A008443.P6301916050302226112

/-! ## A008443.P108421875440997709

`and(A086225(n+1), A238872(2*n+1))`
-/

namespace A008443.P108421875440997709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086225 (n + 1)) (A238872 (2 * n + 1))

end

end A008443.P108421875440997709

/-!
# A008444: Theta series of A_4 lattice.

The programs for A008444, there is no canonical definition to state claims against.
-/

/-! ## A008444.P11226288810292653438

`A023916(5*n)`
-/

namespace A008444.P11226288810292653438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023916 (5 * n)

end

end A008444.P11226288810292653438

/-! ## A008444.P5474469707887662672

`A023916(A008706(n))+A000007(n)`
-/

namespace A008444.P5474469707887662672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023916 (A008706 n).toNat + A000007 n

end

end A008444.P5474469707887662672

/-! ## A008444.P7765501131927793157

`A023916(A008706(n))+A006863(n)%2`
-/

namespace A008444.P7765501131927793157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023916 (A008706 n).toNat + Int.tmod (A006863 n) 2

end

end A008444.P7765501131927793157

/-! ## A008444.P17089836382284339154

`A023916(A008706(n))+A006909(n)%2`
-/

namespace A008444.P17089836382284339154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023916 (A008706 n).toNat + Int.tmod (A006909 n) 2

end

end A008444.P17089836382284339154

/-! ## A008444.P3402393647553404603

`A023916(A008706(n))+A008683(A008574(n))`
-/

namespace A008444.P3402393647553404603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023916 (A008706 n).toNat + A008683 (A008574 n).toNat

end

end A008444.P3402393647553404603

/-! ## A008444.P5337925368017120090

`A337165(∑[n])+A023916(A008706(n))`
-/

namespace A008444.P5337925368017120090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (∑ j ∈ Finset.range (n + 1), f1 j) + A023916 (A008706 n).toNat

end

end A008444.P5337925368017120090

/-! ## A008444.P1538582851140899472

`A238707(A034856(n+1))+A023916(A008706(n))`
-/

namespace A008444.P1538582851140899472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A034856 (n + 1)).toNat + A023916 (A008706 n).toNat

end

end A008444.P1538582851140899472

/-!
# A008445: Theta series of A_5 lattice.

The programs for A008445, there is no canonical definition to state claims against.
-/

/-! ## A008445.P15347713530033454417

`A125561(4*n)`
-/

namespace A008445.P15347713530033454417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125561 (4 * n)

end

end A008445.P15347713530033454417

/-! ## A008445.P2073421534313029365

`A125561(A008574(n))+A008683(A008574(n))`
-/

namespace A008445.P2073421534313029365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125561 (A008574 n).toNat + A008683 (A008574 n).toNat

end

end A008445.P2073421534313029365

/-! ## A008445.P6817156017765853917

`A125564(3*n)`
-/

namespace A008445.P6817156017765853917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125564 (3 * n)

end

end A008445.P6817156017765853917

/-! ## A008445.P9445978652612836311

`A125564(A008486(n))+A000007(n)`
-/

namespace A008445.P9445978652612836311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125564 (A008486 n).toNat + A000007 n

end

end A008445.P9445978652612836311

/-! ## A008445.P13701853607037731659

`A023917(12*n)`
-/

namespace A008445.P13701853607037731659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023917 (12 * n)

end

end A008445.P13701853607037731659

/-!
# A008446: Theta series of A_6 lattice.

The programs for A008446, there is no canonical definition to state claims against.
-/

/-! ## A008446.P9905736021938070429

`A023918(7*n)`
-/

namespace A008446.P9905736021938070429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023918 (7 * n)

end

end A008446.P9905736021938070429

/-! ## A008446.P3472024921324772385

`xor(1, xor(1, A023918(A017017(n)-3)))`
-/

namespace A008446.P3472024921324772385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A023918 (A017017 n - 3).toNat))

end

end A008446.P3472024921324772385

/-! ## A008446.P12341969229015312789

`or(A000007(n), A023918(A017017(n)-3))`
-/

namespace A008446.P12341969229015312789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A023918 (A017017 n - 3).toNat)

end

end A008446.P12341969229015312789

/-! ## A008446.P17987670401091673040

`or(A000122(n), A023918(A017017(n)-3))`
-/

namespace A008446.P17987670401091673040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A023918 (A017017 n - 3).toNat)

end

end A008446.P17987670401091673040

/-! ## A008446.P1437257864594327009

`and(-A000034(n), A023918(A017017(n)-3))`
-/

namespace A008446.P1437257864594327009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000034 n) (A023918 (A017017 n - 3).toNat)

end

end A008446.P1437257864594327009

/-! ## A008446.P9253690592973570773

`A023918(A017017(n)-3)+A000007(n+1)`
-/

namespace A008446.P9253690592973570773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023918 (A017017 n - 3).toNat + A000007 (n + 1)

end

end A008446.P9253690592973570773

/-! ## A008446.P15444780794140813499

`lcm(A023918(A017017(n)-3), A034947(n+1))`
-/

namespace A008446.P15444780794140813499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A023918 (A017017 n - 3).toNat) (A034947 (n + 1))

end

end A008446.P15444780794140813499

/-! ## A008446.P13171545016203877305

`A023918(A017017(n)-3)%A108810(n+3)`
-/

namespace A008446.P13171545016203877305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023918 (A017017 n - 3).toNat) (A108810 (n + 3))

end

end A008446.P13171545016203877305

/-! ## A008446.P6402864438837550653

`A023918(A017017(n)-3)+1-A054977(n+1)`
-/

namespace A008446.P6402864438837550653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023918 (A017017 n - 3).toNat + 1 - A054977 (n + 1)

end

end A008446.P6402864438837550653

/-! ## A008446.P15065988924026168711

`A023918(A017017(n)-3)+C(2, A000203(n+2))`
-/

namespace A008446.P15065988924026168711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023918 (A017017 n - 3).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A008446.P15065988924026168711

/-! ## A008446.P13419276772036812653

`A023918(A017017(n)-3)^and(1, A045321(n+1))`
-/

namespace A008446.P13419276772036812653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023918 (A017017 n - 3).toNat : ℚ) ^ (Int.land 1 (A045321 (n + 1)) : ℤ)

end

end A008446.P13419276772036812653

/-! ## A008446.P14084790076358170404

`abs(A023918(A017017(n)-3)/(-1)^A000796(n))`
-/

namespace A008446.P14084790076358170404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A023918 (A017017 n - 3).toNat : ℚ) / (-1 : ℚ) ^ (A000796 (n + 1) : ℤ)|

end

end A008446.P14084790076358170404

/-! ## A008446.P1298887969849840393

`A045701(val(n+1, 2)+1)+A023918(A017017(n)-3)`
-/

namespace A008446.P1298887969849840393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045701 (SequenceMachineLib.valuation (n + 1) 2 + 1) + A023918 (A017017 n - 3).toNat

end

end A008446.P1298887969849840393

/-!
# A008449: Theta series of A_9 lattice.

The programs for A008449, there is no canonical definition to state claims against.
-/

/-! ## A008449.P8556152352227692662

`A023921(20*n)`
-/

namespace A008449.P8556152352227692662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023921 (20 * n)

end

end A008449.P8556152352227692662

/-!
# A008450: Theta series of A_10 lattice.

The programs for A008450, there is no canonical definition to state claims against.
-/

/-! ## A008450.P1340651224360971717

`A023922(11*n)`
-/

namespace A008450.P1340651224360971717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023922 (11 * n)

end

end A008450.P1340651224360971717

/-! ## A008450.P6542714556896124308

`record[A023922(A008593(n))]`
-/

namespace A008450.P6542714556896124308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023922 (A008593 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008450.P6542714556896124308

/-! ## A008450.P2123563620302057639

`A025439(n)+A023922(A008593(n))`
-/

namespace A008450.P2123563620302057639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 n + A023922 (A008593 n).toNat

end

end A008450.P2123563620302057639

/-! ## A008450.P17378070577717175307

`gcd(A000038(n), A023922(A008593(n)))`
-/

namespace A008450.P17378070577717175307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A023922 (A008593 n).toNat)

end

end A008450.P17378070577717175307

/-! ## A008450.P2828221877159788669

`A023922(A008593(n))+A000038(n+2)`
-/

namespace A008450.P2828221877159788669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023922 (A008593 n).toNat + A000038 (n + 2)

end

end A008450.P2828221877159788669

/-!
# A008451: Number of ways of writing n as a sum of 7 squares.

The programs for A008451, there is no canonical definition to state claims against.
-/

/-! ## A008451.P6168342861244258229

`A008423(4*n)`
-/

namespace A008451.P6168342861244258229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008423 (4 * n)

end

end A008451.P6168342861244258229

/-! ## A008451.P9503382225788915622

`lcm(char[1]+1, A008423(A008586(n)))`
-/

namespace A008451.P9503382225788915622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) (A008423 (A008586 n).toNat)

end

end A008451.P9503382225788915622

/-! ## A008451.P3852788123336906225

`A008423(A008574(n))+A000007(n)`
-/

namespace A008451.P3852788123336906225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008423 (A008574 n).toNat + A000007 n

end

end A008451.P3852788123336906225

/-! ## A008451.P14053140943141405101

`gcd(A000038(n), A008423(A008586(n)))`
-/

namespace A008451.P14053140943141405101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A008423 (A008586 n).toNat)

end

end A008451.P14053140943141405101

/-! ## A008451.P7097666509690525036

`or(A000007(n), A008423(A008586(n)))`
-/

namespace A008451.P7097666509690525036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A008423 (A008586 n).toNat)

end

end A008451.P7097666509690525036

/-! ## A008451.P15755875533868343115

`A008423(A008586(n))+A000007(n+1)`
-/

namespace A008451.P15755875533868343115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008423 (A008586 n).toNat + A000007 (n + 1)

end

end A008451.P15755875533868343115

/-! ## A008451.P11946332227336954401

`A008423(A008586(n))+A000038(n+1)`
-/

namespace A008451.P11946332227336954401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008423 (A008586 n).toNat + A000038 (n + 1)

end

end A008451.P11946332227336954401

/-! ## A008451.P5943239921478940785

`A008423(A008586(n))%A234532(n+1)`
-/

namespace A008451.P5943239921478940785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008423 (A008586 n).toNat) (A234532 (n + 1))

end

end A008451.P5943239921478940785

/-! ## A008451.P15535055628145057500

`A008423(A008586(n))/A062157(A007918(n))²`
-/

namespace A008451.P15535055628145057500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008423 (A008586 n).toNat : ℚ) / (A062157 (A007918 n).toNat ^ 2 : ℚ)

end

end A008451.P15535055628145057500

/-! ## A008451.P2253940972384707276

`A122141(A055999(n+4))`
-/

namespace A008451.P2253940972384707276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122141 (A055999 (n + 4)).toNat

end

end A008451.P2253940972384707276

/-! ## A008451.P8544672224592482157

`A319574(A000217(n+7)+7)`
-/

namespace A008451.P8544672224592482157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (A000217 (n + 7) + 7).toNat

end

end A008451.P8544672224592482157

/-! ## A008451.P12065443696492678358

`A286815(A155212(n+4))`
-/

namespace A008451.P12065443696492678358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A155212 (n + 4)).toNat

end

end A008451.P12065443696492678358

/-! ## A008451.P1848489362180196681

`A286815(eq[7, A025581(n)])`
-/

namespace A008451.P1848489362180196681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008451.P1848489362180196681

/-! ## A008451.P14677242027788085312

`A286815(A000217(n+8)-8)`
-/

namespace A008451.P14677242027788085312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A000217 (n + 8) - 8).toNat

end

end A008451.P14677242027788085312

/-! ## A008451.P10977497695408308660

`A286815(A052905(n+6)-(n+12))`
-/

namespace A008451.P10977497695408308660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A052905 (n + 6) - (n + 12 : ℤ)).toNat

end

end A008451.P10977497695408308660

/-! ## A008451.P11867163733257523101

`A286815(2*n+A000217(n+6)+7)`
-/

namespace A008451.P11867163733257523101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 ((2 * n : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A008451.P11867163733257523101

/-!
# A008452: Number of ways of writing n as a sum of 9 squares.

The programs for A008452, there is no canonical definition to state claims against.
-/

/-! ## A008452.P12754168222225250095

`A028696(4*n)`
-/

namespace A008452.P12754168222225250095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028696 (4 * n)

end

end A008452.P12754168222225250095

/-! ## A008452.P9893464503223867679

`A008424(4*n)`
-/

namespace A008452.P9893464503223867679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008424 (4 * n)

end

end A008452.P9893464503223867679

/-! ## A008452.P13777319136594933163

`and(-5, A008424(record[A066104(n)]))`
-/

namespace A008452.P13777319136594933163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A008424 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A008452.P13777319136594933163

/-! ## A008452.P4890966343433874746

`A008424(A008574(n))+A000007(n)`
-/

namespace A008452.P4890966343433874746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008424 (A008574 n).toNat + A000007 n

end

end A008452.P4890966343433874746

/-! ## A008452.P15202588678656787863

`or(A000122(n), A008424(A008574(n)))`
-/

namespace A008452.P15202588678656787863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A008424 (A008574 n).toNat)

end

end A008452.P15202588678656787863

/-! ## A008452.P13176382037469498305

`A008424(A008586(n))%A253680(n+1)`
-/

namespace A008452.P13176382037469498305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008424 (A008586 n).toNat) (A253680 (n + 1))

end

end A008452.P13176382037469498305

/-! ## A008452.P7973532002470439304

`A008424(record[A066104(n)])/A209615(n+1)²`
-/

namespace A008452.P7973532002470439304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008424 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (A209615 (n + 1) ^ 2 : ℚ)

end

end A008452.P7973532002470439304

/-! ## A008452.P1342714031297094755

`A008424(A008574(n))^A052409(n²+1)`
-/

namespace A008452.P1342714031297094755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008424 (A008574 n).toNat : ℚ) ^ (A052409 (n ^ 2 + 1) : ℤ)

end

end A008452.P1342714031297094755

/-! ## A008452.P8609855116583675807

`A108069(A191131(n+1))+A008424(A008574(n))`
-/

namespace A008452.P8609855116583675807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108069 (A191131 (n + 1)).toNat + A008424 (A008574 n).toNat

end

end A008452.P8609855116583675807

/-! ## A008452.P6824016809598639827

`A286815(A000217(n+10)-10)`
-/

namespace A008452.P6824016809598639827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A000217 (n + 10) - 10).toNat

end

end A008452.P6824016809598639827

/-! ## A008452.P3207637077054971190

`A108069(n²+4)+A008424(A008574(n))`
-/

namespace A008452.P3207637077054971190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108069 (n ^ 2 + 4) + A008424 (A008574 n).toNat

end

end A008452.P3207637077054971190

/-!
# A008453: Number of ways of writing n as a sum of 11 squares.

The programs for A008453, there is no canonical definition to state claims against.
-/

/-! ## A008453.P15968219928811802294

`A022064(4*n)`
-/

namespace A008453.P15968219928811802294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022064 (4 * n)

end

end A008453.P15968219928811802294

/-! ## A008453.P14993983187796356185

`A022064(A008574(n))+A000007(n)`
-/

namespace A008453.P14993983187796356185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022064 (A008574 n).toNat + A000007 n

end

end A008453.P14993983187796356185

/-! ## A008453.P7250547223485575478

`or(A000122(n), A022064(A008574(n)))`
-/

namespace A008453.P7250547223485575478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A022064 (A008574 n).toNat)

end

end A008453.P7250547223485575478

/-! ## A008453.P11495587766224761937

`A022064(A008574(n))+A069517(n+1)%2`
-/

namespace A008453.P11495587766224761937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022064 (A008574 n).toNat + Int.tmod (A069517 (n + 1)) 2

end

end A008453.P11495587766224761937

/-! ## A008453.P12288738137770694906

`A104477(A089003(n+1))+A022064(A008574(n))`
-/

namespace A008453.P12288738137770694906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104477 (A089003 (n + 1)).toNat + A022064 (A008574 n).toNat

end

end A008453.P12288738137770694906

/-!
# A008454: Tenth powers: a(n) = n^10.

The programs for A008454, the canonical program `A008454.P6486498320967950731` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008454 has offset 0).

The definition of A008454 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10` (program `A008454.P6486498320967950731`, by `A008454.P6486498320967950731.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008454.P6486498320967950731

`n^10`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008454

/-- `n^10` -/
def P6486498320967950731.Spec : Prop :=
  ∀ n, (P6486498320967950731.a n : ℤ) = A008454 n

theorem P6486498320967950731.correct : P6486498320967950731.Spec := by
  intro n
  simp only [A008454]

end A008454

/-!
# A008455: 11th powers: a(n) = n^11.

The programs for A008455, the canonical program `A008455.P9534885858269672633` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008455 has offset 0).

The definition of A008455 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^11` (program `A008455.P9534885858269672633`, by `A008455.P9534885858269672633.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008455.P9534885858269672633

`n^11`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008455

/-- `n^11` -/
def P9534885858269672633.Spec : Prop :=
  ∀ n, (P9534885858269672633.a n : ℤ) = A008455 n

theorem P9534885858269672633.correct : P9534885858269672633.Spec := by
  intro n
  simp only [A008455]

end A008455

/-!
# A008456: 12th powers: a(n) = n^12.

The programs for A008456, the canonical program `A008456.P10461044978200611102` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008456 has offset 0).

The definition of A008456 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^12` (program `A008456.P10461044978200611102`, by `A008456.P10461044978200611102.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008456.P10461044978200611102

`n^12`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008456

/-- `n^12` -/
def P10461044978200611102.Spec : Prop :=
  ∀ n, (P10461044978200611102.a n : ℤ) = A008456 n

theorem P10461044978200611102.correct : P10461044978200611102.Spec := by
  intro n
  simp only [A008456]

end A008456

/-!
# A008457: a(n) = Sum_{ d >= 1, d divides n} (-1)^(n-d)*d^3.

The programs for A008457, the canonical program `A008457.P5125644175477456083` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008457 has offset 1).

The definition of A008457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008457.P5125644175477456083

`∑{d}[n+1, (-1)^(n+1-#)*#^3]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008457

/-- `∑{d}[n+1, (-1)^(n+1-#)*#^3]` -/
def P5125644175477456083.Spec : Prop :=
  ∀ n, P5125644175477456083.a n = (A008457 (n + 1) : ℚ)

end A008457

/-! ## A008457.P16190140285422790093

`abs(A138503(n+1))`
-/

namespace A008457.P16190140285422790093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138503 (n + 1)|

end

end A008457.P16190140285422790093

namespace A008457

/-- `abs(A138503(n+1))` -/
def P16190140285422790093.Spec : Prop :=
  ∀ n, P16190140285422790093.a n = A008457 (n + 1)

end A008457

/-! ## A008457.P8791988043407218784

`A000143(n+1)/(8/2)²`
-/

namespace A008457.P8791988043407218784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000143 (n + 1) : ℚ) / ((8 : ℚ) / 2) ^ 2

end

end A008457.P8791988043407218784

namespace A008457

/-- `A000143(n+1)/(8/2)²` -/
def P8791988043407218784.Spec : Prop :=
  ∀ n, P8791988043407218784.a n = (A008457 (n + 1) : ℚ)

end A008457

/-! ## A008457.P5259527365090779456

`abs(∑{d}[n+1, #*A162395(#)])`
-/

namespace A008457.P5259527365090779456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A162395 d|

end

end A008457.P5259527365090779456

namespace A008457

/-- `abs(∑{d}[n+1, #*A162395(#)])` -/
def P5259527365090779456.Spec : Prop :=
  ∀ n, P5259527365090779456.a n = A008457 (n + 1)

end A008457

/-! ## A008457.P17566971283074693242

`A033999(n)*A138503(n+1)`
-/

namespace A008457.P17566971283074693242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138503 (n + 1)

end

end A008457.P17566971283074693242

namespace A008457

/-- `A033999(n)*A138503(n+1)` -/
def P17566971283074693242.Spec : Prop :=
  ∀ n, P17566971283074693242.a n = A008457 (n + 1)

end A008457

/-! ## A008457.P10337722220844926234

`gcd(A000038(n), A138503(n+1))`
-/

namespace A008457.P10337722220844926234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A138503 (n + 1))

end

end A008457.P10337722220844926234

namespace A008457

/-- `gcd(A000038(n), A138503(n+1))` -/
def P10337722220844926234.Spec : Prop :=
  ∀ n, (P10337722220844926234.a n : ℤ) = A008457 (n + 1)

end A008457

/-! ## A008457.P4869114732306389623

`lcm(A014709(n), A138503(n+1))`
-/

namespace A008457.P4869114732306389623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A138503 (n + 1))

end

end A008457.P4869114732306389623

namespace A008457

/-- `lcm(A014709(n), A138503(n+1))` -/
def P4869114732306389623.Spec : Prop :=
  ∀ n, (P4869114732306389623.a n : ℤ) = A008457 (n + 1)

end A008457

/-! ## A008457.P16358690330242032805

`abs(2*A051000(n+1)-A001158(n+1))`
-/

namespace A008457.P16358690330242032805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A051000 (n + 1) - A001158 (n + 1)|

end

end A008457.P16358690330242032805

namespace A008457

/-- `abs(2*A051000(n+1)-A001158(n+1))` -/
def P16358690330242032805.Spec : Prop :=
  ∀ n, P16358690330242032805.a n = A008457 (n + 1)

end A008457

/-! ## A008457.P16836645217752377716

`A064027(n+1)*A138503(n+1)/A321543(n+1)`
-/

namespace A008457.P16836645217752377716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064027 (n + 1) * A138503 (n + 1) : ℚ) / (A321543 (n + 1) : ℚ)

end

end A008457.P16836645217752377716

namespace A008457

/-- `A064027(n+1)*A138503(n+1)/A321543(n+1)` -/
def P16836645217752377716.Spec : Prop :=
  ∀ n, P16836645217752377716.a n = (A008457 (n + 1) : ℚ)

end A008457

/-! ## A008457.P11204102381644479479

`A007331(2*n+1)/A000143(2*n+1)*A000143(n+1)`
-/

namespace A008457.P11204102381644479479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007331 (2 * n + 1) : ℚ) / (A000143 (2 * n + 1) : ℚ) * (A000143 (n + 1) : ℚ)

end

end A008457.P11204102381644479479

namespace A008457

/-- `A007331(2*n+1)/A000143(2*n+1)*A000143(n+1)` -/
def P11204102381644479479.Spec : Prop :=
  ∀ n, P11204102381644479479.a n = (A008457 (n + 1) : ℚ)

end A008457

/-! ## A008457.P4517981105770593591

`A138503(2*n+1)/A000143(2*n+1)*A000143(n+1)`
-/

namespace A008457.P4517981105770593591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138503 (2 * n + 1) : ℚ) / (A000143 (2 * n + 1) : ℚ) * (A000143 (n + 1) : ℚ)

end

end A008457.P4517981105770593591

namespace A008457

/-- `A138503(2*n+1)/A000143(2*n+1)*A000143(n+1)` -/
def P4517981105770593591.Spec : Prop :=
  ∀ n, P4517981105770593591.a n = (A008457 (n + 1) : ℚ)

end A008457

/-!
# A008458: Coordination sequence for hexagonal lattice.

The programs for A008458, the canonical program `A008458.P10936398443463225625` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008458 has offset 0).

The definition of A008458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008458.P10936398443463225625

`floor(2/acot(3*n))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008458

/-- `floor(2/acot(3*n))` -/
def P10936398443463225625.Spec : Prop :=
  ∀ n, P10936398443463225625.a n = A008458 n

theorem P10936398443463225625.correct : P10936398443463225625.Spec := by
  intro n
  simp only [A008458]

end A008458

/-!
# A008459: Square the entries of Pascal's triangle.

The programs for A008459, the canonical program `A008459.P3220700038138124146` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008459 has offset 0).

The definition of A008459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008459.P15379115149201640766

`C(row(n), col(n))²`
-/

namespace A008459.P15379115149201640766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) ^ 2

end

end A008459.P15379115149201640766

namespace A008459

/-- `C(row(n), col(n))²` -/
def P15379115149201640766.Spec : Prop :=
  ∀ n, (P15379115149201640766.a n : ℤ) = A008459 n

theorem P15379115149201640766.correct : P15379115149201640766.Spec := by
  intro n
  simp only [A008459, Nat.add_sub_cancel, A008459.P15379115149201640766.a, A008459.P3220700038138124146.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008459

/-! ## A008459.P13447746070241089115

`C(row(n), col(n))*C(row(n), col(n))`
-/

namespace A008459.P13447746070241089115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A008459.P13447746070241089115

namespace A008459

/-- `C(row(n), col(n))*C(row(n), col(n))` -/
def P13447746070241089115.Spec : Prop :=
  ∀ n, (P13447746070241089115.a n : ℤ) = A008459 n

theorem P13447746070241089115.correct : P13447746070241089115.Spec := by
  intro n
  simp only [A008459, Nat.add_sub_cancel, A008459.P13447746070241089115.a, A008459.P3220700038138124146.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008459

/-! ## A008459.P3220700038138124146

`A007318(n)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008459

/-- `A007318(n)²` -/
def P3220700038138124146.Spec : Prop :=
  ∀ n, P3220700038138124146.a n = A008459 n

theorem P3220700038138124146.correct : P3220700038138124146.Spec := by
  intro n
  simp only [A008459]

end A008459

/-! ## A008459.P17123096183237874215

`A108086(n)²`
-/

namespace A008459.P17123096183237874215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n ^ 2

end

end A008459.P17123096183237874215

namespace A008459

/-- `A108086(n)²` -/
def P17123096183237874215.Spec : Prop :=
  ∀ n, P17123096183237874215.a n = A008459 n

end A008459

/-! ## A008459.P4502001289376573691

`A117440(n)²`
-/

namespace A008459.P4502001289376573691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117440 n ^ 2

end

end A008459.P4502001289376573691

namespace A008459

/-- `A117440(n)²` -/
def P4502001289376573691.Spec : Prop :=
  ∀ n, P4502001289376573691.a n = A008459 n

end A008459

/-! ## A008459.P7167313121172334540

`A130595(n)²`
-/

namespace A008459.P7167313121172334540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n ^ 2

end

end A008459.P7167313121172334540

namespace A008459

/-- `A130595(n)²` -/
def P7167313121172334540.Spec : Prop :=
  ∀ n, P7167313121172334540.a n = A008459 n

end A008459

/-! ## A008459.P11527538015179951136

`Δ[A102363(n)]²`
-/

namespace A008459.P11527538015179951136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A008459.P11527538015179951136

namespace A008459

/-- `Δ[A102363(n)]²` -/
def P11527538015179951136.Spec : Prop :=
  ∀ n, P11527538015179951136.a n = A008459 n

end A008459

/-! ## A008459.P12227580541467922239

`(A014473(n)+1)²`
-/

namespace A008459.P12227580541467922239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) ^ 2

end

end A008459.P12227580541467922239

namespace A008459

/-- `(A014473(n)+1)²` -/
def P12227580541467922239.Spec : Prop :=
  ∀ n, P12227580541467922239.a n = A008459 n

theorem P12227580541467922239.correct : P12227580541467922239.Spec := by
  intro n
  simp only [A008459, Nat.add_sub_cancel, A008459.P12227580541467922239.a, A008459.P3220700038138124146.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008459

/-! ## A008459.P16464238637949113626

`A154926(n+1)²`
-/

namespace A008459.P16464238637949113626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154926 (n + 1) ^ 2

end

end A008459.P16464238637949113626

namespace A008459

/-- `A154926(n+1)²` -/
def P16464238637949113626.Spec : Prop :=
  ∀ n, P16464238637949113626.a n = A008459 n

end A008459

/-! ## A008459.P14454235972451374656

`(2-A173740(n))²`
-/

namespace A008459.P14454235972451374656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A173740 n) ^ 2

end

end A008459.P14454235972451374656

namespace A008459

/-- `(2-A173740(n))²` -/
def P14454235972451374656.Spec : Prop :=
  ∀ n, P14454235972451374656.a n = A008459 n

end A008459

/-! ## A008459.P1146083549848276174

`(A028326(n)/2)²`
-/

namespace A008459.P1146083549848276174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028326 n : ℚ) / 2) ^ 2

end

end A008459.P1146083549848276174

namespace A008459

/-- `(A028326(n)/2)²` -/
def P1146083549848276174.Spec : Prop :=
  ∀ n, P1146083549848276174.a n = (A008459 n : ℚ)

theorem P1146083549848276174.correct : P1146083549848276174.Spec := by
  intro n
  simp only [A008459, Nat.add_sub_cancel, A008459.P1146083549848276174.a, A008459.P3220700038138124146.a, A007318, A007318.P11755526479805562006.a, A028326, A028326.P7676793339942299677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008459

/-! ## A008459.P13660204129871660525

`(A141597(n)+1)/2`
-/

namespace A008459.P13660204129871660525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141597 n + 1 : ℚ) / 2

end

end A008459.P13660204129871660525

namespace A008459

/-- `(A141597(n)+1)/2` -/
def P13660204129871660525.Spec : Prop :=
  ∀ n, P13660204129871660525.a n = (A008459 n : ℚ)

theorem P13660204129871660525.correct : P13660204129871660525.Spec := by
  intro n
  simp only [A008459, Nat.add_sub_cancel, A008459.P13660204129871660525.a, A008459.P3220700038138124146.a, A007318, A007318.P11755526479805562006.a, A141597, A141597.P14074862873981650977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008459

/-! ## A008459.P13138071414517218545

`(A141596(n)+3)/4`
-/

namespace A008459.P13138071414517218545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141596 n + 3 : ℚ) / 4

end

end A008459.P13138071414517218545

namespace A008459

/-- `(A141596(n)+3)/4` -/
def P13138071414517218545.Spec : Prop :=
  ∀ n, P13138071414517218545.a n = (A008459 n : ℚ)

theorem P13138071414517218545.correct : P13138071414517218545.Spec := by
  intro n
  simp only [A008459, Nat.add_sub_cancel, A008459.P13138071414517218545.a, A008459.P3220700038138124146.a, A007318, A007318.P11755526479805562006.a, A141596, A141596.P17426953477732040037.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008459

/-! ## A008459.P15942013753839492735

`ceil(A109128(n)/2)²`
-/

namespace A008459.P15942013753839492735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109128 n : ℚ) / 2⌉ ^ 2

end

end A008459.P15942013753839492735

namespace A008459

/-- `ceil(A109128(n)/2)²` -/
def P15942013753839492735.Spec : Prop :=
  ∀ n, P15942013753839492735.a n = A008459 n

end A008459

/-! ## A008459.P15612798697165771276

`ceil((A124927(n)/2)²)`
-/

namespace A008459.P15612798697165771276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A124927 n : ℚ) / 2) ^ 2⌉

end

end A008459.P15612798697165771276

namespace A008459

/-- `ceil((A124927(n)/2)²)` -/
def P15612798697165771276.Spec : Prop :=
  ∀ n, P15612798697165771276.a n = A008459 n

end A008459

/-! ## A008459.P10362539571670686687

`ceil((A129994(n)/2)²)`
-/

namespace A008459.P10362539571670686687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A129994 n : ℚ) / 2) ^ 2⌉

end

end A008459.P10362539571670686687

namespace A008459

/-- `ceil((A129994(n)/2)²)` -/
def P10362539571670686687.Spec : Prop :=
  ∀ n, P10362539571670686687.a n = A008459 n

end A008459

/-! ## A008459.P7296170233606182866

`ceil(A131108(n)/2)²`
-/

namespace A008459.P7296170233606182866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131108 n : ℚ) / 2⌉ ^ 2

end

end A008459.P7296170233606182866

namespace A008459

/-- `ceil(A131108(n)/2)²` -/
def P7296170233606182866.Spec : Prop :=
  ∀ n, P7296170233606182866.a n = A008459 n

end A008459

/-! ## A008459.P7727687530115789920

`ceil((A134058(n)/2)²)`
-/

namespace A008459.P7727687530115789920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A134058 n : ℚ) / 2) ^ 2⌉

end

end A008459.P7727687530115789920

namespace A008459

/-- `ceil((A134058(n)/2)²)` -/
def P7727687530115789920.Spec : Prop :=
  ∀ n, P7727687530115789920.a n = A008459 n

end A008459

/-! ## A008459.P15663679778389711599

`A074909(A056943(n))²`
-/

namespace A008459.P15663679778389711599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A056943 n).toNat ^ 2

end

end A008459.P15663679778389711599

namespace A008459

/-- `A074909(A056943(n))²` -/
def P15663679778389711599.Spec : Prop :=
  ∀ n, P15663679778389711599.a n = A008459 n

end A008459

/-! ## A008459.P7111438383120914170

`A073424(n)+A206735(n)²`
-/

namespace A008459.P7111438383120914170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n + A206735 n ^ 2

end

end A008459.P7111438383120914170

namespace A008459

/-- `A073424(n)+A206735(n)²` -/
def P7111438383120914170.Spec : Prop :=
  ∀ n, P7111438383120914170.a n = A008459 n

end A008459

/-!
# A008460: Take sum of squares of digits of previous term; start with 6.

The programs for A008460, the canonical program `A008460.P5217996417452180393` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008460 has offset 1).

The definition of A008460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008460.P5217996417452180393

`A003132(a(n-1))` with `a(0)=6`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008460

/-- `A003132(a(n-1))` -/
def P5217996417452180393.Spec : Prop :=
  ∀ n, P5217996417452180393.a n = A008460 (n + 1)

theorem P5217996417452180393.correct : P5217996417452180393.Spec := by
  intro n
  simp only [A008460, Nat.add_sub_cancel]

end A008460

/-!
# A008461: Take sum of squares of digits of previous term.

The programs for A008461, the canonical program `A008461.P15203974575439267861` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008461 has offset 1).

The definition of A008461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008461.P15203974575439267861

`A003132(a(n-1))` with `a(0)=7`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008461

/-- `A003132(a(n-1))` -/
def P15203974575439267861.Spec : Prop :=
  ∀ n, P15203974575439267861.a n = A008461 (n + 1)

theorem P15203974575439267861.correct : P15203974575439267861.Spec := by
  intro n
  simp only [A008461, Nat.add_sub_cancel]

end A008461

/-!
# A008462: Take sum of squares of digits of previous term; start with 8.

The programs for A008462, the canonical program `A008462.P11316761323922087190` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008462 has offset 1).

The definition of A008462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008462.P11316761323922087190

`A003132(a(n-1))` with `a(0)=8`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008462

/-- `A003132(a(n-1))` -/
def P11316761323922087190.Spec : Prop :=
  ∀ n, P11316761323922087190.a n = A008462 (n + 1)

theorem P11316761323922087190.correct : P11316761323922087190.Spec := by
  intro n
  simp only [A008462, Nat.add_sub_cancel]

end A008462

/-!
# A008463: Take sum of squares of digits of previous term; start with 9.

The programs for A008463, the canonical program `A008463.P8249291237443257325` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008463 has offset 1).

The definition of A008463 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000218, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008463.P8249291237443257325

`A000218(n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008463

/-- `A000218(n+2)` -/
def P8249291237443257325.Spec : Prop :=
  ∀ n, P8249291237443257325.a n = A008463 (n + 1)

theorem P8249291237443257325.correct : P8249291237443257325.Spec := by
  intro n
  simp only [A008463, Nat.add_sub_cancel]

end A008463

/-!
# A008464: a(n) = 2^(2n+3) - 2^n*(n+3).

The programs for A008464, there is no canonical definition to state claims against.
-/

/-! ## A008464.P17130590655130414508

`2^(2*(n-1)+3)-2^(n-1)*(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A008464.P17130590655130414508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (2 * ((n : ℤ) - 1) + 3 : ℤ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n + 2 : ℚ)

end

end A008464.P17130590655130414508

/-! ## A008464.P15505543619683478208

`A336103(2*(n+1))`
-/

namespace A008464.P15505543619683478208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336103 (2 * (n + 1))

end

end A008464.P15505543619683478208

/-! ## A008464.P7077614233721013594

`A349055(2*(n+1))`
-/

namespace A008464.P7077614233721013594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349055 (2 * (n + 1))

end

end A008464.P7077614233721013594

/-! ## A008464.P17848562843261545615

`A368484(2*(n+1))`
-/

namespace A008464.P17848562843261545615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368484 (2 * (n + 1))

end

end A008464.P17848562843261545615

/-! ## A008464.P4489324642821185666

`A008353(n+1)/4`
-/

namespace A008464.P4489324642821185666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008353 (n + 1) : ℚ) / 4

end

end A008464.P4489324642821185666

/-! ## A008464.P15308292753601582694

`A186947(n+2)/8`
-/

namespace A008464.P15308292753601582694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186947 (n + 2) : ℚ) / 8

end

end A008464.P15308292753601582694

/-! ## A008464.P14241072922731112282

`A126198(2*(n+1)²)`
-/

namespace A008464.P14241072922731112282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126198 (2 * (n + 1) ^ 2)

end

end A008464.P14241072922731112282

/-!
# A008465: 2^(2n-6) * C(n,3) - 2^(n-2) * C(n,4).

The programs for A008465, the canonical program `A008465.P16798057664957061300` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008465 has offset 3).

The definition of A008465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008465.P16798057664957061300

`2^(2*(n+3)-6)*C(n+3, 3)-2^(n+1)*C(n+3, 4)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008465

/-- `2^(2*(n+3)-6)*C(n+3, 3)-2^(n+1)*C(n+3, 4)` -/
def P16798057664957061300.Spec : Prop :=
  ∀ n, P16798057664957061300.a n = (A008465 (n + 3) : ℚ)

end A008465

/-! ## A008465.P4623865003620803828

`(A132732(n)+n)*A082138(n)`
-/

namespace A008465.P4623865003620803828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132732 n + (n : ℤ)) * A082138 n

end

end A008465.P4623865003620803828

namespace A008465

/-- `(A132732(n)+n)*A082138(n)` -/
def P4623865003620803828.Spec : Prop :=
  ∀ n, P4623865003620803828.a n = A008465 (n + 3)

end A008465

/-! ## A008465.P16218607876192574776

`(A151821(n+1)-n)*A082138(n)`
-/

namespace A008465.P16218607876192574776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A151821 (n + 1) - (n : ℤ)) * A082138 n

end

end A008465.P16218607876192574776

namespace A008465

/-- `(A151821(n+1)-n)*A082138(n)` -/
def P16218607876192574776.Spec : Prop :=
  ∀ n, P16218607876192574776.a n = A008465 (n + 3)

end A008465

/-! ## A008465.P1110947631586962294

`(A000295(n)+n/2+1)*A001789(n+3)`
-/

namespace A008465.P1110947631586962294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000295 n : ℚ) + ((n : ℚ) / 2 + 1)) * (A001789 (n + 3) : ℚ)

end

end A008465.P1110947631586962294

namespace A008465

/-- `(A000295(n)+n/2+1)*A001789(n+3)` -/
def P1110947631586962294.Spec : Prop :=
  ∀ n, P1110947631586962294.a n = (A008465 (n + 3) : ℚ)

end A008465

/-! ## A008465.P4243425100543948845

`∑[A153010(n+1)]*A082138(n)`
-/

namespace A008465.P4243425100543948845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A082138 n

end

end A008465.P4243425100543948845

namespace A008465

/-- `∑[A153010(n+1)]*A082138(n)` -/
def P4243425100543948845.Spec : Prop :=
  ∀ n, P4243425100543948845.a n = A008465 (n + 3)

end A008465

/-!
# A008466: a(n) = 2^n - Fibonacci(n+2).

The programs for A008466, the canonical program `A008466.P13225017953189168160` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008466 has offset 0).

The definition of A008466 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-A000045(n+2)` (program `A008466.P13225017953189168160`, by `A008466.P13225017953189168160.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008466.P6335225284592330288

`a(n-1)+a(n-2)+2^(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A008466.P6335225284592330288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A008466.P6335225284592330288

namespace A008466

/-- `a(n-1)+a(n-2)+2^(n-2)` -/
def P6335225284592330288.Spec : Prop :=
  ∀ n, P6335225284592330288.a n = (A008466 n : ℚ)

end A008466

/-! ## A008466.P13225017953189168160

`2^n-A000045(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008466

/-- `2^n-A000045(n+2)` -/
def P13225017953189168160.Spec : Prop :=
  ∀ n, P13225017953189168160.a n = A008466 n

theorem P13225017953189168160.correct : P13225017953189168160.Spec := by
  intro n
  simp only [A008466]

end A008466

/-! ## A008466.P16167930119877103090

`3*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A008466.P16167930119877103090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3] fun n a =>
  3 * a (n - 1) - a (n - 2) - 2 * a (n - 3)

end

end A008466.P16167930119877103090

namespace A008466

/-- `3*a(n-1)-a(n-2)-2*a(n-3)` -/
def P16167930119877103090.Spec : Prop :=
  ∀ n, P16167930119877103090.a n = A008466 n

end A008466

/-! ## A008466.P1561144073455619358

`ogf(x^2/(1-3x+x^2+2x^3))`
-/

namespace A008466.P1561144073455619358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -3, 1, 2] n

end

end A008466.P1561144073455619358

namespace A008466

/-- `ogf(x^2/(1-3x+x^2+2x^3))` -/
def P1561144073455619358.Spec : Prop :=
  ∀ n, P1561144073455619358.a n = A008466 n

end A008466

/-! ## A008466.P16542102482620094169

`2^n-A212804(n+3)`
-/

namespace A008466.P16542102482620094169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A212804 (n + 3)

end

end A008466.P16542102482620094169

namespace A008466

/-- `2^n-A212804(n+3)` -/
def P16542102482620094169.Spec : Prop :=
  ∀ n, P16542102482620094169.a n = A008466 n

end A008466

/-! ## A008466.P3206403375388195649

`2^n-A324969(n+3)`
-/

namespace A008466.P3206403375388195649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A324969 (n + 3)

end

end A008466.P3206403375388195649

namespace A008466

/-- `2^n-A324969(n+3)` -/
def P3206403375388195649.Spec : Prop :=
  ∀ n, P3206403375388195649.a n = A008466 n

end A008466

/-! ## A008466.P17033447620871875006

`Δ[-A000045(n+3)]+2^n`
-/

namespace A008466.P17033447620871875006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000045 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 ^ n : ℤ)

end

end A008466.P17033447620871875006

namespace A008466

/-- `Δ[-A000045(n+3)]+2^n` -/
def P17033447620871875006.Spec : Prop :=
  ∀ n, P17033447620871875006.a n = A008466 n

end A008466

/-! ## A008466.P8334764664315085224

`Δ[A000045(n)]+2*a(n-1)` with `a(0)=0`
-/

namespace A008466.P8334764664315085224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 1)

end

end A008466.P8334764664315085224

namespace A008466

/-- `Δ[A000045(n)]+2*a(n-1)` -/
def P8334764664315085224.Spec : Prop :=
  ∀ n, P8334764664315085224.a n = A008466 n

end A008466

/-! ## A008466.P17687698517677396411

`A000045(n-1)+2*a(n-1)` with `a(0)=0`
-/

namespace A008466.P17687698517677396411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (n - 1) + 2 * a (n - 1)

end

end A008466.P17687698517677396411

namespace A008466

/-- `A000045(n-1)+2*a(n-1)` -/
def P17687698517677396411.Spec : Prop :=
  ∀ n, P17687698517677396411.a n = A008466 n

end A008466

/-! ## A008466.P12137066935595092364

`A000032(n-1)+4*a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A008466.P12137066935595092364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000032 (n - 1) + 4 * a (n - 2)

end

end A008466.P12137066935595092364

namespace A008466

/-- `A000032(n-1)+4*a(n-2)` -/
def P12137066935595092364.Spec : Prop :=
  ∀ n, P12137066935595092364.a n = A008466 n

end A008466

/-! ## A008466.P5038255362174755112

`A052956(n)-A020695(n)`
-/

namespace A008466.P5038255362174755112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052956 n - A020695 n

end

end A008466.P5038255362174755112

namespace A008466

/-- `A052956(n)-A020695(n)` -/
def P5038255362174755112.Spec : Prop :=
  ∀ n, P5038255362174755112.a n = A008466 n

end A008466

/-! ## A008466.P13451611743725320299

`A014236(n)-A079285(n)`
-/

namespace A008466.P13451611743725320299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014236 n - A079285 n

end

end A008466.P13451611743725320299

namespace A008466

/-- `A014236(n)-A079285(n)` -/
def P13451611743725320299.Spec : Prop :=
  ∀ n, P13451611743725320299.a n = A008466 n

end A008466

/-! ## A008466.P13994146617776738226

`A051049(n)-A052952(n)`
-/

namespace A008466.P13994146617776738226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 n - A052952 n

end

end A008466.P13994146617776738226

namespace A008466

/-- `A051049(n)-A052952(n)` -/
def P13994146617776738226.Spec : Prop :=
  ∀ n, P13994146617776738226.a n = A008466 n

end A008466

/-! ## A008466.P14886101791540626573

`A000045(n)-A227200(n)`
-/

namespace A008466.P14886101791540626573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A227200 n

end

end A008466.P14886101791540626573

namespace A008466

/-- `A000045(n)-A227200(n)` -/
def P14886101791540626573.Spec : Prop :=
  ∀ n, P14886101791540626573.a n = A008466 n

end A008466

/-! ## A008466.P14866980937085994952

`A118645(n)-A143281(n)`
-/

namespace A008466.P14866980937085994952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118645 n - A143281 n

end

end A008466.P14866980937085994952

namespace A008466

/-- `A118645(n)-A143281(n)` -/
def P14866980937085994952.Spec : Prop :=
  ∀ n, P14866980937085994952.a n = A008466 n

theorem P14866980937085994952.correct : P14866980937085994952.Spec := by
  intro n
  simp only [A008466, Nat.add_sub_cancel, A008466.P14866980937085994952.a, A008466.P13225017953189168160.a, A000045, A000045.P11838749114346432762.a, A118645, A118645.P9988651607657554541.a, A143281, A143281.P18435193582386234759.a, A000930, A000930.P1809025983395262284.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008466

/-! ## A008466.P6095821794089104298

`A274230(n)-A005673(n)`
-/

namespace A008466.P6095821794089104298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 n - A005673 n

end

end A008466.P6095821794089104298

namespace A008466

/-- `A274230(n)-A005673(n)` -/
def P6095821794089104298.Spec : Prop :=
  ∀ n, P6095821794089104298.a n = A008466 n

end A008466

/-! ## A008466.P14977471690634150133

`A354294(n)-A079289(n)`
-/

namespace A008466.P14977471690634150133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354294 n - A079289 n

end

end A008466.P14977471690634150133

namespace A008466

/-- `A354294(n)-A079289(n)` -/
def P14977471690634150133.Spec : Prop :=
  ∀ n, P14977471690634150133.a n = A008466 n

end A008466

/-! ## A008466.P11630271984686691764

`A000225(n)-∑[A000045(n)]`
-/

namespace A008466.P11630271984686691764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008466.P11630271984686691764

namespace A008466

/-- `A000225(n)-∑[A000045(n)]` -/
def P11630271984686691764.Spec : Prop :=
  ∀ n, P11630271984686691764.a n = A008466 n

end A008466

/-! ## A008466.P4872672579241366550

`∑[A131577(n)-A000045(n)]`
-/

namespace A008466.P4872672579241366550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008466.P4872672579241366550

namespace A008466

/-- `∑[A131577(n)-A000045(n)]` -/
def P4872672579241366550.Spec : Prop :=
  ∀ n, P4872672579241366550.a n = A008466 n

end A008466

/-! ## A008466.P1232458453157554034

`A232580(n)+A000071(n+1)`
-/

namespace A008466.P1232458453157554034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232580 n + A000071 (n + 1)

end

end A008466.P1232458453157554034

namespace A008466

/-- `A232580(n)+A000071(n+1)` -/
def P1232458453157554034.Spec : Prop :=
  ∀ n, P1232458453157554034.a n = A008466 n

end A008466

/-!
# A008468: a(n) = n OR n^3 (applied to binary expansions).

The programs for A008468, the canonical program `A008468.P123696742737011525` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008468 has offset 1).

The definition of A008468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008468.P123696742737011525

`or(n+1, (n+1)^3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008468

/-- `or(n+1, (n+1)^3)` -/
def P123696742737011525.Spec : Prop :=
  ∀ n, (P123696742737011525.a n : ℤ) = A008468 (n + 1)

theorem P123696742737011525.correct : P123696742737011525.Spec := by
  intro n
  simp only [A008468, Nat.add_sub_cancel]

end A008468

/-! ## A008468.P5597435022000903037

`∑[abs(Δ[or(n, n^3)])]`
-/

namespace A008468.P5597435022000903037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n ^ 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008468.P5597435022000903037

namespace A008468

/-- `∑[abs(Δ[or(n, n^3)])]` -/
def P5597435022000903037.Spec : Prop :=
  ∀ n, P5597435022000903037.a n = A008468 (n + 1)

end A008468

/-! ## A008468.P4095747147766053695

`and(-(n+2), (n+1)^3)+n+1`
-/

namespace A008468.P4095747147766053695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n + 2 : ℤ)) ((n + 1) ^ 3 : ℤ) + (n + 1 : ℤ)

end

end A008468.P4095747147766053695

namespace A008468

/-- `and(-(n+2), (n+1)^3)+n+1` -/
def P4095747147766053695.Spec : Prop :=
  ∀ n, P4095747147766053695.a n = A008468 (n + 1)

end A008468

/-! ## A008468.P3362453532218138327

`abs(or(n+1, Δ[A000217(n)²]))`
-/

namespace A008468.P3362453532218138327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n + 1 : ℤ) (f1 (n + 1) - f1 n)|

end

end A008468.P3362453532218138327

namespace A008468

/-- `abs(or(n+1, Δ[A000217(n)²]))` -/
def P3362453532218138327.Spec : Prop :=
  ∀ n, P3362453532218138327.a n = A008468 (n + 1)

end A008468

/-! ## A008468.P2889443472282519920

`abs(or(A005408(n)-n, A000578(n+1)))`
-/

namespace A008468.P2889443472282519920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (A005408 n - (n : ℤ)) (A000578 (n + 1))|

end

end A008468.P2889443472282519920

namespace A008468

/-- `abs(or(A005408(n)-n, A000578(n+1)))` -/
def P2889443472282519920.Spec : Prop :=
  ∀ n, P2889443472282519920.a n = A008468 (n + 1)

end A008468

/-! ## A008468.P8478680225019730939

`abs(or(n+1, Δ[∑[n]²]))`
-/

namespace A008468.P8478680225019730939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A008468.P8478680225019730939

namespace A008468

/-- `abs(or(n+1, Δ[∑[n]²]))` -/
def P8478680225019730939.Spec : Prop :=
  ∀ n, P8478680225019730939.a n = A008468 (n + 1)

end A008468

/-! ## A008468.P4610885025355861973

`or(Δ[A000537(n)]+1, n+2)-1`
-/

namespace A008468.P4610885025355861973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n + 1) (n + 2 : ℤ) - 1

end

end A008468.P4610885025355861973

namespace A008468

/-- `or(Δ[A000537(n)]+1, n+2)-1` -/
def P4610885025355861973.Spec : Prop :=
  ∀ n, P4610885025355861973.a n = A008468 (n + 1)

end A008468

/-! ## A008468.P5504196122034464539

`record[or(A109588(n+1), A109595(n+1))]`
-/

namespace A008468.P5504196122034464539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A109588 (n + 1)) (A109595 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008468.P5504196122034464539

namespace A008468

/-- `record[or(A109588(n+1), A109595(n+1))]` -/
def P5504196122034464539.Spec : Prop :=
  ∀ n, P5504196122034464539.a n = A008468 (n + 1)

end A008468

/-! ## A008468.P4841589203900782792

`A000027(or(n+1, ∑[A003215(n)]))`
-/

namespace A008468.P4841589203900782792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lor (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A008468.P4841589203900782792

namespace A008468

/-- `A000027(or(n+1, ∑[A003215(n)]))` -/
def P4841589203900782792.Spec : Prop :=
  ∀ n, P4841589203900782792.a n = A008468 (n + 1)

end A008468

/-! ## A008468.P17477583191033225873

`A000027(or(n+1, A000578(n+1)))`
-/

namespace A008468.P17477583191033225873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lor (n + 1 : ℤ) (A000578 (n + 1))).toNat

end

end A008468.P17477583191033225873

namespace A008468

/-- `A000027(or(n+1, A000578(n+1)))` -/
def P17477583191033225873.Spec : Prop :=
  ∀ n, P17477583191033225873.a n = A008468 (n + 1)

end A008468

/-!
# A008469: a(n) = n OR n^3 (applied to ternary expansions).

The programs for A008469, there is no canonical definition to state claims against.
-/

/-! ## A008469.P8301269072674801379

`A298120(A025740(n))`
-/

namespace A008469.P8301269072674801379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298120 (A025740 n).toNat

end

end A008469.P8301269072674801379

/-! ## A008469.P1283511605647489703

`A298120(∑[A123384(n)])`
-/

namespace A008469.P1283511605647489703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008469.P1283511605647489703

/-!
# A008470: At least 3 out of 10m+1, 10m+3, 10m+7, 10m+9 are primes.

The programs for A008470, there is no canonical definition to state claims against.
-/

/-! ## A008470.P2651660080645280814

`floor(A238713(n+1)/10)`
-/

namespace A008470.P2651660080645280814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A238713 (n + 1) : ℚ) / 10⌋

end

end A008470.P2651660080645280814

/-! ## A008470.P16546152733718396309

`∪[A007811(n+1), A008471(n+1)]`
-/

namespace A008470.P16546152733718396309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A008470.P16546152733718396309

/-! ## A008470.P16536875966062394082

`round(A238713(n+1)/10)%A006512(n+1)`
-/

namespace A008470.P16536875966062394082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A238713 (n + 1) : ℚ) / 10)) (A006512 (n + 1))

end

end A008470.P16536875966062394082

/-! ## A008470.P8613955247491452512

`floor(A238730(n+2)/10)`
-/

namespace A008470.P8613955247491452512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A238730 (n + 2) : ℚ) / 10⌋

end

end A008470.P8613955247491452512

/-! ## A008470.P3098563994687914774

`round(A008683(A007918(n))+A238730(n+2)/10)`
-/

namespace A008470.P3098563994687914774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008683 (A007918 n).toNat : ℚ) + (A238730 (n + 2) : ℚ) / 10)

end

end A008470.P3098563994687914774

/-! ## A008470.P3669297309082379682

`A008683(A020484(n))+round(A238730(n+2)/10)`
-/

namespace A008470.P3669297309082379682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020484 n).toNat + SequenceMachineLib.roundAway ((A238730 (n + 2) : ℚ) / 10)

end

end A008470.P3669297309082379682

/-! ## A008470.P7919019276537777375

`A008683(A151800(n))+round(A238730(n+2)/10)`
-/

namespace A008470.P7919019276537777375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A151800 n).toNat + SequenceMachineLib.roundAway ((A238730 (n + 2) : ℚ) / 10)

end

end A008470.P7919019276537777375

/-! ## A008470.P5521804569785946681

`lt[2, A038800(n+1)]+1`
-/

namespace A008470.P5521804569785946681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A008470.P5521804569785946681

/-! ## A008470.P2586275116840192991

`lt[2, A038800(A064429(n+1))]`
-/

namespace A008470.P2586275116840192991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (A064429 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A008470.P2586275116840192991

/-! ## A008470.P2538926496590143207

`A064429(round(A238730(n+2)/10))`
-/

namespace A008470.P2538926496590143207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (SequenceMachineLib.roundAway ((A238730 (n + 2) : ℚ) / 10)).toNat

end

end A008470.P2538926496590143207

/-!
# A008471: Exactly 3 out of 10m+1, 10m+3, 10m+7, 10m+9 are primes.

The programs for A008471, the canonical program `A008471.P11725137829217695718` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008471 has offset 1).

The definition of A008471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008471.P11725137829217695718

`eq[3, A038800(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A008471

/-- `eq[3, A038800(n)]` -/
def P11725137829217695718.Spec : Prop :=
  ∀ n, (P11725137829217695718.a n : ℤ) = A008471 (n + 1)

theorem P11725137829217695718.correct : P11725137829217695718.Spec := by
  intro n
  simp only [A008471, Nat.add_sub_cancel]

end A008471

/-! ## A008471.P16437680971636182241

`eq[3, A192977(A065039(n))]`
-/

namespace A008471.P16437680971636182241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192977 (A065039 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A008471.P16437680971636182241

namespace A008471

/-- `eq[3, A192977(A065039(n))]` -/
def P16437680971636182241.Spec : Prop :=
  ∀ n, (P16437680971636182241.a n : ℤ) = A008471 (n + 1)

end A008471

/-! ## A008471.P16519926704790582643

`eq[3, A048853(A017317(n))]`
-/

namespace A008471.P16519926704790582643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A017317 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A008471.P16519926704790582643

namespace A008471

/-- `eq[3, A048853(A017317(n))]` -/
def P16519926704790582643.Spec : Prop :=
  ∀ n, (P16519926704790582643.a n : ℤ) = A008471 (n + 1)

end A008471

/-! ## A008471.P7194627237595619297

`eq[3, A048853(A017341(n))]`
-/

namespace A008471.P7194627237595619297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A017341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A008471.P7194627237595619297

namespace A008471

/-- `eq[3, A048853(A017341(n))]` -/
def P7194627237595619297.Spec : Prop :=
  ∀ n, (P7194627237595619297.a n : ℤ) = A008471 (n + 1)

end A008471

/-! ## A008471.P4628886107138730274

`eq[3, A048853(A017365(n))]`
-/

namespace A008471.P4628886107138730274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A017365 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A008471.P4628886107138730274

namespace A008471

/-- `eq[3, A048853(A017365(n))]` -/
def P4628886107138730274.Spec : Prop :=
  ∀ n, (P4628886107138730274.a n : ℤ) = A008471 (n + 1)

end A008471

/-! ## A008471.P2107873090758997284

`eq[3, A000120(A105052(n))]`
-/

namespace A008471.P2107873090758997284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A105052 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A008471.P2107873090758997284

namespace A008471

/-- `eq[3, A000120(A105052(n))]` -/
def P2107873090758997284.Spec : Prop :=
  ∀ n, (P2107873090758997284.a n : ℤ) = A008471 (n + 1)

end A008471

/-!
# A008472: Sum of the distinct primes dividing n.

The programs for A008472, the canonical program `A008472.P6567490011312877583` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008472 has offset 1).

The definition of A008472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008472.P14302168977179476366

`A000203(n+1)-A023890(n+1)`
-/

namespace A008472.P14302168977179476366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A023890 (n + 1)

end

end A008472.P14302168977179476366

namespace A008472

/-- `A000203(n+1)-A023890(n+1)` -/
def P14302168977179476366.Spec : Prop :=
  ∀ n, P14302168977179476366.a n = A008472 (n + 1)

theorem P14302168977179476366.correct : P14302168977179476366.Spec := by
  intro n
  simp only [A008472, Nat.add_sub_cancel, A008472.P14302168977179476366.a, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A023890, A023890.P4514850295399263827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008472

/-! ## A008472.P6567490011312877583

`∑{p}[n+1, #]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008472

/-- `∑{p}[n+1, #]` -/
def P6567490011312877583.Spec : Prop :=
  ∀ n, (P6567490011312877583.a n : ℤ) = A008472 (n + 1)

theorem P6567490011312877583.correct : P6567490011312877583.Spec := by
  intro n
  simp only [A008472, Nat.add_sub_cancel]

end A008472

/-! ## A008472.P14613917248378295553

`Δ[A024924(n)]`
-/

namespace A008472.P14613917248378295553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008472.P14613917248378295553

namespace A008472

/-- `Δ[A024924(n)]` -/
def P14613917248378295553.Spec : Prop :=
  ∀ n, P14613917248378295553.a n = A008472 (n + 1)

end A008472

/-! ## A008472.P14924792251495815104

`sqrt(A235323(n+1))`
-/

namespace A008472.P14924792251495815104
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A235323 (n + 1) : ℝ)

end

end A008472.P14924792251495815104

namespace A008472

/-- `sqrt(A235323(n+1))` -/
def P14924792251495815104.Spec : Prop :=
  ∀ n, P14924792251495815104.a n = (A008472 (n + 1) : ℝ)

end A008472

/-! ## A008472.P1943114037006935504

`A074372(n+1)-1`
-/

namespace A008472.P1943114037006935504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (n + 1) - 1

end

end A008472.P1943114037006935504

namespace A008472

/-- `A074372(n+1)-1` -/
def P1943114037006935504.Spec : Prop :=
  ∀ n, P1943114037006935504.a n = A008472 (n + 1)

theorem P1943114037006935504.correct : P1943114037006935504.Spec := by
  intro n
  simp only [A008472, Nat.add_sub_cancel, A008472.P1943114037006935504.a, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A074372, A074372.P4137528993984796168.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008472

/-! ## A008472.P4828129255281798878

`∑{d}[n+1, A061397(#)]`
-/

namespace A008472.P4828129255281798878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061397 d

end

end A008472.P4828129255281798878

namespace A008472

/-- `∑{d}[n+1, A061397(#)]` -/
def P4828129255281798878.Spec : Prop :=
  ∀ n, P4828129255281798878.a n = A008472 (n + 1)

end A008472

/-! ## A008472.P15489640018001065355

`A001414(∏{p}[n+1, #])`
-/

namespace A008472.P15489640018001065355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A008472.P15489640018001065355

namespace A008472

/-- `A001414(∏{p}[n+1, #])` -/
def P15489640018001065355.Spec : Prop :=
  ∀ n, P15489640018001065355.a n = A008472 (n + 1)

end A008472

/-! ## A008472.P235374731581406378

`A008475(∏{p}[n+1, #])`
-/

namespace A008472.P235374731581406378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A008472.P235374731581406378

namespace A008472

/-- `A008475(∏{p}[n+1, #])` -/
def P235374731581406378.Spec : Prop :=
  ∀ n, P235374731581406378.a n = A008472 (n + 1)

end A008472

/-! ## A008472.P6070824695123613650

`A023889(∏{p}[n+1, #])`
-/

namespace A008472.P6070824695123613650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A008472.P6070824695123613650

namespace A008472

/-- `A023889(∏{p}[n+1, #])` -/
def P6070824695123613650.Spec : Prop :=
  ∀ n, P6070824695123613650.a n = A008472 (n + 1)

end A008472

/-! ## A008472.P8758097539781149796

`A063956(∏{p}[n+1, #])`
-/

namespace A008472.P8758097539781149796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063956 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A008472.P8758097539781149796

namespace A008472

/-- `A063956(∏{p}[n+1, #])` -/
def P8758097539781149796.Spec : Prop :=
  ∀ n, P8758097539781149796.a n = A008472 (n + 1)

end A008472

/-! ## A008472.P16481277544516517430

`A106492(∏{p}[n+1, #])`
-/

namespace A008472.P16481277544516517430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106492 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A008472.P16481277544516517430

namespace A008472

/-- `A106492(∏{p}[n+1, #])` -/
def P16481277544516517430.Spec : Prop :=
  ∀ n, P16481277544516517430.a n = A008472 (n + 1)

end A008472

/-! ## A008472.P2187215837617679088

`A181894(∏{p}[n+1, #])`
-/

namespace A008472.P2187215837617679088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181894 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A008472.P2187215837617679088

namespace A008472

/-- `A181894(∏{p}[n+1, #])` -/
def P2187215837617679088.Spec : Prop :=
  ∀ n, P2187215837617679088.a n = A008472 (n + 1)

end A008472

/-! ## A008472.P9600606721715602994

`A306328(∏{p}[n+1, #])`
-/

namespace A008472.P9600606721715602994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306328 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A008472.P9600606721715602994

namespace A008472

/-- `A306328(∏{p}[n+1, #])` -/
def P9600606721715602994.Spec : Prop :=
  ∀ n, P9600606721715602994.a n = A008472 (n + 1)

end A008472

/-! ## A008472.P5244161984046965845

`A338038(∏{p}[n+1, #])`
-/

namespace A008472.P5244161984046965845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338038 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A008472.P5244161984046965845

namespace A008472

/-- `A338038(∏{p}[n+1, #])` -/
def P5244161984046965845.Spec : Prop :=
  ∀ n, P5244161984046965845.a n = A008472 (n + 1)

end A008472

/-! ## A008472.P8019079023182342229

`A075653(n+1)-(n+1)`
-/

namespace A008472.P8019079023182342229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1) - (n + 1 : ℤ)

end

end A008472.P8019079023182342229

namespace A008472

/-- `A075653(n+1)-(n+1)` -/
def P8019079023182342229.Spec : Prop :=
  ∀ n, P8019079023182342229.a n = A008472 (n + 1)

theorem P8019079023182342229.correct : P8019079023182342229.Spec := by
  intro n
  simp only [A008472, Nat.add_sub_cancel, A008472.P8019079023182342229.a, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A075653, A075653.P2659253384492111030.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008472

/-! ## A008472.P12413133565491767956

`1-A076694(n+1)+n`
-/

namespace A008472.P12413133565491767956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A076694 (n + 1) + (n : ℤ)

end

end A008472.P12413133565491767956

namespace A008472

/-- `1-A076694(n+1)+n` -/
def P12413133565491767956.Spec : Prop :=
  ∀ n, P12413133565491767956.a n = A008472 (n + 1)

theorem P12413133565491767956.correct : P12413133565491767956.Spec := by
  intro n
  simp only [A008472, Nat.add_sub_cancel, A008472.P12413133565491767956.a, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A076694, A076694.P8693598391704263352.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008472

/-! ## A008472.P1238528919367299371

`A254340(n+1)-(n+2)`
-/

namespace A008472.P1238528919367299371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254340 (n + 1) - (n + 2 : ℤ)

end

end A008472.P1238528919367299371

namespace A008472

/-- `A254340(n+1)-(n+2)` -/
def P1238528919367299371.Spec : Prop :=
  ∀ n, P1238528919367299371.a n = A008472 (n + 1)

theorem P1238528919367299371.correct : P1238528919367299371.Spec := by
  intro n
  simp only [A008472, Nat.add_sub_cancel, A008472.P1238528919367299371.a, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A254340, A254340.P17394909543363864002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008472

/-! ## A008472.P17827271987877189692

`∑{d}[n+1, #*A010051(#)]`
-/

namespace A008472.P17827271987877189692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010051 d

end

end A008472.P17827271987877189692

namespace A008472

/-- `∑{d}[n+1, #*A010051(#)]` -/
def P17827271987877189692.Spec : Prop :=
  ∀ n, P17827271987877189692.a n = A008472 (n + 1)

end A008472

/-! ## A008472.P1342267960471505560

`A001414(A007947(n+1))`
-/

namespace A008472.P1342267960471505560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A007947 (n + 1)).toNat

end

end A008472.P1342267960471505560

namespace A008472

/-- `A001414(A007947(n+1))` -/
def P1342267960471505560.Spec : Prop :=
  ∀ n, P1342267960471505560.a n = A008472 (n + 1)

end A008472

/-! ## A008472.P638821687259657505

`A023443(A074372(n+1))`
-/

namespace A008472.P638821687259657505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A074372 (n + 1)).toNat

end

end A008472.P638821687259657505

namespace A008472

/-- `A023443(A074372(n+1))` -/
def P638821687259657505.Spec : Prop :=
  ∀ n, P638821687259657505.a n = A008472 (n + 1)

end A008472

/-!
# A008473: If n = Product (p_j^k_j) then a(n) = Product (p_j + k_j).

The programs for A008473, the canonical program `A008473.P3756259633038336692` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008473 has offset 1).

The definition of A008473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008473.P3756259633038336692

`∏{p}[n+1, val(n+1, #)+#]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008473

/-- `∏{p}[n+1, val(n+1, #)+#]` -/
def P3756259633038336692.Spec : Prop :=
  ∀ n, (P3756259633038336692.a n : ℤ) = A008473 (n + 1)

theorem P3756259633038336692.correct : P3756259633038336692.Spec := by
  intro n
  simp only [A008473, Nat.add_sub_cancel]

end A008473

/-! ## A008473.P18266644889332251777

`∑{d}[n+1, A055231(#)]`
-/

namespace A008473.P18266644889332251777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055231 d

end

end A008473.P18266644889332251777

namespace A008473

/-- `∑{d}[n+1, A055231(#)]` -/
def P18266644889332251777.Spec : Prop :=
  ∀ n, P18266644889332251777.a n = A008473 (n + 1)

end A008473

/-! ## A008473.P13412740514954550928

`∑{d}[n+1, #/A057521(#)]`
-/

namespace A008473.P13412740514954550928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (A057521 d : ℚ)

end

end A008473.P13412740514954550928

namespace A008473

/-- `∑{d}[n+1, #/A057521(#)]` -/
def P13412740514954550928.Spec : Prop :=
  ∀ n, P13412740514954550928.a n = (A008473 (n + 1) : ℚ)

end A008473

/-! ## A008473.P11609097316427341740

`∑{d}[n+1, A007947(n+1)/A007947(#)]`
-/

namespace A008473.P11609097316427341740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A007947 (n + 1) : ℚ) / (A007947 d : ℚ)

end

end A008473.P11609097316427341740

namespace A008473

/-- `∑{d}[n+1, A007947(n+1)/A007947(#)]` -/
def P11609097316427341740.Spec : Prop :=
  ∀ n, P11609097316427341740.a n = (A008473 (n + 1) : ℚ)

end A008473

/-! ## A008473.P13920386380423126413

`A007947(n+1)*A322965(n+1)/A322966(n+1)`
-/

namespace A008473.P13920386380423126413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) * A322965 (n + 1) : ℚ) / (A322966 (n + 1) : ℚ)

end

end A008473.P13920386380423126413

namespace A008473

/-- `A007947(n+1)*A322965(n+1)/A322966(n+1)` -/
def P13920386380423126413.Spec : Prop :=
  ∀ n, P13920386380423126413.a n = (A008473 (n + 1) : ℚ)

end A008473

/-! ## A008473.P15915683641425388185

`∑{d}[n+1, A329376(#²)]`
-/

namespace A008473.P15915683641425388185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A329376 (d ^ 2)

end

end A008473.P15915683641425388185

namespace A008473

/-- `∑{d}[n+1, A329376(#²)]` -/
def P15915683641425388185.Spec : Prop :=
  ∀ n, P15915683641425388185.a n = A008473 (n + 1)

end A008473

/-!
# A008474: If n = Product (p_j^k_j) then a(n) = Sum (p_j + k_j).

The programs for A008474, the canonical program `A008474.P119709174749842562` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008474 has offset 1).

The definition of A008474 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008474.P119709174749842562

`A001222(n+1)+A008472(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008474

/-- `A001222(n+1)+A008472(n+1)` -/
def P119709174749842562.Spec : Prop :=
  ∀ n, P119709174749842562.a n = A008474 (n + 1)

theorem P119709174749842562.correct : P119709174749842562.Spec := by
  intro n
  simp only [A008474, Nat.add_sub_cancel]

end A008474

/-! ## A008474.P10430577146018700003

`∑{p}[n+1, val(n+1, #)+#]`
-/

namespace A008474.P10430577146018700003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) p + p)

end

end A008474.P10430577146018700003

namespace A008474

/-- `∑{p}[n+1, val(n+1, #)+#]` -/
def P10430577146018700003.Spec : Prop :=
  ∀ n, (P10430577146018700003.a n : ℤ) = A008474 (n + 1)

end A008474

/-! ## A008474.P6724253178183487880

`∑{e}[n+1, #]+∑{p}[n+1, #]`
-/

namespace A008474.P6724253178183487880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + ∑ p ∈ Nat.primeFactors (f2 n), p

end

end A008474.P6724253178183487880

namespace A008474

/-- `∑{e}[n+1, #]+∑{p}[n+1, #]` -/
def P6724253178183487880.Spec : Prop :=
  ∀ n, (P6724253178183487880.a n : ℤ) = A008474 (n + 1)

end A008474

/-! ## A008474.P7608754632642730436

`A159076(n+1)-2`
-/

namespace A008474.P7608754632642730436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159076 (n + 1) - 2

end

end A008474.P7608754632642730436

namespace A008474

/-- `A159076(n+1)-2` -/
def P7608754632642730436.Spec : Prop :=
  ∀ n, P7608754632642730436.a n = A008474 (n + 1)

end A008474

/-! ## A008474.P9134487565850973350

`A008475(∏{p}[n+1, #])+∑{e}[n+1, #]`
-/

namespace A008474.P9134487565850973350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (∏ p ∈ Nat.primeFactors (f1 n), p) + ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A008474.P9134487565850973350

namespace A008474

/-- `A008475(∏{p}[n+1, #])+∑{e}[n+1, #]` -/
def P9134487565850973350.Spec : Prop :=
  ∀ n, P9134487565850973350.a n = A008474 (n + 1)

end A008474

/-! ## A008474.P5275059916730058637

`A023444(A159076(n+1))`
-/

namespace A008474.P5275059916730058637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A159076 (n + 1)).toNat

end

end A008474.P5275059916730058637

namespace A008474

/-- `A023444(A159076(n+1))` -/
def P5275059916730058637.Spec : Prop :=
  ∀ n, P5275059916730058637.a n = A008474 (n + 1)

end A008474

/-! ## A008474.P15863399895546274246

`A001222(n+1)+Δ[A024924(n)]`
-/

namespace A008474.P15863399895546274246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (f1 (n + 1) - f1 n)

end

end A008474.P15863399895546274246

namespace A008474

/-- `A001222(n+1)+Δ[A024924(n)]` -/
def P15863399895546274246.Spec : Prop :=
  ∀ n, P15863399895546274246.a n = A008474 (n + 1)

end A008474

/-! ## A008474.P18062171056278968983

`A008472(n+1)+Δ[A022559(n)]`
-/

namespace A008474.P18062171056278968983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + (f1 (n + 1) - f1 n)

end

end A008474.P18062171056278968983

namespace A008474

/-- `A008472(n+1)+Δ[A022559(n)]` -/
def P18062171056278968983.Spec : Prop :=
  ∀ n, P18062171056278968983.a n = A008474 (n + 1)

end A008474

/-! ## A008474.P2478346572437899983

`A080256(n+1)+A055631(n+1)`
-/

namespace A008474.P2478346572437899983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080256 (n + 1) + A055631 (n + 1)

end

end A008474.P2478346572437899983

namespace A008474

/-- `A080256(n+1)+A055631(n+1)` -/
def P2478346572437899983.Spec : Prop :=
  ∀ n, P2478346572437899983.a n = A008474 (n + 1)

end A008474

/-! ## A008474.P1232146595525959983

`A338038(n+1)+A056169(n+1)`
-/

namespace A008474.P1232146595525959983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338038 (n + 1) + A056169 (n + 1)

end

end A008474.P1232146595525959983

namespace A008474

/-- `A338038(n+1)+A056169(n+1)` -/
def P1232146595525959983.Spec : Prop :=
  ∀ n, P1232146595525959983.a n = A008474 (n + 1)

end A008474

/-! ## A008474.P17432014697218709802

`A064800(n+1)-A076694(n+1)`
-/

namespace A008474.P17432014697218709802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 1) - A076694 (n + 1)

end

end A008474.P17432014697218709802

namespace A008474

/-- `A064800(n+1)-A076694(n+1)` -/
def P17432014697218709802.Spec : Prop :=
  ∀ n, P17432014697218709802.a n = A008474 (n + 1)

end A008474

/-! ## A008474.P17080494406891424605

`A075653(n+1)-A069345(n+1)`
-/

namespace A008474.P17080494406891424605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1) - A069345 (n + 1)

end

end A008474.P17080494406891424605

namespace A008474

/-- `A075653(n+1)-A069345(n+1)` -/
def P17080494406891424605.Spec : Prop :=
  ∀ n, P17080494406891424605.a n = A008474 (n + 1)

end A008474

/-! ## A008474.P17458474670227120326

`A349215(n+1)-A135767(n+1)`
-/

namespace A008474.P17458474670227120326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349215 (n + 1) - A135767 (n + 1)

end

end A008474.P17458474670227120326

namespace A008474

/-- `A349215(n+1)-A135767(n+1)` -/
def P17458474670227120326.Spec : Prop :=
  ∀ n, P17458474670227120326.a n = A008474 (n + 1)

end A008474

/-! ## A008474.P15055087678554472256

`A001222(n+1)+sqrt(A235323(n+1))`
-/

namespace A008474.P15055087678554472256
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) : ℝ) + Real.sqrt (A235323 (n + 1) : ℝ)

end

end A008474.P15055087678554472256

namespace A008474

/-- `A001222(n+1)+sqrt(A235323(n+1))` -/
def P15055087678554472256.Spec : Prop :=
  ∀ n, P15055087678554472256.a n = (A008474 (n + 1) : ℝ)

end A008474

/-! ## A008474.P16328545300059731191

`A008472(n+1)+log2(A061142(n+1))`
-/

namespace A008474.P16328545300059731191
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) : ℝ) + Real.logb 2 (A061142 (n + 1) : ℝ)

end

end A008474.P16328545300059731191

namespace A008474

/-- `A008472(n+1)+log2(A061142(n+1))` -/
def P16328545300059731191.Spec : Prop :=
  ∀ n, P16328545300059731191.a n = (A008474 (n + 1) : ℝ)

end A008474

/-! ## A008474.P15714338848407589589

`A073093(n+1)+A074372(n+1)-2`
-/

namespace A008474.P15714338848407589589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) + (A074372 (n + 1) - 2)

end

end A008474.P15714338848407589589

namespace A008474

/-- `A073093(n+1)+A074372(n+1)-2` -/
def P15714338848407589589.Spec : Prop :=
  ∀ n, P15714338848407589589.a n = A008474 (n + 1)

end A008474

/-! ## A008474.P16761624815644978562

`A254340(n+1)-(A075795(n+1)+2)`
-/

namespace A008474.P16761624815644978562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254340 (n + 1) - (A075795 (n + 1) + 2)

end

end A008474.P16761624815644978562

namespace A008474

/-- `A254340(n+1)-(A075795(n+1)+2)` -/
def P16761624815644978562.Spec : Prop :=
  ∀ n, P16761624815644978562.a n = A008474 (n + 1)

end A008474

/-! ## A008474.P6196353123935764669

`A008472(n+1)+A255201(n+1)/2`
-/

namespace A008474.P6196353123935764669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) : ℚ) + (A255201 (n + 1) : ℚ) / 2

end

end A008474.P6196353123935764669

namespace A008474

/-- `A008472(n+1)+A255201(n+1)/2` -/
def P6196353123935764669.Spec : Prop :=
  ∀ n, P6196353123935764669.a n = (A008474 (n + 1) : ℚ)

end A008474

/-! ## A008474.P12532455410088602151

`A306328(A007947(n+1))+A001222(n+1)`
-/

namespace A008474.P12532455410088602151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306328 (A007947 (n + 1)).toNat + A001222 (n + 1)

end

end A008474.P12532455410088602151

namespace A008474

/-- `A306328(A007947(n+1))+A001222(n+1)` -/
def P12532455410088602151.Spec : Prop :=
  ∀ n, P12532455410088602151.a n = A008474 (n + 1)

end A008474

/-! ## A008474.P12480025212017151926

`A008472(n+1)+A022559(n+1)-A022559(n)`
-/

namespace A008474.P12480025212017151926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + (A022559 (n + 1) - A022559 n)

end

end A008474.P12480025212017151926

namespace A008474

/-- `A008472(n+1)+A022559(n+1)-A022559(n)` -/
def P12480025212017151926.Spec : Prop :=
  ∀ n, P12480025212017151926.a n = A008474 (n + 1)

end A008474

/-!
# A008475: If n = Product (p_j^k_j) then a(n) = Sum (p_j^k_j) (a(1) = 0 by convention).

The programs for A008475, the canonical program `A008475.P2912436043946083167` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008475 has offset 1).

The definition of A008475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008475.P2912436043946083167

`∑{p}[n+1, #^val(n+1, #)]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008475

/-- `∑{p}[n+1, #^val(n+1, #)]` -/
def P2912436043946083167.Spec : Prop :=
  ∀ n, (P2912436043946083167.a n : ℤ) = A008475 (n + 1)

theorem P2912436043946083167.correct : P2912436043946083167.Spec := by
  intro n
  simp only [A008475, Nat.add_sub_cancel]

end A008475

/-! ## A008475.P561204611807980368

`A159077(n+1)-1`
-/

namespace A008475.P561204611807980368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (n + 1) - 1

end

end A008475.P561204611807980368

namespace A008475

/-- `A159077(n+1)-1` -/
def P561204611807980368.Spec : Prop :=
  ∀ n, P561204611807980368.a n = A008475 (n + 1)

end A008475

/-! ## A008475.P12981903007955240503

`∑{d}[n+1, A092509(#)]`
-/

namespace A008475.P12981903007955240503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092509 d

end

end A008475.P12981903007955240503

namespace A008475

/-- `∑{d}[n+1, A092509(#)]` -/
def P12981903007955240503.Spec : Prop :=
  ∀ n, P12981903007955240503.a n = A008475 (n + 1)

end A008475

/-! ## A008475.P15035459442351579938

`1-A086664(n+1)+n`
-/

namespace A008475.P15035459442351579938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A086664 (n + 1) + (n : ℤ)

end

end A008475.P15035459442351579938

namespace A008475

/-- `1-A086664(n+1)+n` -/
def P15035459442351579938.Spec : Prop :=
  ∀ n, P15035459442351579938.a n = A008475 (n + 1)

end A008475

/-! ## A008475.P6966339595141123362

`A222416(n+1)-floor(acot(n))`
-/

namespace A008475.P6966339595141123362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A008475.P6966339595141123362

namespace A008475

/-- `A222416(n+1)-floor(acot(n))` -/
def P6966339595141123362.Spec : Prop :=
  ∀ n, P6966339595141123362.a n = A008475 (n + 1)

end A008475

/-! ## A008475.P5414821984821081885

`A023443(A159077(n+1))`
-/

namespace A008475.P5414821984821081885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A159077 (n + 1)).toNat

end

end A008475.P5414821984821081885

namespace A008475

/-- `A023443(A159077(n+1))` -/
def P5414821984821081885.Spec : Prop :=
  ∀ n, P5414821984821081885.a n = A008475 (n + 1)

end A008475

/-! ## A008475.P7971585959487426684

`A087156(A222416(n+1))`
-/

namespace A008475.P7971585959487426684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A222416 (n + 1)).toNat

end

end A008475.P7971585959487426684

namespace A008475

/-- `A087156(A222416(n+1))` -/
def P7971585959487426684.Spec : Prop :=
  ∀ n, P7971585959487426684.a n = A008475 (n + 1)

end A008475

/-! ## A008475.P12139117733998768925

`A222416(n+1)-A000007(n)`
-/

namespace A008475.P12139117733998768925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (n + 1) - A000007 n

end

end A008475.P12139117733998768925

namespace A008475

/-- `A222416(n+1)-A000007(n)` -/
def P12139117733998768925.Spec : Prop :=
  ∀ n, P12139117733998768925.a n = A008475 (n + 1)

end A008475

/-! ## A008475.P10526485824364701198

`A057427(n)*A222416(n+1)`
-/

namespace A008475.P10526485824364701198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A222416 (n + 1)

end

end A008475.P10526485824364701198

namespace A008475

/-- `A057427(n)*A222416(n+1)` -/
def P10526485824364701198.Spec : Prop :=
  ∀ n, P10526485824364701198.a n = A008475 (n + 1)

end A008475

/-! ## A008475.P17017039090161961454

`A222416(n+1)%A000156(n)`
-/

namespace A008475.P17017039090161961454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222416 (n + 1)) (A000156 n)

end

end A008475.P17017039090161961454

namespace A008475

/-- `A222416(n+1)%A000156(n)` -/
def P17017039090161961454.Spec : Prop :=
  ∀ n, P17017039090161961454.a n = A008475 (n + 1)

end A008475

/-! ## A008475.P16940924744424395465

`and(A057428(n), A222416(n+1))`
-/

namespace A008475.P16940924744424395465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A222416 (n + 1))

end

end A008475.P16940924744424395465

namespace A008475

/-- `and(A057428(n), A222416(n+1))` -/
def P16940924744424395465.Spec : Prop :=
  ∀ n, P16940924744424395465.a n = A008475 (n + 1)

end A008475

/-! ## A008475.P896333736600330974

`A078771(n+1)+Δ[A025281(n)]`
-/

namespace A008475.P896333736600330974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (n + 1) + (f1 (n + 1) - f1 n)

end

end A008475.P896333736600330974

namespace A008475

/-- `A078771(n+1)+Δ[A025281(n)]` -/
def P896333736600330974.Spec : Prop :=
  ∀ n, P896333736600330974.a n = A008475 (n + 1)

end A008475

/-! ## A008475.P13727992605237769622

`A078771(n+1)+A001414(n+1)`
-/

namespace A008475.P13727992605237769622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (n + 1) + A001414 (n + 1)

end

end A008475.P13727992605237769622

namespace A008475

/-- `A078771(n+1)+A001414(n+1)` -/
def P13727992605237769622.Spec : Prop :=
  ∀ n, P13727992605237769622.a n = A008475 (n + 1)

end A008475

/-! ## A008475.P12865826347042338302

`A171453(n+1)+A067240(n+1)`
-/

namespace A008475.P12865826347042338302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171453 (n + 1) + A067240 (n + 1)

end

end A008475.P12865826347042338302

namespace A008475

/-- `A171453(n+1)+A067240(n+1)` -/
def P12865826347042338302.Spec : Prop :=
  ∀ n, P12865826347042338302.a n = A008475 (n + 1)

end A008475

/-! ## A008475.P5124754931988480820

`A286875(n+1)+A063956(n+1)`
-/

namespace A008475.P5124754931988480820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286875 (n + 1) + A063956 (n + 1)

end

end A008475.P5124754931988480820

namespace A008475

/-- `A286875(n+1)+A063956(n+1)` -/
def P5124754931988480820.Spec : Prop :=
  ∀ n, P5124754931988480820.a n = A008475 (n + 1)

end A008475

/-! ## A008475.P1767945395339743293

`A000203(n+1)-A167515(n+1)`
-/

namespace A008475.P1767945395339743293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A167515 (n + 1)

end

end A008475.P1767945395339743293

namespace A008475

/-- `A000203(n+1)-A167515(n+1)` -/
def P1767945395339743293.Spec : Prop :=
  ∀ n, P1767945395339743293.a n = A008475 (n + 1)

end A008475

/-! ## A008475.P14444023329323178488

`A222416(n+1)+n-A028310(n)`
-/

namespace A008475.P14444023329323178488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (n + 1) + ((n : ℤ) - A028310 n)

end

end A008475.P14444023329323178488

namespace A008475

/-- `A222416(n+1)+n-A028310(n)` -/
def P14444023329323178488.Spec : Prop :=
  ∀ n, P14444023329323178488.a n = A008475 (n + 1)

end A008475

/-! ## A008475.P13386817154741216608

`A036288(n+1)+A078771(n+1)-1`
-/

namespace A008475.P13386817154741216608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) + (A078771 (n + 1) - 1)

end

end A008475.P13386817154741216608

namespace A008475

/-- `A036288(n+1)+A078771(n+1)-1` -/
def P13386817154741216608.Spec : Prop :=
  ∀ n, P13386817154741216608.a n = A008475 (n + 1)

end A008475

/-! ## A008475.P7725315622771562399

`A000203(n+1)-(A178636(n+1)+1)`
-/

namespace A008475.P7725315622771562399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A178636 (n + 1) + 1)

end

end A008475.P7725315622771562399

namespace A008475

/-- `A000203(n+1)-(A178636(n+1)+1)` -/
def P7725315622771562399.Spec : Prop :=
  ∀ n, P7725315622771562399.a n = A008475 (n + 1)

end A008475

/-! ## A008475.P17972165796140678608

`A088580(n+1)-(A167515(n+1)+1)`
-/

namespace A008475.P17972165796140678608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A167515 (n + 1) + 1)

end

end A008475.P17972165796140678608

namespace A008475

/-- `A088580(n+1)-(A167515(n+1)+1)` -/
def P17972165796140678608.Spec : Prop :=
  ∀ n, P17972165796140678608.a n = A008475 (n + 1)

end A008475

/-!
# A008476: If n = Product (p_j^k_j) then a(n) = Sum (k_j^p_j).

The programs for A008476, the canonical program `A008476.P1638965025286496999` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008476 has offset 1).

The definition of A008476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008476.P1638965025286496999

`∑{p}[n+1, val(n+1, #)^#]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008476

/-- `∑{p}[n+1, val(n+1, #)^#]` -/
def P1638965025286496999.Spec : Prop :=
  ∀ n, (P1638965025286496999.a n : ℤ) = A008476 (n + 1)

theorem P1638965025286496999.correct : P1638965025286496999.Spec := by
  intro n
  simp only [A008476, Nat.add_sub_cancel]

end A008476

/-! ## A008476.P11546231212897202260

`∑{e}[n+1, #^A060135(n)]`
-/

namespace A008476.P11546231212897202260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) ^ (A060135 n : ℤ)

end

end A008476.P11546231212897202260

namespace A008476

/-- `∑{e}[n+1, #^A060135(n)]` -/
def P11546231212897202260.Spec : Prop :=
  ∀ n, P11546231212897202260.a n = (A008476 (n + 1) : ℚ)

end A008476

/-! ## A008476.P15296038691227906092

`A090885(n+1)*A326851(A052942(n))`
-/

namespace A008476.P15296038691227906092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (n + 1) * A326851 (A052942 n).toNat

end

end A008476.P15296038691227906092

namespace A008476

/-- `A090885(n+1)*A326851(A052942(n))` -/
def P15296038691227906092.Spec : Prop :=
  ∀ n, P15296038691227906092.a n = A008476 (n + 1)

end A008476

/-! ## A008476.P12133483284220196436

`A008480(A105603(n+1))*A090885(n+1)`
-/

namespace A008476.P12133483284220196436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A105603 (n + 1)).toNat * A090885 (n + 1)

end

end A008476.P12133483284220196436

namespace A008476

/-- `A008480(A105603(n+1))*A090885(n+1)` -/
def P12133483284220196436.Spec : Prop :=
  ∀ n, P12133483284220196436.a n = A008476 (n + 1)

end A008476

/-! ## A008476.P6949845200366812555

`A090885(n+1)+A004198(A008277(3*n+2))`
-/

namespace A008476.P6949845200366812555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (n + 1) + A004198 (A008277 (3 * n + 2)).toNat

end

end A008476.P6949845200366812555

namespace A008476

/-- `A090885(n+1)+A004198(A008277(3*n+2))` -/
def P6949845200366812555.Spec : Prop :=
  ∀ n, P6949845200366812555.a n = A008476 (n + 1)

end A008476

/-!
# A008477: If n = Product (p_j^k_j) then a(n) = Product (k_j^p_j).

The programs for A008477, the canonical program `A008477.P4057229179253763978` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008477 has offset 1).

The definition of A008477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008477.P4057229179253763978

`∏{p}[n+1, val(n+1, #)^#]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008477

/-- `∏{p}[n+1, val(n+1, #)^#]` -/
def P4057229179253763978.Spec : Prop :=
  ∀ n, (P4057229179253763978.a n : ℤ) = A008477 (n + 1)

theorem P4057229179253763978.correct : P4057229179253763978.Spec := by
  intro n
  simp only [A008477, Nat.add_sub_cancel]

end A008477

/-! ## A008477.P2309614842708180046

`A051903(n+1)^A063958(A033286(n+1))`
-/

namespace A008477.P2309614842708180046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051903 (n + 1) : ℚ) ^ (A063958 (A033286 (n + 1)).toNat : ℤ)

end

end A008477.P2309614842708180046

namespace A008477

/-- `A051903(n+1)^A063958(A033286(n+1))` -/
def P2309614842708180046.Spec : Prop :=
  ∀ n, P2309614842708180046.a n = (A008477 (n + 1) : ℚ)

end A008477

/-! ## A008477.P12677855267718354779

`A072411(n+1)^A063958(A033286(n+1))`
-/

namespace A008477.P12677855267718354779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072411 (n + 1) : ℚ) ^ (A063958 (A033286 (n + 1)).toNat : ℤ)

end

end A008477.P12677855267718354779

namespace A008477

/-- `A072411(n+1)^A063958(A033286(n+1))` -/
def P12677855267718354779.Spec : Prop :=
  ∀ n, P12677855267718354779.a n = (A008477 (n + 1) : ℚ)

end A008477

/-! ## A008477.P12578792882031442065

`A051903(n+1)^A008472(A183102(n+1))`
-/

namespace A008477.P12578792882031442065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051903 (n + 1) : ℚ) ^ (A008472 (A183102 (n + 1)).toNat : ℤ)

end

end A008477.P12578792882031442065

namespace A008477

/-- `A051903(n+1)^A008472(A183102(n+1))` -/
def P12578792882031442065.Spec : Prop :=
  ∀ n, P12578792882031442065.a n = (A008477 (n + 1) : ℚ)

end A008477

/-! ## A008477.P17858601960267428141

`∏{e}[n+1, #]^A360678(A005940(n+5))`
-/

namespace A008477.P17858601960267428141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) ^ (A360678 (A005940 (n + 5)).toNat : ℤ)

end

end A008477.P17858601960267428141

namespace A008477

/-- `∏{e}[n+1, #]^A360678(A005940(n+5))` -/
def P17858601960267428141.Spec : Prop :=
  ∀ n, P17858601960267428141.a n = (A008477 (n + 1) : ℚ)

end A008477

/-!
# A008478: Integers of the form Product p_j^k_j = Product k_j^p_j; p_j in A000040.

The programs for A008478, there is no canonical definition to state claims against.
-/

/-! ## A008478.P17275433891205529783

`eq[n, A008477(round(acot(n)+n))]`
-/

namespace A008478.P17275433891205529783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008477 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A008478.P17275433891205529783

/-! ## A008478.P8842395819865910131

`eq[n, A008477(abs(1-n)+1)]`
-/

namespace A008478.P8842395819865910131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008477 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A008478.P8842395819865910131

/-! ## A008478.P17632643363099717330

`record[gcd(n+1, A008477(n+1))]`
-/

namespace A008478.P17632643363099717330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A008477 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008478.P17632643363099717330

/-! ## A008478.P15843068315875506980

`record[gcd(A008477(n+1), A026491(n))]`
-/

namespace A008478.P15843068315875506980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008477 (n + 1)) (A026491 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008478.P15843068315875506980

/-! ## A008478.P11146601884882332124

`eq[n+1, A008477(A028310(n))+1]`
-/

namespace A008478.P11146601884882332124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008477 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A008478.P11146601884882332124

/-!
# A008479: Number of numbers <= n with same prime factors as n.

The programs for A008479, there is no canonical definition to state claims against.
-/

/-! ## A008479.P10601474147326700353

`A355432(n+1)+A005361(n+1)`
-/

namespace A008479.P10601474147326700353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (n + 1) + A005361 (n + 1)

end

end A008479.P10601474147326700353

/-! ## A008479.P13422210285381033679

`A003557(n+1)-A360543(n+1)`
-/

namespace A008479.P13422210285381033679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) - A360543 (n + 1)

end

end A008479.P13422210285381033679

/-! ## A008479.P4280183320726855994

`A000005(n+1)-A372720(n+1)`
-/

namespace A008479.P4280183320726855994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A372720 (n + 1)

end

end A008479.P4280183320726855994

/-! ## A008479.P14976405046247654779

`A010846(n+1)-A365788(n+1)`
-/

namespace A008479.P14976405046247654779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - A365788 (n + 1)

end

end A008479.P14976405046247654779

/-! ## A008479.P9129307536258191948

`A373738(n+1)-A375011(n+1)`
-/

namespace A008479.P9129307536258191948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373738 (n + 1) - A375011 (n + 1)

end

end A008479.P9129307536258191948

/-! ## A008479.P10512814178343907844

`A336551(n+1)+1-A360543(n+1)`
-/

namespace A008479.P10512814178343907844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1) + (1 - A360543 (n + 1))

end

end A008479.P10512814178343907844

/-! ## A008479.P2424321064710776998

`A355432(n+1)+A000005((n+1)/∏{p}[n+1, #])`
-/

namespace A008479.P2424321064710776998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (n + 1) + A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A008479.P2424321064710776998

/-! ## A008479.P2161363058276932108

`A005361(n+1)+A183093(n+1)-A372720(n+1)`
-/

namespace A008479.P2161363058276932108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) + (A183093 (n + 1) - A372720 (n + 1))

end

end A008479.P2161363058276932108

/-! ## A008479.P13664443715217788512

`A183094(n+1)+A183095(n+1)-A372720(n+1)`
-/

namespace A008479.P13664443715217788512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (n + 1) + (A183095 (n + 1) - A372720 (n + 1))

end

end A008479.P13664443715217788512

/-! ## A008479.P13735804817159139482

`A010846(n+1)-(A375011(n+1)+A372192(n+1))`
-/

namespace A008479.P13735804817159139482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - (A375011 (n + 1) + A372192 (n + 1))

end

end A008479.P13735804817159139482

/-! ## A008479.P13466298771396793881

`Δ[A140661(A028310(n))%A140661(n+1)]`
-/

namespace A008479.P13466298771396793881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140661 (A028310 n).toNat) (A140661 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008479.P13466298771396793881

/-! ## A008479.P719569305485789380

`A396561(A280741(n+1))`
-/

namespace A008479.P719569305485789380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396561 (A280741 (n + 1)).toNat

end

end A008479.P719569305485789380

/-! ## A008479.P7628405467979437594

`Δ[A140661(A123108(2*n))%A140661(n+1)]`
-/

namespace A008479.P7628405467979437594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140661 (A123108 (2 * n)).toNat) (A140661 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008479.P7628405467979437594

/-! ## A008479.P12489900747610377670

`A091090(A285111(n+1))`
-/

namespace A008479.P12489900747610377670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A285111 (n + 1)).toNat

end

end A008479.P12489900747610377670

/-!
# A008480: Number of ordered prime factorizations of n.

The programs for A008480, the canonical program `A008480.P11368251790691963799` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008480 has offset 1).

The definition of A008480 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355939, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008480.P11368251790691963799

`abs(A355939(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008480

/-- `abs(A355939(n+1))` -/
def P11368251790691963799.Spec : Prop :=
  ∀ n, P11368251790691963799.a n = A008480 (n + 1)

theorem P11368251790691963799.correct : P11368251790691963799.Spec := by
  intro n
  simp only [A008480, Nat.add_sub_cancel]

end A008480

/-! ## A008480.P10855313848647385349

`A050382(A101296(n+1))`
-/

namespace A008480.P10855313848647385349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050382 (A101296 (n + 1)).toNat

end

end A008480.P10855313848647385349

namespace A008480

/-- `A050382(A101296(n+1))` -/
def P10855313848647385349.Spec : Prop :=
  ∀ n, P10855313848647385349.a n = A008480 (n + 1)

end A008480

/-! ## A008480.P13819263950634445001

`A130675(n+1)/A112624(n+1)`
-/

namespace A008480.P13819263950634445001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130675 (n + 1) : ℚ) / (A112624 (n + 1) : ℚ)

end

end A008480.P13819263950634445001

namespace A008480

/-- `A130675(n+1)/A112624(n+1)` -/
def P13819263950634445001.Spec : Prop :=
  ∀ n, P13819263950634445001.a n = (A008480 (n + 1) : ℚ)

end A008480

/-! ## A008480.P5684803436802389637

`∑{e}[n+1, #]!/∏{e}[n+1, #!]`
-/

namespace A008480.P5684803436802389637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ)

end

end A008480.P5684803436802389637

namespace A008480

/-- `∑{e}[n+1, #]!/∏{e}[n+1, #!]` -/
def P5684803436802389637.Spec : Prop :=
  ∀ n, P5684803436802389637.a n = (A008480 (n + 1) : ℚ)

end A008480

/-! ## A008480.P8226041522010578184

`A335447(n+1)+1`
-/

namespace A008480.P8226041522010578184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335447 (n + 1) + 1

end

end A008480.P8226041522010578184

namespace A008480

/-- `A335447(n+1)+1` -/
def P8226041522010578184.Spec : Prop :=
  ∀ n, P8226041522010578184.a n = A008480 (n + 1)

theorem P8226041522010578184.correct : P8226041522010578184.Spec := by
  intro n
  simp only [A008480, Nat.add_sub_cancel, A008480.P8226041522010578184.a, A008480.P11368251790691963799.a, A335447, A335447.P7231323323693740438.a, A355939, A355939.P3567040578845444235.f1, A355939.P3567040578845444235.f2, A355939.P3567040578845444235.f3, A355939.P3567040578845444235.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008480

/-! ## A008480.P18342009347923734320

`A168324(ceil(sqrt(n²+4)))`
-/

namespace A008480.P18342009347923734320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat

end

end A008480.P18342009347923734320

namespace A008480

/-- `A168324(ceil(sqrt(n²+4)))` -/
def P18342009347923734320.Spec : Prop :=
  ∀ n, P18342009347923734320.a n = A008480 (n + 1)

end A008480

/-! ## A008480.P7532680895627394266

`A135323(n+1)/(n+1)`
-/

namespace A008480.P7532680895627394266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135323 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A008480.P7532680895627394266

namespace A008480

/-- `A135323(n+1)/(n+1)` -/
def P7532680895627394266.Spec : Prop :=
  ∀ n, P7532680895627394266.a n = (A008480 (n + 1) : ℚ)

end A008480

/-! ## A008480.P15965549174451288213

`floor(sqrt(A168324(n+1)²+1))`
-/

namespace A008480.P15965549174451288213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A168324 (n + 1) ^ 2 + 1)

end

end A008480.P15965549174451288213

namespace A008480

/-- `floor(sqrt(A168324(n+1)²+1))` -/
def P15965549174451288213.Spec : Prop :=
  ∀ n, P15965549174451288213.a n = A008480 (n + 1)

end A008480

/-! ## A008480.P14190124807749071349

`A001222(n+1)!/∏{e}[n+1, #!]`
-/

namespace A008480.P14190124807749071349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001222 (n + 1)).toNat : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℚ)

end

end A008480.P14190124807749071349

namespace A008480

/-- `A001222(n+1)!/∏{e}[n+1, #!]` -/
def P14190124807749071349.Spec : Prop :=
  ∀ n, P14190124807749071349.a n = (A008480 (n + 1) : ℚ)

end A008480

/-! ## A008480.P6182002462492963616

`A028310(A168324(n+1))`
-/

namespace A008480.P6182002462492963616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A168324 (n + 1)).toNat

end

end A008480.P6182002462492963616

namespace A008480

/-- `A028310(A168324(n+1))` -/
def P6182002462492963616.Spec : Prop :=
  ∀ n, P6182002462492963616.a n = A008480 (n + 1)

end A008480

/-! ## A008480.P2152004724858805281

`A318762(A181819(n+1))`
-/

namespace A008480.P2152004724858805281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (A181819 (n + 1)).toNat

end

end A008480.P2152004724858805281

namespace A008480

/-- `A318762(A181819(n+1))` -/
def P2152004724858805281.Spec : Prop :=
  ∀ n, P2152004724858805281.a n = A008480 (n + 1)

end A008480

/-! ## A008480.P366328613200480574

`A321648(A329607(n+1))`
-/

namespace A008480.P366328613200480574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (A329607 (n + 1)).toNat

end

end A008480.P366328613200480574

namespace A008480

/-- `A321648(A329607(n+1))` -/
def P366328613200480574.Spec : Prop :=
  ∀ n, P366328613200480574.a n = A008480 (n + 1)

end A008480

/-! ## A008480.P34087902322057423

`A318808(2*A181819(n+1))`
-/

namespace A008480.P34087902322057423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (2 * A181819 (n + 1)).toNat

end

end A008480.P34087902322057423

namespace A008480

/-- `A318808(2*A181819(n+1))` -/
def P34087902322057423.Spec : Prop :=
  ∀ n, P34087902322057423.a n = A008480 (n + 1)

end A008480

/-! ## A008480.P12505866403611395864

`A168324(n+1)+A000007(n)`
-/

namespace A008480.P12505866403611395864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (n + 1) + A000007 n

end

end A008480.P12505866403611395864

namespace A008480

/-- `A168324(n+1)+A000007(n)` -/
def P12505866403611395864.Spec : Prop :=
  ∀ n, P12505866403611395864.a n = A008480 (n + 1)

end A008480

/-! ## A008480.P6555883529292265062

`lcm(A033999(n), A355939(n+1))`
-/

namespace A008480.P6555883529292265062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A355939 (n + 1))

end

end A008480.P6555883529292265062

namespace A008480

/-- `lcm(A033999(n), A355939(n+1))` -/
def P6555883529292265062.Spec : Prop :=
  ∀ n, (P6555883529292265062.a n : ℤ) = A008480 (n + 1)

end A008480

/-! ## A008480.P13200157847969352199

`∏{d}[A168324(n+1), A014963(#)]`
-/

namespace A008480.P13200157847969352199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A008480.P13200157847969352199

namespace A008480

/-- `∏{d}[A168324(n+1), A014963(#)]` -/
def P13200157847969352199.Spec : Prop :=
  ∀ n, P13200157847969352199.a n = A008480 (n + 1)

end A008480

/-! ## A008480.P15161589264245932320

`A333146(n+1)+A333145(n+1)`
-/

namespace A008480.P15161589264245932320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333146 (n + 1) + A333145 (n + 1)

end

end A008480.P15161589264245932320

namespace A008480

/-- `A333146(n+1)+A333145(n+1)` -/
def P15161589264245932320.Spec : Prop :=
  ∀ n, P15161589264245932320.a n = A008480 (n + 1)

end A008480

/-! ## A008480.P2231368474669475896

`A335511(n+1)+A335510(n+1)`
-/

namespace A008480.P2231368474669475896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335511 (n + 1) + A335510 (n + 1)

end

end A008480.P2231368474669475896

namespace A008480

/-- `A335511(n+1)+A335510(n+1)` -/
def P2231368474669475896.Spec : Prop :=
  ∀ n, P2231368474669475896.a n = A008480 (n + 1)

theorem P2231368474669475896.correct : P2231368474669475896.Spec := by
  intro n
  simp only [A008480, Nat.add_sub_cancel, A008480.P2231368474669475896.a, A008480.P11368251790691963799.a, A335510, A335510.P6829116680428803615.a, A335511, A335511.P6857270708733342079.f1, A335511.P6857270708733342079.f2, A335511.P6857270708733342079.f3, A335511.P6857270708733342079.a, A355939, A355939.P3567040578845444235.f1, A355939.P3567040578845444235.f2, A355939.P3567040578845444235.f3, A355939.P3567040578845444235.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008480

/-! ## A008480.P14262408548548106366

`A321647(n+1)/A321648(n+1)`
-/

namespace A008480.P14262408548548106366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321647 (n + 1) : ℚ) / (A321648 (n + 1) : ℚ)

end

end A008480.P14262408548548106366

namespace A008480

/-- `A321647(n+1)/A321648(n+1)` -/
def P14262408548548106366.Spec : Prop :=
  ∀ n, P14262408548548106366.a n = (A008480 (n + 1) : ℚ)

end A008480

/-! ## A008480.P15473620671371191689

`A323300(n+1)/A323305(n+1)`
-/

namespace A008480.P15473620671371191689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323300 (n + 1) : ℚ) / (A323305 (n + 1) : ℚ)

end

end A008480.P15473620671371191689

namespace A008480

/-- `A323300(n+1)/A323305(n+1)` -/
def P15473620671371191689.Spec : Prop :=
  ∀ n, P15473620671371191689.a n = (A008480 (n + 1) : ℚ)

end A008480

/-!
# A008481: If n = Product (p_j^k_j) then a(n) = Sum partition(k_j).

The programs for A008481, there is no canonical definition to state claims against.
-/

/-! ## A008481.P3656779208621067562

`A007814(A318312(n+1))`
-/

namespace A008481.P3656779208621067562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318312 (n + 1)).toNat

end

end A008481.P3656779208621067562

/-! ## A008481.P7151079178950085938

`∑{e}[n+1, A000041(#)]`
-/

namespace A008481.P7151079178950085938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000041 (Nat.factorization (f1 n) p)

end

end A008481.P7151079178950085938

/-! ## A008481.P14248792014755408180

`∑{e}[n+1, A242699(#)]`
-/

namespace A008481.P14248792014755408180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A242699 (Nat.factorization (f1 n) p + 64)

end

end A008481.P14248792014755408180

/-! ## A008481.P5909366685493813078

`∑{e}[n+1, A330643(#)]`
-/

namespace A008481.P5909366685493813078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A330643 (Nat.factorization (f1 n) p)

end

end A008481.P5909366685493813078

/-! ## A008481.P3857112039423850284

`∑{e}[n+1, A332746(#)]`
-/

namespace A008481.P3857112039423850284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A332746 (Nat.factorization (f1 n) p)

end

end A008481.P3857112039423850284

/-! ## A008481.P2981765293964736447

`∑{p}[n+1, A000041(val(n+1, #))]`
-/

namespace A008481.P2981765293964736447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000041 (SequenceMachineLib.valuation (n + 1) p)

end

end A008481.P2981765293964736447

/-! ## A008481.P2860688264257922567

`∑{e}[n+1, A220909(#)/(#+#)]`
-/

namespace A008481.P2860688264257922567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A220909 (Nat.factorization (f1 n) p) : ℚ) / (Nat.factorization (f1 n) p + Nat.factorization (f1 n) p : ℚ)

end

end A008481.P2860688264257922567

/-! ## A008481.P7945403424683773258

`val(A318312(n+1), A006530(A318312(2*n+3)))`
-/

namespace A008481.P7945403424683773258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318312 (n + 1)).toNat (A006530 (A318312 (2 * n + 3)).toNat).toNat

end

end A008481.P7945403424683773258

/-! ## A008481.P4721051822893994868

`A001222(A318312(n+1))%A160461(n)`
-/

namespace A008481.P4721051822893994868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A318312 (n + 1)).toNat) (A160461 n)

end

end A008481.P4721051822893994868

/-! ## A008481.P3603820461507921979

`A001222(A318312(n+1)%A318298(n+1))`
-/

namespace A008481.P3603820461507921979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A318312 (n + 1)) (A318298 (n + 1))).toNat

end

end A008481.P3603820461507921979

/-! ## A008481.P9426423187664873093

`A056239(2*A318312(n+1))-1`
-/

namespace A008481.P9426423187664873093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A318312 (n + 1)).toNat - 1

end

end A008481.P9426423187664873093

/-!
# A008482: Coefficients in expansion of (x-1)*(1+x)^(n-1), n > 0.

The programs for A008482, the canonical program `A008482.P7460663564389863659` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008482 has offset 0).

The definition of A008482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008482.P7460663564389863659

`T(n-1,k-1)+T(n-1,k)` with `a(0)=0, a(1)=-1, a(2)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008482

/-- `T(n-1,k-1)+T(n-1,k)` -/
def P7460663564389863659.Spec : Prop :=
  ∀ n, P7460663564389863659.a n = A008482 n

theorem P7460663564389863659.correct : P7460663564389863659.Spec := by
  intro n
  simp only [A008482]

end A008482

/-! ## A008482.P11933353481609989811

`-A037012(n)`
-/

namespace A008482.P11933353481609989811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A037012 n

end

end A008482.P11933353481609989811

namespace A008482

/-- `-A037012(n)` -/
def P11933353481609989811.Spec : Prop :=
  ∀ n, P11933353481609989811.a n = A008482 n

theorem P11933353481609989811.correct : P11933353481609989811.Spec := by
  intro n
  simp only [A008482, Nat.add_sub_cancel, A008482.P11933353481609989811.a, A008482.P7460663564389863659.a, A037012, A037012.P10538222427797936235.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008482

/-! ## A008482.P11575381483770725736

`-Δ[A007318(n-1)-a(n-1)]` with `a(0)=0, a(1)=0`
-/

namespace A008482.P11575381483770725736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A007318 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A008482.P11575381483770725736

namespace A008482

/-- `-Δ[A007318(n-1)-a(n-1)]` -/
def P11575381483770725736.Spec : Prop :=
  ∀ n, P11575381483770725736.a n = A008482 n

end A008482

/-! ## A008482.P7466761196405906864

`A029600(n)-A029618(n)`
-/

namespace A008482.P7466761196405906864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 n - A029618 n

end

end A008482.P7466761196405906864

namespace A008482

/-- `A029600(n)-A029618(n)` -/
def P7466761196405906864.Spec : Prop :=
  ∀ n, P7466761196405906864.a n = A008482 n

end A008482

/-! ## A008482.P15602268235965383189

`A000007(n)-A080232(n)`
-/

namespace A008482.P15602268235965383189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A080232 n

end

end A008482.P15602268235965383189

namespace A008482

/-- `A000007(n)-A080232(n)` -/
def P15602268235965383189.Spec : Prop :=
  ∀ n, P15602268235965383189.a n = A008482 n

end A008482

/-! ## A008482.P2238436561526021425

`A112467(n)-A000007(n)`
-/

namespace A008482.P2238436561526021425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 n - A000007 n

end

end A008482.P2238436561526021425

namespace A008482

/-- `A112467(n)-A000007(n)` -/
def P2238436561526021425.Spec : Prop :=
  ∀ n, P2238436561526021425.a n = A008482 n

end A008482

/-! ## A008482.P9862712616894389005

`A029618(n)-A093561(n)`
-/

namespace A008482.P9862712616894389005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 n - A093561 n

end

end A008482.P9862712616894389005

namespace A008482

/-- `A029618(n)-A093561(n)` -/
def P9862712616894389005.Spec : Prop :=
  ∀ n, P9862712616894389005.a n = A008482 n

end A008482

/-! ## A008482.P11770950693753837599

`A097805(n)-A071919(n)`
-/

namespace A008482.P11770950693753837599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n - A071919 n

end

end A008482.P11770950693753837599

namespace A008482

/-- `A097805(n)-A071919(n)` -/
def P11770950693753837599.Spec : Prop :=
  ∀ n, P11770950693753837599.a n = A008482 n

end A008482

/-! ## A008482.P11520139214603038890

`A134058(n)-A093560(n)`
-/

namespace A008482.P11520139214603038890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 n - A093560 n

end

end A008482.P11520139214603038890

namespace A008482

/-- `A134058(n)-A093560(n)` -/
def P11520139214603038890.Spec : Prop :=
  ∀ n, P11520139214603038890.a n = A008482 n

end A008482

/-! ## A008482.P699386838338966038

`A071919(n)-A298485(n)`
-/

namespace A008482.P699386838338966038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n - A298485 n

end

end A008482.P699386838338966038

namespace A008482

/-- `A071919(n)-A298485(n)` -/
def P699386838338966038.Spec : Prop :=
  ∀ n, P699386838338966038.a n = A008482 n

end A008482

/-! ## A008482.P3160622554216284148

`A037012(n)*A057428(n)`
-/

namespace A008482.P3160622554216284148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 n * A057428 n

end

end A008482.P3160622554216284148

namespace A008482

/-- `A037012(n)*A057428(n)` -/
def P3160622554216284148.Spec : Prop :=
  ∀ n, P3160622554216284148.a n = A008482 n

end A008482

/-! ## A008482.P12069809239591699812

`A057428(n)*A080232(n)`
-/

namespace A008482.P12069809239591699812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A080232 n

end

end A008482.P12069809239591699812

namespace A008482

/-- `A057428(n)*A080232(n)` -/
def P12069809239591699812.Spec : Prop :=
  ∀ n, P12069809239591699812.a n = A008482 n

end A008482

/-! ## A008482.P4035797710690501526

`A057427(n)*A112467(n)`
-/

namespace A008482.P4035797710690501526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A112467 n

end

end A008482.P4035797710690501526

namespace A008482

/-- `A057427(n)*A112467(n)` -/
def P4035797710690501526.Spec : Prop :=
  ∀ n, P4035797710690501526.a n = A008482 n

end A008482

/-! ## A008482.P11675668543729491513

`A112467(n)%A000156(n)`
-/

namespace A008482.P11675668543729491513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112467 n) (A000156 n)

end

end A008482.P11675668543729491513

namespace A008482

/-- `A112467(n)%A000156(n)` -/
def P11675668543729491513.Spec : Prop :=
  ∀ n, P11675668543729491513.a n = A008482 n

end A008482

/-! ## A008482.P15395104653792584998

`and(A057428(n), A112467(n))`
-/

namespace A008482.P15395104653792584998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A112467 n)

end

end A008482.P15395104653792584998

namespace A008482

/-- `and(A057428(n), A112467(n))` -/
def P15395104653792584998.Spec : Prop :=
  ∀ n, P15395104653792584998.a n = A008482 n

end A008482

/-! ## A008482.P3688832566590246802

`A112467(A000038(n)²+n)`
-/

namespace A008482.P3688832566590246802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 (A000038 n ^ 2 + (n : ℤ)).toNat

end

end A008482.P3688832566590246802

namespace A008482

/-- `A112467(A000038(n)²+n)` -/
def P3688832566590246802.Spec : Prop :=
  ∀ n, P3688832566590246802.a n = A008482 n

end A008482

/-! ## A008482.P1702223478089905423

`1-(A080232(n)+A057427(n))`
-/

namespace A008482.P1702223478089905423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A080232 n + A057427 n)

end

end A008482.P1702223478089905423

namespace A008482

/-- `1-(A080232(n)+A057427(n))` -/
def P1702223478089905423.Spec : Prop :=
  ∀ n, P1702223478089905423.a n = A008482 n

end A008482

/-! ## A008482.P16954417982000050391

`A037012(n)*A153881(n+1)`
-/

namespace A008482.P16954417982000050391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 n * A153881 (n + 1)

end

end A008482.P16954417982000050391

namespace A008482

/-- `A037012(n)*A153881(n+1)` -/
def P16954417982000050391.Spec : Prop :=
  ∀ n, P16954417982000050391.a n = A008482 n

end A008482

/-! ## A008482.P13182468531593609512

`(A000007(n)-1)*A037012(n)`
-/

namespace A008482.P13182468531593609512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n - 1) * A037012 n

end

end A008482.P13182468531593609512

namespace A008482

/-- `(A000007(n)-1)*A037012(n)` -/
def P13182468531593609512.Spec : Prop :=
  ∀ n, P13182468531593609512.a n = A008482 n

end A008482

/-!
# A008483: Number of partitions of n into parts >= 3.

The programs for A008483, there is no canonical definition to state claims against.
-/

/-! ## A008483.P9553010674845979211

`A179184(n)+A165652(n)`
-/

namespace A008483.P9553010674845979211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 n + A165652 n

end

end A008483.P9553010674845979211

/-! ## A008483.P3272496570905205822

`A121081(n+3)-A121659(n+3)`
-/

namespace A008483.P3272496570905205822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121081 (n + 3) - A121659 (n + 3)

end

end A008483.P3272496570905205822

/-! ## A008483.P5223144155356503455

`A026796(n+3)`
-/

namespace A008483.P5223144155356503455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 3)

end

end A008483.P5223144155356503455

/-! ## A008483.P16040606509911360670

`A008484(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A008483.P16040606509911360670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A008484 n + a (n - 3)

end

end A008483.P16040606509911360670

/-! ## A008483.P16961636144388811450

`A027195(n+3)+A027189(n+3)`
-/

namespace A008483.P16961636144388811450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027195 (n + 3) + A027189 (n + 3)

end

end A008483.P16961636144388811450

/-! ## A008483.P16660224882209856857

`A002865(n)-A085811(n+1)`
-/

namespace A008483.P16660224882209856857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A085811 (n + 1)

end

end A008483.P16660224882209856857

/-! ## A008483.P10560981032108959661

`A085811(n+3)-A085811(n+1)`
-/

namespace A008483.P10560981032108959661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3) - A085811 (n + 1)

end

end A008483.P10560981032108959661

/-! ## A008483.P2123024749903199059

`A008484(n+1)-Δ[A195054(n)]`
-/

namespace A008483.P2123024749903199059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (n + 1) - (f1 (n + 1) - f1 n)

end

end A008483.P2123024749903199059

/-! ## A008483.P4294975674530659991

`A008484(n)-Δ[A195054(n)-A008484(n)]`
-/

namespace A008483.P4294975674530659991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195054 n - A008484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n - (f1 (n + 1) - f1 n)

end

end A008483.P4294975674530659991

/-! ## A008483.P7296795533985548315

`Δ[A085811(n+1)+A085811(n+2)]`
-/

namespace A008483.P7296795533985548315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1) + A085811 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008483.P7296795533985548315

/-! ## A008483.P11113046212321956206

`A002865(n)+A027336(n)-A027337(n)`
-/

namespace A008483.P11113046212321956206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n + (A027336 n - A027337 n)

end

end A008483.P11113046212321956206

/-! ## A008483.P3682057961924760095

`2*A027336(n)-A320689(n)`
-/

namespace A008483.P3682057961924760095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027336 n - A320689 n

end

end A008483.P3682057961924760095

/-! ## A008483.P2076926331018777257

`A027337(n+1)+A002865(n)-A027338(n+1)`
-/

namespace A008483.P2076926331018777257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (n + 1) + (A002865 n - A027338 (n + 1))

end

end A008483.P2076926331018777257

/-! ## A008483.P3760804382519859278

`A027336(n+1)+A027336(n)-A027338(n+1)`
-/

namespace A008483.P3760804382519859278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (n + 1) + (A027336 n - A027338 (n + 1))

end

end A008483.P3760804382519859278

/-! ## A008483.P8359252431427231733

`A320689(n+1)-A027338(n+1)`
-/

namespace A008483.P8359252431427231733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320689 (n + 1) - A027338 (n + 1)

end

end A008483.P8359252431427231733

/-! ## A008483.P1158505653942237903

`A185115(2*n)+A165652(n)`
-/

namespace A008483.P1158505653942237903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185115 (2 * n) + A165652 n

end

end A008483.P1158505653942237903

/-! ## A008483.P469144629517630125

`A185116(2*n)+A165652(n)`
-/

namespace A008483.P469144629517630125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185116 (2 * n) + A165652 n

end

end A008483.P469144629517630125

/-! ## A008483.P2318101485543545117

`Δ[A264401(A075349(n+1))]`
-/

namespace A008483.P2318101485543545117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264401 (A075349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008483.P2318101485543545117

/-! ## A008483.P5239356686535431252

`A000041(n+2)-A238488(n+2)`
-/

namespace A008483.P5239356686535431252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 2) - A238488 (n + 2)

end

end A008483.P5239356686535431252

/-! ## A008483.P2729123575433013750

`A212551(∑[n])-A085811(n+1)`
-/

namespace A008483.P2729123575433013750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (∑ j ∈ Finset.range (n + 1), f1 j) - A085811 (n + 1)

end

end A008483.P2729123575433013750

/-!
# A008484: Number of partitions of n into parts >= 4.

The programs for A008484, there is no canonical definition to state claims against.
-/

/-! ## A008484.P15037729018814685266

`A026797(n+4)`
-/

namespace A008484.P15037729018814685266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026797 (n + 4)

end

end A008484.P15037729018814685266

/-! ## A008484.P1453615487948310757

`A185224(n)+A185114(n)`
-/

namespace A008484.P1453615487948310757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185224 n + A185114 n

end

end A008484.P1453615487948310757

/-! ## A008484.P11568567223234462092

`A008483(n)-A026796(n)`
-/

namespace A008484.P11568567223234462092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n - A026796 n

end

end A008484.P11568567223234462092

/-! ## A008484.P7670726202904763056

`A026796(n+3)-A026796(n)`
-/

namespace A008484.P7670726202904763056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 3) - A026796 n

end

end A008484.P7670726202904763056

/-! ## A008484.P3687683361947252720

`A008483(n)+-A026796(n)%A000041(n)`
-/

namespace A008484.P3687683361947252720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n + Int.tmod (-A026796 n) (A000041 n)

end

end A008484.P3687683361947252720

/-! ## A008484.P10602886737173459883

`A185224(n)+A185117(2*n)`
-/

namespace A008484.P10602886737173459883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185224 n + A185117 (2 * n)

end

end A008484.P10602886737173459883

/-! ## A008484.P16975549101057880885

`A185224(n)+A185118(2*n)`
-/

namespace A008484.P16975549101057880885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185224 n + A185118 (2 * n)

end

end A008484.P16975549101057880885

/-! ## A008484.P11953023759009816613

`A027196(n+4)+A027190(n+4)`
-/

namespace A008484.P11953023759009816613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027196 (n + 4) + A027190 (n + 4)

end

end A008484.P11953023759009816613

/-! ## A008484.P13452196297947328941

`A026794(A055999(n)+10)`
-/

namespace A008484.P13452196297947328941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A055999 n + 10).toNat

end

end A008484.P13452196297947328941

/-! ## A008484.P1163191644833978403

`A026794(A167614(n+2)+1)`
-/

namespace A008484.P1163191644833978403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A167614 (n + 2) + 1).toNat

end

end A008484.P1163191644833978403

/-! ## A008484.P4958682234172538742

`A026794(A166136(n+2)-2)`
-/

namespace A008484.P4958682234172538742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A166136 (n + 2) - 2).toNat

end

end A008484.P4958682234172538742

/-! ## A008484.P11157408271579994558

`A026794(A166136(n+1)+1+n)`
-/

namespace A008484.P11157408271579994558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A008484.P11157408271579994558

/-!
# A008485: Coefficient of x^n in Product_{k>=1} 1/(1-x^k)^n.

The programs for A008485, there is no canonical definition to state claims against.
-/

/-! ## A008485.P1174889546793190921

`A144064(∑[4*n])`
-/

namespace A008485.P1174889546793190921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008485.P1174889546793190921

/-! ## A008485.P1503318315046225975

`A060850(2*n²+1)`
-/

namespace A008485.P1503318315046225975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060850 (2 * n ^ 2 + 1)

end

end A008485.P1503318315046225975

/-! ## A008485.P14885229385162915720

`A144064(2*(n²+n))^and(1, n+1)^and(1, n+1)`
-/

namespace A008485.P14885229385162915720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (2 * (n ^ 2 + n)) ^ Nat.land 1 (n + 1) ^ Nat.land 1 (n + 1)

end

end A008485.P14885229385162915720

/-! ## A008485.P13939900580784893357

`or(char[1], A144064(2*A002378(n)))`
-/

namespace A008485.P13939900580784893357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A144064 (2 * A002378 n).toNat)

end

end A008485.P13939900580784893357

/-! ## A008485.P11275670570763330294

`gcd(A000038(n), A144064(2*A002378(n)))`
-/

namespace A008485.P11275670570763330294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A144064 (2 * A002378 n).toNat)

end

end A008485.P11275670570763330294

/-! ## A008485.P4975825644312803137

`A144064(2*A002378(n))+A008683(A001248(n+1))`
-/

namespace A008485.P4975825644312803137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (2 * A002378 n).toNat + A008683 (A001248 (n + 1)).toNat

end

end A008485.P4975825644312803137

/-!
# A008486: Expansion of (1 + x + x^2)/(1 - x)^2.

The programs for A008486, the canonical program `A008486.P11623131867527198563` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008486 has offset 0).

The definition of A008486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2)/(1-2x+x^2))` (program `A008486.P11623131867527198563`, by `A008486.P11623131867527198563.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008486.P7447519014921719164

`a(n-1)+3` with `a(0)=1, a(1)=3`
-/

namespace A008486.P7447519014921719164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + 3

end

end A008486.P7447519014921719164

namespace A008486

/-- `a(n-1)+3` -/
def P7447519014921719164.Spec : Prop :=
  ∀ n, (P7447519014921719164.a n : ℤ) = A008486 n

end A008486

/-! ## A008486.P11623131867527198563

`ogf((1+x+x^2)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008486

/-- `ogf((1+x+x^2)/(1-2x+x^2))` -/
def P11623131867527198563.Spec : Prop :=
  ∀ n, P11623131867527198563.a n = A008486 n

theorem P11623131867527198563.correct : P11623131867527198563.Spec := by
  intro n
  simp only [A008486]

end A008486

/-!
# A008487: Expansion of (1-x^5) / (1-x)^5.

The programs for A008487, the canonical program `A008487.P782674325775502796` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008487 has offset 0).

The definition of A008487 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))` (program `A008487.P782674325775502796`, by `A008487.P782674325775502796.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008487.P782674325775502796

`ogf((1-x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008487

/-- `ogf((1-x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P782674325775502796.Spec : Prop :=
  ∀ n, P782674325775502796.a n = A008487 n

theorem P782674325775502796.correct : P782674325775502796.Spec := by
  intro n
  simp only [A008487]

end A008487

/-! ## A008487.P8069440767392020597

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=15, a(3)=35, a(4)=70`
-/

namespace A008487.P8069440767392020597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 15, 35, 70] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A008487.P8069440767392020597

namespace A008487

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P8069440767392020597.Spec : Prop :=
  ∀ n, P8069440767392020597.a n = A008487 n

end A008487

/-! ## A008487.P10844080821591127210

`∑[∑[A004120(n)-∑[n]]]`
-/

namespace A008487.P10844080821591127210
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004120 n - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008487.P10844080821591127210

namespace A008487

/-- `∑[∑[A004120(n)-∑[n]]]` -/
def P10844080821591127210.Spec : Prop :=
  ∀ n, P10844080821591127210.a n = A008487 n

end A008487

/-! ## A008487.P8501803417597991009

`A008574(n)+A004068(n)`
-/

namespace A008487.P8501803417597991009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004068 n

end

end A008487.P8501803417597991009

namespace A008487

/-- `A008574(n)+A004068(n)` -/
def P8501803417597991009.Spec : Prop :=
  ∀ n, P8501803417597991009.a n = A008487 n

end A008487

/-! ## A008487.P10800932113730299288

`A140226(n)+A006003(n)`
-/

namespace A008487.P10800932113730299288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140226 n + A006003 n

end

end A008487.P10800932113730299288

namespace A008487

/-- `A140226(n)+A006003(n)` -/
def P10800932113730299288.Spec : Prop :=
  ∀ n, P10800932113730299288.a n = A008487 n

end A008487

/-! ## A008487.P3563393688071254961

`A203552(n)+A134227(n+1)`
-/

namespace A008487.P3563393688071254961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203552 n + A134227 (n + 1)

end

end A008487.P3563393688071254961

namespace A008487

/-- `A203552(n)+A134227(n+1)` -/
def P3563393688071254961.Spec : Prop :=
  ∀ n, P3563393688071254961.a n = A008487 n

end A008487

/-! ## A008487.P5059368313330202822

`A270109(n)-A116721(n+1)`
-/

namespace A008487.P5059368313330202822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270109 n - A116721 (n + 1)

end

end A008487.P5059368313330202822

namespace A008487

/-- `A270109(n)-A116721(n+1)` -/
def P5059368313330202822.Spec : Prop :=
  ∀ n, P5059368313330202822.a n = A008487 n

end A008487

/-! ## A008487.P3521874488331031784

`A000007(n)+5*A004006(n)`
-/

namespace A008487.P3521874488331031784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 5 * A004006 n

end

end A008487.P3521874488331031784

namespace A008487

/-- `A000007(n)+5*A004006(n)` -/
def P3521874488331031784.Spec : Prop :=
  ∀ n, P3521874488331031784.a n = A008487 n

end A008487

/-! ## A008487.P4238904356241783242

`∑[∑[A296515(n)+A005408(n)]]`
-/

namespace A008487.P4238904356241783242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296515 n + A005408 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008487.P4238904356241783242

namespace A008487

/-- `∑[∑[A296515(n)+A005408(n)]]` -/
def P4238904356241783242.Spec : Prop :=
  ∀ n, P4238904356241783242.a n = A008487 n

end A008487

/-! ## A008487.P14754416826344529832

`∑[∑[A008486(n)]+A289207(n)²]`
-/

namespace A008487.P14754416826344529832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + A289207 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008487.P14754416826344529832

namespace A008487

/-- `∑[∑[A008486(n)]+A289207(n)²]` -/
def P14754416826344529832.Spec : Prop :=
  ∀ n, P14754416826344529832.a n = A008487 n

end A008487

/-! ## A008487.P13824173703391648075

`A000292(n+1)+A005894(n)-A005893(n)`
-/

namespace A008487.P13824173703391648075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A005894 n - A005893 n)

end

end A008487.P13824173703391648075

namespace A008487

/-- `A000292(n+1)+A005894(n)-A005893(n)` -/
def P13824173703391648075.Spec : Prop :=
  ∀ n, P13824173703391648075.a n = A008487 n

end A008487

/-! ## A008487.P7032352835970698501

`∑[∑[A357778(n+2)]]`
-/

namespace A008487.P7032352835970698501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357778 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008487.P7032352835970698501

namespace A008487

/-- `∑[∑[A357778(n+2)]]` -/
def P7032352835970698501.Spec : Prop :=
  ∀ n, P7032352835970698501.a n = A008487 n

end A008487

/-! ## A008487.P12870033296490323397

`∑[∑[A004281(A004273(n))+n]]`
-/

namespace A008487.P12870033296490323397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 (A004273 n).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008487.P12870033296490323397

namespace A008487

/-- `∑[∑[A004281(A004273(n))+n]]` -/
def P12870033296490323397.Spec : Prop :=
  ∀ n, P12870033296490323397.a n = A008487 n

end A008487

/-! ## A008487.P6615644787242480227

`A001386(n)-A004006(3*n)`
-/

namespace A008487.P6615644787242480227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001386 n - A004006 (3 * n)

end

end A008487.P6615644787242480227

namespace A008487

/-- `A001386(n)-A004006(3*n)` -/
def P6615644787242480227.Spec : Prop :=
  ∀ n, P6615644787242480227.a n = A008487 n

end A008487

/-!
# A008488: Expansion of (1-x^6) / (1-x)^6.

The programs for A008488, the canonical program `A008488.P14455074858914083826` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008488 has offset 0).

The definition of A008488 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^6)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` (program `A008488.P14455074858914083826`, by `A008488.P14455074858914083826.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008488.P14455074858914083826

`ogf((1-x^6)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008488

/-- `ogf((1-x^6)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P14455074858914083826.Spec : Prop :=
  ∀ n, P14455074858914083826.a n = A008488 n

theorem P14455074858914083826.correct : P14455074858914083826.Spec := by
  intro n
  simp only [A008488]

end A008488

/-! ## A008488.P10179903782282141861

`∑[A201722(n)+a(n-1)]` with `a(0)=1`
-/

namespace A008488.P10179903782282141861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A201722 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008488.P10179903782282141861

namespace A008488

/-- `∑[A201722(n)+a(n-1)]` -/
def P10179903782282141861.Spec : Prop :=
  ∀ n, P10179903782282141861.a n = A008488 n

end A008488

/-! ## A008488.P6086417931851864646

`A006011(n)+A005899(n)`
-/

namespace A008488.P6086417931851864646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n + A005899 n

end

end A008488.P6086417931851864646

namespace A008488

/-- `A006011(n)+A005899(n)` -/
def P6086417931851864646.Spec : Prop :=
  ∀ n, P6086417931851864646.a n = A008488 n

end A008488

/-! ## A008488.P10685496146884284609

`n²+A006011(n)+A005918(n)`
-/

namespace A008488.P10685496146884284609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A006011 n + A005918 n)

end

end A008488.P10685496146884284609

namespace A008488

/-- `n²+A006011(n)+A005918(n)` -/
def P10685496146884284609.Spec : Prop :=
  ∀ n, P10685496146884284609.a n = A008488 n

end A008488

/-! ## A008488.P9275226511848789220

`A159833(n)+A046523(A006530(n+1))`
-/

namespace A008488.P9275226511848789220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159833 n + A046523 (A006530 (n + 1)).toNat

end

end A008488.P9275226511848789220

namespace A008488

/-- `A159833(n)+A046523(A006530(n+1))` -/
def P9275226511848789220.Spec : Prop :=
  ∀ n, P9275226511848789220.a n = A008488 n

end A008488

/-! ## A008488.P14663311725138054061

`A002817(n+1)+A002817(A289207(n))`
-/

namespace A008488.P14663311725138054061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (n + 1) + A002817 (A289207 n).toNat

end

end A008488.P14663311725138054061

namespace A008488

/-- `A002817(n+1)+A002817(A289207(n))` -/
def P14663311725138054061.Spec : Prop :=
  ∀ n, P14663311725138054061.a n = A008488 n

end A008488

/-! ## A008488.P5379248700839556342

`A159833(n)+A001222(2*A020639(n+1))`
-/

namespace A008488.P5379248700839556342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159833 n + A001222 (2 * A020639 (n + 1)).toNat

end

end A008488.P5379248700839556342

namespace A008488

/-- `A159833(n)+A001222(2*A020639(n+1))` -/
def P5379248700839556342.Spec : Prop :=
  ∀ n, P5379248700839556342.a n = A008488 n

end A008488

/-! ## A008488.P15110356092296011173

`A005899(n)+A161680(n+1)*A161680(n)`
-/

namespace A008488.P15110356092296011173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n + A161680 (n + 1) * A161680 n

end

end A008488.P15110356092296011173

namespace A008488

/-- `A005899(n)+A161680(n+1)*A161680(n)` -/
def P15110356092296011173.Spec : Prop :=
  ∀ n, P15110356092296011173.a n = A008488 n

end A008488

/-! ## A008488.P18040356174051290264

`A160016(gcd(n, A000040(n+1)))+A159833(n)`
-/

namespace A008488.P18040356174051290264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160016 (Int.gcd (n : ℤ) (A000040 (n + 1))) + A159833 n

end

end A008488.P18040356174051290264

namespace A008488

/-- `A160016(gcd(n, A000040(n+1)))+A159833(n)` -/
def P18040356174051290264.Spec : Prop :=
  ∀ n, P18040356174051290264.a n = A008488 n

end A008488

/-! ## A008488.P16060988192589126682

`A159833(n)-A130716(n+2)+2`
-/

namespace A008488.P16060988192589126682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159833 n - A130716 (n + 2) + 2

end

end A008488.P16060988192589126682

namespace A008488

/-- `A159833(n)-A130716(n+2)+2` -/
def P16060988192589126682.Spec : Prop :=
  ∀ n, P16060988192589126682.a n = A008488 n

end A008488

/-! ## A008488.P5932267094431375798

`A159833(n)+A036453(2*n+1)`
-/

namespace A008488.P5932267094431375798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159833 n + A036453 (2 * n + 1)

end

end A008488.P5932267094431375798

namespace A008488

/-- `A159833(n)+A036453(2*n+1)` -/
def P5932267094431375798.Spec : Prop :=
  ∀ n, P5932267094431375798.a n = A008488 n

end A008488

/-! ## A008488.P17890033677931486900

`A005899(n)+A161680(n²)/2`
-/

namespace A008488.P17890033677931486900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005899 n : ℚ) + (A161680 (n ^ 2) : ℚ) / 2

end

end A008488.P17890033677931486900

namespace A008488

/-- `A005899(n)+A161680(n²)/2` -/
def P17890033677931486900.Spec : Prop :=
  ∀ n, P17890033677931486900.a n = (A008488 n : ℚ)

end A008488

/-! ## A008488.P17939401250791664055

`A011848(n²)+A010000(2*n)`
-/

namespace A008488.P17939401250791664055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (n ^ 2) + A010000 (2 * n)

end

end A008488.P17939401250791664055

namespace A008488

/-- `A011848(n²)+A010000(2*n)` -/
def P17939401250791664055.Spec : Prop :=
  ∀ n, P17939401250791664055.a n = A008488 n

end A008488

/-!
# A008489: Expansion of (1-x^7)/(1-x)^7.

The programs for A008489, the canonical program `A008489.P11129269084835341912` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008489 has offset 0).

The definition of A008489 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^7)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` (program `A008489.P11129269084835341912`, by `A008489.P11129269084835341912.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008489.P11129269084835341912

`ogf((1-x^7)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008489

/-- `ogf((1-x^7)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P11129269084835341912.Spec : Prop :=
  ∀ n, P11129269084835341912.a n = A008489 n

theorem P11129269084835341912.correct : P11129269084835341912.Spec := by
  intro n
  simp only [A008489]

end A008489

/-! ## A008489.P1328373766612975759

`A008499(n)+A059174(n)-A006261(n)`
-/

namespace A008489.P1328373766612975759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008499 n + (A059174 n - A006261 n)

end

end A008489.P1328373766612975759

namespace A008489

/-- `A008499(n)+A059174(n)-A006261(n)` -/
def P1328373766612975759.Spec : Prop :=
  ∀ n, P1328373766612975759.a n = A008489 n

end A008489

/-! ## A008489.P6997511028316658127

`∑[A034695(3^n)-A036638(n)]`
-/

namespace A008489.P6997511028316658127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034695 (3 ^ n) - A036638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008489.P6997511028316658127

namespace A008489

/-- `∑[A034695(3^n)-A036638(n)]` -/
def P6997511028316658127.Spec : Prop :=
  ∀ n, P6997511028316658127.a n = A008489 n

end A008489

/-! ## A008489.P4905220775220063621

`xor(A023032(n+7), A161836(A161836(n)))`
-/

namespace A008489.P4905220775220063621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A023032 (n + 7)) (A161836 (A161836 n).toNat)

end

end A008489.P4905220775220063621

namespace A008489

/-- `xor(A023032(n+7), A161836(A161836(n)))` -/
def P4905220775220063621.Spec : Prop :=
  ∀ n, P4905220775220063621.a n = A008489 n

end A008489

/-! ## A008489.P8527554266148072612

`A278969(A082217(n+1))-A036639(n+1)`
-/

namespace A008489.P8527554266148072612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278969 (A082217 (n + 1)).toNat - A036639 (n + 1)

end

end A008489.P8527554266148072612

namespace A008489

/-- `A278969(A082217(n+1))-A036639(n+1)` -/
def P8527554266148072612.Spec : Prop :=
  ∀ n, P8527554266148072612.a n = A008489 n

end A008489

/-!
# A008490: Expansion of (1-x^8) / (1-x)^8.

The programs for A008490, the canonical program `A008490.P12067570373391345225` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008490 has offset 0).

The definition of A008490 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^8)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` (program `A008490.P12067570373391345225`, by `A008490.P12067570373391345225.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008490.P12067570373391345225

`ogf((1-x^8)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008490

/-- `ogf((1-x^8)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P12067570373391345225.Spec : Prop :=
  ∀ n, P12067570373391345225.a n = A008490 n

theorem P12067570373391345225.correct : P12067570373391345225.Spec := by
  intro n
  simp only [A008490]

end A008490

/-! ## A008490.P16372375069012860410

`A008500(n)+A000579(A171950(n+1))`
-/

namespace A008490.P16372375069012860410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008500 n + A000579 (A171950 (n + 1)).toNat

end

end A008490.P16372375069012860410

namespace A008490

/-- `A008500(n)+A000579(A171950(n+1))` -/
def P16372375069012860410.Spec : Prop :=
  ∀ n, P16372375069012860410.a n = A008490 n

end A008490

/-! ## A008490.P3101079324348975299

`A008500(n)+A008859(n)-A059174(n)`
-/

namespace A008490.P3101079324348975299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008500 n + (A008859 n - A059174 n)

end

end A008490.P3101079324348975299

namespace A008490

/-- `A008500(n)+A008859(n)-A059174(n)` -/
def P3101079324348975299.Spec : Prop :=
  ∀ n, P3101079324348975299.a n = A008490 n

end A008490

/-! ## A008490.P11560003246860960154

`A000580(n+7)-∑[A000579(A289207(n))]`
-/

namespace A008490.P11560003246860960154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008490.P11560003246860960154

namespace A008490

/-- `A000580(n+7)-∑[A000579(A289207(n))]` -/
def P11560003246860960154.Spec : Prop :=
  ∀ n, P11560003246860960154.a n = A008490 n

end A008490

/-! ## A008490.P7842049964591742256

`Δ[A008491(n)-A000580(n+7)]`
-/

namespace A008490.P7842049964591742256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008491 n - A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008490.P7842049964591742256

namespace A008490

/-- `Δ[A008491(n)-A000580(n+7)]` -/
def P7842049964591742256.Spec : Prop :=
  ∀ n, P7842049964591742256.a n = A008490 n

end A008490

/-! ## A008490.P10989141240327647802

`Δ[Δ[A008492(n)-A053347(n)]]`
-/

namespace A008490.P10989141240327647802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008492 n - A053347 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008490.P10989141240327647802

namespace A008490

/-- `Δ[Δ[A008492(n)-A053347(n)]]` -/
def P10989141240327647802.Spec : Prop :=
  ∀ n, P10989141240327647802.a n = A008490 n

end A008490

/-!
# A008491: Expansion of (1-x^9 ) / (1-x)^9.

The programs for A008491, the canonical program `A008491.P16801072305296013185` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008491 has offset 0).

The definition of A008491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008491.P16801072305296013185

`∑[A008490(n)+A000579(A289207(n))]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008491

/-- `∑[A008490(n)+A000579(A289207(n))]` -/
def P16801072305296013185.Spec : Prop :=
  ∀ n, P16801072305296013185.a n = A008491 n

theorem P16801072305296013185.correct : P16801072305296013185.Spec := by
  intro n
  simp only [A008491]

end A008491

/-! ## A008491.P16112714725786548817

`Δ[A008492(n)-A165618(n)]`
-/

namespace A008491.P16112714725786548817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008492 n - A165618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008491.P16112714725786548817

namespace A008491

/-- `Δ[A008492(n)-A165618(n)]` -/
def P16112714725786548817.Spec : Prop :=
  ∀ n, P16112714725786548817.a n = A008491 n

end A008491

/-! ## A008491.P11726312463730682941

`Δ[A008492(n)-A000581(n+8)]`
-/

namespace A008491.P11726312463730682941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008492 n - A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008491.P11726312463730682941

namespace A008491

/-- `Δ[A008492(n)-A000581(n+8)]` -/
def P11726312463730682941.Spec : Prop :=
  ∀ n, P11726312463730682941.a n = A008491 n

end A008491

/-! ## A008491.P16885508464466571741

`Δ[A008492(n)]-A000580(n+8)`
-/

namespace A008491.P16885508464466571741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000580 (n + 8)

end

end A008491.P16885508464466571741

namespace A008491

/-- `Δ[A008492(n)]-A000580(n+8)` -/
def P16885508464466571741.Spec : Prop :=
  ∀ n, P16885508464466571741.a n = A008491 n

end A008491

/-! ## A008491.P8265991627988396393

`xor(A000581(n+8), A002262(A205578(n+1)))`
-/

namespace A008491.P8265991627988396393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000581 (n + 8)) (A002262 (A205578 (n + 1)).toNat)

end

end A008491.P8265991627988396393

namespace A008491

/-- `xor(A000581(n+8), A002262(A205578(n+1)))` -/
def P8265991627988396393.Spec : Prop :=
  ∀ n, P8265991627988396393.a n = A008491 n

end A008491

/-!
# A008492: Expansion of (1-x^10) / (1-x)^10.

The programs for A008492, the canonical program `A008492.P1506124131771397775` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008492 has offset 0).

The definition of A008492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008492.P5746043492498870310

`A000582(n+9)+A008503(n)-A008493(n)`
-/

namespace A008492.P5746043492498870310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) + (A008503 n - A008493 n)

end

end A008492.P5746043492498870310

namespace A008492

/-- `A000582(n+9)+A008503(n)-A008493(n)` -/
def P5746043492498870310.Spec : Prop :=
  ∀ n, P5746043492498870310.a n = A008492 n

theorem P5746043492498870310.correct : P5746043492498870310.Spec := by
  intro n
  simp only [A008492, Nat.add_sub_cancel, A008492.P5746043492498870310.a, A008492.P1506124131771397775.f1, A008492.P1506124131771397775.a, A000582, A000582.P5339973766427948568.a, A008491, A008491.P16801072305296013185.f1, A008491.P16801072305296013185.a, A008493, A008493.P15021164243418089667.a, A008503, A008503.P16713333461230501817.a, A165618, A165618.P15483055962896292448.a, A289207, A289207.P4353291363742306282.a, A000579, A000579.P13663713855180125612.a, A008490, A008490.P12067570373391345225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008492

/-! ## A008492.P1953437732807094987

`Δ[A008493(n)-A035927(n)]`
-/

namespace A008492.P1953437732807094987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008493 n - A035927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008492.P1953437732807094987

namespace A008492

/-- `Δ[A008493(n)-A035927(n)]` -/
def P1953437732807094987.Spec : Prop :=
  ∀ n, P1953437732807094987.a n = A008492 n

end A008492

/-! ## A008492.P5173276894986969891

`Δ[A008493(n)-A000582(n+9)]`
-/

namespace A008492.P5173276894986969891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008493 n - A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008492.P5173276894986969891

namespace A008492

/-- `Δ[A008493(n)-A000582(n+9)]` -/
def P5173276894986969891.Spec : Prop :=
  ∀ n, P5173276894986969891.a n = A008492 n

end A008492

/-! ## A008492.P789343446115969936

`Δ[A008493(n)]-A000581(n+9)`
-/

namespace A008492.P789343446115969936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000581 (n + 9)

end

end A008492.P789343446115969936

namespace A008492

/-- `Δ[A008493(n)]-A000581(n+9)` -/
def P789343446115969936.Spec : Prop :=
  ∀ n, P789343446115969936.a n = A008492 n

end A008492

/-! ## A008492.P1506124131771397775

`A165618(n)+∑[A008491(A289207(n+1))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008492

/-- `A165618(n)+∑[A008491(A289207(n+1))]` -/
def P1506124131771397775.Spec : Prop :=
  ∀ n, P1506124131771397775.a n = A008492 n

theorem P1506124131771397775.correct : P1506124131771397775.Spec := by
  intro n
  simp only [A008492]

end A008492

/-!
# A008493: Expansion of (1-x^11) / (1-x)^11.

The programs for A008493, the canonical program `A008493.P15021164243418089667` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008493 has offset 0).

The definition of A008493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008493.P15346408934225522394

`A001287(n)+A008504(n)-A008494(n)`
-/

namespace A008493.P15346408934225522394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) + (A008504 n - A008494 n)

end

end A008493.P15346408934225522394

namespace A008493

/-- `A001287(n)+A008504(n)-A008494(n)` -/
def P15346408934225522394.Spec : Prop :=
  ∀ n, P15346408934225522394.a n = A008493 n

end A008493

/-! ## A008493.P15021164243418089667

`A000582(n+9)+A008503(n)-A008492(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A008493

/-- `A000582(n+9)+A008503(n)-A008492(n)` -/
def P15021164243418089667.Spec : Prop :=
  ∀ n, P15021164243418089667.a n = A008493 n

theorem P15021164243418089667.correct : P15021164243418089667.Spec := by
  intro n
  simp only [A008493]

end A008493

/-! ## A008493.P7915616761345314438

`Δ[A008494(n)-A001287(n)]`
-/

namespace A008493.P7915616761345314438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008494 n - A001287 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008493.P7915616761345314438

namespace A008493

/-- `Δ[A008494(n)-A001287(n)]` -/
def P7915616761345314438.Spec : Prop :=
  ∀ n, P7915616761345314438.a n = A008493 n

end A008493

/-! ## A008493.P3966482340734780622

`Δ[A008494(n)-(A189980(n)+2*A282078(n))]`
-/

namespace A008493.P3966482340734780622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008494 n - (A189980 (n + 10) + 2 * A282078 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008493.P3966482340734780622

namespace A008493

/-- `Δ[A008494(n)-(A189980(n)+2*A282078(n))]` -/
def P3966482340734780622.Spec : Prop :=
  ∀ n, P3966482340734780622.a n = A008493 n

end A008493

/-! ## A008493.P12069262708634680285

`Δ[A008494(n)-(2*A018214(n)-A189980(n))]`
-/

namespace A008493.P12069262708634680285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008494 n - (2 * A018214 n - A189980 (n + 10))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008493.P12069262708634680285

namespace A008493

/-- `Δ[A008494(n)-(2*A018214(n)-A189980(n))]` -/
def P12069262708634680285.Spec : Prop :=
  ∀ n, P12069262708634680285.a n = A008493 n

end A008493

/-! ## A008493.P12191730236908594056

`Δ[A008494(n)-(A056114(n+1)-A254142(n+1))]`
-/

namespace A008493.P12191730236908594056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008494 n - (A056114 (n + 1) - A254142 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008493.P12191730236908594056

namespace A008493

/-- `Δ[A008494(n)-(A056114(n+1)-A254142(n+1))]` -/
def P12191730236908594056.Spec : Prop :=
  ∀ n, P12191730236908594056.a n = A008493 n

end A008493

/-! ## A008493.P9964168372802297413

`Δ[A008494(n)-A172242(n)/2^n]`
-/

namespace A008493.P9964168372802297413
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008494 n : ℚ) - (A172242 (n + 10) : ℚ) / (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008493.P9964168372802297413

namespace A008493

/-- `Δ[A008494(n)-A172242(n)/2^n]` -/
def P9964168372802297413.Spec : Prop :=
  ∀ n, P9964168372802297413.a n = (A008493 n : ℚ)

end A008493

/-! ## A008493.P4575991709828764676

`Δ[A008494(n)-2*A172242(n)/A000079(n+1)]`
-/

namespace A008493.P4575991709828764676
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008494 n : ℚ) - (2 * A172242 (n + 10) : ℚ) / (A000079 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008493.P4575991709828764676

namespace A008493

/-- `Δ[A008494(n)-2*A172242(n)/A000079(n+1)]` -/
def P4575991709828764676.Spec : Prop :=
  ∀ n, P4575991709828764676.a n = (A008493 n : ℚ)

end A008493

/-!
# A008494: Expansion of (1-x^12) / (1-x)^12.

The programs for A008494, the canonical program `A008494.P6748544680179378653` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008494 has offset 0).

The definition of A008494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008494.P5629313906679439268

`A001287(n)+A008504(n)-A008493(n)`
-/

namespace A008494.P5629313906679439268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) + (A008504 n - A008493 n)

end

end A008494.P5629313906679439268

namespace A008494

/-- `A001287(n)+A008504(n)-A008493(n)` -/
def P5629313906679439268.Spec : Prop :=
  ∀ n, P5629313906679439268.a n = A008494 n

end A008494

/-! ## A008494.P6748544680179378653

`∑[A008493(n)+A000582(n+9)]-A008493(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A008494

/-- `∑[A008493(n)+A000582(n+9)]-A008493(n)` -/
def P6748544680179378653.Spec : Prop :=
  ∀ n, P6748544680179378653.a n = A008494 n

theorem P6748544680179378653.correct : P6748544680179378653.Spec := by
  intro n
  simp only [A008494]

end A008494

/-! ## A008494.P16473541675765059312

`Δ[A008495(n)-C(n+11, 11)]`
-/

namespace A008494.P16473541675765059312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008495 n - (Nat.choose (n + 11) 11 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008494.P16473541675765059312

namespace A008494

/-- `Δ[A008495(n)-C(n+11, 11)]` -/
def P16473541675765059312.Spec : Prop :=
  ∀ n, P16473541675765059312.a n = A008494 n

end A008494

/-! ## A008494.P1822521503482693850

`Δ[A008495(n)-A001288(n)]`
-/

namespace A008494.P1822521503482693850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008495 n - A001288 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008494.P1822521503482693850

namespace A008494

/-- `Δ[A008495(n)-A001288(n)]` -/
def P1822521503482693850.Spec : Prop :=
  ∀ n, P1822521503482693850.a n = A008494 n

end A008494

/-! ## A008494.P12094389737038616090

`∑[C(n+10, 10)-A165766(A068921(n))]`
-/

namespace A008494.P12094389737038616090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 10) 10 : ℤ) - A165766 (A068921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008494.P12094389737038616090

namespace A008494

/-- `∑[C(n+10, 10)-A165766(A068921(n))]` -/
def P12094389737038616090.Spec : Prop :=
  ∀ n, P12094389737038616090.a n = A008494 n

end A008494

/-!
# A008495: Expansion of (1-x^13) / (1-x)^13.

The programs for A008495, the canonical program `A008495.P17411499091848740106` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008495 has offset 0).

The definition of A008495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008495.P17411499091848740106

`∑[A008494(n)+A001287(n)]-A008494(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A008495

/-- `∑[A008494(n)+A001287(n)]-A008494(n)` -/
def P17411499091848740106.Spec : Prop :=
  ∀ n, P17411499091848740106.a n = A008495 n

theorem P17411499091848740106.correct : P17411499091848740106.Spec := by
  intro n
  simp only [A008495]

end A008495

/-! ## A008495.P12046729215853517867

`C(n+12, 12)-A055641(A201125(n+1))`
-/

namespace A008495.P12046729215853517867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 12) 12 : ℤ) - A055641 (A201125 (n + 1)).toNat

end

end A008495.P12046729215853517867

namespace A008495

/-- `C(n+12, 12)-A055641(A201125(n+1))` -/
def P12046729215853517867.Spec : Prop :=
  ∀ n, P12046729215853517867.a n = A008495 n

end A008495

/-! ## A008495.P492619070991542367

`C(n+12, 12)-A165656(A187988(n+1))`
-/

namespace A008495.P492619070991542367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 12) 12 : ℤ) - A165656 (A187988 (n + 1)).toNat

end

end A008495.P492619070991542367

namespace A008495

/-- `C(n+12, 12)-A165656(A187988(n+1))` -/
def P492619070991542367.Spec : Prop :=
  ∀ n, P492619070991542367.a n = A008495 n

end A008495

/-! ## A008495.P7146862698700357400

`A010965(n)-A010815(A048587(n))`
-/

namespace A008495.P7146862698700357400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010965 (n + 12) - A010815 (A048587 n).toNat

end

end A008495.P7146862698700357400

namespace A008495

/-- `A010965(n)-A010815(A048587(n))` -/
def P7146862698700357400.Spec : Prop :=
  ∀ n, P7146862698700357400.a n = A008495 n

end A008495

/-! ## A008495.P8837944245033041840

`A010965(n)-A185284(A030108(n))`
-/

namespace A008495.P8837944245033041840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010965 (n + 12) - A185284 (A030108 n).toNat

end

end A008495.P8837944245033041840

namespace A008495

/-- `A010965(n)-A185284(A030108(n))` -/
def P8837944245033041840.Spec : Prop :=
  ∀ n, P8837944245033041840.a n = A008495 n

end A008495

/-!
# A008496: a(n) = floor(n/5)*floor((n+1)/5)*floor((n+2)/5).

The programs for A008496, the canonical program `A008496.P1921842672619919529` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008496 has offset 0).

The definition of A008496 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/5)*floor((n+1)/5)*floor((n+2)/5)` (program `A008496.P1921842672619919529`, by `A008496.P1921842672619919529.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008496.P1921842672619919529

`floor(n/5)*floor((n+1)/5)*floor((n+2)/5)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008496

/-- `floor(n/5)*floor((n+1)/5)*floor((n+2)/5)` -/
def P1921842672619919529.Spec : Prop :=
  ∀ n, P1921842672619919529.a n = A008496 n

theorem P1921842672619919529.correct : P1921842672619919529.Spec := by
  intro n
  simp only [A008496]

end A008496

/-! ## A008496.P1382586225043293944

`A008218(floor(4*n/5))`
-/

namespace A008496.P1382586225043293944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008218 ⌊4 * ((n : ℚ) / 5)⌋.toNat

end

end A008496.P1382586225043293944

namespace A008496

/-- `A008218(floor(4*n/5))` -/
def P1382586225043293944.Spec : Prop :=
  ∀ n, P1382586225043293944.a n = A008496 n

end A008496

/-! ## A008496.P14866813591485503185

`A008218(A090223(n))%A000124(n)²`
-/

namespace A008496.P14866813591485503185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008218 (A090223 n).toNat) (A000124 n ^ 2)

end

end A008496.P14866813591485503185

namespace A008496

/-- `A008218(A090223(n))%A000124(n)²` -/
def P14866813591485503185.Spec : Prop :=
  ∀ n, P14866813591485503185.a n = A008496 n

end A008496

/-! ## A008496.P3495916888242695973

`abs(A008218(A090223(n))*A064179(n+1))`
-/

namespace A008496.P3495916888242695973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008218 (A090223 n).toNat * A064179 (n + 1)|

end

end A008496.P3495916888242695973

namespace A008496

/-- `abs(A008218(A090223(n))*A064179(n+1))` -/
def P3495916888242695973.Spec : Prop :=
  ∀ n, P3495916888242695973.a n = A008496 n

end A008496

/-! ## A008496.P2379356592310283077

`A010051(2*(n+2))+A008218(A090223(n))`
-/

namespace A008496.P2379356592310283077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 2)) + A008218 (A090223 n).toNat

end

end A008496.P2379356592310283077

namespace A008496

/-- `A010051(2*(n+2))+A008218(A090223(n))` -/
def P2379356592310283077.Spec : Prop :=
  ∀ n, P2379356592310283077.a n = A008496 n

end A008496

/-! ## A008496.P5649723510642383749

`A008218(A090223(n))^A000034(A000010(n+1))`
-/

namespace A008496.P5649723510642383749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008218 (A090223 n).toNat : ℚ) ^ (A000034 (A000010 (n + 1)).toNat : ℤ)

end

end A008496.P5649723510642383749

namespace A008496

/-- `A008218(A090223(n))^A000034(A000010(n+1))` -/
def P5649723510642383749.Spec : Prop :=
  ∀ n, P5649723510642383749.a n = (A008496 n : ℚ)

end A008496

/-! ## A008496.P17791028744363070501

`A008218(A090223(n))+A000007(n+1)`
-/

namespace A008496.P17791028744363070501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008218 (A090223 n).toNat + A000007 (n + 1)

end

end A008496.P17791028744363070501

namespace A008496

/-- `A008218(A090223(n))+A000007(n+1)` -/
def P17791028744363070501.Spec : Prop :=
  ∀ n, P17791028744363070501.a n = A008496 n

end A008496

/-! ## A008496.P4774651770010235824

`A056594(2*n+1)+A008218(A090223(n))`
-/

namespace A008496.P4774651770010235824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n + 1) + A008218 (A090223 n).toNat

end

end A008496.P4774651770010235824

namespace A008496

/-- `A056594(2*n+1)+A008218(A090223(n))` -/
def P4774651770010235824.Spec : Prop :=
  ∀ n, P4774651770010235824.a n = A008496 n

end A008496

/-! ## A008496.P17565359743061150740

`A008218(A090223(n))%A000051(n)`
-/

namespace A008496.P17565359743061150740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008218 (A090223 n).toNat) (A000051 n)

end

end A008496.P17565359743061150740

namespace A008496

/-- `A008218(A090223(n))%A000051(n)` -/
def P17565359743061150740.Spec : Prop :=
  ∀ n, P17565359743061150740.a n = A008496 n

end A008496

/-! ## A008496.P18065912081520727586

`and(A000225(n), A008218(A090223(n)))`
-/

namespace A008496.P18065912081520727586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A008218 (A090223 n).toNat)

end

end A008496.P18065912081520727586

namespace A008496

/-- `and(A000225(n), A008218(A090223(n)))` -/
def P18065912081520727586.Spec : Prop :=
  ∀ n, P18065912081520727586.a n = A008496 n

end A008496

/-!
# A008497: a(n) = floor(n/5)*floor((n+1)/5).

The programs for A008497, the canonical program `A008497.P5013688310649728938` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008497 has offset 0).

The definition of A008497 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/5)*floor((n+1)/5)` (program `A008497.P5013688310649728938`, by `A008497.P5013688310649728938.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008497.P5013688310649728938

`floor(n/5)*floor((n+1)/5)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008497

/-- `floor(n/5)*floor((n+1)/5)` -/
def P5013688310649728938.Spec : Prop :=
  ∀ n, P5013688310649728938.a n = A008497 n

theorem P5013688310649728938.correct : P5013688310649728938.Spec := by
  intro n
  simp only [A008497]

end A008497

/-! ## A008497.P14050668505415342286

`A002620(2*n-comp[and(n, n+3)+1])`
-/

namespace A008497.P14050668505415342286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 3) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * n - SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A008497.P14050668505415342286

namespace A008497

/-- `A002620(2*n-comp[and(n, n+3)+1])` -/
def P14050668505415342286.Spec : Prop :=
  ∀ n, P14050668505415342286.a n = A008497 n

end A008497

/-! ## A008497.P14576789409777143757

`A008133(A057355(n))`
-/

namespace A008497.P14576789409777143757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (A057355 n).toNat

end

end A008497.P14576789409777143757

namespace A008497

/-- `A008133(A057355(n))` -/
def P14576789409777143757.Spec : Prop :=
  ∀ n, P14576789409777143757.a n = A008497 n

end A008497

/-! ## A008497.P10252255493182373170

`A008217(A090223(n))`
-/

namespace A008497.P10252255493182373170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A090223 n).toNat

end

end A008497.P10252255493182373170

namespace A008497

/-- `A008217(A090223(n))` -/
def P10252255493182373170.Spec : Prop :=
  ∀ n, P10252255493182373170.a n = A008497 n

end A008497

/-! ## A008497.P4939683592251571676

`A002620(A047412(n+1)-A047263(n+1))`
-/

namespace A008497.P4939683592251571676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A047412 (n + 1) - A047263 (n + 1)).toNat

end

end A008497.P4939683592251571676

namespace A008497

/-- `A002620(A047412(n+1)-A047263(n+1))` -/
def P4939683592251571676.Spec : Prop :=
  ∀ n, P4939683592251571676.a n = A008497 n

end A008497

/-! ## A008497.P4231433069226904837

`A008217(A173633(n+1))`
-/

namespace A008497.P4231433069226904837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A173633 (n + 1)).toNat

end

end A008497.P4231433069226904837

namespace A008497

/-- `A008217(A173633(n+1))` -/
def P4231433069226904837.Spec : Prop :=
  ∀ n, P4231433069226904837.a n = A008497 n

end A008497

/-! ## A008497.P815739007561541867

`∑[A002266(lcm(n, A010891(n+1)))]`
-/

namespace A008497.P815739007561541867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (Int.lcm (n : ℤ) (A010891 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008497.P815739007561541867

namespace A008497

/-- `∑[A002266(lcm(n, A010891(n+1)))]` -/
def P815739007561541867.Spec : Prop :=
  ∀ n, P815739007561541867.a n = A008497 n

end A008497

/-! ## A008497.P10417765624345722031

`round(A008363(n+1)-sqrt(A008363(n+1)))`
-/

namespace A008497.P10417765624345722031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008363 (n + 1) : ℝ) - Real.sqrt (A008363 (n + 1) : ℝ))

end

end A008497.P10417765624345722031

namespace A008497

/-- `round(A008363(n+1)-sqrt(A008363(n+1)))` -/
def P10417765624345722031.Spec : Prop :=
  ∀ n, P10417765624345722031.a n = A008497 n

end A008497

/-! ## A008497.P404201692142645288

`A002620(A002266(n+1)+A002266(n))`
-/

namespace A008497.P404201692142645288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A002266 (n + 1) + A002266 n).toNat

end

end A008497.P404201692142645288

namespace A008497

/-- `A002620(A002266(n+1)+A002266(n))` -/
def P404201692142645288.Spec : Prop :=
  ∀ n, P404201692142645288.a n = A008497 n

end A008497

/-! ## A008497.P2942813615010360799

`A002620(Δ[A118015(n+3)]-2)`
-/

namespace A008497.P2942813615010360799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (f1 (n + 1) - f1 n - 2).toNat

end

end A008497.P2942813615010360799

namespace A008497

/-- `A002620(Δ[A118015(n+3)]-2)` -/
def P2942813615010360799.Spec : Prop :=
  ∀ n, P2942813615010360799.a n = A008497 n

end A008497

/-! ## A008497.P17978688758983290809

`A002620(Δ[A131242(2*n)])`
-/

namespace A008497.P17978688758983290809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (f1 (n + 1) - f1 n).toNat

end

end A008497.P17978688758983290809

namespace A008497

/-- `A002620(Δ[A131242(2*n)])` -/
def P17978688758983290809.Spec : Prop :=
  ∀ n, P17978688758983290809.a n = A008497 n

end A008497

/-! ## A008497.P16612195215641816059

`A002620(Δ[A008728(2*n)]-2)`
-/

namespace A008497.P16612195215641816059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008728 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (f1 (n + 1) - f1 n - 2).toNat

end

end A008497.P16612195215641816059

namespace A008497

/-- `A002620(Δ[A008728(2*n)]-2)` -/
def P16612195215641816059.Spec : Prop :=
  ∀ n, P16612195215641816059.a n = A008497 n

end A008497

/-! ## A008497.P7895511379470097818

`A028391(A008363(n+1))`
-/

namespace A008497.P7895511379470097818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A008363 (n + 1)).toNat

end

end A008497.P7895511379470097818

namespace A008497

/-- `A028391(A008363(n+1))` -/
def P7895511379470097818.Spec : Prop :=
  ∀ n, P7895511379470097818.a n = A008497 n

end A008497

/-! ## A008497.P11899426138439942233

`A004526(A007590(A004523(A004526(A239492(n)))))`
-/

namespace A008497.P11899426138439942233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A007590 (A004523 (A004526 (A239492 n).toNat).toNat).toNat).toNat

end

end A008497.P11899426138439942233

namespace A008497

/-- `A004526(A007590(A004523(A004526(A239492(n)))))` -/
def P11899426138439942233.Spec : Prop :=
  ∀ n, P11899426138439942233.a n = A008497 n

end A008497

/-! ## A008497.P6335107889701351943

`A002265(A004523(A057355(n))²)`
-/

namespace A008497.P6335107889701351943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A004523 (A057355 n).toNat ^ 2).toNat

end

end A008497.P6335107889701351943

namespace A008497

/-- `A002265(A004523(A057355(n))²)` -/
def P6335107889701351943.Spec : Prop :=
  ∀ n, P6335107889701351943.a n = A008497 n

end A008497

/-! ## A008497.P7980118244396784191

`A002265(A130496(n+1)*A130496(n))`
-/

namespace A008497.P7980118244396784191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A130496 (n + 1) * A130496 n).toNat

end

end A008497.P7980118244396784191

namespace A008497

/-- `A002265(A130496(n+1)*A130496(n))` -/
def P7980118244396784191.Spec : Prop :=
  ∀ n, P7980118244396784191.a n = A008497 n

end A008497

/-!
# A008498: 4-dimensional centered tetrahedral numbers.

The programs for A008498, the canonical program `A008498.P8566296902789686221` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008498 has offset 0).

The definition of A008498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008498.P8566296902789686221

`C(n+5, 5)-C(n, 5)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008498

/-- `C(n+5, 5)-C(n, 5)` -/
def P8566296902789686221.Spec : Prop :=
  ∀ n, P8566296902789686221.a n = A008498 n

theorem P8566296902789686221.correct : P8566296902789686221.Spec := by
  intro n
  simp only [A008498]

end A008498

/-! ## A008498.P5288838444600690792

`1+5*n*(n+1)*(n²+n+10)/24`
-/

namespace A008498.P5288838444600690792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (5 * n * (n + 1) * (n ^ 2 + n + 10) : ℚ) / 24

end

end A008498.P5288838444600690792

namespace A008498

/-- `1+5*n*(n+1)*(n²+n+10)/24` -/
def P5288838444600690792.Spec : Prop :=
  ∀ n, P5288838444600690792.a n = (A008498 n : ℚ)

theorem P5288838444600690792.correct : P5288838444600690792.Spec := by
  intro n
  simp only [A008498, Nat.add_sub_cancel, A008498.P5288838444600690792.a, A008498.P8566296902789686221.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008498

/-! ## A008498.P4177029841991069623

`∑[A008487(n)]`
-/

namespace A008498.P4177029841991069623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008498.P4177029841991069623

namespace A008498

/-- `∑[A008487(n)]` -/
def P4177029841991069623.Spec : Prop :=
  ∀ n, P4177029841991069623.a n = A008498 n

end A008498

/-! ## A008498.P14222616351400066216

`∑[∑[∑[A004120(n)-∑[n]]]]`
-/

namespace A008498.P14222616351400066216
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004120 n - ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008498.P14222616351400066216

namespace A008498

/-- `∑[∑[∑[A004120(n)-∑[n]]]]` -/
def P14222616351400066216.Spec : Prop :=
  ∀ n, P14222616351400066216.a n = A008498 n

end A008498

/-! ## A008498.P9713631274425953394

`∑[∑[∑[A296515(n)+n+1+n]]]`
-/

namespace A008498.P9713631274425953394
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296515 n + (n + 1 : ℤ) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008498.P9713631274425953394

namespace A008498

/-- `∑[∑[∑[A296515(n)+n+1+n]]]` -/
def P9713631274425953394.Spec : Prop :=
  ∀ n, P9713631274425953394.a n = A008498 n

end A008498

/-! ## A008498.P11289255249447084053

`round(A132366(n)+n*(n-1)*(n-2)*(n-3)/24)`
-/

namespace A008498.P11289255249447084053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A132366 n : ℚ) + (n : ℚ) * (((n : ℤ) - 1 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 3 : ℚ) / 24))))

end

end A008498.P11289255249447084053

namespace A008498

/-- `round(A132366(n)+n*(n-1)*(n-2)*(n-3)/24)` -/
def P11289255249447084053.Spec : Prop :=
  ∀ n, P11289255249447084053.a n = A008498 n

end A008498

/-! ## A008498.P9037491568397960128

`∑[A008574(n)+A004068(n)]`
-/

namespace A008498.P9037491568397960128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008498.P9037491568397960128

namespace A008498

/-- `∑[A008574(n)+A004068(n)]` -/
def P9037491568397960128.Spec : Prop :=
  ∀ n, P9037491568397960128.a n = A008498 n

end A008498

/-!
# A008499: Number of 5-dimensional centered tetrahedral numbers.

The programs for A008499, the canonical program `A008499.P3335974247882350798` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008499 has offset 0).

The definition of A008499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008499.P3549288097722147469

`C(n+6, 6)-C(n, 6)`
-/

namespace A008499.P3549288097722147469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 6 : ℤ) - (Nat.choose n 6 : ℤ)

end

end A008499.P3549288097722147469

namespace A008499

/-- `C(n+6, 6)-C(n, 6)` -/
def P3549288097722147469.Spec : Prop :=
  ∀ n, P3549288097722147469.a n = A008499 n

end A008499

/-! ## A008499.P3335974247882350798

`(6*n^5+15*n^4+160*n^3+225*n²+314*n+120)/120`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008499

/-- `(6*n^5+15*n^4+160*n^3+225*n²+314*n+120)/120` -/
def P3335974247882350798.Spec : Prop :=
  ∀ n, P3335974247882350798.a n = (A008499 n : ℚ)

end A008499

/-! ## A008499.P7292221869698388705

`∑[A008488(n)]`
-/

namespace A008499.P7292221869698388705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008499.P7292221869698388705

namespace A008499

/-- `∑[A008488(n)]` -/
def P7292221869698388705.Spec : Prop :=
  ∀ n, P7292221869698388705.a n = A008499 n

end A008499

/-! ## A008499.P14590002195004208131

`∑[A159833(n)+2]-1`
-/

namespace A008499.P14590002195004208131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159833 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A008499.P14590002195004208131

namespace A008499

/-- `∑[A159833(n)+2]-1` -/
def P14590002195004208131.Spec : Prop :=
  ∀ n, P14590002195004208131.a n = A008499 n

end A008499

/-! ## A008499.P13953490554865234566

`A120478(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A008499.P13953490554865234566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120478 (n - 1) + a (n - 1)

end

end A008499.P13953490554865234566

namespace A008499

/-- `A120478(n-1)+a(n-1)` -/
def P13953490554865234566.Spec : Prop :=
  ∀ n, P13953490554865234566.a n = A008499 n

end A008499

/-! ## A008499.P10942682712978108600

`A112851(n)+A001845(n)`
-/

namespace A008499.P10942682712978108600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112851 n + A001845 n

end

end A008499.P10942682712978108600

namespace A008499

/-- `A112851(n)+A001845(n)` -/
def P10942682712978108600.Spec : Prop :=
  ∀ n, P10942682712978108600.a n = A008499 n

end A008499

/-! ## A008499.P16830026049963308752

`∑[A006011(n)+A005899(n)]`
-/

namespace A008499.P16830026049963308752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n + A005899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008499.P16830026049963308752

namespace A008499

/-- `∑[A006011(n)+A005899(n)]` -/
def P16830026049963308752.Spec : Prop :=
  ∀ n, P16830026049963308752.a n = A008499 n

end A008499

/-! ## A008499.P13791583103670281012

`∑[A227161(n)]+n*A227161(n)`
-/

namespace A008499.P13791583103670281012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A227161 n

end

end A008499.P13791583103670281012

namespace A008499

/-- `∑[A227161(n)]+n*A227161(n)` -/
def P13791583103670281012.Spec : Prop :=
  ∀ n, P13791583103670281012.a n = A008499 n

end A008499

/-! ## A008499.P16688593022400791680

`A124089(n+6)+1-A000579(n)`
-/

namespace A008499.P16688593022400791680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 6) + (1 - A000579 n)

end

end A008499.P16688593022400791680

namespace A008499

/-- `A124089(n+6)+1-A000579(n)` -/
def P16688593022400791680.Spec : Prop :=
  ∀ n, P16688593022400791680.a n = A008499 n

end A008499

/-! ## A008499.P12973233766222260464

`A096945(n)-(A095670(n)+A000579(n))`
-/

namespace A008499.P12973233766222260464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096945 n - (A095670 n + A000579 n)

end

end A008499.P12973233766222260464

namespace A008499

/-- `A096945(n)-(A095670(n)+A000579(n))` -/
def P12973233766222260464.Spec : Prop :=
  ∀ n, P12973233766222260464.a n = A008499 n

end A008499

/-! ## A008499.P10502455552117498082

`∑[A159833(n)+A001222(2*A020639(n+1))]`
-/

namespace A008499.P10502455552117498082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159833 n + A001222 (2 * A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008499.P10502455552117498082

namespace A008499

/-- `∑[A159833(n)+A001222(2*A020639(n+1))]` -/
def P10502455552117498082.Spec : Prop :=
  ∀ n, P10502455552117498082.a n = A008499 n

end A008499

/-! ## A008499.P358524595594280191

`A000579(n+6)-A000579(n)`
-/

namespace A008499.P358524595594280191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6) - A000579 n

end

end A008499.P358524595594280191

namespace A008499

/-- `A000579(n+6)-A000579(n)` -/
def P358524595594280191.Spec : Prop :=
  ∀ n, P358524595594280191.a n = A008499 n

end A008499

/-! ## A008499.P15281291167462591715

`A299338(2*n)-A000579(n)`
-/

namespace A008499.P15281291167462591715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 (2 * n) - A000579 n

end

end A008499.P15281291167462591715

namespace A008499

/-- `A299338(2*n)-A000579(n)` -/
def P15281291167462591715.Spec : Prop :=
  ∀ n, P15281291167462591715.a n = A008499 n

end A008499

/-! ## A008499.P2709998373114203106

`A036220(n)/A000244(n)-A000579(n)`
-/

namespace A008499.P2709998373114203106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036220 n : ℚ) / (A000244 n : ℚ) - (A000579 n : ℚ)

end

end A008499.P2709998373114203106

namespace A008499

/-- `A036220(n)/A000244(n)-A000579(n)` -/
def P2709998373114203106.Spec : Prop :=
  ∀ n, P2709998373114203106.a n = (A008499 n : ℚ)

end A008499

