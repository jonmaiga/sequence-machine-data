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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A126603: Number of real {0,1}-matrices of size n X n which are not robust (cf. A125587).

The programs for A126603, there is no canonical definition to state claims against.
-/

/-! ## A126603.P1308605242803787172

`∏[A004171(n)]-A125587(n+1)`
-/

namespace A126603.P1308605242803787172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A125587 (n + 1)

end

end A126603.P1308605242803787172

/-!
# A126604: a(1) = 4; a(2) = 3; for n > 2, a(n) = a(n-1)^2 + a(n-1) - 1.

The programs for A126604, the canonical program `A126604.P5489784188653651786` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126604 has offset 1).

The definition of A126604 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+a(n-1)-1` (program `A126604.P5489784188653651786`, by `A126604.P5489784188653651786.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126604.P5489784188653651786

`a(n-1)²+a(n-1)-1` with `a(0)=4, a(1)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126604

/-- `a(n-1)²+a(n-1)-1` -/
def P5489784188653651786.Spec : Prop :=
  ∀ n, P5489784188653651786.a n = A126604 (n + 1)

theorem P5489784188653651786.correct : P5489784188653651786.Spec := by
  intro n
  simp only [A126604, Nat.add_sub_cancel]

end A126604

/-! ## A126604.P14596023851258116194

`a(n-1)-(1-a(n-1)²)` with `a(0)=4, a(1)=3`
-/

namespace A126604.P14596023851258116194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n a =>
  a (n - 1) - (1 - a (n - 1) ^ 2)

end

end A126604.P14596023851258116194

namespace A126604

/-- `a(n-1)-(1-a(n-1)²)` -/
def P14596023851258116194.Spec : Prop :=
  ∀ n, P14596023851258116194.a n = A126604 (n + 1)

theorem P14596023851258116194.correct : P14596023851258116194.Spec := by
  intro n
  simp only [A126604, Nat.add_sub_cancel, A126604.P14596023851258116194.a, A126604.P5489784188653651786.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A126604

/-! ## A126604.P826927750906783065

`(a(n-1)+1)*a(n-1)-1` with `a(0)=4, a(1)=3`
-/

namespace A126604.P826927750906783065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n a =>
  (a (n - 1) + 1) * a (n - 1) - 1

end

end A126604.P826927750906783065

namespace A126604

/-- `(a(n-1)+1)*a(n-1)-1` -/
def P826927750906783065.Spec : Prop :=
  ∀ n, P826927750906783065.a n = A126604 (n + 1)

theorem P826927750906783065.correct : P826927750906783065.Spec := by
  intro n
  simp only [A126604, Nat.add_sub_cancel, A126604.P826927750906783065.a, A126604.P5489784188653651786.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A126604

/-! ## A126604.P1877854406889012798

`a(n-1)-(1-a(n-1)*a(n-1))` with `a(0)=4, a(1)=3`
-/

namespace A126604.P1877854406889012798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n a =>
  a (n - 1) - (1 - a (n - 1) * a (n - 1))

end

end A126604.P1877854406889012798

namespace A126604

/-- `a(n-1)-(1-a(n-1)*a(n-1))` -/
def P1877854406889012798.Spec : Prop :=
  ∀ n, P1877854406889012798.a n = A126604 (n + 1)

theorem P1877854406889012798.correct : P1877854406889012798.Spec := by
  intro n
  simp only [A126604, Nat.add_sub_cancel, A126604.P1877854406889012798.a, A126604.P5489784188653651786.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A126604

/-! ## A126604.P6092994954026803931

`xor(6, A275698(n))`
-/

namespace A126604.P6092994954026803931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A275698 n)

end

end A126604.P6092994954026803931

namespace A126604

/-- `xor(6, A275698(n))` -/
def P6092994954026803931.Spec : Prop :=
  ∀ n, P6092994954026803931.a n = A126604 (n + 1)

end A126604

/-!
# A126606: Fixed point of transformation of the seed sequence {0,2}.

The programs for A126606, the canonical program `A126606.P13163570229275066813` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126606 has offset 1).

The definition of A126606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126606.P13163570229275066813

`2*A002487(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A126606

/-- `2*A002487(n)` -/
def P13163570229275066813.Spec : Prop :=
  ∀ n, P13163570229275066813.a n = A126606 (n + 1)

theorem P13163570229275066813.correct : P13163570229275066813.Spec := by
  intro n
  simp only [A126606, Nat.add_sub_cancel]

end A126606

/-! ## A126606.P8139042336749064823

`a(n-1)+a(n-2)-2*a(n-2)%a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A126606.P8139042336749064823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + (a (n - 2) - 2 * Int.tmod (a (n - 2)) (a (n - 1)))

end

end A126606.P8139042336749064823

namespace A126606

/-- `a(n-1)+a(n-2)-2*a(n-2)%a(n-1)` -/
def P8139042336749064823.Spec : Prop :=
  ∀ n, P8139042336749064823.a n = A126606 (n + 1)

end A126606

/-! ## A126606.P16675610483467741782

`2*(n-A284013(n))`
-/

namespace A126606.P16675610483467741782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A284013 n)

end

end A126606.P16675610483467741782

namespace A126606

/-- `2*(n-A284013(n))` -/
def P16675610483467741782.Spec : Prop :=
  ∀ n, P16675610483467741782.a n = A126606 (n + 1)

theorem P16675610483467741782.correct : P16675610483467741782.Spec := by
  intro n
  simp only [A126606, Nat.add_sub_cancel, A126606.P16675610483467741782.a, A126606.P13163570229275066813.a, A002487, A002487.P6236436194084017932.a, A284013, A284013.P1136611558935881771.a, A000120, A000120.P2816527436160941581.a, A168081, A168081.P16359451533663323532.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126606

/-! ## A126606.P7820900968738334151

`2*∑{d}[n, A317839(#)]`
-/

namespace A126606.P7820900968738334151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A317839 d)

end

end A126606.P7820900968738334151

namespace A126606

/-- `2*∑{d}[n, A317839(#)]` -/
def P7820900968738334151.Spec : Prop :=
  ∀ n, P7820900968738334151.a n = A126606 (n + 1)

end A126606

/-! ## A126606.P14171038324178030795

`2*A324337(xor(n, floor(n/2)))`
-/

namespace A126606.P14171038324178030795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324337 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A126606.P14171038324178030795

namespace A126606

/-- `2*A324337(xor(n, floor(n/2)))` -/
def P14171038324178030795.Spec : Prop :=
  ∀ n, P14171038324178030795.a n = A126606 (n + 1)

end A126606

/-! ## A126606.P6773241716928989197

`A005843(A002487(n))`
-/

namespace A126606.P6773241716928989197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A002487 n).toNat

end

end A126606.P6773241716928989197

namespace A126606

/-- `A005843(A002487(n))` -/
def P6773241716928989197.Spec : Prop :=
  ∀ n, P6773241716928989197.a n = A126606 (n + 1)

end A126606

/-! ## A126606.P17201924401451815733

`2*A324337(A003188(n))`
-/

namespace A126606.P17201924401451815733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324337 (A003188 n).toNat

end

end A126606.P17201924401451815733

namespace A126606

/-- `2*A324337(A003188(n))` -/
def P17201924401451815733.Spec : Prop :=
  ∀ n, P17201924401451815733.a n = A126606 (n + 1)

end A126606

/-! ## A126606.P7533136153523902168

`A002487(n)+n-A284013(n)`
-/

namespace A126606.P7533136153523902168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n + ((n : ℤ) - A284013 n)

end

end A126606.P7533136153523902168

namespace A126606

/-- `A002487(n)+n-A284013(n)` -/
def P7533136153523902168.Spec : Prop :=
  ∀ n, P7533136153523902168.a n = A126606 (n + 1)

theorem P7533136153523902168.correct : P7533136153523902168.Spec := by
  intro n
  simp only [A126606, Nat.add_sub_cancel, A126606.P7533136153523902168.a, A126606.P13163570229275066813.a, A002487, A002487.P6236436194084017932.a, A284013, A284013.P1136611558935881771.a, A000120, A000120.P2816527436160941581.a, A168081, A168081.P16359451533663323532.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126606

/-! ## A126606.P14315323872451609873

`A002487(n)+A283978(n)+A283976(n)`
-/

namespace A126606.P14315323872451609873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n + (A283978 n + A283976 n)

end

end A126606.P14315323872451609873

namespace A126606

/-- `A002487(n)+A283978(n)+A283976(n)` -/
def P14315323872451609873.Spec : Prop :=
  ∀ n, P14315323872451609873.a n = A126606 (n + 1)

theorem P14315323872451609873.correct : P14315323872451609873.Spec := by
  intro n
  simp only [A126606, Nat.add_sub_cancel, A126606.P14315323872451609873.a, A126606.P13163570229275066813.a, A002487, A002487.P6236436194084017932.a, A283976, A283976.P17238727065902708821.a, A283978, A283978.P12954739794367481226.a, A000120, A000120.P2816527436160941581.a, A168081, A168081.P16359451533663323532.a, A295515, A295515.P11785583445350184235.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126606

/-! ## A126606.P5773066068639071655

`A002487(n)+A156140(n)-A321154(n)`
-/

namespace A126606.P5773066068639071655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n + (A156140 n - A321154 n)

end

end A126606.P5773066068639071655

namespace A126606

/-- `A002487(n)+A156140(n)-A321154(n)` -/
def P5773066068639071655.Spec : Prop :=
  ∀ n, P5773066068639071655.a n = A126606 (n + 1)

end A126606

/-! ## A126606.P6586830133383544086

`A002487(n)+A323901(n)-A331749(n)`
-/

namespace A126606.P6586830133383544086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n + (A323901 n - A331749 n)

end

end A126606.P6586830133383544086

namespace A126606

/-- `A002487(n)+A323901(n)-A331749(n)` -/
def P6586830133383544086.Spec : Prop :=
  ∀ n, P6586830133383544086.a n = A126606 (n + 1)

theorem P6586830133383544086.correct : P6586830133383544086.Spec := by
  intro n
  simp only [A126606, Nat.add_sub_cancel, A126606.P6586830133383544086.a, A126606.P13163570229275066813.a, A002487, A002487.P6236436194084017932.a, A323901, A323901.P12439125084005686553.a, A331749, A331749.P3262571390583388432.a, A000120, A000120.P2816527436160941581.a, A163511, A163511.P5635496813650871695.a, A168081, A168081.P16359451533663323532.a, A005187, A005187.P3874015513960485494.a, A145342, A145342.P11180459690303212781.a, A253563, A253563.P3695549317124564486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A025480, A025480.P15873863116418380882.a, A145341, A145341.P17834554394848515737.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126606

/-! ## A126606.P11776259916666411980

`A007306(n+1)+A002487(n)-A002487(n+1)`
-/

namespace A126606.P11776259916666411980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) + (A002487 n - A002487 (n + 1))

end

end A126606.P11776259916666411980

namespace A126606

/-- `A007306(n+1)+A002487(n)-A002487(n+1)` -/
def P11776259916666411980.Spec : Prop :=
  ∀ n, P11776259916666411980.a n = A126606 (n + 1)

end A126606

/-! ## A126606.P11307006481185462259

`2*A324337(A048724(n))`
-/

namespace A126606.P11307006481185462259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324337 (A048724 n).toNat

end

end A126606.P11307006481185462259

namespace A126606

/-- `2*A324337(A048724(n))` -/
def P11307006481185462259.Spec : Prop :=
  ∀ n, P11307006481185462259.a n = A126606 (n + 1)

end A126606

/-! ## A126606.P18436449747691444365

`2*A283976(A109043(n))`
-/

namespace A126606.P18436449747691444365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283976 (A109043 n).toNat

end

end A126606.P18436449747691444365

namespace A126606

/-- `2*A283976(A109043(n))` -/
def P18436449747691444365.Spec : Prop :=
  ∀ n, P18436449747691444365.a n = A126606 (n + 1)

end A126606

/-! ## A126606.P12843250550023378704

`A156140(2*n)-A321154(n)`
-/

namespace A126606.P12843250550023378704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156140 (2 * n) - A321154 n

end

end A126606.P12843250550023378704

namespace A126606

/-- `A156140(2*n)-A321154(n)` -/
def P12843250550023378704.Spec : Prop :=
  ∀ n, P12843250550023378704.a n = A126606 (n + 1)

end A126606

/-! ## A126606.P5390882837681405753

`2*A283976(2*n)`
-/

namespace A126606.P5390882837681405753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283976 (2 * n)

end

end A126606.P5390882837681405753

namespace A126606

/-- `2*A283976(2*n)` -/
def P5390882837681405753.Spec : Prop :=
  ∀ n, P5390882837681405753.a n = A126606 (n + 1)

end A126606

/-! ## A126606.P10811727859417296307

`2*A283977(2*n)`
-/

namespace A126606.P10811727859417296307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283977 (2 * n)

end

end A126606.P10811727859417296307

namespace A126606

/-- `2*A283977(2*n)` -/
def P10811727859417296307.Spec : Prop :=
  ∀ n, P10811727859417296307.a n = A126606 (n + 1)

end A126606

/-! ## A126606.P17753899644155428621

`2*A288002(Δ[n²])`
-/

namespace A126606.P17753899644155428621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288002 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A126606.P17753899644155428621

namespace A126606

/-- `2*A288002(Δ[n²])` -/
def P17753899644155428621.Spec : Prop :=
  ∀ n, P17753899644155428621.a n = A126606 (n + 1)

end A126606

/-! ## A126606.P9396825365278129126

`2*A295515(Δ[n²])`
-/

namespace A126606.P9396825365278129126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295515 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A126606.P9396825365278129126

namespace A126606

/-- `2*A295515(Δ[n²])` -/
def P9396825365278129126.Spec : Prop :=
  ∀ n, P9396825365278129126.a n = A126606 (n + 1)

end A126606

/-! ## A126606.P8030243580482878876

`A005843(A283976(2*n))`
-/

namespace A126606.P8030243580482878876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A283976 (2 * n)).toNat

end

end A126606.P8030243580482878876

namespace A126606

/-- `A005843(A283976(2*n))` -/
def P8030243580482878876.Spec : Prop :=
  ∀ n, P8030243580482878876.a n = A126606 (n + 1)

end A126606

/-!
# A126608: Smallest odd prime q such that pq+2 is prime, where p is the n-th odd prime.

The programs for A126608, there is no canonical definition to state claims against.
-/

/-! ## A126608.P5443763365326987608

`floor(A126609(n+1)/p?[A165998(n)])`
-/

namespace A126608.P5443763365326987608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A126609 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A126608.P5443763365326987608

/-! ## A126608.P18074839455800432136

`floor(A126609(n+1)/A065091(n+1))`
-/

namespace A126608.P18074839455800432136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A126609 (n + 1) : ℚ) / (A065091 (n + 1) : ℚ)⌋

end

end A126608.P18074839455800432136

/-! ## A126608.P1088016155497572630

`floor(A126609(n+1)/A000040(n+2))`
-/

namespace A126608.P1088016155497572630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A126609 (n + 1) : ℚ) / (A000040 (n + 2) : ℚ)⌋

end

end A126608.P1088016155497572630

/-! ## A126608.P9056667000334571585

`floor(A126609(n+1)/Δ[A007504(n+1)])`
-/

namespace A126608.P9056667000334571585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A126609 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A126608.P9056667000334571585

/-! ## A126608.P14944163475159528850

`(A126609(n+1)-2)/A237292(A005097(n+1))`
-/

namespace A126608.P14944163475159528850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126609 (n + 1) - 2 : ℚ) / (A237292 (A005097 (n + 1)).toNat : ℚ)

end

end A126608.P14944163475159528850

/-!
# A126609: Odd primes pq+2 arising in A126608.

The programs for A126609, there is no canonical definition to state claims against.
-/

/-! ## A126609.P13767878556649276628

`p?[A165998(n)]*A126608(n+1)+2`
-/

namespace A126609.P13767878556649276628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A126608 (n + 1) + 2

end

end A126609.P13767878556649276628

/-! ## A126609.P3248373498277338663

`A065091(n+1)*A126608(n+1)+2`
-/

namespace A126609.P3248373498277338663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A126608 (n + 1) + 2

end

end A126609.P3248373498277338663

/-! ## A126609.P2270642768436919052

`A000040(n+2)*A126608(n+1)+2`
-/

namespace A126609.P2270642768436919052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A126608 (n + 1) + 2

end

end A126609.P2270642768436919052

/-! ## A126609.P18341424410515026954

`A006005(n+2)*A126608(n+1)+2`
-/

namespace A126609.P18341424410515026954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2) * A126608 (n + 1) + 2

end

end A126609.P18341424410515026954

/-! ## A126609.P3742747417231044559

`(record[A000010(n+3)]+1)*A126608(n+1)+2`
-/

namespace A126609.P3742747417231044559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) * A126608 (n + 1) + 2

end

end A126609.P3742747417231044559

