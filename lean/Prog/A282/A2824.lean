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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
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

/-!
# A282400: Primes of the form n^2*2^n + 1.

The programs for A282400, there is no canonical definition to state claims against.
-/

/-! ## A282400.P4596626660263336725

`A248917(A058780(n+1))`
-/

namespace A282400.P4596626660263336725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248917 (A058780 (n + 1)).toNat

end

end A282400.P4596626660263336725

/-! ## A282400.P11456659505029957701

`A069291(n+1)+A007758(A058780(n+1))`
-/

namespace A282400.P11456659505029957701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069291 (n + 1) + A007758 (A058780 (n + 1)).toNat

end

end A282400.P11456659505029957701

/-! ## A282400.P7981122295057327159

`or(A007758(A058780(n+1)), A057078(3*n))`
-/

namespace A282400.P7981122295057327159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007758 (A058780 (n + 1)).toNat) (A057078 (3 * n))

end

end A282400.P7981122295057327159

/-! ## A282400.P7206552105707933194

`A057078(3*(n+1))+A007758(A058780(n+1))`
-/

namespace A282400.P7206552105707933194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (3 * (n + 1)) + A007758 (A058780 (n + 1)).toNat

end

end A282400.P7206552105707933194

/-!
# A282408: Numbers k for which the number of odd members and the number of even members in the Collatz (3x+1) trajectory are both a perfect square.

The programs for A282408, there is no canonical definition to state claims against.
-/

/-! ## A282408.P16584007424670400299

`∑[A034886(A022167(2*n)²)]`
-/

namespace A282408.P16584007424670400299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (A022167 (2 * n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282408.P16584007424670400299

/-! ## A282408.P1643853179620618973

`∑[A266769(A014413(n+1)!)]`
-/

namespace A282408.P1643853179620618973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 (Nat.factorial (A014413 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282408.P1643853179620618973

/-!
# A282410: a(n) = binomial(2*p-1, p-1) modulo p^5, where p = prime(n).

The programs for A282410, there is no canonical definition to state claims against.
-/

/-! ## A282410.P8542982024390585964

`A001700(A006093(n+1))%A050997(n+1)`
-/

namespace A282410.P8542982024390585964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001700 (A006093 (n + 1)).toNat) (A050997 (n + 1))

end

end A282410.P8542982024390585964

/-! ## A282410.P7129741277860759098

`A088218(A095320(n+1))%A050997(n+1)`
-/

namespace A282410.P7129741277860759098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088218 (A095320 (n + 1)).toNat) (A050997 (n + 1))

end

end A282410.P7129741277860759098

/-! ## A282410.P11798610884476055239

`A088218(A216883(n+1))%A050997(n+1)`
-/

namespace A282410.P11798610884476055239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088218 (A216883 (n + 1)).toNat) (A050997 (n + 1))

end

end A282410.P11798610884476055239

/-! ## A282410.P7162663872638732622

`A088218(A216884(n+1))%A050997(n+1)`
-/

namespace A282410.P7162663872638732622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088218 (A216884 (n + 1)).toNat) (A050997 (n + 1))

end

end A282410.P7162663872638732622

/-! ## A282410.P677888679758038867

`A099908(A001248(n+1))%A050997(n+1)`
-/

namespace A282410.P677888679758038867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099908 (A001248 (n + 1)).toNat) (A050997 (n + 1))

end

end A282410.P677888679758038867

/-!
# A282411: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 467", based on the 5-celled von Neumann neighborhood.

The programs for A282411, the canonical program `A282411.P10088010066774626228` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282411 has offset 0).

The definition of A282411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282411.P8718449642014675510

`A279118(n)+char[1]`
-/

namespace A282411.P8718449642014675510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279118 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A282411.P8718449642014675510

namespace A282411

/-- `A279118(n)+char[1]` -/
def P8718449642014675510.Spec : Prop :=
  ∀ n, P8718449642014675510.a n = A282411 n

end A282411

/-! ## A282411.P16276997405125596855

`A279118(n-char[1])`
-/

namespace A282411.P16276997405125596855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279118 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A282411.P16276997405125596855

namespace A282411

/-- `A279118(n-char[1])` -/
def P16276997405125596855.Spec : Prop :=
  ∀ n, P16276997405125596855.a n = A282411 n

end A282411

/-! ## A282411.P3604066524489034175

`A282412(n-char[1])`
-/

namespace A282411.P3604066524489034175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282412 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A282411.P3604066524489034175

namespace A282411

/-- `A282412(n-char[1])` -/
def P3604066524489034175.Spec : Prop :=
  ∀ n, P3604066524489034175.a n = A282411 n

end A282411

/-! ## A282411.P14778523577893787017

`floor(A290681(n)^(-1)^n)`
-/

namespace A282411.P14778523577893787017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A290681 n : ℚ) ^ ((-1) ^ n : ℤ)⌋

end

end A282411.P14778523577893787017

namespace A282411

/-- `floor(A290681(n)^(-1)^n)` -/
def P14778523577893787017.Spec : Prop :=
  ∀ n, P14778523577893787017.a n = A282411 n

end A282411

/-! ## A282411.P10088010066774626228

`∏{d}[1-n, #%2]*A002275(or(1, n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A282411

/-- `∏{d}[1-n, #%2]*A002275(or(1, n))` -/
def P10088010066774626228.Spec : Prop :=
  ∀ n, P10088010066774626228.a n = A282411 n

theorem P10088010066774626228.correct : P10088010066774626228.Spec := by
  intro n
  simp only [A282411]

end A282411

/-! ## A282411.P12517352173255119980

`A002275(C((n+1)/and(n+1, -(n+1)), n))`
-/

namespace A282411.P12517352173255119980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat n)

end

end A282411.P12517352173255119980

namespace A282411

/-- `A002275(C((n+1)/and(n+1, -(n+1)), n))` -/
def P12517352173255119980.Spec : Prop :=
  ∀ n, P12517352173255119980.a n = A282411 n

end A282411

/-! ## A282411.P6997896442463872132

`A279118(n)^A057979(n)`
-/

namespace A282411.P6997896442463872132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279118 n : ℚ) ^ (A057979 n : ℤ)

end

end A282411.P6997896442463872132

namespace A282411

/-- `A279118(n)^A057979(n)` -/
def P6997896442463872132.Spec : Prop :=
  ∀ n, P6997896442463872132.a n = (A282411 n : ℚ)

end A282411

/-! ## A282411.P16669629510606407599

`A282412(n)^A057979(n)`
-/

namespace A282411.P16669629510606407599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282412 n : ℚ) ^ (A057979 n : ℤ)

end

end A282411.P16669629510606407599

namespace A282411

/-- `A282412(n)^A057979(n)` -/
def P16669629510606407599.Spec : Prop :=
  ∀ n, P16669629510606407599.a n = (A282411 n : ℚ)

end A282411

/-! ## A282411.P15749913749969283116

`floor(ratio[A000042(A093178(n))])`
-/

namespace A282411.P15749913749969283116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A282411.P15749913749969283116

namespace A282411

/-- `floor(ratio[A000042(A093178(n))])` -/
def P15749913749969283116.Spec : Prop :=
  ∀ n, P15749913749969283116.a n = A282411 n

end A282411

/-! ## A282411.P6332184549589846125

`A094026(floor(ratio[A266072(n)]))`
-/

namespace A282411.P6332184549589846125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋.toNat

end

end A282411.P6332184549589846125

namespace A282411

/-- `A094026(floor(ratio[A266072(n)]))` -/
def P6332184549589846125.Spec : Prop :=
  ∀ n, P6332184549589846125.a n = A282411 n

end A282411

/-! ## A282411.P14406360465684223245

`char[A286815(n)]*A286828(n)`
-/

namespace A282411.P14406360465684223245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A286828 n

end

end A282411.P14406360465684223245

namespace A282411

/-- `char[A286815(n)]*A286828(n)` -/
def P14406360465684223245.Spec : Prop :=
  ∀ n, P14406360465684223245.a n = A282411 n

end A282411

/-! ## A282411.P12642899771773569924

`or(char[A000302(n)], A279118(n))`
-/

namespace A282411.P12642899771773569924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A279118 n)

end

end A282411.P12642899771773569924

namespace A282411

/-- `or(char[A000302(n)], A279118(n))` -/
def P12642899771773569924.Spec : Prop :=
  ∀ n, P12642899771773569924.a n = A282411 n

end A282411

/-! ## A282411.P10747467811902493380

`or(char[A282412(n)], A279118(n))`
-/

namespace A282411.P10747467811902493380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282412 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A279118 n)

end

end A282411.P10747467811902493380

namespace A282411

/-- `or(char[A282412(n)], A279118(n))` -/
def P10747467811902493380.Spec : Prop :=
  ∀ n, P10747467811902493380.a n = A282411 n

end A282411

/-! ## A282411.P7348021081966647191

`lcm(2, A282652(n))-A282652(n)`
-/

namespace A282411.P7348021081966647191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A282652 n) : ℤ) - A282652 n

end

end A282411.P7348021081966647191

namespace A282411

/-- `lcm(2, A282652(n))-A282652(n)` -/
def P7348021081966647191.Spec : Prop :=
  ∀ n, P7348021081966647191.a n = A282411 n

end A282411

/-! ## A282411.P6860286907476577927

`A002275(C(A000265(n+1), n))`
-/

namespace A282411.P6860286907476577927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (Nat.choose (A000265 (n + 1)).toNat n)

end

end A282411.P6860286907476577927

namespace A282411

/-- `A002275(C(A000265(n+1), n))` -/
def P6860286907476577927.Spec : Prop :=
  ∀ n, P6860286907476577927.a n = A282411 n

end A282411

/-! ## A282411.P8511394020859425907

`and(1, A282451(n))*A282451(n)`
-/

namespace A282411.P8511394020859425907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A282451 n) * A282451 n

end

end A282411.P8511394020859425907

namespace A282411

/-- `and(1, A282451(n))*A282451(n)` -/
def P8511394020859425907.Spec : Prop :=
  ∀ n, P8511394020859425907.a n = A282411 n

end A282411

/-! ## A282411.P8102339016358253878

`and(1, A282800(n))*A282800(n)`
-/

namespace A282411.P8102339016358253878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A282800 n) * A282800 n

end

end A282411.P8102339016358253878

namespace A282411

/-- `and(1, A282800(n))*A282800(n)` -/
def P8102339016358253878.Spec : Prop :=
  ∀ n, P8102339016358253878.a n = A282411 n

end A282411

/-! ## A282411.P540196513130919297

`A287191(∑{digits}[A287190(n+1), #])`
-/

namespace A282411.P540196513130919297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287191 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A282411.P540196513130919297

namespace A282411

/-- `A287191(∑{digits}[A287190(n+1), #])` -/
def P540196513130919297.Spec : Prop :=
  ∀ n, P540196513130919297.a n = A282411 n

end A282411

/-! ## A282411.P9926421299558705881

`A000042(A000265(n+1))*A266591(n)`
-/

namespace A282411.P9926421299558705881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A000265 (n + 1)).toNat * A266591 n

end

end A282411.P9926421299558705881

namespace A282411

/-- `A000042(A000265(n+1))*A266591(n)` -/
def P9926421299558705881.Spec : Prop :=
  ∀ n, P9926421299558705881.a n = A282411 n

end A282411

/-!
# A282412: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 467", based on the 5-celled von Neumann neighborhood.

The programs for A282412, the canonical program `A282412.P8185400050348961788` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282412 has offset 0).

The definition of A282412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282412.P8185400050348961788

`lcm(A282411(n), A284352(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A282412

/-- `lcm(A282411(n), A284352(n))` -/
def P8185400050348961788.Spec : Prop :=
  ∀ n, (P8185400050348961788.a n : ℤ) = A282412 n

theorem P8185400050348961788.correct : P8185400050348961788.Spec := by
  intro n
  simp only [A282412]

end A282412

/-! ## A282412.P3647347137755410173

`char[A286815(n)]*A286827(n)`
-/

namespace A282412.P3647347137755410173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A286827 n

end

end A282412.P3647347137755410173

namespace A282412

/-- `char[A286815(n)]*A286827(n)` -/
def P3647347137755410173.Spec : Prop :=
  ∀ n, P3647347137755410173.a n = A282412 n

end A282412

/-! ## A282412.P4030399969969284439

`char[A286815(n)]*A286859(n)`
-/

namespace A282412.P4030399969969284439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A286859 n

end

end A282412.P4030399969969284439

namespace A282412

/-- `char[A286815(n)]*A286859(n)` -/
def P4030399969969284439.Spec : Prop :=
  ∀ n, P4030399969969284439.a n = A282412 n

end A282412

/-! ## A282412.P17670984715354466100

`and(1, A282451(n))*A282452(n)`
-/

namespace A282412.P17670984715354466100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A282451 n) * A282452 n

end

end A282412.P17670984715354466100

namespace A282412

/-- `and(1, A282451(n))*A282452(n)` -/
def P17670984715354466100.Spec : Prop :=
  ∀ n, P17670984715354466100.a n = A282412 n

end A282412

/-! ## A282412.P9394455392134281881

`A010052(A002620(n))*A290680(n)`
-/

namespace A282412.P9394455392134281881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A002620 n).toNat * A290680 n

end

end A282412.P9394455392134281881

namespace A282412

/-- `A010052(A002620(n))*A290680(n)` -/
def P9394455392134281881.Spec : Prop :=
  ∀ n, P9394455392134281881.a n = A282412 n

end A282412

/-! ## A282412.P8441245963854699317

`A290232(n)%A283352(A141310(n))`
-/

namespace A282412.P8441245963854699317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290232 n) (A283352 (A141310 n).toNat)

end

end A282412.P8441245963854699317

namespace A282412

/-- `A290232(n)%A283352(A141310(n))` -/
def P8441245963854699317.Spec : Prop :=
  ∀ n, P8441245963854699317.a n = A282412 n

end A282412

/-! ## A282412.P458925017878026850

`A139709(A001511(n+1))*A282411(n)`
-/

namespace A282412.P458925017878026850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139709 (A001511 (n + 1)).toNat * A282411 n

end

end A282412.P458925017878026850

namespace A282412

/-- `A139709(A001511(n+1))*A282411(n)` -/
def P458925017878026850.Spec : Prop :=
  ∀ n, P458925017878026850.a n = A282412 n

end A282412

/-! ## A282412.P10009725286752918357

`A212914(C(n+2, and(1, n)))*A282411(n)`
-/

namespace A282412.P10009725286752918357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212914 (Nat.choose (n + 2) (Nat.land 1 n)) * A282411 n

end

end A282412.P10009725286752918357

namespace A282412

/-- `A212914(C(n+2, and(1, n)))*A282411(n)` -/
def P10009725286752918357.Spec : Prop :=
  ∀ n, P10009725286752918357.a n = A282412 n

end A282412

/-!
# A282413: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 467", based on the 5-celled von Neumann neighborhood.

The programs for A282413, the canonical program `A282413.P9166255357431083212` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282413 has offset 0).

The definition of A282413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282413.P4748500429362731034

`char[1]+gcd(2, n)^(n+1)-1`
-/

namespace A282413.P4748500429362731034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((Nat.gcd 2 n ^ (n + 1) : ℤ) - 1)

end

end A282413.P4748500429362731034

namespace A282413

/-- `char[1]+gcd(2, n)^(n+1)-1` -/
def P4748500429362731034.Spec : Prop :=
  ∀ n, P4748500429362731034.a n = A282413 n

end A282413

/-! ## A282413.P17726046742436541727

`char[1]+∑[(-1)^n]*∑[2^n]`
-/

namespace A282413.P17726046742436541727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f2 j) * ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A282413.P17726046742436541727

namespace A282413

/-- `char[1]+∑[(-1)^n]*∑[2^n]` -/
def P17726046742436541727.Spec : Prop :=
  ∀ n, P17726046742436541727.a n = A282413 n

end A282413

/-! ## A282413.P2474838972067833485

`A282414(n-char[1])`
-/

namespace A282413.P2474838972067833485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282414 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A282413.P2474838972067833485

namespace A282413

/-- `A282414(n-char[1])` -/
def P2474838972067833485.Spec : Prop :=
  ∀ n, P2474838972067833485.a n = A282413 n

end A282413

/-! ## A282413.P9166255357431083212

`A000225(C((n+1)/and(n+1, -(n+1)), n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A282413

/-- `A000225(C((n+1)/and(n+1, -(n+1)), n))` -/
def P9166255357431083212.Spec : Prop :=
  ∀ n, P9166255357431083212.a n = A282413 n

theorem P9166255357431083212.correct : P9166255357431083212.Spec := by
  intro n
  simp only [A282413]

end A282413

/-! ## A282413.P8038529394747123978

`A000225(C(2*(n+1)/(xor(n, n+1)+1), n))`
-/

namespace A282413.P8038529394747123978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (Nat.choose (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat n)

end

end A282413.P8038529394747123978

namespace A282413

/-- `A000225(C(2*(n+1)/(xor(n, n+1)+1), n))` -/
def P8038529394747123978.Spec : Prop :=
  ∀ n, P8038529394747123978.a n = A282413 n

end A282413

/-! ## A282413.P7363867565507165496

`A000225(C((n+1)/(n+1-and(n, n+1)), n))`
-/

namespace A282413.P7363867565507165496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ))).toNat n)

end

end A282413.P7363867565507165496

namespace A282413

/-- `A000225(C((n+1)/(n+1-and(n, n+1)), n))` -/
def P7363867565507165496.Spec : Prop :=
  ∀ n, P7363867565507165496.a n = A282413 n

end A282413

/-! ## A282413.P11416708979158392153

`A279872(A199969(n+1))`
-/

namespace A282413.P11416708979158392153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279872 (A199969 (n + 1)).toNat

end

end A282413.P11416708979158392153

namespace A282413

/-- `A279872(A199969(n+1))` -/
def P11416708979158392153.Spec : Prop :=
  ∀ n, P11416708979158392153.a n = A282413 n

end A282413

/-! ## A282413.P3595149303698414964

`A279872(A159075(n)+n)`
-/

namespace A282413.P3595149303698414964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279872 (A159075 n + (n : ℤ)).toNat

end

end A282413.P3595149303698414964

namespace A282413

/-- `A279872(A159075(n)+n)` -/
def P3595149303698414964.Spec : Prop :=
  ∀ n, P3595149303698414964.a n = A282413 n

end A282413

/-! ## A282413.P14774679188432804527

`A279872(n-A063524(n))`
-/

namespace A282413.P14774679188432804527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279872 ((n : ℤ) - A063524 n).toNat

end

end A282413.P14774679188432804527

namespace A282413

/-- `A279872(n-A063524(n))` -/
def P14774679188432804527.Spec : Prop :=
  ∀ n, P14774679188432804527.a n = A282413 n

end A282413

/-! ## A282413.P6482028222670953842

`A084181(n)*A266591(n)`
-/

namespace A282413.P6482028222670953842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084181 n * A266591 n

end

end A282413.P6482028222670953842

namespace A282413

/-- `A084181(n)*A266591(n)` -/
def P6482028222670953842.Spec : Prop :=
  ∀ n, P6482028222670953842.a n = A282413 n

end A282413

/-! ## A282413.P13705060964621710367

`A266591(n)*A282453(n)`
-/

namespace A282413.P13705060964621710367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 n * A282453 n

end

end A282413.P13705060964621710367

namespace A282413

/-- `A266591(n)*A282453(n)` -/
def P13705060964621710367.Spec : Prop :=
  ∀ n, P13705060964621710367.a n = A282413 n

end A282413

/-! ## A282413.P3073311862518248333

`A266591(n)*A282654(n)`
-/

namespace A282413.P3073311862518248333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 n * A282654 n

end

end A282413.P3073311862518248333

namespace A282413

/-- `A266591(n)*A282654(n)` -/
def P3073311862518248333.Spec : Prop :=
  ∀ n, P3073311862518248333.a n = A282413 n

end A282413

/-! ## A282413.P1992003366193654770

`A266591(n)*A282802(n)`
-/

namespace A282413.P1992003366193654770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 n * A282802 n

end

end A282413.P1992003366193654770

namespace A282413

/-- `A266591(n)*A282802(n)` -/
def P1992003366193654770.Spec : Prop :=
  ∀ n, P1992003366193654770.a n = A282413 n

end A282413

/-! ## A282413.P15825920196156343215

`A266591(n)*A284353(n)`
-/

namespace A282413.P15825920196156343215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 n * A284353 n

end

end A282413.P15825920196156343215

namespace A282413

/-- `A266591(n)*A284353(n)` -/
def P15825920196156343215.Spec : Prop :=
  ∀ n, P15825920196156343215.a n = A282413 n

end A282413

/-! ## A282413.P7032372290542508809

`A266591(n)*A286830(n)`
-/

namespace A282413.P7032372290542508809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 n * A286830 n

end

end A282413.P7032372290542508809

namespace A282413

/-- `A266591(n)*A286830(n)` -/
def P7032372290542508809.Spec : Prop :=
  ∀ n, P7032372290542508809.a n = A282413 n

end A282413

/-! ## A282413.P10482100992910494036

`A266591(n)*A286862(n)`
-/

namespace A282413.P10482100992910494036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 n * A286862 n

end

end A282413.P10482100992910494036

namespace A282413

/-- `A266591(n)*A286862(n)` -/
def P10482100992910494036.Spec : Prop :=
  ∀ n, P10482100992910494036.a n = A282413 n

end A282413

/-! ## A282413.P1170588193005959806

`A266591(n)*A290235(n)`
-/

namespace A282413.P1170588193005959806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 n * A290235 n

end

end A282413.P1170588193005959806

namespace A282413

/-- `A266591(n)*A290235(n)` -/
def P1170588193005959806.Spec : Prop :=
  ∀ n, P1170588193005959806.a n = A282413 n

end A282413

/-! ## A282413.P15750625412007610440

`A266591(n)*A290683(n)`
-/

namespace A282413.P15750625412007610440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 n * A290683 n

end

end A282413.P15750625412007610440

namespace A282413

/-- `A266591(n)*A290683(n)` -/
def P15750625412007610440.Spec : Prop :=
  ∀ n, P15750625412007610440.a n = A282413 n

end A282413

/-! ## A282413.P15062770677110816674

`A282414(n)/A000034(n)`
-/

