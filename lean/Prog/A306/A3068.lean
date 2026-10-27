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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A306800: Square array whose entry A(n,k) is the number of endofunctions on a set of size n with preimage constraint {0,1,...,k}, for n >= 0, k >= 0, read by descending antidiagonals.

The programs for A306800, there is no canonical definition to state claims against.
-/

/-! ## A306800.P323787739962279788

`A073138(A247504(n)%A109888(2*n+3))`
-/

namespace A306800.P323787739962279788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 (Int.tmod (A247504 n) (A109888 (2 * n + 3))).toNat

end

end A306800.P323787739962279788

/-! ## A306800.P3467404090929988470

`A073138(A247504(A111332(n)+n))`
-/

namespace A306800.P3467404090929988470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 (A247504 (A111332 n + (n : ℤ)).toNat).toNat

end

end A306800.P3467404090929988470

/-! ## A306800.P10766329790351587648

`A073138(or(A111332(n), A247504(n)))`
-/

namespace A306800.P10766329790351587648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 (Int.lor (A111332 n) (A247504 n)).toNat

end

end A306800.P10766329790351587648

/-! ## A306800.P548152967798115550

`A073138(∑[A111332(n)]*A247504(n))`
-/

namespace A306800.P548152967798115550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 ((∑ j ∈ Finset.range (n + 1), f1 j) * A247504 n).toNat

end

end A306800.P548152967798115550

/-! ## A306800.P5112382943649872315

`A147981(A384986(n))`
-/

namespace A306800.P5112382943649872315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147981 (A384986 n).toNat

end

end A306800.P5112382943649872315

/-!
# A306802: Position of highly composite numbers in the sequence of products of primorials.

The programs for A306802, there is no canonical definition to state claims against.
-/

/-! ## A306802.P7150999317770682106

`A361808(A353562(n+1))`
-/

namespace A306802.P7150999317770682106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361808 (A353562 (n + 1)).toNat

end

end A306802.P7150999317770682106

/-! ## A306802.P13288677329632490209

`A101296(A002182(n+1))`
-/

namespace A306802.P13288677329632490209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A002182 (n + 1)).toNat

end

end A306802.P13288677329632490209

/-! ## A306802.P16132131106111121212

`A101296(sqrt(A046952(n+1)))`
-/

namespace A306802.P16132131106111121212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (SequenceMachineLib.roundAway (Real.sqrt (A046952 (n + 1) : ℝ))).toNat

end

end A306802.P16132131106111121212

/-! ## A306802.P11414626052846396606

`A101296(A135372(n+1)-1)`
-/

namespace A306802.P11414626052846396606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A135372 (n + 1) - 1).toNat

end

end A306802.P11414626052846396606

/-!
# A306805: An irregular fractal sequence: underline a(n) iff [a(n-1) + a(n)] is divisible by the leftmost digit of a(n); all underlined terms rebuild the starting sequence.

The programs for A306805, there is no canonical definition to state claims against.
-/

/-! ## A306805.P18006829755130703078

`A031226(A123382(n))*A123390(n+1)`
-/

namespace A306805.P18006829755130703078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031226 (A123382 n).toNat * A123390 (n + 1)

end

end A306805.P18006829755130703078

/-! ## A306805.P4443830251791530029

`A051064(A293169(n))*A123390(n+1)`
-/

namespace A306805.P4443830251791530029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A293169 n).toNat * A123390 (n + 1)

end

end A306805.P4443830251791530029

/-! ## A306805.P11448184458303291555

`A123390(n+1)*A183017(A123390(n+1)²)`
-/

namespace A306805.P11448184458303291555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123390 (n + 1) * A183017 (A123390 (n + 1) ^ 2).toNat

end

end A306805.P11448184458303291555

/-! ## A306805.P3133799297096061716

`A185255(A004275(n))+A123390(n+1)`
-/

namespace A306805.P3133799297096061716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A004275 n).toNat + A123390 (n + 1)

end

end A306805.P3133799297096061716

/-!
# A306806: An irregular fractal sequence: underline a(n) iff [a(n-1) + a(n)] is divisible by the rightmost digit of a(n); all underlined terms rebuild the starting sequence.

The programs for A306806, there is no canonical definition to state claims against.
-/

/-! ## A306806.P11315291441335894757

`A130659(A184955(n))+A123390(n+1)`
-/

namespace A306806.P11315291441335894757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130659 (A184955 n).toNat + A123390 (n + 1)

end

end A306806.P11315291441335894757

/-! ## A306806.P10881501961064793763

`A165653(A165656(n))+A123390(n+1)`
-/

namespace A306806.P10881501961064793763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165653 (A165656 n).toNat + A123390 (n + 1)

end

end A306806.P10881501961064793763

/-! ## A306806.P8925317273775710968

`A123671(A123566(n+1))+A123390(n+1)`
-/

namespace A306806.P8925317273775710968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123671 (A123566 (n + 1)).toNat + A123390 (n + 1)

end

end A306806.P8925317273775710968

/-! ## A306806.P11724183896921799613

`A297237(A263333(n+1))+A123390(n+1)`
-/

namespace A306806.P11724183896921799613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297237 (A263333 (n + 1)).toNat + A123390 (n + 1)

end

end A306806.P11724183896921799613

/-!
# A306807: An irregular fractal sequence: underline a(n) iff the absolute difference |a(n-1) - a(n)| is prime; all underlined terms rebuild the starting sequence.

The programs for A306807, the canonical program `A306807.P4487341129196582665` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306807 has offset 1).

The definition of A306807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306807.P4487341129196582665

`A185114(A082375(n)+1)+A082375(n)+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A306807

/-- `A185114(A082375(n)+1)+A082375(n)+1` -/
def P4487341129196582665.Spec : Prop :=
  ∀ n, P4487341129196582665.a n = A306807 (n + 1)

theorem P4487341129196582665.correct : P4487341129196582665.Spec := by
  intro n
  simp only [A306807, Nat.add_sub_cancel]

end A306807

/-! ## A306807.P17567153088605674431

`A185114(A122196(n+1))+A122196(n+1)`
-/

namespace A306807.P17567153088605674431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 (A122196 (n + 1)).toNat + A122196 (n + 1)

end

end A306807.P17567153088605674431

namespace A306807

/-- `A185114(A122196(n+1))+A122196(n+1)` -/
def P17567153088605674431.Spec : Prop :=
  ∀ n, P17567153088605674431.a n = A306807 (n + 1)

end A306807

/-! ## A306807.P9540392337583222313

`A002024(abs(A046691(A082375(n))))`
-/

namespace A306807.P9540392337583222313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 |A046691 (A082375 n).toNat|.toNat

end

end A306807.P9540392337583222313

namespace A306807

/-- `A002024(abs(A046691(A082375(n))))` -/
def P9540392337583222313.Spec : Prop :=
  ∀ n, P9540392337583222313.a n = A306807 (n + 1)

end A306807

/-! ## A306807.P8241996701640397494

`A293754(A082375(n)+1)`
-/

namespace A306807.P8241996701640397494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (A082375 n + 1).toNat

end

end A306807.P8241996701640397494

namespace A306807

/-- `A293754(A082375(n)+1)` -/
def P8241996701640397494.Spec : Prop :=
  ∀ n, P8241996701640397494.a n = A306807 (n + 1)

end A306807

/-! ## A306807.P2540975130006452100

`A293754(A122196(n+1))`
-/

namespace A306807.P2540975130006452100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (A122196 (n + 1)).toNat

end

end A306807.P2540975130006452100

namespace A306807

/-- `A293754(A122196(n+1))` -/
def P2540975130006452100.Spec : Prop :=
  ∀ n, P2540975130006452100.a n = A306807 (n + 1)

end A306807

/-! ## A306807.P18180410683514425786

`A242410(A122196(n+1))%A005843(A000124(n))`
-/

namespace A306807.P18180410683514425786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242410 (A122196 (n + 1)).toNat) (A005843 (A000124 n).toNat)

end

end A306807.P18180410683514425786

namespace A306807

/-- `A242410(A122196(n+1))%A005843(A000124(n))` -/
def P18180410683514425786.Spec : Prop :=
  ∀ n, P18180410683514425786.a n = A306807 (n + 1)

end A306807

/-! ## A306807.P14941442951200873803

`A099260(A122196(n+1))+A008683(A002148(n))`
-/

namespace A306807.P14941442951200873803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099260 (A122196 (n + 1)).toNat + A008683 (A002148 n).toNat

end

end A306807.P14941442951200873803

namespace A306807

/-- `A099260(A122196(n+1))+A008683(A002148(n))` -/
def P14941442951200873803.Spec : Prop :=
  ∀ n, P14941442951200873803.a n = A306807 (n + 1)

end A306807

/-! ## A306807.P12291143697627041789

`A242410(A122196(n+1))/A122196(A242410(n+1)²)`
-/

namespace A306807.P12291143697627041789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242410 (A122196 (n + 1)).toNat : ℚ) / (A122196 (A242410 (n + 1) ^ 2).toNat : ℚ)

end

end A306807.P12291143697627041789

namespace A306807

/-- `A242410(A122196(n+1))/A122196(A242410(n+1)²)` -/
def P12291143697627041789.Spec : Prop :=
  ∀ n, P12291143697627041789.a n = (A306807 (n + 1) : ℚ)

end A306807

/-! ## A306807.P15304658318621412225

`A099260(A122196(n+1))-A122196(A099260(n)²)`
-/

namespace A306807.P15304658318621412225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099260 (A122196 (n + 1)).toNat - A122196 (A099260 n ^ 2).toNat

end

end A306807.P15304658318621412225

namespace A306807

/-- `A099260(A122196(n+1))-A122196(A099260(n)²)` -/
def P15304658318621412225.Spec : Prop :=
  ∀ n, P15304658318621412225.a n = A306807 (n + 1)

end A306807

/-! ## A306807.P10671595194700464916

`A199769(A119440(n))`
-/

namespace A306807.P10671595194700464916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199769 (A119440 n).toNat

end

end A306807.P10671595194700464916

namespace A306807

/-- `A199769(A119440(n))` -/
def P10671595194700464916.Spec : Prop :=
  ∀ n, P10671595194700464916.a n = A306807 (n + 1)

end A306807

/-!
# A306809: Binomial transform of the continued fraction expansion of e.

The programs for A306809, there is no canonical definition to state claims against.
-/

/-! ## A306809.P6054764339829452933

`A118010(∑[n+1])`
-/

namespace A306809.P6054764339829452933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118010 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306809.P6054764339829452933

/-! ## A306809.P8476154308103754746

`record[A118010(comp[∑[n-1]])]`
-/

namespace A306809.P8476154308103754746
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118010 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306809.P8476154308103754746

/-! ## A306809.P6901186052649582720

`record[A118010(n+1)-A173787(n)]`
-/

namespace A306809.P6901186052649582720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118010 (n + 1) - A173787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306809.P6901186052649582720

/-! ## A306809.P10408196020936308285

`record[A118010(n+1)-A285192(n)]`
-/

namespace A306809.P10408196020936308285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118010 (n + 1) - A285192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306809.P10408196020936308285

/-! ## A306809.P16311341174867079933

`record[A118010(n+1)-A290448(n)]`
-/

namespace A306809.P16311341174867079933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118010 (n + 1) - A290448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306809.P16311341174867079933

/-!
# A306813: Number of 2n-step paths from (0,0) to (0,n) that stay in the first quadrant (but may touch the axes) consisting of steps (-1,0), (0,1), (0,-1) and (1,-1).

The programs for A306813, there is no canonical definition to state claims against.
-/

/-! ## A306813.P15329536775212264508

`A306814(∑[4*n])`
-/

namespace A306813.P15329536775212264508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306814 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306813.P15329536775212264508

/-! ## A306813.P9631494802224403860

`A306814(A046092(n))/A059268(∑[n+1])`
-/

namespace A306813.P9631494802224403860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306814 (A046092 n).toNat : ℚ) / (A059268 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A306813.P9631494802224403860

/-! ## A306813.P4453203477598880528

`char[A325775(n+1)]*A306814(A046092(n))`
-/

namespace A306813.P4453203477598880528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325775 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A306814 (A046092 n).toNat

end

end A306813.P4453203477598880528

/-! ## A306813.P12861077141469080453

`A285384(4*(n+1))*A306814(A046092(n))`
-/

namespace A306813.P12861077141469080453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (4 * (n + 1)) * A306814 (A046092 n).toNat

end

end A306813.P12861077141469080453

/-! ## A306813.P4194856353286692973

`A007318(A000217(n))*A306814(A046092(n))`
-/

namespace A306813.P4194856353286692973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A306814 (A046092 n).toNat

end

end A306813.P4194856353286692973

/-!
# A306814: Number T(n,k) of n-step paths from (0,0) to (0,k) that stay in the first quadrant (but may touch the axes) consisting of steps (-1,0), (0,1), (0,-1) and (1,-1); triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A306814, there is no canonical definition to state claims against.
-/

/-! ## A306814.P6191691890178002987

`A122203(4*A143325(n+2))`
-/

namespace A306814.P6191691890178002987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 (4 * A143325 (n + 2)).toNat

end

end A306814.P6191691890178002987

/-! ## A306814.P11440770739392266668

`A122284(4*A143325(n+2))`
-/

namespace A306814.P11440770739392266668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122284 (4 * A143325 (n + 2)).toNat

end

end A306814.P11440770739392266668

/-! ## A306814.P12333249337159136988

`A130401(4*A143325(n+2))`
-/

namespace A306814.P12333249337159136988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130401 (4 * A143325 (n + 2)).toNat

end

end A306814.P12333249337159136988

/-! ## A306814.P14912901273720683891

`∑{e}[A048503(A127158(n)), #]`
-/

namespace A306814.P14912901273720683891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048503 (A127158 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A306814.P14912901273720683891

/-! ## A306814.P13882187245106737310

`A053735(A121464(A127158(n)²))`
-/

namespace A306814.P13882187245106737310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A121464 (A127158 n ^ 2).toNat).toNat

end

end A306814.P13882187245106737310

/-!
# A306821: Inverse binomial transform of the "original" Bernoulli numbers [A164555(n)/A027642(n)] with 1 and 1/2 swapped. Denominators.

The programs for A306821, the canonical program `A306821.P10550649984046759747` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306821 has offset 0).