/-! ## A126609.P16458415028408285205

`A007918(p?[A165998(n)]*A126608(n+1))`
-/

namespace A126609.P16458415028408285205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A126608 (n + 1)).toNat

end

end A126609.P16458415028408285205

/-! ## A126609.P12147040557086137965

`A007918(A065091(n+1)*A126608(n+1))`
-/

namespace A126609.P12147040557086137965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A065091 (n + 1) * A126608 (n + 1)).toNat

end

end A126609.P12147040557086137965

/-! ## A126609.P10271563168357392881

`A007918(A000040(n+2)*A126608(n+1))`
-/

namespace A126609.P10271563168357392881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A000040 (n + 2) * A126608 (n + 1)).toNat

end

end A126609.P10271563168357392881

/-!
# A126611: Sum x+y of generator pairs (x, y) {x and y coprime and not both odd} of primitive Pythagorean triangles, sorted.

The programs for A126611, there is no canonical definition to state claims against.
-/

/-! ## A126611.P5333149003800698515

`∑[C(2, A126637(n+1))]+1`
-/

namespace A126611.P5333149003800698515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A126637 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A126611.P5333149003800698515

/-! ## A126611.P11347523733791719405

`a(n-A334428(n+2))+2` with `a(0)=3`
-/

namespace A126611.P11347523733791719405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a ((n : ℤ) - A334428 (n + 2)).toNat + 2

end

end A126611.P11347523733791719405

/-! ## A126611.P4436238976751238594

`filter[A038567(2*n), A266070(#)]`
-/

namespace A126611.P4436238976751238594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A126611.P4436238976751238594

/-! ## A126611.P14686175169188596794

`filter[A038567(2*n), A266719(#)]`
-/

namespace A126611.P14686175169188596794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A126611.P14686175169188596794

/-! ## A126611.P407402501398227499

`filter[A038567(2*n), A296066(#)]`
-/

namespace A126611.P407402501398227499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A126611.P407402501398227499

/-! ## A126611.P16746655312202698426

`1-∑[A120086(A126637(n+1))]`
-/

namespace A126611.P16746655312202698426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120086 (A126637 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126611.P16746655312202698426

/-! ## A126611.P6344582456220674455

`A038567(eq[0, A038566(n+1)%2])`
-/

namespace A126611.P6344582456220674455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038566 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126611.P6344582456220674455

/-! ## A126611.P13583812065514696202

`filter[A038567(2*n+1), A000035(#)]`
-/

namespace A126611.P13583812065514696202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A126611.P13583812065514696202

/-! ## A126611.P15960711020693498717

`filter[A038567(2*n+1), A374134(#)]`
-/

namespace A126611.P15960711020693498717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A126611.P15960711020693498717

/-!
# A126612: a(n) is the least K such that K*6*M(n) - 1 and K*6*M(n) + 1 are twin primes, where M(n) = n-th Mersenne prime.

The programs for A126612, there is no canonical definition to state claims against.
-/

/-! ## A126612.P2410476738357806330

`ceil(A098814(n+1)/6)`
-/

namespace A126612.P2410476738357806330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098814 (n + 1) : ℚ) / 6⌉

end

end A126612.P2410476738357806330

/-! ## A126612.P15850897253777501973

`A098814(A233583(n+2))/6`
-/

namespace A126612.P15850897253777501973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098814 (A233583 (n + 2)).toNat : ℚ) / 6

end

end A126612.P15850897253777501973

/-! ## A126612.P18394186842179039475

`(A098814(n+1)/6)^A178334(n)`
-/

namespace A126612.P18394186842179039475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A098814 (n + 1) : ℚ) / 6) ^ (A178334 n : ℤ)

end

end A126612.P18394186842179039475

/-! ## A126612.P7994785913567910500

`(A098814(n+1)/6)^abs(A057428(n))`
-/

namespace A126612.P7994785913567910500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A098814 (n + 1) : ℚ) / 6) ^ (|A057428 n| : ℤ)

end

end A126612.P7994785913567910500

/-! ## A126612.P17203682781458114686

`(A098814(n+1)/6)^(A000040(n+1)%2)`
-/

namespace A126612.P17203682781458114686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A098814 (n + 1) : ℚ) / 6) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A126612.P17203682781458114686

/-!
# A126613: a(1)=1. a(n) = a(n-1) + (number of terms, from among terms a(1) through a(n-1), which are powers of primes {including 1}).

The programs for A126613, there is no canonical definition to state claims against.
-/

/-! ## A126613.P10948446060497016733

`∑[∑[A038189(A281573(n+5))]]`
-/

namespace A126613.P10948446060497016733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A281573 (n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126613.P10948446060497016733

/-! ## A126613.P17109832761888839177

`∑[∑[A011734(A105703(3*(n+1)))]]`
-/

namespace A126613.P17109832761888839177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011734 (A105703 (3 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126613.P17109832761888839177

/-! ## A126613.P15122386328266004550

`∑[∑[(A001597(A025052(n+1))%2)²]]`
-/

namespace A126613.P15122386328266004550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001597 (A025052 (n + 1)).toNat) 2 ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126613.P15122386328266004550

/-! ## A126613.P14991928931140348314

`∑[∑[A194285((6*n+3)²)]]`
-/

namespace A126613.P14991928931140348314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 ((6 * n + 3) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126613.P14991928931140348314

/-! ## A126613.P14812260855215554126

`∑[∑[A219098(A092997(n+2))]]`
-/

namespace A126613.P14812260855215554126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219098 (A092997 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126613.P14812260855215554126

/-!
# A126614: a(n) = (2^prime(n) + 1)/3.

The programs for A126614, the canonical program `A126614.P6069604956422702047` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126614 has offset 2).

The definition of A126614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126614.P2421765569735938438

`(2^A000040(n+2)+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A126614.P2421765569735938438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A000040 (n + 2) : ℤ) + 1) / 3

end

end A126614.P2421765569735938438

namespace A126614

/-- `(2^A000040(n+2)+1)/3` -/
def P2421765569735938438.Spec : Prop :=
  ∀ n, P2421765569735938438.a n = (A126614 (n + 2) : ℚ)

end A126614

/-! ## A126614.P6069604956422702047

`A001045(A000040(n+2))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A126614

/-- `A001045(A000040(n+2))` -/
def P6069604956422702047.Spec : Prop :=
  ∀ n, P6069604956422702047.a n = A126614 (n + 2)

theorem P6069604956422702047.correct : P6069604956422702047.Spec := by
  intro n
  simp only [A126614, Nat.add_sub_cancel]

end A126614

/-! ## A126614.P7275073614717883460

`round(2^p?[2*n+1]/3)`
-/

namespace A126614.P7275073614717883460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 3)

end

end A126614.P7275073614717883460

namespace A126614

/-- `round(2^p?[2*n+1]/3)` -/
def P7275073614717883460.Spec : Prop :=
  ∀ n, P7275073614717883460.a n = A126614 (n + 2)

end A126614

/-! ## A126614.P5879277676657761801

`(2^p?[2*n+1]+1)/3`
-/

namespace A126614.P5879277676657761801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 : ℚ) / 3

end

end A126614.P5879277676657761801

namespace A126614

/-- `(2^p?[2*n+1]+1)/3` -/
def P5879277676657761801.Spec : Prop :=
  ∀ n, P5879277676657761801.a n = (A126614 (n + 2) : ℚ)

end A126614

/-! ## A126614.P12528264635497661370

`A098640(n+2)/3`
-/

namespace A126614.P12528264635497661370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098640 (n + 2) : ℚ) / 3

end

end A126614.P12528264635497661370

namespace A126614

/-- `A098640(n+2)/3` -/
def P12528264635497661370.Spec : Prop :=
  ∀ n, P12528264635497661370.a n = (A126614 (n + 2) : ℚ)

end A126614

/-! ## A126614.P6390281689677953759

`A001045(p?[2*n+1])`
-/

namespace A126614.P6390281689677953759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A126614.P6390281689677953759

namespace A126614

/-- `A001045(p?[2*n+1])` -/
def P6390281689677953759.Spec : Prop :=
  ∀ n, P6390281689677953759.a n = A126614 (n + 2)

end A126614

/-! ## A126614.P18194961476167266879

`A005578(p?[2*n+1])`
-/

namespace A126614.P18194961476167266879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A126614.P18194961476167266879

namespace A126614

/-- `A005578(p?[2*n+1])` -/
def P18194961476167266879.Spec : Prop :=
  ∀ n, P18194961476167266879.a n = A126614 (n + 2)

end A126614

/-! ## A126614.P17838099185804287153

`A020501(p?[2*n+1])`
-/

namespace A126614.P17838099185804287153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020501 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A126614.P17838099185804287153

namespace A126614

/-- `A020501(p?[2*n+1])` -/
def P17838099185804287153.Spec : Prop :=
  ∀ n, P17838099185804287153.a n = A126614 (n + 2)

end A126614

/-! ## A126614.P18061769894635107751

`A066845(p?[2*n+1])`
-/

namespace A126614.P18061769894635107751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066845 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A126614.P18061769894635107751

namespace A126614

/-- `A066845(p?[2*n+1])` -/
def P18061769894635107751.Spec : Prop :=
  ∀ n, P18061769894635107751.a n = A126614 (n + 2)

end A126614

/-! ## A126614.P4875395131182014628

`A105603(p?[2*n+1])`
-/

namespace A126614.P4875395131182014628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105603 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A126614.P4875395131182014628

namespace A126614

/-- `A105603(p?[2*n+1])` -/
def P4875395131182014628.Spec : Prop :=
  ∀ n, P4875395131182014628.a n = A126614 (n + 2)

end A126614

/-!
# A126615: Denominators in a harmonic triangle.

The programs for A126615, there is no canonical definition to state claims against.
-/

/-! ## A126615.P5791617829421055173

`∑[char[∑[n]]]!/A136125(n+1)`
-/

namespace A126615.P5791617829421055173
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A136125 (n + 1) : ℚ)

end

end A126615.P5791617829421055173

/-! ## A126615.P8636117364811099935

`A143844(n+1)+1-C(∑[char[∑[n]]], 2)+n`
-/

namespace A126615.P8636117364811099935
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 (n + 1) + (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ))

end

end A126615.P8636117364811099935

/-! ## A126615.P10516319032050601617

`(1-C(∑[char[∑[n]]], 2)+n)*A002260(n+2)`
-/

namespace A126615.P10516319032050601617
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A002260 (n + 2)

end

end A126615.P10516319032050601617

/-! ## A126615.P3729301651729687444

`lcm(1-(C(∑[char[∑[n]]], 2)-n), A128219(n+1))`
-/

namespace A126615.P3729301651729687444
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n : ℤ))) (A128219 (n + 1))

end

end A126615.P3729301651729687444

/-! ## A126615.P17997547412008847449

`(1-C(∑[char[∑[n]]], 2)+n)*A128227(comp[∑[n]])`
-/

namespace A126615.P17997547412008847449
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A128227 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

end

end A126615.P17997547412008847449

/-! ## A126615.P4186855883530006431

`lcm(1-C(∑[char[∑[n]]], 2)+n, A193738(comp[∑[n]]))`
-/

namespace A126615.P4186855883530006431
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) (A193738 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n))

end

end A126615.P4186855883530006431

/-! ## A126615.P11595275511265110262

`A002262(n+1)²+1-C(∑[char[∑[n]]], 2)+n`
-/

namespace A126615.P11595275511265110262
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1) ^ 2 + (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ))

end

end A126615.P11595275511265110262

/-! ## A126615.P16960710543054565961

`A048151(n+1)²+1-C(∑[char[∑[n]]], 2)+n`
-/

namespace A126615.P16960710543054565961
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (n + 1) ^ 2 + (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ))

end

end A126615.P16960710543054565961

/-! ## A126615.P9176953518481057858

`A025668(n+2)²+1-C(∑[char[∑[n]]], 2)+n`
-/

namespace A126615.P9176953518481057858
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 2) ^ 2 + (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ))

end

end A126615.P9176953518481057858

/-! ## A126615.P5713264516291878302

`A025675(n+2)²+1-C(∑[char[∑[n]]], 2)+n`
-/

namespace A126615.P5713264516291878302
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (n + 2) ^ 2 + (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ))

end

end A126615.P5713264516291878302

/-!
# A126616: a(n) = n for n < 10, a(10*n) = a(n), and if the terms a(10), a(20), a(30), ... are deleted, one gets back the original sequence.

The programs for A126616, there is no canonical definition to state claims against.
-/

/-! ## A126616.P8269834267843454721

`dr(A185255(n)+A052423(n+1))`
-/

namespace A126616.P8269834267843454721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A185255 n + A052423 (n + 1))

end

end A126616.P8269834267843454721

/-! ## A126616.P866270788878598502

`A010888(A185255(n)+A052423(n+1))`
-/

namespace A126616.P866270788878598502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A185255 n + A052423 (n + 1)).toNat

end

end A126616.P866270788878598502

/-! ## A126616.P14879364780476425273

`A107846(A208879(n))+A052423(n+1)`
-/

namespace A126616.P14879364780476425273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A208879 n).toNat + A052423 (n + 1)

end

end A126616.P14879364780476425273

/-! ## A126616.P7224704777685850147

`lcm(A052423(n+1), A110503(A145515(n)))`
-/

namespace A126616.P7224704777685850147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052423 (n + 1)) (A110503 (A145515 n).toNat)

end

end A126616.P7224704777685850147

/-! ## A126616.P11856635985076422081

`A052423(A281873(n+1))`
-/

namespace A126616.P11856635985076422081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052423 (A281873 (n + 1)).toNat

end

end A126616.P11856635985076422081

/-!
# A126617: a(n) = Sum_{i=0..n} (-2)^(n-i)*B(i)*binomial(n,i) where B(n) = Bell numbers A000110(n).

The programs for A126617, there is no canonical definition to state claims against.
-/

/-! ## A126617.P12638382091289231664

`Δ[A346738(n)]+4*A346738(n)`
-/

namespace A126617.P12638382091289231664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 4 * A346738 n

end

end A126617.P12638382091289231664

/-! ## A126617.P3805792046161515621

`A361781(∑[n+3])`
-/

namespace A126617.P3805792046161515621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361781 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126617.P3805792046161515621

/-! ## A126617.P11512193183152344679

`A224271(n+1)-A111724(n+1)`
-/

namespace A126617.P11512193183152344679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224271 (n + 1) - A111724 (n + 1)

end

end A126617.P11512193183152344679

/-! ## A126617.P6899554238523794122

`A111723(n+1)+A000296(n)-A224271(n+1)`
-/

namespace A126617.P6899554238523794122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111723 (n + 1) + (A000296 n - A224271 (n + 1))

end

end A126617.P6899554238523794122

/-! ## A126617.P10302820243759904632

`A111723(n+1)+A224271(n+1)-record[A108087(n)]`
-/

namespace A126617.P10302820243759904632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111723 (n + 1) + (A224271 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A126617.P10302820243759904632

/-! ## A126617.P5527097879086849783

`A102286(n+1)+A111723(n+1)-A087648(n)`
-/

namespace A126617.P5527097879086849783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102286 (n + 1) + (A111723 (n + 1) - A087648 n)

end

end A126617.P5527097879086849783

/-!
# A126618: Simili-primes of order 3.

The programs for A126618, there is no canonical definition to state claims against.
-/

/-! ## A126618.P8145693635540868709

`A001043(n+1)-A005811(A052501(n))`
-/

namespace A126618.P8145693635540868709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A005811 (A052501 n).toNat

end

end A126618.P8145693635540868709

/-! ## A126618.P1455876097995413791

`A286607(n+1)+A233459(A118363(n+1))`
-/

namespace A126618.P1455876097995413791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286607 (n + 1) + A233459 (A118363 (n + 1)).toNat

end

end A126618.P1455876097995413791

/-! ## A126618.P17502630700462662000

`or(A066601(n+1), A294723(A032555(n+1)))`
-/

namespace A126618.P17502630700462662000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A066601 (n + 1)) (A294723 (A032555 (n + 1)).toNat)

end

end A126618.P17502630700462662000

/-! ## A126618.P13251462490297627428

`or(A066601(n+1), A294723(A032559(n+1)))`
-/

namespace A126618.P13251462490297627428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A066601 (n + 1)) (A294723 (A032559 (n + 1)).toNat)

end

end A126618.P13251462490297627428

/-!
# A126619: Simili-primes of order 4.

The programs for A126619, there is no canonical definition to state claims against.
-/

/-! ## A126619.P13743965751045723622

`A351096(2*n+1)+A079944(A318570(n))`
-/

namespace A126619.P13743965751045723622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351096 (2 * n + 1) + A079944 (A318570 n).toNat

end

end A126619.P13743965751045723622

/-! ## A126619.P8413696118215957767

`floor(log2(A020479(∑[3^n]+2)))`
-/

namespace A126619.P8413696118215957767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A020479 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A126619.P8413696118215957767