namespace A282413.P15062770677110816674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282414 n : ℚ) / (A000034 n : ℚ)

end

end A282413.P15062770677110816674

namespace A282413

/-- `A282414(n)/A000034(n)` -/
def P15062770677110816674.Spec : Prop :=
  ∀ n, P15062770677110816674.a n = (A282413 n : ℚ)

end A282413

/-! ## A282413.P722268773948673687

`A282414(n)/A028920(n)`
-/

namespace A282413.P722268773948673687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282414 n : ℚ) / (A028920 n : ℚ)

end

end A282413.P722268773948673687

namespace A282413

/-- `A282414(n)/A028920(n)` -/
def P722268773948673687.Spec : Prop :=
  ∀ n, P722268773948673687.a n = (A282413 n : ℚ)

end A282413

/-!
# A282414: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 467", based on the 5-celled von Neumann neighborhood.

The programs for A282414, the canonical program `A282414.P4850476856454499360` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282414 has offset 0).

The definition of A282414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282414.P14261743032010601130

`a(n-2)%2*∑[2^n]` with `a(0)=1, a(1)=2`
-/

namespace A282414.P14261743032010601130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) % 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282414.P14261743032010601130

namespace A282414

/-- `a(n-2)%2*∑[2^n]` -/
def P14261743032010601130.Spec : Prop :=
  ∀ n, (P14261743032010601130.a n : ℤ) = A282414 n

end A282414

/-! ## A282414.P4256200173763077937

`a((n+1)%2)^(n+1)-1` with `a(0)=1, a(1)=2`
-/

namespace A282414.P4256200173763077937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ((n + 1) % 2) ^ (n + 1) - 1

end

end A282414.P4256200173763077937

namespace A282414

/-- `a((n+1)%2)^(n+1)-1` -/
def P4256200173763077937.Spec : Prop :=
  ∀ n, P4256200173763077937.a n = A282414 n

end A282414

/-! ## A282414.P1535212652677939203

`gcd(2, a(n-1))^(n+1)-1` with `a(0)=1, a(1)=2`
-/

namespace A282414.P1535212652677939203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Int.gcd 2 (a (n - 1)) ^ (n + 1) : ℤ) - 1

end

end A282414.P1535212652677939203

namespace A282414

/-- `gcd(2, a(n-1))^(n+1)-1` -/
def P1535212652677939203.Spec : Prop :=
  ∀ n, P1535212652677939203.a n = A282414 n

end A282414

/-! ## A282414.P5582843500919984990

`C(n, a(n-1))*∑[2*a(n-1)]-char[1]` with `a(0)=1`
-/

namespace A282414.P5582843500919984990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((Nat.choose n (a (n - 1)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A282414.P5582843500919984990

namespace A282414

/-- `C(n, a(n-1))*∑[2*a(n-1)]-char[1]` -/
def P5582843500919984990.Spec : Prop :=
  ∀ n, P5582843500919984990.a n = A282414 n

end A282414

/-! ## A282414.P4850476856454499360

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=0, a(4)=31, a(5)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A282414

/-- `5*a(n-2)-4*a(n-4)` -/
def P4850476856454499360.Spec : Prop :=
  ∀ n, P4850476856454499360.a n = A282414 n

theorem P4850476856454499360.correct : P4850476856454499360.Spec := by
  intro n
  simp only [A282414]

end A282414

/-! ## A282414.P13738167141377848776

`A282413(n)+char[1]`
-/

namespace A282414.P13738167141377848776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282413 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A282414.P13738167141377848776

namespace A282414

/-- `A282413(n)+char[1]` -/
def P13738167141377848776.Spec : Prop :=
  ∀ n, P13738167141377848776.a n = A282414 n

end A282414

/-! ## A282414.P17167985289152573997

`C(n, a(n-1))*A000225(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A282414.P17167985289152573997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Nat.choose n (a (n - 1)).toNat : ℤ) * A000225 (n + 1)

end

end A282414.P17167985289152573997

namespace A282414

/-- `C(n, a(n-1))*A000225(n+1)` -/
def P17167985289152573997.Spec : Prop :=
  ∀ n, P17167985289152573997.a n = A282414 n

end A282414

/-! ## A282414.P13254244855473683709

`A000034(n)*A282413(n)`
-/

namespace A282414.P13254244855473683709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A282413 n

end

end A282414.P13254244855473683709

namespace A282414

/-- `A000034(n)*A282413(n)` -/
def P13254244855473683709.Spec : Prop :=
  ∀ n, P13254244855473683709.a n = A282414 n

end A282414

/-! ## A282414.P2629088121397451529

`A028920(n)*A282413(n)`
-/

namespace A282414.P2629088121397451529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n * A282413 n

end

end A282414.P2629088121397451529

namespace A282414

/-- `A028920(n)*A282413(n)` -/
def P2629088121397451529.Spec : Prop :=
  ∀ n, P2629088121397451529.a n = A282414 n

end A282414

/-! ## A282414.P4737947193654575656

`A062557(n)*A282413(n)`
-/

namespace A282414.P4737947193654575656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062557 n * A282413 n

end

end A282414.P4737947193654575656

namespace A282414

/-- `A062557(n)*A282413(n)` -/
def P4737947193654575656.Spec : Prop :=
  ∀ n, P4737947193654575656.a n = A282414 n

end A282414

/-! ## A282414.P7879218299964986736

`A071222(n)*A282413(n)`
-/

namespace A282414.P7879218299964986736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 n * A282413 n

end

end A282414.P7879218299964986736

namespace A282414

/-- `A071222(n)*A282413(n)` -/
def P7879218299964986736.Spec : Prop :=
  ∀ n, P7879218299964986736.a n = A282414 n

end A282414

/-! ## A282414.P15552904489345209411

`A072345(n)*A282413(n)`
-/

namespace A282414.P15552904489345209411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 n * A282413 n

end

end A282414.P15552904489345209411

namespace A282414

/-- `A072345(n)*A282413(n)` -/
def P15552904489345209411.Spec : Prop :=
  ∀ n, P15552904489345209411.a n = A282414 n

end A282414

/-! ## A282414.P10155774593679883815

`A094360(n)*A266591(n)`
-/

namespace A282414.P10155774593679883815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094360 n * A266591 n

end

end A282414.P10155774593679883815

namespace A282414

/-- `A094360(n)*A266591(n)` -/
def P10155774593679883815.Spec : Prop :=
  ∀ n, P10155774593679883815.a n = A282414 n

end A282414

/-! ## A282414.P12761148694552063239

`A129110(n)*A282413(n)`
-/

namespace A282414.P12761148694552063239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129110 n * A282413 n

end

end A282414.P12761148694552063239

namespace A282414

/-- `A129110(n)*A282413(n)` -/
def P12761148694552063239.Spec : Prop :=
  ∀ n, P12761148694552063239.a n = A282414 n

end A282414

/-! ## A282414.P11498586691313625083

`A133186(n)*A282413(n)`
-/

namespace A282414.P11498586691313625083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133186 n * A282413 n

end

end A282414.P11498586691313625083

namespace A282414

/-- `A133186(n)*A282413(n)` -/
def P11498586691313625083.Spec : Prop :=
  ∀ n, P11498586691313625083.a n = A282414 n

end A282414

/-! ## A282414.P8237882308609464551

`A178562(n)*A282413(n)`
-/

namespace A282414.P8237882308609464551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178562 n * A282413 n

end

end A282414.P8237882308609464551

namespace A282414

/-- `A178562(n)*A282413(n)` -/
def P8237882308609464551.Spec : Prop :=
  ∀ n, P8237882308609464551.a n = A282414 n

end A282414

/-! ## A282414.P5544130751169639055

`A263845(n)*A282413(n)`
-/

namespace A282414.P5544130751169639055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263845 n * A282413 n

end

end A282414.P5544130751169639055

namespace A282414

/-- `A263845(n)*A282413(n)` -/
def P5544130751169639055.Spec : Prop :=
  ∀ n, P5544130751169639055.a n = A282414 n

end A282414

/-! ## A282414.P18168108681349369894

`A266303(n)*A282413(n)`
-/

namespace A282414.P18168108681349369894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n * A282413 n

end

end A282414.P18168108681349369894

namespace A282414

/-- `A266303(n)*A282413(n)` -/
def P18168108681349369894.Spec : Prop :=
  ∀ n, P18168108681349369894.a n = A282414 n

end A282414

/-! ## A282414.P5270195472383597189

`A266591(n)*A282454(n)`
-/

namespace A282414.P5270195472383597189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 n * A282454 n

end

end A282414.P5270195472383597189

namespace A282414

/-- `A266591(n)*A282454(n)` -/
def P5270195472383597189.Spec : Prop :=
  ∀ n, P5270195472383597189.a n = A282414 n

end A282414

/-! ## A282414.P10514735995517405305

`A266591(n)*A282655(n)`
-/

namespace A282414.P10514735995517405305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 n * A282655 n

end

end A282414.P10514735995517405305

namespace A282414

/-- `A266591(n)*A282655(n)` -/
def P10514735995517405305.Spec : Prop :=
  ∀ n, P10514735995517405305.a n = A282414 n

end A282414

/-!
# A282415: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 469", based on the 5-celled von Neumann neighborhood.

The programs for A282415, the canonical program `A282415.P3467170783009879874` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282415 has offset 0).

The definition of A282415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282415.P7452647211166642291

`A279877(n)+char[2]`
-/

namespace A282415.P7452647211166642291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279877 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A282415.P7452647211166642291

namespace A282415

/-- `A279877(n)+char[2]` -/
def P7452647211166642291.Spec : Prop :=
  ∀ n, P7452647211166642291.a n = A282415 n

end A282415

/-! ## A282415.P3934509940490630407

`or(log2(A040001(n)), A279877(n))`
-/

namespace A282415.P3934509940490630407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (Real.logb 2 (A040001 n : ℝ))) (A279877 n)

end

end A282415.P3934509940490630407

namespace A282415

/-- `or(log2(A040001(n)), A279877(n))` -/
def P3934509940490630407.Spec : Prop :=
  ∀ n, P3934509940490630407.a n = A282415 n

end A282415

/-! ## A282415.P3467170783009879874

`A278753(n)+Δ[A289404(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A282415

/-- `A278753(n)+Δ[A289404(n)]` -/
def P3467170783009879874.Spec : Prop :=
  ∀ n, P3467170783009879874.a n = A282415 n

theorem P3467170783009879874.correct : P3467170783009879874.Spec := by
  intro n
  simp only [A282415]

end A282415

/-! ## A282415.P5871796888273847558

`or(Δ[A000194(n)], A279877(n))`
-/

namespace A282415.P5871796888273847558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A279877 n)

end

end A282415.P5871796888273847558

namespace A282415

/-- `or(Δ[A000194(n)], A279877(n))` -/
def P5871796888273847558.Spec : Prop :=
  ∀ n, P5871796888273847558.a n = A282415 n

end A282415

/-! ## A282415.P13343794059761374211

`or(char[A005843(n)], A279877(n))`
-/

namespace A282415.P13343794059761374211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A279877 n)

end

end A282415.P13343794059761374211

namespace A282415

/-- `or(char[A005843(n)], A279877(n))` -/
def P13343794059761374211.Spec : Prop :=
  ∀ n, P13343794059761374211.a n = A282415 n

end A282415

/-! ## A282415.P16602979905606458677

`or(char[A052957(n)], A279877(n))`
-/

namespace A282415.P16602979905606458677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052957 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A279877 n)

end

end A282415.P16602979905606458677

namespace A282415

/-- `or(char[A052957(n)], A279877(n))` -/
def P16602979905606458677.Spec : Prop :=
  ∀ n, P16602979905606458677.a n = A282415 n

end A282415

/-! ## A282415.P3945405873678172702

`or(char[A237420(n)], A279877(n))`
-/

namespace A282415.P3945405873678172702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A279877 n)

end

end A282415.P3945405873678172702

namespace A282415

/-- `or(char[A237420(n)], A279877(n))` -/
def P3945405873678172702.Spec : Prop :=
  ∀ n, P3945405873678172702.a n = A282415 n

end A282415

/-! ## A282415.P4976122713741229698

`or(A000035(n+1), A279877(n))`
-/

namespace A282415.P4976122713741229698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (n + 1)) (A279877 n)

end

end A282415.P4976122713741229698

namespace A282415

/-- `or(A000035(n+1), A279877(n))` -/
def P4976122713741229698.Spec : Prop :=
  ∀ n, P4976122713741229698.a n = A282415 n

end A282415

/-! ## A282415.P16021461779055465553

`or(1, A279877(n))-A000035(n)`
-/

namespace A282415.P16021461779055465553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A279877 n) - A000035 n

end

end A282415.P16021461779055465553

namespace A282415

/-- `or(1, A279877(n))-A000035(n)` -/
def P16021461779055465553.Spec : Prop :=
  ∀ n, P16021461779055465553.a n = A282415 n

end A282415

/-! ## A282415.P16624975339752530751

`or(A192490(A017017(n)), A279877(n))`
-/

namespace A282415.P16624975339752530751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A192490 (A017017 n).toNat) (A279877 n)

end

end A282415.P16624975339752530751

namespace A282415

/-- `or(A192490(A017017(n)), A279877(n))` -/
def P16624975339752530751.Spec : Prop :=
  ∀ n, P16624975339752530751.a n = A282415 n

end A282415

/-! ## A282415.P10897792896019280666

`A286507(A193356(n+2))*A289404(n)`
-/

namespace A282415.P10897792896019280666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286507 (A193356 (n + 2)).toNat * A289404 n

end

end A282415.P10897792896019280666

namespace A282415

/-- `A286507(A193356(n+2))*A289404(n)` -/
def P10897792896019280666.Spec : Prop :=
  ∀ n, P10897792896019280666.a n = A282415 n

end A282415

/-!
# A282416: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 469", based on the 5-celled von Neumann neighborhood.

The programs for A282416, the canonical program `A282416.P15373099460086230700` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282416 has offset 0).

The definition of A282416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282416.P12339954335602948212

`gcd(11, A286772(n)²)*A279878(n)`
-/

namespace A282416.P12339954335602948212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 11 (A286772 n ^ 2) : ℤ) * A279878 n

end

end A282416.P12339954335602948212

namespace A282416

/-- `gcd(11, A286772(n)²)*A279878(n)` -/
def P12339954335602948212.Spec : Prop :=
  ∀ n, P12339954335602948212.a n = A282416 n

end A282416

/-! ## A282416.P14983204658489136354

`A285541(n)%(A285540(n+1)-1)`
-/

namespace A282416.P14983204658489136354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285541 n) (A285540 (n + 1) - 1)

end

end A282416.P14983204658489136354

namespace A282416

/-- `A285541(n)%(A285540(n+1)-1)` -/
def P14983204658489136354.Spec : Prop :=
  ∀ n, P14983204658489136354.a n = A282416 n

end A282416

/-! ## A282416.P3772219645367400175

`A290233(n)-A002275(A142150(n))`
-/

namespace A282416.P3772219645367400175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290233 n - A002275 (A142150 n).toNat

end

end A282416.P3772219645367400175

namespace A282416

/-- `A290233(n)-A002275(A142150(n))` -/
def P3772219645367400175.Spec : Prop :=
  ∀ n, P3772219645367400175.a n = A282416 n

end A282416

/-! ## A282416.P10099596372597332994

`A288662(n)+Δ[A002275(A065033(n))]`
-/

namespace A282416.P10099596372597332994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288662 n + (f1 (n + 1) - f1 n)

end

end A282416.P10099596372597332994

namespace A282416

/-- `A288662(n)+Δ[A002275(A065033(n))]` -/
def P10099596372597332994.Spec : Prop :=
  ∀ n, P10099596372597332994.a n = A282416 n

end A282416

/-! ## A282416.P15373099460086230700

`A286507(A193356(n+1))*A289404(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A282416

/-- `A286507(A193356(n+1))*A289404(n)` -/
def P15373099460086230700.Spec : Prop :=
  ∀ n, P15373099460086230700.a n = A282416 n

theorem P15373099460086230700.correct : P15373099460086230700.Spec := by
  intro n
  simp only [A282416]

end A282416

/-! ## A282416.P16173824651315273092

`A285541(n)%A004643(A133090(n+1))`
-/

namespace A282416.P16173824651315273092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285541 n) (A004643 (A133090 (n + 1)).toNat)

end

end A282416.P16173824651315273092

namespace A282416

/-- `A285541(n)%A004643(A133090(n+1))` -/
def P16173824651315273092.Spec : Prop :=
  ∀ n, P16173824651315273092.a n = A282416 n

end A282416

/-! ## A282416.P15186547770932493287

`gcd(A267614(n), A286772(n))*A279878(n)`
-/

namespace A282416.P15186547770932493287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A267614 n) (A286772 n) : ℤ) * A279878 n

end

end A282416.P15186547770932493287

namespace A282416

/-- `gcd(A267614(n), A286772(n))*A279878(n)` -/
def P15186547770932493287.Spec : Prop :=
  ∀ n, P15186547770932493287.a n = A282416 n

end A282416

/-! ## A282416.P9456342189023269965

`A000042(n+1)+A057428(n)*A288661(n)`
-/

namespace A282416.P9456342189023269965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + A057428 n * A288661 n

end

end A282416.P9456342189023269965

namespace A282416

/-- `A000042(n+1)+A057428(n)*A288661(n)` -/
def P9456342189023269965.Spec : Prop :=
  ∀ n, P9456342189023269965.a n = A282416 n

end A282416

/-! ## A282416.P14634460421247140642

`A278754(xor(1, n+1))`
-/

namespace A282416.P14634460421247140642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278754 (Nat.xor 1 (n + 1))

end

end A282416.P14634460421247140642

namespace A282416

/-- `A278754(xor(1, n+1))` -/
def P14634460421247140642.Spec : Prop :=
  ∀ n, P14634460421247140642.a n = A282416 n

end A282416

/-! ## A282416.P7435588067346948

`round(A282415(n+1)/ratio[A282415(2*n)])`
-/

namespace A282416.P7435588067346948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282415 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A282415 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A282416.P7435588067346948

namespace A282416

/-- `round(A282415(n+1)/ratio[A282415(2*n)])` -/
def P7435588067346948.Spec : Prop :=
  ∀ n, P7435588067346948.a n = A282416 n

end A282416

/-!
# A282417: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 469", based on the 5-celled von Neumann neighborhood.

The programs for A282417, the canonical program `A282417.P1547961641862508463` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282417 has offset 0).

The definition of A282417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282417.P18386244186686537371

`lcm(2^(∑[n]%(n+1)), Δ[2^(∑[n]%(n+1))])`
-/

namespace A282417.P18386244186686537371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A282417.P18386244186686537371

namespace A282417

/-- `lcm(2^(∑[n]%(n+1)), Δ[2^(∑[n]%(n+1))])` -/
def P18386244186686537371.Spec : Prop :=
  ∀ n, (P18386244186686537371.a n : ℤ) = A282417 n

end A282417

/-! ## A282417.P18046119000350340172

`A279879(n)+char[2]`
-/

namespace A282417.P18046119000350340172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279879 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A282417.P18046119000350340172

namespace A282417

/-- `A279879(n)+char[2]` -/
def P18046119000350340172.Spec : Prop :=
  ∀ n, P18046119000350340172.a n = A282417 n

end A282417

/-! ## A282417.P1547961641862508463

`A052551(n)*A072345(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A282417

/-- `A052551(n)*A072345(n)` -/
def P1547961641862508463.Spec : Prop :=
  ∀ n, P1547961641862508463.a n = A282417 n

theorem P1547961641862508463.correct : P1547961641862508463.Spec := by
  intro n
  simp only [A282417]

end A282417

/-! ## A282417.P8150019541044423166

`A094024(n)*A097110(n)`
-/

namespace A282417.P8150019541044423166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n * A097110 n

end

end A282417.P8150019541044423166

namespace A282417

/-- `A094024(n)*A097110(n)` -/
def P8150019541044423166.Spec : Prop :=
  ∀ n, P8150019541044423166.a n = A282417 n

end A282417

/-! ## A282417.P7850113240463565176

`lcm(A075427(n), A097110(n))`
-/

namespace A282417.P7850113240463565176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A075427 n) (A097110 n)

end

end A282417.P7850113240463565176

namespace A282417

/-- `lcm(A075427(n), A097110(n))` -/
def P7850113240463565176.Spec : Prop :=
  ∀ n, (P7850113240463565176.a n : ℤ) = A282417 n

end A282417

/-! ## A282417.P7020226560145365817

`or(A059841(n), A279879(n))`
-/

namespace A282417.P7020226560145365817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 n) (A279879 n)

end

end A282417.P7020226560145365817

namespace A282417

/-- `or(A059841(n), A279879(n))` -/
def P7020226560145365817.Spec : Prop :=
  ∀ n, P7020226560145365817.a n = A282417 n

end A282417

/-! ## A282417.P1129606330666813215

`or(A077896(n), A279879(n))`
-/

namespace A282417.P1129606330666813215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A077896 n) (A279879 n)

end

end A282417.P1129606330666813215

namespace A282417

/-- `or(A077896(n), A279879(n))` -/
def P1129606330666813215.Spec : Prop :=
  ∀ n, P1129606330666813215.a n = A282417 n

end A282417

/-! ## A282417.P8158459756216870738

`or(A142150(n), A279879(n))`
-/

namespace A282417.P8158459756216870738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A142150 n) (A279879 n)

end

end A282417.P8158459756216870738

namespace A282417

/-- `or(A142150(n), A279879(n))` -/
def P8158459756216870738.Spec : Prop :=
  ∀ n, P8158459756216870738.a n = A282417 n

end A282417

/-! ## A282417.P10156958753989968382

`or(A279879(n), A288663(n))`
-/

namespace A282417.P10156958753989968382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A279879 n) (A288663 n)

end

end A282417.P10156958753989968382

namespace A282417

/-- `or(A279879(n), A288663(n))` -/
def P10156958753989968382.Spec : Prop :=
  ∀ n, P10156958753989968382.a n = A282417 n

end A282417

/-! ## A282417.P17115954120493277807

`xor(A185012(n), A279879(n))`
-/

namespace A282417.P17115954120493277807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185012 n) (A279879 n)

end

end A282417.P17115954120493277807