The definition of A306821 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141044, A141459, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A306821.P10550649984046759747

`A141459(n)*A141044(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A306821

/-- `A141459(n)*A141044(n)` -/
def P10550649984046759747.Spec : Prop :=
  ∀ n, P10550649984046759747.a n = A306821 n

theorem P10550649984046759747.correct : P10550649984046759747.Spec := by
  intro n
  simp only [A306821]

end A306821

/-! ## A306821.P5467301586424002119

`ceil(or(2, A176591(n))/2)`
-/

namespace A306821.P5467301586424002119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 2 (A176591 n) : ℚ) / 2⌉

end

end A306821.P5467301586424002119

namespace A306821

/-- `ceil(or(2, A176591(n))/2)` -/
def P5467301586424002119.Spec : Prop :=
  ∀ n, P5467301586424002119.a n = A306821 n

end A306821

/-! ## A306821.P16751072554392690659

`ceil(or(gcd(2, n), A027642(n))/2)`
-/

namespace A306821.P16751072554392690659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor (Nat.gcd 2 n : ℤ) (A027642 n) : ℚ) / 2⌉

end

end A306821.P16751072554392690659

namespace A306821

/-- `ceil(or(gcd(2, n), A027642(n))/2)` -/
def P16751072554392690659.Spec : Prop :=
  ∀ n, P16751072554392690659.a n = A306821 n

end A306821

/-! ## A306821.P10639254151455486803

`xor(C(n, n²), A141459(round(acot(n)+n)))`
-/

namespace A306821.P10639254151455486803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose n (n ^ 2) : ℤ) (A141459 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A306821.P10639254151455486803

namespace A306821

/-- `xor(C(n, n²), A141459(round(acot(n)+n)))` -/
def P10639254151455486803.Spec : Prop :=
  ∀ n, P10639254151455486803.a n = A306821 n

end A306821

/-! ## A306821.P8765295145529148419

`A141459(n)+char[A088705(n)]`
-/

namespace A306821.P8765295145529148419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A306821.P8765295145529148419

namespace A306821

/-- `A141459(n)+char[A088705(n)]` -/
def P8765295145529148419.Spec : Prop :=
  ∀ n, P8765295145529148419.a n = A306821 n

end A306821

/-! ## A306821.P2711485631406021169

`A141459(n)+char[A151909(n)]`
-/

namespace A306821.P2711485631406021169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A306821.P2711485631406021169

namespace A306821

/-- `A141459(n)+char[A151909(n)]` -/
def P2711485631406021169.Spec : Prop :=
  ∀ n, P2711485631406021169.a n = A306821 n

end A306821

/-! ## A306821.P6605446212184269665

`A141459(n)+char[A151934(n)]`
-/

namespace A306821.P6605446212184269665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A306821.P6605446212184269665

namespace A306821

/-- `A141459(n)+char[A151934(n)]` -/
def P6605446212184269665.Spec : Prop :=
  ∀ n, P6605446212184269665.a n = A306821 n

end A306821

/-! ## A306821.P11046007220981050403

`A141459(n)+A019590(n+1)`
-/

namespace A306821.P11046007220981050403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n + A019590 (n + 1)

end

end A306821.P11046007220981050403

namespace A306821

/-- `A141459(n)+A019590(n+1)` -/
def P11046007220981050403.Spec : Prop :=
  ∀ n, P11046007220981050403.a n = A306821 n

end A306821

/-! ## A306821.P11264211255544325264

`A141459(n)+A000007(A004526(n))`
-/

namespace A306821.P11264211255544325264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n + A000007 (A004526 n).toNat

end

end A306821.P11264211255544325264

namespace A306821

/-- `A141459(n)+A000007(A004526(n))` -/
def P11264211255544325264.Spec : Prop :=
  ∀ n, P11264211255544325264.a n = A306821 n

end A306821

/-! ## A306821.P3064510117702741168

`A141459(n)+A000007(A011371(n))`
-/

namespace A306821.P3064510117702741168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n + A000007 (A011371 n).toNat

end

end A306821.P3064510117702741168

namespace A306821

/-- `A141459(n)+A000007(A011371(n))` -/
def P3064510117702741168.Spec : Prop :=
  ∀ n, P3064510117702741168.a n = A306821 n

end A306821

/-! ## A306821.P3259305105053032805

`A141044(n)+A141459(n)-A054977(n+1)`
-/

namespace A306821.P3259305105053032805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n + (A141459 n - A054977 (n + 1))

end

end A306821.P3259305105053032805

namespace A306821

/-- `A141044(n)+A141459(n)-A054977(n+1)` -/
def P3259305105053032805.Spec : Prop :=
  ∀ n, P3259305105053032805.a n = A306821 n

end A306821

/-! ## A306821.P6160979366266187480

`A027642(n+1)/A176591(n+1)*A027642(n)`
-/

namespace A306821.P6160979366266187480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (n + 1) : ℚ) / (A176591 (n + 1) : ℚ) * (A027642 n : ℚ)

end

end A306821.P6160979366266187480

namespace A306821

/-- `A027642(n+1)/A176591(n+1)*A027642(n)` -/
def P6160979366266187480.Spec : Prop :=
  ∀ n, P6160979366266187480.a n = (A306821 n : ℚ)

end A306821

/-! ## A306821.P8888550120350352374

`A141459(n)+A164555(n+1)*A164555(n)`
-/

namespace A306821.P8888550120350352374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n + A164555 (n + 1) * A164555 n

end

end A306821.P8888550120350352374

namespace A306821

/-- `A141459(n)+A164555(n+1)*A164555(n)` -/
def P8888550120350352374.Spec : Prop :=
  ∀ n, P8888550120350352374.a n = A306821 n

end A306821

/-! ## A306821.P4852129312299962983

`A141459(n)-A027641(n+1)*A027641(n)`
-/

namespace A306821.P4852129312299962983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n - A027641 (n + 1) * A027641 n

end

end A306821.P4852129312299962983

namespace A306821

/-- `A141459(n)-A027641(n+1)*A027641(n)` -/
def P4852129312299962983.Spec : Prop :=
  ∀ n, P4852129312299962983.a n = A306821 n

end A306821

/-!
# A306822: Expansion of e.g.f. (sec(x) + tan(x))*exp(2*x)*BesselI(0,2*x).

The programs for A306822, there is no canonical definition to state claims against.
-/

/-! ## A306822.P6712369354575381365

`A181983(A083886(n))+A000392(n)`
-/

namespace A306822.P6712369354575381365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (A083886 n).toNat + A000392 n

end

end A306822.P6712369354575381365

/-! ## A306822.P18194162105169081566

`A032741(A086093(n))+A002310(n)`
-/

namespace A306822.P18194162105169081566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A086093 n).toNat + A002310 n

end

end A306822.P18194162105169081566

/-!
# A306824: Integer k such that digsum(k) = digsum (k/p(1)) = digsum (k/p(2)) = ... for all prime factors p(i) of k, where digsum(k) = A007953(k) is the digital sum of k.

The programs for A306824, there is no canonical definition to state claims against.
-/

/-! ## A306824.P4390681633943601413

`A008486(A259727(n+1)^A160941(n+1))`
-/

namespace A306824.P4390681633943601413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway ((A259727 (n + 1) : ℚ) ^ (A160941 (n + 1) : ℤ))).toNat

end

end A306824.P4390681633943601413

/-! ## A306824.P16093072732327724436

`A008486(A259727(n+1)%A216903(n+1))`
-/

namespace A306824.P16093072732327724436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A259727 (n + 1)) (A216903 (n + 1))).toNat

end

end A306824.P16093072732327724436

/-! ## A306824.P8174775855006592532

`A008486(A259727(n+1))%A096508(n+5)`
-/

namespace A306824.P8174775855006592532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 (A259727 (n + 1)).toNat) (A096508 (n + 5))

end

end A306824.P8174775855006592532

/-!
# A306825: Primitive part of A001353(n).

The programs for A306825, there is no canonical definition to state claims against.
-/

/-! ## A306825.P17192321896862745322

`ratio[lcm(a(n-1), A001353(n))]` with `a(0)=1`
-/

namespace A306825.P17192321896862745322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lcm (f1 (n - 1) : ℤ) (A001353 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A306825.P17192321896862745322

/-! ## A306825.P9749281251276049783

`A028310(A000188(n+1)*A309526(n+1))`
-/

namespace A306825.P9749281251276049783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000188 (n + 1) * A309526 (n + 1)).toNat

end

end A306825.P9749281251276049783

/-! ## A306825.P10145747179648025116

`A028310(lcm(A000188(n+1), A309526(n+1)))`
-/

namespace A306825.P10145747179648025116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lcm (A000188 (n + 1)) (A309526 (n + 1)))

end

end A306825.P10145747179648025116

/-! ## A306825.P2962116915188589613

`A177704(A001353(n))*A309526(n+1)`
-/

namespace A306825.P2962116915188589613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (A001353 n).toNat * A309526 (n + 1)

end

end A306825.P2962116915188589613

/-!
# A306826: a(0) = 1; a(n) is the smallest integer k > a(n-1) such that 2^(k-1) == 1 (mod a(n-1)*k).

The programs for A306826, there is no canonical definition to state claims against.
-/

/-! ## A306826.P14873623779749285523

`record[A006530(A160173(n+1)²)]`
-/

namespace A306826.P14873623779749285523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A160173 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306826.P14873623779749285523

/-! ## A306826.P5990936816616333766

`record[A020639(A160173(n+1)²)]`
-/

namespace A306826.P5990936816616333766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A160173 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306826.P5990936816616333766

/-! ## A306826.P1969526760713341858

`A089167(A309729(n+1))`
-/

namespace A306826.P1969526760713341858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089167 (A309729 (n + 1)).toNat

end

end A306826.P1969526760713341858

/-!
# A306827: Number of isomorphism classes of connected 2-in 2-out digraphs, allowing parallel edges but not loops.

The programs for A306827, there is no canonical definition to state claims against.
-/

/-! ## A306827.P5048043755588370686

`A130446(∑[A040018(n+3)])`
-/

namespace A306827.P5048043755588370686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040018 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306827.P5048043755588370686

/-! ## A306827.P7180760480861987515

`record[A119611(n)%A201647(n+1)]`
-/

namespace A306827.P7180760480861987515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119611 n) (A201647 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306827.P7180760480861987515

/-!
# A306829: a(1) = 1; a(n+1) is the smallest k > a(n) such that 2^k == 2^a(n) (mod a(n)).

The programs for A306829, there is no canonical definition to state claims against.
-/

/-! ## A306829.P17091884798113302470

`A385989(a(n-1))` with `a(0)=1`
-/

namespace A306829.P17091884798113302470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A385989 (a (n - 1)).toNat

end

end A306829.P17091884798113302470

/-! ## A306829.P12770319345534036681

`A007733(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A306829.P12770319345534036681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007733 (a (n - 1)).toNat + a (n - 1)

end

end A306829.P12770319345534036681

/-! ## A306829.P6208140807153918736

`a(n-1)-(1-A204987(a(n-1)))` with `a(0)=1`
-/

namespace A306829.P6208140807153918736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (1 - A204987 (a (n - 1)).toNat)

end

end A306829.P6208140807153918736

/-! ## A306829.P16554571042813215774

`A242595(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A306829.P16554571042813215774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A242595 (a (n - 1)).toNat + a (n - 1)

end

end A306829.P16554571042813215774

/-! ## A306829.P5804756730651209043

`a(n-1)+a(n-1)-A277129(a(n-1))` with `a(0)=1`
-/

namespace A306829.P5804756730651209043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - A277129 (a (n - 1)).toNat)

end

end A306829.P5804756730651209043

/-!
# A306831: Expansion of e.g.f. exp(Sum_{k>=1} x^(k^2)*(1 + x^(k^2))/k^2).

The programs for A306831, there is no canonical definition to state claims against.
-/

/-! ## A306831.P7690068270936737956

`or(A071075(n), A350192(A006882(n)))`
-/

namespace A306831.P7690068270936737956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071075 n) (A350192 (A006882 n).toNat)

end

end A306831.P7690068270936737956

/-! ## A306831.P7532793293481511902

`A008624((A003407(n)+2)*A003407(n))`
-/

namespace A306831.P7532793293481511902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 ((A003407 n + 2) * A003407 n).toNat

end

end A306831.P7532793293481511902

/-!
# A306832: Expansion of e.g.f. (sec(x) + tan(x))*exp(x)*BesselI(0,2*x).

The programs for A306832, there is no canonical definition to state claims against.
-/

/-! ## A306832.P12888316519769797931

`∑[A004525(A171525(n+1)+A006603(n))]`
-/

namespace A306832.P12888316519769797931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A171525 (n + 1) + A006603 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306832.P12888316519769797931

/-! ## A306832.P6613878328754623040

`A321679(comp[2*(n+1)])+floor((2*n+1)/3)`
-/

namespace A306832.P6613878328754623040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321679 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + ⌊(2 * n + 1 : ℚ) / 3⌋

end

end A306832.P6613878328754623040

/-!
# A306833: a(1) = 3; a(n+1) is the smallest k > a(n) such that 2^(k-1) == 1 (mod a(n)).

The programs for A306833, there is no canonical definition to state claims against.
-/

/-! ## A306833.P15972747280004861120

`record[A145282(A008480(n+1))]`
-/

namespace A306833.P15972747280004861120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145282 (A008480 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306833.P15972747280004861120

/-! ## A306833.P11285532104093713928

`A000005(∏[A360565(n+1)])+1`
-/

namespace A306833.P11285532104093713928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A306833.P11285532104093713928

/-! ## A306833.P10609802124401447973

`record[2*A002322(A007318(n))]+1`
-/

namespace A306833.P10609802124401447973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002322 (A007318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A306833.P10609802124401447973

/-!
# A306834: Numerator of the barycenter of first n primes defined as a(n) = numerator(Sum_{i=1..n} (i*prime(i)) / Sum_{i=1..n} prime(i)).

The programs for A306834, the canonical program `A306834.P8589768313617631174` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306834 has offset 1).

The definition of A306834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306834.P3498517149294930052

`A014285(n+1)/A309036(n+1)`
-/

namespace A306834.P3498517149294930052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014285 (n + 1) : ℚ) / (A309036 (n + 1) : ℚ)

end

end A306834.P3498517149294930052

namespace A306834

/-- `A014285(n+1)/A309036(n+1)` -/
def P3498517149294930052.Spec : Prop :=
  ∀ n, P3498517149294930052.a n = (A306834 (n + 1) : ℚ)

end A306834

/-! ## A306834.P1572713413927108732

`∑[A033286(n+1)]/A309036(n+1)`
-/

namespace A306834.P1572713413927108732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A309036 (n + 1) : ℚ)

end

end A306834.P1572713413927108732

namespace A306834

/-- `∑[A033286(n+1)]/A309036(n+1)` -/
def P1572713413927108732.Spec : Prop :=
  ∀ n, P1572713413927108732.a n = (A306834 (n + 1) : ℚ)

end A306834

/-! ## A306834.P4842135192917949066

`∑[A083723(n+1)-n]/A309036(n+1)`
-/

namespace A306834.P4842135192917949066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083723 (n + 1) - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A309036 (n + 1) : ℚ)

end

end A306834.P4842135192917949066

namespace A306834

/-- `∑[A083723(n+1)-n]/A309036(n+1)` -/
def P4842135192917949066.Spec : Prop :=
  ∀ n, P4842135192917949066.a n = (A306834 (n + 1) : ℚ)

end A306834

/-! ## A306834.P13975722544482382825

`∑[(n+1)*A000040(n+1)]/A309036(n+1)`
-/

namespace A306834.P13975722544482382825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A309036 (n + 1) : ℚ)

end

end A306834.P13975722544482382825

namespace A306834

/-- `∑[(n+1)*A000040(n+1)]/A309036(n+1)` -/
def P13975722544482382825.Spec : Prop :=
  ∀ n, P13975722544482382825.a n = (A306834 (n + 1) : ℚ)

end A306834

/-! ## A306834.P9666859768616337371

`∑[(n+1)*sqrt(A001248(n+1))]/A309036(n+1)`
-/

namespace A306834.P9666859768616337371
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A001248 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / (A309036 (n + 1) : ℝ)

end

end A306834.P9666859768616337371

namespace A306834

/-- `∑[(n+1)*sqrt(A001248(n+1))]/A309036(n+1)` -/
def P9666859768616337371.Spec : Prop :=
  ∀ n, P9666859768616337371.a n = (A306834 (n + 1) : ℝ)

end A306834

/-! ## A306834.P9141952522284336958

`A014285(n+1)/A007504(n+1)*A307716(n+1)`
-/

namespace A306834.P9141952522284336958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014285 (n + 1) : ℚ) / (A007504 (n + 1) : ℚ) * (A307716 (n + 1) : ℚ)

end

end A306834.P9141952522284336958

namespace A306834

/-- `A014285(n+1)/A007504(n+1)*A307716(n+1)` -/
def P9141952522284336958.Spec : Prop :=
  ∀ n, P9141952522284336958.a n = (A306834 (n + 1) : ℚ)

end A306834

/-! ## A306834.P8589768313617631174

`A014285(n+1)/gcd(A014285(n+1), A316322(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A306834

/-- `A014285(n+1)/gcd(A014285(n+1), A316322(n+1))` -/
def P8589768313617631174.Spec : Prop :=
  ∀ n, P8589768313617631174.a n = (A306834 (n + 1) : ℚ)

end A306834

/-!
# A306835: a(0) = 0, a(1) = 1. For k > 1, k is inserted in the sequence between the last pair of consecutive terms already in the sequence which sum to k; if no such pair exists, k is added at the end of the sequence.

The programs for A306835, there is no canonical definition to state claims against.
-/

/-! ## A306835.P3544434660446202947

`A022998(lt[A066452(n+2), A054249(n+1)])`
-/

namespace A306835.P3544434660446202947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066452 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A306835.P3544434660446202947

/-! ## A306835.P12224162816477415903

`A022998(lt[A007955(3*n+2), A293662(3*n+4)])`
-/

namespace A306835.P12224162816477415903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293662 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A306835.P12224162816477415903

/-!
# A306836: Expansion of e.g.f. (sec(x) + tan(x))*exp(x)*BesselI(1,2*x)/x.

The programs for A306836, there is no canonical definition to state claims against.
-/

/-! ## A306836.P18118476019887837455

`A127757(A123164(n))+comp[2*n+3]-A016098(n)`
-/

namespace A306836.P18118476019887837455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A123164 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A016098 n

end

end A306836.P18118476019887837455

/-! ## A306836.P7616688448583166727

`ceil(A224539(n+1)^acot(4))`
-/

namespace A306836.P7616688448583166727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A224539 (n + 1) : ℝ) ^ (SequenceMachineLib.acot (4 : ℝ))⌉

end

end A306836.P7616688448583166727

/-!
# A306837: Number of unimodular n X n matrices with elements {0, 1}.

The programs for A306837, there is no canonical definition to state claims against.
-/

/-! ## A306837.P12067145184293958765

`∑[char[n^4]]*A086264(n+1)`
-/

namespace A306837.P12067145184293958765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A086264 (n + 1)

end

end A306837.P12067145184293958765

/-! ## A306837.P16927788416722080080

`A086264(n+1)*A214727(floor(sqrt(n)))`
-/

namespace A306837.P16927788416722080080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086264 (n + 1) * A214727 (Nat.sqrt n)

end

end A306837.P16927788416722080080

/-! ## A306837.P7799719418248119073

`A086264(n+1)*A099774(A000005(n+1))`
-/

namespace A306837.P7799719418248119073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086264 (n + 1) * A099774 (A000005 (n + 1)).toNat

end

end A306837.P7799719418248119073

/-! ## A306837.P11945626710266214950

`A086264(n+1)*A099774(A099774(2*n+1))`
-/

namespace A306837.P11945626710266214950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086264 (n + 1) * A099774 (A099774 (2 * n + 1)).toNat

end

end A306837.P11945626710266214950

/-!
# A306838: Number of different values taken by the determinant of a real (-1,0,1) matrix of order n.

The programs for A306838, there is no canonical definition to state claims against.
-/

/-! ## A306838.P6096265804617393021

`A148430(n)+A049708(n)`
-/

namespace A306838.P6096265804617393021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148430 n + A049708 n

end

end A306838.P6096265804617393021

/-! ## A306838.P5183224394148337356

`xor(A243645(n), A265065(n))`
-/

namespace A306838.P5183224394148337356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A243645 n) (A265065 n)

end

end A306838.P5183224394148337356

/-! ## A306838.P2500200680301437510

`A192483(n)+A143444(n+1)`
-/

namespace A306838.P2500200680301437510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192483 n + A143444 (n + 1)

end

end A306838.P2500200680301437510

/-!
# A306841: Number of rectangles of integer sides whose area or perimeter is n.

The programs for A306841, there is no canonical definition to state claims against.
-/

/-! ## A306841.P12520886308393526036

`n%2*A008624(n)+ceil(∏{e}[n+1, #+1]/2)`
-/

namespace A306841.P12520886308393526036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A008624 n + ⌈((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌉

end

end A306841.P12520886308393526036

/-! ## A306841.P641883735240162934

`floor((A161841(n+1)+A152271(n))/2)`
-/

namespace A306841.P641883735240162934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161841 (n + 1) + A152271 n : ℚ) / 2⌋

end

end A306841.P641883735240162934

/-! ## A306841.P6577989808781854385

`floor((A062249(n+1)-A186421(n))/2)`
-/

namespace A306841.P6577989808781854385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062249 (n + 1) - A186421 n : ℚ) / 2⌋

end

end A306841.P6577989808781854385

/-! ## A306841.P9694135380053768476

`A038548(n+1)+n%2*A008624(n)`
-/

namespace A306841.P9694135380053768476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) + ((n % 2 : ℕ) : ℤ) * A008624 n