/-! ## A126619.P6522754074277250739

`A313814(A082217(n+1))-A330025(n)`
-/

namespace A126619.P6522754074277250739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313814 (A082217 (n + 1)).toNat - A330025 n

end

end A126619.P6522754074277250739

/-! ## A126619.P11475885489593926992

`A313814(A276142(n+1))-A330025(n)`
-/

namespace A126619.P11475885489593926992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313814 (A276142 (n + 1)).toNat - A330025 n

end

end A126619.P11475885489593926992

/-! ## A126619.P696361038276847183

`or(A185316(n), A313155(A082217(n+1)))`
-/

namespace A126619.P696361038276847183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185316 n) (A313155 (A082217 (n + 1)).toNat)

end

end A126619.P696361038276847183

/-!
# A126620: Simili-primes of order 5.

The programs for A126620, there is no canonical definition to state claims against.
-/

/-! ## A126620.P17691435362719290349

`A347462(n)+A313814(A082217(n+1))`
-/

namespace A126620.P17691435362719290349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347462 n + A313814 (A082217 (n + 1)).toNat

end

end A126620.P17691435362719290349

/-! ## A126620.P17045023550008662993

`A347462(n)+A313814(A276142(n+1))`
-/

namespace A126620.P17045023550008662993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347462 n + A313814 (A276142 (n + 1)).toNat

end

end A126620.P17045023550008662993

/-! ## A126620.P16386915802836098050

`A289618(A000108(n+1))+A212459(n+2)`
-/

namespace A126620.P16386915802836098050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289618 (A000108 (n + 1)).toNat + A212459 (n + 2)

end

end A126620.P16386915802836098050

/-!
# A126621: Simili-primes of order 6.

The programs for A126621, there is no canonical definition to state claims against.
-/

/-! ## A126621.P3636727421829216882

`A278453(3*n+5)+A218622(A088921(n+1))`
-/

namespace A126621.P3636727421829216882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278453 (3 * n + 5) + A218622 (A088921 (n + 1)).toNat

end

end A126621.P3636727421829216882

/-! ## A126621.P13401551100632584724

`A347316(n)+A106316(A038618(2*(n+2)))`
-/

namespace A126621.P13401551100632584724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347316 n + A106316 (A038618 (2 * (n + 2))).toNat

end

end A126621.P13401551100632584724

/-! ## A126621.P3743198662800573450

`A287580(2*(n+1))-A287566(A287584(n))`
-/

namespace A126621.P3743198662800573450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287580 (2 * (n + 1)) - A287566 (A287584 n).toNat

end

end A126621.P3743198662800573450

/-! ## A126621.P960045586776016669

`A204166(A250120(3*n+4)*A345665(3*n+1))`
-/

namespace A126621.P960045586776016669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (A250120 (3 * n + 4) * A345665 (3 * n + 1)).toNat

end

end A126621.P960045586776016669

/-!
# A126622: Simili-primes of order 7.

The programs for A126622, there is no canonical definition to state claims against.
-/

/-! ## A126622.P4531263942424068654

`A190691(3*(n+1))-A355382(A224213(n+1))`
-/

namespace A126622.P4531263942424068654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190691 (3 * (n + 1)) - A355382 (A224213 (n + 1)).toNat

end

end A126622.P4531263942424068654

/-!
# A126623: Simili-primes of order 8.

The programs for A126623, there is no canonical definition to state claims against.
-/

/-! ## A126623.P3007858538952254304

`A126624(n+1)-A000005(A038547(n+1))`
-/

namespace A126623.P3007858538952254304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126624 (n + 1) - A000005 (A038547 (n + 1)).toNat

end

end A126623.P3007858538952254304

/-! ## A126623.P13341620065612159039

`A126624(n+1)-A319626(A108951(n+1))`
-/

namespace A126623.P13341620065612159039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126624 (n + 1) - A319626 (A108951 (n + 1)).toNat

end

end A126623.P13341620065612159039

/-! ## A126623.P1991131377207013767

`A126624(n+1)-A000005(A000244(n))`
-/

namespace A126623.P1991131377207013767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126624 (n + 1) - A000005 (A000244 n).toNat

end

end A126623.P1991131377207013767

/-! ## A126623.P12612779985377101596

`A126624(n+1)-A000121(A000045(2*n))`
-/

namespace A126623.P12612779985377101596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126624 (n + 1) - A000121 (A000045 (2 * n)).toNat

end

end A126623.P12612779985377101596

/-! ## A126623.P18432433214423980421

`A126624(n+1)-A001222(A008776(n))`
-/

namespace A126623.P18432433214423980421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126624 (n + 1) - A001222 (A008776 n).toNat

end

end A126623.P18432433214423980421

/-!
# A126624: Simili-primes of order 9.

The programs for A126624, there is no canonical definition to state claims against.
-/

/-! ## A126624.P3549197917054552525

`A126623(n+1)+A126615(∑[n+1])`
-/

namespace A126624.P3549197917054552525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126623 (n + 1) + A126615 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126624.P3549197917054552525

/-! ## A126624.P13054512435887144682

`A126623(n+1)+A000005(A038547(n+1))`
-/

namespace A126624.P13054512435887144682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126623 (n + 1) + A000005 (A038547 (n + 1)).toNat

end

end A126624.P13054512435887144682

/-! ## A126624.P8859635383154846529

`A319626(A108951(n+1))+A126623(n+1)`
-/

namespace A126624.P8859635383154846529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A108951 (n + 1)).toNat + A126623 (n + 1)

end

end A126624.P8859635383154846529

/-! ## A126624.P12211083641168730392

`A126623(n+1)+A000005(A000244(n))`
-/

namespace A126624.P12211083641168730392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126623 (n + 1) + A000005 (A000244 n).toNat

end

end A126624.P12211083641168730392

/-! ## A126624.P15843538219758817576

`A126623(n+1)+A001222(A008776(n))`
-/

namespace A126624.P15843538219758817576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126623 (n + 1) + A001222 (A008776 n).toNat

end

end A126624.P15843538219758817576

/-!
# A126627: a(n) is the number of nonnegative integers k less than 10^n such that the decimal representation of k lacks digits 1,2,3 and at least one of digits 4,5,6,7,8,9.

The programs for A126627, the canonical program `A126627.P17365537465229348985` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126627 has offset 1).

The definition of A126627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126627.P17365537465229348985

`6*6^(n+1)-15*5^(n+1)+20*4^(n+1)-15*3^(n+1)+6*2^(n+1)-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126627

/-- `6*6^(n+1)-15*5^(n+1)+20*4^(n+1)-15*3^(n+1)+6*2^(n+1)-1` -/
def P17365537465229348985.Spec : Prop :=
  ∀ n, P17365537465229348985.a n = A126627 (n + 1)

theorem P17365537465229348985.correct : P17365537465229348985.Spec := by
  intro n
  simp only [A126627, Nat.add_sub_cancel]

end A126627

/-! ## A126627.P16638744901150748970

`(A126643(n+1)+A126629(n+1))/2`
-/

namespace A126627.P16638744901150748970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126643 (n + 1) + A126629 (n + 1) : ℚ) / 2

end

end A126627.P16638744901150748970

namespace A126627

/-- `(A126643(n+1)+A126629(n+1))/2` -/
def P16638744901150748970.Spec : Prop :=
  ∀ n, P16638744901150748970.a n = (A126627 (n + 1) : ℚ)

theorem P16638744901150748970.correct : P16638744901150748970.Spec := by
  intro n
  simp only [A126627, Nat.add_sub_cancel, A126627.P16638744901150748970.a, A126627.P17365537465229348985.a, A126629, A126629.P4738211352311107448.a, A126643, A126643.P6459132626921416239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A126627

/-! ## A126627.P15511292988812545931

`A158198(A166136(n+5))`
-/

namespace A126627.P15511292988812545931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (A166136 (n + 5)).toNat

end

end A126627.P15511292988812545931

namespace A126627

/-- `A158198(A166136(n+5))` -/
def P15511292988812545931.Spec : Prop :=
  ∀ n, P15511292988812545931.a n = A126627 (n + 1)

end A126627

/-! ## A126627.P220138538040954250

`A158198(eq[6, A002262(n)])`
-/

namespace A126627.P220138538040954250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126627.P220138538040954250

namespace A126627

/-- `A158198(eq[6, A002262(n)])` -/
def P220138538040954250.Spec : Prop :=
  ∀ n, P220138538040954250.a n = A126627 (n + 1)

end A126627

/-! ## A126627.P16033092473397036363

`A158198(A167487(n+5)-1)`
-/

namespace A126627.P16033092473397036363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (A167487 (n + 5) - 1).toNat

end

end A126627.P16033092473397036363

namespace A126627

/-- `A158198(A167487(n+5)-1)` -/
def P16033092473397036363.Spec : Prop :=
  ∀ n, P16033092473397036363.a n = A126627 (n + 1)

end A126627

/-! ## A126627.P16788875707942469268

`A158198(A000217(n+6)+6)`
-/

namespace A126627.P16788875707942469268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (A000217 (n + 6) + 6).toNat

end

end A126627.P16788875707942469268

namespace A126627

/-- `A158198(A000217(n+6)+6)` -/
def P16788875707942469268.Spec : Prop :=
  ∀ n, P16788875707942469268.a n = A126627 (n + 1)

end A126627

/-! ## A126627.P5991976396771081311

`A158198(A034856(n+5)+8)`
-/

namespace A126627.P5991976396771081311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (A034856 (n + 5) + 8).toNat

end

end A126627.P5991976396771081311

namespace A126627

/-- `A158198(A034856(n+5)+8)` -/
def P5991976396771081311.Spec : Prop :=
  ∀ n, P5991976396771081311.a n = A126627 (n + 1)

end A126627

/-! ## A126627.P18114239494445240632

`A158198(eq[7, A002260(n+1)])`
-/

namespace A126627.P18114239494445240632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126627.P18114239494445240632

namespace A126627

/-- `A158198(eq[7, A002260(n+1)])` -/
def P18114239494445240632.Spec : Prop :=
  ∀ n, P18114239494445240632.a n = A126627 (n + 1)

end A126627

/-!
# A126628: a(n) is the number of nonnegative integers k less than 10^n such that the decimal representation of k lacks digits 1 and 2, at least one of digits 3,4 and at least one of digits 5,6,7,8,9.

The programs for A126628, the canonical program `A126628.P17027644650768090544` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126628 has offset 1).

The definition of A126628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126628.P17027644650768090544

`10*6^(n+1)-25*5^(n+1)+30*4^(n+1)-20*3^(n+1)+7*2^(n+1)-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126628

/-- `10*6^(n+1)-25*5^(n+1)+30*4^(n+1)-20*3^(n+1)+7*2^(n+1)-1` -/
def P17027644650768090544.Spec : Prop :=
  ∀ n, P17027644650768090544.a n = A126628 (n + 1)

theorem P17027644650768090544.correct : P17027644650768090544.Spec := by
  intro n
  simp only [A126628, Nat.add_sub_cancel]

end A126628

/-!
# A126629: a(n) is the number of nonnegative integers k less than 10^n such that the decimal representation of k lacks digits 1 and 2, at least one of digits 3,4,5 and at least one of digits 6,7,8,9.

The programs for A126629, the canonical program `A126629.P4738211352311107448` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126629 has offset 1).

The definition of A126629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126629.P4738211352311107448

`12*6^(n+1)-30*5^(n+1)+34*4^(n+1)-21*3^(n+1)+7*2^(n+1)-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126629

/-- `12*6^(n+1)-30*5^(n+1)+34*4^(n+1)-21*3^(n+1)+7*2^(n+1)-1` -/
def P4738211352311107448.Spec : Prop :=
  ∀ n, P4738211352311107448.a n = A126629 (n + 1)

theorem P4738211352311107448.correct : P4738211352311107448.Spec := by
  intro n
  simp only [A126629, Nat.add_sub_cancel]

end A126629

/-! ## A126629.P8749386362000314464

`(A126632(n+1)+A126627(n+1))/2`
-/

namespace A126629.P8749386362000314464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126632 (n + 1) + A126627 (n + 1) : ℚ) / 2

end

end A126629.P8749386362000314464

namespace A126629

/-- `(A126632(n+1)+A126627(n+1))/2` -/
def P8749386362000314464.Spec : Prop :=
  ∀ n, P8749386362000314464.a n = (A126629 (n + 1) : ℚ)

theorem P8749386362000314464.correct : P8749386362000314464.Spec := by
  intro n
  simp only [A126629, Nat.add_sub_cancel, A126629.P8749386362000314464.a, A126629.P4738211352311107448.a, A126627, A126627.P17365537465229348985.a, A126632, A126632.P12192093326569028218.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A126629

/-! ## A126629.P4478255586137799294

`(A126643(n+1)+A126633(n+1))/2`
-/

namespace A126629.P4478255586137799294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126643 (n + 1) + A126633 (n + 1) : ℚ) / 2

end

end A126629.P4478255586137799294

namespace A126629

/-- `(A126643(n+1)+A126633(n+1))/2` -/
def P4478255586137799294.Spec : Prop :=
  ∀ n, P4478255586137799294.a n = (A126629 (n + 1) : ℚ)

theorem P4478255586137799294.correct : P4478255586137799294.Spec := by
  intro n
  simp only [A126629, Nat.add_sub_cancel, A126629.P4478255586137799294.a, A126629.P4738211352311107448.a, A126633, A126633.P383070957885005630.a, A126643, A126643.P6459132626921416239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A126629

/-!
# A126631: a(n) is the number of nonnegative integers k less than 10^n such that the decimal representation of k lacks the digit 1, at least one of digits 2,3, at least one of digits 4,5 and at least one of digits 6,7,8,9.

The programs for A126631, the canonical program `A126631.P1612555293829410929` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126631 has offset 1).

The definition of A126631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126631.P1612555293829410929

`16*6^(n+1)-40*5^(n+1)+44*4^(n+1)-26*3^(n+1)+8*2^(n+1)-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126631

/-- `16*6^(n+1)-40*5^(n+1)+44*4^(n+1)-26*3^(n+1)+8*2^(n+1)-1` -/
def P1612555293829410929.Spec : Prop :=
  ∀ n, P1612555293829410929.a n = A126631 (n + 1)

theorem P1612555293829410929.correct : P1612555293829410929.Spec := by
  intro n
  simp only [A126631, Nat.add_sub_cancel]

end A126631

/-!
# A126632: a(n) is the number of nonnegative integers k less than 10^n such that the decimal representation of k lacks the digit 1, at least one of digits 2,3, at least one of digits 4,5,6 and at least one of digits 7,8,9.

The programs for A126632, the canonical program `A126632.P12192093326569028218` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126632 has offset 1).

The definition of A126632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126632.P12192093326569028218

`18*6^(n+1)-45*5^(n+1)+48*4^(n+1)-27*3^(n+1)+8*2^(n+1)-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126632

/-- `18*6^(n+1)-45*5^(n+1)+48*4^(n+1)-27*3^(n+1)+8*2^(n+1)-1` -/
def P12192093326569028218.Spec : Prop :=
  ∀ n, P12192093326569028218.a n = A126632 (n + 1)

theorem P12192093326569028218.correct : P12192093326569028218.Spec := by
  intro n
  simp only [A126632, Nat.add_sub_cancel]

end A126632

/-! ## A126632.P3104053773509021697

`(A126633(n+1)+A126629(n+1))/2`
-/

namespace A126632.P3104053773509021697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126633 (n + 1) + A126629 (n + 1) : ℚ) / 2

end

end A126632.P3104053773509021697

namespace A126632

/-- `(A126633(n+1)+A126629(n+1))/2` -/
def P3104053773509021697.Spec : Prop :=
  ∀ n, P3104053773509021697.a n = (A126632 (n + 1) : ℚ)

theorem P3104053773509021697.correct : P3104053773509021697.Spec := by
  intro n
  simp only [A126632, Nat.add_sub_cancel, A126632.P3104053773509021697.a, A126632.P12192093326569028218.a, A126629, A126629.P4738211352311107448.a, A126633, A126633.P383070957885005630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A126632

/-!
# A126633: a(n) is the number of nonnegative integers k less than 10^n such that the decimal representation of k lacks at least one of digits 1, 2, at least one of digits 3,4, at least one of digits 5,6 and at least one of digits 7,8,9.

The programs for A126633, the canonical program `A126633.P383070957885005630` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126633 has offset 1).

The definition of A126633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126633.P383070957885005630

`24*6^(n+1)-60*5^(n+1)+62*4^(n+1)-33*3^(n+1)+9*2^(n+1)-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126633

/-- `24*6^(n+1)-60*5^(n+1)+62*4^(n+1)-33*3^(n+1)+9*2^(n+1)-1` -/
def P383070957885005630.Spec : Prop :=
  ∀ n, P383070957885005630.a n = A126633 (n + 1)