namespace A282417

/-- `xor(A185012(n), A279879(n))` -/
def P17115954120493277807.Spec : Prop :=
  ∀ n, P17115954120493277807.a n = A282417 n

end A282417

/-! ## A282417.P7808917100451946459

`or(char[A005843(n)], A279879(n))`
-/

namespace A282417.P7808917100451946459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A279879 n)

end

end A282417.P7808917100451946459

namespace A282417

/-- `or(char[A005843(n)], A279879(n))` -/
def P7808917100451946459.Spec : Prop :=
  ∀ n, P7808917100451946459.a n = A282417 n

end A282417

/-! ## A282417.P10512050737377884942

`or(char[A051890(n)], A279879(n))`
-/

namespace A282417.P10512050737377884942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A279879 n)

end

end A282417.P10512050737377884942

namespace A282417

/-- `or(char[A051890(n)], A279879(n))` -/
def P10512050737377884942.Spec : Prop :=
  ∀ n, P10512050737377884942.a n = A282417 n

end A282417

/-! ## A282417.P11824697016011552876

`xor(A056453(n+1), A280412(n))`
-/

namespace A282417.P11824697016011552876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056453 (n + 1)) (A280412 n)

end

end A282417.P11824697016011552876

namespace A282417

/-- `xor(A056453(n+1), A280412(n))` -/
def P11824697016011552876.Spec : Prop :=
  ∀ n, P11824697016011552876.a n = A282417 n

end A282417

/-! ## A282417.P3805648093618215500

`char[2]+xor(A056453(n+1), A286772(n))`
-/

namespace A282417.P3805648093618215500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + Int.xor (A056453 (n + 1)) (A286772 n)

end

end A282417.P3805648093618215500

namespace A282417

/-- `char[2]+xor(A056453(n+1), A286772(n))` -/
def P3805648093618215500.Spec : Prop :=
  ∀ n, P3805648093618215500.a n = A282417 n

end A282417

/-! ## A282417.P3602759497663087958

`A000225(A065033(n+1))*A072345(n)`
-/

namespace A282417.P3602759497663087958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A065033 (n + 1)).toNat * A072345 n

end

end A282417.P3602759497663087958

namespace A282417

/-- `A000225(A065033(n+1))*A072345(n)` -/
def P3602759497663087958.Spec : Prop :=
  ∀ n, P3602759497663087958.a n = A282417 n

end A282417

/-! ## A282417.P16371175539753099565

`A000079(A142150(n+1))*A052551(n)`
-/

namespace A282417.P16371175539753099565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A142150 (n + 1)).toNat * A052551 n

end

end A282417.P16371175539753099565

namespace A282417

/-- `A000079(A142150(n+1))*A052551(n)` -/
def P16371175539753099565.Spec : Prop :=
  ∀ n, P16371175539753099565.a n = A282417 n

end A282417

/-! ## A282417.P860499013194054594

`A094024(n)*A106624(A004442(n+2))`
-/

namespace A282417.P860499013194054594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n * A106624 (A004442 (n + 2)).toNat

end

end A282417.P860499013194054594

namespace A282417

/-- `A094024(n)*A106624(A004442(n+2))` -/
def P860499013194054594.Spec : Prop :=
  ∀ n, P860499013194054594.a n = A282417 n

end A282417

/-! ## A282417.P7578391846354308573

`(A052551(n)+A000035(n))*A094024(n)`
-/

namespace A282417.P7578391846354308573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052551 n + A000035 n) * A094024 n

end

end A282417.P7578391846354308573

namespace A282417

/-- `(A052551(n)+A000035(n))*A094024(n)` -/
def P7578391846354308573.Spec : Prop :=
  ∀ n, P7578391846354308573.a n = A282417 n

end A282417

/-! ## A282417.P9584207987891011939

`A072345(n)²+A077896(n)-A072345(n)`
-/

namespace A282417.P9584207987891011939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 n ^ 2 + (A077896 n - A072345 n)

end

end A282417.P9584207987891011939

namespace A282417

/-- `A072345(n)²+A077896(n)-A072345(n)` -/
def P9584207987891011939.Spec : Prop :=
  ∀ n, P9584207987891011939.a n = A282417 n

end A282417

/-! ## A282417.P11842850314869018981

`(A097110(n+1)-A097110(n))*A097110(n)`
-/

namespace A282417.P11842850314869018981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097110 (n + 1) - A097110 n) * A097110 n

end

end A282417.P11842850314869018981

namespace A282417

/-- `(A097110(n+1)-A097110(n))*A097110(n)` -/
def P11842850314869018981.Spec : Prop :=
  ∀ n, P11842850314869018981.a n = A282417 n

end A282417

/-!
# A282418: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 469", based on the 5-celled von Neumann neighborhood.

The programs for A282418, the canonical program `A282418.P16045574486612495279` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282418 has offset 0).

The definition of A282418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282418.P16045574486612495279

`7*a(n-2)-14*a(n-4)+8*a(n-6)` with `a(0)=1, a(1)=1, a(2)=6, a(3)=3, a(4)=28, a(5)=7`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A282418

/-- `7*a(n-2)-14*a(n-4)+8*a(n-6)` -/
def P16045574486612495279.Spec : Prop :=
  ∀ n, P16045574486612495279.a n = A282418 n

theorem P16045574486612495279.correct : P16045574486612495279.Spec := by
  intro n
  simp only [A282418]

end A282418

/-! ## A282418.P4970027637734397743

`floor(A279879(n+1)/2)`
-/

namespace A282418.P4970027637734397743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A279879 (n + 1) : ℚ) / 2⌋

end

end A282418.P4970027637734397743

namespace A282418

/-- `floor(A279879(n+1)/2)` -/
def P4970027637734397743.Spec : Prop :=
  ∀ n, P4970027637734397743.a n = A282418 n

end A282418

/-! ## A282418.P1430058202119478814

`floor(A282417(n+1)/2)`
-/

namespace A282418.P1430058202119478814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A282417 (n + 1) : ℚ) / 2⌋

end

end A282418.P1430058202119478814

namespace A282418

/-- `floor(A282417(n+1)/2)` -/
def P1430058202119478814.Spec : Prop :=
  ∀ n, P1430058202119478814.a n = A282418 n

end A282418

/-! ## A282418.P14497220903281235754

`lcm(2, A288663(n+1))/2`
-/

namespace A282418.P14497220903281235754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A288663 (n + 1)) : ℚ) / 2

end

end A282418.P14497220903281235754

namespace A282418

/-- `lcm(2, A288663(n+1))/2` -/
def P14497220903281235754.Spec : Prop :=
  ∀ n, P14497220903281235754.a n = (A282418 n : ℚ)

end A282418

/-! ## A282418.P11101242424246035004

`A122746(n)/A072345(n)`
-/

namespace A282418.P11101242424246035004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122746 n : ℚ) / (A072345 n : ℚ)

end

end A282418.P11101242424246035004

namespace A282418

/-- `A122746(n)/A072345(n)` -/
def P11101242424246035004.Spec : Prop :=
  ∀ n, P11101242424246035004.a n = (A282418 n : ℚ)

end A282418

/-! ## A282418.P14471247190451109068

`gcd(A122746(n), A277929(n))`
-/

namespace A282418.P14471247190451109068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122746 n) (A277929 n)

end

end A282418.P14471247190451109068

namespace A282418

/-- `gcd(A122746(n), A277929(n))` -/
def P14471247190451109068.Spec : Prop :=
  ∀ n, (P14471247190451109068.a n : ℤ) = A282418 n

end A282418

/-! ## A282418.P15614459824768416730

`lcm(A052551(n), A279880(n))`
-/

namespace A282418.P15614459824768416730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052551 n) (A279880 n)

end

end A282418.P15614459824768416730

namespace A282418

/-- `lcm(A052551(n), A279880(n))` -/
def P15614459824768416730.Spec : Prop :=
  ∀ n, (P15614459824768416730.a n : ℤ) = A282418 n

end A282418

/-! ## A282418.P4570015933002520146

`and(A285543(n), A290235(n))`
-/

namespace A282418.P4570015933002520146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285543 n) (A290235 n)

end

end A282418.P4570015933002520146

namespace A282418

/-- `and(A285543(n), A290235(n))` -/
def P4570015933002520146.Spec : Prop :=
  ∀ n, P4570015933002520146.a n = A282418 n

end A282418

/-! ## A282418.P10767376795126009299

`or(A016116(n), A278756(n))`
-/

namespace A282418.P10767376795126009299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016116 n) (A278756 n)

end

end A282418.P10767376795126009299

namespace A282418

/-- `or(A016116(n), A278756(n))` -/
def P10767376795126009299.Spec : Prop :=
  ∀ n, P10767376795126009299.a n = A282418 n

end A282418

/-! ## A282418.P17786696337925701594

`or(A016116(n), A288664(n))`
-/

namespace A282418.P17786696337925701594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016116 n) (A288664 n)

end

end A282418.P17786696337925701594

namespace A282418

/-- `or(A016116(n), A288664(n))` -/
def P17786696337925701594.Spec : Prop :=
  ∀ n, P17786696337925701594.a n = A282418 n

end A282418

/-! ## A282418.P2710614170739190462

`or(A131572(n), A278756(n))`
-/

namespace A282418.P2710614170739190462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131572 n) (A278756 n)

end

end A282418.P2710614170739190462

namespace A282418

/-- `or(A131572(n), A278756(n))` -/
def P2710614170739190462.Spec : Prop :=
  ∀ n, P2710614170739190462.a n = A282418 n

end A282418

/-! ## A282418.P3219815378118815226

`or(A131572(n), A288664(n))`
-/

namespace A282418.P3219815378118815226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131572 n) (A288664 n)

end

end A282418.P3219815378118815226

namespace A282418

/-- `or(A131572(n), A288664(n))` -/
def P3219815378118815226.Spec : Prop :=
  ∀ n, P3219815378118815226.a n = A282418 n

end A282418

/-! ## A282418.P17782674058375290617

`xor(A051049(n), A233411(n))`
-/

namespace A282418.P17782674058375290617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051049 n) (A233411 n)

end

end A282418.P17782674058375290617

namespace A282418

/-- `xor(A051049(n), A233411(n))` -/
def P17782674058375290617.Spec : Prop :=
  ∀ n, P17782674058375290617.a n = A282418 n

end A282418

/-! ## A282418.P17556449849488897939

`floor(root(A122746(n), A000034(n)))`
-/

namespace A282418.P17556449849488897939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A122746 n : ℝ) ^ (1 / (A000034 n : ℝ))⌋

end

end A282418.P17556449849488897939

namespace A282418

/-- `floor(root(A122746(n), A000034(n)))` -/
def P17556449849488897939.Spec : Prop :=
  ∀ n, P17556449849488897939.a n = A282418 n

end A282418

/-! ## A282418.P17175793880849103337

`A288663(n+1)/A000034(n+1)`
-/

namespace A282418.P17175793880849103337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288663 (n + 1) : ℚ) / (A000034 (n + 1) : ℚ)

end

end A282418.P17175793880849103337

namespace A282418

/-- `A288663(n+1)/A000034(n+1)` -/
def P17175793880849103337.Spec : Prop :=
  ∀ n, P17175793880849103337.a n = (A282418 n : ℚ)

end A282418

/-! ## A282418.P12558051201563306667

`(A285542(n+1)-A094024(n+1))/2`
-/

namespace A282418.P12558051201563306667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285542 (n + 1) - A094024 (n + 1) : ℚ) / 2

end

end A282418.P12558051201563306667

namespace A282418

/-- `(A285542(n+1)-A094024(n+1))/2` -/
def P12558051201563306667.Spec : Prop :=
  ∀ n, P12558051201563306667.a n = (A282418 n : ℚ)

end A282418

/-! ## A282418.P4598042953733683424

`A000079(A142150(n))*A052551(n)`
-/

namespace A282418.P4598042953733683424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A142150 n).toNat * A052551 n

end

end A282418.P4598042953733683424

namespace A282418

/-- `A000079(A142150(n))*A052551(n)` -/
def P4598042953733683424.Spec : Prop :=
  ∀ n, P4598042953733683424.a n = A282418 n

end A282418

/-! ## A282418.P2248358216005118237

`A288663(n+1)/A266303(A266303(n))`
-/

namespace A282418.P2248358216005118237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288663 (n + 1) : ℚ) / (A266303 (A266303 n).toNat : ℚ)

end

end A282418.P2248358216005118237

namespace A282418

/-- `A288663(n+1)/A266303(A266303(n))` -/
def P2248358216005118237.Spec : Prop :=
  ∀ n, P2248358216005118237.a n = (A282418 n : ℚ)

end A282418

/-! ## A282418.P13782530061123058614

`A094024(n+1)*A106624(A004442(n+1))`
-/

namespace A282418.P13782530061123058614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 (n + 1) * A106624 (A004442 (n + 1)).toNat

end

end A282418.P13782530061123058614

namespace A282418

/-- `A094024(n+1)*A106624(A004442(n+1))` -/
def P13782530061123058614.Spec : Prop :=
  ∀ n, P13782530061123058614.a n = A282418 n

end A282418

/-! ## A282418.P9480932427216614360

`A077896(n+1)+A287470(n)-A077957(n+1)`
-/

namespace A282418.P9480932427216614360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 (n + 1) + (A287470 n - A077957 (n + 1))

end

end A282418.P9480932427216614360

namespace A282418

/-- `A077896(n+1)+A287470(n)-A077957(n+1)` -/
def P9480932427216614360.Spec : Prop :=
  ∀ n, P9480932427216614360.a n = A282418 n

end A282418

/-!
# A282419: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 470", based on the 5-celled von Neumann neighborhood.

The programs for A282419, there is no canonical definition to state claims against.
-/

/-! ## A282419.P17986681893556580834

`A000042(n+1)-A283179(A028310(n))`
-/

namespace A282419.P17986681893556580834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283179 (A028310 n).toNat

end

end A282419.P17986681893556580834

/-! ## A282419.P8386398789696881474

`A007088(A282421(n))`
-/

namespace A282419.P8386398789696881474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282421 n).toNat

end

end A282419.P8386398789696881474

/-! ## A282419.P18135435686140667060

`A007088(A126646(n))-A283179(A028310(n))`
-/

namespace A282419.P18135435686140667060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 n).toNat - A283179 (A028310 n).toNat

end

end A282419.P18135435686140667060

/-! ## A282419.P1748127095506018024

`A007088(A282422(n)+A283182(n)-A283181(n))`
-/

namespace A282419.P1748127095506018024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282422 n + (A283182 n - A283181 n)).toNat

end

end A282419.P1748127095506018024

/-! ## A282419.P3269748462632547511

`A007088(A282422(n)-(A283181(n)-A283182(n)))`
-/

namespace A282419.P3269748462632547511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282422 n - (A283181 n - A283182 n)).toNat

end

end A282419.P3269748462632547511

/-!
# A282420: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 470", based on the 5-celled von Neumann neighborhood.

The programs for A282420, there is no canonical definition to state claims against.
-/

/-! ## A282420.P17520487833751764274

`A000042(n+1)-A283180(A028310(n))`
-/

namespace A282420.P17520487833751764274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283180 (A028310 n).toNat

end

end A282420.P17520487833751764274

/-! ## A282420.P714880621398408779

`A007088(A282422(n))`
-/

namespace A282420.P714880621398408779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282422 n).toNat

end

end A282420.P714880621398408779

/-! ## A282420.P16442173131653291896

`A007088(or(1, A126646(n)-A283182(n)))`
-/

namespace A282420.P16442173131653291896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor 1 (A126646 n - A283182 n)).toNat

end

end A282420.P16442173131653291896

/-! ## A282420.P15567436381528790078

`A007088(A126646(n))-A283180(A028310(n))`
-/

namespace A282420.P15567436381528790078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 n).toNat - A283180 (A028310 n).toNat

end

end A282420.P15567436381528790078

/-! ## A282420.P18149712350570099778

`A007088(A282421(n)+A283181(n)-A283182(n))`
-/

namespace A282420.P18149712350570099778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282421 n + (A283181 n - A283182 n)).toNat

end

end A282420.P18149712350570099778

/-!
# A282421: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 470", based on the 5-celled von Neumann neighborhood.

The programs for A282421, there is no canonical definition to state claims against.
-/

/-! ## A282421.P1993903545703589012

`xor(A077896(A004277(n)), A283181(n))`
-/

namespace A282421.P1993903545703589012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A004277 n).toNat) (A283181 n)

end

end A282421.P1993903545703589012

/-! ## A282421.P6917036094376631669

`A282422(n)+A283182(n)-A283181(n)`
-/

namespace A282421.P6917036094376631669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282422 n + (A283182 n - A283181 n)

end

end A282421.P6917036094376631669

/-! ## A282421.P9362247149105492441

`A126646(n)-A283181(n)%A051049(n)`
-/

namespace A282421.P9362247149105492441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A283181 n) (A051049 n)

end

end A282421.P9362247149105492441

/-! ## A282421.P9868964361870397196

`or(A000225(n), A052531(n))-A283181(n)`
-/

namespace A282421.P9868964361870397196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A052531 n) - A283181 n

end

end A282421.P9868964361870397196

/-! ## A282421.P2728497030014651186

`xor(A126646(n)%A282682(n), A283181(n))`
-/

namespace A282421.P2728497030014651186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A126646 n) (A282682 n)) (A283181 n)

end

end A282421.P2728497030014651186

/-!
# A282422: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 470", based on the 5-celled von Neumann neighborhood.

The programs for A282422, there is no canonical definition to state claims against.
-/

/-! ## A282422.P17317458756274125489

`or(1, A126646(n)-A283182(n))`
-/

namespace A282422.P17317458756274125489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A283182 n)

end

end A282422.P17317458756274125489

/-! ## A282422.P3609214904376687739

`xor(A077896(A004277(n)), A283182(n))`
-/

namespace A282422.P3609214904376687739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A004277 n).toNat) (A283182 n)

end

end A282422.P3609214904376687739

/-! ## A282422.P1124356891207117462

`A282421(n)+A283181(n)-A283182(n)`
-/

namespace A282422.P1124356891207117462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282421 n + (A283181 n - A283182 n)

end

end A282422.P1124356891207117462

/-! ## A282422.P9167811618802847618

`A178333(A103517(n))+A126646(n)-A283182(n)`
-/

namespace A282422.P9167811618802847618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (A103517 n).toNat + (A126646 n - A283182 n)

end

end A282422.P9167811618802847618

/-! ## A282422.P15202442001798990899

`A126646(n)-A283182(n)%A282682(n)`
-/

namespace A282422.P15202442001798990899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A283182 n) (A282682 n)

end

end A282422.P15202442001798990899

/-!
# A282425: The maximum number of steps Langton's ant can make confined to an n X n grid.

The programs for A282425, there is no canonical definition to state claims against.
-/

/-! ## A282425.P7473503841248069074

`A070735(n+1)-A346690(A362088(n))`
-/

namespace A282425.P7473503841248069074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070735 (n + 1) - A346690 (A362088 n).toNat

end

end A282425.P7473503841248069074

/-!
# A282427: Numbers k such that A282442(k) = ceiling(k/2) + 1.

The programs for A282427, there is no canonical definition to state claims against.
-/

/-! ## A282427.P10502458191267471240

`eq[ceil(n/2), A282443(xor(1, n)+1)]`
-/

namespace A282427.P10502458191267471240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282443 (Nat.xor 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A282427.P10502458191267471240

/-! ## A282427.P2043069569254844249

`eq[A097362(n+1), A282443(n+1)]+1`
-/

namespace A282427.P2043069569254844249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282443 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A282427.P2043069569254844249

/-! ## A282427.P4428641911478136705

`eq[A001057(n), A282443(A028310(n))]`
-/

namespace A282427.P4428641911478136705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282443 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A282427.P4428641911478136705

/-! ## A282427.P2167921735208820320

`eq[A004525(n), A282574(A028310(n))]`
-/

namespace A282427.P2167921735208820320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282574 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A282427.P2167921735208820320

/-! ## A282427.P5755210978743672067

`eq[A001057(n), A282443(A109613(n))]`
-/

namespace A282427.P5755210978743672067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282443 (A109613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A282427.P5755210978743672067

/-!
# A282429: List of distinct terms of A282026.

The programs for A282429, there is no canonical definition to state claims against.
-/

/-! ## A282429.P2677012918403890470

`lt[C(n, gcd(5, n)), lcm(3, n)]`
-/

namespace A282429.P2677012918403890470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.gcd 5 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A282429.P2677012918403890470

/-! ## A282429.P5032289880865556052

`comp[∪[3*n, 5*(n+2)]]`
-/

namespace A282429.P5032289880865556052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A282429.P5032289880865556052

/-! ## A282429.P7954101451654045707

`comp[gcd(2*n, (10*n)%15)+n]`
-/

namespace A282429.P7954101451654045707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (10 * n % 15) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A282429.P7954101451654045707

/-! ## A282429.P493991106360081681

`lt[A060764(n+15), 3]`
-/

namespace A282429.P493991106360081681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060764 (n + 15)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A282429.P493991106360081681

/-! ## A282429.P14476389065670894977

`lt[A001343(n), n%3]`
-/

namespace A282429.P14476389065670894977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A282429.P14476389065670894977

/-!
# A282430: Even numbers not divisible by 3 which are not of the form p + 3^x with p prime.

The programs for A282430, there is no canonical definition to state claims against.
-/

/-! ## A282430.P13237832286183026021

`∩[A058517(n+1), A284919(n+1)]`
-/

namespace A282430.P13237832286183026021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282430.P13237832286183026021

/-! ## A282430.P1410982360181462076

`∩[A081310(n+1), A284919(n+1)]`
-/

namespace A282430.P1410982360181462076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282430.P1410982360181462076

/-! ## A282430.P5657295361230317042

`∩[A284919(n+1), A004277(A350958(n+1))]`
-/

namespace A282430.P5657295361230317042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A350958 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282430.P5657295361230317042

/-! ## A282430.P16110461377484449377

`∩[A001651(n+1), A058517(n+1)]`
-/

namespace A282430.P16110461377484449377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282430.P16110461377484449377

/-!
# A282432: Number of primes of the form n - 3^k.

The programs for A282432, there is no canonical definition to state claims against.
-/

/-! ## A282432.P4549171380281687670

`∑{e}[2^n, A046922(#)]`
-/

namespace A282432.P4549171380281687670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A046922 (Nat.factorization (f1 n) p)

end

end A282432.P4549171380281687670

/-! ## A282432.P13070021054430457022

`A046922(n^A317624(n))`
-/

namespace A282432.P13070021054430457022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A317624 n : ℤ))).toNat