end

end A306841.P9694135380053768476

/-! ## A306841.P9083334776786486744

`ceil((A000005(n+1)-A186421(n)+n+2)/2)-1`
-/

namespace A306841.P9083334776786486744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (n + 1) - A186421 n + (n : ℤ) + 2 : ℚ) / 2⌉ - 1

end

end A306841.P9083334776786486744

/-! ## A306841.P13542330919409394778

`A072670(n)+A008621(A133265(n))`
-/

namespace A306841.P13542330919409394778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n + A008621 (A133265 n).toNat

end

end A306841.P13542330919409394778

/-! ## A306841.P1731752227226038140

`A072670(n)+A008619(A152271(n))`
-/

namespace A306841.P1731752227226038140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n + A008619 (A152271 n).toNat

end

end A306841.P1731752227226038140

/-! ## A306841.P17492571763244979404

`A193592(A001972(n))+A072670(n)`
-/

namespace A306841.P17492571763244979404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A001972 n).toNat + A072670 n

end

end A306841.P17492571763244979404

/-! ## A306841.P176644711978911493

`A072670(n)+A008619(∑[A001057(n)])`
-/

namespace A306841.P176644711978911493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n + A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306841.P176644711978911493

/-! ## A306841.P11421959147593995079

`A002265(A133265(n))+ceil(A000005(n+1)/2)`
-/