theorem P383070957885005630.correct : P383070957885005630.Spec := by
  intro n
  simp only [A126633, Nat.add_sub_cancel]

end A126633

/-!
# A126634: a(n) is the number of nonnegative integers k less than 10^n such that the decimal representation of k lacks the digits 1,2,3,4 and at least one of digits 5,6,7,8,9.

The programs for A126634, the canonical program `A126634.P8197784466699601132` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126634 has offset 1).

The definition of A126634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126634.P8197784466699601132

`5*5^(n+1)-10*4^(n+1)+10*3^(n+1)-5*2^(n+1)+1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126634

/-- `5*5^(n+1)-10*4^(n+1)+10*3^(n+1)-5*2^(n+1)+1` -/
def P8197784466699601132.Spec : Prop :=
  ∀ n, P8197784466699601132.a n = A126634 (n + 1)

theorem P8197784466699601132.correct : P8197784466699601132.Spec := by
  intro n
  simp only [A126634, Nat.add_sub_cancel]

end A126634

/-! ## A126634.P2057727189938102254

`A158198(A167499(n+4))`
-/

namespace A126634.P2057727189938102254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (A167499 (n + 4)).toNat

end

end A126634.P2057727189938102254

namespace A126634

/-- `A158198(A167499(n+4))` -/
def P2057727189938102254.Spec : Prop :=
  ∀ n, P2057727189938102254.a n = A126634 (n + 1)

end A126634

/-! ## A126634.P7554907947813408397

`A158198(eq[5, A002262(n)])`
-/

namespace A126634.P7554907947813408397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126634.P7554907947813408397

namespace A126634

/-- `A158198(eq[5, A002262(n)])` -/
def P7554907947813408397.Spec : Prop :=
  ∀ n, P7554907947813408397.a n = A126634 (n + 1)

end A126634

/-! ## A126634.P10072174973040579763

`A158198(A167614(n+4)+2)`
-/

namespace A126634.P10072174973040579763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (A167614 (n + 4) + 2).toNat

end

end A126634.P10072174973040579763

namespace A126634

/-- `A158198(A167614(n+4)+2)` -/
def P10072174973040579763.Spec : Prop :=
  ∀ n, P10072174973040579763.a n = A126634 (n + 1)

end A126634

/-! ## A126634.P17807169518004818261

`A158198(A133263(n+5)+3)`
-/

namespace A126634.P17807169518004818261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (A133263 (n + 5) + 3).toNat

end

end A126634.P17807169518004818261

namespace A126634

/-- `A158198(A133263(n+5)+3)` -/
def P17807169518004818261.Spec : Prop :=
  ∀ n, P17807169518004818261.a n = A126634 (n + 1)

end A126634

/-! ## A126634.P4963257065308171593

`A158198(A000124(n+5)+4)`
-/

namespace A126634.P4963257065308171593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (A000124 (n + 5) + 4).toNat

end

end A126634.P4963257065308171593

namespace A126634

/-- `A158198(A000124(n+5)+4)` -/
def P4963257065308171593.Spec : Prop :=
  ∀ n, P4963257065308171593.a n = A126634 (n + 1)

end A126634

/-! ## A126634.P7488426442082114548

`A158198(eq[6, A002260(n+1)])`
-/

namespace A126634.P7488426442082114548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126634.P7488426442082114548

namespace A126634

/-- `A158198(eq[6, A002260(n+1)])` -/
def P7488426442082114548.Spec : Prop :=
  ∀ n, P7488426442082114548.a n = A126634 (n + 1)

end A126634

/-! ## A126634.P2018146785079008756

`A158198(A000217(n+6)-(n+1))`
-/

namespace A126634.P2018146785079008756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158198 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A126634.P2018146785079008756

namespace A126634

/-- `A158198(A000217(n+6)-(n+1))` -/
def P2018146785079008756.Spec : Prop :=
  ∀ n, P2018146785079008756.a n = A126634 (n + 1)

end A126634

/-!
# A126635: a(n) is the number of nonnegative integers k less than 10^n such that the decimal representation of k lacks the digits 1,2,3, at least one of digits 4,5 and at least one of digits 6,7,8,9.

The programs for A126635, the canonical program `A126635.P16769151591052618963` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126635 has offset 1).

The definition of A126635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126635.P16769151591052618963

`8*5^(n+1)-16*4^(n+1)+14*3^(n+1)-6*2^(n+1)+1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126635

/-- `8*5^(n+1)-16*4^(n+1)+14*3^(n+1)-6*2^(n+1)+1` -/
def P16769151591052618963.Spec : Prop :=
  ∀ n, P16769151591052618963.a n = A126635 (n + 1)

theorem P16769151591052618963.correct : P16769151591052618963.Spec := by
  intro n
  simp only [A126635, Nat.add_sub_cancel]

end A126635

/-! ## A126635.P14430129398160201570

`(A126645(n+1)+A126641(n+1))/2`
-/

namespace A126635.P14430129398160201570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126645 (n + 1) + A126641 (n + 1) : ℚ) / 2

end

end A126635.P14430129398160201570

namespace A126635

/-- `(A126645(n+1)+A126641(n+1))/2` -/
def P14430129398160201570.Spec : Prop :=
  ∀ n, P14430129398160201570.a n = (A126635 (n + 1) : ℚ)

theorem P14430129398160201570.correct : P14430129398160201570.Spec := by
  intro n
  simp only [A126635, Nat.add_sub_cancel, A126635.P14430129398160201570.a, A126635.P16769151591052618963.a, A126641, A126641.P8703052922613386976.a, A126645, A126645.P7976440698526259015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A126635

/-! ## A126635.P1433398130160758026

`(3*A125947(n+1))%A125946(n+1)`
-/

namespace A126635.P1433398130160758026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A125947 (n + 1)) (A125946 (n + 1))

end

end A126635.P1433398130160758026

namespace A126635

/-- `(3*A125947(n+1))%A125946(n+1)` -/
def P1433398130160758026.Spec : Prop :=
  ∀ n, P1433398130160758026.a n = A126635 (n + 1)

end A126635

/-!
# A126637: Difference x-y of generator pairs (x,y) {x and y coprime and not both odd, x>y} of primitive Pythagorean triangles, sorted on values x+y (A126611), then on x-y.

The programs for A126637, there is no canonical definition to state claims against.
-/

/-! ## A126637.P10304638243004464771

`A049581(A277557(n+1))`
-/

namespace A126637.P10304638243004464771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A277557 (n + 1)).toNat

end

end A126637.P10304638243004464771

/-! ## A126637.P13606575950265463358

`A056951(A277557(n+1)+1)`
-/

namespace A126637.P13606575950265463358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (A277557 (n + 1) + 1).toNat

end

end A126637.P13606575950265463358

/-! ## A126637.P709369358244326179

`A130517(A277557(n+1)+1)`
-/

namespace A126637.P709369358244326179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A277557 (n + 1) + 1).toNat

end

end A126637.P709369358244326179

/-! ## A126637.P8851788949774203388

`abs(A114327(A277557(Δ[n²]-n)))`
-/

namespace A126637.P8851788949774203388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114327 (A277557 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat|

end

end A126637.P8851788949774203388

/-! ## A126637.P831344020312531537

`2-A114327(A277557(n+1)-1)`
-/

namespace A126637.P831344020312531537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A114327 (A277557 (n + 1) - 1).toNat

end

end A126637.P831344020312531537

/-! ## A126637.P12349177152762492655

`lcm(A020985(n), A114327(A277557(n+1)))`
-/

namespace A126637.P12349177152762492655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A114327 (A277557 (n + 1)).toNat)

end

end A126637.P12349177152762492655

/-! ## A126637.P1175082127737575314

`∑{d}[A114327(A277557(n+1)), A000010(#)]`
-/

namespace A126637.P1175082127737575314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A277557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A126637.P1175082127737575314

/-! ## A126637.P16287746399839056504

`∏{d}[A114327(A277557(n+1)), A014963(#)]`
-/

namespace A126637.P16287746399839056504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A277557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A126637.P16287746399839056504

/-! ## A126637.P10325420339270098132

`-(A114327(A277557(n+1))%A017105(n))`
-/

namespace A126637.P10325420339270098132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A114327 (A277557 (n + 1)).toNat) (A017105 n)

end

end A126637.P10325420339270098132

/-! ## A126637.P15021310950440663980

`gcd(A159075(n)², A114327(A277557(n+1)))`
-/

namespace A126637.P15021310950440663980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159075 n ^ 2) (A114327 (A277557 (n + 1)).toNat)

end

end A126637.P15021310950440663980

/-!
# A126639: a(n) is the number of integers k less than 10^n such that the decimal representation of k lacks the digit 1,2,3, at least one of digits 4,5,6 and at least one of digits 7,8,9.

The programs for A126639, the canonical program `A126639.P14326257719602718174` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126639 has offset 1).

The definition of A126639 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126639.P14326257719602718174

`9*5^(n+1)-18*4^(n+1)+15*3^(n+1)-6*2^(n+1)+1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126639

/-- `9*5^(n+1)-18*4^(n+1)+15*3^(n+1)-6*2^(n+1)+1` -/
def P14326257719602718174.Spec : Prop :=
  ∀ n, P14326257719602718174.a n = A126639 (n + 1)

theorem P14326257719602718174.correct : P14326257719602718174.Spec := by
  intro n
  simp only [A126639, Nat.add_sub_cancel]

end A126639

/-!
# A126640: a(n) is the number of integers k less than 10^n such that the decimal representation of k lacks the digit 1 and 2, at least one of digits 3,4, at least one of digits 5,6 and at least one of digits 7,8,9.

The programs for A126640, the canonical program `A126640.P6142597627914423795` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126640 has offset 1).

The definition of A126640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126640.P6142597627914423795

`12*5^(n+1)-24*4^(n+1)+19*3^(n+1)-7*2^(n+1)+1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126640

/-- `12*5^(n+1)-24*4^(n+1)+19*3^(n+1)-7*2^(n+1)+1` -/
def P6142597627914423795.Spec : Prop :=
  ∀ n, P6142597627914423795.a n = A126640 (n + 1)

theorem P6142597627914423795.correct : P6142597627914423795.Spec := by
  intro n
  simp only [A126640, Nat.add_sub_cancel]

end A126640

/-!
# A126641: a(n) is the number of integers k less than 10^n such that the decimal representation of k lacks the digit 1, at least one of digits 2,3, at least one of digits 4,5, at least one of digits 6,7 and at least one of digits 8,9.

The programs for A126641, the canonical program `A126641.P8703052922613386976` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126641 has offset 1).

The definition of A126641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126641.P8703052922613386976

`8*(2*5^(n+1)-4*4^(n+1)+3*3^(n+1)-2^(n+1))+1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126641

/-- `8*(2*5^(n+1)-4*4^(n+1)+3*3^(n+1)-2^(n+1))+1` -/
def P8703052922613386976.Spec : Prop :=
  ∀ n, P8703052922613386976.a n = A126641 (n + 1)

theorem P8703052922613386976.correct : P8703052922613386976.Spec := by
  intro n
  simp only [A126641, Nat.add_sub_cancel]

end A126641

/-!
# A126642: a(n) is the number of integers k less than 10^n such that the decimal representation of k lacks the digits 1,2,3,4 and 5 and at least one of digits 6,7,8,9.

The programs for A126642, the canonical program `A126642.P15282125430874118244` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126642 has offset 1).

The definition of A126642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126642.P15282125430874118244

`4*4^(n+1)-6*3^(n+1)+4*2^(n+1)-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126642

/-- `4*4^(n+1)-6*3^(n+1)+4*2^(n+1)-1` -/
def P15282125430874118244.Spec : Prop :=
  ∀ n, P15282125430874118244.a n = A126642 (n + 1)

theorem P15282125430874118244.correct : P15282125430874118244.Spec := by
  intro n
  simp only [A126642, Nat.add_sub_cancel]

end A126642

/-! ## A126642.P53876259002091514

`xor(3, A092880(A289207(n+4)))`
-/

namespace A126642.P53876259002091514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A092880 (A289207 (n + 4)).toNat)

end

end A126642.P53876259002091514

namespace A126642

/-- `xor(3, A092880(A289207(n+4)))` -/
def P53876259002091514.Spec : Prop :=
  ∀ n, P53876259002091514.a n = A126642 (n + 1)

end A126642

/-! ## A126642.P12277383861025939949

`A255689(A390529(n+1))`
-/

namespace A126642.P12277383861025939949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255689 (A390529 (n + 1)).toNat

end

end A126642.P12277383861025939949

namespace A126642

/-- `A255689(A390529(n+1))` -/
def P12277383861025939949.Spec : Prop :=
  ∀ n, P12277383861025939949.a n = A126642 (n + 1)

end A126642

/-!
# A126643: a(n) is the number of integers k less than 10^n such that the decimal representation of k lacks the digits 1,2,3,4, at least one of digits 5,6 and at least one of digits 7,8,9.

The programs for A126643, the canonical program `A126643.P6459132626921416239` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126643 has offset 1).

The definition of A126643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126643.P6459132626921416239

`6*4^(n+1)-9*3^(n+1)+5*2^(n+1)-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126643

/-- `6*4^(n+1)-9*3^(n+1)+5*2^(n+1)-1` -/
def P6459132626921416239.Spec : Prop :=
  ∀ n, P6459132626921416239.a n = A126643 (n + 1)

theorem P6459132626921416239.correct : P6459132626921416239.Spec := by
  intro n
  simp only [A126643, Nat.add_sub_cancel]

end A126643

/-! ## A126643.P14426627083037567581

`abs(A007582(n+2)-A133789(n+3))`
-/

namespace A126643.P14426627083037567581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007582 (n + 2) - A133789 (n + 3)|

end

end A126643.P14426627083037567581

namespace A126643

/-- `abs(A007582(n+2)-A133789(n+3))` -/
def P14426627083037567581.Spec : Prop :=
  ∀ n, P14426627083037567581.a n = A126643 (n + 1)

end A126643

/-! ## A126643.P8467573489281850438

`(A126718(n+1)+A126642(n+1))/2`
-/

namespace A126643.P8467573489281850438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126718 (n + 1) + A126642 (n + 1) : ℚ) / 2

end

end A126643.P8467573489281850438

namespace A126643

/-- `(A126718(n+1)+A126642(n+1))/2` -/
def P8467573489281850438.Spec : Prop :=
  ∀ n, P8467573489281850438.a n = (A126643 (n + 1) : ℚ)

theorem P8467573489281850438.correct : P8467573489281850438.Spec := by
  intro n
  simp only [A126643, Nat.add_sub_cancel, A126643.P8467573489281850438.a, A126643.P6459132626921416239.a, A126642, A126642.P15282125430874118244.a, A126718, A126718.P13969018438012484406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A126643

/-!
# A126644: a(n) = 3*3^n - 3*2^n + 1.

The programs for A126644, the canonical program `A126644.P12124089507506933368` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126644 has offset 1).

The definition of A126644 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*3^(n+1)-3*2^(n+1)+1` (program `A126644.P12124089507506933368`, by `A126644.P12124089507506933368.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126644.P12124089507506933368

`3*3^(n+1)-3*2^(n+1)+1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126644

/-- `3*3^(n+1)-3*2^(n+1)+1` -/
def P12124089507506933368.Spec : Prop :=
  ∀ n, P12124089507506933368.a n = A126644 (n + 1)

theorem P12124089507506933368.correct : P12124089507506933368.Spec := by
  intro n
  simp only [A126644, Nat.add_sub_cancel]

end A126644

/-! ## A126644.P2288979305794294697

`∑[ogf((4-8x+6x^2)/(1-5x+6x^2))]`
-/

namespace A126644.P2288979305794294697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -8, 6] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126644.P2288979305794294697

namespace A126644

/-- `∑[ogf((4-8x+6x^2)/(1-5x+6x^2))]` -/
def P2288979305794294697.Spec : Prop :=
  ∀ n, P2288979305794294697.a n = A126644 (n + 1)

end A126644

/-! ## A126644.P2817327239146369572

`2*(∑[3^n]+a(n-1))` with `a(0)=4`
-/

namespace A126644.P2817327239146369572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A126644.P2817327239146369572

namespace A126644

/-- `2*(∑[3^n]+a(n-1))` -/
def P2817327239146369572.Spec : Prop :=
  ∀ n, (P2817327239146369572.a n : ℤ) = A126644 (n + 1)

end A126644

/-! ## A126644.P2952675774530561021

`A168583(n+4)`
-/

namespace A126644.P2952675774530561021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168583 (n + 4)

end

end A126644.P2952675774530561021

namespace A126644

/-- `A168583(n+4)` -/
def P2952675774530561021.Spec : Prop :=
  ∀ n, P2952675774530561021.a n = A126644 (n + 1)