end

end A282432.P13070021054430457022

/-! ## A282432.P8581226684334652501

`A046922(C(n, A317624(n)))`
-/

namespace A282432.P8581226684334652501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (Nat.choose n (A317624 n).toNat)

end

end A282432.P8581226684334652501

/-! ## A282432.P5709497357661756691

`A046922(C(A263780(n), A321836(n+1))+n)`
-/

namespace A282432.P5709497357661756691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (Nat.choose (A263780 n).toNat (A321836 (n + 1)).toNat + n)

end

end A282432.P5709497357661756691

/-! ## A282432.P8606980999453989093

`A046922(A028310(n))+A000038(A000032(n))`
-/

namespace A282432.P8606980999453989093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (A028310 n).toNat + A000038 (A000032 n).toNat

end

end A282432.P8606980999453989093

/-!
# A282434: Positions of records in A282442.

The programs for A282434, there is no canonical definition to state claims against.
-/

/-! ## A282434.P7368370800455148251

`∑[A175062(∑[A103881(n+1)])]`
-/

namespace A282434.P7368370800455148251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175062 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282434.P7368370800455148251

/-! ## A282434.P7455753438354728427

`∑[A064839(A008642(3*n+2)²)]`
-/

namespace A282434.P7455753438354728427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A008642 (3 * n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282434.P7455753438354728427

/-! ## A282434.P12527749205426960524

`∑[A160381(A250469(3*n+2)²)]`
-/

namespace A282434.P12527749205426960524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A250469 (3 * n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282434.P12527749205426960524

/-! ## A282434.P11554404742801840145

`A261101(A000129(n))+A177702(n)`
-/

namespace A282434.P11554404742801840145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261101 (A000129 n).toNat + A177702 n

end

end A282434.P11554404742801840145

/-!
# A282435: Number of nX2 0..1 arrays with no 1 equal to more than three of its king-move neighbors, with the exception of exactly one element.

The programs for A282435, there is no canonical definition to state claims against.
-/

/-! ## A282435.P7843344874647190563

`A282441(∑[n+1]+2)`
-/

namespace A282435.P7843344874647190563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A282435.P7843344874647190563

/-! ## A282435.P16933507124995208416

`A282441(A000096(n+1))%A057081(n)`
-/

namespace A282435.P16933507124995208416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282441 (A000096 (n + 1)).toNat) (A057081 n)

end

end A282435.P16933507124995208416

/-! ## A282435.P18194420451943569376

`A282441(A000096(n+1))+A240465(2*n+1)`
-/

namespace A282435.P18194420451943569376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (A000096 (n + 1)).toNat + A240465 (2 * n + 1)

end

end A282435.P18194420451943569376

/-! ## A282435.P13239123781842683919

`A282441(A000096(n+1))-A191418(3*n+4)`
-/

namespace A282435.P13239123781842683919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (A000096 (n + 1)).toNat - A191418 (3 * n + 4)

end

end A282435.P13239123781842683919

/-!
# A282436: Number of nX3 0..1 arrays with no 1 equal to more than three of its king-move neighbors, with the exception of exactly one element.

The programs for A282436, there is no canonical definition to state claims against.
-/

/-! ## A282436.P14838350001237832185

`A282441(∑[n+2]+4)`
-/

namespace A282436.P14838350001237832185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282436.P14838350001237832185

/-! ## A282436.P14911875296597618453

`lcm(2, A282441(A167614(n+1)))`
-/

namespace A282436.P14911875296597618453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A282441 (A167614 (n + 1)).toNat)

end

end A282436.P14911875296597618453

/-! ## A282436.P5113504339648890574

`A282441(A167614(n+1))+A025439(n)`
-/

namespace A282436.P5113504339648890574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (A167614 (n + 1)).toNat + A025439 n

end

end A282436.P5113504339648890574

/-! ## A282436.P3961572564392328516

`A057427(n)*A282441(A167614(n+1))`
-/

namespace A282436.P3961572564392328516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A282441 (A167614 (n + 1)).toNat

end

end A282436.P3961572564392328516

/-! ## A282436.P13403818389529858286

`A282441(A167614(n+1))%A037052(n)`
-/

namespace A282436.P13403818389529858286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282441 (A167614 (n + 1)).toNat) (A037052 n)

end

end A282436.P13403818389529858286

/-!
# A282437: Number of n X 4 0..1 arrays with no 1 equal to more than three of its king-move neighbors, with the exception of exactly one element.

The programs for A282437, there is no canonical definition to state claims against.
-/

/-! ## A282437.P13848490615340693868

`A282441(A374004(n+1))`
-/

namespace A282437.P13848490615340693868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (A374004 (n + 1)).toNat

end

end A282437.P13848490615340693868

/-! ## A282437.P10644902804679390756

`A282441(A052905(n)+9)`
-/

namespace A282437.P10644902804679390756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (A052905 n + 9).toNat

end

end A282437.P10644902804679390756

/-! ## A282437.P15944145427297524674

`A282441(A167614(n+2)+1)`
-/

namespace A282437.P15944145427297524674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (A167614 (n + 2) + 1).toNat

end

end A282437.P15944145427297524674

/-! ## A282437.P10816503664365406593

`A282441(A166136(n+2)-2)`
-/

namespace A282437.P10816503664365406593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (A166136 (n + 2) - 2).toNat

end

end A282437.P10816503664365406593

/-! ## A282437.P16764169420315400978

`A282441(eq[5, A131818(n+1)])`
-/

namespace A282437.P16764169420315400978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282437.P16764169420315400978

/-!
# A282438: Number of nX5 0..1 arrays with no 1 equal to more than three of its king-move neighbors, with the exception of exactly one element.

The programs for A282438, there is no canonical definition to state claims against.
-/

/-! ## A282438.P11140660901377398316

`A282441(A374005(n+1))`
-/

namespace A282438.P11140660901377398316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (A374005 (n + 1)).toNat

end

end A282438.P11140660901377398316

/-! ## A282438.P11809140966390172004

`A282441(A046691(n+3))`
-/

namespace A282438.P11809140966390172004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (A046691 (n + 3)).toNat

end

end A282438.P11809140966390172004

/-! ## A282438.P10168906262044748540

`A282441(Δ[A023545(n+1)])`
-/

namespace A282438.P10168906262044748540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (f1 (n + 1) - f1 n).toNat

end

end A282438.P10168906262044748540

/-! ## A282438.P15024764706732755797

`A282441(A056000(n+1)+6)`
-/

namespace A282438.P15024764706732755797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (A056000 (n + 1) + 6).toNat

end

end A282438.P15024764706732755797

/-! ## A282438.P17951384000093749247

`A282441(eq[4, A049286(n+1)])`
-/

namespace A282438.P17951384000093749247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282438.P17951384000093749247

/-!
# A282439: Number of nX6 0..1 arrays with no 1 equal to more than three of its king-move neighbors, with the exception of exactly one element.

The programs for A282439, there is no canonical definition to state claims against.
-/

/-! ## A282439.P12114985208120501322

`A282441(∑[n+5]+16)`
-/

namespace A282439.P12114985208120501322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A282439.P12114985208120501322

/-! ## A282439.P1317111288945257892

`lcm(2, A282441(A374007(n+1)))`
-/

namespace A282439.P1317111288945257892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A282441 (A374007 (n + 1)).toNat)

end

end A282439.P1317111288945257892

/-! ## A282439.P11676396017013971876

`A353481(n+1)+A282441(A374007(n+1))`
-/

namespace A282439.P11676396017013971876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (n + 1) + A282441 (A374007 (n + 1)).toNat

end

end A282439.P11676396017013971876

/-! ## A282439.P15839178727637920126

`record[char[A055999(n)]*A282441(n+1)]`
-/

namespace A282439.P15839178727637920126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A282441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282439.P15839178727637920126

/-!
# A282440: Number of nX7 0..1 arrays with no 1 equal to more than three of its king-move neighbors, with the exception of exactly one element.

The programs for A282440, there is no canonical definition to state claims against.
-/

/-! ## A282440.P6069753505799126576

`A282441(A374008(n+1))`
-/

namespace A282440.P6069753505799126576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (A374008 (n + 1)).toNat

end

end A282440.P6069753505799126576

/-! ## A282440.P1157433580467877685

`A282441(eq[11, A066657(n)])`
-/

namespace A282440.P1157433580467877685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282440.P1157433580467877685

/-! ## A282440.P12680178519047193342

`A282441(A166136(n+5)+1)`
-/

namespace A282440.P12680178519047193342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (A166136 (n + 5) + 1).toNat

end

end A282440.P12680178519047193342

/-! ## A282440.P8703843172025483210

`A282441(eq[8, A131818(n+1)])`
-/

namespace A282440.P8703843172025483210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282440.P8703843172025483210

/-! ## A282440.P1732870739355474278

`A282441(A055999(n+4))`
-/

namespace A282440.P1732870739355474278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (A055999 (n + 4)).toNat

end

end A282440.P1732870739355474278

/-!
# A282442: a(n) is the smallest step size that does not occur on a staircase of n steps when following the following procedure: Take steps of length 1 up a staircase until you can't step any further, then take steps of length 2 down until you can't step any further, and so on.

The programs for A282442, there is no canonical definition to state claims against.
-/

/-! ## A282442.P11435993564868690765

`A282443(n+1)+1`
-/

namespace A282442.P11435993564868690765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282443 (n + 1) + 1

end

end A282442.P11435993564868690765

/-! ## A282442.P18371122409912920366

`A020725(A282443(n+1))`
-/

namespace A282442.P18371122409912920366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A282443 (n + 1)).toNat

end

end A282442.P18371122409912920366

/-!
# A282443: a(n) is the largest step size that is taken on a staircase of n steps when following the following procedure: Take steps of length 1 up a staircase until you can't step any further, then take steps of length 2 down until you can't step any further, and so on.

The programs for A282443, there is no canonical definition to state claims against.
-/

/-! ## A282443.P2248377250837202191

`A282442(n+1)-1`
-/

namespace A282443.P2248377250837202191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282442 (n + 1) - 1

end

end A282443.P2248377250837202191

/-! ## A282443.P5320385004550065950

`A023443(A282442(n+1))`
-/

namespace A282443.P5320385004550065950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A282442 (n + 1)).toNat

end

end A282443.P5320385004550065950

/-! ## A282443.P6789518619948266161

`A023444(A282442(n+1)+1)`
-/

namespace A282443.P6789518619948266161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A282442 (n + 1) + 1).toNat

end

end A282443.P6789518619948266161

/-! ## A282443.P10194749082083525583

`A289207(A282442(n+1)+1)`
-/

namespace A282443.P10194749082083525583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A282442 (n + 1) + 1).toNat

end

end A282443.P10194749082083525583

/-! ## A282443.P5422095050476222502

`A140106(2*A282442(n+1))`
-/

namespace A282443.P5422095050476222502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A282442 (n + 1)).toNat

end

end A282443.P5422095050476222502

/-! ## A282443.P6767492167041939340

`A140106(A282442(n+1)+A282442(n+1)+1)`
-/

namespace A282443.P6767492167041939340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A282442 (n + 1) + (A282442 (n + 1) + 1)).toNat

end

end A282443.P6767492167041939340

/-! ## A282443.P3438034216074250617

`A057918(A282442(n+1)²)`
-/

namespace A282443.P3438034216074250617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A282442 (n + 1) ^ 2).toNat

end

end A282443.P3438034216074250617

/-! ## A282443.P17102079508169270706

`A057918(A282442(n+1)^2)`
-/

namespace A282443.P17102079508169270706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A282442 (n + 1) ^ 2).toNat

end

end A282443.P17102079508169270706

/-! ## A282443.P15683915966991304265

`A057918(2*A282442(n+1)*A282442(n+1))`
-/

namespace A282443.P15683915966991304265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (2 * A282442 (n + 1) * A282442 (n + 1)).toNat

end

end A282443.P15683915966991304265

/-! ## A282443.P4139780405306850976

`abs(A282442(n+1)+A009001(A060626(n)))`
-/

namespace A282443.P4139780405306850976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A282442 (n + 1) + A009001 (A060626 n).toNat|

end

end A282443.P4139780405306850976

/-!
# A282444: Numbers k such that A282442(k) = k + 1.

The programs for A282444, there is no canonical definition to state claims against.
-/

/-! ## A282444.P5892496682199337401

`record[C(A282443(n+1), n)]`
-/

namespace A282444.P5892496682199337401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A282443 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282444.P5892496682199337401

/-! ## A282444.P2437990370211430137

`eq[n, A282443(A028310(n))]`
-/

namespace A282444.P2437990370211430137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282443 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A282444.P2437990370211430137

/-! ## A282444.P5178068833009003668

`A004482(eq[n+1, A282443(n+1)])`
-/

namespace A282444.P5178068833009003668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282444.P5178068833009003668

/-! ## A282444.P399047814552640100

`eq[A000027(n+1), A282442(A028310(n))]`
-/

namespace A282444.P399047814552640100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282442 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A282444.P399047814552640100

/-! ## A282444.P2081226538268255111

`eq[A058035(n+1), A282442(A028310(n))]`
-/

namespace A282444.P2081226538268255111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282442 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A282444.P2081226538268255111

/-!
# A282445: For n>=5, a(n) is the smallest m>=3 such that odd part of ((prime(n)^2 - prime(m)^2)/3) is prime, or a(n)=0 if there is no such m

The programs for A282445, there is no canonical definition to state claims against.
-/

/-! ## A282445.P9131016159336936965

`C(A212217(n), A360617(A003072(n+1)))²+3`
-/

namespace A282445.P9131016159336936965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A212217 n).toNat (A360617 (A003072 (n + 1)).toNat).toNat ^ 2 + 3

end

end A282445.P9131016159336936965

/-! ## A282445.P16641564652392055513

`or(2, val(A037043(n+1)+2, 2))+1`
-/

namespace A282445.P16641564652392055513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (SequenceMachineLib.valuation (A037043 (n + 1) + 2).toNat 2) + 1

end

end A282445.P16641564652392055513

/-! ## A282445.P12021510744674349081

`A057956(A141056(n)+1)`
-/

namespace A282445.P12021510744674349081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057956 (A141056 n + 1).toNat

end

end A282445.P12021510744674349081

/-! ## A282445.P7466813745122750887

`A057956(A144845(n)+1)`
-/

namespace A282445.P7466813745122750887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057956 (A144845 n + 1).toNat

end

end A282445.P7466813745122750887

/-! ## A282445.P12279034495412806682

`A133675(A100727(n+3)^A260340(n))`
-/

namespace A282445.P12279034495412806682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133675 (SequenceMachineLib.roundAway ((A100727 (n + 3) : ℚ) ^ (A260340 n : ℤ))).toNat

end

end A282445.P12279034495412806682

/-!
# A282446: 

The programs for A282446, there is no canonical definition to state claims against.
-/

/-! ## A282446.P9587504366818094715

`∏{e}[n+1, A228683(A106491(#))]`
-/

namespace A282446.P9587504366818094715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A228683 (A106491 (Nat.factorization (f1 n) p)).toNat

end

end A282446.P9587504366818094715

/-!
# A282447: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 473", based on the 5-celled von Neumann neighborhood.

The programs for A282447, there is no canonical definition to state claims against.
-/

/-! ## A282447.P16901456812052193742

`A007088(A282449(n))`
-/

namespace A282447.P16901456812052193742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282449 n).toNat

end

end A282447.P16901456812052193742

/-! ## A282447.P5562261585007644830

`A185544(2*A282449(n))`
-/

namespace A282447.P5562261585007644830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282449 n).toNat

end

end A282447.P5562261585007644830

/-! ## A282447.P1397046346314456912

`A185544(A282449(n)+A282449(n))`
-/

namespace A282447.P1397046346314456912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A282449 n + A282449 n).toNat

end

end A282447.P1397046346314456912

/-!
# A282448: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 473", based on the 5-celled von Neumann neighborhood.

The programs for A282448, there is no canonical definition to state claims against.
-/

/-! ## A282448.P17292009030770045223

`A007088(A282450(n))`
-/

namespace A282448.P17292009030770045223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282450 n).toNat

end

end A282448.P17292009030770045223

/-! ## A282448.P874826241757364276

`A185544(2*A282450(n))`
-/

namespace A282448.P874826241757364276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282450 n).toNat

end

end A282448.P874826241757364276

/-! ## A282448.P9375488955389972240

`A185544(A282450(n)+A282450(n))`
-/

namespace A282448.P9375488955389972240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A282450 n + A282450 n).toNat

end

end A282448.P9375488955389972240

/-!
# A282449: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 473", based on the 5-celled von Neumann neighborhood.

The programs for A282449, there is no canonical definition to state claims against.
-/

/-! ## A282449.P7034707552840544229

`A282608(n)^C(n, 6)!`
-/

namespace A282449.P7034707552840544229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282608 n ^ Nat.factorial (Nat.choose n 6)

end

end A282449.P7034707552840544229

/-! ## A282449.P9706199114118910974

`A282608(A004890(n+1))`
-/

namespace A282449.P9706199114118910974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282608 (A004890 (n + 1)).toNat

end

end A282449.P9706199114118910974

/-! ## A282449.P12634269769087268821

`A282608(A004901(n+1))`
-/

namespace A282449.P12634269769087268821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282608 (A004901 (n + 1)).toNat

end

end A282449.P12634269769087268821

/-!
# A282450: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 473", based on the 5-celled von Neumann neighborhood.

The programs for A282450, there is no canonical definition to state claims against.
-/

/-! ## A282450.P16940202830659453733

`A282609(A004890(n+1))`
-/

namespace A282450.P16940202830659453733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282609 (A004890 (n + 1)).toNat

end

end A282450.P16940202830659453733

/-! ## A282450.P7111567218704286131

`A282609(A004901(n+1))`
-/

namespace A282450.P7111567218704286131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282609 (A004901 (n + 1)).toNat

end

end A282450.P7111567218704286131

/-! ## A282450.P6331169222363877148

`A282609(A004912(n+1))`
-/

namespace A282450.P6331169222363877148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282609 (A004912 (n + 1)).toNat

end

end A282450.P6331169222363877148

/-!
# A282451: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 475", based on the 5-celled von Neumann neighborhood.

The programs for A282451, the canonical program `A282451.P7052189223115230178` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282451 has offset 0).

The definition of A282451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282451.P968057334568209082

`101*a(n-2)-100*a(n-4)` with `a(0)=1, a(1)=1, a(2)=111, a(3)=100`
-/

namespace A282451.P968057334568209082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 111, 100] fun n a =>
  101 * a (n - 2) - 100 * a (n - 4)

end

end A282451.P968057334568209082

namespace A282451

/-- `101*a(n-2)-100*a(n-4)` -/
def P968057334568209082.Spec : Prop :=
  ∀ n, P968057334568209082.a n = A282451 n

end A282451

/-! ## A282451.P7052189223115230178