namespace A306841.P11421959147593995079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A133265 n).toNat + ⌈(A000005 (n + 1) : ℚ) / 2⌉

end

end A306841.P11421959147593995079

/-!
# A306842: a(n) = Sum_{d|n} binomial(n,d)*binomial(n,n/d).

The programs for A306842, the canonical program `A306842.P7864790743057115416` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306842 has offset 1).

The definition of A306842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306842.P7864790743057115416

`∑{d}[n+1, C(n+1, #)*C(n+1, (n+1)/#)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A306842

/-- `∑{d}[n+1, C(n+1, #)*C(n+1, (n+1)/#)]` -/
def P7864790743057115416.Spec : Prop :=
  ∀ n, (P7864790743057115416.a n : ℤ) = A306842 (n + 1)

theorem P7864790743057115416.correct : P7864790743057115416.Spec := by
  intro n
  simp only [A306842, Nat.add_sub_cancel]

end A306842

/-! ## A306842.P6613004426005745137

`(n+1)*A194410(A088560(n))`
-/

namespace A306842.P6613004426005745137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A194410 (A088560 n).toNat

end

end A306842.P6613004426005745137

namespace A306842

/-- `(n+1)*A194410(A088560(n))` -/
def P6613004426005745137.Spec : Prop :=
  ∀ n, P6613004426005745137.a n = A306842 (n + 1)

end A306842

/-!
# A306843: a(n) = Sum_{d|n} binomial(n,d)^3.

The programs for A306843, the canonical program `A306843.P1814290163285661191` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306843 has offset 1).

The definition of A306843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306843.P1814290163285661191

`∑{d}[n+1, C(n+1, #)^3]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A306843

/-- `∑{d}[n+1, C(n+1, #)^3]` -/
def P1814290163285661191.Spec : Prop :=
  ∀ n, (P1814290163285661191.a n : ℤ) = A306843 (n + 1)

theorem P1814290163285661191.correct : P1814290163285661191.Spec := by
  intro n
  simp only [A306843, Nat.add_sub_cancel]

end A306843

/-! ## A306843.P9526085103996316323

`∑{d}[n+1, A000578(C(n+1, #))]`
-/

namespace A306843.P9526085103996316323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000578 (Nat.choose (n + 1) d)

end

end A306843.P9526085103996316323

namespace A306843

/-- `∑{d}[n+1, A000578(C(n+1, #))]` -/
def P9526085103996316323.Spec : Prop :=
  ∀ n, P9526085103996316323.a n = A306843 (n + 1)

theorem P9526085103996316323.correct : P9526085103996316323.Spec := by
  intro n
  simp only [A306843, Nat.add_sub_cancel, A306843.P9526085103996316323.f1, A306843.P9526085103996316323.a, A306843.P1814290163285661191.f1, A306843.P1814290163285661191.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A306843

/-!
# A306846: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals, where column k is the expansion of g.f. ((1-x)^(k-1))/((1-x)^k-x^k).

The programs for A306846, there is no canonical definition to state claims against.
-/

/-! ## A306846.P16175110406160733396

`A319627(36*A036561(n))`
-/

namespace A306846.P16175110406160733396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (36 * A036561 n).toNat

end

end A306846.P16175110406160733396

/-! ## A306846.P12864743544088729702

`gcd(A001316((9*n)²), A135086(n+1))`
-/

namespace A306846.P12864743544088729702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001316 ((9 * n) ^ 2)) (A135086 (n + 1))

end

end A306846.P12864743544088729702

/-! ## A306846.P2398682943648870074

`A319627(A056926(A036561(n)²))`
-/

namespace A306846.P2398682943648870074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (A056926 (A036561 n ^ 2).toNat).toNat

end

end A306846.P2398682943648870074

/-! ## A306846.P1749268721210283281

`gcd(A116588(n), A322134(A105868(n)))`
-/

namespace A306846.P1749268721210283281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A116588 n) (A322134 (A105868 n).toNat)

end

end A306846.P1749268721210283281

/-! ## A306846.P14552001914893824604

`A319627(A036561(n)%A259274(n+2))`
-/

namespace A306846.P14552001914893824604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (Int.tmod (A036561 n) (A259274 (n + 2))).toNat

end

end A306846.P14552001914893824604

/-!
# A306847: a(n) = Sum_{k=0..floor(n/6)} binomial(n,6*k).

The programs for A306847, the canonical program `A306847.P13411803161334900953` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306847 has offset 0).

The definition of A306847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306847.P13411803161334900953

`A290993(n-1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A306847

/-- `A290993(n-1)+a(n-1)` -/
def P13411803161334900953.Spec : Prop :=
  ∀ n, P13411803161334900953.a n = A306847 n

theorem P13411803161334900953.correct : P13411803161334900953.Spec := by
  intro n
  simp only [A306847]

end A306847

/-! ## A306847.P8200155286307511957

`∑[A290993(n)]+1-A290993(n)`
-/

namespace A306847.P8200155286307511957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A290993 n)

end

end A306847.P8200155286307511957

namespace A306847

/-- `∑[A290993(n)]+1-A290993(n)` -/
def P8200155286307511957.Spec : Prop :=
  ∀ n, P8200155286307511957.a n = A306847 n

end A306847

/-! ## A306847.P489140824115163962

`A129339(n+1)-A227430(n+1)`
-/

namespace A306847.P489140824115163962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129339 (n + 1) - A227430 (n + 1)

end

end A306847.P489140824115163962

namespace A306847

/-- `A129339(n+1)-A227430(n+1)` -/
def P489140824115163962.Spec : Prop :=
  ∀ n, P489140824115163962.a n = A306847 n

end A306847

/-! ## A306847.P14115600872900738932

`Δ[Δ[A227430(n)]]`
-/

namespace A306847.P14115600872900738932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227430 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306847.P14115600872900738932

namespace A306847

/-- `Δ[Δ[A227430(n)]]` -/
def P14115600872900738932.Spec : Prop :=
  ∀ n, P14115600872900738932.a n = A306847 n

end A306847

/-! ## A306847.P15522567787731882711

`A119336(n)+Δ[A119336(n)-A129339(n+1)]`
-/

namespace A306847.P15522567787731882711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119336 n - A129339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119336 n + (f1 (n + 1) - f1 n)

end

end A306847.P15522567787731882711

namespace A306847

/-- `A119336(n)+Δ[A119336(n)-A129339(n+1)]` -/
def P15522567787731882711.Spec : Prop :=
  ∀ n, P15522567787731882711.a n = A306847 n

end A306847

/-! ## A306847.P7936732478445857956

`Δ[Δ[A113405(n+1)+A113405(n)-A290993(n)]]`
-/

namespace A306847.P7936732478445857956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (n + 1) + (A113405 n - A290993 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306847.P7936732478445857956

namespace A306847

/-- `Δ[Δ[A113405(n+1)+A113405(n)-A290993(n)]]` -/
def P7936732478445857956.Spec : Prop :=
  ∀ n, P7936732478445857956.a n = A306847 n

end A306847

/-! ## A306847.P18290453878311546581

`Δ[Δ[A024495(n)-A290993(n)]]`
-/

namespace A306847.P18290453878311546581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 n - A290993 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306847.P18290453878311546581

namespace A306847

/-- `Δ[Δ[A024495(n)-A290993(n)]]` -/
def P18290453878311546581.Spec : Prop :=
  ∀ n, P18290453878311546581.a n = A306847 n

end A306847

/-! ## A306847.P5807946004760785623

`Δ[Δ[A129339(n+1)-A119336(n)]]`
-/

namespace A306847.P5807946004760785623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129339 (n + 1) - A119336 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306847.P5807946004760785623

namespace A306847

/-- `Δ[Δ[A129339(n+1)-A119336(n)]]` -/
def P5807946004760785623.Spec : Prop :=
  ∀ n, P5807946004760785623.a n = A306847 n

end A306847

/-!
# A306848: Product of first n odd nonprimes, a(n) = Product_{k=1..n} A071904(k).

The programs for A306848, there is no canonical definition to state claims against.
-/

/-! ## A306848.P6809476866607847632

`∏[comp[∪[p?[2*n+1], 2*n]]]`
-/

namespace A306848.P6809476866607847632
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f5 j = x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A306848.P6809476866607847632

/-! ## A306848.P9331537566934910859

`∏[∩[2*n+1, comp[p?[2*n+1]]]]`
-/

namespace A306848.P9331537566934910859
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f5 (SequenceMachineLib.nth (fun j => (f5 j).Prime) n)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A306848.P9331537566934910859

/-! ## A306848.P5595044081364365487

`∏[A014076(n+1)]`
-/

namespace A306848.P5595044081364365487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A306848.P5595044081364365487

/-! ## A306848.P593495020959946891

`∏[lt[A327420(n), n]]`
-/

namespace A306848.P593495020959946891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A306848.P593495020959946891

/-! ## A306848.P5730472114334877540

`∏[sqrt(A062532(n+1))]`
-/

namespace A306848.P5730472114334877540
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062532 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A306848.P5730472114334877540

/-! ## A306848.P38428404816685100

`∏[record[A128060(n+1)]]`
-/

namespace A306848.P38428404816685100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128060 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A306848.P38428404816685100

/-! ## A306848.P7993005288186740150

`∏[A075065(2*n+1)]`
-/

namespace A306848.P7993005288186740150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075065 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A306848.P7993005288186740150

/-! ## A306848.P10725225878808958209

`a(n-1)*A071904(n)` with `a(0)=1`
-/

namespace A306848.P10725225878808958209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A071904 n

end

end A306848.P10725225878808958209

/-! ## A306848.P6484290806752034027

`∏[record[A005451(2*n+1)]]`
-/

namespace A306848.P6484290806752034027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A306848.P6484290806752034027

/-! ## A306848.P1730866089431671957

`∏[record[A063928(2*n+1)]]`
-/

namespace A306848.P1730866089431671957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063928 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A306848.P1730866089431671957

/-!
# A306852: a(n) = Sum_{k=0..floor(n/7)} binomial(n,7*k).

The programs for A306852, there is no canonical definition to state claims against.
-/

/-! ## A306852.P1638071987881676317

`A290994(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A306852.P1638071987881676317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A290994 (n - 1) + a (n - 1)

end

end A306852.P1638071987881676317

/-! ## A306852.P7189433692532457312

`∑[A290994(A057428(n)+n)]+1`
-/

namespace A306852.P7189433692532457312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290994 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A306852.P7189433692532457312

/-! ## A306852.P13714937909215807162

`∑[A290994(n)]+1-A290994(n)`
-/

namespace A306852.P13714937909215807162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290994 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A290994 n)

end

end A306852.P13714937909215807162

/-! ## A306852.P7734246240342371606

`A306846(eq[6, A025581(n)])`
-/

namespace A306852.P7734246240342371606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306846 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306852.P7734246240342371606

/-! ## A306852.P4407995224261813394

`A306846(eq[7, A004736(n+1)])`
-/

namespace A306852.P4407995224261813394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306846 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306852.P4407995224261813394

/-!
# A306853: Positive integers equal to the permanent of the circulant matrix formed by their decimal digits.

The programs for A306853, there is no canonical definition to state claims against.
-/

/-! ## A306853.P13992497363506627407

`record[∑[(-4)^A130132(n+1)]]`
-/

namespace A306853.P13992497363506627407
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-4 : ℚ) ^ (A130132 (n + 1) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306853.P13992497363506627407

/-! ## A306853.P9392752660673209738

`∑{d}[A049889(C(n, 8)+1), #]+n`
-/

namespace A306853.P9392752660673209738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049889 (Nat.choose n 8 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d + n

end

end A306853.P9392752660673209738

/-! ## A306853.P18208488612856954873

`A276364(Δ[(n-9*floor((n-1)/9))*(10^floor((n+8)/9)-1)/9]²)+n`
-/

namespace A306853.P18208488612856954873
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 9 * ⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℚ) * (((10 : ℚ) ^ (⌊(n + 8 : ℚ) / 9⌋ : ℤ) - 1) / 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276364 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n) ^ 2)).toNat + (n : ℤ)