theorem P2952675774530561021.correct : P2952675774530561021.Spec := by
  intro n
  simp only [A126644, Nat.add_sub_cancel, A126644.P2952675774530561021.a, A126644.P12124089507506933368.a, A168583, A168583.P3956923535721516061.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A126644

/-! ## A126644.P9553346464732332476

`Δ[A094033(n+2)+n]`
-/

namespace A126644.P9553346464732332476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126644.P9553346464732332476

namespace A126644

/-- `Δ[A094033(n+2)+n]` -/
def P9553346464732332476.Spec : Prop :=
  ∀ n, P9553346464732332476.a n = A126644 (n + 1)

end A126644

/-! ## A126644.P1072129567079416497

`floor(A002783(n+1)/sqrt(4/9))`
-/

namespace A126644.P1072129567079416497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002783 (n + 1) : ℝ) / Real.sqrt ((4 : ℚ) / 9 : ℝ)⌋

end

end A126644.P1072129567079416497

namespace A126644

/-- `floor(A002783(n+1)/sqrt(4/9))` -/
def P1072129567079416497.Spec : Prop :=
  ∀ n, P1072129567079416497.a n = A126644 (n + 1)

end A126644

/-! ## A126644.P1692671976075405902

`Δ[A036550(n+1)-A000079(n+1)]`
-/

namespace A126644.P1692671976075405902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036550 (n + 1) - A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126644.P1692671976075405902

namespace A126644

/-- `Δ[A036550(n+1)-A000079(n+1)]` -/
def P1692671976075405902.Spec : Prop :=
  ∀ n, P1692671976075405902.a n = A126644 (n + 1)

end A126644

/-! ## A126644.P3810292802637578034

`(A091344(n+2)+1)/2`
-/

namespace A126644.P3810292802637578034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091344 (n + 2) + 1 : ℚ) / 2

end

end A126644.P3810292802637578034

namespace A126644

/-- `(A091344(n+2)+1)/2` -/
def P3810292802637578034.Spec : Prop :=
  ∀ n, P3810292802637578034.a n = (A126644 (n + 1) : ℚ)

theorem P3810292802637578034.correct : P3810292802637578034.Spec := by
  intro n
  simp only [A126644, Nat.add_sub_cancel, A126644.P3810292802637578034.a, A126644.P12124089507506933368.a, A091344, A091344.P9314832849917747821.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A126644

/-! ## A126644.P12997087678051444641

`2*(2*A000079(n)²-A032263(n+2))`
-/

namespace A126644.P12997087678051444641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A000079 n ^ 2 - A032263 (n + 2))

end

end A126644.P12997087678051444641

namespace A126644

/-- `2*(2*A000079(n)²-A032263(n+2))` -/
def P12997087678051444641.Spec : Prop :=
  ∀ n, P12997087678051444641.a n = A126644 (n + 1)

end A126644

/-! ## A126644.P9695137540466586779

`2*(A000079(2*n+1)-A032263(n+2))`
-/

namespace A126644.P9695137540466586779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 (2 * n + 1) - A032263 (n + 2))

end

end A126644.P9695137540466586779

namespace A126644

/-- `2*(A000079(2*n+1)-A032263(n+2))` -/
def P9695137540466586779.Spec : Prop :=
  ∀ n, P9695137540466586779.a n = A126644 (n + 1)

end A126644

/-!
# A126645: a(n) is the number of integers k less than 10^n such that the decimal representation of k lacks the digits 1,2,3,4 and 5, at least one of digits 6,7 and at least one of digits 8,9.

The programs for A126645, the canonical program `A126645.P7976440698526259015` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126645 has offset 1).

The definition of A126645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126645.P7976440698526259015

`4*(3^(n+1)-2^(n+1))+1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126645

/-- `4*(3^(n+1)-2^(n+1))+1` -/
def P7976440698526259015.Spec : Prop :=
  ∀ n, P7976440698526259015.a n = A126645 (n + 1)

theorem P7976440698526259015.correct : P7976440698526259015.Spec := by
  intro n
  simp only [A126645, Nat.add_sub_cancel]

end A126645

/-! ## A126645.P12587876428946106170

`∑[ogf((5-9x+6x^2)/(1-5x+6x^2))]`
-/

namespace A126645.P12587876428946106170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -9, 6] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126645.P12587876428946106170

namespace A126645

/-- `∑[ogf((5-9x+6x^2)/(1-5x+6x^2))]` -/
def P12587876428946106170.Spec : Prop :=
  ∀ n, P12587876428946106170.a n = A126645 (n + 1)

end A126645

/-! ## A126645.P15453608313790886805

`xor(5, 8*(∑[3^n]-2^n))`
-/

namespace A126645.P15453608313790886805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (8 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)))

end

end A126645.P15453608313790886805

namespace A126645

/-- `xor(5, 8*(∑[3^n]-2^n))` -/
def P15453608313790886805.Spec : Prop :=
  ∀ n, P15453608313790886805.a n = A126645 (n + 1)

end A126645

/-! ## A126645.P2647700159570364845

`or(1, Δ[A255459(n)])`
-/

namespace A126645.P2647700159570364845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A126645.P2647700159570364845

namespace A126645

/-- `or(1, Δ[A255459(n)])` -/
def P2647700159570364845.Spec : Prop :=
  ∀ n, P2647700159570364845.a n = A126645 (n + 1)

end A126645

/-! ## A126645.P13409719770186787984

`A366058(n+2)/6`
-/

namespace A126645.P13409719770186787984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366058 (n + 2) : ℚ) / 6

end

end A126645.P13409719770186787984

namespace A126645

/-- `A366058(n+2)/6` -/
def P13409719770186787984.Spec : Prop :=
  ∀ n, P13409719770186787984.a n = (A126645 (n + 1) : ℚ)

end A126645

/-!
# A126646: a(n) = 2^(n+1) - 1.

The programs for A126646, the canonical program `A126646.P3746310572697910447` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126646 has offset 0).

The definition of A126646 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)-1` (program `A126646.P3746310572697910447`, by `A126646.P3746310572697910447.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126646.P3746310572697910447

`2^(n+1)-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126646

/-- `2^(n+1)-1` -/
def P3746310572697910447.Spec : Prop :=
  ∀ n, P3746310572697910447.a n = A126646 n

theorem P3746310572697910447.correct : P3746310572697910447.Spec := by
  intro n
  simp only [A126646]

end A126646

/-! ## A126646.P6321572528130728668

`ogf(1/(1-3x+2x^2))`
-/

namespace A126646.P6321572528130728668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 2] n

end

end A126646.P6321572528130728668

namespace A126646

/-- `ogf(1/(1-3x+2x^2))` -/
def P6321572528130728668.Spec : Prop :=
  ∀ n, P6321572528130728668.a n = A126646 n

end A126646

/-! ## A126646.P5273901023840616203

`or(1, 2*a(n-1))` with `a(0)=1`
-/

namespace A126646.P5273901023840616203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (2 * a (n - 1))

end

end A126646.P5273901023840616203

namespace A126646

/-- `or(1, 2*a(n-1))` -/
def P5273901023840616203.Spec : Prop :=
  ∀ n, (P5273901023840616203.a n : ℤ) = A126646 n

end A126646

/-! ## A126646.P9141917886192517913

`xor(1, 2*a(n-1))` with `a(0)=1`
-/

namespace A126646.P9141917886192517913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A126646.P9141917886192517913

namespace A126646

/-- `xor(1, 2*a(n-1))` -/
def P9141917886192517913.Spec : Prop :=
  ∀ n, (P9141917886192517913.a n : ℤ) = A126646 n

end A126646

/-! ## A126646.P6345433666062914643

`abs(or(1, -2^(n+1)))`
-/

namespace A126646.P6345433666062914643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(2 ^ (n + 1) : ℤ))|

end

end A126646.P6345433666062914643

namespace A126646

/-- `abs(or(1, -2^(n+1)))` -/
def P6345433666062914643.Spec : Prop :=
  ∀ n, P6345433666062914643.a n = A126646 n

end A126646

/-! ## A126646.P7723161115669728357

`-or(1, -2^(n+1))`
-/

namespace A126646.P7723161115669728357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(2 ^ (n + 1) : ℤ))

end

end A126646.P7723161115669728357

namespace A126646

/-- `-or(1, -2^(n+1))` -/
def P7723161115669728357.Spec : Prop :=
  ∀ n, P7723161115669728357.a n = A126646 n

end A126646

/-! ## A126646.P3233948754068966014

`abs(xor(1, -2^(n+1)))`
-/

namespace A126646.P3233948754068966014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-(2 ^ (n + 1) : ℤ))|

end

end A126646.P3233948754068966014

namespace A126646

/-- `abs(xor(1, -2^(n+1)))` -/
def P3233948754068966014.Spec : Prop :=
  ∀ n, P3233948754068966014.a n = A126646 n

end A126646

/-! ## A126646.P11725514923091610518

`-xor(1, -2^(n+1))`
-/

namespace A126646.P11725514923091610518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(2 ^ (n + 1) : ℤ))

end

end A126646.P11725514923091610518

namespace A126646

/-- `-xor(1, -2^(n+1))` -/
def P11725514923091610518.Spec : Prop :=
  ∀ n, P11725514923091610518.a n = A126646 n

end A126646

/-! ## A126646.P3342832784410978008

`or(a(n-1), 2^n)` with `a(0)=1`
-/

namespace A126646.P3342832784410978008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (a (n - 1)) (2 ^ n)

end

end A126646.P3342832784410978008

namespace A126646

/-- `or(a(n-1), 2^n)` -/
def P3342832784410978008.Spec : Prop :=
  ∀ n, (P3342832784410978008.a n : ℤ) = A126646 n

end A126646

/-! ## A126646.P10349684302720793961

`xor(a(n-1), 2^n)` with `a(0)=1`
-/

namespace A126646.P10349684302720793961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (a (n - 1)) (2 ^ n)

end

end A126646.P10349684302720793961

namespace A126646

/-- `xor(a(n-1), 2^n)` -/
def P10349684302720793961.Spec : Prop :=
  ∀ n, (P10349684302720793961.a n : ℤ) = A126646 n

end A126646

/-! ## A126646.P7191532549394358177

`record[2^abs(1-n)-1]`
-/

namespace A126646.P7191532549394358177
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126646.P7191532549394358177

namespace A126646

/-- `record[2^abs(1-n)-1]` -/
def P7191532549394358177.Spec : Prop :=
  ∀ n, P7191532549394358177.a n = (A126646 n : ℚ)

end A126646

/-! ## A126646.P9894373946097862840

`abs(∑[2*a(n-1)])` with `a(0)=1`
-/

namespace A126646.P9894373946097862840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126646.P9894373946097862840

namespace A126646

/-- `abs(∑[2*a(n-1)])` -/
def P9894373946097862840.Spec : Prop :=
  ∀ n, (P9894373946097862840.a n : ℤ) = A126646 n

end A126646

/-! ## A126646.P14328158231582623185

`floor(∑[2*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A126646.P14328158231582623185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126646.P14328158231582623185

namespace A126646

/-- `floor(∑[2*a(n-1)])` -/
def P14328158231582623185.Spec : Prop :=
  ∀ n, (P14328158231582623185.a n : ℤ) = A126646 n

end A126646

/-! ## A126646.P12151521344280718284

`ceil(∑[2*a(n-1)])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A126646.P12151521344280718284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126646.P12151521344280718284

namespace A126646

/-- `ceil(∑[2*a(n-1)])` -/
def P12151521344280718284.Spec : Prop :=
  ∀ n, (P12151521344280718284.a n : ℤ) = A126646 n

end A126646

/-! ## A126646.P16118044752500638854

`round(∑[2*a(n-1)])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A126646.P16118044752500638854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126646.P16118044752500638854

namespace A126646

/-- `round(∑[2*a(n-1)])` -/
def P16118044752500638854.Spec : Prop :=
  ∀ n, (P16118044752500638854.a n : ℤ) = A126646 n

end A126646

/-! ## A126646.P2805539969616422358

`∑[record[2^(∑[n]%(n+1))]]`
-/

namespace A126646.P2805539969616422358
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126646.P2805539969616422358

namespace A126646

/-- `∑[record[2^(∑[n]%(n+1))]]` -/
def P2805539969616422358.Spec : Prop :=
  ∀ n, (P2805539969616422358.a n : ℤ) = A126646 n

end A126646

/-! ## A126646.P2088106811669340606

`or(a(n-1)+1, a(n-1))` with `a(0)=1`
-/

namespace A126646.P2088106811669340606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (a (n - 1) + 1) (a (n - 1))

end

end A126646.P2088106811669340606

namespace A126646

/-- `or(a(n-1)+1, a(n-1))` -/
def P2088106811669340606.Spec : Prop :=
  ∀ n, (P2088106811669340606.a n : ℤ) = A126646 n

end A126646

/-! ## A126646.P5525546153235921647

`xor(a(n-1)+1, a(n-1))` with `a(0)=1`
-/

namespace A126646.P5525546153235921647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (a (n - 1) + 1) (a (n - 1))

end

end A126646.P5525546153235921647

namespace A126646

/-- `xor(a(n-1)+1, a(n-1))` -/
def P5525546153235921647.Spec : Prop :=
  ∀ n, (P5525546153235921647.a n : ℤ) = A126646 n

end A126646

/-! ## A126646.P15997070479050352926

`abs(a(n-1)+a(n-1)+1)` with `a(0)=1`
-/

namespace A126646.P15997070479050352926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 1)

end

end A126646.P15997070479050352926

namespace A126646

/-- `abs(a(n-1)+a(n-1)+1)` -/
def P15997070479050352926.Spec : Prop :=
  ∀ n, (P15997070479050352926.a n : ℤ) = A126646 n

theorem P15997070479050352926.correct : P15997070479050352926.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A126646, Nat.add_sub_cancel, A126646.P15997070479050352926.a, A126646.P3746310572697910447.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A126646, Nat.add_sub_cancel, A126646.P15997070479050352926.a, A126646.P3746310572697910447.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A126646

/-! ## A126646.P15907117310015032672

`floor(a(n-1)+a(n-1)+1)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A126646.P15907117310015032672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 1)

end

end A126646.P15907117310015032672

namespace A126646

/-- `floor(a(n-1)+a(n-1)+1)` -/
def P15907117310015032672.Spec : Prop :=
  ∀ n, (P15907117310015032672.a n : ℤ) = A126646 n

theorem P15907117310015032672.correct : P15907117310015032672.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A126646, Nat.add_sub_cancel, A126646.P15907117310015032672.a, A126646.P3746310572697910447.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A126646, Nat.add_sub_cancel, A126646.P15907117310015032672.a, A126646.P3746310572697910447.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A126646

/-!
# A126649: A 5 x 5 magic square.

The programs for A126649, there is no canonical definition to state claims against.
-/

/-! ## A126649.P5626871188986281964

`A126651(A031482(n+1))`
-/

namespace A126649.P5626871188986281964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126651 (A031482 (n + 1)).toNat

end

end A126649.P5626871188986281964

/-! ## A126649.P3688877644099634650

`A126651(A037466(n)+1)`
-/

namespace A126649.P3688877644099634650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126651 (A037466 n + 1).toNat

end

end A126649.P3688877644099634650

/-! ## A126649.P17988155172699002564

`A126650(A037468(n)+1)`
-/

namespace A126649.P17988155172699002564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126650 (A037468 n + 1).toNat

end

end A126649.P17988155172699002564

/-! ## A126649.P11965765883421061777

`A126651(A047369(n+1))`
-/

namespace A126649.P11965765883421061777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126651 (A047369 (n + 1)).toNat

end

end A126649.P11965765883421061777

/-! ## A126649.P11551417634585830933

`A126651(A047305(n+1)-1)`
-/

namespace A126649.P11551417634585830933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126651 (A047305 (n + 1) - 1).toNat

end

end A126649.P11551417634585830933

/-!
# A126651: A 7 X 7 magic square.

The programs for A126651, there is no canonical definition to state claims against.
-/

/-! ## A126651.P1853419851330344413

`A126650(A031492(n+1))`
-/

namespace A126651.P1853419851330344413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126650 (A031492 (n + 1)).toNat

end

end A126651.P1853419851330344413

/-! ## A126651.P12572942227579818240

`A126650(A037475(n)+1)`
-/

namespace A126651.P12572942227579818240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126650 (A037475 n + 1).toNat

end

end A126651.P12572942227579818240

/-! ## A126651.P6075678921799482872

`A126650(A272574(n)+1)`
-/

namespace A126651.P6075678921799482872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126650 (A272574 n + 1).toNat

end

end A126651.P6075678921799482872

/-! ## A126651.P11545187486613246248

`A126650(A039111(n+1)+1)`
-/

namespace A126651.P11545187486613246248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126650 (A039111 (n + 1) + 1).toNat

end

end A126651.P11545187486613246248

/-!
# A126655: Numbers n such that 6*p(n)-1 and 6*p(n)+1 are twin primes and 6*p(n+1)-1 and 6*p(n+1)+1 are also twin primes with p(n) = n-th prime.

The programs for A126655, there is no canonical definition to state claims against.
-/