`A280411(xor(1, n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A282451

/-- `A280411(xor(1, n))` -/
def P7052189223115230178.Spec : Prop :=
  ∀ n, P7052189223115230178.a n = A282451 n

theorem P7052189223115230178.correct : P7052189223115230178.Spec := by
  intro n
  simp only [A282451]

end A282451

/-! ## A282451.P4886236443072014633

`A280411(A004442(n))`
-/

namespace A282451.P4886236443072014633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280411 (A004442 n).toNat

end

end A282451.P4886236443072014633

namespace A282451

/-- `A280411(A004442(n))` -/
def P4886236443072014633.Spec : Prop :=
  ∀ n, P4886236443072014633.a n = A282451 n

end A282451

/-! ## A282451.P16985431952916663365

`A280411(A033999(n)+n)`
-/

namespace A282451.P16985431952916663365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280411 (A033999 n + (n : ℤ)).toNat

end

end A282451.P16985431952916663365

namespace A282451

/-- `A280411(A033999(n)+n)` -/
def P16985431952916663365.Spec : Prop :=
  ∀ n, P16985431952916663365.a n = A282451 n

end A282451

/-! ## A282451.P6404753254283620424

`A280411(A014681(n+1)-1)`
-/

namespace A282451.P6404753254283620424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280411 (A014681 (n + 1) - 1).toNat

end

end A282451.P6404753254283620424

namespace A282451

/-- `A280411(A014681(n+1)-1)` -/
def P6404753254283620424.Spec : Prop :=
  ∀ n, P6404753254283620424.a n = A282451 n

end A282451

/-! ## A282451.P15945783504620566566

`A280411(2*n-A014681(n))`
-/

namespace A282451.P15945783504620566566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280411 ((2 * n : ℤ) - A014681 n).toNat

end

end A282451.P15945783504620566566

namespace A282451

/-- `A280411(2*n-A014681(n))` -/
def P15945783504620566566.Spec : Prop :=
  ∀ n, P15945783504620566566.a n = A282451 n

end A282451

/-! ## A282451.P3881310640438386896

`A280411(n-(A014681(n)-n))`
-/

namespace A282451.P3881310640438386896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280411 ((n : ℤ) - (A014681 n - (n : ℤ))).toNat

end

end A282451.P3881310640438386896

namespace A282451

/-- `A280411(n-(A014681(n)-n))` -/
def P3881310640438386896.Spec : Prop :=
  ∀ n, P3881310640438386896.a n = A282451 n

end A282451

/-! ## A282451.P7637782552445544199

`A280411(A057428(n)^n+n)`
-/

namespace A282451.P7637782552445544199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280411 (A057428 n ^ n + (n : ℤ)).toNat

end

end A282451.P7637782552445544199

namespace A282451

/-- `A280411(A057428(n)^n+n)` -/
def P7637782552445544199.Spec : Prop :=
  ∀ n, P7637782552445544199.a n = A282451 n

end A282451

/-! ## A282451.P15636366219015912760

`A309761(A038722(∑[A004442(n)]))`
-/

namespace A282451.P15636366219015912760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A038722 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A282451.P15636366219015912760

namespace A282451

/-- `A309761(A038722(∑[A004442(n)]))` -/
def P15636366219015912760.Spec : Prop :=
  ∀ n, P15636366219015912760.a n = A282451 n

end A282451

/-! ## A282451.P17186229512031761426

`A164844(A131738(n)+A000096(n))`
-/

namespace A282451.P17186229512031761426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164844 (A131738 n + A000096 n).toNat

end

end A282451.P17186229512031761426

namespace A282451

/-- `A164844(A131738(n)+A000096(n))` -/
def P17186229512031761426.Spec : Prop :=
  ∀ n, P17186229512031761426.a n = A282451 n

end A282451

/-! ## A282451.P2687981579802081258

`A280411(A059841(n)+A052928(n))`
-/

namespace A282451.P2687981579802081258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280411 (A059841 n + A052928 n).toNat

end

end A282451.P2687981579802081258

namespace A282451

/-- `A280411(A059841(n)+A052928(n))` -/
def P2687981579802081258.Spec : Prop :=
  ∀ n, P2687981579802081258.a n = A282451 n

end A282451

/-! ## A282451.P17936651764453608994

`A280411(A109613(n)-A000035(n))`
-/

namespace A282451.P17936651764453608994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280411 (A109613 n - A000035 n).toNat

end

end A282451.P17936651764453608994

namespace A282451

/-- `A280411(A109613(n)-A000035(n))` -/
def P17936651764453608994.Spec : Prop :=
  ∀ n, P17936651764453608994.a n = A282451 n

end A282451

/-! ## A282451.P5294649353411663599

`A280411(or(A052928(n), A059841(n)))`
-/

namespace A282451.P5294649353411663599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280411 (Int.lor (A052928 n) (A059841 n)).toNat

end

end A282451.P5294649353411663599

namespace A282451

/-- `A280411(or(A052928(n), A059841(n)))` -/
def P5294649353411663599.Spec : Prop :=
  ∀ n, P5294649353411663599.a n = A282451 n

end A282451

/-!
# A282452: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 475", based on the 5-celled von Neumann neighborhood.

The programs for A282452, the canonical program `A282452.P10611343078574645269` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282452 has offset 0).

The definition of A282452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282452.P17121993733547634148

`101*a(n-2)-100*a(n-4)` with `a(0)=1, a(1)=10, a(2)=111, a(3)=10`
-/

namespace A282452.P17121993733547634148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 111, 10] fun n a =>
  101 * a (n - 2) - 100 * a (n - 4)

end

end A282452.P17121993733547634148

namespace A282452

/-- `101*a(n-2)-100*a(n-4)` -/
def P17121993733547634148.Spec : Prop :=
  ∀ n, P17121993733547634148.a n = A282452 n

end A282452

/-! ## A282452.P10611343078574645269

`A094026(Δ[A266257(n)])`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A282452

/-- `A094026(Δ[A266257(n)])` -/
def P10611343078574645269.Spec : Prop :=
  ∀ n, P10611343078574645269.a n = A282452 n

theorem P10611343078574645269.correct : P10611343078574645269.Spec := by
  intro n
  simp only [A282452]

end A282452

/-! ## A282452.P16798571912375167319

`A094026(A266256(n+1))`
-/

namespace A282452.P16798571912375167319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A266256 (n + 1)).toNat

end

end A282452.P16798571912375167319

namespace A282452

/-- `A094026(A266256(n+1))` -/
def P16798571912375167319.Spec : Prop :=
  ∀ n, P16798571912375167319.a n = A282452 n

end A282452

/-! ## A282452.P10840910156072354673

`A284352(A124625(n+1))`
-/

namespace A282452.P10840910156072354673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284352 (A124625 (n + 1)).toNat

end

end A282452.P10840910156072354673

namespace A282452

/-- `A284352(A124625(n+1))` -/
def P10840910156072354673.Spec : Prop :=
  ∀ n, P10840910156072354673.a n = A282452 n

end A282452

/-! ## A282452.P16138345776158549254

`A282653(A141310(n)-1)`
-/

namespace A282452.P16138345776158549254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282653 (A141310 n - 1).toNat

end

end A282452.P16138345776158549254

namespace A282452

/-- `A282653(A141310(n)-1)` -/
def P16138345776158549254.Spec : Prop :=
  ∀ n, P16138345776158549254.a n = A282452 n

end A282452

/-! ## A282452.P7920569510279670966

`A284352(A141310(n)-1)`
-/

namespace A282452.P7920569510279670966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284352 (A141310 n - 1).toNat

end

end A282452.P7920569510279670966

namespace A282452

/-- `A284352(A141310(n)-1)` -/
def P7920569510279670966.Spec : Prop :=
  ∀ n, P7920569510279670966.a n = A282452 n

end A282452

/-! ## A282452.P5264117452020529166

`A290191(A141310(n)-1)`
-/

namespace A282452.P5264117452020529166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290191 (A141310 n - 1).toNat

end

end A282452.P5264117452020529166

namespace A282452

/-- `A290191(A141310(n)-1)` -/
def P5264117452020529166.Spec : Prop :=
  ∀ n, P5264117452020529166.a n = A282452 n

end A282452

/-! ## A282452.P13790578361749924984

`A290232(A141310(n)-1)`
-/

namespace A282452.P13790578361749924984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290232 (A141310 n - 1).toNat

end

end A282452.P13790578361749924984

namespace A282452

/-- `A290232(A141310(n)-1)` -/
def P13790578361749924984.Spec : Prop :=
  ∀ n, P13790578361749924984.a n = A282452 n

end A282452

/-! ## A282452.P8728627699113242109

`A094026(xor(1, A265723(n)))`
-/

namespace A282452.P8728627699113242109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (Int.xor 1 (A265723 n)).toNat

end

end A282452.P8728627699113242109

namespace A282452

/-- `A094026(xor(1, A265723(n)))` -/
def P8728627699113242109.Spec : Prop :=
  ∀ n, P8728627699113242109.a n = A282452 n

end A282452

/-! ## A282452.P15940045118035986869

`A282653(xor(1, A141310(n)))`
-/

namespace A282452.P15940045118035986869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282653 (Int.xor 1 (A141310 n)).toNat

end

end A282452.P15940045118035986869

namespace A282452

/-- `A282653(xor(1, A141310(n)))` -/
def P15940045118035986869.Spec : Prop :=
  ∀ n, P15940045118035986869.a n = A282452 n

end A282452

/-! ## A282452.P12817785349919972410

`A282412(n/A093178(n))`
-/

namespace A282452.P12817785349919972410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282412 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

end

end A282452.P12817785349919972410

namespace A282452

/-- `A282412(n/A093178(n))` -/
def P12817785349919972410.Spec : Prop :=
  ∀ n, P12817785349919972410.a n = A282452 n

end A282452

/-! ## A282452.P10287798584799906814

`A284352(n/A093178(n))`
-/

namespace A282452.P10287798584799906814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284352 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

end

end A282452.P10287798584799906814

namespace A282452

/-- `A284352(n/A093178(n))` -/
def P10287798584799906814.Spec : Prop :=
  ∀ n, P10287798584799906814.a n = A282452 n

end A282452

/-! ## A282452.P4103250552241314794

`A282412(gcd(n, A009531(n)))`
-/

namespace A282452.P4103250552241314794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282412 (Int.gcd (n : ℤ) (A009531 n))

end

end A282452.P4103250552241314794

namespace A282452

/-- `A282412(gcd(n, A009531(n)))` -/
def P4103250552241314794.Spec : Prop :=
  ∀ n, P4103250552241314794.a n = A282452 n

end A282452

/-! ## A282452.P4390078608318756120

`A286827(n^A056594(n²))`
-/

namespace A282452.P4390078608318756120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286827 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A056594 (n ^ 2) : ℤ))).toNat

end

end A282452.P4390078608318756120

namespace A282452

/-- `A286827(n^A056594(n²))` -/
def P4390078608318756120.Spec : Prop :=
  ∀ n, P4390078608318756120.a n = A282452 n

end A282452

/-! ## A282452.P7067142540899255883

`A286827(n^Δ[A110654(n)])`
-/

namespace A282452.P7067142540899255883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286827 (SequenceMachineLib.roundAway ((n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A282452.P7067142540899255883

namespace A282452

/-- `A286827(n^Δ[A110654(n)])` -/
def P7067142540899255883.Spec : Prop :=
  ∀ n, P7067142540899255883.a n = A282452 n

end A282452

/-! ## A282452.P13477317552902214070

`A094026(A267352(n+1)-1)`
-/

namespace A282452.P13477317552902214070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A267352 (n + 1) - 1).toNat

end

end A282452.P13477317552902214070

namespace A282452

/-- `A094026(A267352(n+1)-1)` -/
def P13477317552902214070.Spec : Prop :=
  ∀ n, P13477317552902214070.a n = A282452 n

end A282452

/-! ## A282452.P11559121962818531303

`A282412(1-A093178(n)+n)`
-/

namespace A282452.P11559121962818531303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282412 (1 - A093178 n + (n : ℤ)).toNat

end

end A282452.P11559121962818531303

namespace A282452

/-- `A282412(1-A093178(n)+n)` -/
def P11559121962818531303.Spec : Prop :=
  ∀ n, P11559121962818531303.a n = A282452 n

end A282452

/-! ## A282452.P5440115530342700317

`A284352(1-A093178(n)+n)`
-/

namespace A282452.P5440115530342700317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284352 (1 - A093178 n + (n : ℤ)).toNat

end

end A282452.P5440115530342700317

namespace A282452

/-- `A284352(1-A093178(n)+n)` -/
def P5440115530342700317.Spec : Prop :=
  ∀ n, P5440115530342700317.a n = A282452 n

end A282452

/-! ## A282452.P6919247977257871377

`A282412(1-(A093178(n)-n))`
-/

namespace A282452.P6919247977257871377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282412 (1 - (A093178 n - (n : ℤ))).toNat

end

end A282452.P6919247977257871377

namespace A282452

/-- `A282412(1-(A093178(n)-n))` -/
def P6919247977257871377.Spec : Prop :=
  ∀ n, P6919247977257871377.a n = A282452 n

end A282452

/-! ## A282452.P2151504536203260198

`A284352(1-(A093178(n)-n))`
-/

namespace A282452.P2151504536203260198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284352 (1 - (A093178 n - (n : ℤ))).toNat

end

end A282452.P2151504536203260198

namespace A282452

/-- `A284352(1-(A093178(n)-n))` -/
def P2151504536203260198.Spec : Prop :=
  ∀ n, P2151504536203260198.a n = A282452 n

end A282452

/-!
# A282453: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 475", based on the 5-celled von Neumann neighborhood.

The programs for A282453, the canonical program `A282453.P10479273479909990075` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282453 has offset 0).

The definition of A282453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282453.P8922672432405387526

`2^xor(1, n)-(n+1)%2`
-/

namespace A282453.P8922672432405387526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.xor 1 n : ℤ) - (((n + 1) % 2 : ℕ) : ℤ)

end

end A282453.P8922672432405387526

namespace A282453

/-- `2^xor(1, n)-(n+1)%2` -/
def P8922672432405387526.Spec : Prop :=
  ∀ n, P8922672432405387526.a n = A282453 n

end A282453

/-! ## A282453.P13310047358611840652

`2^xor(1, n)-(1-n%2)`
-/

namespace A282453.P13310047358611840652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.xor 1 n : ℤ) - (1 - ((n % 2 : ℕ) : ℤ))

end

end A282453.P13310047358611840652

namespace A282453

/-- `2^xor(1, n)-(1-n%2)` -/
def P13310047358611840652.Spec : Prop :=
  ∀ n, P13310047358611840652.a n = A282453 n

end A282453

/-! ## A282453.P4000869334814521261

`ogf((1+x+2x^2-x^3)/(1-5x^2+4x^4))`
-/

namespace A282453.P4000869334814521261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, -1] [1, 0, -5, 0, 4] n

end

end A282453.P4000869334814521261

namespace A282453

/-- `ogf((1+x+2x^2-x^3)/(1-5x^2+4x^4))` -/
def P4000869334814521261.Spec : Prop :=
  ∀ n, P4000869334814521261.a n = A282453 n

end A282453

/-! ## A282453.P10479273479909990075

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A282453

/-- `5*a(n-2)-4*a(n-4)` -/
def P10479273479909990075.Spec : Prop :=
  ∀ n, P10479273479909990075.a n = A282453 n

theorem P10479273479909990075.correct : P10479273479909990075.Spec := by
  intro n
  simp only [A282453]

end A282453

/-! ## A282453.P4134429399364374190

`A051049(xor(1, n))`
-/

namespace A282453.P4134429399364374190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 (Nat.xor 1 n)

end

end A282453.P4134429399364374190

namespace A282453

/-- `A051049(xor(1, n))` -/
def P4134429399364374190.Spec : Prop :=
  ∀ n, P4134429399364374190.a n = A282453 n

end A282453

/-! ## A282453.P14257525871268590303

`A141023(xor(1, n))+1`
-/

namespace A282453.P14257525871268590303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141023 (Nat.xor 1 n) + 1

end

end A282453.P14257525871268590303

namespace A282453

/-- `A141023(xor(1, n))+1` -/
def P14257525871268590303.Spec : Prop :=
  ∀ n, P14257525871268590303.a n = A282453 n

end A282453

/-! ## A282453.P14828813016062658448

`A052531(xor(1, n))-1`
-/

namespace A282453.P14828813016062658448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052531 (Nat.xor 1 n) - 1

end

end A282453.P14828813016062658448

namespace A282453

/-- `A052531(xor(1, n))-1` -/
def P14828813016062658448.Spec : Prop :=
  ∀ n, P14828813016062658448.a n = A282453 n

end A282453

/-! ## A282453.P5347307471698744975

`A140590(n)-gcd(2, n)`
-/

namespace A282453.P5347307471698744975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140590 n - (Nat.gcd 2 n : ℤ)

end

end A282453.P5347307471698744975

namespace A282453

/-- `A140590(n)-gcd(2, n)` -/
def P5347307471698744975.Spec : Prop :=
  ∀ n, P5347307471698744975.a n = A282453 n

end A282453

/-! ## A282453.P8426006954232776445

`A094360(n)-and(1, n)`
-/

namespace A282453.P8426006954232776445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094360 n - (Nat.land 1 n : ℤ)

end

end A282453.P8426006954232776445

namespace A282453

/-- `A094360(n)-and(1, n)` -/
def P8426006954232776445.Spec : Prop :=
  ∀ n, P8426006954232776445.a n = A282453 n

end A282453

/-! ## A282453.P13704357047413729525

`A051049(A004442(n))`
-/

namespace A282453.P13704357047413729525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 (A004442 n).toNat

end

end A282453.P13704357047413729525

namespace A282453

/-- `A051049(A004442(n))` -/
def P13704357047413729525.Spec : Prop :=
  ∀ n, P13704357047413729525.a n = A282453 n

end A282453

/-! ## A282453.P16863753038895793513

`A051049(log2(A135520(n)))`
-/

namespace A282453.P16863753038895793513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 (SequenceMachineLib.roundAway (Real.logb 2 (A135520 n : ℝ))).toNat

end

end A282453.P16863753038895793513

namespace A282453

/-- `A051049(log2(A135520(n)))` -/
def P16863753038895793513.Spec : Prop :=
  ∀ n, P16863753038895793513.a n = A282453 n

end A282453

/-! ## A282453.P13708556487709001042

`A106624(A014601(xor(1, n)))`
-/

namespace A282453.P13708556487709001042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (A014601 (Nat.xor 1 n)).toNat

end

end A282453.P13708556487709001042

namespace A282453

/-- `A106624(A014601(xor(1, n)))` -/
def P13708556487709001042.Spec : Prop :=
  ∀ n, P13708556487709001042.a n = A282453 n

end A282453

/-! ## A282453.P16197571854591191081

`A277800(n)+A080924(n)`
-/

namespace A282453.P16197571854591191081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277800 n + A080924 n

end

end A282453.P16197571854591191081

namespace A282453

/-- `A277800(n)+A080924(n)` -/
def P16197571854591191081.Spec : Prop :=
  ∀ n, P16197571854591191081.a n = A282453 n

end A282453

/-! ## A282453.P13314475371292512062

`A270797(n)+A092808(n)`
-/

namespace A282453.P13314475371292512062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270797 n + A092808 n

end

end A282453.P13314475371292512062

namespace A282453

/-- `A270797(n)+A092808(n)` -/
def P13314475371292512062.Spec : Prop :=
  ∀ n, P13314475371292512062.a n = A282453 n

end A282453

/-! ## A282453.P1995857220058048146

`A094360(n)-A000035(n)`
-/

namespace A282453.P1995857220058048146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094360 n - A000035 n

end

end A282453.P1995857220058048146

namespace A282453

/-- `A094360(n)-A000035(n)` -/
def P1995857220058048146.Spec : Prop :=
  ∀ n, P1995857220058048146.a n = A282453 n

end A282453

/-! ## A282453.P15526143950001122561

`A135520(n)-A059841(n)`
-/

namespace A282453.P15526143950001122561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135520 n - A059841 n

end

end A282453.P15526143950001122561

namespace A282453

/-- `A135520(n)-A059841(n)` -/
def P15526143950001122561.Spec : Prop :=
  ∀ n, P15526143950001122561.a n = A282453 n

end A282453

/-! ## A282453.P11177506119406796767

`A277867(n)-A225883(n)`
-/

namespace A282453.P11177506119406796767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277867 n - A225883 n

end

end A282453.P11177506119406796767

namespace A282453

/-- `A277867(n)-A225883(n)` -/
def P11177506119406796767.Spec : Prop :=
  ∀ n, P11177506119406796767.a n = A282453 n

end A282453

/-! ## A282453.P2806453600746282638

`A281500(n)-A284354(n)`
-/

namespace A282453.P2806453600746282638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281500 n - A284354 n

end

end A282453.P2806453600746282638

namespace A282453

/-- `A281500(n)-A284354(n)` -/
def P2806453600746282638.Spec : Prop :=
  ∀ n, P2806453600746282638.a n = A282453 n

end A282453

/-! ## A282453.P7515503819528772696

`A094361(n)%A048578(n)`
-/

namespace A282453.P7515503819528772696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094361 n) (A048578 n)

end

end A282453.P7515503819528772696

namespace A282453

/-- `A094361(n)%A048578(n)` -/
def P7515503819528772696.Spec : Prop :=
  ∀ n, P7515503819528772696.a n = A282453 n

end A282453

/-! ## A282453.P5151552034873089318

`xor(A080610(n), A092808(n))`
-/

namespace A282453.P5151552034873089318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080610 n) (A092808 n)

end

end A282453.P5151552034873089318

namespace A282453

/-- `xor(A080610(n), A092808(n))` -/
def P5151552034873089318.Spec : Prop :=
  ∀ n, P5151552034873089318.a n = A282453 n

end A282453

/-!
# A282454: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 475", based on the 5-celled von Neumann neighborhood.

The programs for A282454, the canonical program `A282454.P2078084053358203592` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282454 has offset 0).

The definition of A282454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282454.P11543208186529312076

`abs(2-gcd(2, n)^(n+1))+1`
-/

namespace A282454.P11543208186529312076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (Nat.gcd 2 n ^ (n + 1) : ℤ)| + 1

end

end A282454.P11543208186529312076

namespace A282454

/-- `abs(2-gcd(2, n)^(n+1))+1` -/
def P11543208186529312076.Spec : Prop :=
  ∀ n, P11543208186529312076.a n = A282454 n

end A282454

/-! ## A282454.P5570439811098349883

`2^or(1, n)-a(n-1)+1` with `a(0)=1`
-/

namespace A282454.P5570439811098349883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ Nat.lor 1 n : ℤ) - a (n - 1) + 1

end

end A282454.P5570439811098349883

namespace A282454

/-- `2^or(1, n)-a(n-1)+1` -/
def P5570439811098349883.Spec : Prop :=
  ∀ n, P5570439811098349883.a n = A282454 n

end A282454

/-! ## A282454.P2078084053358203592

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A282454

/-- `5*a(n-2)-4*a(n-4)` -/
def P2078084053358203592.Spec : Prop :=
  ∀ n, P2078084053358203592.a n = A282454 n

theorem P2078084053358203592.correct : P2078084053358203592.Spec := by
  intro n
  simp only [A282454]

end A282454

/-! ## A282454.P8552926110388965075

`xor(1, A279872(n))+1`
-/

namespace A282454.P8552926110388965075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A279872 n) + 1

end

end A282454.P8552926110388965075

namespace A282454

/-- `xor(1, A279872(n))+1` -/
def P8552926110388965075.Spec : Prop :=
  ∀ n, P8552926110388965075.a n = A282454 n

end A282454

/-! ## A282454.P17046797397530708118

`A084181(n)+and(1, n)`
-/

namespace A282454.P17046797397530708118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084181 n + (Nat.land 1 n : ℤ)

end

end A282454.P17046797397530708118

namespace A282454

/-- `A084181(n)+and(1, n)` -/
def P17046797397530708118.Spec : Prop :=
  ∀ n, P17046797397530708118.a n = A282454 n

end A282454

/-! ## A282454.P8071307359450684343

`2^(n+1)-A280412(n)`
-/

namespace A282454.P8071307359450684343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A280412 n

end

end A282454.P8071307359450684343

namespace A282454

/-- `2^(n+1)-A280412(n)` -/
def P8071307359450684343.Spec : Prop :=
  ∀ n, P8071307359450684343.a n = A282454 n

end A282454

/-! ## A282454.P13065490194954435339

`(A000225(n+1)-2)*char[2*n]+2`
-/

namespace A282454.P13065490194954435339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 1) - 2) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 2

end

end A282454.P13065490194954435339

namespace A282454

/-- `(A000225(n+1)-2)*char[2*n]+2` -/
def P13065490194954435339.Spec : Prop :=
  ∀ n, P13065490194954435339.a n = A282454 n

end A282454

/-! ## A282454.P16051687305210221375

`A000225(n*char[2*n]+1)+n%2`
-/

namespace A282454.P16051687305210221375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n * (if ∃ j, f1 j = n then 1 else 0) + 1) + ((n % 2 : ℕ) : ℤ)

end

end A282454.P16051687305210221375

namespace A282454

/-- `A000225(n*char[2*n]+1)+n%2` -/
def P16051687305210221375.Spec : Prop :=
  ∀ n, P16051687305210221375.a n = A282454 n

end A282454

/-! ## A282454.P1262421453718828676

`A084184(A141310(n))`
-/

namespace A282454.P1262421453718828676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084184 (A141310 n).toNat

end

end A282454.P1262421453718828676

namespace A282454

/-- `A084184(A141310(n))` -/
def P1262421453718828676.Spec : Prop :=
  ∀ n, P1262421453718828676.a n = A282454 n

end A282454

/-! ## A282454.P5239850272117796378

`A014551(A193356(n+1))`
-/

namespace A282454.P5239850272117796378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (A193356 (n + 1)).toNat

end

end A282454.P5239850272117796378

namespace A282454

/-- `A014551(A193356(n+1))` -/
def P5239850272117796378.Spec : Prop :=
  ∀ n, P5239850272117796378.a n = A282454 n

end A282454

/-! ## A282454.P7495968772726792007

`A094360(A124625(n+1))`
-/

namespace A282454.P7495968772726792007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094360 (A124625 (n + 1)).toNat

end

end A282454.P7495968772726792007

namespace A282454

/-- `A094360(A124625(n+1))` -/
def P7495968772726792007.Spec : Prop :=
  ∀ n, P7495968772726792007.a n = A282454 n

end A282454

/-! ## A282454.P11945943926078998467

`A052955(A265722(n+1))`
-/

namespace A282454.P11945943926078998467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A265722 (n + 1)).toNat

end

end A282454.P11945943926078998467

namespace A282454

/-- `A052955(A265722(n+1))` -/
def P11945943926078998467.Spec : Prop :=
  ∀ n, P11945943926078998467.a n = A282454 n

end A282454

/-! ## A282454.P12935371133892039945

`A387325(A266303(n+1))`
-/

namespace A282454.P12935371133892039945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387325 (A266303 (n + 1)).toNat

end

end A282454.P12935371133892039945

namespace A282454

/-- `A387325(A266303(n+1))` -/
def P12935371133892039945.Spec : Prop :=
  ∀ n, P12935371133892039945.a n = A282454 n

end A282454

/-! ## A282454.P17669832339965541278

`A084181(n)+A000035(n)`
-/

namespace A282454.P17669832339965541278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084181 n + A000035 n

end

end A282454.P17669832339965541278

namespace A282454

/-- `A084181(n)+A000035(n)` -/
def P17669832339965541278.Spec : Prop :=
  ∀ n, P17669832339965541278.a n = A282454 n

end A282454

/-! ## A282454.P3351718212558773114

`A279872(n)+A010673(n)`
-/

namespace A282454.P3351718212558773114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279872 n + A010673 n

end

end A282454.P3351718212558773114

namespace A282454

/-- `A279872(n)+A010673(n)` -/
def P3351718212558773114.Spec : Prop :=
  ∀ n, P3351718212558773114.a n = A282454 n

end A282454

/-! ## A282454.P13688673410395890735

`A281500(n)-A284353(n)`
-/

namespace A282454.P13688673410395890735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281500 n - A284353 n

end

end A282454.P13688673410395890735

namespace A282454

/-- `A281500(n)-A284353(n)` -/
def P13688673410395890735.Spec : Prop :=
  ∀ n, P13688673410395890735.a n = A282454 n

end A282454

/-! ## A282454.P6314579527222941780

`A000034(n)*A084181(n)`
-/

namespace A282454.P6314579527222941780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A084181 n

end

end A282454.P6314579527222941780

namespace A282454

/-- `A000034(n)*A084181(n)` -/
def P6314579527222941780.Spec : Prop :=
  ∀ n, P6314579527222941780.a n = A282454 n

end A282454

/-! ## A282454.P2349487865415318696

`gcd(A010675(n), A282655(n))`
-/

namespace A282454.P2349487865415318696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010675 n) (A282655 n)

end

end A282454.P2349487865415318696

namespace A282454

/-- `gcd(A010675(n), A282655(n))` -/
def P2349487865415318696.Spec : Prop :=
  ∀ n, (P2349487865415318696.a n : ℤ) = A282454 n

end A282454

/-! ## A282454.P18240458758523978811

`gcd(A010679(n), A282803(n))`
-/

namespace A282454.P18240458758523978811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010679 n) (A282803 n)

end

end A282454.P18240458758523978811

namespace A282454

/-- `gcd(A010679(n), A282803(n))` -/
def P18240458758523978811.Spec : Prop :=
  ∀ n, (P18240458758523978811.a n : ℤ) = A282454 n

end A282454

/-! ## A282454.P7682414720488150637

`gcd(A084099(n), A282414(n))`
-/

namespace A282454.P7682414720488150637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084099 n) (A282414 n)

end

end A282454.P7682414720488150637

namespace A282454

/-- `gcd(A084099(n), A282414(n))` -/
def P7682414720488150637.Spec : Prop :=
  ∀ n, (P7682414720488150637.a n : ℤ) = A282454 n

end A282454

/-!
# A282455: Repdigit numbers that are the sum of two nonzero squares.

The programs for A282455, there is no canonical definition to state claims against.
-/

/-! ## A282455.P8300721265917727526

`9*(A003146(xor(n, a(floor(n/2))))+2)` with `a(0)=2, a(1)=5, a(2)=8`
-/

namespace A282455.P8300721265917727526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 8] fun n a =>
  9 * (A003146 (Int.xor (n : ℤ) (a ⌊(n : ℚ) / 2⌋.toNat)).toNat + 2)

end

end A282455.P8300721265917727526

/-!
# A282457: Numbers k such that 7*10^k - 47 is prime.

The programs for A282457, there is no canonical definition to state claims against.
-/

/-! ## A282457.P8663047409712103153

`∑[A189965(A249390(n)²)]`
-/

namespace A282457.P8663047409712103153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189965 (A249390 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282457.P8663047409712103153

/-! ## A282457.P8560916239017496431

`∑[gcd(A329663(n+5), A329709(3*n))]`
-/

namespace A282457.P8560916239017496431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A329663 (n + 5)) (A329709 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282457.P8560916239017496431

/-! ## A282457.P12297034493022333089

`lt[A136020(n+2), A006218(A343881(2*(n+3)))]`
-/

namespace A282457.P12297034493022333089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136020 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A343881 (2 * (n + 3))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A282457.P12297034493022333089

/-! ## A282457.P14615939501989570281

`lt[A059657(n+3), A121028(A343881(2*(n+3)))]`
-/

namespace A282457.P14615939501989570281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059657 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121028 (A343881 (2 * (n + 3))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A282457.P14615939501989570281

/-!
# A282459: Number of composite numbers of the form 2*n - 2^k + 1 (k > 0, 2^k < 2*n + 1).

The programs for A282459, there is no canonical definition to state claims against.
-/

/-! ## A282459.P1432850488676101227

`A057354(A000120(Δ[A020695(n)]))`
-/

namespace A282459.P1432850488676101227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A000120 (f1 (n + 1) - f1 n).toNat).toNat

end

end A282459.P1432850488676101227

/-! ## A282459.P17348386780701793249

`A051764(A213651(∑[n]))`
-/

namespace A282459.P17348386780701793249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051764 (A213651 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A282459.P17348386780701793249

/-! ## A282459.P11154569391057567524

`A076489(A008763(n+4)*A370890(2*n+1))`
-/

namespace A282459.P11154569391057567524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A008763 (n + 4) * A370890 (2 * n + 1)).toNat

end

end A282459.P11154569391057567524

/-! ## A282459.P10654531015001945685

`A068307(n+1)%A240698(A008000(3*n+4))`
-/

namespace A282459.P10654531015001945685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068307 (n + 1)) (A240698 (A008000 (3 * n + 4)).toNat)

end

end A282459.P10654531015001945685

/-! ## A282459.P225917803398586183

`A025901(2*(n+1))+A008683(A080054(3*(n+1)))`
-/

namespace A282459.P225917803398586183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025901 (2 * (n + 1)) + A008683 (A080054 (3 * (n + 1))).toNat

end

end A282459.P225917803398586183

/-!
# A282460: Number of groups of order n^2.

The programs for A282460, there is no canonical definition to state claims against.
-/

/-! ## A282460.P14261573180947382283

`A000001(n²)`
-/

namespace A282460.P14261573180947382283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n ^ 2)

end

end A282460.P14261573180947382283

/-! ## A282460.P15081625541915917574

`sqrt(A297420(n²))`
-/

namespace A282460.P15081625541915917574
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297420 (n ^ 2) : ℝ)

end

end A282460.P15081625541915917574

/-! ## A282460.P14883682786940489271

`and(-1, A000001(A000290(n)))`
-/

namespace A282460.P14883682786940489271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A000001 (A000290 n).toNat)

end

end A282460.P14883682786940489271

/-! ## A282460.P656528531194152388

`A000001(A000290(n)+char[2])+char[2]`
-/

namespace A282460.P656528531194152388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A000290 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A282460.P656528531194152388

/-! ## A282460.P14132997161526986059

`A000001(n^ceil(atan(n)))*A057427(n)`
-/

namespace A282460.P14132997161526986059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat * A057427 n

end

end A282460.P14132997161526986059

/-!
# A282462: Integers but with the primes cubed.

The programs for A282462, the canonical program `A282462.P16013334496872017195` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282462 has offset 0).

The definition of A282462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282462.P16290354318911836134

`n*gcd(n, A007918(n))²`
-/

namespace A282462.P16290354318911836134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (n : ℤ) (A007918 n) ^ 2

end

end A282462.P16290354318911836134

namespace A282462

/-- `n*gcd(n, A007918(n))²` -/
def P16290354318911836134.Spec : Prop :=
  ∀ n, (P16290354318911836134.a n : ℤ) = A282462 n

end A282462

/-! ## A282462.P17487875472876954326

`n*gcd(n², A030664(n))`
-/

namespace A282462.P17487875472876954326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (n ^ 2 : ℤ) (A030664 n)

end

end A282462.P17487875472876954326

namespace A282462

/-- `n*gcd(n², A030664(n))` -/
def P17487875472876954326.Spec : Prop :=
  ∀ n, (P17487875472876954326.a n : ℤ) = A282462 n

end A282462

/-! ## A282462.P3317253680826855754

`n^(C(2, A003415(n))+1)`
-/

namespace A282462.P3317253680826855754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (Nat.choose 2 (A003415 n).toNat + 1)

end

end A282462.P3317253680826855754

namespace A282462

/-- `n^(C(2, A003415(n))+1)` -/
def P3317253680826855754.Spec : Prop :=
  ∀ n, (P3317253680826855754.a n : ℤ) = A282462 n

end A282462

/-! ## A282462.P16013334496872017195

`(n+1)*(A103164(n)-n)+n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A282462