end

end A306853.P18208488612856954873

/-! ## A306853.P16389379871836274610

`A090109(A331203(n+1))`
-/

namespace A306853.P16389379871836274610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090109 (A331203 (n + 1)).toNat

end

end A306853.P16389379871836274610

/-! ## A306853.P8973307235839208493

`A067347(A038020(n))+n`
-/

namespace A306853.P8973307235839208493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067347 (A038020 n).toNat + (n : ℤ)

end

end A306853.P8973307235839208493

/-!
# A306855: Primes of the form 10^i + 10^j - 1.

The programs for A306855, there is no canonical definition to state claims against.
-/

/-! ## A306855.P17829246106994475730

`∩[A070698(n+1), A142322(n+1)]`
-/

namespace A306855.P17829246106994475730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306855.P17829246106994475730

/-! ## A306855.P5781047563553786217

`p?[A052216(n+1)-1]`
-/

namespace A306855.P5781047563553786217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306855.P5781047563553786217

/-! ## A306855.P1985196225717944498

`p?[A069537(n+1)-1]`
-/

namespace A306855.P1985196225717944498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069537 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306855.P1985196225717944498

/-! ## A306855.P13591438721234231388

`p?[A092595(n+1)-1]`
-/

namespace A306855.P13591438721234231388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092595 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306855.P13591438721234231388

/-! ## A306855.P18388123021000196841

`p?[A356520(n+1)-1]`
-/

namespace A306855.P18388123021000196841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356520 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306855.P18388123021000196841

/-!
# A306857: Expansion of e.g.f. (sec(x) + tan(x))/(2 - exp(x)).

The programs for A306857, there is no canonical definition to state claims against.
-/

/-! ## A306857.P5019312130441365971

`A004001(A357832(n+2)+n)`
-/

namespace A306857.P5019312130441365971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A357832 (n + 2) + (n : ℤ)).toNat

end

end A306857.P5019312130441365971

/-! ## A306857.P17591401979789304790

`or(A000629(n), A335525(A002039(n)))`
-/

namespace A306857.P17591401979789304790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000629 n) (A335525 (A002039 n).toNat)

end

end A306857.P17591401979789304790

/-!
# A306859: a(n) = Sum_{k=0..floor(n/8)} binomial(n,8*k).

The programs for A306859, there is no canonical definition to state claims against.
-/

/-! ## A306859.P1017815517251902120

`∑[A290995(n)]+1-A290995(n)`
-/

namespace A306859.P1017815517251902120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A290995 n)

end

end A306859.P1017815517251902120

/-! ## A306859.P8310949435173246011

`A306846(A000217(n+7)+n)`
-/

namespace A306859.P8310949435173246011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306846 (A000217 (n + 7) + (n : ℤ)).toNat

end

end A306859.P8310949435173246011

/-! ## A306859.P18010165286538128490

`A040001(C(n, 8))+C(n, 8)`
-/

namespace A306859.P18010165286538128490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (Nat.choose n 8) + (Nat.choose n 8 : ℤ)

end

end A306859.P18010165286538128490

/-! ## A306859.P13929654029907961976

`A243743(n+8)+A001221(2^n)`
-/

namespace A306859.P13929654029907961976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243743 (n + 8) + A001221 (2 ^ n)

end

end A306859.P13929654029907961976

/-! ## A306859.P12836857823576826990

`A245092(A194285(n+2)+C(n, 8))`
-/

namespace A306859.P12836857823576826990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A194285 (n + 2) + (Nat.choose n 8 : ℤ)).toNat

end

end A306859.P12836857823576826990

/-!
# A306860: a(n) = Sum_{k=0..floor(n/9)} binomial(n,9*k).

The programs for A306860, there is no canonical definition to state claims against.
-/

/-! ## A306860.P14628110695563546003

`A306846(A052905(n+5)+n+5)`
-/

namespace A306860.P14628110695563546003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306846 (A052905 (n + 5) + (n + 5 : ℤ)).toNat

end

end A306860.P14628110695563546003

/-! ## A306860.P3136863792140830946

`A185284(2*n+1)+A115205(n)`
-/

namespace A306860.P3136863792140830946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * n + 1) + A115205 n

end

end A306860.P3136863792140830946

/-! ## A306860.P11359996702886692401

`A115205(n)+A102683(A052525(n))`
-/

namespace A306860.P11359996702886692401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115205 n + A102683 (A052525 n).toNat

end

end A306860.P11359996702886692401

/-!
# A306861: The concatenation kpk is the number obtained by placing k leading and trailing 1's around the prime p; a(n) is the smallest k such that kpk is prime, where p = prime(n), or -1 if no such k exists.

The programs for A306861, there is no canonical definition to state claims against.
-/

/-! ## A306861.P1386046501344547590

`A272232(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A306861.P1386046501344547590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272232 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A306861.P1386046501344547590

/-! ## A306861.P3055560210315574663

`A272232(Δ[A007504(n)])`
-/

namespace A306861.P3055560210315574663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272232 (f1 (n + 1) - f1 n).toNat

end

end A306861.P3055560210315574663

/-! ## A306861.P3005919703785205579

`A272232(p?[A006370(n)])`
-/

namespace A306861.P3005919703785205579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272232 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A306861.P3005919703785205579

/-! ## A306861.P4500768465683870565

`A272232(p?[A260442(n)])`
-/

namespace A306861.P4500768465683870565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272232 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A306861.P4500768465683870565

/-! ## A306861.P11404125154444461552

`A272232(A000040(n+1))`
-/

namespace A306861.P11404125154444461552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272232 (A000040 (n + 1)).toNat

end

end A306861.P11404125154444461552

/-!
# A306862: A binary sequence with property that k*pal(k)/fac(k) is unbounded, where fac() and pac() are respectively complexity and palindromic complexity.

The programs for A306862, there is no canonical definition to state claims against.
-/

/-! ## A306862.P6620014661646183905

`A008805(2*n+3)%A057079(A285998(n+1))`
-/

namespace A306862.P6620014661646183905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008805 (2 * n + 3)) (A057079 (A285998 (n + 1)).toNat)

end

end A306862.P6620014661646183905

/-! ## A306862.P17929358297109124583

`(∑[n]+1)%A057079(4*A058187(n))`
-/

namespace A306862.P17929358297109124583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) (A057079 (4 * A058187 n).toNat)

end

end A306862.P17929358297109124583

/-! ## A306862.P9148006635356181985

`A299338(n)%A105899(A179436(n+3))`
-/

namespace A306862.P9148006635356181985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299338 n) (A105899 (A179436 (n + 3)).toNat)

end

end A306862.P9148006635356181985

/-! ## A306862.P10758173754435573732

`A010051(xor(A252139(n+1), A280696(n+1)))`
-/

namespace A306862.P10758173754435573732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.xor (A252139 (n + 1)) (A280696 (n + 1))).toNat

end

end A306862.P10758173754435573732

/-! ## A306862.P16486066255498140800

`A285128(or(A001043(n+1), A082290(n)))`
-/

namespace A306862.P16486066255498140800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285128 (Int.lor (A001043 (n + 1)) (A082290 n)).toNat

end

end A306862.P16486066255498140800

/-!
# A306863: a(n) is the number of primes between the n-th and (n+1)-st odd composite numbers.

The programs for A306863, the canonical program `A306863.P15409555806204532107` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306863 has offset 1).

The definition of A306863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306863.P4817507232901044788

`Δ[A008508(n+1)]`
-/

namespace A306863.P4817507232901044788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306863.P4817507232901044788

namespace A306863

/-- `Δ[A008508(n+1)]` -/
def P4817507232901044788.Spec : Prop :=
  ∀ n, P4817507232901044788.a n = A306863 (n + 1)

end A306863

/-! ## A306863.P4341373526603145669

`A144411(n+2)+1`
-/

namespace A306863.P4341373526603145669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144411 (n + 2) + 1

end

end A306863.P4341373526603145669

namespace A306863

/-- `A144411(n+2)+1` -/
def P4341373526603145669.Spec : Prop :=
  ∀ n, P4341373526603145669.a n = A306863 (n + 1)

end A306863

/-! ## A306863.P12350900903512729498

`A196274(n+2)-1`
-/

namespace A306863.P12350900903512729498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196274 (n + 2) - 1

end

end A306863.P12350900903512729498

namespace A306863

/-- `A196274(n+2)-1` -/
def P12350900903512729498.Spec : Prop :=
  ∀ n, P12350900903512729498.a n = A306863 (n + 1)

end A306863

/-! ## A306863.P5688555262063862471

`Δ[A053726(n+1)]-1`
-/

namespace A306863.P5688555262063862471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A306863.P5688555262063862471

namespace A306863

/-- `Δ[A053726(n+1)]-1` -/
def P5688555262063862471.Spec : Prop :=
  ∀ n, P5688555262063862471.a n = A306863 (n + 1)

end A306863

/-! ## A306863.P8309134329792706513

`Δ[A153039(n+1)]-1`
-/

namespace A306863.P8309134329792706513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A306863.P8309134329792706513

namespace A306863

/-- `Δ[A153039(n+1)]-1` -/
def P8309134329792706513.Spec : Prop :=
  ∀ n, P8309134329792706513.a n = A306863 (n + 1)

end A306863

/-! ## A306863.P8961665819314598869

`Δ[A153040(n+1)]-1`
-/

namespace A306863.P8961665819314598869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A306863.P8961665819314598869

namespace A306863

/-- `Δ[A153040(n+1)]-1` -/
def P8961665819314598869.Spec : Prop :=
  ∀ n, P8961665819314598869.a n = A306863 (n + 1)

end A306863

/-! ## A306863.P6591780369967003965

`Δ[A153045(n+1)]-1`
-/

namespace A306863.P6591780369967003965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A306863.P6591780369967003965

namespace A306863

/-- `Δ[A153045(n+1)]-1` -/
def P6591780369967003965.Spec : Prop :=
  ∀ n, P6591780369967003965.a n = A306863 (n + 1)

end A306863

/-! ## A306863.P83283199723214695

`Δ[A153047(n+1)]-1`
-/

namespace A306863.P83283199723214695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A306863.P83283199723214695

namespace A306863

/-- `Δ[A153047(n+1)]-1` -/
def P83283199723214695.Spec : Prop :=
  ∀ n, P83283199723214695.a n = A306863 (n + 1)

end A306863

/-! ## A306863.P15409555806204532107

`Δ[A153052(n+1)]-1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A306863

/-- `Δ[A153052(n+1)]-1` -/
def P15409555806204532107.Spec : Prop :=
  ∀ n, P15409555806204532107.a n = A306863 (n + 1)

theorem P15409555806204532107.correct : P15409555806204532107.Spec := by
  intro n
  simp only [A306863, Nat.add_sub_cancel]

end A306863

/-! ## A306863.P12811290278930503140

`Δ[A153053(n+1)]-1`
-/

namespace A306863.P12811290278930503140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A306863.P12811290278930503140

namespace A306863

/-- `Δ[A153053(n+1)]-1` -/
def P12811290278930503140.Spec : Prop :=
  ∀ n, P12811290278930503140.a n = A306863 (n + 1)