/-! ## A126655.P7915665995723782746

`A003311(a(n-2)^3)` with `a(0)=1, a(1)=2`
-/

namespace A126655.P7915665995723782746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A003311 (a (n - 2) ^ 3).toNat

end

end A126655.P7915665995723782746

/-!
# A126656: a(1)=1; for n>1, a(n) = Sum_{k=1..n-1} a(k) * floor(n/k).

The programs for A126656, there is no canonical definition to state claims against.
-/

/-! ## A126656.P10394538043106277161

`A341029(n)+A000005(A168579(n))`
-/

namespace A126656.P10394538043106277161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341029 n + A000005 (A168579 n).toNat

end

end A126656.P10394538043106277161

/-! ## A126656.P11002967769775101556

`A265564(2^n-n)+2^n-1`
-/

namespace A126656.P11002967769775101556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265564 (2 ^ n - n) + ((2 ^ n : ℤ) - 1)

end

end A126656.P11002967769775101556

/-! ## A126656.P10841142823021184786

`A387892(A345917(2^n))`
-/

namespace A126656.P10841142823021184786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387892 (A345917 (2 ^ n)).toNat

end

end A126656.P10841142823021184786

/-!
# A126659: Least number k > 0 such that ((2n-1)^k + 1)/(2n) is prime, or 0 if no such prime exists.

The programs for A126659, there is no canonical definition to state claims against.
-/

/-! ## A126659.P5256507609253114674

`A084742(2*(n+2)-1)`
-/

namespace A126659.P5256507609253114674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084742 (2 * (n + 2) - 1)

end

end A126659.P5256507609253114674

/-!
# A126663: Absolute difference between largest prime factors of two successive semiprimes.

The programs for A126663, there is no canonical definition to state claims against.
-/

/-! ## A126663.P15841434060386358579

`abs(Δ[A084127(n+1)])`
-/

namespace A126663.P15841434060386358579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A126663.P15841434060386358579

/-! ## A126663.P10562349199882139738

`abs(Δ[p?[A032742(n+1)]])`
-/

namespace A126663.P10562349199882139738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A126663.P10562349199882139738

/-! ## A126663.P9538111861487691783

`abs(Δ[p?[A060654(n+2)]])`
-/

namespace A126663.P9538111861487691783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060654 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A126663.P9538111861487691783

/-! ## A126663.P18165352463194123357

`abs(Δ[p?[ceil(n/A020639(n+1))]])`
-/

namespace A126663.P18165352463194123357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A020639 (n + 1) : ℚ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A126663.P18165352463194123357

/-! ## A126663.P6332849885628019284

`abs(Δ[A006022(A001358(n+1))])`
-/

namespace A126663.P6332849885628019284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006022 (A001358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A126663.P6332849885628019284

/-! ## A126663.P12471357566001070654

`abs(Δ[A006530(A074985(n+1))])`
-/

namespace A126663.P12471357566001070654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074985 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A126663.P12471357566001070654

/-! ## A126663.P14976802699507902132

`abs(Δ[A006530(A075818(n+1))])`
-/

namespace A126663.P14976802699507902132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A075818 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A126663.P14976802699507902132

/-! ## A126663.P10086961450039202618

`∑{d}[Δ[A084127(n+1)], A000010(#)]`
-/

namespace A126663.P10086961450039202618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A126663.P10086961450039202618

/-! ## A126663.P7177305313845264459

`abs(Δ[A006530(A186621(n+1)+1)])`
-/

namespace A126663.P7177305313845264459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A186621 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A126663.P7177305313845264459

/-! ## A126663.P13261869584969933091

`abs(Δ[A006530(eq[2, A001222(n+1)]+1)])`
-/

namespace A126663.P13261869584969933091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A126663.P13261869584969933091

/-!
# A126664: Continued fraction expansion of sqrt(3)/2.

The programs for A126664, the canonical program `A126664.P8984353107598702816` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126664 has offset 0).

The definition of A126664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126664.P8984353107598702816