/-- `(n+1)*(A103164(n)-n)+n` -/
def P16013334496872017195.Spec : Prop :=
  ∀ n, P16013334496872017195.a n = A282462 n

theorem P16013334496872017195.correct : P16013334496872017195.Spec := by
  intro n
  simp only [A282462]

end A282462

/-! ## A282462.P4123798850807023832

`n^gcd(3, char[A020639(n+2)]+2)`
-/

namespace A282462.P4123798850807023832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.gcd 3 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2)

end

end A282462.P4123798850807023832

namespace A282462

/-- `n^gcd(3, char[A020639(n+2)]+2)` -/
def P4123798850807023832.Spec : Prop :=
  ∀ n, (P4123798850807023832.a n : ℤ) = A282462 n

end A282462

/-! ## A282462.P522460870302158591

`n*A089026(A028310(n))²`
-/

namespace A282462.P522460870302158591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A089026 (A028310 n).toNat ^ 2

end

end A282462.P522460870302158591

namespace A282462

/-- `n*A089026(A028310(n))²` -/
def P522460870302158591.Spec : Prop :=
  ∀ n, P522460870302158591.a n = A282462 n

end A282462

/-! ## A282462.P4690873278566449167

`A103164(n)²/A028310(n)`
-/

namespace A282462.P4690873278566449167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103164 n ^ 2 : ℚ) / (A028310 n : ℚ)

end

end A282462.P4690873278566449167

namespace A282462

/-- `A103164(n)²/A028310(n)` -/
def P4690873278566449167.Spec : Prop :=
  ∀ n, P4690873278566449167.a n = (A282462 n : ℚ)

end A282462

/-! ## A282462.P10877992157062834955

`n^A038722(C(n, A007918(n))+1)`
-/

namespace A282462.P10877992157062834955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A038722 (Nat.choose n (A007918 n).toNat + 1) : ℤ)

end

end A282462.P10877992157062834955

namespace A282462

/-- `n^A038722(C(n, A007918(n))+1)` -/
def P10877992157062834955.Spec : Prop :=
  ∀ n, P10877992157062834955.a n = (A282462 n : ℚ)

end A282462

/-! ## A282462.P17794113714895268820

`n*A000290(A103164(n)/A028310(n))`
-/

namespace A282462.P17794113714895268820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000290 (SequenceMachineLib.roundAway ((A103164 n : ℚ) / (A028310 n : ℚ))).toNat

end

end A282462.P17794113714895268820

namespace A282462

/-- `n*A000290(A103164(n)/A028310(n))` -/
def P17794113714895268820.Spec : Prop :=
  ∀ n, P17794113714895268820.a n = A282462 n

end A282462

/-! ## A282462.P17064110527407295922

`n*A103164(A103164(n)/A028310(n))`
-/

namespace A282462.P17064110527407295922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A103164 (SequenceMachineLib.roundAway ((A103164 n : ℚ) / (A028310 n : ℚ))).toNat

end

end A282462.P17064110527407295922

namespace A282462

/-- `n*A103164(A103164(n)/A028310(n))` -/
def P17064110527407295922.Spec : Prop :=
  ∀ n, P17064110527407295922.a n = A282462 n

end A282462

/-! ## A282462.P6889071349659310249

`n*A014973(A257088(n))²`
-/

namespace A282462.P6889071349659310249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014973 (A257088 n).toNat ^ 2

end

end A282462.P6889071349659310249

namespace A282462

/-- `n*A014973(A257088(n))²` -/
def P6889071349659310249.Spec : Prop :=
  ∀ n, P6889071349659310249.a n = A282462 n

end A282462

/-! ## A282462.P10784125303872525738

`n^A014963(A308669(∑{e}[n, #]+1))`
-/

namespace A282462.P10784125303872525738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A014963 (A308669 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)).toNat : ℤ)

end

end A282462.P10784125303872525738

namespace A282462

/-- `n^A014963(A308669(∑{e}[n, #]+1))` -/
def P10784125303872525738.Spec : Prop :=
  ∀ n, P10784125303872525738.a n = (A282462 n : ℚ)

end A282462

/-! ## A282462.P4588337939061241569

`n*A295665(A008578(n+1))²`
-/

namespace A282462.P4588337939061241569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A295665 (A008578 (n + 1)).toNat ^ 2

end

end A282462.P4588337939061241569

namespace A282462

/-- `n*A295665(A008578(n+1))²` -/
def P4588337939061241569.Spec : Prop :=
  ∀ n, P4588337939061241569.a n = A282462 n

end A282462

/-! ## A282462.P14950240840045043658

`n*gcd(A249803(n+1), A322702(n+1))²`
-/

namespace A282462.P14950240840045043658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (A249803 (n + 1)) (A322702 (n + 1)) ^ 2

end

end A282462.P14950240840045043658

namespace A282462

/-- `n*gcd(A249803(n+1), A322702(n+1))²` -/
def P14950240840045043658.Spec : Prop :=
  ∀ n, (P14950240840045043658.a n : ℤ) = A282462 n

end A282462

/-! ## A282462.P11490554095008108708

`n*gcd(A001405(n), A038700(n+1))²`
-/

namespace A282462.P11490554095008108708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (A001405 n) (A038700 (n + 1)) ^ 2

end

end A282462.P11490554095008108708

namespace A282462

/-- `n*gcd(A001405(n), A038700(n+1))²` -/
def P11490554095008108708.Spec : Prop :=
  ∀ n, (P11490554095008108708.a n : ℤ) = A282462 n

end A282462

/-! ## A282462.P15871848716331307142

`n*A014963(A127812(n))²`
-/

namespace A282462.P15871848716331307142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014963 (A127812 n).toNat ^ 2

end

end A282462.P15871848716331307142

namespace A282462

/-- `n*A014963(A127812(n))²` -/
def P15871848716331307142.Spec : Prop :=
  ∀ n, P15871848716331307142.a n = A282462 n

end A282462

/-! ## A282462.P15414526431257958032

`n*gcd(A005843(n), A038699(n+1))²`
-/

namespace A282462.P15414526431257958032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (A005843 n) (A038699 (n + 1)) ^ 2

end

end A282462.P15414526431257958032

namespace A282462

/-- `n*gcd(A005843(n), A038699(n+1))²` -/
def P15414526431257958032.Spec : Prop :=
  ∀ n, (P15414526431257958032.a n : ℤ) = A282462 n

end A282462

/-! ## A282462.P241342052529688619

`n*A014963(A030664(n))²`
-/

namespace A282462.P241342052529688619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014963 (A030664 n).toNat ^ 2

end

end A282462.P241342052529688619

namespace A282462

/-- `n*A014963(A030664(n))²` -/
def P241342052529688619.Spec : Prop :=
  ∀ n, P241342052529688619.a n = A282462 n

end A282462

/-! ## A282462.P11118737508860987808

`A000290(lcm(n, A103164(n)))/A028310(n)`
-/

namespace A282462.P11118737508860987808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (Int.lcm (n : ℤ) (A103164 n)) : ℚ) / (A028310 n : ℚ)

end

end A282462.P11118737508860987808

namespace A282462

/-- `A000290(lcm(n, A103164(n)))/A028310(n)` -/
def P11118737508860987808.Spec : Prop :=
  ∀ n, P11118737508860987808.a n = (A282462 n : ℚ)

end A282462

/-!
# A282463: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with x,y,z,w nonnegative integers, x == y (mod 2) and z <= w such that both x and x^2 + 62*x*y + y^2 are squares.

The programs for A282463, there is no canonical definition to state claims against.
-/

/-! ## A282463.P5047060452141214005

`A265917(lcm(A005408(n), A038208(n)))`
-/

namespace A282463.P5047060452141214005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265917 (Int.lcm (A005408 n) (A038208 n))

end

end A282463.P5047060452141214005

/-! ## A282463.P5343631500269508773

`A001221(or(2^n+n, ∑[n+4]))`
-/

namespace A282463.P5343631500269508773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.lor (2 ^ n + n) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A282463.P5343631500269508773

/-! ## A282463.P3750418946031835263

`A300712(lt[ceil(xor(1, n)/2), 9-(-1)^n])`
-/

namespace A282463.P3750418946031835263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300712 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A282463.P3750418946031835263

/-! ## A282463.P1109165246499174523

`A086014((6*n+2)²)+1-char[2^n-1]`
-/

namespace A282463.P1109165246499174523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086014 ((6 * n + 2) ^ 2) + (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A282463.P1109165246499174523

/-! ## A282463.P1029188510746093492

`A001221(A301716(n)+2^n-n)`
-/

namespace A282463.P1029188510746093492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A301716 n + ((2 ^ n : ℤ) - (n : ℤ))).toNat

end

end A282463.P1029188510746093492

/-!
# A282464: a(n) = Sum_{i=0..n} i*Fibonacci(i)^2.

The programs for A282464, the canonical program `A282464.P101039133801469205` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282464 has offset 0).

The definition of A282464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282464.P13691504584842999743

`∑[n*round(ϕ^n/sqrt(5))²]`
-/

namespace A282464.P13691504584842999743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282464.P13691504584842999743

namespace A282464

/-- `∑[n*round(ϕ^n/sqrt(5))²]` -/
def P13691504584842999743.Spec : Prop :=
  ∀ n, P13691504584842999743.a n = A282464 n

end A282464

/-! ## A282464.P224473492692042558

`2*∑[A169630(n)/2]`
-/

namespace A282464.P224473492692042558
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169630 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282464.P224473492692042558

namespace A282464

/-- `2*∑[A169630(n)/2]` -/
def P224473492692042558.Spec : Prop :=
  ∀ n, P224473492692042558.a n = (A282464 n : ℚ)

end A282464

/-! ## A282464.P12217486280493518311

`∑[n*A175395(n)]/2`
-/

namespace A282464.P12217486280493518311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A175395 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A282464.P12217486280493518311

namespace A282464

/-- `∑[n*A175395(n)]/2` -/
def P12217486280493518311.Spec : Prop :=
  ∀ n, P12217486280493518311.a n = (A282464 n : ℚ)

end A282464

/-! ## A282464.P101039133801469205

`floor(∑[n*A295680(2*n+1)/2])`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A282464

/-- `floor(∑[n*A295680(2*n+1)/2])` -/
def P101039133801469205.Spec : Prop :=
  ∀ n, P101039133801469205.a n = A282464 n

theorem P101039133801469205.correct : P101039133801469205.Spec := by
  intro n
  simp only [A282464]

end A282464

/-! ## A282464.P2227998814789715717

`A007814(2*n+1)+∑[A169630(n)]`
-/

namespace A282464.P2227998814789715717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282464.P2227998814789715717

namespace A282464

/-- `A007814(2*n+1)+∑[A169630(n)]` -/
def P2227998814789715717.Spec : Prop :=
  ∀ n, P2227998814789715717.a n = A282464 n

end A282464

/-! ## A282464.P5653478584382209645

`∑[2*n*2*floor(A187893(n)/3)²]/4`
-/