theorem P12811290278930503140.correct : P12811290278930503140.Spec := by
  intro n
  simp only [A306863, Nat.add_sub_cancel, A306863.P12811290278930503140.f1, A306863.P12811290278930503140.a, A306863.P15409555806204532107.f1, A306863.P15409555806204532107.a, A153052, A153052.P215135875194931627.f1, A153052.P215135875194931627.f2, A153052.P215135875194931627.a, A153053, A153053.P11375225491096847210.a, A101264, A101264.P9977125953316836564.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A306863

/-! ## A306863.P18055639690591664800

`Δ[A153238(n+1)]-1`
-/

namespace A306863.P18055639690591664800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A306863.P18055639690591664800

namespace A306863

/-- `Δ[A153238(n+1)]-1` -/
def P18055639690591664800.Spec : Prop :=
  ∀ n, P18055639690591664800.a n = A306863 (n + 1)

theorem P18055639690591664800.correct : P18055639690591664800.Spec := by
  intro n
  simp only [A306863, Nat.add_sub_cancel, A306863.P18055639690591664800.f1, A306863.P18055639690591664800.a, A306863.P15409555806204532107.f1, A306863.P15409555806204532107.a, A153052, A153052.P215135875194931627.f1, A153052.P215135875194931627.f2, A153052.P215135875194931627.a, A153238, A153238.P13831251492164971693.a, A101264, A101264.P9977125953316836564.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A306863

/-! ## A306863.P7710220662424517273

`Δ[A155723(n+1)]-1`
-/

namespace A306863.P7710220662424517273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A306863.P7710220662424517273

namespace A306863

/-- `Δ[A155723(n+1)]-1` -/
def P7710220662424517273.Spec : Prop :=
  ∀ n, P7710220662424517273.a n = A306863 (n + 1)

theorem P7710220662424517273.correct : P7710220662424517273.Spec := by
  intro n
  simp only [A306863, Nat.add_sub_cancel, A306863.P7710220662424517273.f1, A306863.P7710220662424517273.a, A306863.P15409555806204532107.f1, A306863.P15409555806204532107.a, A153052, A153052.P215135875194931627.f1, A153052.P215135875194931627.f2, A153052.P215135875194931627.a, A155723, A155723.P13840957345735942896.a, A101264, A101264.P9977125953316836564.a, A153053, A153053.P11375225491096847210.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A306863

/-! ## A306863.P10886137305932948944

`Δ[A047845(n+2)]-1`
-/

namespace A306863.P10886137305932948944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A306863.P10886137305932948944

namespace A306863

/-- `Δ[A047845(n+2)]-1` -/
def P10886137305932948944.Spec : Prop :=
  ∀ n, P10886137305932948944.a n = A306863 (n + 1)

end A306863

/-! ## A306863.P8474742939581645462

`Δ[A104275(n+2)]-1`
-/

namespace A306863.P8474742939581645462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A306863.P8474742939581645462

namespace A306863

/-- `Δ[A104275(n+2)]-1` -/
def P8474742939581645462.Spec : Prop :=
  ∀ n, P8474742939581645462.a n = A306863 (n + 1)

end A306863

/-! ## A306863.P12573819376263512190

`Δ[A336407(n+1)]-2`
-/

namespace A306863.P12573819376263512190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A306863.P12573819376263512190

namespace A306863

/-- `Δ[A336407(n+1)]-2` -/
def P12573819376263512190.Spec : Prop :=
  ∀ n, P12573819376263512190.a n = A306863 (n + 1)

theorem P12573819376263512190.correct : P12573819376263512190.Spec := by
  intro n
  simp only [A306863, Nat.add_sub_cancel, A306863.P12573819376263512190.f1, A306863.P12573819376263512190.a, A306863.P15409555806204532107.f1, A306863.P15409555806204532107.a, A153052, A153052.P215135875194931627.f1, A153052.P215135875194931627.f2, A153052.P215135875194931627.a, A336407, A336407.P9817670677513642301.a, A101264, A101264.P9977125953316836564.a, A153238, A153238.P13831251492164971693.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A306863

/-! ## A306863.P12694885332879372001

`Δ[A160522(n+1)/2]`
-/

namespace A306863.P12694885332879372001
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160522 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306863.P12694885332879372001

namespace A306863

/-- `Δ[A160522(n+1)/2]` -/
def P12694885332879372001.Spec : Prop :=
  ∀ n, P12694885332879372001.a n = (A306863 (n + 1) : ℚ)

end A306863

/-! ## A306863.P10510335446755128949

`A164510(n+1)/2-1`
-/

namespace A306863.P10510335446755128949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164510 (n + 1) : ℚ) / 2 - 1

end

end A306863.P10510335446755128949

namespace A306863

/-- `A164510(n+1)/2-1` -/
def P10510335446755128949.Spec : Prop :=
  ∀ n, P10510335446755128949.a n = (A306863 (n + 1) : ℚ)

end A306863

/-! ## A306863.P16526157574968256406

`A168141(A396571(n+1))`
-/

namespace A306863.P16526157574968256406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168141 (A396571 (n + 1)).toNat

end

end A306863.P16526157574968256406

namespace A306863

/-- `A168141(A396571(n+1))` -/
def P16526157574968256406.Spec : Prop :=
  ∀ n, P16526157574968256406.a n = A306863 (n + 1)

end A306863

/-! ## A306863.P16254096248130571633

`A153083(n+1)-A155723(n+1)`
-/

namespace A306863.P16254096248130571633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153083 (n + 1) - A155723 (n + 1)

end

end A306863.P16254096248130571633

namespace A306863

/-- `A153083(n+1)-A155723(n+1)` -/
def P16254096248130571633.Spec : Prop :=
  ∀ n, P16254096248130571633.a n = A306863 (n + 1)

end A306863

/-! ## A306863.P8185409003708458085

`A186193(n+1)-A396571(n+1)`
-/

namespace A306863.P8185409003708458085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186193 (n + 1) - A396571 (n + 1)

end

end A306863.P8185409003708458085

namespace A306863

/-- `A186193(n+1)-A396571(n+1)` -/
def P8185409003708458085.Spec : Prop :=
  ∀ n, P8185409003708458085.a n = A306863 (n + 1)

end A306863

/-!
# A306869: Lexicographically earliest sequence of distinct positive terms such that the binary representation of the bitwise-OR of two consecutive terms has exactly one run of consecutive ones.

The programs for A306869, there is no canonical definition to state claims against.
-/

/-! ## A306869.P17647781828513582723

`A175948(A139706(n+1)%p?[A176892(n)])`
-/

namespace A306869.P17647781828513582723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175948 (Int.tmod (A139706 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A306869.P17647781828513582723

/-! ## A306869.P4098669579810157696

`(A000005(2^n)-n)*A175948(A139706(n+1))`
-/

namespace A306869.P4098669579810157696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (2 ^ n) - (n : ℤ)) * A175948 (A139706 (n + 1)).toNat

end

end A306869.P4098669579810157696

/-! ## A306869.P7176359595091729019

`A175948(A139706(n+1))^A001221(A000079(n))`
-/

namespace A306869.P7176359595091729019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175948 (A139706 (n + 1)).toNat : ℚ) ^ (A001221 (A000079 n).toNat : ℤ)

end

end A306869.P7176359595091729019

/-! ## A306869.P380828339419548678

`A267105(A052382(n+1)%A253386(n+1))`
-/

namespace A306869.P380828339419548678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267105 (Int.tmod (A052382 (n + 1)) (A253386 (n + 1))).toNat

end

end A306869.P380828339419548678

/-!
# A306878: Number of 0 < k < n such that n-k and n+k are both nonprimes.

The programs for A306878, there is no canonical definition to state claims against.
-/

/-! ## A306878.P4805081328251921798

`n-A061357(n+1)-A291564(n+1)`
-/

namespace A306878.P4805081328251921798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A061357 (n + 1) - A291564 (n + 1)

end

end A306878.P4805081328251921798

/-! ## A306878.P3774796932797609583

`A302479(2*(n+1))`
-/

namespace A306878.P3774796932797609583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302479 (2 * (n + 1))

end

end A306878.P3774796932797609583

/-! ## A306878.P8729759264508307621

`floor(A076608(2*(n+1))/2)`
-/

namespace A306878.P8729759264508307621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A076608 (2 * (n + 1)) : ℚ) / 2⌋

end

end A306878.P8729759264508307621

/-! ## A306878.P9292376971941610820

`(A358638(2*(n+1))-1)%(n+1)`
-/

namespace A306878.P9292376971941610820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358638 (2 * (n + 1)) - 1) (n + 1 : ℤ)

end

end A306878.P9292376971941610820

/-! ## A306878.P9926769374598118688

`A302479(record[2-xor(1, -n)])%ceil((n+1)²/6)`
-/

namespace A306878.P9926769374598118688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302479 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) ⌈((n + 1) ^ 2 : ℚ) / 6⌉

end

end A306878.P9926769374598118688

/-! ## A306878.P2856304578675881191

`A358638(A103517(n))-1`
-/

namespace A306878.P2856304578675881191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358638 (A103517 n).toNat - 1

end

end A306878.P2856304578675881191

/-! ## A306878.P306495753794341970

`A004526(A076608(2*(n+1)))`
-/

namespace A306878.P306495753794341970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A076608 (2 * (n + 1))).toNat

end

end A306878.P306495753794341970

/-! ## A306878.P1939232531116211461

`A140106(A076608(2*(n+1))+2)`
-/

namespace A306878.P1939232531116211461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A076608 (2 * (n + 1)) + 2).toNat

end

end A306878.P1939232531116211461

/-! ## A306878.P16241817622359135669

`A008619(A076608(2*n+2))-1`
-/

namespace A306878.P16241817622359135669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A076608 (2 * n + 2)).toNat - 1

end

end A306878.P16241817622359135669

/-! ## A306878.P7297992387227077151

`A002265(2*A076608(2*(n+1)))`
-/

namespace A306878.P7297992387227077151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A076608 (2 * (n + 1))).toNat

end

end A306878.P7297992387227077151

/-!
# A306879: 

The programs for A306879, there is no canonical definition to state claims against.
-/

/-! ## A306879.P11750107344199170058

`record[A075040(n+2)]`
-/

namespace A306879.P11750107344199170058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306879.P11750107344199170058

/-!
# A306880: Expansion of e.g.f. (sec(x) + tan(x))/(1 + LambertW(-x)).

The programs for A306880, there is no canonical definition to state claims against.
-/

/-! ## A306880.P15944229461154305077

`A222253(A115416(n))+A115415(n)`
-/

namespace A306880.P15944229461154305077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A115416 n).toNat + A115415 n

end

end A306880.P15944229461154305077

/-! ## A306880.P1549849544492658443

`A032793(A127217(n+1)+A115416(n))`
-/

namespace A306880.P1549849544492658443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (A127217 (n + 1) + A115416 n).toNat

end

end A306880.P1549849544492658443

/-!
# A306881: Expansion of e.g.f. -(sec(x) + tan(x))*LambertW(-x).

The programs for A306881, there is no canonical definition to state claims against.
-/

/-! ## A306881.P4183350246919462188

`n*A109497(A135746(n))`
-/

namespace A306881.P4183350246919462188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A109497 (A135746 n).toNat

end

end A306881.P4183350246919462188

/-! ## A306881.P6615715477021074954

`n*A322567(A006125(n))`
-/

namespace A306881.P6615715477021074954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A322567 (A006125 n).toNat

end

end A306881.P6615715477021074954

/-!
# A306882: Even numbers k such that phi(m) = k^2 has no solution.

The programs for A306882, there is no canonical definition to state claims against.
-/

/-! ## A306882.P18242385186840048446

`eq[1, A355451((n+1)²)]+1`
-/

namespace A306882.P18242385186840048446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355451 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A306882.P18242385186840048446

/-! ## A306882.P10056852539314690999

`eq[A319701(n+1), A322311(A233583(n+1)²)]`
-/

namespace A306882.P10056852539314690999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322311 (A233583 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306882.P10056852539314690999

/-! ## A306882.P2317544276688677750

`eq[A000035(n), A280712(A253909(n))]`
-/

namespace A306882.P2317544276688677750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280712 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306882.P2317544276688677750

/-! ## A306882.P15576381986276697275

`eq[A262680(n), A322310((n+1)²)]+1`
-/

namespace A306882.P15576381986276697275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262680 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322310 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A306882.P15576381986276697275

/-! ## A306882.P9133438469755033422

`eq[A006519(n+1), A322310(A253909(n))]`
-/

namespace A306882.P9133438469755033422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322310 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306882.P9133438469755033422

/-!
# A306886: Number of distinct nonzero values taken by (x1-x2)^2 + (y1-y2)^2 for x1, y1, x2, y2 integers with 0 <= (x1,y1) <= n and -n <= (x2,y2) <= 0.

The programs for A306886, there is no canonical definition to state claims against.
-/

/-! ## A306886.P670528459922664537

`A047800(2*n)-1`
-/

namespace A306886.P670528459922664537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047800 (2 * n) - 1

end

end A306886.P670528459922664537

/-! ## A306886.P4442247388690037054

`record[n%2*A160663(n+1)]`
-/

namespace A306886.P4442247388690037054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A160663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306886.P4442247388690037054

/-! ## A306886.P13206641466534067164

`A023443(A047800(2*n))`
-/

namespace A306886.P13206641466534067164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A047800 (2 * n)).toNat