`a(n-2)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126664

/-- `a(n-2)` -/
def P8984353107598702816.Spec : Prop :=
  ∀ n, (P8984353107598702816.a n : ℤ) = A126664 n

theorem P8984353107598702816.correct : P8984353107598702816.Spec := by
  intro n
  simp only [A126664]

end A126664

/-!
# A126665: a(n) = -n^2 + 9*n + 53.

The programs for A126665, the canonical program `A126665.P5583068285222422123` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126665 has offset 0).

The definition of A126665 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-n²+9*n+53` (program `A126665.P5583068285222422123`, by `A126665.P5583068285222422123.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126665.P5583068285222422123

`-n²+9*n+53`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126665

/-- `-n²+9*n+53` -/
def P5583068285222422123.Spec : Prop :=
  ∀ n, P5583068285222422123.a n = A126665 n

theorem P5583068285222422123.correct : P5583068285222422123.Spec := by
  intro n
  simp only [A126665]

end A126665

/-! ## A126665.P1699203487062705737

`-A186950(n+19)`
-/

namespace A126665.P1699203487062705737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A186950 (n + 19)

end

end A126665.P1699203487062705737

namespace A126665

/-- `-A186950(n+19)` -/
def P1699203487062705737.Spec : Prop :=
  ∀ n, P1699203487062705737.a n = A126665 n

theorem P1699203487062705737.correct : P1699203487062705737.Spec := by
  intro n
  simp only [A126665, Nat.add_sub_cancel, A126665.P1699203487062705737.a, A126665.P5583068285222422123.a, A186950, A186950.P5888249427520452918.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126665

/-! ## A126665.P8218990965486822282

`∑[a(n-1)-2]` with `a(0)=53, a(1)=8`
-/

namespace A126665.P8218990965486822282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [53, 8] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126665.P8218990965486822282

namespace A126665

/-- `∑[a(n-1)-2]` -/
def P8218990965486822282.Spec : Prop :=
  ∀ n, P8218990965486822282.a n = A126665 n

end A126665

/-! ## A126665.P8869406875571001225

`Δ[A211013(n+4)-A056520(n)]`
-/

namespace A126665.P8869406875571001225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211013 (n + 4) - A056520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126665.P8869406875571001225

namespace A126665

/-- `Δ[A211013(n+4)-A056520(n)]` -/
def P8869406875571001225.Spec : Prop :=
  ∀ n, P8869406875571001225.a n = A126665 n

end A126665

/-! ## A126665.P14312889165504119480

`A008683(A117366(n+1))*A186950(n+19)`
-/

namespace A126665.P14312889165504119480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A117366 (n + 1)).toNat * A186950 (n + 19)

end

end A126665.P14312889165504119480

namespace A126665

/-- `A008683(A117366(n+1))*A186950(n+19)` -/
def P14312889165504119480.Spec : Prop :=
  ∀ n, P14312889165504119480.a n = A126665 n

end A126665

/-! ## A126665.P1048326482474177276

`A087003(A020639(10*n+5))*A186950(n+19)`
-/

namespace A126665.P1048326482474177276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (A020639 (10 * n + 5)).toNat * A186950 (n + 19)

end

end A126665.P1048326482474177276

namespace A126665

/-- `A087003(A020639(10*n+5))*A186950(n+19)` -/
def P1048326482474177276.Spec : Prop :=
  ∀ n, P1048326482474177276.a n = A126665 n

end A126665

/-! ## A126665.P11261466140916370462

`A008683(A008578(n+2))*A186950(n+19)`
-/

namespace A126665.P11261466140916370462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008578 (n + 2)).toNat * A186950 (n + 19)

end

end A126665.P11261466140916370462

namespace A126665

/-- `A008683(A008578(n+2))*A186950(n+19)` -/
def P11261466140916370462.Spec : Prop :=
  ∀ n, P11261466140916370462.a n = A126665 n

end A126665

/-! ## A126665.P1468087841858925597

`A008683(A118359(n+1))*A186950(n+19)`
-/

namespace A126665.P1468087841858925597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A118359 (n + 1)).toNat * A186950 (n + 19)

end

end A126665.P1468087841858925597

namespace A126665

/-- `A008683(A118359(n+1))*A186950(n+19)` -/
def P1468087841858925597.Spec : Prop :=
  ∀ n, P1468087841858925597.a n = A126665 n

end A126665

/-!
# A126668: A036983 + A036984.

The programs for A126668, there is no canonical definition to state claims against.
-/

/-! ## A126668.P14790293359209569226

`A036984(n+2)+A036983(n+2)`
-/

namespace A126668.P14790293359209569226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036984 (n + 2) + A036983 (n + 2)

end

end A126668.P14790293359209569226

/-! ## A126668.P11689027177593832110

`or(A001097(n+1), A139391(A068766(n)))`
-/

namespace A126668.P11689027177593832110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001097 (n + 1)) (A139391 (A068766 n).toNat)

end

end A126668.P11689027177593832110

/-!
# A126671: Triangle read by rows: row n (n>=0) has g.f. Sum_{i=1..n} n!*x^i*(1+x)^(n-i)/(n+1-i).

The programs for A126671, there is no canonical definition to state claims against.
-/

/-! ## A126671.P3041403469284949982

`A089588(A007947(n+1))%A209418(n+1)`
-/

namespace A126671.P3041403469284949982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089588 (A007947 (n + 1)).toNat) (A209418 (n + 1))

end

end A126671.P3041403469284949982

/-! ## A126671.P4583559781589834581

`A264966(A319119(n+1)%A002260(n+1)²*A069777(n))`
-/

namespace A126671.P4583559781589834581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (Int.tmod (A319119 (n + 1)) (A002260 (n + 1) ^ 2) * A069777 n).toNat

end

end A126671.P4583559781589834581

/-!
# A126672: Third column of A126671.

The programs for A126672, there is no canonical definition to state claims against.
-/

/-! ## A126672.P14446348174899538981

`A000124((n+1)²)*A104150(n)`
-/

namespace A126672.P14446348174899538981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 ((n + 1) ^ 2) * A104150 n

end

end A126672.P14446348174899538981

/-! ## A126672.P10853182978425278203

`A104150(n)*A134869((n+1)²)`
-/

namespace A126672.P10853182978425278203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n * A134869 ((n + 1) ^ 2)

end

end A126672.P10853182978425278203

/-! ## A126672.P8254010742336890571

`(A037270(n+1)+1)*A104150(n)`
-/

namespace A126672.P8254010742336890571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037270 (n + 1) + 1) * A104150 n

end

end A126672.P8254010742336890571

/-! ## A126672.P3524826421670706440

`A000124((n+1)²)*A116447(A004273(n))`
-/

namespace A126672.P3524826421670706440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 ((n + 1) ^ 2) * A116447 (A004273 n).toNat

end

end A126672.P3524826421670706440

/-! ## A126672.P1196764708011181064

`record[A000124(A008833(n+1))]*A104150(n)`
-/

namespace A126672.P1196764708011181064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A008833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A104150 n

end

end A126672.P1196764708011181064

/-!
# A126673: Third diagonal of A126671.

The programs for A126673, there is no canonical definition to state claims against.
-/

/-! ## A126673.P6546958492946958958

`(n+2)!*∑[∑[n]/(n+2)]`
-/

namespace A126673.P6546958492946958958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126673.P6546958492946958958

/-! ## A126673.P10132093293676086044

`∑[∑[n]/(n+2)]*∏[n+2]`
-/

namespace A126673.P10132093293676086044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (n + 2 : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)

end

end A126673.P10132093293676086044

/-! ## A126673.P5391801481226022318

`A001809(n+2)-A067318(n+2)`
-/

namespace A126673.P5391801481226022318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001809 (n + 2) - A067318 (n + 2)

end

end A126673.P5391801481226022318

/-! ## A126673.P6649739467183710700

`A001804(n+2)-A159324(n+2)`
-/

namespace A126673.P6649739467183710700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001804 (n + 2) - A159324 (n + 2)

end

end A126673.P6649739467183710700

/-! ## A126673.P9550197870429741992

`A001804(n+2)%A159324(A020725(n+1))`
-/

namespace A126673.P9550197870429741992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001804 (n + 2)) (A159324 (A020725 (n + 1)).toNat)

end

end A126673.P9550197870429741992

/-!
# A126674: a(n) = n!*Sum_{j=0..n-1} 2^j/(j+1).

The programs for A126674, there is no canonical definition to state claims against.
-/

/-! ## A126674.P16016058591833285567

`a(n-1)*n+(n-1)!*2^(n-1)` with `a(0)=0`
-/

namespace A126674.P16016058591833285567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * (n : ℚ) + (Nat.factorial ((n : ℤ) - 1).toNat : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A126674.P16016058591833285567

/-! ## A126674.P3247943928389884223

`A084938(∑[n+1]+2)/2*2^n`
-/

namespace A126674.P3247943928389884223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084938 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / 2 * (2 ^ n : ℚ)

end

end A126674.P3247943928389884223

/-! ## A126674.P17994888280188828920

`A279683(n)+A000254(n)`
-/

namespace A126674.P17994888280188828920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279683 n + A000254 n

end

end A126674.P17994888280188828920

/-! ## A126674.P6572413917935034381

`A279683(n)+abs(A081048(n))`
-/

namespace A126674.P6572413917935034381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279683 n + |A081048 n|

end

end A126674.P6572413917935034381

/-! ## A126674.P13203139656130906131

`record[A062110(n)*A084938(n+1)]`
-/

namespace A126674.P13203139656130906131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 n * A084938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126674.P13203139656130906131

/-! ## A126674.P11356632046520995790

`record[A053120(n)*A084938(n+3)]`
-/

namespace A126674.P11356632046520995790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 n * A084938 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126674.P11356632046520995790

/-! ## A126674.P9851549540969876771

`∑[A186374(n)]*A059268(A055998(n))`
-/

namespace A126674.P9851549540969876771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A059268 (A055998 n).toNat

end

end A126674.P9851549540969876771

/-! ## A126674.P15916819332796049143

`A034008(n+1)*A084938(A133263(n+1))`
-/

namespace A126674.P15916819332796049143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 1) * A084938 (A133263 (n + 1)).toNat

end

end A126674.P15916819332796049143

/-!
# A126675: Product_{i=2..n} |Stirling_1(i,2)|.

The programs for A126675, there is no canonical definition to state claims against.
-/

/-! ## A126675.P16884717107575346730

`∏[(n+1)!*∑[1/(n+1)]]`
-/

namespace A126675.P16884717107575346730
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126675.P16884717107575346730

/-! ## A126675.P6553450647361866119

`∏[∑[1/(n+1)]*∏[n+1]]`
-/

namespace A126675.P6553450647361866119
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * ((∏ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126675.P6553450647361866119

/-! ## A126675.P15734984703534504406

`abs(∏[n!+(n+1)*a(n-1)])` with `a(0)=1`
-/

namespace A126675.P15734984703534504406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.factorial n + (n + 1) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126675.P15734984703534504406

/-! ## A126675.P6824717275866945844

`floor(∏[n!+(n+1)*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A126675.P6824717275866945844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.factorial n + (n + 1) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126675.P6824717275866945844

/-! ## A126675.P1998093328665102052

`ceil(∏[n!+(n+1)*a(n-1)])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A126675.P1998093328665102052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.factorial n + (n + 1) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126675.P1998093328665102052

/-!
# A126676: Product_{i=3..n} |Stirling_1(i,3)|.

The programs for A126676, there is no canonical definition to state claims against.
-/

/-! ## A126676.P7954790912007591322

`∏[A000399(n+3)]`
-/

namespace A126676.P7954790912007591322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000399 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126676.P7954790912007591322

/-! ## A126676.P3057621139397865263

`∏[abs(A081051(n+2))]`
-/

namespace A126676.P3057621139397865263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081051 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126676.P3057621139397865263

/-! ## A126676.P17770395671349628011

`∏[A163934(∑[n]+1)]`
-/

namespace A126676.P17770395671349628011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163934 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126676.P17770395671349628011

/-! ## A126676.P6249454293756311704

`a(n-1)*A130534(∑[n+2]+3)` with `a(0)=1`
-/

namespace A126676.P6249454293756311704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A130534 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A126676.P6249454293756311704

/-! ## A126676.P1650620194268837373

`∏[A151881(n+1)+n*a(n-1)]` with `a(0)=1`
-/

namespace A126676.P1650620194268837373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A151881 (n + 1) + (n : ℤ) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126676.P1650620194268837373

/-!
# A126677: Product_{i=4..n} |Stirling_1(i,4)|.

The programs for A126677, there is no canonical definition to state claims against.
-/

/-! ## A126677.P9450924302284353018

`∏[A000454(n+4)]`
-/

namespace A126677.P9450924302284353018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000454 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126677.P9450924302284353018

/-! ## A126677.P11963216379204960896

`∏[A130534(∑[n+3]+6)]`
-/

namespace A126677.P11963216379204960896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (∑ j ∈ Finset.range (n + 1), f2 j + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126677.P11963216379204960896

/-! ## A126677.P5013026814312664497

`∏[A094638(Δ[A034857(n+1)])]`
-/

namespace A126677.P5013026814312664497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126677.P5013026814312664497

/-!
# A126678: Product_{i=5..n} |Stirling_1(i,5)|.

The programs for A126678, there is no canonical definition to state claims against.
-/

/-! ## A126678.P17316197438365538252

`∏[A000482(n+5)]`
-/

namespace A126678.P17316197438365538252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000482 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126678.P17316197438365538252

/-! ## A126678.P14999036000694838952

`∏[A132393(∑[a(n-1)+1])]` with `a(0)=20, a(1)=6`
-/

namespace A126678.P14999036000694838952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [20, 6] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126678.P14999036000694838952

/-!
# A126679: Product_{i=3..n} Stirling_2(i,3).

The programs for A126679, there is no canonical definition to state claims against.
-/

/-! ## A126679.P13866809606416430149

`a(n-1)*∑[3^n+2*a(n-1)]` with `a(0)=1`
-/

namespace A126679.P13866809606416430149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 ^ n + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126679.P13866809606416430149

/-! ## A126679.P7546249172204680025

`∏[∑[ceil(3^(n-1))]+4*(3^n-2^n)]`
-/

namespace A126679.P7546249172204680025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 4 * ((3 ^ n : ℤ) - (2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126679.P7546249172204680025

/-! ## A126679.P11997369071657888424

`∏[sqrt(A000392(n+3))]²`
-/

namespace A126679.P11997369071657888424
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000392 (n + 3) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A126679.P11997369071657888424

/-! ## A126679.P4749896011360651118

`ceil(∏[A028243(n+3)/2])`
-/

namespace A126679.P4749896011360651118
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028243 (n + 3) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A126679.P4749896011360651118

/-! ## A126679.P3199801758688572115

`a(n-1)*∑[A001047(n+1)]` with `a(0)=1`
-/

namespace A126679.P3199801758688572115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126679.P3199801758688572115

/-!
# A126680: Product_{i=4..n} Stirling_2(i,4).

The programs for A126680, there is no canonical definition to state claims against.
-/

/-! ## A126680.P13999805454424981939

`∏[∑[A016269(n)]]`
-/

namespace A126680.P13999805454424981939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126680.P13999805454424981939

/-! ## A126680.P1235678084552484878

`∏[A000453(n+4)]`
-/

namespace A126680.P1235678084552484878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000453 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126680.P1235678084552484878

/-! ## A126680.P960672165260197870

`∏[∑[∑[A027650(n)]]]`
-/

namespace A126680.P960672165260197870
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126680.P960672165260197870

/-! ## A126680.P14144079109067035447

`∏[A008278(A056000(n)+7)]`
-/

namespace A126680.P14144079109067035447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A056000 n + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126680.P14144079109067035447

/-! ## A126680.P2288636986543305895

`∏[A076010(n)/A001019(n)]`
-/

namespace A126680.P2288636986543305895
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076010 n : ℚ) / (A001019 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126680.P2288636986543305895

/-!
# A126681: a(n) = Product_{i=5..n} Stirling_2(i,5).

The programs for A126681, there is no canonical definition to state claims against.
-/

/-! ## A126681.P13511635158761084618

`∏[∑[A025211(n)]]`
-/

namespace A126681.P13511635158761084618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126681.P13511635158761084618

/-! ## A126681.P744798469685784204

`∏[A000481(n+5)]`
-/

namespace A126681.P744798469685784204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000481 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126681.P744798469685784204

/-! ## A126681.P15902631640089346086

`∏[A056511(2*n+9)]`
-/

namespace A126681.P15902631640089346086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 (2 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126681.P15902631640089346086

/-! ## A126681.P5847767424035800249

`∏[A075908(n)/A000302(n)]`
-/

namespace A126681.P5847767424035800249
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075908 n : ℚ) / (A000302 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126681.P5847767424035800249

/-! ## A126681.P9657401738197318176

`∏[A075913(n)/A000351(n)]`
-/

namespace A126681.P9657401738197318176
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075913 n : ℚ) / (A000351 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126681.P9657401738197318176

/-!
# A126683: Number of partitions of the n-th triangular number n(n+1)/2 into distinct odd parts.

The programs for A126683, there is no canonical definition to state claims against.
-/

/-! ## A126683.P7241043072498604233

`A000700(∑[n])`
-/

namespace A126683.P7241043072498604233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126683.P7241043072498604233

/-! ## A126683.P8884051274788837189

`abs(A081362(∑[n]))`
-/

namespace A126683.P8884051274788837189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081362 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A126683.P8884051274788837189

/-! ## A126683.P15733509195202568285

`gcd(A000038(n), A081362(∑[n]))`
-/

namespace A126683.P15733509195202568285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A081362 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A126683.P15733509195202568285

/-! ## A126683.P9582576012961307781

`lcm(A020985(n), A081362(∑[n]))`
-/

namespace A126683.P9582576012961307781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A081362 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A126683.P9582576012961307781

/-! ## A126683.P4047599300437539034

`lcm((-1)^n, A000700(A000217(n)))`
-/

namespace A126683.P4047599300437539034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A000700 (A000217 n).toNat)

end

end A126683.P4047599300437539034

/-! ## A126683.P13935607971125458907

`A057077(n+1)*A081362(∑[n])`
-/

namespace A126683.P13935607971125458907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A081362 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126683.P13935607971125458907

/-! ## A126683.P3011740246615880347

`A000700(A000217(n))%A193579(n)`
-/

namespace A126683.P3011740246615880347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 (A000217 n).toNat) (A193579 n)

end

end A126683.P3011740246615880347

/-! ## A126683.P9465787049390802783

`lcm(A000700(A000217(n)), A057077(n))`
-/

namespace A126683.P9465787049390802783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000700 (A000217 n).toNat) (A057077 n)

end

end A126683.P9465787049390802783

/-! ## A126683.P5891376027068677873

`or(A000007(n), A000700(A000217(n)))`
-/

namespace A126683.P5891376027068677873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A000700 (A000217 n).toNat)

end

end A126683.P5891376027068677873

/-! ## A126683.P15249314082814188095

`A000700(A000217(n))+A000007(n+3)`
-/

namespace A126683.P15249314082814188095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A000217 n).toNat + A000007 (n + 3)

end

end A126683.P15249314082814188095

/-! ## A126683.P1464573494225200626

`A000700(A000217(n))+A000122(or(2, n))`
-/

namespace A126683.P1464573494225200626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A000217 n).toNat + A000122 (Nat.lor 2 n)

end

end A126683.P1464573494225200626

/-! ## A126683.P14315684142756637508

`or(A000122(n)%2, A000700(A000217(n)))`
-/

namespace A126683.P14315684142756637508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A000122 n) 2) (A000700 (A000217 n).toNat)

end

end A126683.P14315684142756637508

/-! ## A126683.P13661354280504000164

`A035377(3*n+4)+A000700(A000217(n))`
-/

namespace A126683.P13661354280504000164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (3 * n + 4) + A000700 (A000217 n).toNat

end

end A126683.P13661354280504000164

/-!
# A126684: Union of A000695 and 2*A000695.

The programs for A126684, the canonical program `A126684.P12104132709575714280` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126684 has offset 1).

The definition of A126684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126684.P12104132709575714280

`∪[A000695(n), A062880(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A126684

/-- `∪[A000695(n), A062880(n)]` -/
def P12104132709575714280.Spec : Prop :=
  ∀ n, (P12104132709575714280.a n : ℤ) = A126684 (n + 1)

theorem P12104132709575714280.correct : P12104132709575714280.Spec := by
  intro n
  simp only [A126684, Nat.add_sub_cancel]

end A126684

/-! ## A126684.P8436355133544624345

`∪[A032937(n+1), A000695(n)]`
-/

namespace A126684.P8436355133544624345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A126684.P8436355133544624345

namespace A126684

/-- `∪[A032937(n+1), A000695(n)]` -/
def P8436355133544624345.Spec : Prop :=
  ∀ n, (P8436355133544624345.a n : ℤ) = A126684 (n + 1)

end A126684

/-! ## A126684.P18236297760354767142

`∪[A000975(n), A032937(n+1)]`
-/

namespace A126684.P18236297760354767142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A126684.P18236297760354767142

namespace A126684

/-- `∪[A000975(n), A032937(n+1)]` -/
def P18236297760354767142.Spec : Prop :=
  ∀ n, (P18236297760354767142.a n : ℤ) = A126684 (n + 1)

end A126684

/-! ## A126684.P13630913780586969618

`∪[A002450(n), A032937(n+1)]`
-/

namespace A126684.P13630913780586969618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A126684.P13630913780586969618

namespace A126684

/-- `∪[A002450(n), A032937(n+1)]` -/
def P13630913780586969618.Spec : Prop :=
  ∀ n, (P13630913780586969618.a n : ℤ) = A126684 (n + 1)

end A126684

/-! ## A126684.P11746045105724090549

`∪[A083931(n), A032937(n+1)]`
-/

namespace A126684.P11746045105724090549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083931 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A126684.P11746045105724090549

namespace A126684

/-- `∪[A083931(n), A032937(n+1)]` -/
def P11746045105724090549.Spec : Prop :=
  ∀ n, (P11746045105724090549.a n : ℤ) = A126684 (n + 1)

end A126684

/-! ## A126684.P5223838228805784941

`∪[A062880(n), A098871(n)-1]`
-/

namespace A126684.P5223838228805784941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A126684.P5223838228805784941

namespace A126684

/-- `∪[A062880(n), A098871(n)-1]` -/
def P5223838228805784941.Spec : Prop :=
  ∀ n, (P5223838228805784941.a n : ℤ) = A126684 (n + 1)

end A126684

/-! ## A126684.P14387688123903945675

`A023717(eq[n, A265351(n)])`
-/

namespace A126684.P14387688123903945675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126684.P14387688123903945675

namespace A126684

/-- `A023717(eq[n, A265351(n)])` -/
def P14387688123903945675.Spec : Prop :=
  ∀ n, P14387688123903945675.a n = A126684 (n + 1)

end A126684

/-! ## A126684.P11844921121065149257

`record[gcd(n, A048647(n))]`
-/

namespace A126684.P11844921121065149257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A048647 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126684.P11844921121065149257

namespace A126684

/-- `record[gcd(n, A048647(n))]` -/
def P11844921121065149257.Spec : Prop :=
  ∀ n, (P11844921121065149257.a n : ℤ) = A126684 (n + 1)

end A126684

/-! ## A126684.P12662728863535167834

`eq[0, A139353(n)]`
-/

namespace A126684.P12662728863535167834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139353 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126684.P12662728863535167834

namespace A126684

/-- `eq[0, A139353(n)]` -/
def P12662728863535167834.Spec : Prop :=
  ∀ n, (P12662728863535167834.a n : ℤ) = A126684 (n + 1)

end A126684

/-! ## A126684.P15679838789912778004

`eq[0, A139354(n)]`
-/

namespace A126684.P15679838789912778004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126684.P15679838789912778004

namespace A126684

/-- `eq[0, A139354(n)]` -/
def P15679838789912778004.Spec : Prop :=
  ∀ n, (P15679838789912778004.a n : ℤ) = A126684 (n + 1)

end A126684

/-! ## A126684.P2598021468113663363

`eq[1, A377412(n)]`
-/

namespace A126684.P2598021468113663363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377412 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126684.P2598021468113663363

namespace A126684

/-- `eq[1, A377412(n)]` -/
def P2598021468113663363.Spec : Prop :=
  ∀ n, (P2598021468113663363.a n : ℤ) = A126684 (n + 1)

end A126684

/-! ## A126684.P16150312456792566166

`eq[n, A377413(n)]`
-/

namespace A126684.P16150312456792566166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377413 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126684.P16150312456792566166

namespace A126684

/-- `eq[n, A377413(n)]` -/
def P16150312456792566166.Spec : Prop :=
  ∀ n, (P16150312456792566166.a n : ℤ) = A126684 (n + 1)

end A126684

/-! ## A126684.P8759355874073614550

`record[abs(A053985(n))]`
-/

namespace A126684.P8759355874073614550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053985 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126684.P8759355874073614550

namespace A126684

/-- `record[abs(A053985(n))]` -/
def P8759355874073614550.Spec : Prop :=
  ∀ n, P8759355874073614550.a n = A126684 (n + 1)

end A126684

/-! ## A126684.P16930240495552612977

`eq[A000120(n), A139355(n)]`
-/

namespace A126684.P16930240495552612977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126684.P16930240495552612977

namespace A126684

/-- `eq[A000120(n), A139355(n)]` -/
def P16930240495552612977.Spec : Prop :=
  ∀ n, (P16930240495552612977.a n : ℤ) = A126684 (n + 1)

end A126684

/-! ## A126684.P8361566832757121102

`eq[A000120(n), A345927(n)]`
-/

namespace A126684.P8361566832757121102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345927 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126684.P8361566832757121102

namespace A126684

/-- `eq[A000120(n), A345927(n)]` -/
def P8361566832757121102.Spec : Prop :=
  ∀ n, (P8361566832757121102.a n : ℤ) = A126684 (n + 1)

end A126684

/-! ## A126684.P3817938719425576801

`eq[A007302(n), A345927(n)]`
-/

namespace A126684.P3817938719425576801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345927 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126684.P3817938719425576801

namespace A126684

/-- `eq[A007302(n), A345927(n)]` -/
def P3817938719425576801.Spec : Prop :=
  ∀ n, (P3817938719425576801.a n : ℤ) = A126684 (n + 1)

end A126684

/-! ## A126684.P16303428116503781976

`eq[A139355(n), A324466(n)]`
-/

namespace A126684.P16303428116503781976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324466 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A126684.P16303428116503781976

namespace A126684

/-- `eq[A139355(n), A324466(n)]` -/
def P16303428116503781976.Spec : Prop :=
  ∀ n, (P16303428116503781976.a n : ℤ) = A126684 (n + 1)

end A126684

/-! ## A126684.P18243732029676392597

`lt[A059905(n)*A059906(n), 1]`
-/

namespace A126684.P18243732029676392597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 n * A059906 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A126684.P18243732029676392597

namespace A126684

/-- `lt[A059905(n)*A059906(n), 1]` -/
def P18243732029676392597.Spec : Prop :=
  ∀ n, (P18243732029676392597.a n : ℤ) = A126684 (n + 1)

end A126684

/-! ## A126684.P15905305886082800461

`eq[0, A371459(n)]`
-/

namespace A126684.P15905305886082800461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126684.P15905305886082800461

namespace A126684

/-- `eq[0, A371459(n)]` -/
def P15905305886082800461.Spec : Prop :=
  ∀ n, (P15905305886082800461.a n : ℤ) = A126684 (n + 1)

end A126684

/-!
# A126685: In chess, the number of checkmate dual-free proof games in n plies.

The programs for A126685, there is no canonical definition to state claims against.
-/

/-! ## A126685.P4252689211422954422

`A362049(3*A355189(n))`
-/

namespace A126685.P4252689211422954422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362049 (3 * A355189 n).toNat

end

end A126685.P4252689211422954422

/-! ## A126685.P9117054539445326793

`A362049(lcm(3, A355189(n)))`
-/

namespace A126685.P9117054539445326793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362049 (Int.lcm 3 (A355189 n))

end

end A126685.P9117054539445326793

/-! ## A126685.P14446933582893658536

`A362049(∑{d}[A073031(n), #])`
-/

namespace A126685.P14446933582893658536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362049 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A126685.P14446933582893658536

/-! ## A126685.P8711445946606971282

`A332769(A276126(n))-A047010(n)`
-/

namespace A126685.P8711445946606971282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (A276126 n).toNat - A047010 n

end

end A126685.P8711445946606971282

/-!
# A126688: Lowest base in which n has distinct digits.

The programs for A126688, there is no canonical definition to state claims against.
-/

/-! ## A126688.P10577691289207641879

`A123699(ceil(acot(n)+n))`
-/

namespace A126688.P10577691289207641879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123699 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A126688.P10577691289207641879

/-! ## A126688.P5589241119098036508

`floor(A123699(n+1)+acot(n))`
-/

namespace A126688.P5589241119098036508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A123699 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A126688.P5589241119098036508

/-! ## A126688.P7523829838743687182

`A123699(ceil(2/(n+1))+n)`
-/

namespace A126688.P7523829838743687182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123699 (⌈2 / (n + 1 : ℚ)⌉ + (n : ℤ)).toNat

end

end A126688.P7523829838743687182

/-! ## A126688.P4601690556428434900

`A254667(A123699(n+1))`
-/

namespace A126688.P4601690556428434900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A123699 (n + 1)).toNat

end

end A126688.P4601690556428434900

/-! ## A126688.P16290422297979653802

`A233583(A123699(n+1)+1)`
-/

namespace A126688.P16290422297979653802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A123699 (n + 1) + 1).toNat

end

end A126688.P16290422297979653802

/-! ## A126688.P14327939331810065065

`A123699(n+1)+A000007(n)`
-/

namespace A126688.P14327939331810065065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123699 (n + 1) + A000007 n

end

end A126688.P14327939331810065065

/-! ## A126688.P3945479238799992622

`A054977(n)*A123699(n+1)`
-/

namespace A126688.P3945479238799992622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A123699 (n + 1)

end

end A126688.P3945479238799992622

/-! ## A126688.P1284171496589651860

`A000038(n)!*A123699(n+1)`
-/

namespace A126688.P1284171496589651860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A123699 (n + 1)

end

end A126688.P1284171496589651860

/-! ## A126688.P13763293682737109404

`A123699(n+1)+A003982(∑[n])`
-/

namespace A126688.P13763293682737109404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123699 (n + 1) + A003982 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126688.P13763293682737109404

/-! ## A126688.P6202600394804594190

`A123699(n+1)+A008425(n)%2`
-/

namespace A126688.P6202600394804594190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123699 (n + 1) + Int.tmod (A008425 n) 2

end

end A126688.P6202600394804594190

/-! ## A126688.P2763708965430571527

`A123699(n+1)+A008574(n)%2`
-/

namespace A126688.P2763708965430571527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123699 (n + 1) + Int.tmod (A008574 n) 2

end

end A126688.P2763708965430571527

/-! ## A126688.P2478730277049289408

`A123699(n+1)+A008683((n+1)²)`
-/

namespace A126688.P2478730277049289408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123699 (n + 1) + A008683 ((n + 1) ^ 2)

end

end A126688.P2478730277049289408

/-! ## A126688.P7995648543173427303

`A014963(4*n+2)*A123699(n+1)`
-/

namespace A126688.P7995648543173427303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A123699 (n + 1)

end

end A126688.P7995648543173427303

/-! ## A126688.P225934550450354765

`A000041(C(2, n+1))*A123699(n+1)`
-/

namespace A126688.P225934550450354765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 1)) * A123699 (n + 1)

end

end A126688.P225934550450354765

/-! ## A126688.P17997595145109065470

`A123699(n+1)+A000010((n+1)²)%2`
-/

namespace A126688.P17997595145109065470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123699 (n + 1) + Int.tmod (A000010 ((n + 1) ^ 2)) 2

end

end A126688.P17997595145109065470

/-! ## A126688.P9324201733850044010

`A123699(n+1)+char[A123730(3*(n+1))]`
-/

namespace A126688.P9324201733850044010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123730 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123699 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A126688.P9324201733850044010

/-! ## A126688.P5822523443733091524

`A123699(n+1)+char[A123745(3*n+2)]`
-/

namespace A126688.P5822523443733091524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123745 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123699 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A126688.P5822523443733091524

/-! ## A126688.P16651266921936643625

`A000034(A000010(n+2))*A123699(n+1)`
-/

namespace A126688.P16651266921936643625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000010 (n + 2)).toNat * A123699 (n + 1)