namespace A282464.P5653478584382209645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (2 * ⌊(A187893 n : ℚ) / 3⌋ ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A282464.P5653478584382209645

namespace A282464

/-- `∑[2*n*2*floor(A187893(n)/3)²]/4` -/
def P5653478584382209645.Spec : Prop :=
  ∀ n, P5653478584382209645.a n = (A282464 n : ℚ)

end A282464

/-! ## A282464.P8575779585524189441

`∑[A169630(n+1)]-A169630(n+1)`
-/

namespace A282464.P8575779585524189441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A169630 (n + 1)

end

end A282464.P8575779585524189441

namespace A282464

/-- `∑[A169630(n+1)]-A169630(n+1)` -/
def P8575779585524189441.Spec : Prop :=
  ∀ n, P8575779585524189441.a n = A282464 n

end A282464

/-! ## A282464.P2104514027149840941

`floor(∑[n*A045925(n)²/A253909(n)])`
-/

namespace A282464.P2104514027149840941
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A045925 n ^ 2 : ℚ) / (A253909 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A282464.P2104514027149840941

namespace A282464

/-- `floor(∑[n*A045925(n)²/A253909(n)])` -/
def P2104514027149840941.Spec : Prop :=
  ∀ n, P2104514027149840941.a n = A282464 n

end A282464

/-! ## A282464.P18220773267802453204

`∑[A169630(n)]%A169634(n)`
-/

namespace A282464.P18220773267802453204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A169634 n)

end

end A282464.P18220773267802453204

namespace A282464

/-- `∑[A169630(n)]%A169634(n)` -/
def P18220773267802453204.Spec : Prop :=
  ∀ n, P18220773267802453204.a n = A282464 n

end A282464

/-!
# A282465: a(n) = 11*Fibonacci(n+3) + Fibonacci(n-8) with n>=0.

The programs for A282465, the canonical program `A282465.P5780392656488001113` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282465 has offset 0).

The definition of A282465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282465.P5780392656488001113

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=46`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A282465

/-- `a(n-1)+a(n-2)` -/
def P5780392656488001113.Spec : Prop :=
  ∀ n, (P5780392656488001113.a n : ℤ) = A282465 n

theorem P5780392656488001113.correct : P5780392656488001113.Spec := by
  intro n
  simp only [A282465]

end A282465

/-! ## A282465.P10199691745226934797

`A022360(n)+A022110(n)`
-/

namespace A282465.P10199691745226934797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022360 n + A022110 n

end

end A282465.P10199691745226934797

namespace A282465

/-- `A022360(n)+A022110(n)` -/
def P10199691745226934797.Spec : Prop :=
  ∀ n, P10199691745226934797.a n = A282465 n

end A282465

/-! ## A282465.P9143258508052303622

`A022361(n)+A022109(n)`
-/

namespace A282465.P9143258508052303622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022361 n + A022109 n

end

end A282465.P9143258508052303622

namespace A282465

/-- `A022361(n)+A022109(n)` -/
def P9143258508052303622.Spec : Prop :=
  ∀ n, P9143258508052303622.a n = A282465 n

end A282465

/-! ## A282465.P16504437412973277146

`A022362(n)+A022108(n)`
-/

namespace A282465.P16504437412973277146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022362 n + A022108 n

end

end A282465.P16504437412973277146

namespace A282465

/-- `A022362(n)+A022108(n)` -/
def P16504437412973277146.Spec : Prop :=
  ∀ n, P16504437412973277146.a n = A282465 n

end A282465

/-! ## A282465.P16556370795834070144

`A022363(n)+A022107(n)`
-/

namespace A282465.P16556370795834070144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022363 n + A022107 n

end

end A282465.P16556370795834070144

namespace A282465

/-- `A022363(n)+A022107(n)` -/
def P16556370795834070144.Spec : Prop :=
  ∀ n, P16556370795834070144.a n = A282465 n

end A282465

/-! ## A282465.P15954251916375713508

`A022364(n)+A022106(n)`
-/

namespace A282465.P15954251916375713508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022364 n + A022106 n

end

end A282465.P15954251916375713508

namespace A282465

/-- `A022364(n)+A022106(n)` -/
def P15954251916375713508.Spec : Prop :=
  ∀ n, P15954251916375713508.a n = A282465 n

end A282465

/-! ## A282465.P17369389224826958618

`A022365(n)+A022105(n)`
-/

namespace A282465.P17369389224826958618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022365 n + A022105 n

end

end A282465.P17369389224826958618

namespace A282465

/-- `A022365(n)+A022105(n)` -/
def P17369389224826958618.Spec : Prop :=
  ∀ n, P17369389224826958618.a n = A282465 n

end A282465

/-! ## A282465.P3552832647538533209

`A022366(n)+A022104(n)`
-/

namespace A282465.P3552832647538533209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022366 n + A022104 n

end

end A282465.P3552832647538533209

namespace A282465

/-- `A022366(n)+A022104(n)` -/
def P3552832647538533209.Spec : Prop :=
  ∀ n, P3552832647538533209.a n = A282465 n

end A282465

/-! ## A282465.P18418654987747311189

`A022391(n)+A022359(n)`
-/

namespace A282465.P18418654987747311189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022391 n + A022359 n

end

end A282465.P18418654987747311189

namespace A282465

/-- `A022391(n)+A022359(n)` -/
def P18418654987747311189.Spec : Prop :=
  ∀ n, P18418654987747311189.a n = A282465 n

end A282465

/-! ## A282465.P14628208096668329681

`A022392(n)+A022358(n)`
-/

namespace A282465.P14628208096668329681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022392 n + A022358 n

end

end A282465.P14628208096668329681

namespace A282465

/-- `A022392(n)+A022358(n)` -/
def P14628208096668329681.Spec : Prop :=
  ∀ n, P14628208096668329681.a n = A282465 n

end A282465

/-! ## A282465.P14206203050558728851

`A022393(n)+A022357(n)`
-/

namespace A282465.P14206203050558728851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022393 n + A022357 n

end

end A282465.P14206203050558728851

namespace A282465

/-- `A022393(n)+A022357(n)` -/
def P14206203050558728851.Spec : Prop :=
  ∀ n, P14206203050558728851.a n = A282465 n

end A282465

/-! ## A282465.P6833349497770407795

`A022394(n)+A022356(n)`
-/

namespace A282465.P6833349497770407795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022394 n + A022356 n

end

end A282465.P6833349497770407795

namespace A282465

/-- `A022394(n)+A022356(n)` -/
def P6833349497770407795.Spec : Prop :=
  ∀ n, P6833349497770407795.a n = A282465 n

end A282465

/-! ## A282465.P13551999260343961134

`A022395(n)+A022355(n)`
-/

namespace A282465.P13551999260343961134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022395 n + A022355 n

end

end A282465.P13551999260343961134

namespace A282465

/-- `A022395(n)+A022355(n)` -/
def P13551999260343961134.Spec : Prop :=
  ∀ n, P13551999260343961134.a n = A282465 n

end A282465

/-! ## A282465.P16681376716236413054

`A022396(n)+A022354(n)`
-/

namespace A282465.P16681376716236413054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022396 n + A022354 n

end

end A282465.P16681376716236413054

namespace A282465

/-- `A022396(n)+A022354(n)` -/
def P16681376716236413054.Spec : Prop :=
  ∀ n, P16681376716236413054.a n = A282465 n

end A282465

/-! ## A282465.P4050270155642217020

`A022397(n)+A022353(n)`
-/

namespace A282465.P4050270155642217020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022397 n + A022353 n

end

end A282465.P4050270155642217020

namespace A282465

/-- `A022397(n)+A022353(n)` -/
def P4050270155642217020.Spec : Prop :=
  ∀ n, P4050270155642217020.a n = A282465 n

end A282465

/-! ## A282465.P13875607300192279906

`A022398(n)+A022352(n)`
-/

namespace A282465.P13875607300192279906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022398 n + A022352 n

end

end A282465.P13875607300192279906

namespace A282465

/-- `A022398(n)+A022352(n)` -/
def P13875607300192279906.Spec : Prop :=
  ∀ n, P13875607300192279906.a n = A282465 n

end A282465

/-! ## A282465.P5353783689089215492

`A022399(n)+A022351(n)`
-/

namespace A282465.P5353783689089215492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022399 n + A022351 n

end

end A282465.P5353783689089215492

namespace A282465

/-- `A022399(n)+A022351(n)` -/
def P5353783689089215492.Spec : Prop :=
  ∀ n, P5353783689089215492.a n = A282465 n

end A282465

/-! ## A282465.P9206645280097378564

`A022400(n)+A022350(n)`
-/

namespace A282465.P9206645280097378564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022400 n + A022350 n

end

end A282465.P9206645280097378564

namespace A282465

/-- `A022400(n)+A022350(n)` -/
def P9206645280097378564.Spec : Prop :=
  ∀ n, P9206645280097378564.a n = A282465 n

end A282465

/-! ## A282465.P15362970401190427431

`A022401(n)+A022349(n)`
-/

namespace A282465.P15362970401190427431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022401 n + A022349 n

end

end A282465.P15362970401190427431

namespace A282465

/-- `A022401(n)+A022349(n)` -/
def P15362970401190427431.Spec : Prop :=
  ∀ n, P15362970401190427431.a n = A282465 n

end A282465

/-! ## A282465.P8589124606246797665

`A022402(n)+A022348(n)`
-/

namespace A282465.P8589124606246797665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022402 n + A022348 n

end

end A282465.P8589124606246797665

namespace A282465

/-- `A022402(n)+A022348(n)` -/
def P8589124606246797665.Spec : Prop :=
  ∀ n, P8589124606246797665.a n = A282465 n

end A282465

/-!
# A282466: a(n) = n*a(n-1) + n!, with n>0, a(0)=5.

The programs for A282466, the canonical program `A282466.P16704046355038367061` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282466 has offset 0).

The definition of A282466 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)+n!` (program `A282466.P16704046355038367061`, by `A282466.P16704046355038367061.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A282466.P768370664696145371

`(n+5)*n!`
-/

namespace A282466.P768370664696145371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 5) * Nat.factorial n

end

end A282466.P768370664696145371

namespace A282466

/-- `(n+5)*n!` -/
def P768370664696145371.Spec : Prop :=
  ∀ n, (P768370664696145371.a n : ℤ) = A282466 n

end A282466

/-! ## A282466.P16704046355038367061

`n*a(n-1)+n!` with `a(0)=5`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A282466

/-- `n*a(n-1)+n!` -/
def P16704046355038367061.Spec : Prop :=
  ∀ n, (P16704046355038367061.a n : ℤ) = A282466 n

theorem P16704046355038367061.correct : P16704046355038367061.Spec := by
  intro n
  simp only [A282466]

end A282466

/-! ## A282466.P16836554277772830473

`(n+5)*∏[round(1/acot(n))]`
-/

namespace A282466.P16836554277772830473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A282466.P16836554277772830473

namespace A282466

/-- `(n+5)*∏[round(1/acot(n))]` -/
def P16836554277772830473.Spec : Prop :=
  ∀ n, P16836554277772830473.a n = A282466 n

end A282466

/-! ## A282466.P818321767376341087

`(n+5)*∏[ceil(abs(γ-n))]`
-/

namespace A282466.P818321767376341087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A282466.P818321767376341087

namespace A282466

/-- `(n+5)*∏[ceil(abs(γ-n))]` -/
def P818321767376341087.Spec : Prop :=
  ∀ n, P818321767376341087.a n = A282466 n

end A282466

/-! ## A282466.P8345240552328100497

`n!+a(n-1)/tan(acot(n))` with `a(0)=5`
-/

namespace A282466.P8345240552328100497
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [5] fun n a =>
  (Nat.factorial n : ℝ) + a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A282466.P8345240552328100497

namespace A282466

/-- `n!+a(n-1)/tan(acot(n))` -/
def P8345240552328100497.Spec : Prop :=
  ∀ n, P8345240552328100497.a n = (A282466 n : ℝ)

end A282466

/-! ## A282466.P1682920393091857

`n!+a(n-1)/cot(atan(n))` with `a(0)=5`
-/

namespace A282466.P1682920393091857
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [5] fun n a =>
  (Nat.factorial n : ℝ) + a (n - 1) / Real.cot (Real.arctan (n : ℝ))

end

end A282466.P1682920393091857

namespace A282466

/-- `n!+a(n-1)/cot(atan(n))` -/
def P1682920393091857.Spec : Prop :=
  ∀ n, P1682920393091857.a n = (A282466 n : ℝ)

end A282466

/-! ## A282466.P10263537802054749350

`n!+a(n-1)/n^-1` with `a(0)=5`
-/

namespace A282466.P10263537802054749350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  (Nat.factorial n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A282466.P10263537802054749350

namespace A282466

/-- `n!+a(n-1)/n^-1` -/
def P10263537802054749350.Spec : Prop :=
  ∀ n, P10263537802054749350.a n = (A282466 n : ℚ)

end A282466

/-! ## A282466.P14472667486406678032

`∏[floor(acot(n)+n)]+n*a(n-1)` with `a(0)=5`
-/

namespace A282466.P14472667486406678032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * a (n - 1)

end

end A282466.P14472667486406678032

namespace A282466

/-- `∏[floor(acot(n)+n)]+n*a(n-1)` -/
def P14472667486406678032.Spec : Prop :=
  ∀ n, P14472667486406678032.a n = A282466 n

end A282466

/-! ## A282466.P5111380818775865323

`∏[n+1]/(n+1)+n*a(n-1)` with `a(0)=5`
-/

namespace A282466.P5111380818775865323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) + (n : ℚ) * a (n - 1)

end

end A282466.P5111380818775865323

namespace A282466

/-- `∏[n+1]/(n+1)+n*a(n-1)` -/
def P5111380818775865323.Spec : Prop :=
  ∀ n, P5111380818775865323.a n = (A282466 n : ℚ)

end A282466

/-! ## A282466.P2503900324397976988

`∏[round(1/acot(n))]+a(n-1)/n^-1` with `a(0)=5`
-/

namespace A282466.P2503900324397976988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A282466.P2503900324397976988

namespace A282466

/-- `∏[round(1/acot(n))]+a(n-1)/n^-1` -/
def P2503900324397976988.Spec : Prop :=
  ∀ n, P2503900324397976988.a n = (A282466 n : ℚ)

end A282466

/-!
# A282467: Number of partitions of n which are not the partitions into (one or more) consecutive parts.

The programs for A282467, there is no canonical definition to state claims against.
-/

/-! ## A282467.P1593475227396892581

`A000041(n+1)-A001227(n+1)`
-/

namespace A282467.P1593475227396892581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A001227 (n + 1)

end

end A282467.P1593475227396892581

/-! ## A282467.P10433496053431302616

`A183063(n+1)+A144300(n+1)`
-/

namespace A282467.P10433496053431302616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + A144300 (n + 1)

end

end A282467.P10433496053431302616

/-! ## A282467.P12049137023286715357

`A195364(n+1)-A099777(n+1)`
-/

namespace A282467.P12049137023286715357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195364 (n + 1) - A099777 (n + 1)

end

end A282467.P12049137023286715357

/-! ## A282467.P6517500274373596503

`A000065(n+1)+1-A001227(n+1)`
-/

namespace A282467.P6517500274373596503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + (1 - A001227 (n + 1))

end

end A282467.P6517500274373596503

/-! ## A282467.P14066570234169606701

`A195364(n+1)-A000005(2*(n+1))`
-/

namespace A282467.P14066570234169606701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195364 (n + 1) - A000005 (2 * (n + 1))

end

end A282467.P14066570234169606701

/-! ## A282467.P4299658244006939466

`A000041(n+1)-∑{d}[n+1, A000035(#)]`
-/

namespace A282467.P4299658244006939466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A000035 d

end

end A282467.P4299658244006939466

/-! ## A282467.P11435086853617130001

`A000041(n+1)-A000005(A000265(n+1))`
-/

namespace A282467.P11435086853617130001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A000005 (A000265 (n + 1)).toNat

end

end A282467.P11435086853617130001

/-! ## A282467.P7095111678492042315

`A000041(n+1)-A000005(A336158(n+1))`
-/

namespace A282467.P7095111678492042315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A000005 (A336158 (n + 1)).toNat

end

end A282467.P7095111678492042315

/-! ## A282467.P9556440122543695474

`A000005(n+1)+A000041(n+1)-A099777(n+1)`
-/

namespace A282467.P9556440122543695474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A000041 (n + 1) - A099777 (n + 1))

end

end A282467.P9556440122543695474

/-! ## A282467.P16383234120338290575

`A000041(n+1)+A183063(n+1)-A000005(n+1)`
-/

namespace A282467.P16383234120338290575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A183063 (n + 1) - A000005 (n + 1))

end

end A282467.P16383234120338290575

/-! ## A282467.P14116022455644985427

`A000041(n+1)+A238007(n+1)-A000009(n+1)`
-/

namespace A282467.P14116022455644985427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A238007 (n + 1) - A000009 (n + 1))

end

end A282467.P14116022455644985427

/-! ## A282467.P8224009547632120876

`A000041(n+1)+A238005(n+1)-A003056(n+1)`
-/

namespace A282467.P8224009547632120876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A238005 (n + 1) - A003056 (n + 1))

end

end A282467.P8224009547632120876

/-! ## A282467.P13642034264265635501

`A000041(n+1)-A000005(n+1)/A001511(n+1)`
-/

namespace A282467.P13642034264265635501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (n + 1) : ℚ) - (A000005 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A282467.P13642034264265635501

/-! ## A282467.P18171957924430735235

`A000041(n+1)-A335841(n+1)/A000005(n+1)`
-/

namespace A282467.P18171957924430735235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (n + 1) : ℚ) - (A335841 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A282467.P18171957924430735235

/-! ## A282467.P8948556506818664872

`A000070(n+1)-(A001227(n+1)+A000070(n))`
-/

namespace A282467.P8948556506818664872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - (A001227 (n + 1) + A000070 n)

end

end A282467.P8948556506818664872

/-! ## A282467.P8791065808190259552

`A000041(n+1)-A091954(2*(n+1))`
-/

namespace A282467.P8791065808190259552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A091954 (2 * (n + 1))

end

end A282467.P8791065808190259552

/-! ## A282467.P2411935402445382867

`A000041(n+1)-A299480(2*n+1)`
-/

namespace A282467.P2411935402445382867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A299480 (2 * n + 1)

end

end A282467.P2411935402445382867

/-! ## A282467.P11717402358533069403

`A000041(n+1)-(A111775(2*(n+1))+1)`
-/

namespace A282467.P11717402358533069403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A111775 (2 * (n + 1)) + 1)

end

end A282467.P11717402358533069403

/-! ## A282467.P7307950036560554588

`A304991(n+1)/A000009(n+1)-A001227(n+1)`
-/

namespace A282467.P7307950036560554588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304991 (n + 1) : ℚ) / (A000009 (n + 1) : ℚ) - (A001227 (n + 1) : ℚ)

end

end A282467.P7307950036560554588

/-!
# A282470: Q-toothpick sequence with Q-toothpicks of radius 1 and 2 (see Comments for precise definition).

The programs for A282470, there is no canonical definition to state claims against.
-/

/-! ## A282470.P1944789706207521017

`∑[A282471(n)]`
-/

namespace A282470.P1944789706207521017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282470.P1944789706207521017

/-! ## A282470.P18021839548996933995

`∑[gcd(2, n)*A187211(n)]`
-/

namespace A282470.P18021839548996933995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A187211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282470.P18021839548996933995

/-! ## A282470.P15808943435235944903

`∑[A040001(n)*A187211(n)]`
-/

namespace A282470.P15808943435235944903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A187211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282470.P15808943435235944903

/-! ## A282470.P12102303158393151039

`∑[A134451(n)*A187211(n)]`
-/

namespace A282470.P12102303158393151039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n * A187211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282470.P12102303158393151039

/-! ## A282470.P16089985230528806780

`∑[Δ[A007494(n)]*A187211(n)]`
-/

namespace A282470.P16089985230528806780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A187211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282470.P16089985230528806780

/-! ## A282470.P17803797556051047850

`∑[A000034(n+1)*A187211(n)]`
-/

namespace A282470.P17803797556051047850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A187211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282470.P17803797556051047850

/-! ## A282470.P8058015019050900338

`∑[2/A000034(n)*A187211(n)]`
-/

namespace A282470.P8058015019050900338
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A187211 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282470.P8058015019050900338

/-! ## A282470.P11835744047037205354

`∑[A000005(∑[(-1)^n]+1)*A187211(n)-1]+n+1`
-/

namespace A282470.P11835744047037205354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat * A187211 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A282470.P11835744047037205354

/-! ## A282470.P15954955336487332143

`∑[A014963(2*A020639(n+2))*A187211(n)]`
-/

namespace A282470.P15954955336487332143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A020639 (n + 2)).toNat * A187211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282470.P15954955336487332143

/-!
# A282471: First differences of A282470.

The programs for A282471, there is no canonical definition to state claims against.
-/

/-! ## A282471.P16070715097108079965

`gcd(2, n)*A187211(n)`
-/

namespace A282471.P16070715097108079965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A187211 n

end

end A282471.P16070715097108079965

/-! ## A282471.P2246011564274780375

`A040001(n)*A187211(n)`
-/

namespace A282471.P2246011564274780375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A187211 n

end

end A282471.P2246011564274780375

/-! ## A282471.P8352994503115085285

`A134451(n)*A187211(n)`
-/

namespace A282471.P8352994503115085285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n * A187211 n

end

end A282471.P8352994503115085285

/-! ## A282471.P3582593904233681006

`log2(A040003(n))*A187211(n)`
-/

namespace A282471.P3582593904233681006
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A040003 n : ℝ) * (A187211 n : ℝ)

end

end A282471.P3582593904233681006

/-! ## A282471.P15562150201262916041

`dr(A280193(n))*A187211(n)`
-/

namespace A282471.P15562150201262916041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A280193 n) : ℤ) * A187211 n

end

end A282471.P15562150201262916041

/-! ## A282471.P5256324603236330496

`Δ[A007494(n)]*A187211(n)`
-/

namespace A282471.P5256324603236330496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A187211 n

end

end A282471.P5256324603236330496

/-! ## A282471.P9800128675189296440

`A000034(n+1)*A187211(n)`
-/

namespace A282471.P9800128675189296440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A187211 n

end

end A282471.P9800128675189296440

/-! ## A282471.P9206479463420161262

`2/A000034(n)*A187211(n)`
-/

namespace A282471.P9206479463420161262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A187211 n : ℚ)

end

end A282471.P9206479463420161262

/-! ## A282471.P11826382308776028022

`A000005((-1)^n+2)*A187211(n)`
-/

namespace A282471.P11826382308776028022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((-1) ^ n + 2).toNat * A187211 n

end

end A282471.P11826382308776028022

/-! ## A282471.P15342662355680176697

`A000045(∑{d}[n, round(1/#)]+1)*A187211(n)`
-/