end

end A306886.P13206641466534067164

/-! ## A306886.P9111465619537288373

`abs(A047800(A005843(n))-1)`
-/

namespace A306886.P9111465619537288373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A047800 (A005843 n).toNat - 1|

end

end A306886.P9111465619537288373

/-! ## A306886.P10600570677658130838

`A301853(A000384(n+1))-1`
-/

namespace A306886.P10600570677658130838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301853 (A000384 (n + 1)).toNat - 1

end

end A306886.P10600570677658130838

/-!
# A306888: Number of inequivalent colorful necklaces.

The programs for A306888, there is no canonical definition to state claims against.
-/

/-! ## A306888.P15252791919520659209

`∑{d}[n+1, A011957(#)]`
-/

namespace A306888.P15252791919520659209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011957 d

end

end A306888.P15252791919520659209

/-! ## A306888.P17066385357070105350

`A327397(n+1)+n%2`
-/

namespace A306888.P17066385357070105350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327397 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A306888.P17066385357070105350

/-! ## A306888.P3577153943158112399

`A327397(n+1)+A000035(n)`
-/

namespace A306888.P3577153943158112399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327397 (n + 1) + A000035 n

end

end A306888.P3577153943158112399

/-! ## A306888.P3212199688950430026

`A327397(n+1)+A131734(n)²`
-/

namespace A306888.P3212199688950430026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327397 (n + 1) + A131734 n ^ 2

end

end A306888.P3212199688950430026

/-! ## A306888.P7768652761973336627

`A327397(n+1)+Δ[A004526(n)]`
-/

namespace A306888.P7768652761973336627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327397 (n + 1) + (f1 (n + 1) - f1 n)

end

end A306888.P7768652761973336627

/-! ## A306888.P17134704874367433304

`A327397(n+1)+Δ[A008619(n)]`
-/

namespace A306888.P17134704874367433304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327397 (n + 1) + (f1 (n + 1) - f1 n)

end

end A306888.P17134704874367433304

/-! ## A306888.P5916279122636885921

`A309673(n+1)-A328130(n+1)`
-/

namespace A306888.P5916279122636885921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309673 (n + 1) - A328130 (n + 1)

end

end A306888.P5916279122636885921

/-! ## A306888.P5542494869430885470

`A327397(n+1)+char[A004446(2*n)]`
-/

namespace A306888.P5542494869430885470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004446 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327397 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A306888.P5542494869430885470

/-! ## A306888.P14627946734721570101

`A327397(n+1)+A252742(A282124(val(n+1, 2))+1)`
-/

namespace A306888.P14627946734721570101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327397 (n + 1) + A252742 (A282124 (SequenceMachineLib.valuation (n + 1) 2) + 1).toNat

end

end A306888.P14627946734721570101

/-!
# A306889: Brazilian primes that are also the greater of a pair of twin primes.

The programs for A306889, there is no canonical definition to state claims against.
-/

/-! ## A306889.P4673902523268976202

`∩[A006512(n+1), A053696(n+1)]`
-/

namespace A306889.P4673902523268976202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306889.P4673902523268976202

/-! ## A306889.P18392176036394768049

`∩[A006512(n+1), A085104(n+1)]`
-/

namespace A306889.P18392176036394768049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306889.P18392176036394768049

/-! ## A306889.P4543562742626920971

`∩[A053696(n+1), A067829(n+1)]`
-/

namespace A306889.P4543562742626920971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306889.P4543562742626920971

/-! ## A306889.P16236889306913197249

`∩[A067829(n+1), A085104(n+1)]`
-/

namespace A306889.P16236889306913197249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306889.P16236889306913197249

/-! ## A306889.P7529430200903051582

`∩[A053696(n+1), A172057(n+1)]`
-/

namespace A306889.P7529430200903051582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306889.P7529430200903051582

/-! ## A306889.P1567068303433454663

`∩[A085104(n+1), A172057(n+1)]`
-/

namespace A306889.P1567068303433454663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306889.P1567068303433454663

/-! ## A306889.P4179879405074570699

`∩[A006512(n+1), A308851(n+1)]`
-/

namespace A306889.P4179879405074570699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306889.P4179879405074570699

/-! ## A306889.P3304773379791876662

`∩[A067829(n+1), A308851(n+1)]`
-/

namespace A306889.P3304773379791876662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306889.P3304773379791876662

/-! ## A306889.P157262904219886436

`∩[A053696(n+1), A339692(n+1)]`
-/

namespace A306889.P157262904219886436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306889.P157262904219886436

/-! ## A306889.P4876540997002292949

`∩[A085104(n+1), A339692(n+1)]`
-/

namespace A306889.P4876540997002292949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306889.P4876540997002292949

/-!
# A306890: a(n) is the number of prime digits used in writing out all primes up to and including the n-th prime.

The programs for A306890, there is no canonical definition to state claims against.
-/

/-! ## A306890.P7240351664894613593

`∑[A109066(n+1)]`
-/

namespace A306890.P7240351664894613593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306890.P7240351664894613593

/-! ## A306890.P4347108601544587700

`∑[A193238(p?[xor(1, n)])]`
-/

namespace A306890.P4347108601544587700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306890.P4347108601544587700

/-! ## A306890.P4874005570597141773

`∑[A193238(p?[n%3+n])]`
-/

namespace A306890.P4874005570597141773
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306890.P4874005570597141773

/-! ## A306890.P12519005184572824356

`∑[A193238(p?[n-(-1)^n])]`
-/

namespace A306890.P12519005184572824356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306890.P12519005184572824356

/-! ## A306890.P3327808895528959113

`∑[A193238(Δ[A007504(n)])]`
-/

namespace A306890.P3327808895528959113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306890.P3327808895528959113

/-! ## A306890.P12118305316680639607

`∑[A193238(A000040(n+1))]`
-/

namespace A306890.P12118305316680639607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306890.P12118305316680639607

/-! ## A306890.P15364284681872097728

`∑[A193238(∑[A054541(n+1)])]`
-/

namespace A306890.P15364284681872097728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306890.P15364284681872097728

/-! ## A306890.P9811980250493671379

`∑[A193238(record[A006530(n+2)])]`
-/

namespace A306890.P9811980250493671379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306890.P9811980250493671379

/-! ## A306890.P14479037448570312255

`∑[A193238(record[A014963(n+2)])]`
-/

namespace A306890.P14479037448570312255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306890.P14479037448570312255

/-! ## A306890.P15804645831220452110

`∑[A193238(record[A020639(n+2)])]`
-/

namespace A306890.P15804645831220452110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306890.P15804645831220452110

/-!
# A306892: Isomorphism classes of connected 2-regular digraphs on n nodes, allowing multiarcs and loops.

The programs for A306892, there is no canonical definition to state claims against.
-/

/-! ## A306892.P15525986239519712170

`A048192(n+1)-A007953(A287482(n+1))`
-/

namespace A306892.P15525986239519712170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048192 (n + 1) - A007953 (A287482 (n + 1)).toNat

end

end A306892.P15525986239519712170

/-! ## A306892.P4649759198561358874

`A225090(A380634(n+1))`
-/

namespace A306892.P4649759198561358874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225090 (A380634 (n + 1)).toNat

end

end A306892.P4649759198561358874

/-! ## A306892.P18034417858771795357

`A195177(∑[∑[A076321(n+1)]])`
-/

namespace A306892.P18034417858771795357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076321 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306892.P18034417858771795357

/-!
# A306893: Number of distinct binary strings in the n-th Fibonacci shuffle set.

The programs for A306893, there is no canonical definition to state claims against.
-/

/-! ## A306893.P16511164016802776259

`A351003(C(ceil(∑[n/2]), 2)+1)`
-/

namespace A306893.P16511164016802776259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351003 (Nat.choose ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat 2 + 1)

end

end A306893.P16511164016802776259

/-! ## A306893.P14424378513596455119

`A347414(A052806(n))`
-/

namespace A306893.P14424378513596455119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347414 (A052806 n).toNat

end

end A306893.P14424378513596455119

/-!
# A306894: Numerator of the irreducible fractions of the form x/y, with x,y primes and x < y, sorted according to increasing k, with k = x + y. Fractions with same k are sorted in order of increasing denominator.

The programs for A306894, there is no canonical definition to state claims against.
-/

/-! ## A306894.P13237392827955618774

`p?[A025581(eq[3, A286245(n+1)])]`
-/

namespace A306894.P13237392827955618774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286245 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306894.P13237392827955618774

/-! ## A306894.P3534044452398630326

`p?[A249728(n+1)-A176383(n+2)]`
-/

namespace A306894.P3534044452398630326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (n + 1) - A176383 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306894.P3534044452398630326

/-! ## A306894.P1023243498075574099

`p?[A278818(n)-A000217(A126571(n+1))]`
-/