end

end A126688.P16651266921936643625

/-!
# A126690: Multiplicative function defined for prime powers by a(p^k) = p + p^2 + p^3 + ... + p^(k-1) - 1 (k >= 1).

The programs for A126690, there is no canonical definition to state claims against.
-/

/-! ## A126690.P7660523806423979467

`A330345(floor(n/∏{p}[n+1, #]))+(-1)^∑{e}[n+1, #]`
-/

namespace A126690.P7660523806423979467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330345 ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋.toNat + (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A126690.P7660523806423979467

/-! ## A126690.P4381568077586287782

`A291917((n+1)/∏{p}[n+1, #])+(-1)^∑{e}[n+1, #]`
-/

namespace A126690.P4381568077586287782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291917 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat + (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A126690.P4381568077586287782

/-! ## A126690.P17788264933102695769

`A280006((n+1)/∏{p}[n+1, #])+(-1)^∑{e}[n+1, #]`
-/

namespace A126690.P17788264933102695769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280006 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat + (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A126690.P17788264933102695769

/-! ## A126690.P2497158790312943410

`or(A092152(n+1), A275892(A038622(n)))`
-/

namespace A126690.P2497158790312943410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A092152 (n + 1)) (A275892 (A038622 n).toNat)

end

end A126690.P2497158790312943410

/-! ## A126690.P9013205095622252377

`A291917(A003557(n+1))+A008836(n+1)`
-/

namespace A126690.P9013205095622252377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291917 (A003557 (n + 1)).toNat + A008836 (n + 1)

end

end A126690.P9013205095622252377

/-!
# A126691: Prime numbers p such that 100-p is also a prime.

The programs for A126691, there is no canonical definition to state claims against.
-/

/-! ## A126691.P8976490739825017812

`A204938(n+4)`
-/

namespace A126691.P8976490739825017812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204938 (n + 4)

end

end A126691.P8976490739825017812

/-! ## A126691.P4035859486737696349

`p?[A228075(n+1)%(2^n)]`
-/

namespace A126691.P4035859486737696349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228075 (n + 1)) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126691.P4035859486737696349

/-! ## A126691.P4272405803824865398

`A060264(A312171(n))`
-/

namespace A126691.P4272405803824865398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (A312171 n).toNat

end

end A126691.P4272405803824865398

/-! ## A126691.P15119682915146109716

`A068811(A026419(n+1))`
-/

namespace A126691.P15119682915146109716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068811 (A026419 (n + 1)).toNat

end

end A126691.P15119682915146109716

/-! ## A126691.P160255560249336458

`A068811(A026425(n+1))`
-/

namespace A126691.P160255560249336458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068811 (A026425 (n + 1)).toNat

end

end A126691.P160255560249336458

/-!
# A126692: Prime numbers p such that 1000-p is also a prime. All terms are shown.

The programs for A126692, there is no canonical definition to state claims against.
-/

/-! ## A126692.P9175048101527112418

`A204938(n+16)`
-/

namespace A126692.P9175048101527112418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204938 (n + 16)

end

end A126692.P9175048101527112418

/-! ## A126692.P12025854058502200957

`record[A204938(16-A001489(n))]`
-/

namespace A126692.P12025854058502200957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204938 (16 - A001489 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126692.P12025854058502200957

/-! ## A126692.P13110140470934996259

`A204938(16-A001489(n))%A001533(n)`
-/

namespace A126692.P13110140470934996259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204938 (16 - A001489 n).toNat) (A001533 n)

end

end A126692.P13110140470934996259

/-!
# A126693: Prime numbers p such that 10000-p is also a prime.

The programs for A126693, there is no canonical definition to state claims against.
-/

/-! ## A126693.P900962945872628422

`A204938(n+72)`
-/

namespace A126693.P900962945872628422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204938 (n + 72)

end

end A126693.P900962945872628422

/-! ## A126693.P4649758437511163478

`record[A204938(72-A001489(n))]`
-/

namespace A126693.P4649758437511163478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204938 (72 - A001489 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126693.P4649758437511163478

/-! ## A126693.P10415191281658690145

`A204938(72-A001489(n))-A008602(n)%2`
-/

namespace A126693.P10415191281658690145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204938 (72 - A001489 n).toNat - Int.tmod (A008602 n) 2

end

end A126693.P10415191281658690145

/-! ## A126693.P3796119102115722758

`A204938(72-A001489(n))-A008585(n)%3`
-/

namespace A126693.P3796119102115722758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204938 (72 - A001489 n).toNat - Int.tmod (A008585 n) 3

end

end A126693.P3796119102115722758

/-! ## A126693.P828297977750392224

`A204938(72-A001489(n))-A102679(A097195(n))`
-/

namespace A126693.P828297977750392224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204938 (72 - A001489 n).toNat - A102679 (A097195 n).toNat

end

end A126693.P828297977750392224

/-! ## A126693.P9051111602454599596

`A052938(A016813(n))%2*A204938(72-A001489(n))`
-/

namespace A126693.P9051111602454599596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052938 (A016813 n).toNat) 2 * A204938 (72 - A001489 n).toNat

end

end A126693.P9051111602454599596

/-! ## A126693.P9664972047314074451

`A204938(72-A001489(n))-2-A007427(A002146(n))`
-/

namespace A126693.P9664972047314074451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204938 (72 - A001489 n).toNat - 2 - A007427 (A002146 n).toNat

end

end A126693.P9664972047314074451

/-!
# A126694: Expansion of g.f.: 1/(1 - 7*x*c(x)), where c(x) is the g.f. for A000108.

The programs for A126694, the canonical program `A126694.P14132965859486371822` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126694 has offset 0).

The definition of A126694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126694.P14132965859486371822

`(49*a(n-1)-7*A000108(n-1))/6` with `a(0)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A126694

/-- `(49*a(n-1)-7*A000108(n-1))/6` -/
def P14132965859486371822.Spec : Prop :=
  ∀ n, P14132965859486371822.a n = (A126694 n : ℚ)

end A126694

/-! ## A126694.P15591384278971125893

`A067347(eq[7, A002262(n)])`
-/

namespace A126694.P15591384278971125893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126694.P15591384278971125893

namespace A126694

/-- `A067347(eq[7, A002262(n)])` -/
def P15591384278971125893.Spec : Prop :=
  ∀ n, P15591384278971125893.a n = A126694 n

end A126694

/-! ## A126694.P2652113380554066320

`A067347(eq[8, A002260(n+1)])`
-/

namespace A126694.P2652113380554066320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126694.P2652113380554066320

namespace A126694

/-- `A067347(eq[8, A002260(n+1)])` -/
def P2652113380554066320.Spec : Prop :=
  ∀ n, P2652113380554066320.a n = A126694 n

end A126694

/-! ## A126694.P11151036197759321564

`A156361(2*n)/A000400(n)`
-/

namespace A126694.P11151036197759321564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156361 (2 * n) : ℚ) / (A000400 n : ℚ)

end

end A126694.P11151036197759321564

namespace A126694

/-- `A156361(2*n)/A000400(n)` -/
def P11151036197759321564.Spec : Prop :=
  ∀ n, P11151036197759321564.a n = (A126694 n : ℚ)

end A126694

/-!
# A126695: Numbers that can be expressed as the ratio between the product and the sum of n consecutive numbers with n>1.

The programs for A126695, there is no canonical definition to state claims against.
-/

/-! ## A126695.P10610784360581627787

`lt[A249351(2*(n+2)), A222049(A000005(3*n+1))]`
-/

namespace A126695.P10610784360581627787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222049 (A000005 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A126695.P10610784360581627787

/-!
# A126696: Tenth-squares: floor(n/10)*ceiling(n/10).

The programs for A126696, the canonical program `A126696.P7090260019256163417` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126696 has offset 0).

The definition of A126696 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/10)*ceil(n/10)` (program `A126696.P7090260019256163417`, by `A126696.P7090260019256163417.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126696.P7090260019256163417

`floor(n/10)*ceil(n/10)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A126696

/-- `floor(n/10)*ceil(n/10)` -/
def P7090260019256163417.Spec : Prop :=
  ∀ n, P7090260019256163417.a n = A126696 n

theorem P7090260019256163417.correct : P7090260019256163417.Spec := by
  intro n
  simp only [A126696]

end A126696

/-! ## A126696.P2181481986241940794

`A008857(floor(10*n/11))`
-/

namespace A126696.P2181481986241940794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008857 ⌊10 * ((n : ℚ) / 11)⌋.toNat

end

end A126696.P2181481986241940794

namespace A126696

/-- `A008857(floor(10*n/11))` -/
def P2181481986241940794.Spec : Prop :=
  ∀ n, P2181481986241940794.a n = A126696 n

end A126696

/-! ## A126696.P16630749621597732181

`A008838(n-floor((n+1)/5))`
-/

namespace A126696.P16630749621597732181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008838 ((n : ℤ) - ⌊(n + 1 : ℚ) / 5⌋).toNat

end

end A126696.P16630749621597732181

namespace A126696

/-- `A008838(n-floor((n+1)/5))` -/
def P16630749621597732181.Spec : Prop :=
  ∀ n, P16630749621597732181.a n = A126696 n

end A126696

/-! ## A126696.P10423847875323575777

`A002620(or((n^4)%5, floor(n/5)))`
-/

namespace A126696.P10423847875323575777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (Int.lor ((n ^ 4 % 5 : ℕ) : ℤ) ⌊(n : ℚ) / 5⌋).toNat

end

end A126696.P10423847875323575777

namespace A126696

/-- `A002620(or((n^4)%5, floor(n/5)))` -/
def P10423847875323575777.Spec : Prop :=
  ∀ n, P10423847875323575777.a n = A126696 n

end A126696

/-! ## A126696.P10165909977444328222

`A056942(A025793(n)-1)`
-/

namespace A126696.P10165909977444328222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056942 (A025793 n - 1).toNat

end

end A126696.P10165909977444328222

namespace A126696

/-- `A056942(A025793(n)-1)` -/
def P10165909977444328222.Spec : Prop :=
  ∀ n, P10165909977444328222.a n = A126696 n

end A126696

/-! ## A126696.P2167964789391474643

`∑[val(A353889(A008619(n)), 8)]`
-/

namespace A126696.P2167964789391474643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A353889 (A008619 n).toNat).toNat 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126696.P2167964789391474643

namespace A126696

/-- `∑[val(A353889(A008619(n)), 8)]` -/
def P2167964789391474643.Spec : Prop :=
  ∀ n, (P2167964789391474643.a n : ℤ) = A126696 n

end A126696

/-! ## A126696.P9780913005753603715

`A008238(A047363(n+1)-n)`
-/

namespace A126696.P9780913005753603715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (A047363 (n + 1) - (n : ℤ)).toNat

end

end A126696.P9780913005753603715

namespace A126696

/-- `A008238(A047363(n+1)-n)` -/
def P9780913005753603715.Spec : Prop :=
  ∀ n, P9780913005753603715.a n = A126696 n

end A126696

/-! ## A126696.P8080329655751428038

`A008767(2*n+1-A001955(n+1))`
-/

namespace A126696.P8080329655751428038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008767 ((2 * n + 1 : ℤ) - A001955 (n + 1)).toNat

end

end A126696.P8080329655751428038

namespace A126696

/-- `A008767(2*n+1-A001955(n+1))` -/
def P8080329655751428038.Spec : Prop :=
  ∀ n, P8080329655751428038.a n = A126696 n

end A126696

/-!
# A126698: a(0)=1. For n>=1, a(n) = a(n-1) + (largest divisor of n which does not occur among the earlier terms of the sequence); or a(n) = a(n-1) if every divisor of n occurs among the earlier terms of the sequence.

The programs for A126698, there is no canonical definition to state claims against.
-/

/-! ## A126698.P13460960587759459100

`∑[A001222(A000120(n+1)^n)]+1`
-/

namespace A126698.P13460960587759459100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000120 (n + 1) ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A126698.P13460960587759459100

/-! ## A126698.P6186476540660017162

`∑[A028310(n)%A323797(A243824(n+2))]`
-/

namespace A126698.P6186476540660017162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) (A323797 (A243824 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126698.P6186476540660017162

/-! ## A126698.P17527641890978500173

`∑[(n^A178334(n))%A323797(A243824(n+2))]`
-/

namespace A126698.P17527641890978500173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))) (A323797 (A243824 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126698.P17527641890978500173

/-! ## A126698.P9186346463246437729

`∑[∑{e}[(-A005811(n))^n, #]]+1`
-/

namespace A126698.P9186346463246437729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A005811 n) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A126698.P9186346463246437729

/-! ## A126698.P2479004866622564968

`∑[n*A059841(A000108(n))]+1`
-/

namespace A126698.P2479004866622564968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A059841 (A000108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A126698.P2479004866622564968

/-!
# A126699: Lesser of twin simili-primes of order 2.

The programs for A126699, there is no canonical definition to state claims against.
-/

/-! ## A126699.P7070910161857750854

`A126700(Δ[n²])`
-/

namespace A126699.P7070910161857750854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126700 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A126699.P7070910161857750854

/-! ## A126699.P11632319010414774737

`A126700(2*(n+1))-3`
-/

namespace A126699.P11632319010414774737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126700 (2 * (n + 1)) - 3

end

end A126699.P11632319010414774737

/-! ## A126699.P15738630367546142866

`record[A126700(abs(A009001(n)))]`
-/

namespace A126699.P15738630367546142866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126700 |A009001 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126699.P15738630367546142866

/-! ## A126699.P16421558812491093039

`record[A126700(A000265(n+1))]`
-/

namespace A126699.P16421558812491093039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126700 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126699.P16421558812491093039

/-! ## A126699.P11621518414933610115

`record[A033999(n)*A126700(n+1)]`
-/

namespace A126699.P11621518414933610115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A126700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126699.P11621518414933610115

/-! ## A126699.P12512786543843281673

`A126700(2*n+1)%∑[A139613(n)]`
-/

namespace A126699.P12512786543843281673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126700 (2 * n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126699.P12512786543843281673