namespace A282471.P15342662355680176697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (1 / (d : ℚ)) + 1).toNat * A187211 n

end

end A282471.P15342662355680176697

/-!
# A282473: Multiples of 9 which cannot be expressed as the difference between a natural number k and its digit sum s(k).

The programs for A282473, the canonical program `A282473.P17884941203573586449` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282473 has offset 1).

The definition of A282473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282473.P17884941203573586449

`9*A065438(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A282473

/-- `9*A065438(n+1)` -/
def P17884941203573586449.Spec : Prop :=
  ∀ n, P17884941203573586449.a n = A282473 (n + 1)

theorem P17884941203573586449.correct : P17884941203573586449.Spec := by
  intro n
  simp only [A282473, Nat.add_sub_cancel]

end A282473

/-! ## A282473.P15020663036223396483

`A008591(A065438(n+1))`
-/

namespace A282473.P15020663036223396483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A065438 (n + 1)).toNat

end

end A282473.P15020663036223396483

namespace A282473

/-- `A008591(A065438(n+1))` -/
def P15020663036223396483.Spec : Prop :=
  ∀ n, P15020663036223396483.a n = A282473 (n + 1)

end A282473

/-! ## A282473.P5907002296272419685

`9*eq[11*floor(n/10)-n, gcd(11, n)]`
-/

namespace A282473.P5907002296272419685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 11 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A282473.P5907002296272419685

namespace A282473

/-- `9*eq[11*floor(n/10)-n, gcd(11, n)]` -/
def P5907002296272419685.Spec : Prop :=
  ∀ n, (P5907002296272419685.a n : ℤ) = A282473 (n + 1)

end A282473

/-! ## A282473.P9148455883332841687

`A010732(A341705(n))*A095778(n+1)`
-/

namespace A282473.P9148455883332841687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010732 (A341705 n).toNat * A095778 (n + 1)

end

end A282473.P9148455883332841687

namespace A282473

/-- `A010732(A341705(n))*A095778(n+1)` -/
def P9148455883332841687.Spec : Prop :=
  ∀ n, P9148455883332841687.a n = A282473 (n + 1)

end A282473

/-!
# A282475: Number of n X 2 0..1 arrays with no 1 equal to more than three of its king-move neighbors, with the exception of exactly two elements.

The programs for A282475, there is no canonical definition to state claims against.
-/

/-! ## A282475.P14693112262631519859

`A282481(∑[n+1]+2)`
-/

namespace A282475.P14693112262631519859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A282475.P14693112262631519859

/-! ## A282475.P10716181101990685353

`A282481(A000096(n)+3)%A162814(n)`
-/

namespace A282475.P10716181101990685353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282481 (A000096 n + 3).toNat) (A162814 n)

end

end A282475.P10716181101990685353

/-! ## A282475.P3042154803118164504

`lcm(A000034(n), A282481(A000096(n)+3))`
-/

namespace A282475.P3042154803118164504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A282481 (A000096 n + 3).toNat)

end

end A282475.P3042154803118164504

/-! ## A282475.P9481082372090108541

`A086767(2*n)*A282481(A000096(n)+3)`
-/

namespace A282475.P9481082372090108541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 (2 * n) * A282481 (A000096 n + 3).toNat

end

end A282475.P9481082372090108541

/-! ## A282475.P3228469769143452454

`A000034(2*n)*A282481(A000096(n+1))`
-/

namespace A282475.P3228469769143452454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A282481 (A000096 (n + 1)).toNat

end

end A282475.P3228469769143452454

/-!
# A282476: Number of nX3 0..1 arrays with no 1 equal to more than three of its king-move neighbors, with the exception of exactly two elements.

The programs for A282476, there is no canonical definition to state claims against.
-/

/-! ## A282476.P6204505785914297914

`A282481(∑[n+2]+4)`
-/

namespace A282476.P6204505785914297914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282476.P6204505785914297914

/-! ## A282476.P360964769471513365

`A282481(A167614(n+1))+A000007(n+1)`
-/

namespace A282476.P360964769471513365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A282476.P360964769471513365

/-! ## A282476.P9812887649432826078

`A086767(2*n)*A282481(A167614(n+1))`
-/

namespace A282476.P9812887649432826078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 (2 * n) * A282481 (A167614 (n + 1)).toNat

end

end A282476.P9812887649432826078

/-! ## A282476.P3532060029685929621

`A282481(A167614(n+1))%A003617(n+1)`
-/

namespace A282476.P3532060029685929621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282481 (A167614 (n + 1)).toNat) (A003617 (n + 1))

end

end A282476.P3532060029685929621

/-! ## A282476.P8011668032920344979

`lcm(A282481(A167614(n+1)), A324113(n+3))`
-/

namespace A282476.P8011668032920344979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A282481 (A167614 (n + 1)).toNat) (A324113 (n + 3))

end

end A282476.P8011668032920344979

/-!
# A282477: Number of n X 4 0..1 arrays with no 1 equal to more than three of its king-move neighbors, with the exception of exactly two elements.

The programs for A282477, there is no canonical definition to state claims against.
-/

/-! ## A282477.P14086434531724162331

`A282481(A374004(n+1))`
-/

namespace A282477.P14086434531724162331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (A374004 (n + 1)).toNat

end

end A282477.P14086434531724162331

/-! ## A282477.P13288967310926415881

`A282481(A141214(n)+7)`
-/

namespace A282477.P13288967310926415881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (A141214 n + 7).toNat

end

end A282477.P13288967310926415881

/-! ## A282477.P11461489601968004746

`A282481(A167614(n+2)+1)`
-/

namespace A282477.P11461489601968004746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (A167614 (n + 2) + 1).toNat

end

end A282477.P11461489601968004746

/-! ## A282477.P1462360016762969719

`A282481(A166136(n+2)-2)`
-/

namespace A282477.P1462360016762969719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (A166136 (n + 2) - 2).toNat

end

end A282477.P1462360016762969719

/-! ## A282477.P6422461021261977279

`A282481(A166136(n+1)+1+n)`
-/

namespace A282477.P6422461021261977279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A282477.P6422461021261977279

/-!
# A282478: Number of nX5 0..1 arrays with no 1 equal to more than three of its king-move neighbors, with the exception of exactly two elements.

The programs for A282478, there is no canonical definition to state claims against.
-/

/-! ## A282478.P14958293239112024006

`A282481(A374005(n+1))`
-/

namespace A282478.P14958293239112024006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (A374005 (n + 1)).toNat

end

end A282478.P14958293239112024006

/-! ## A282478.P10547314496339486482

`A282481(A167499(n+3))`
-/

namespace A282478.P10547314496339486482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (A167499 (n + 3)).toNat

end

end A282478.P10547314496339486482

/-! ## A282478.P18149640285413175358

`A282481(A155212(n)+13)`
-/

namespace A282478.P18149640285413175358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (A155212 n + 13).toNat

end

end A282478.P18149640285413175358

/-! ## A282478.P7682784739546534290

`A282481(A056000(n)+15)`
-/

namespace A282478.P7682784739546534290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (A056000 n + 15).toNat

end

end A282478.P7682784739546534290

/-! ## A282478.P17924084302345762161

`A282481(eq[7, A066657(n)])`
-/

namespace A282478.P17924084302345762161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282478.P17924084302345762161

/-!
# A282479: Number of nX6 0..1 arrays with no 1 equal to more than three of its king-move neighbors, with the exception of exactly two elements.

The programs for A282479, there is no canonical definition to state claims against.
-/

/-! ## A282479.P13702032275626729820

`A282481(A374007(n+1))`
-/

namespace A282479.P13702032275626729820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (A374007 (n + 1)).toNat

end

end A282479.P13702032275626729820

/-! ## A282479.P644844808814423833

`A282481(eq[7, A131818(n+1)])`
-/

namespace A282479.P644844808814423833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282479.P644844808814423833

/-! ## A282479.P18023768347294292077

`A282481(A052905(n+3))`
-/

namespace A282479.P18023768347294292077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (A052905 (n + 3)).toNat

end

end A282479.P18023768347294292077

/-! ## A282479.P12918197496460182325

`A282481(eq[5, A193592(n)])`
-/

namespace A282479.P12918197496460182325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282479.P12918197496460182325

/-! ## A282479.P7204933229270115429

`A282481(eq[16, A209439(n)])`
-/

namespace A282479.P7204933229270115429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282479.P7204933229270115429

/-!
# A282480: Number of nX7 0..1 arrays with no 1 equal to more than three of its king-move neighbors, with the exception of exactly two elements.

The programs for A282480, there is no canonical definition to state claims against.
-/

/-! ## A282480.P10887260219652767656

`A282481(A374008(n+1))`
-/

namespace A282480.P10887260219652767656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (A374008 (n + 1)).toNat

end

end A282480.P10887260219652767656

/-! ## A282480.P7686152020834139726

`A282481(eq[11, A066657(n)])`
-/

namespace A282480.P7686152020834139726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282480.P7686152020834139726

/-! ## A282480.P9525952447383436054

`A282481(eq[8, A131818(n+1)])`
-/

namespace A282480.P9525952447383436054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282480.P9525952447383436054

/-! ## A282480.P11415894736805177357

`A282481(A055999(n+4))`
-/

namespace A282480.P11415894736805177357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (A055999 (n + 4)).toNat

end

end A282480.P11415894736805177357

/-! ## A282480.P12673002454444744083

`A282481(eq[6, A193592(n)])`
-/

namespace A282480.P12673002454444744083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282480.P12673002454444744083

/-!
# A282481: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than three of its king-move neighbors, with the exception of exactly two elements.

The programs for A282481, there is no canonical definition to state claims against.
-/

/-! ## A282481.P11890473464620704720

`A281165(n+1)+A004019(A230398(n+1))`
-/

namespace A282481.P11890473464620704720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281165 (n + 1) + A004019 (A230398 (n + 1)).toNat

end

end A282481.P11890473464620704720

/-!
# A282482: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 478", based on the 5-celled von Neumann neighborhood.

The programs for A282482, there is no canonical definition to state claims against.
-/

/-! ## A282482.P15494553406035286640

`A000042(n+1)-A282915(A028310(n))`
-/

namespace A282482.P15494553406035286640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A282915 (A028310 n).toNat

end

end A282482.P15494553406035286640

/-! ## A282482.P12960658910193511072

`A282483(n)+A282916(n)-A282915(n)`
-/

namespace A282482.P12960658910193511072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282483 n + (A282916 n - A282915 n)

end

end A282482.P12960658910193511072

/-! ## A282482.P12347819638872312201

`A000042(n+1)-A282915(A000007(n)+n)`
-/

namespace A282482.P12347819638872312201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A282915 (A000007 n + (n : ℤ)).toNat

end

end A282482.P12347819638872312201

/-! ## A282482.P7766255539796769170

`A000042(n+1)-A282915(n)%A000042(n+1)`
-/

namespace A282482.P7766255539796769170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.tmod (A282915 n) (A000042 (n + 1))

end

end A282482.P7766255539796769170

/-! ## A282482.P11883813329938854704

`A000042(n+1)-A282915(n)%A059435(n)`
-/

namespace A282482.P11883813329938854704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.tmod (A282915 n) (A059435 n)

end

end A282482.P11883813329938854704

/-!
# A282483: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 478", based on the 5-celled von Neumann neighborhood.

The programs for A282483, there is no canonical definition to state claims against.
-/

/-! ## A282483.P2312440440391747338

`A000042(n+1)-A282916(A028310(n))`
-/

namespace A282483.P2312440440391747338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A282916 (A028310 n).toNat

end

end A282483.P2312440440391747338

/-! ## A282483.P16684736059484608087

`A002275(n+1)-A282916(A028310(n))`
-/

namespace A282483.P16684736059484608087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) - A282916 (A028310 n).toNat

end

end A282483.P16684736059484608087

/-! ## A282483.P14907023948270031842

`A000042(n+1)-A282916(A000007(n)+n)`
-/

namespace A282483.P14907023948270031842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A282916 (A000007 n + (n : ℤ)).toNat

end

end A282483.P14907023948270031842

/-! ## A282483.P3447132449953862225

`A000042(n+1)-A282916(A151935(n)+n)`
-/

namespace A282483.P3447132449953862225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A282916 (A151935 n + (n : ℤ)).toNat

end

end A282483.P3447132449953862225

/-! ## A282483.P6760061955960403347

`A007088(A282485(n))`
-/

namespace A282483.P6760061955960403347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282485 n).toNat

end

end A282483.P6760061955960403347

/-!
# A282484: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 478", based on the 5-celled von Neumann neighborhood.

The programs for A282484, there is no canonical definition to state claims against.
-/

/-! ## A282484.P12117872689421214834

`A126646(n)-A282917(A028310(n))`
-/

namespace A282484.P12117872689421214834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A282917 (A028310 n).toNat

end

end A282484.P12117872689421214834

/-! ## A282484.P7720945873345238554

`xor(A077896(A004277(n)), A282917(n))`
-/

namespace A282484.P7720945873345238554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A004277 n).toNat) (A282917 n)

end

end A282484.P7720945873345238554

/-! ## A282484.P2151517287600804441

`∑[A000079(n)]-A282917(A028310(n))`
-/

namespace A282484.P2151517287600804441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A282917 (A028310 n).toNat

end

end A282484.P2151517287600804441

/-! ## A282484.P15837942546839093236

`A282485(n)+A282918(n)-A282917(n)`
-/

namespace A282484.P15837942546839093236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282485 n + (A282918 n - A282917 n)

end

end A282484.P15837942546839093236

/-! ## A282484.P11500444093405533947

`A126646(n)-A282917(n)%A000079(n)`
-/

namespace A282484.P11500444093405533947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A282917 n) (A000079 n)

end

end A282484.P11500444093405533947

/-! ## A282484.P5425651120133020839

`record[A130330(n)]-A282917(A028310(n))`
-/

namespace A282484.P5425651120133020839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A282917 (A028310 n).toNat

end

end A282484.P5425651120133020839

/-!
# A282485: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 478", based on the 5-celled von Neumann neighborhood.

The programs for A282485, there is no canonical definition to state claims against.
-/

/-! ## A282485.P18239750455853424128

`A126646(n)-A282918(A028310(n))`
-/

namespace A282485.P18239750455853424128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A282918 (A028310 n).toNat

end

end A282485.P18239750455853424128

/-! ## A282485.P12316112090153104961

`xor(A077896(A004277(n)), A282918(n))`
-/

namespace A282485.P12316112090153104961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A004277 n).toNat) (A282918 n)

end

end A282485.P12316112090153104961

/-! ## A282485.P2087424740294064318

`∑[A000079(n)]-A282918(A028310(n))`
-/

namespace A282485.P2087424740294064318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A282918 (A028310 n).toNat

end

end A282485.P2087424740294064318

/-! ## A282485.P17357758177784818593

`A282484(n)+A282917(n)-A282918(n)`
-/

namespace A282485.P17357758177784818593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282484 n + (A282917 n - A282918 n)

end

end A282485.P17357758177784818593

/-! ## A282485.P17784336677424319177

`xor(A282918(n)%A126646(n), A126646(n))`
-/

namespace A282485.P17784336677424319177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A282918 n) (A126646 n)) (A126646 n)

end

end A282485.P17784336677424319177

/-!
# A282486: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 481", based on the 5-celled von Neumann neighborhood.

The programs for A282486, there is no canonical definition to state claims against.
-/

/-! ## A282486.P12957780493496085937

`A007088(A282488(n))`
-/

namespace A282486.P12957780493496085937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282488 n).toNat

end

end A282486.P12957780493496085937

/-! ## A282486.P12137895697648027913

`A185544(2*A282488(n))`
-/

namespace A282486.P12137895697648027913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282488 n).toNat

end

end A282486.P12137895697648027913

/-!
# A282487: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 481", based on the 5-celled von Neumann neighborhood.

The programs for A282487, there is no canonical definition to state claims against.
-/

/-! ## A282487.P15514749583082146368

`A007088(A282489(n))`
-/

namespace A282487.P15514749583082146368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282489 n).toNat

end

end A282487.P15514749583082146368

/-! ## A282487.P10595071901456566805

`A185544(2*A282489(n))`
-/

namespace A282487.P10595071901456566805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282489 n).toNat

end

end A282487.P10595071901456566805

/-!
# A282490: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 483", based on the 5-celled von Neumann neighborhood.

The programs for A282490, there is no canonical definition to state claims against.
-/

/-! ## A282490.P1054991990682143654

`A007088(A282492(n))`
-/

namespace A282490.P1054991990682143654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282492 n).toNat

end

end A282490.P1054991990682143654

/-! ## A282490.P12614798015895315539

`A185544(2*A282492(n))`
-/

namespace A282490.P12614798015895315539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282492 n).toNat

end

end A282490.P12614798015895315539

/-!
# A282491: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 483", based on the 5-celled von Neumann neighborhood.

The programs for A282491, there is no canonical definition to state claims against.
-/

/-! ## A282491.P1431065120559932103

`A007088(A282493(n))`
-/

namespace A282491.P1431065120559932103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282493 n).toNat

end

end A282491.P1431065120559932103

/-! ## A282491.P11638353982662209723

`A185544(2*A282493(n))`
-/

namespace A282491.P11638353982662209723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282493 n).toNat

end

end A282491.P11638353982662209723

/-!
# A282496: 'Somos expansion' of Pi: Pi=a(0)*sqrt(a(1)*sqrt(a(2)*sqrt(a(3)*sqrt(...)))). a(n)=floor(x(n)), x(n)=x(n-1)^2/a(n-1)^2, x(0)=Pi.

The programs for A282496, there is no canonical definition to state claims against.
-/

/-! ## A282496.P10677920640511342070

`A124010(or(A002324(n+1), A225511(n+1)))`
-/

namespace A282496.P10677920640511342070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (Int.lor (A002324 (n + 1)) (A225511 (n + 1))).toNat

end

end A282496.P10677920640511342070

/-! ## A282496.P18247662589182949413

`Δ[lt[A114579(n+1), A114578(2*(n+1))]]`
-/

namespace A282496.P18247662589182949413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114579 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114578 (2 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A282496.P18247662589182949413

/-! ## A282496.P6847271578662111050

`A103921(gcd(A056581(2*(n+1)), A186492(2*n+1)))`
-/

namespace A282496.P6847271578662111050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (Int.gcd (A056581 (2 * (n + 1))) (A186492 (2 * n + 1)))

end

end A282496.P6847271578662111050

/-! ## A282496.P9029454589450515542

`A109004(p?[A213922(n+1)]²)`
-/

namespace A282496.P9029454589450515542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A282496.P9029454589450515542

/-!
# A282497: 'Somos expansion' of e: e=a(0)*sqrt(a(1)*sqrt(a(2)*sqrt(a(3)*sqrt(...)))). a(n)=floor(x(n)), x(n)=x(n-1)^2/a(n-1)^2, x(0)=e.

The programs for A282497, there is no canonical definition to state claims against.
-/

/-! ## A282497.P7134584780405516160

`A110569(lcm(5, A123655(n+1)))`
-/

namespace A282497.P7134584780405516160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110569 (Int.lcm 5 (A123655 (n + 1)))

end

end A282497.P7134584780405516160

/-! ## A282497.P4524889364659160057

`A206437(A241945(n+1)+A055998(n))`
-/

namespace A282497.P4524889364659160057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206437 (A241945 (n + 1) + A055998 n).toNat

end

end A282497.P4524889364659160057

/-! ## A282497.P4021827781711503192

`A030368(C(A030355(2*n+3), A030348(n+1)))`
-/

namespace A282497.P4021827781711503192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030368 (Nat.choose (A030355 (2 * n + 3)).toNat (A030348 (n + 1)).toNat)

end

end A282497.P4021827781711503192

/-! ## A282497.P7808328963103568539

`a(A138107(A077168(n-1)))` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A282497.P7808328963103568539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  a (A138107 (A077168 (n - 1)).toNat).toNat

end

end A282497.P7808328963103568539

/-! ## A282497.P3291348007415434571

`A055874(A090166(n)+A008619(n))`
-/

namespace A282497.P3291348007415434571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (A090166 n + A008619 n).toNat

end

end A282497.P3291348007415434571

/-!
# A282498: a(n) = nearest integer to Pi*prime(n).

The programs for A282498, there is no canonical definition to state claims against.
-/

/-! ## A282498.P12638256341758935282

`round(π*p?[abs(xor(n, -2))])`
-/

namespace A282498.P12638256341758935282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A282498.P12638256341758935282

/-! ## A282498.P453307391802873566

`round(π*p?[xor(1, n)+1])`
-/

namespace A282498.P453307391802873566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ))

end

end A282498.P453307391802873566

/-! ## A282498.P4057493589315580723

`round(π*p?[ceil(2/acot(n))])`
-/

namespace A282498.P4057493589315580723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A282498.P4057493589315580723

/-! ## A282498.P18156058145093231081

`round(π*p?[n-(-1)^n])`
-/

namespace A282498.P18156058145093231081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A282498.P18156058145093231081

/-! ## A282498.P15947446880312239342

`round(4*p?[round(8*n/7)]*atan(1))`
-/

namespace A282498.P15947446880312239342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) * Real.arctan (1 : ℝ))

end

end A282498.P15947446880312239342

/-! ## A282498.P3530554949086271298

`round(4*p?[round(8*n/7)]*acot(1))`
-/

namespace A282498.P3530554949086271298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) * SequenceMachineLib.acot (1 : ℝ))

end

end A282498.P3530554949086271298

/-! ## A282498.P13881064398935451950

`round(π*A000040(n+1))`
-/

namespace A282498.P13881064398935451950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A000040 (n + 1) : ℝ))

end

end A282498.P13881064398935451950

/-! ## A282498.P13592638354517918240

`record[round(π*A006530(n+2))]`
-/

namespace A282498.P13592638354517918240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A006530 (n + 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282498.P13592638354517918240

/-! ## A282498.P1742733306440789923

`record[round(π*A020639(n+2))]`
-/

namespace A282498.P1742733306440789923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A020639 (n + 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282498.P1742733306440789923

/-! ## A282498.P15719926744274446995

`round(π*∏{d}[A000040(2*n-(n-1)), #])`
-/

namespace A282498.P15719926744274446995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * ((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℝ))

end

end A282498.P15719926744274446995