namespace A306894.P1023243498075574099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278818 n - A000217 (A126571 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306894.P1023243498075574099

/-! ## A306894.P9136877831636363334

`A243624(n+1)-p?[A154721(A004201(n+1))]`
-/

namespace A306894.P9136877831636363334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154721 (A004201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243624 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306894.P9136877831636363334

/-! ## A306894.P1264285600652404692

`A243624(n+1)-p?[A154720(A061885(n)+2)]`
-/

namespace A306894.P1264285600652404692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154720 (A061885 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243624 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306894.P1264285600652404692

/-! ## A306894.P8513270675610688357

`A243624(n+1)-p?[A154720(A004201(n+1)+1)]`
-/

namespace A306894.P8513270675610688357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154720 (A004201 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243624 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306894.P8513270675610688357

/-! ## A306894.P17350293779528584428

`A243624(n+1)-p?[A154720(A063657(n+1)+1)]`
-/

namespace A306894.P17350293779528584428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154720 (A063657 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243624 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306894.P17350293779528584428

/-! ## A306894.P13015574744956326796

`A243624(n+1)-p?[A154721(A078358(2*n+1))]`
-/

namespace A306894.P13015574744956326796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154721 (A078358 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243624 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306894.P13015574744956326796

/-! ## A306894.P3502977725045192988

`A243624(n+1)-p?[A118175(n)*A154721(n+1)]`
-/

namespace A306894.P3502977725045192988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n * A154721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243624 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306894.P3502977725045192988

/-! ## A306894.P14427842264291554448

`A243624(n+1)-A307701(n+1)`
-/

namespace A306894.P14427842264291554448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243624 (n + 1) - A307701 (n + 1)

end

end A306894.P14427842264291554448

/-!
# A306896: a(n) = Sum_{d|n} (2^d + 2*(-1)^d)*phi(n/d).

The programs for A306896, the canonical program `A306896.P14191396921043126274` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306896 has offset 1).

The definition of A306896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306896.P14191396921043126274

`∑{d}[n+1, (2^#+2*(-1)^#)*A000010((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A306896

/-- `∑{d}[n+1, (2^#+2*(-1)^#)*A000010((n+1)/#)]` -/
def P14191396921043126274.Spec : Prop :=
  ∀ n, P14191396921043126274.a n = A306896 (n + 1)

theorem P14191396921043126274.correct : P14191396921043126274.Spec := by
  intro n
  simp only [A306896, Nat.add_sub_cancel]

end A306896

/-! ## A306896.P8697498458677900773

`6*A306897(n+1)`
-/

namespace A306896.P8697498458677900773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A306897 (n + 1)

end

end A306896.P8697498458677900773

namespace A306896

/-- `6*A306897(n+1)` -/
def P8697498458677900773.Spec : Prop :=
  ∀ n, P8697498458677900773.a n = A306896 (n + 1)

end A306896

/-! ## A306896.P10951360142996387186

`A087156(n+1)*A106365(n+1)`
-/

namespace A306896.P10951360142996387186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) * A106365 (n + 1)

end

end A306896.P10951360142996387186

namespace A306896

/-- `A087156(n+1)*A106365(n+1)` -/
def P10951360142996387186.Spec : Prop :=
  ∀ n, P10951360142996387186.a n = A306896 (n + 1)

end A306896

/-! ## A306896.P13133142356480581623

`(A057427(n)+n)*A106365(n+1)`
-/

namespace A306896.P13133142356480581623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + (n : ℤ)) * A106365 (n + 1)

end

end A306896.P13133142356480581623

namespace A306896

/-- `(A057427(n)+n)*A106365(n+1)` -/
def P13133142356480581623.Spec : Prop :=
  ∀ n, P13133142356480581623.a n = A306896 (n + 1)

end A306896

/-! ## A306896.P1446490085044688091

`2*(A034738(n+1)-A193356(n+1))`
-/

namespace A306896.P1446490085044688091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A034738 (n + 1) - A193356 (n + 1))

end

end A306896.P1446490085044688091

namespace A306896

/-- `2*(A034738(n+1)-A193356(n+1))` -/
def P1446490085044688091.Spec : Prop :=
  ∀ n, P1446490085044688091.a n = A306896 (n + 1)

end A306896

/-! ## A306896.P521242544410205631

`∑{d}[n+1, A000010(#)*A092297((n+1)/#)]`
-/

namespace A306896.P521242544410205631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A092297 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306896.P521242544410205631

namespace A306896

/-- `∑{d}[n+1, A000010(#)*A092297((n+1)/#)]` -/
def P521242544410205631.Spec : Prop :=
  ∀ n, P521242544410205631.a n = A306896 (n + 1)

end A306896

/-! ## A306896.P12730802800486109099

`∑{d}[n+1, A014113(#-1)*A200905((n+1)/#)]`
-/

namespace A306896.P12730802800486109099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A014113 (d - 1) * A200905 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306896.P12730802800486109099

namespace A306896

/-- `∑{d}[n+1, A014113(#-1)*A200905((n+1)/#)]` -/
def P12730802800486109099.Spec : Prop :=
  ∀ n, P12730802800486109099.a n = A306896 (n + 1)

end A306896

/-! ## A306896.P13919023461899165111

`6*∑{d}[n+1, A000010(#)*A001045((n+1)/#-1)]`
-/

namespace A306896.P13919023461899165111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ d ∈ Nat.divisors (f1 n), A000010 d * A001045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat)

end

end A306896.P13919023461899165111

namespace A306896

/-- `6*∑{d}[n+1, A000010(#)*A001045((n+1)/#-1)]` -/
def P13919023461899165111.Spec : Prop :=
  ∀ n, P13919023461899165111.a n = A306896 (n + 1)

end A306896

/-! ## A306896.P15236713629821624542

`A053635(n+1)-A005843(A193356(n+1))`
-/

namespace A306896.P15236713629821624542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053635 (n + 1) - A005843 (A193356 (n + 1)).toNat

end

end A306896.P15236713629821624542

namespace A306896

/-- `A053635(n+1)-A005843(A193356(n+1))` -/
def P15236713629821624542.Spec : Prop :=
  ∀ n, P15236713629821624542.a n = A306896 (n + 1)

end A306896

/-!
# A306897: a(n) = A306896(n)/6.

The programs for A306897, the canonical program `A306897.P7907252615614501728` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306897 has offset 1).

The definition of A306897 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306897.P7907252615614501728

`A306896(n+1)/6`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A306897

/-- `A306896(n+1)/6` -/
def P7907252615614501728.Spec : Prop :=
  ∀ n, P7907252615614501728.a n = (A306897 (n + 1) : ℚ)

end A306897

/-! ## A306897.P8470180640980555208

`A087156(n+1)/6*A106365(n+1)`
-/

namespace A306897.P8470180640980555208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087156 (n + 1) : ℚ) / 6 * (A106365 (n + 1) : ℚ)

end

end A306897.P8470180640980555208

namespace A306897

/-- `A087156(n+1)/6*A106365(n+1)` -/
def P8470180640980555208.Spec : Prop :=
  ∀ n, P8470180640980555208.a n = (A306897 (n + 1) : ℚ)

end A306897

/-! ## A306897.P9954911331235746953

`∑{d}[n+1, A000010(#)*A001045((n+1)/#-1)]`
-/

namespace A306897.P9954911331235746953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A001045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A306897.P9954911331235746953

namespace A306897

/-- `∑{d}[n+1, A000010(#)*A001045((n+1)/#-1)]` -/
def P9954911331235746953.Spec : Prop :=
  ∀ n, P9954911331235746953.a n = A306897 (n + 1)

end A306897

/-! ## A306897.P15566131367454491452

`(A034738(n+1)-A193356(n+1))/3`
-/

namespace A306897.P15566131367454491452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034738 (n + 1) - A193356 (n + 1) : ℚ) / 3

end

end A306897.P15566131367454491452

namespace A306897

/-- `(A034738(n+1)-A193356(n+1))/3` -/
def P15566131367454491452.Spec : Prop :=
  ∀ n, P15566131367454491452.a n = (A306897 (n + 1) : ℚ)

end A306897

/-! ## A306897.P667058371101214806

`∑{d}[n+1, A000010(#)*A092297((n+1)/#)]/6`
-/

namespace A306897.P667058371101214806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A000010 d * A092297 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ) / 6

end

end A306897.P667058371101214806

namespace A306897

/-- `∑{d}[n+1, A000010(#)*A092297((n+1)/#)]/6` -/
def P667058371101214806.Spec : Prop :=
  ∀ n, P667058371101214806.a n = (A306897 (n + 1) : ℚ)

end A306897

/-!
# A306898: a(n) = Sum_{d|n} 2^d*phi(2*n/d).

The programs for A306898, the canonical program `A306898.P15422346227010139587` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306898 has offset 1).

The definition of A306898 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000013, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A306898.P15422346227010139587

`2*(n+1)*A000013(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A306898

/-- `2*(n+1)*A000013(n+1)` -/
def P15422346227010139587.Spec : Prop :=
  ∀ n, P15422346227010139587.a n = A306898 (n + 1)

theorem P15422346227010139587.correct : P15422346227010139587.Spec := by
  intro n
  simp only [A306898, Nat.add_sub_cancel]

end A306898

/-! ## A306898.P13111982728649611351

`∑{d}[n+1, 2^#*A000010(2*(n+1)/#)]`
-/

namespace A306898.P13111982728649611351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 ^ d : ℤ) * A000010 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (d : ℚ))).toNat

end

end A306898.P13111982728649611351

namespace A306898

/-- `∑{d}[n+1, 2^#*A000010(2*(n+1)/#)]` -/
def P13111982728649611351.Spec : Prop :=
  ∀ n, P13111982728649611351.a n = A306898 (n + 1)

end A306898

/-! ## A306898.P16795338978124126407

`2*A306905(n+1)`
-/

namespace A306898.P16795338978124126407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A306905 (n + 1)

end

end A306898.P16795338978124126407

namespace A306898

/-- `2*A306905(n+1)` -/
def P16795338978124126407.Spec : Prop :=
  ∀ n, P16795338978124126407.a n = A306898 (n + 1)

theorem P16795338978124126407.correct : P16795338978124126407.Spec := by
  intro n
  simp only [A306898, Nat.add_sub_cancel, A306898.P16795338978124126407.a, A306898.P15422346227010139587.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A306905, A306905.P16718704859846573319.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A056295, A056295.P9438402425658344231.a, A000016, A000016.P8500875009608658723.a, A008965, A008965.P16924218572130557635.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306898

/-! ## A306898.P11055758519885249940

`(2*A056295(n+1)+2)*(n+1)`
-/

namespace A306898.P11055758519885249940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A056295 (n + 1) + 2) * (n + 1 : ℤ)

end

end A306898.P11055758519885249940

namespace A306898

/-- `(2*A056295(n+1)+2)*(n+1)` -/
def P11055758519885249940.Spec : Prop :=
  ∀ n, P11055758519885249940.a n = A306898 (n + 1)

end A306898

/-! ## A306898.P13797825409787643513

`∑{d}[n+1, #*A045663((n+1)/#)]`
-/

namespace A306898.P13797825409787643513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A045663 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306898.P13797825409787643513

namespace A306898

/-- `∑{d}[n+1, #*A045663((n+1)/#)]` -/
def P13797825409787643513.Spec : Prop :=
  ∀ n, P13797825409787643513.a n = A306898 (n + 1)

end A306898

/-! ## A306898.P15458968171512073566

`A000013(n+1)*A005843(n+1)`
-/

namespace A306898.P15458968171512073566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (n + 1) * A005843 (n + 1)

end

end A306898.P15458968171512073566

namespace A306898

/-- `A000013(n+1)*A005843(n+1)` -/
def P15458968171512073566.Spec : Prop :=
  ∀ n, P15458968171512073566.a n = A306898 (n + 1)

theorem P15458968171512073566.correct : P15458968171512073566.Spec := by
  intro n
  simp only [A306898, Nat.add_sub_cancel, A306898.P15458968171512073566.a, A306898.P15422346227010139587.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A005843, A005843.P3167286115683555970.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A056295, A056295.P9438402425658344231.a, A000016, A000016.P8500875009608658723.a, A008965, A008965.P16924218572130557635.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306898

/-! ## A306898.P8159862033566146639

`∑{d}[n+1, A174478(#)*A326938((n+1)/#)]`
-/

namespace A306898.P8159862033566146639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174478 d * A326938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306898.P8159862033566146639

namespace A306898

/-- `∑{d}[n+1, A174478(#)*A326938((n+1)/#)]` -/
def P8159862033566146639.Spec : Prop :=
  ∀ n, P8159862033566146639.a n = A306898 (n + 1)

end A306898

/-! ## A306898.P5288591322025713526

`A053635(n+1)+A053635(n+1)-A053636(n+1)`
-/

namespace A306898.P5288591322025713526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053635 (n + 1) + (A053635 (n + 1) - A053636 (n + 1))

end

end A306898.P5288591322025713526

namespace A306898

/-- `A053635(n+1)+A053635(n+1)-A053636(n+1)` -/
def P5288591322025713526.Spec : Prop :=
  ∀ n, P5288591322025713526.a n = A306898 (n + 1)

end A306898

/-! ## A306898.P6547573368750803100

`A160619(n+1)-A053636(n+1)`
-/

namespace A306898.P6547573368750803100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160619 (n + 1) - A053636 (n + 1)

end

end A306898.P6547573368750803100

namespace A306898

/-- `A160619(n+1)-A053636(n+1)` -/
def P6547573368750803100.Spec : Prop :=
  ∀ n, P6547573368750803100.a n = A306898 (n + 1)

end A306898

/-! ## A306898.P11927565559853376382

`2*A053635(n+1)-A053636(n+1)`
-/

namespace A306898.P11927565559853376382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053635 (n + 1) - A053636 (n + 1)

end

end A306898.P11927565559853376382

namespace A306898

/-- `2*A053635(n+1)-A053636(n+1)` -/
def P11927565559853376382.Spec : Prop :=
  ∀ n, P11927565559853376382.a n = A306898 (n + 1)

end A306898

/-!
# A306899: a(n) = Sum_{d|n} (2^d - (-1)^d)*phi(3*n/d).

The programs for A306899, the canonical program `A306899.P6142850787279588073` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306899 has offset 1).

The definition of A306899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306899.P6142850787279588073

`∑{d}[n+1, (2^#-(-1)^#)*A000010(3*(n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A306899

/-- `∑{d}[n+1, (2^#-(-1)^#)*A000010(3*(n+1)/#)]` -/
def P6142850787279588073.Spec : Prop :=
  ∀ n, P6142850787279588073.a n = A306899 (n + 1)

theorem P6142850787279588073.correct : P6142850787279588073.Spec := by
  intro n
  simp only [A306899, Nat.add_sub_cancel]

end A306899

/-! ## A306899.P11357815833030982051

`6*A306906(n+1)`
-/

namespace A306899.P11357815833030982051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A306906 (n + 1)

end

end A306899.P11357815833030982051

namespace A306899

/-- `6*A306906(n+1)` -/
def P11357815833030982051.Spec : Prop :=
  ∀ n, P11357815833030982051.a n = A306899 (n + 1)

end A306899

/-! ## A306899.P4928296310160165284

`A008458(A306906(n+1))`
-/

namespace A306899.P4928296310160165284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A306906 (n + 1)).toNat

end

end A306899.P4928296310160165284

namespace A306899

/-- `A008458(A306906(n+1))` -/
def P4928296310160165284.Spec : Prop :=
  ∀ n, P4928296310160165284.a n = A306899 (n + 1)

end A306899

